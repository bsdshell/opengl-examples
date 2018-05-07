module SnubDodecahedron.Data where
import           Graphics.Rendering.OpenGL.GL (GLfloat, Vertex3 (..))
import Data.Tuple.Extra (both)


vertices :: [Vertex3 GLfloat]
vertices = map toVx3
 [[0, 0, 1.02803],
  [0.463857, 0, 0.917434],
  [0.218744, 0.409041, 0.917434],
  [-0.257549, 0.385787, 0.917434],
  [-0.461651, -0.045185, 0.917434],
  [-0.177858, -0.428404, 0.917434],
  [0.572678, -0.428404, 0.738484],
  [0.82594, -0.045185, 0.610434],
  [0.643796, 0.385787, 0.702527],
  [0.349648, 0.749643, 0.610434],
  [-0.421009, 0.712018, 0.610434],
  [-0.678314, 0.32124, 0.702527],
  [-0.603154, -0.446666, 0.702527],
  [-0.274961, -0.780138, 0.610434],
  [0.176077, -0.693172, 0.738484],
  [0.520814, -0.780138, 0.420698],
  [0.855252, -0.446666, 0.3548],
  [1.01294, -0.035486, 0.171878],
  [0.718224, 0.661842, 0.320887],
  [0.363369, 0.945457, 0.17585],
  [-0.0457409, 0.936894, 0.420698],
  [-0.453739, 0.905564, 0.17585],
  [-0.779279, 0.588731, 0.320887],
  [-0.953722, 0.146222, 0.3548],
  [-0.90727, -0.32837, 0.3548],
  [-0.650337, -0.728658, 0.320887],
  [0.0845948, -0.96115, 0.3548],
  [0.394915, -0.949126, -0.00707256],
  [0.936047, -0.409557, -0.113698],
  [0.982938, 0.0269229, -0.299927],
  [0.946368, 0.401481, -0.00707256],
  [0.670458, 0.766283, -0.141937],
  [-0.0500765, 1.0257, -0.0477998],
  [-0.429434, 0.884578, -0.299927],
  [-0.956168, 0.371932, -0.0652523],
  [-1.02204, -0.100034, -0.0477998],
  [-0.865906, -0.550271, -0.0652523],
  [-0.522776, -0.877853, -0.113698],
  [-0.0685632, -1.02154, -0.0927384],
  [0.223205, -0.897488, -0.448937],
  [0.651544, -0.720095, -0.337347],
  [0.796954, -0.325396, -0.561989],
  [0.806687, 0.439535, -0.461425],
  [0.446803, 0.735788, -0.561989],
  [0.0014888, 0.896116, -0.503809],
  [-0.35354, 0.653766, -0.710245],
  [-0.739952, 0.554776, -0.448937],
  [-0.912024, 0.11022, -0.461425],
  [-0.6594, -0.61828, -0.489664],
  [-0.249065, -0.860809, -0.503809],
  [0.430105, -0.576499, -0.734512],
  [0.505758, -0.130528, -0.885449],
  [0.511774, 0.342225, -0.823297],
  [0.0973959, 0.577194, -0.845109],
  [-0.601895, 0.255259, -0.793356],
  [-0.687902, -0.210074, -0.734512],
  [-0.334044, -0.517151, -0.823297],
  [0.0857063, -0.341438, -0.96588],
  [0.127735, 0.131363, -1.01157],
  [-0.30445, -0.0676033, -0.979586] ]
  where
    toVx3 x = Vertex3 (x!!0) (x!!1) (x!!2)

