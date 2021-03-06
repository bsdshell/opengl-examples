module CompoundFiveTetrahedra
  where
import qualified Data.ByteString                   as B
import           Data.IORef
import           Graphics.Rendering.OpenGL.Capture (capturePPM)
import           Graphics.Rendering.OpenGL.GL
import           Graphics.UI.GLUT
import           CompoundFiveTetrahedra.Data
import           Text.Printf
import           Utils.ConvertPPM
import           Utils.OpenGL                      (negateNormal,
                                                    triangleNormal)
import           Utils.Prism

blue,red,green,yellow,purple,white,black :: Color4 GLfloat
blue   = Color4 0   0   1   1
red    = Color4 1   0   0   1
green  = Color4 0   1   0   1
yellow = Color4 1   1   0   1
white  = Color4 1   1   1   1
black  = Color4 0   0   0   1
purple = Color4 0.5 0   0.5 1

display :: IORef GLfloat -> IORef GLfloat -> IORef GLfloat -> IORef GLdouble
        -> DisplayCallback
display rot1 rot2 rot3 zoom = do
  clear [ColorBuffer, DepthBuffer]
  r1 <- get rot1
  r2 <- get rot2
  r3 <- get rot3
  z <- get zoom
  loadIdentity
  (_, size) <- get viewport
  resize z size
  rotate r1 $ Vector3 1 0 0
  rotate r2 $ Vector3 0 1 0
  rotate r3 $ Vector3 0 0 1
  drawTetrahedron blue   tetra1
  drawTetrahedron red    tetra2
  drawTetrahedron green  tetra3
  drawTetrahedron yellow tetra4
  drawTetrahedron purple tetra5
  mapM_ (drawEdge blue)   (edges!!0)
  mapM_ (drawEdge red)    (edges!!1)
  mapM_ (drawEdge green)  (edges!!2)
  mapM_ (drawEdge yellow) (edges!!3)
  mapM_ (drawEdge purple) (edges!!4)
  mapM_ (drawVertex blue)   vertices1
  mapM_ (drawVertex red)    vertices2
  mapM_ (drawVertex green)  vertices3
  mapM_ (drawVertex yellow) vertices4
  mapM_ (drawVertex purple) vertices5
  swapBuffers

drawTetrahedron :: Color4 GLfloat -> [[Vertex3 GLfloat]] -> IO ()
drawTetrahedron col faces =
  renderPrimitive Triangles $ do
    materialDiffuse Front $= col
    mapM_ drawTriangle faces

drawTriangle :: [Vertex3 GLfloat] -> IO ()
drawTriangle vs = do
  normal $ triangleNormal (vs!!0, vs!!1, vs!!2)
  vertex (vs!!0)
  vertex (vs!!1)
  vertex (vs!!2)

drawVertex :: Color4 GLfloat -> Vertex3 GLfloat -> IO ()
drawVertex col v =
  preservingMatrix $ do
    translate $ toVector v
    materialDiffuse Front $= col
    renderObject Solid $ Sphere' 0.015 30 30
  where
    toVector (Vertex3 x y z) = Vector3 x y z

drawEdge :: Color4 GLfloat -> (Vertex3 GLfloat, Vertex3 GLfloat) -> IO ()
drawEdge col (v1,v2) = do
  let cylinder = prism v1 v2 30 0.01
  renderPrimitive Quads $ do
    materialDiffuse Front $= col
    mapM_ drawQuad cylinder
  where
    drawQuad ((w1,w2,w3,w4),n) = do
      normal $ negateNormal n
      vertex w1
      vertex w2
      vertex w3
      vertex w4

resize :: Double -> Size -> IO ()
resize zoom s@(Size w h) = do
  viewport $= (Position 0 0, s)
  matrixMode $= Projection
  loadIdentity
  perspective 45.0 (w'/h') 1.0 100.0
  lookAt (Vertex3 0 0 (-3 + zoom)) (Vertex3 0 0 0) (Vector3 0 1 0)
  matrixMode $= Modelview 0
  where
    w' = realToFrac w
    h' = realToFrac h

keyboard :: IORef GLfloat -> IORef GLfloat -> IORef GLfloat -> IORef GLint
         -> KeyboardCallback
keyboard rot1 rot2 rot3 capture c _ =
  case c of
    'r' -> rot1 $~! subtract 1
    't' -> rot1 $~! (+1)
    'f' -> rot2 $~! subtract 1
    'g' -> rot2 $~! (+1)
    'v' -> rot3 $~! subtract 1
    'b' -> rot3 $~! (+1)
    'c' -> do
      i <- get capture
      let ppm = printf "pic%04d.ppm" i
          png = printf "pic%04d.png" i
      (>>=) capturePPM (B.writeFile ppm)
      convert ppm png True
      capture $~! (+1)
    'q' -> leaveMainLoop
    _   -> return ()

mouse :: IORef GLdouble -> MouseCallback
mouse zoom button keyState _ =
  case (button, keyState) of
    (LeftButton, Down)  -> zoom $~! (+0.1)
    (RightButton, Down) -> zoom $~! subtract 0.1
    _                   -> return ()

idle :: IdleCallback
idle = postRedisplay Nothing

main :: IO ()
main = do
  _ <- getArgsAndInitialize
  _ <- createWindow "Five tetrahedra"
  initialDisplayMode $= [RGBAMode, DoubleBuffered, WithDepthBuffer]
  clearColor $= black
  materialAmbient Front $= black
  materialShininess Front $= 80
  lighting $= Enabled
  light (Light 0) $= Enabled
  position (Light 0) $= Vertex4 0 0 (-100) 1
  ambient (Light 0) $= white
  diffuse (Light 0) $= white
  specular (Light 0) $= white
  depthFunc $= Just Lequal
  depthMask $= Enabled
  shadeModel $= Smooth
  rot1 <- newIORef 0.0
  rot2 <- newIORef 0.0
  rot3 <- newIORef 0.0
  zoom <- newIORef 0.0
  capture <- newIORef 1
  displayCallback $= display rot1 rot2 rot3 zoom
  reshapeCallback $= Just (resize 0)
  keyboardCallback $= Just (keyboard rot1 rot2 rot3 capture)
  mouseCallback $= Just (mouse zoom)
  idleCallback $= Just idle
  mainLoop
