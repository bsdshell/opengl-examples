module RectifiedTesseract
  where
import qualified Data.ByteString                   as B
import           Data.IORef
import           Data.List.Index                   (imapM_)
import           Data.Tuple.Extra                  (both)
import           Graphics.Rendering.OpenGL.Capture (capturePPM)
import           Graphics.Rendering.OpenGL.GL
import           Graphics.UI.GLUT
import           RectifiedTesseract.Data
import           Tesseract.Transformations4D
import           Text.Printf
import           Utils.Colour
import           Utils.ConvertPPM
import           Utils.OpenGL                      (triangleNormal)
import           Utils.Prism

white,black,grey,whitesmoke,red :: Color4 GLfloat
white      = Color4    1    1    1    1
black      = Color4    0    0    0    1
grey       = Color4  0.8  0.8  0.8  0.5
whitesmoke = Color4 0.96 0.96 0.96    1
red        = Color4    1    0    0    1

display :: IORef GLdouble -> DisplayCallback
display angle = do
  clear [ColorBuffer, DepthBuffer]
  alpha <- get angle
  let points  = map (rotate4D 0.0 0.0 (alpha * pi / 180)) rtesseractVertices
      ppoints = map project4D points
      vectors = map toVector3 ppoints
      edges   = map (both (toVertex3 . (!!) ppoints)) rtesseractEdges
      ridges  = map (map (toVertex3 . (!!) ppoints)) rtesseractFacet
      tetrahedra = map (map (toVertex3 . (!!) ppoints)) tetrahedralFacets
  loadIdentity
  -- mapM_ (\vec -> preservingMatrix $ do
  --                 translate vec
  --                 materialDiffuse Front $= whitesmoke
  --                 renderObject Solid $ Sphere' 0.05 30 30)
  --       vectors
  -- mapM_ (drawCylinder 0.025) edges
  -- mapM_ (renderPrimitive Polygon . drawRidge) ridges
  imapM_ (\i t -> renderPrimitive Triangles $ drawTetrahedron i t) tetrahedra
  swapBuffers
  where
    toVector3 x = Vector3 (x!!0) (x!!1) (x!!2)
    toVertex3 x = Vertex3 (x!!0) (x!!1) (x!!2)

drawRidge :: [Vertex3 GLdouble] -> IO ()
drawRidge vs = do
  materialDiffuse FrontAndBack $= grey
  normal (triangleNormal (vs!!0, vs!!1, vs!!2))
  mapM_ vertex vs

drawCylinder :: GLdouble -> (Vertex3 GLdouble, Vertex3 GLdouble) -> IO ()
drawCylinder radius (v1,v2) = do
  let cylinder = prism v1 v2 30 radius
  renderPrimitive Quads $ do
    materialDiffuse Back $= whitesmoke
    mapM_ f cylinder
  where
    f ((w1,w2,w3,w4),n) = do
      normal n
      vertex w1
      vertex w2
      vertex w3
      vertex w4

drawTetrahedron :: Int -> [Vertex3 GLdouble] -> IO ()
drawTetrahedron i vs = do
  materialDiffuse FrontAndBack $= pickColor i
  normal (triangleNormal (vs!!0, vs!!1, vs!!2))
  mapM_ vertex [vs!!i | i <- [0,1,2]]
  normal (triangleNormal (vs!!0, vs!!1, vs!!3))
  mapM_ vertex [vs!!i | i <- [0,1,3]]
  normal (triangleNormal (vs!!0, vs!!2, vs!!3))
  mapM_ vertex [vs!!i | i <- [0,2,3]]
  normal (triangleNormal (vs!!1, vs!!2, vs!!3))
  mapM_ vertex [vs!!i | i <- [1,2,3]]

resize :: Size -> IO ()
resize s@(Size w h) = do
  viewport $= (Position 0 0, s)
  matrixMode $= Projection
  loadIdentity
  perspective 45.0 (w'/h') 1.0 100.0
  lookAt (Vertex3 (-2) 2 (-5)) (Vertex3 0 0 0) (Vector3 0 1 0)
  matrixMode $= Modelview 0
  where
    w' = realToFrac w
    h' = realToFrac h

keyboard :: IORef GLdouble -> KeyboardCallback
keyboard angle c _ =
  case c of
    'o' -> angle $~! subtract 1
    'p' -> angle $~! (+ 1)
    'm' -> do
      a <- get angle
      let i = round a :: Int
      let ppm = printf "ppm/pic%04d.ppm" i
          -- png = printf "pic%04d.png" i
      (>>=) capturePPM (B.writeFile ppm)
      -- convert ppm png True
      angle $~! (+ 1)
    'q' -> leaveMainLoop
    _   -> return ()

idle :: IdleCallback
idle = postRedisplay Nothing

main :: IO ()
main = do
  _ <- getArgsAndInitialize
  _ <- createWindow "Rectified tesseract"
  windowSize $= Size 600 600
  initialDisplayMode $= [RGBAMode, DoubleBuffered, WithDepthBuffer]
  clearColor $= white
  materialAmbient FrontAndBack $= black
  materialShininess FrontAndBack $= 50
  lighting $= Enabled
  light (Light 0) $= Enabled
  position (Light 0) $= Vertex4 (-4) 4 (-10) 1
  lightModelTwoSide $= Enabled
  ambient (Light 0) $= black
  diffuse (Light 0) $= white
  specular (Light 0) $= white
  depthFunc $= Just Lequal
  depthMask $= Enabled
  shadeModel $= Smooth
  blend $= Enabled    -- allow transparency
  blendFunc $= (SrcAlpha, OneMinusSrcAlpha)
  angle <- newIORef 0.0
  displayCallback $= display angle
  reshapeCallback $= Just resize
  keyboardCallback $= Just (keyboard angle)
  idleCallback $= Just idle
  mainLoop
