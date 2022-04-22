import StqlLex
import StqlPar
import System.Environment
import Control.Exception
import System.IO
import Turtle
import Text.Read
import TurtlePar (Obj(ObjURI, Lit, Bl, Num, ObjPre))

data Vals = Trpl [MaybTripl]
          | Str String
          | Numbr Int
          | TOF Bool

data Itm = Object Obj
         | SubPred String

main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do path <- getArgs
               contents <- readFile (head path)
               let var = alexScanTokens contents
               let parseVar = parseCalc (alexScanTokens contents)
               str <- parse [] parseVar
               print (str)

parse :: [(String,Vals)] -> Exp -> IO String
parse _ [] = error "file does not end in an output"
parse vars (VarAssign var query _:ts) = do newVars <-assign vars var query
                                           rest <- parse (newVars) ts
                                           return (rest)
parse vars (Out var :[]) = do return (out (getVars vars var))

out :: Vals -> String
out (Trpl triple) = output triple
out (Numbr int) = show int
out (Str string) = string
out (TOF bl) = show bl

getVars :: [(String,Vals)] -> String -> Vals
getVars [] var = error "variable being printed out does not exist"
getVars (e:es) var | fst e == var = snd e
                   | otherwise = getVars es var

assign :: [(String,Vals)] -> String -> Value -> IO [(String,Vals)]
assign vars var (QueryVal query) = do triples <- getQuery query
                                      return (vars ++ [(var, Trpl triples)])
assign vars var (StringVal string) = do return (vars ++ [(var, Str string)])
assign vars var (IntVal int) = do return (vars ++ [(var, Numbr int)])
assign vars var (BoolVal bl) = do return (vars ++ [(var, TOF bl)])

getQuery :: Query -> IO [MaybTripl]
getQuery (SelectIF fields file) = do triples <- select file
                                     return (map (selectItems fields) triples)
getQuery (SelectIFP fields file cond) = do triples <- select file
                                           let selected = map (selectItems fields) triples
                                           return (whr selected cond)
getQuery (SelectIFPI fields file _ _) = do triples <- select file
                                           return (map (selectItems fields) triples)

--union :: 

whr :: [MaybTripl] -> Predicate -> [MaybTripl]
whr triples (PredICS ('P':'r':'e':'d':[]) item ) = filtr triples True (SubPred (removeLast (tail item)))
whr triples (PredICS ('O':'b':'j':[]) item) | head item == '<' && lst item == '>' = filtr triples True (Object (ObjURI (removeLast (tail item))))
                                            | item == "false" = filtr triples True (Object (Bl False))
                                            | item == "true" = filtr triples True (Object (Bl True))
                                            | checkNothing (readMaybe item) == True = filtr triples True (Object (Lit item))
                                            | otherwise = filtr triples True (Object (Num (read item)))
whr triples (PredICS ('S':'u':'b':'j':[]) item ) = filtr triples False (SubPred (removeLast (tail item)))

checkNothing :: Maybe Int -> Bool
checkNothing (Nothing) = True
checkNothing _ = False

lst :: String -> Char
lst [] = ' '
lst (x:[]) = x
lst (x:xs) = lst xs

filtr :: [MaybTripl] -> Bool -> Itm -> [MaybTripl]
filtr [] _ _ = []
filtr (t@(_,_,Just(t3)):ts) x (Object obj) | t3 == obj = (t:(filtr ts) x (Object obj))
                                           | otherwise = filtr ts x (Object obj)
filtr (t@(_,Just(t2),_):ts) True (SubPred pred) | t2 == pred = (t:(filtr ts True (SubPred pred)))
                                                | otherwise = filtr ts True (SubPred pred)
filtr (t@(Just(t1),_,_):ts) False (SubPred sub) | t1 == sub = (t:(filtr ts False (SubPred sub)))
                                                | otherwise = filtr ts False (SubPred sub)
filtr _ _ _ = error "item was not selected from file"

select :: String -> IO [Triple]
select s = do tokens <- getTriples [s]
              return (head (tokens))

selectItems :: [String] -> Triple -> MaybTripl
selectItems ["Subj", "Pred", "Obj"] (x, y, z) = (Just x, Just y, Just z)
selectItems ["Subj", "Pred"] (x, y, _) = (Just x, Just y, Nothing)
selectItems ["Subj", "Obj"] (x, _, z) = (Just x, Nothing, Just z)
selectItems ["Subj"] (x, _, _) = (Just x, Nothing, Nothing)
selectItems ["Pred", "Obj"] (_, y, z) = (Nothing, Just y, Just z)
selectItems ["Pred"] (_, y, _) = (Nothing, Just y, Nothing)
selectItems ["Obj"] (_, _, z) = (Nothing, Nothing, Just z)
selectItems _ _ = error "Incorrect Items/Item Order in Select STM."