facesIdxsRed :: [[Int]]
facesIdxsRed =
 [[0,1,2],
  [0,2,3],
  [0,3,4],
  [0,4,5],
  [1,6,7],
  [1,7,8],
  [1,8,2],
  [2,8,9],
  [3,10,11],
  [3,11,4],
  [4,12,5],
  [5,12,13],
  [5,13,14],
  [6,14,15],
  [6,15,16],
  [6,16,7],
  [7,16,17],
  [8,18,9],
  [9,18,19],
  [9,19,20],
  [10,20,21],
  [10,21,22],
  [10,22,11],
  [11,22,23],
  [12,24,25],
  [12,25,13],
  [13,26,14],
  [14,26,15],
  [15,26,27],
  [16,28,17],
  [17,28,29],
  [17,29,30],
  [18,30,31],
  [18,31,19],
  [19,32,20],
  [20,32,21],
  [21,32,33],
  [22,34,23],
  [23,34,35],
  [23,35,24],
  [24,35,36],
  [24,36,25],
  [25,36,37],
  [26,38,27],
  [27,38,39],
  [27,39,40],
  [28,40,41],
  [28,41,29],
  [29,42,30],
  [30,42,31],
  [31,42,43],
  [32,44,33],
  [33,44,45],
  [33,45,46],
  [34,46,47],
  [34,47,35],
  [36,48,37],
  [37,48,49],
  [37,49,38],
  [38,49,39],
  [39,50,40],
  [40,50,41],
  [41,50,51],
  [42,52,43],
  [43,52,53],
  [43,53,44],
  [44,53,45],
  [45,54,46],
  [46,54,47],
  [47,54,55],
  [48,55,56],
  [48,56,49],
  [50,57,51],
  [51,57,58],
  [51,58,52],
  [52,58,53],
  [54,59,55],
  [55,59,56],
  [56,59,57],
  [57,59,58]]

facesIdxsGreen :: [[Int]]
facesIdxsGreen =
  [ [0,5,14,6,1],
    [2,9,20,10,3],
    [4,11,23,24,12],
    [7,17,30,18,8],
    [13,25,37,38,26],
    [15,27,40,28,16],
    [19,31,43,44,32],
    [21,33,46,34,22],
    [29,41,51,52,42],
    [35,47,55,48,36],
    [39,49,56,57,50],
    [45,53,58,59,54] ]

edgesIdxs :: [(Int,Int)]
edgesIdxs =
  [(0,2),
  (0,3),
  (0,4),
  (1,2),
  (1,7),
  (1,8),
  (2,8),
  (3,4),
  (3,11),
  (4,5),
  (5,12),
  (5,13),
  (6,7),
  (6,15),
  (6,16),
  (7,16),
  (8,9),
  (9,18),
  (9,19),
  (10,11),
  (10,21),
  (10,22),
  (11,22),
  (12,13),
  (12,25),
  (13,14),
  (14,15),
  (14,26),
  (15,26),
  (16,17),
  (17,28),
  (17,29),
  (18,19),
  (18,31),
  (19,20),
  (20,21),
  (20,32),
  (21,32),
  (22,23),
  (23,34),
  (23,35),
  (24,25),
  (24,35),
  (24,36),
  (25,36),
  (26,27),
  (27,38),
  (27,39),
  (28,29),
  (28,41),
  (29,30),
  (30,31),
  (30,42),
  (31,42),
  (32,33),
  (33,44),
  (33,45),
  (34,35),
  (34,47),
  (36,37),
  (37,48),
  (37,49),
  (38,39),
  (38,49),
  (39,40),
  (40,41),
  (40,50),
  (41,50),
  (42,43),
  (43,52),
  (43,53),
  (44,45),
  (44,53),
  (45,46),
  (46,47),
  (46,54),
  (47,54),
  (48,49),
  (48,56),
  (50,51),
  (51,57),
  (51,58),
  (52,53),
  (52,58),
  (54,55),
  (55,56),
  (55,59),
  (56,59),
  (57,58),
  (57,59)]

facesIdxsR :: [[Vertex3 GLfloat]]
facesIdxsR = map (\idxs -> [vertices !! i | i <- idxs]) facesIdxsRed

facesIdxsG :: [[Vertex3 GLfloat]]
facesIdxsG = map (\idxs -> [vertices !! i | i <- idxs]) facesIdxsGreen

edges :: [(Vertex3 GLfloat, Vertex3 GLfloat)]
edges = map (both (vertices !!)) edgesIdxs
