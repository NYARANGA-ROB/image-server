module DSL.Transformation where

import DSL.Shape

scale :: Double -> Shape -> Shape
scale factor (Circle radius) = Circle (radius * factor)
scale factor (Rectangle width height) = Rectangle (width * factor) (height * factor)
scale factor (Ellipse rx ry) = Ellipse (rx * factor) (ry * factor)
scale factor (Polygon points) = Polygon (map (\(x, y) -> (x * factor, y * factor)) points)

-- Add rotate, shear, and translate functions here, as discussed earlier
