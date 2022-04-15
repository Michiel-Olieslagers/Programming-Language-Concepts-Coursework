module Main where

import System.Environment
import System.IO
import TurtleLex
import TurtlePar
import Control.Exception
import Data.List

type Triple = (String, String,Obj)

main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do paths <- getArgs
               var <- getData paths
               let var2 = foldr (\x y -> x ++ y) [] var
               let var3 = out var2
               let var4 = (map (\s -> s ++ " . \n") (sort var3))
               writeFile "test.ttl" (foldr (\x y -> x ++ y) [] var4)

getData :: [String] -> IO [Exp]
getData [] = do return []
getData (x:xs) = do contents <- readFile x
                    let var = alexScanTokens contents
                    let var2 = parseCalc var
                    let var3 = format var2 (getBase var2) (getPrefs var2)
                    rest <- getData xs
                    let var4 = (var3:rest)
                    return (var4)

out :: Exp -> [String]
out [] = []
out (e@(Tag (URI x) y):es) | elem e es = out es
                           | otherwise = ((outList y x)++out es)

outList :: [(Item,[Obj])] -> String -> [String]
outList [] subj = []
outList (((URI x),y):[]) subj = (outObjs y subj x)
outList (((URI x),y):es) subj = (outObjs y subj x++outList es subj)

outObjs :: [Obj] -> String -> String -> [String]
outObjs [] subj pred = []
outObjs ((ObjURI e):[]) subj pred = ["<" ++ subj ++ "><" ++ pred ++ "><" ++ e ++ ">"]
outObjs ((Num e):[]) subj pred = ["<" ++ subj ++ "><" ++ pred ++ "> "++ show e]
outObjs ((Bl True):[]) subj pred = ["<" ++ subj ++ "><" ++ pred ++ "> true"]
outObjs ((Bl False):[]) subj pred = ["<" ++ subj ++ "><" ++ pred ++ "> false"]
outObjs ((Lit e):[]) subj pred = ["<" ++ subj ++ "><" ++ pred ++ "><\"" ++ e ++ "\""]
outObjs ((ObjURI e):es) subj pred = (("<" ++ subj ++ "><" ++ pred ++ "><" ++ e ++ ">"):outObjs es subj pred)
outObjs ((Num e):es) subj pred = (("<" ++ subj ++ "><" ++ pred ++ "> "++ show e):outObjs es subj pred)
outObjs ((Bl True):es) subj pred = (("<" ++ subj ++ "><" ++ pred ++ "> true"):outObjs es subj pred)
outObjs ((Bl False):es) subj pred = (("<" ++ subj ++ "><" ++ pred ++ "> false"):outObjs es subj pred)
outObjs ((Lit e):es) subj pred = (("<" ++ subj ++ "><" ++ pred ++ ">\"" ++ e ++ "\""):outObjs es subj pred)

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
 





