module Main where

import System.Environment
import System.IO
import TurtleLex
import TurtlePar
import Control.Exception

main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do path <- getArgs
               contents <- readFile (path!!0)
               let var = alexScanTokens contents
               print var
               let parsedProg = parseCalc (alexScanTokens contents)
               print parsedProg

getBase :: Exp -> Maybe String
getBase [] = Nothing
getBase ((Tag _ _):es) = getBase es
getBase ((PreDef _ _):es) = getBase es
getBase ((BaseDef x):es) = Just(x)

getBase :: Exp -> [(String,String)]
getBase [] = []
getBase ((Tag _ _):es) = getBase es
getBase ((PreDef x y):es) = ((x,y):getBase es)
getBase ((BaseDef _):es) = getBase es

format :: Exp -> Maybe String -> [(String,String)] -> [(String,[(String,[String])])]
format ((Tag (URI x@('h':'t':'t':'p':xs)) y):es) base prefs = ((x,(formatList y base prefs)):format es base prefs)
format ((Tag (URI x) y):es) base@(Just b) prefs = (((b++x),(formatList y base prefs)):format es base prefs)
format ((Tag (URI x) y):es) (Nothing) prefs = error "Base definition is not defined so all tripples must use URIs!"
format ((Tag (URI x) y):es) base prefs = 
format ((Tag (URI x) y):es) (Nothing) prefs = error "Base definition is not defined so all tripples must use URIs!"
 





