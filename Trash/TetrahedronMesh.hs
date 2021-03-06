module Utils.TetrahedronMesh where
import qualified Data.IntMap.Strict           as IM
import           Data.List                    (union)
import           Data.Permute                 (elems, rank)
--import           Data.Tuple.Extra             (first, (&&&), (***), fst3, snd3, thd3)
import           Graphics.Rendering.OpenGL.GL (GLdouble)
import           Utils.TetrahedronFaces
import           Utils.CartesianPolar
import           Utils.SphericalTriangle

allVertices :: [[GLdouble]]
allVertices =
    [ [ a,  a,  a],
      [ a,  a, -a],
      [ a, -a,  a],
      [-a, -a,  a],
      [-a,  a, -a],
      [-a,  a,  a],
      [ 0,  b, -c],
      [ 0, -b, -c],
      [ 0, -b,  c],
      [ c,  0, -b],
      [-c,  0, -b],
      [-c,  0,  b],
      [ b,  c,  0],
      [ b, -c,  0],
      [-b, -c,  0],
      [-b,  c,  0],
      [ 0,  b,  c],
      [ a, -a, -a],
      [ c,  0,  b],
      [-a, -a, -a] ]
  where
    phi = (1 + sqrt 5) / 2
    a = 1 / sqrt 3
    b = a / phi
    c = a * phi

tetra1Idxs,tetra2Idxs,tetra3Idxs,tetra4Idxs,tetra5Idxs :: [[Int]]
tetra1Idxs = [[16,13, 1],
              [16,10,13],
              [10, 1,13],
              [10,16, 1]]
tetra2Idxs = [[17, 0, 3],
              [17, 4, 0],
              [ 4,17, 3],
              [ 4, 3, 0]]
tetra3Idxs = [[18, 5,14],
              [18, 6, 5],
              [18,14, 6],
              [ 6,14, 5]]
tetra4Idxs = [[ 2,12,11],
              [ 2, 7,12],
              [ 7,11,12],
              [11, 7, 2]]
tetra5Idxs = [[19,15, 9],
              [19, 8,15],
              [ 8, 9,15],
              [19, 9, 8]]

fixIndices :: [[Double]] -> [[Int]] -> ([[Double]], [[Int]])
fixIndices allVertices faces = (newvertices, newfaces)
  where
  faceselems = foldr union [] faces
  l = length faceselems
  permute = elems $ rank l faceselems
  mapper = IM.fromList $ zip permute faceselems
  mapper' = IM.fromList $ zip faceselems permute
  newfaces = map (map ((IM.!) mapper')) faces
  newvertices = [allVertices !! (mapper IM.! i) | i <- [0 .. l-1]]

-- niceTetrahedron :: [[Double]] -> [[Int]] -> ([[Double]], [[Int]])
-- niceTetrahedron = fixIndices

-- tetra1Mesh :: ([Vertex3 Double], [[Int]])
-- tetra1Mesh = first (map toVx3) (fixIndices allVertices tetra1Idxs)
tetra1Mesh,tetra2Mesh,tetra3Mesh :: ([[Double]], [[Int]])
tetra1Mesh = fixIndices allVertices tetra1Idxs
tetra2Mesh = fixIndices allVertices tetra2Idxs
tetra3Mesh = fixIndices allVertices tetra3Idxs

tetra1MeshPolar,tetra2MeshPolar,tetra3MeshPolar :: [((Double, Double, Double), [Int])]
tetra1MeshPolar = zip (map cartesianToPolar' $ fst tetra1Mesh) (snd tetra1Mesh)
tetra2MeshPolar = zip (map cartesianToPolar' $ fst tetra2Mesh) (snd tetra2Mesh)
tetra3MeshPolar = zip (map cartesianToPolar' $ fst tetra3Mesh) (snd tetra3Mesh)

angles1,angles2,angles3 :: [(Double,Double)]
angles1 = map (yz . fst) tetra1MeshPolar where yz (_,y,z) = (y, z)
angles2 = map (yz . fst) tetra2MeshPolar where yz (_,y,z) = (y, z)
angles3 = map (yz . fst) tetra3MeshPolar where yz (_,y,z) = (y, z)
