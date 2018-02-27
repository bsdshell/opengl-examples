module Unions.FiveTetrahedra
  where
import           Graphics.Rendering.OpenGL.GL (GLdouble, Vertex3 (..))

vertices :: [Vertex3 GLdouble]
vertices =
  [ Vertex3 (-0.9341723589627159) 0.0 (-0.35682208977309)
  , Vertex3
      (-0.35682208977308993) 0.22052817941653585 (-0.4410563588330717)
  , Vertex3
      (-0.4670861794813579) 0.178411044886545 (-0.2886751345948129)
  , Vertex3
      (-0.4670861794813579) 0.178411044886545 (-0.2886751345948129)
  , Vertex3
      (-0.4670861794813579) 0.178411044886545 (-0.2886751345948129)
  , Vertex3
      (-0.5773502691896258) 0.1362939103565541 (-0.1362939103565541)
  , Vertex3
      (-0.35682208977309) 0.22052817941653585 (-2.832129284812951e-17)
  , Vertex3
      (-0.35682208977309) 0.22052817941653585 (-2.7405943137922014e-17)
  , Vertex3
      (-0.5773502691896258) 0.1362939103565541 0.1362939103565541
  , Vertex3
      (-0.5773502691896258) (-0.1362939103565541) (-0.1362939103565541)
  , Vertex3
      (-0.35682208977309) (-0.22052817941653585) 2.7405943137922014e-17
  , Vertex3
      (-0.35682208977308993)
      (-0.2205281794165359)
      (-1.7481623885344973e-19)
  , Vertex3
      (-0.4410563588330717) (-0.35682208977309) (-0.22052817941653585)
  , Vertex3
      (-0.4670861794813579) (-0.178411044886545) (-0.2886751345948129)
  , Vertex3
      (-0.46708617948135794) (-0.17841104488654497) (-0.2886751345948129)
  , Vertex3
      (-0.4670861794813579) (-0.17841104488654497) (-0.2886751345948129)
  , Vertex3
      (-0.49311600012964407)
      (-3.9090099364715346e-19)
      (-0.35682208977308993)
  , Vertex3
      (-0.2205281794165359)
      (-1.7481623885344973e-19)
      (-0.35682208977308993)
  , Vertex3
      (-0.22052817941653585) 2.7405943137922014e-17 (-0.35682208977309)
  , Vertex3
      (-0.22052817941653585) 2.832129284812951e-17 (-0.35682208977309)
  , Vertex3
      (-0.4670861794813579) 0.178411044886545 (-0.2886751345948129)
  , Vertex3
      (-0.1362939103565541) 0.1362939103565541 (-0.5773502691896258)
  , Vertex3
      (-0.5773502691896258) 0.5773502691896258 (-0.5773502691896258)
  , Vertex3
      (-0.1362939103565541) 0.5773502691896258 (-0.1362939103565541)
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 (-0.178411044886545)
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 (-0.178411044886545)
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 (-0.178411044886545)
  , Vertex3
      (-0.4410563588330717) 0.35682208977308993 (-0.22052817941653585)
  , Vertex3 (-0.35682208977309) 0.9341723589627159 0.0
  , Vertex3
      (-0.22052817941653585) 0.4410563588330717 0.35682208977309
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 0.178411044886545
  , Vertex3
      (-0.2886751345948129) 0.46708617948135794 0.17841104488654497
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 0.17841104488654497
  , Vertex3
      (-0.35682208977308993) 0.49311600012964407 3.9090099364715346e-19
  , Vertex3
      (-0.35682208977308993) 0.2205281794165359 1.7481623885344973e-19
  , Vertex3
      (-0.4410563588330717) 0.35682208977309 0.22052817941653585
  , Vertex3 (-0.9341723589627159) 0.0 0.35682208977309
  , Vertex3
      (-0.35682208977308993) (-0.22052817941653585) 0.4410563588330717
  , Vertex3
      (-0.4670861794813579) (-0.178411044886545) 0.2886751345948129
  , Vertex3
      (-0.4670861794813579) (-0.178411044886545) 0.2886751345948129
  , Vertex3
      (-0.4670861794813579) (-0.178411044886545) 0.2886751345948129
  , Vertex3
      (-0.5773502691896258) (-0.1362939103565541) 0.1362939103565541
  , Vertex3
      (-0.35682208977309) (-0.22052817941653585) 2.832129284812951e-17
  , Vertex3 (-0.35682208977309) (-0.9341723589627159) 0.0
  , Vertex3
      (-0.22052817941653585) (-0.4410563588330717) (-0.35682208977309)
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) (-0.178411044886545)
  , Vertex3
      (-0.2886751345948129) (-0.46708617948135794) (-0.17841104488654497)
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) (-0.17841104488654497)
  , Vertex3
      (-0.35682208977308993)
      (-0.49311600012964407)
      (-3.9090099364715346e-19)
  , Vertex3
      (-0.4410563588330717) (-0.35682208977308993) 0.22052817941653585
  , Vertex3
      (-0.4670861794813579) (-0.178411044886545) (-0.2886751345948129)
  , Vertex3
      (-0.5773502691896258) (-0.5773502691896258) (-0.5773502691896258)
  , Vertex3
      (-3.9090099364715346e-19)
      (-0.35682208977308993)
      (-0.49311600012964407)
  , Vertex3
      (-0.17841104488654497) (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      (-0.178411044886545) (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      (-0.178411044886545) (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      (-0.35682208977309) (-0.22052817941653585) (-0.4410563588330717)
  , Vertex3 0.0 (-0.35682208977309) (-0.9341723589627159)
  , Vertex3
      0.1362939103565541 0.1362939103565541 (-0.5773502691896258)
  , Vertex3
      (-0.1362939103565541) (-0.1362939103565541) (-0.5773502691896258)
  , Vertex3
      (-0.178411044886545) 0.2886751345948129 (-0.4670861794813579)
  , Vertex3
      (-0.178411044886545) 0.2886751345948129 (-0.4670861794813579)
  , Vertex3
      (-0.178411044886545) 0.2886751345948129 (-0.4670861794813579)
  , Vertex3 0.0 0.35682208977309 (-0.9341723589627159)
  , Vertex3
      (-0.22052817941653585) 0.4410563588330717 (-0.35682208977308993)
  , Vertex3
      (-0.178411044886545) 0.2886751345948129 (-0.4670861794813579)
  , Vertex3
      (-2.832129284812951e-17) 0.35682208977309 (-0.22052817941653585)
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 (-0.178411044886545)
  , Vertex3
      (-2.7405943137922014e-17) 0.35682208977309 (-0.22052817941653585)
  , Vertex3
      0.1362939103565541 0.5773502691896258 (-0.1362939103565541)
  , Vertex3
      (-0.1362939103565541) 0.5773502691896258 0.1362939103565541
  , Vertex3
      2.7405943137922014e-17 0.35682208977309 0.22052817941653585
  , Vertex3
      (-1.7481623885344973e-19) 0.35682208977308993 0.2205281794165359
  , Vertex3
      (-0.2886751345948129) 0.4670861794813579 0.178411044886545
  , Vertex3
      (-3.9090099364715346e-19) 0.35682208977308993 0.49311600012964407
  , Vertex3
      (-0.5773502691896258) 0.5773502691896258 0.5773502691896258
  , Vertex3
      (-0.49311600012964407) 3.9090099364715346e-19 0.35682208977308993
  , Vertex3
      (-0.4670861794813579) 0.17841104488654497 0.2886751345948129
  , Vertex3
      (-0.4670861794813579) 0.178411044886545 0.2886751345948129
  , Vertex3
      (-0.4670861794813579) 0.178411044886545 0.2886751345948129
  , Vertex3
      (-0.46708617948135794) 0.17841104488654497 0.2886751345948129
  , Vertex3
      (-0.2205281794165359) 1.7481623885344973e-19 0.35682208977308993
  , Vertex3
      (-0.22052817941653585) (-2.7405943137922014e-17) 0.35682208977309
  , Vertex3
      (-0.22052817941653585) (-2.832129284812951e-17) 0.35682208977309
  , Vertex3
      (-0.4670861794813579) (-0.178411044886545) 0.2886751345948129
  , Vertex3
      (-0.1362939103565541) (-0.1362939103565541) 0.5773502691896258
  , Vertex3
      (-0.5773502691896258) (-0.5773502691896258) 0.5773502691896258
  , Vertex3
      (-0.1362939103565541) (-0.5773502691896258) 0.1362939103565541
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) 0.178411044886545
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) 0.178411044886545
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) 0.178411044886545
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) 0.178411044886545
  , Vertex3
      (-2.832129284812951e-17) (-0.35682208977309) 0.22052817941653585
  , Vertex3
      (-2.7405943137922014e-17) (-0.35682208977309) 0.22052817941653585
  , Vertex3
      0.1362939103565541 (-0.5773502691896258) 0.1362939103565541
  , Vertex3
      (-0.1362939103565541) (-0.5773502691896258) (-0.1362939103565541)
  , Vertex3
      2.7405943137922014e-17 (-0.35682208977309) (-0.22052817941653585)
  , Vertex3
      (-1.7481623885344973e-19)
      (-0.35682208977308993)
      (-0.2205281794165359)
  , Vertex3
      (-0.2886751345948129) (-0.4670861794813579) (-0.178411044886545)
  , Vertex3
      (-0.17841104488654497) (-0.2886751345948129) (-0.46708617948135794)
  , Vertex3
      2.832129284812951e-17 (-0.35682208977309) (-0.22052817941653585)
  , Vertex3
      0.22052817941653585 (-0.4410563588330717) (-0.35682208977308993)
  , Vertex3
      0.178411044886545 (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      0.178411044886545 (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      0.178411044886545 (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      0.1362939103565541 (-0.1362939103565541) (-0.5773502691896258)
  , Vertex3
      0.22052817941653585 (-2.832129284812951e-17) (-0.35682208977309)
  , Vertex3
      0.22052817941653585 (-2.7405943137922014e-17) (-0.35682208977309)
  , Vertex3
      0.2205281794165359 1.7481623885344973e-19 (-0.35682208977308993)
  , Vertex3
      0.35682208977309 0.22052817941653585 (-0.4410563588330717)
  , Vertex3
      0.178411044886545 0.2886751345948129 (-0.4670861794813579)
  , Vertex3
      0.17841104488654497 0.2886751345948129 (-0.46708617948135794)
  , Vertex3
      0.17841104488654497 0.2886751345948129 (-0.4670861794813579)
  , Vertex3
      3.9090099364715346e-19 0.35682208977308993 (-0.49311600012964407)
  , Vertex3
      1.7481623885344973e-19 0.35682208977308993 (-0.2205281794165359)
  , Vertex3
      0.22052817941653585 0.4410563588330717 (-0.35682208977309)
  , Vertex3 0.35682208977309 0.9341723589627159 0.0
  , Vertex3
      0.4410563588330717 0.35682208977308993 0.22052817941653585
  , Vertex3 0.2886751345948129 0.4670861794813579 0.178411044886545
  , Vertex3 0.2886751345948129 0.4670861794813579 0.178411044886545
  , Vertex3 0.2886751345948129 0.4670861794813579 0.178411044886545
  , Vertex3 0.1362939103565541 0.5773502691896258 0.1362939103565541
  , Vertex3
      2.832129284812951e-17 0.35682208977309 0.22052817941653585
  , Vertex3
      (-0.178411044886545) 0.2886751345948129 0.4670861794813579
  , Vertex3
      (-0.17841104488654497) 0.2886751345948129 0.46708617948135794
  , Vertex3
      (-0.17841104488654497) 0.2886751345948129 0.4670861794813579
  , Vertex3
      0.22052817941653585 0.4410563588330717 0.35682208977308993
  , Vertex3 0.0 0.35682208977309 0.9341723589627159
  , Vertex3
      (-0.35682208977309) 0.22052817941653585 0.4410563588330717
  , Vertex3
      (-0.178411044886545) 0.2886751345948129 0.4670861794813579
  , Vertex3
      0.1362939103565541 (-0.1362939103565541) 0.5773502691896258
  , Vertex3
      (-0.1362939103565541) 0.1362939103565541 0.5773502691896258
  , Vertex3
      (-0.178411044886545) (-0.2886751345948129) 0.4670861794813579
  , Vertex3
      (-0.178411044886545) (-0.2886751345948129) 0.4670861794813579
  , Vertex3
      (-0.178411044886545) (-0.2886751345948129) 0.4670861794813579
  , Vertex3 0.0 (-0.35682208977309) 0.9341723589627159
  , Vertex3
      (-0.22052817941653585) (-0.4410563588330717) 0.35682208977308993
  , Vertex3
      (-0.178411044886545) (-0.2886751345948129) 0.4670861794813579
  , Vertex3
      0.35682208977309 (-0.22052817941653585) 0.4410563588330717
  , Vertex3
      0.178411044886545 (-0.2886751345948129) 0.4670861794813579
  , Vertex3
      0.17841104488654497 (-0.2886751345948129) 0.46708617948135794
  , Vertex3
      0.17841104488654497 (-0.2886751345948129) 0.4670861794813579
  , Vertex3
      3.9090099364715346e-19 (-0.35682208977308993) 0.49311600012964407
  , Vertex3
      1.7481623885344973e-19 (-0.35682208977308993) 0.2205281794165359
  , Vertex3
      0.22052817941653585 (-0.4410563588330717) 0.35682208977309
  , Vertex3 0.35682208977309 (-0.9341723589627159) 0.0
  , Vertex3
      0.4410563588330717 (-0.35682208977308993) (-0.22052817941653585)
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) (-0.178411044886545)
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) (-0.178411044886545)
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) (-0.178411044886545)
  , Vertex3
      0.1362939103565541 (-0.5773502691896258) (-0.1362939103565541)
  , Vertex3
      0.5773502691896258 (-0.5773502691896258) (-0.5773502691896258)
  , Vertex3
      0.178411044886545 (-0.2886751345948129) (-0.4670861794813579)
  , Vertex3
      0.5773502691896258 (-0.1362939103565541) (-0.1362939103565541)
  , Vertex3
      0.4670861794813579 (-0.178411044886545) (-0.2886751345948129)
  , Vertex3
      0.4670861794813579 (-0.178411044886545) (-0.2886751345948129)
  , Vertex3
      0.4670861794813579 (-0.178411044886545) (-0.2886751345948129)
  , Vertex3
      0.35682208977308993 (-0.22052817941653585) (-0.4410563588330717)
  , Vertex3 0.9341723589627159 0.0 (-0.35682208977309)
  , Vertex3
      0.4410563588330717 0.35682208977309 (-0.22052817941653585)
  , Vertex3
      0.4670861794813579 0.178411044886545 (-0.2886751345948129)
  , Vertex3
      0.46708617948135794 0.17841104488654497 (-0.2886751345948129)
  , Vertex3
      0.4670861794813579 0.17841104488654497 (-0.2886751345948129)
  , Vertex3
      0.49311600012964407 3.9090099364715346e-19 (-0.35682208977308993)
  , Vertex3
      0.178411044886545 0.2886751345948129 (-0.4670861794813579)
  , Vertex3
      0.5773502691896258 0.5773502691896258 (-0.5773502691896258)
  , Vertex3
      0.35682208977308993 0.49311600012964407 (-3.9090099364715346e-19)
  , Vertex3
      0.2886751345948129 0.4670861794813579 (-0.17841104488654497)
  , Vertex3
      0.2886751345948129 0.4670861794813579 (-0.178411044886545)
  , Vertex3
      0.2886751345948129 0.4670861794813579 (-0.178411044886545)
  , Vertex3
      0.2886751345948129 0.46708617948135794 (-0.17841104488654497)
  , Vertex3
      0.35682208977308993 0.2205281794165359 (-1.7481623885344973e-19)
  , Vertex3
      0.35682208977309 0.22052817941653585 2.7405943137922014e-17
  , Vertex3
      0.35682208977309 0.22052817941653585 2.832129284812951e-17
  , Vertex3 0.2886751345948129 0.4670861794813579 0.178411044886545
  , Vertex3 0.5773502691896258 0.1362939103565541 0.1362939103565541
  , Vertex3 0.5773502691896258 0.5773502691896258 0.5773502691896258
  , Vertex3 0.1362939103565541 0.1362939103565541 0.5773502691896258
  , Vertex3 0.178411044886545 0.2886751345948129 0.4670861794813579
  , Vertex3 0.178411044886545 0.2886751345948129 0.4670861794813579
  , Vertex3 0.178411044886545 0.2886751345948129 0.4670861794813579
  , Vertex3 0.178411044886545 0.2886751345948129 0.4670861794813579
  , Vertex3
      0.22052817941653585 2.832129284812951e-17 0.35682208977309
  , Vertex3
      0.22052817941653585 2.7405943137922014e-17 0.35682208977309
  , Vertex3
      0.2205281794165359 (-1.7481623885344973e-19) 0.35682208977308993
  , Vertex3
      0.178411044886545 (-0.2886751345948129) 0.4670861794813579
  , Vertex3
      0.49311600012964407 (-3.9090099364715346e-19) 0.35682208977308993
  , Vertex3
      0.5773502691896258 (-0.5773502691896258) 0.5773502691896258
  , Vertex3
      0.35682208977308993 (-0.49311600012964407) 3.9090099364715346e-19
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) 0.17841104488654497
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) 0.178411044886545
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) 0.178411044886545
  , Vertex3
      0.2886751345948129 (-0.46708617948135794) 0.17841104488654497
  , Vertex3
      0.35682208977308993 (-0.2205281794165359) 1.7481623885344973e-19
  , Vertex3
      0.35682208977309 (-0.22052817941653585) (-2.7405943137922014e-17)
  , Vertex3
      0.35682208977309 (-0.22052817941653585) (-2.832129284812951e-17)
  , Vertex3
      0.2886751345948129 (-0.4670861794813579) (-0.178411044886545)
  , Vertex3
      0.4670861794813579 (-0.178411044886545) (-0.2886751345948129)
  , Vertex3
      0.5773502691896258 (-0.1362939103565541) 0.1362939103565541
  , Vertex3
      0.5773502691896258 0.1362939103565541 (-0.1362939103565541)
  , Vertex3
      0.4670861794813579 0.178411044886545 (-0.2886751345948129)
  , Vertex3 0.4670861794813579 0.178411044886545 0.2886751345948129
  , Vertex3 0.4670861794813579 0.178411044886545 0.2886751345948129
  , Vertex3 0.4670861794813579 0.178411044886545 0.2886751345948129
  , Vertex3 0.9341723589627159 0.0 0.35682208977309
  , Vertex3
      0.35682208977308993 0.22052817941653585 0.4410563588330717
  , Vertex3 0.4670861794813579 0.178411044886545 0.2886751345948129
  , Vertex3
      0.4410563588330717 (-0.35682208977309) 0.22052817941653585
  , Vertex3
      0.4670861794813579 (-0.178411044886545) 0.2886751345948129
  , Vertex3
      0.46708617948135794 (-0.17841104488654497) 0.2886751345948129
  , Vertex3
      0.4670861794813579 (-0.17841104488654497) 0.2886751345948129
  , Vertex3
      0.4670861794813579 (-0.178411044886545) 0.2886751345948129
  ]


