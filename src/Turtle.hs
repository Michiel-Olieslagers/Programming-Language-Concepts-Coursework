module Turtle (getTokens,Triple,output) where

import System.Environment
import System.IO
import TurtleLex
import TurtlePar
import Control.Exception
import Data.List

type Triple = (String,String,Obj)

getTokens :: [String] -> IO [[Triple]]
getTokens paths = getData paths
               --var <- getData paths
               --let var2 = foldr (\x y -> x ++ y) [] var
               --let var3 = out var2
               --let var4 = (map (\s -> s ++ " . \n") (sort var3))
               --writeFile "test.ttl" (foldr (\x y -> x ++ y) [] var4)

getData :: [String] -> IO [[Triple]]
getData [] = return []
getData (x:xs) = do var <- readFile x
                    let var2 = parseCalc (alexScanTokens (var))
                    let var3 = format var2 (getBase var2) (getPrefs var2)
                    rest <- getData xs
                    return ((out var3):rest)

output :: [Triple] -> String
output [] = []
output ((t1,t2,t3):ts) = ("<" ++ t1 ++ "><" ++ t2 ++ "><" ++ getObj t3 ++ "> . \n") ++ output ts

getObj :: Obj -> String
getObj (ObjURI x) = x
getObj (Lit x) = "\"" ++ x ++ "\""
getObj (Num x) = show x
getObj (Bl x) = show x
getObj _ = error "something has gone wrong" 

out :: Exp -> [Triple]
out [] = []
out (e@(Tag (URI x) y):es) | elem e es = out es
                           | otherwise = ((outList y x)++out es)

outList :: [(Item,[Obj])] -> String -> [Triple]
outList [] subj = []
outList (((URI x),y):[]) subj = (outObjs y subj x)
outList (((URI x),y):es) subj = (outObjs y subj x++outList es subj)

outObjs :: [Obj] -> String -> String -> [Triple]
outObjs [] subj pred = []
outObjs (e:[]) subj pred = [(subj,pred,e)]
outObjs (e:es) subj pred = ((subj,pred,e):outObjs es subj pred)

getBase :: Exp -> Maybe String
getBase [] = Nothing
getBase ((Tag _ _):es) = getBase es
getBase ((PreDef _ _):es) = getBase es
getBase ((BaseDef x):es) = Just(x)

getPrefs :: Exp -> [(String,String)]
getPrefs [] = []
getPrefs ((Tag _ _):es) = getPrefs es
getPrefs ((PreDef x y):es) = ((x,y):getPrefs es)
getPrefs ((BaseDef _):es) = getPrefs es

format :: Exp -> Maybe String -> [(String,String)] -> Exp
format [] base prefs = []
format ((Tag (URI x@('h':'t':'t':'p':_)) pre):es) base prefs = (Tag (URI x) (formatList pre base prefs):format es base prefs)
format ((Tag (URI x) pre):es) base@(Just b) prefs = (Tag (URI (b++x)) (formatList pre base prefs):format es base prefs)
format ((Tag (URI x) pre):es) (Nothing) prefs = error "Base definition is not defined so all tripples must use URIs!"
format ((Tag (Pre x y) pre):es) base prefs = (Tag (URI((findPrefix x prefs)++y)) (formatList pre base prefs):format es base prefs)
format (e:es) base prefs = format es base prefs

formatList :: [(Item,[Obj])] -> Maybe String -> [(String,String)] -> [(Item,[Obj])]
formatList [] base prefs = []
formatList (((URI x@('h':'t':'t':'p':_)),obj):es) base prefs = ((URI x,(formatObjs obj base prefs)):formatList es base prefs)
formatList (((URI x),obj):es) base@(Just b) prefs = ((URI (b++x),(formatObjs obj base prefs)):formatList es base prefs)
formatList (((URI x),obj):es) (Nothing) prefs = error "Base definition is not defined so all tripples must use URIs!"
formatList (((Pre x y),obj):es) base prefs = ((URI ((findPrefix x prefs)++y),(formatObjs obj base prefs)):formatList es base prefs)

formatObjs :: [Obj] -> Maybe String -> [(String,String)] -> [Obj]
formatObjs [] base prefs = []
formatObjs ((ObjURI x@('h':'t':'t':'p':_)):es) base prefs = (ObjURI x:formatObjs es base prefs)
formatObjs ((ObjURI x):es) base@(Just b) prefs = (ObjURI (b++x):formatObjs es base prefs)
formatObjs ((ObjURI x):es) (Nothing) prefs = error "Base definition is not defined so all tripples must use URIs!"
formatObjs ((ObjPre x y):es) base prefs = (ObjURI ((findPrefix x prefs)++y):formatObjs es base prefs)
formatObjs ((Lit x):es) base prefs = (Lit x:formatObjs es base prefs)
formatObjs ((Bl x):es) base prefs = (Bl x:formatObjs es base prefs)
formatObjs ((Num x):es) base prefs = (Num x:formatObjs es base prefs)

findPrefix :: String -> [(String,String)] -> String
findPrefix x [] = error "Prefix definition not found for used prefix"
findPrefix x (y:ys) | fst y == x = snd y
                    | otherwise = findPrefix x ys
 





