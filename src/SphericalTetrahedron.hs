module SphericalTetrahedron
  where
import           Control.Monad                     (when)
import           Data.Tuple.Extra             (first, (&&&), (***), fst3, snd3, thd3)
--import           CompoundFiveTetrahedra.DataPolar
import           Data.IORef
import           Graphics.Rendering.OpenGL.GL
import           Graphics.UI.GLUT
--import           Utils.SphericalTetrahedron
import qualified Data.ByteString                   as B
import           Graphics.Rendering.OpenGL.Capture (capturePPM)
import           Text.Printf
import           Utils.SphericalTetrahedron
import           Utils.TetrahedronMesh
import Utils.OpenGL
import Utils.CartesianPolar

white,black,red,blue,purple,gold :: Color4 GLfloat
white  = Color4 1   1   1   1
black  = Color4 0   0   0   1
red    = Color4 1   0   0   1
blue   = Color4 0   0   1   1
purple = Color4 0.5 0   0.5 1
gold   = Color4 1   0.84 0  1


-- tetra1Idxs :: [[Int]]
-- tetra1Idxs = [[16,13, 1],
--               [16,10,13],
--               [10, 1,13],
--               [10,16, 1]
--              ]
[face1, face2, face3, face4] = tetra1Idxs

asPair :: [Int] -> (Double,Double)
asPair x = ((allVertices!!(x!!0))!!0, (allVertices!!(x!!1))!!1)

striangle1,striangle2,striangle3,striangle4 :: [((Vertex3 Double, Vertex3 Double, Vertex3 Double), Normal3 Double)]
-- striangle1 = stMesh 6 (face1!!0!!0, face1!!0!!1, face1!!0!!2)
-- striangle2 = stMesh 6 (face1!!1!!0, face1!!1!!1, face1!!1!!2)
-- striangle3 = stMesh 6 (face1!!2!!0, face1!!2!!1, face1!!2!!2)
-- striangle4 = stMesh 6 (face1!!3!!0, face1!!3!!1, face1!!3!!2)
-- cs (x, y) = (snd3 $ cartesianToPolar (1,x,y), thd3 $ cartesianToPolar (1,x,y))
-- striangle1 = stMesh 6 (cs (face1!!0!!0, face1!!0!!1)) (cs (face1!!0!!1, face1!!0!!2)) (cs (face1!!0!!2, face1!!0!!0))
-- striangle2 = stMesh 6 (cs (face1!!1!!0, face1!!1!!1)) (cs (face1!!1!!1, face1!!1!!2)) (cs (face1!!1!!2, face1!!1!!0))
-- striangle3 = stMesh 6 (cs (face1!!2!!0, face1!!2!!1)) (cs (face1!!2!!1, face1!!2!!2)) (cs (face1!!2!!2, face1!!2!!0))
-- striangle4 = stMesh 6 (cs (face1!!3!!0, face1!!3!!1)) (cs (face1!!3!!1, face1!!3!!2)) (cs (face1!!3!!2, face1!!3!!0))
striangle1 = stMesh 3 (asPair [0,0]) (asPair [0,0]) (asPair [0,0])
striangle2 = stMesh 3 (asPair [1,1]) (asPair [1,2]) (asPair [1,4])
striangle3 = stMesh 3 (asPair [2,2]) (asPair [2,4]) (asPair [2,8])
striangle4 = stMesh 3 (asPair [3,3]) (asPair [3,6]) (asPair [3,12])

display :: IORef GLfloat -> IORef GLfloat -> IORef GLfloat -> IORef GLdouble
        -> IORef GLdouble -> DisplayCallback
