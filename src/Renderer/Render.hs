module Renderer.Render where

import Codec.Picture
import DSL.Shape
-- Example function to render a Circle
drawCircle :: Int -> Int -> PixelRGBA8 -> Image PixelRGBA8
drawCircle width height color = generateImage pixelRenderer width height
  where
    centerX = width `div` 2
    centerY = height `div` 2
    radius = min centerX centerY - 10
    pixelRenderer x y =
        if (x - centerX) ^ 2 + (y - centerY) ^ 2 <= radius ^ 2
        then color
        else PixelRGBA8 255 255 255 0 -- Transparent background

-- Define additional rendering functions for other shapes like Rectangle, Ellipse, Polygon, etc.