facesIdxs :: [[Int]]
facesIdxs =
  [ [ 1 , 0 , 8 , 7 , 6 , 5 , 4 , 3 , 2 ]
  , [ 8 , 0 , 12 , 11 , 10 , 9 ]
  , [ 12 , 0 , 1 , 19 , 18 , 17 , 16 , 15 , 14 , 13 ]
  , [ 4 , 5 , 22 , 21 , 19 , 1 , 2 , 20 ]
  , [ 2 , 3 , 20 ]
  , [ 20 , 3 , 4 ]
  , [ 22 , 5 , 6 , 27 , 26 , 25 , 24 , 23 ]
  , [ 28 , 27 , 6 , 7 , 34 , 33 , 32 , 31 , 30 , 29 ]
  , [ 9 , 36 , 35 , 34 , 7 , 8 ]
  , [ 37 , 36 , 9 , 10 , 42 , 41 , 40 , 39 , 38 ]
  , [ 43 , 49 , 42 , 10 , 11 , 48 , 47 , 46 , 45 , 44 ]
  , [ 16 , 51 , 48 , 11 , 12 , 13 , 50 , 15 ]
  , [ 13 , 14 , 50 ]
  , [ 50 , 14 , 15 ]
  , [ 52 , 51 , 16 , 17 , 56 , 55 , 54 , 53 ]
  , [ 57 , 56 , 17 , 18 , 59 , 58 ]
  , [ 60 , 64 , 63 , 59 , 18 , 19 , 21 , 62 , 61 ]
  , [ 21 , 22 , 23 , 66 , 64 , 60 , 65 , 62 ]
  , [ 26 , 27 , 28 , 69 , 68 , 66 , 23 , 24 , 67 ]
  , [ 25 , 67 , 24 ]
  , [ 26 , 67 , 25 ]
  , [ 69 , 28 , 29 , 72 , 71 , 70 ]
  , [ 33 , 75 , 74 , 72 , 29 , 30 , 73 , 32 ]
  , [ 31 , 73 , 30 ]
  , [ 32 , 73 , 31 ]
  , [ 76 , 75 , 33 , 34 , 35 , 79 , 78 , 77 ]
  , [ 35 , 36 , 37 , 83 , 82 , 81 , 76 , 77 , 80 , 79 ]
  , [ 41 , 86 , 85 , 83 , 37 , 38 , 84 , 40 ]
  , [ 38 , 39 , 84 ]
  , [ 84 , 39 , 40 ]
  , [ 87 , 86 , 41 , 42 , 49 , 90 , 89 , 88 ]
  , [ 90 , 49 , 43 , 94 , 93 , 92 , 87 , 88 , 91 ]
  , [ 94 , 43 , 44 , 97 , 96 , 95 ]
  , [ 48 , 51 , 52 , 97 , 44 , 45 , 98 , 47 ]
  , [ 46 , 98 , 45 ]
  , [ 47 , 98 , 46 ]
  , [ 55 , 56 , 57 , 101 , 100 , 96 , 97 , 52 , 53 , 99 ]
  , [ 53 , 54 , 99 ]
  , [ 54 , 55 , 99 ]
  , [ 101 , 57 , 58 , 107 , 106 , 105 , 104 , 103 , 102 ]
  , [ 58 , 59 , 63 , 109 , 108 , 107 ]
  , [ 61 , 65 , 60 ]
  , [ 62 , 65 , 61 ]
  , [ 63 , 64 , 66 , 68 , 114 , 113 , 112 , 111 , 110 , 109 ]
  , [ 69 , 70 , 116 , 115 , 114 , 68 ]
  , [ 116 , 70 , 71 , 122 , 121 , 120 , 119 , 118 , 117 ]
  , [ 123 , 128 , 127 , 126 , 122 , 71 , 72 , 74 , 125 , 124 ]
  , [ 74 , 75 , 76 , 81 , 128 , 123 , 129 , 125 ]
  , [ 78 , 80 , 77 ]
  , [ 79 , 80 , 78 ]
  , [ 127 , 128 , 81 , 82 , 131 , 130 ]
  , [ 132 , 136 , 135 , 131 , 82 , 83 , 85 , 134 , 133 ]
  , [ 85 , 86 , 87 , 92 , 136 , 132 , 137 , 134 ]
  , [ 89 , 91 , 88 ]
  , [ 90 , 91 , 89 ]
  , [ 135 , 136 , 92 , 93 , 143 , 142 , 141 , 140 , 139 , 138 ]
  , [ 94 , 95 , 145 , 144 , 143 , 93 ]
  , [ 145 , 95 , 96 , 100 , 150 , 149 , 148 , 147 , 146 ]
  , [ 150 , 100 , 101 , 102 , 152 , 104 , 105 , 151 ]
  , [ 102 , 103 , 152 ]
  , [ 152 , 103 , 104 ]
  , [ 151 , 105 , 106 , 157 , 156 , 155 , 154 , 153 ]
  , [ 157 , 106 , 107 , 108 , 163 , 162 , 161 , 160 , 159 , 158 ]
  , [ 112 , 113 , 165 , 163 , 108 , 109 , 110 , 164 ]
  , [ 110 , 111 , 164 ]
  , [ 111 , 112 , 164 ]
  , [ 113 , 114 , 115 , 169 , 168 , 167 , 166 , 165 ]
  , [ 169 , 115 , 116 , 117 , 173 , 172 , 171 , 166 , 167 , 170 ]
  , [ 120 , 121 , 176 , 175 , 173 , 117 , 118 , 174 ]
  , [ 119 , 174 , 118 ]
  , [ 119 , 120 , 174 ]
  , [ 121 , 122 , 126 , 180 , 179 , 178 , 177 , 176 ]
  , [ 129 , 123 , 124 ]
  , [ 125 , 129 , 124 ]
  , [ 126 , 127 , 130 , 183 , 182 , 177 , 178 , 181 , 180 ]
  , [ 130 , 131 , 135 , 138 , 184 , 183 ]
  , [ 133 , 137 , 132 ]
  , [ 134 , 137 , 133 ]
  , [ 141 , 142 , 187 , 186 , 184 , 138 , 139 , 185 ]
  , [ 139 , 140 , 185 ]
  , [ 140 , 141 , 185 ]
  , [ 142 , 143 , 144 , 191 , 190 , 189 , 188 , 187 ]
  , [ 191 , 144 , 145 , 146 , 195 , 194 , 193 , 188 , 189 , 192 ]
  , [ 149 , 150 , 151 , 153 , 195 , 146 , 147 , 196 ]
  , [ 148 , 196 , 147 ]
  , [ 148 , 149 , 196 ]
  , [ 156 , 157 , 158 , 198 , 194 , 195 , 153 , 154 , 197 ]
  , [ 197 , 154 , 155 ]
  , [ 155 , 156 , 197 ]
  , [ 159 , 171 , 172 , 199 , 198 , 158 ]
  , [ 166 , 171 , 159 , 160 , 200 , 162 , 163 , 165 ]
  , [ 200 , 160 , 161 ]
  , [ 161 , 162 , 200 ]
  , [ 168 , 170 , 167 ]
  , [ 168 , 169 , 170 ]
  , [ 201 , 205 , 204 , 199 , 172 , 173 , 175 , 203 , 202 ]
  , [ 176 , 177 , 182 , 205 , 201 , 206 , 203 , 175 ]
  , [ 179 , 181 , 178 ]
  , [ 180 , 181 , 179 ]
  , [ 205 , 182 , 183 , 184 , 186 , 210 , 209 , 208 , 207 , 204 ]
  , [ 187 , 188 , 193 , 207 , 208 , 211 , 210 , 186 ]
  , [ 190 , 192 , 189 ]
  , [ 190 , 191 , 192 ]
  , [ 207 , 193 , 194 , 198 , 199 , 204 ]
  , [ 206 , 201 , 202 ]
  , [ 202 , 203 , 206 ]
  , [ 211 , 208 , 209 ]
  , [ 209 , 210 , 211 ]
  ]



