{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Snap.Core (ifTop)
import Snap.Http.Server (quickHttpServe)
import Snap.Util.FileServe (serveFile)

main :: IO ()
main = quickHttpServe $
    ifTop (serveFile "views/index.html")
