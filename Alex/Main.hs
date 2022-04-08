module Main where

import System.Environment
import System.IO
import TurtleLex
import Control.Exception

main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do path <- getArgs
               contents <- readFile (path!!0)
               let var = alexScanTokens contents
               print var