edgesIdxs :: [(Int,Int)]
edgesIdxs =
  [ ( 1 , 0 )
  , ( 0 , 8 )
  , ( 8 , 7 )
  , ( 7 , 6 )
  , ( 6 , 5 )
  , ( 5 , 4 )
  , ( 4 , 3 )
  , ( 3 , 2 )
  , ( 2 , 1 )
  , ( 0 , 12 )
  , ( 12 , 11 )
  , ( 11 , 10 )
  , ( 10 , 9 )
  , ( 9 , 8 )
  , ( 1 , 19 )
  , ( 19 , 18 )
  , ( 18 , 17 )
  , ( 17 , 16 )
  , ( 16 , 15 )
  , ( 15 , 14 )
  , ( 14 , 13 )
  , ( 13 , 12 )
  , ( 5 , 22 )
  , ( 22 , 21 )
  , ( 21 , 19 )
  , ( 2 , 20 )
  , ( 20 , 4 )
  , ( 3 , 20 )
  , ( 6 , 27 )
  , ( 27 , 26 )
  , ( 26 , 25 )
  , ( 25 , 24 )
  , ( 24 , 23 )
  , ( 23 , 22 )
  , ( 28 , 27 )
  , ( 7 , 34 )
  , ( 34 , 33 )
  , ( 33 , 32 )
  , ( 32 , 31 )
  , ( 31 , 30 )
  , ( 30 , 29 )
  , ( 29 , 28 )
  , ( 9 , 36 )
  , ( 36 , 35 )
  , ( 35 , 34 )
  , ( 37 , 36 )
  , ( 10 , 42 )
  , ( 42 , 41 )
  , ( 41 , 40 )
  , ( 40 , 39 )
  , ( 39 , 38 )
  , ( 38 , 37 )
  , ( 43 , 49 )
  , ( 49 , 42 )
  , ( 11 , 48 )
  , ( 48 , 47 )
  , ( 47 , 46 )
  , ( 46 , 45 )
  , ( 45 , 44 )
  , ( 44 , 43 )
  , ( 16 , 51 )
  , ( 51 , 48 )
  , ( 13 , 50 )
  , ( 50 , 15 )
  , ( 14 , 50 )
  , ( 52 , 51 )
  , ( 17 , 56 )
  , ( 56 , 55 )
  , ( 55 , 54 )
  , ( 54 , 53 )
  , ( 53 , 52 )
  , ( 57 , 56 )
  , ( 18 , 59 )
  , ( 59 , 58 )
  , ( 58 , 57 )
  , ( 60 , 64 )
  , ( 64 , 63 )
  , ( 63 , 59 )
  , ( 21 , 62 )
  , ( 62 , 61 )
  , ( 61 , 60 )
  , ( 23 , 66 )
  , ( 66 , 64 )
  , ( 60 , 65 )
  , ( 65 , 62 )
  , ( 28 , 69 )
  , ( 69 , 68 )
  , ( 68 , 66 )
  , ( 24 , 67 )
  , ( 67 , 26 )
  , ( 25 , 67 )
  , ( 29 , 72 )
  , ( 72 , 71 )
  , ( 71 , 70 )
  , ( 70 , 69 )
  , ( 33 , 75 )
  , ( 75 , 74 )
  , ( 74 , 72 )
  , ( 30 , 73 )
  , ( 73 , 32 )
  , ( 31 , 73 )
  , ( 76 , 75 )
  , ( 35 , 79 )
  , ( 79 , 78 )
  , ( 78 , 77 )
  , ( 77 , 76 )
  , ( 37 , 83 )
  , ( 83 , 82 )
  , ( 82 , 81 )
  , ( 81 , 76 )
  , ( 77 , 80 )
  , ( 80 , 79 )
  , ( 41 , 86 )
  , ( 86 , 85 )
  , ( 85 , 83 )
  , ( 38 , 84 )
  , ( 84 , 40 )
  , ( 39 , 84 )
  , ( 87 , 86 )
  , ( 49 , 90 )
  , ( 90 , 89 )
  , ( 89 , 88 )
  , ( 88 , 87 )
  , ( 43 , 94 )
  , ( 94 , 93 )
  , ( 93 , 92 )
  , ( 92 , 87 )
  , ( 88 , 91 )
  , ( 91 , 90 )
  , ( 44 , 97 )
  , ( 97 , 96 )
  , ( 96 , 95 )
  , ( 95 , 94 )
  , ( 52 , 97 )
  , ( 45 , 98 )
  , ( 98 , 47 )
  , ( 46 , 98 )
  , ( 57 , 101 )
  , ( 101 , 100 )
  , ( 100 , 96 )
  , ( 53 , 99 )
  , ( 99 , 55 )
  , ( 54 , 99 )
  , ( 58 , 107 )
  , ( 107 , 106 )
  , ( 106 , 105 )
  , ( 105 , 104 )
  , ( 104 , 103 )
  , ( 103 , 102 )
  , ( 102 , 101 )
  , ( 63 , 109 )
  , ( 109 , 108 )
  , ( 108 , 107 )
  , ( 61 , 65 )
  , ( 68 , 114 )
  , ( 114 , 113 )
  , ( 113 , 112 )
  , ( 112 , 111 )
  , ( 111 , 110 )
  , ( 110 , 109 )
  , ( 70 , 116 )
  , ( 116 , 115 )
  , ( 115 , 114 )
  , ( 71 , 122 )
  , ( 122 , 121 )
  , ( 121 , 120 )
  , ( 120 , 119 )
  , ( 119 , 118 )
  , ( 118 , 117 )
  , ( 117 , 116 )
  , ( 123 , 128 )
  , ( 128 , 127 )
  , ( 127 , 126 )
  , ( 126 , 122 )
  , ( 74 , 125 )
  , ( 125 , 124 )
  , ( 124 , 123 )
  , ( 81 , 128 )
  , ( 123 , 129 )
  , ( 129 , 125 )
  , ( 78 , 80 )
  , ( 82 , 131 )
  , ( 131 , 130 )
  , ( 130 , 127 )
  , ( 132 , 136 )
  , ( 136 , 135 )
  , ( 135 , 131 )
  , ( 85 , 134 )
  , ( 134 , 133 )
  , ( 133 , 132 )
  , ( 92 , 136 )
  , ( 132 , 137 )
  , ( 137 , 134 )
  , ( 89 , 91 )
  , ( 93 , 143 )
  , ( 143 , 142 )
  , ( 142 , 141 )
  , ( 141 , 140 )
  , ( 140 , 139 )
  , ( 139 , 138 )
  , ( 138 , 135 )
  , ( 95 , 145 )
  , ( 145 , 144 )
  , ( 144 , 143 )
  , ( 100 , 150 )
  , ( 150 , 149 )
  , ( 149 , 148 )
  , ( 148 , 147 )
  , ( 147 , 146 )
  , ( 146 , 145 )
  , ( 102 , 152 )
  , ( 152 , 104 )
  , ( 105 , 151 )
  , ( 151 , 150 )
  , ( 103 , 152 )
  , ( 106 , 157 )
  , ( 157 , 156 )
  , ( 156 , 155 )
  , ( 155 , 154 )
  , ( 154 , 153 )
  , ( 153 , 151 )
  , ( 108 , 163 )
  , ( 163 , 162 )
  , ( 162 , 161 )
  , ( 161 , 160 )
  , ( 160 , 159 )
  , ( 159 , 158 )
  , ( 158 , 157 )
  , ( 113 , 165 )
  , ( 165 , 163 )
  , ( 110 , 164 )
  , ( 164 , 112 )
  , ( 111 , 164 )
  , ( 115 , 169 )
  , ( 169 , 168 )
  , ( 168 , 167 )
  , ( 167 , 166 )
  , ( 166 , 165 )
  , ( 117 , 173 )
  , ( 173 , 172 )
  , ( 172 , 171 )
  , ( 171 , 166 )
  , ( 167 , 170 )
  , ( 170 , 169 )
  , ( 121 , 176 )
  , ( 176 , 175 )
  , ( 175 , 173 )
  , ( 118 , 174 )
  , ( 174 , 120 )
  , ( 119 , 174 )
  , ( 126 , 180 )
  , ( 180 , 179 )
  , ( 179 , 178 )
  , ( 178 , 177 )
  , ( 177 , 176 )
  , ( 124 , 129 )
  , ( 130 , 183 )
  , ( 183 , 182 )
  , ( 182 , 177 )
  , ( 178 , 181 )
  , ( 181 , 180 )
  , ( 138 , 184 )
  , ( 184 , 183 )
  , ( 133 , 137 )
  , ( 142 , 187 )
  , ( 187 , 186 )
  , ( 186 , 184 )
  , ( 139 , 185 )
  , ( 185 , 141 )
  , ( 140 , 185 )
  , ( 144 , 191 )
  , ( 191 , 190 )
  , ( 190 , 189 )
  , ( 189 , 188 )
  , ( 188 , 187 )
  , ( 146 , 195 )
  , ( 195 , 194 )
  , ( 194 , 193 )
  , ( 193 , 188 )
  , ( 189 , 192 )
  , ( 192 , 191 )
  , ( 153 , 195 )
  , ( 147 , 196 )
  , ( 196 , 149 )
  , ( 148 , 196 )
  , ( 158 , 198 )
  , ( 198 , 194 )
  , ( 154 , 197 )
  , ( 197 , 156 )
  , ( 155 , 197 )
  , ( 159 , 171 )
  , ( 172 , 199 )
  , ( 199 , 198 )
  , ( 160 , 200 )
  , ( 200 , 162 )
  , ( 161 , 200 )
  , ( 168 , 170 )
  , ( 201 , 205 )
  , ( 205 , 204 )
  , ( 204 , 199 )
  , ( 175 , 203 )
  , ( 203 , 202 )
  , ( 202 , 201 )
  , ( 182 , 205 )
  , ( 201 , 206 )
  , ( 206 , 203 )
  , ( 179 , 181 )
  , ( 186 , 210 )
  , ( 210 , 209 )
  , ( 209 , 208 )
  , ( 208 , 207 )
  , ( 207 , 204 )
  , ( 193 , 207 )
  , ( 208 , 211 )
  , ( 211 , 210 )
  , ( 190 , 192 )
  , ( 202 , 206 )
  , ( 209 , 211 )
  ]


faces :: [[Vertex3 GLdouble]]
faces = map (\idxs -> [vertices !! i | i <- idxs]) facesIdxs