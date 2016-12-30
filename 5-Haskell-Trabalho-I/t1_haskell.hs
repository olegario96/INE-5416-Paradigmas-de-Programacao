
module Shapes(Shape (Sphere, Cilinder, Cone, Cone_Trunk, Spheroid),
                Radius_1, Radius_2,Height, Semi_Axis_A, Semi_Axis_B) where

data Shape = Sphere Radius_1
           | Cilinder Radius_1 Height
           | Cone Radius_1 Height
           | Cone_Trunk Radius_1 Radius_2 Height
           | Spheroid Semi_Axis_A Semi_Axis_B
        deriving Show

type Radius_1 = Float
type Radius_2 = Float
type Height = Float
type Semi_Axis_A = Float
type Semi_Axis_B = Float

eec :: Float -> Float -> Float
eec a b = sqrt((a^2) + (b^2))/a

lateral_area :: Shape -> Float
lateral_area (Cilinder r h) = 2 * pi * r * h
lateral_area (Cone r h) = pi * r * (sqrt(r^2 + h^2))
lateral_area (Cone_Trunk r1 r2 h) = pi * (r1 + r2) * sqrt((h^2) + ((r1 - r2)^2))

area :: Shape -> Float
area (Sphere r) = 4 * pi * r^2
area (Cilinder r h) = (lateral_area(Cilinder r h)) + 2 * pi * r^2
area (Cone r h) = pi * r^2 + (lateral_area(Cone r h))
area (Cone_Trunk r1 r2 h) = pi * r1^2 + pi * r2^2 + (lateral_area(Cone_Trunk r1 r2 h))
area (Spheroid a b)
    | a > b = 2 * pi * a^2 + (b^2 / (eec a b)) * log((1 + (eec a b)) / (1 - (eec a b)))
    | a < b = 2 * pi * b^2 + (2 * pi * a * b / (eec a b)) * asin((eec a b))

volume :: Shape -> Float
volume (Sphere r) = (4 / 3) * pi * r^3
volume (Cilinder r h) = pi * r^2 * h
volume (Cone r h) = (1 / 3) * pi * r^2 * h
volume (Cone_Trunk r1 r2 h) = (1 / 3) * pi * h * ((r1^2) + (r2 ^2) + r1 * r2)
volume (Spheroid a b)
    | a > b = (4 / 3) * pi * (a^2) * b
    | b < a = (4 / 3) * pi * a * (b^2)