module DSL.Shape where

data Shape
    = Circle Double
    | Rectangle Double Double
    | Ellipse Double Double
    | Polygon [(Double, Double)]
    deriving (Show, Eq)

data Color
    = RGB Int Int Int
    | Gradient Color Color
    deriving (Show, Eq)

data Position
    = Over
    | LeftOf
    | RightOf
    | Below
    | Above
    deriving (Show, Eq)
