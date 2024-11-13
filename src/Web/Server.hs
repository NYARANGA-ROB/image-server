{-# LANGUAGE OverloadedStrings #-}

module Web.Server (startApp) where

import Web.Scotty
import Renderer.Render
import Codec.Picture
import Codec.Picture.Types
import Control.Monad.IO.Class (liftIO)
import System.IO.Temp (withSystemTempFile)

startApp :: IO ()
startApp = scotty 3000 $ do
    get "/circle" $ do
        let width = 200
        let height = 200
        let color = PixelRGBA8 255 0 0 255 -- Red color
        liftIO $ withSystemTempFile "circle.png" $ \filePath handle -> do
            let img = drawCircle width height color
            writePng filePath img
            close handle
            file filePath

    -- Add routes for other shapes and DSL handling here
