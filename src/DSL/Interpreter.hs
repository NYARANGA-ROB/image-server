module DSL.Interpreter where

import DSL.Shape
import DSL.Transformation

applyTransformations :: [Transformation] -> Shape -> Shape
applyTransformations [] shape = shape
applyTransformations (t:ts) shape = applyTransformations ts (applyTransformation t shape)

-- Define applyTransformation function and any helper functions for transformations