display rot1 rot2 rot3 zoom angle = do
  clear [ColorBuffer, DepthBuffer]
  r1 <- get rot1
  r2 <- get rot2
  r3 <- get rot3
  z <- get zoom
  a <- get angle
  loadIdentity
  (_, size) <- get viewport
  resize z size
  rotate (180::GLfloat) $ Vector3 0 1 0
  -- rotate a $ Vector3 1 1 (1::GLdouble)
  rotate r1 $ Vector3 1 0 0
  rotate r2 $ Vector3 0 1 0
  rotate r3 $ Vector3 0 0 1
  -- materialDiffuse Front $= Color4 0.98 0.98 0.98 1
  -- renderObject Solid $ Sphere' 0.98 60 60
  renderPrimitive Triangles $ do
    materialDiffuse Front $= blue
    mapM_ drawTriangle striangle1
  renderPrimitive Triangles $ do
    materialDiffuse Front $= red
    mapM_ drawTriangle striangle2
  renderPrimitive Triangles $ do
    materialDiffuse Front $= blue
    mapM_ drawTriangle striangle3
  renderPrimitive Triangles $ do
    materialDiffuse Front $= gold
    mapM_ drawTriangle striangle4
  swapBuffers

drawTriangle :: ((Vertex3 GLdouble, Vertex3 GLdouble, Vertex3 GLdouble), Normal3 GLdouble) -> IO ()
drawTriangle ((v1, v2, v3), n) = do
  normal $ triangleNormal (v1, v2, v3)
  vertex v1
  vertex v2
  vertex v3

resize :: GLdouble -> Size -> IO ()
resize zoom s@(Size w h) = do
  viewport $= (Position 0 0, s)
  matrixMode $= Projection
  loadIdentity
  perspective 45.0 (w'/h') 1.0 100.0
  lookAt (Vertex3 0 0 (-5 + zoom)) (Vertex3 0 0 0) (Vector3 0 1 0)
  matrixMode $= Modelview 0
  where
    w' = realToFrac w
    h' = realToFrac h

keyboard :: IORef GLfloat -> IORef GLfloat -> IORef GLfloat -> IORef GLdouble
         -> IORef Bool -> KeyboardCallback
keyboard rot1 rot2 rot3 angle anim c _ =
  case c of
    'a' -> writeIORef anim True
    's' -> writeIORef anim False
    'r' -> rot1 $~! subtract 1
    't' -> rot1 $~! (+1)
    'f' -> rot2 $~! subtract 1
    'g' -> rot2 $~! (+1)
    'v' -> rot3 $~! subtract 1
    'b' -> rot3 $~! (+1)
    'o' -> angle $~! subtract 0.1
    'p' -> angle $~! (+0.1)
    'q' -> leaveMainLoop
    _   -> return ()

mouse :: IORef GLdouble -> MouseCallback
mouse zoom button keyState _ =
  case (button, keyState) of
    (LeftButton, Down)  -> zoom $~! (+0.1)
    (RightButton, Down) -> zoom $~! subtract 0.1
    _                   -> return ()

idle :: IORef Bool -> IORef GLdouble -> IdleCallback
idle anim angle = do
  a <- get anim
  r <- get angle
  when a $ do
    when (r < 360) $ do
      let ppm = printf "sphericalTetrahedron%04d.ppm" (round r :: Int)
      (>>=) capturePPM (B.writeFile ppm)
    angle $~! (+ 1)
  postRedisplay Nothing

main :: IO ()
main = do
  _ <- getArgsAndInitialize
  _ <- createWindow "Spherical Tetrahedron"
  windowSize $= Size 600 600
  initialDisplayMode $= [RGBAMode, DoubleBuffered, WithDepthBuffer]
  clearColor $= white
  materialAmbient Front $= black
  -- materialShininess Front $= 80
  lighting $= Enabled
  light (Light 0) $= Enabled
  position (Light 0) $= Vertex4 0 0 (-100) 1
  ambient (Light 0) $= black
  diffuse (Light 0) $= white
  specular (Light 0) $= black
  depthFunc $= Just Less
  depthMask $= Enabled
  shadeModel $= Smooth
  blend $= Enabled    -- allow transparency
  blendFunc $= (SrcAlpha, OneMinusSrcAlpha)
  rot1 <- newIORef 0.0
  rot2 <- newIORef 0.0
  rot3 <- newIORef 0.0
  zoom <- newIORef 0.0
  angle <- newIORef 0.0
  anim <- newIORef False
  displayCallback $= display rot1 rot2 rot3 zoom angle
  reshapeCallback $= Just (resize 0)
  keyboardCallback $= Just (keyboard rot1 rot2 rot3 angle anim)
  mouseCallback $= Just (mouse zoom)
  idleCallback $= Just (idle anim angle)
  mainLoop
