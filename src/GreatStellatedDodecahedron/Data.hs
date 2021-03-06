module GreatStellatedDodecahedron.Data
  where
import           Data.Tuple.Extra             (both)
import           Graphics.Rendering.OpenGL.GL (GLfloat, Vertex3 (..))

vertices :: [Vertex3 GLfloat]
vertices =
  map toVertex3 [ [0, 0, 2.802517], -- 3*cos(pi/5)/sin(pi/3)
                  [1.868345, 0, -2.088873], -- 2*cos(pi/5)/sin(pi/3), 0, 2*cos(pi/5)*sqrt(5/3)
                  [-0.9341724, 1.618034, -2.088873], -- cos(pi/5)/sin(pi/3), phi
                  [-0.9341724, -1.618034, -2.088873],
                  [-2.088873, 1.618034, 0.9341724],
                  [-2.088873, -1.618034, 0.9341724],
                  [-0.3568221, -2.618034, 0.9341724], -- 1/cos(pi/5)/sqrt(3)/2
                  [2.445695, -1, 0.9341724], -- (2+sqrt(5))/sqrt(3)
                  [2.445695, 1, 0.9341724],
                  [-0.3568221, 2.618034, 0.9341724],
                  [0.3568221, -2.618034, -0.9341724],
                  [0.3568221, 2.618034, -0.9341724],
                  [2.088873, 1.618034, -0.9341724],
                  [-2.445695, -1, -0.9341724],
                  [-2.445695, 1, -0.9341724],
                  [2.088873, -1.618034, -0.9341724],
                  [0.9341724, 1.618034, 2.088873],
                  [0.9341724, -1.618034, 2.088873],
                  [-1.868345, 0, 2.088873],
                  [0, 0, -2.802517],
                  [0.2581989, 0.4472136, 0.0986232], -- 1/sqrt(15), 1/sqrt(5)
                  [-0.5163978, 0, 0.0986232], -- 2/sqrt(15), 0, (3/sqrt(5)-1)/sqrt(3)/2
                  [0.2581989, -0.4472136, 0.0986232],
                  [-0.3191514, 0, -0.4177746], -- (sqrt(5)-1)/sqrt(15), 0, (1+sqrt(5))/2/sqrt(5)/sqrt(3)
                  [0.1595757, -0.2763932, -0.4177746], -- (sqrt(5)-1)/sqrt(15)/2, (5-sqrt(5))/10
                  [0.1595757, 0.2763932, -0.4177746],
                  [-0.1595757, -0.2763932, 0.4177746],
                  [-0.1595757, 0.2763932, 0.4177746],
                  [0.3191514, 0, 0.4177746],
                  [0.5163978, 0, -0.0986232],
                  [-0.2581989, 0.4472136, -0.0986232],
                  [-0.2581989, -0.4472136, -0.0986232]
                ]
  where
    toVertex3 x = Vertex3 (x!!0) (x!!1) (x!!2)

polygonsIdxs :: [[Int]]
polygonsIdxs =  [ [20,0,1],
                  [20,1,4],
                  [20,4,7],
                  [20,7,2],
                  [20,2,0],
                  [21,0,2],
                  [21,2,6],
                  [21,6,9],
                  [21,9,3],
                  [21,3,0],
                  [22,0,3],
                  [22,3,8],
                  [22,8,5],
                  [22,5,1],
                  [22,1,0],
                  [23,1,5],
                  [23,5,11],
                  [23,11,10],
                  [23,10,4],
                  [23,4,1],
                  [24,2,7],
                  [24,7,13],
                  [24,13,12],
                  [24,12,6],
                  [24,6,2],
                  [25,3,9],
                  [25,9,15],
                  [25,15,14],
                  [25,14,8],
                  [25,8,3],
                  [26,4,10],
                  [26,10,16],
                  [26,16,13],
                  [26,13,7],
                  [26,7,4],
                  [27,5,8],
                  [27,8,14],
                  [27,14,17],
                  [27,17,11],
                  [27,11,5],
                  [28,6,12],
                  [28,12,18],
                  [28,18,15],
                  [28,15,9],
                  [28,9,6],
                  [29,10,11],
                  [29,11,17],
                  [29,17,19],
                  [29,19,16],
                  [29,16,10],
                  [30,12,13],
                  [30,13,16],
                  [30,16,19],
                  [30,19,18],
                  [30,18,12],
                  [31,14,15],
                  [31,15,18],
                  [31,18,19],
                  [31,19,17],
                  [31,17,14]
                ]

edgesIdxs :: [(Int,Int)]
edgesIdxs = [ (0,1),
              (0,2),
              (0,3),
              (1,4),
              (1,5),
              (2,6),
              (2,7),
              (3,8),
              (3,9),
              (4,7),
              (4,10),
              (5,8),
              (5,11),
              (6,9),
              (6,12),
              (7,13),
              (8,14),
              (9,15),
              (10,11),
              (10,16),
              (11,17),
              (12,13),
              (12,18),
              (13,16),
              (14,15),
              (14,17),
              (15,18),
              (16,19),
              (17,19),
              (18,19)
            ]

polygons :: [[Vertex3 GLfloat]]
polygons = map (\idxs -> [vertices !! i | i <- idxs]) polygonsIdxs

edges :: [(Vertex3 GLfloat, Vertex3 GLfloat)]
edges = map (both (vertices !!)) edgesIdxs
