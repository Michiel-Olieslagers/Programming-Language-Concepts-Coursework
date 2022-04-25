import StqlLex
import StqlPar
import System.Environment
import Control.Exception
import System.IO
import Turtle
import Data.List
import Text.Read
import TurtlePar (Obj(ObjURI, Lit, Bl, Num, ObjPre))

data Vals = Trpl [MaybTripl]
          | Str String
          | Numbr Int
          | TOF Bool

data Itm = Object Obj
         | Sub String
         | Pred String

main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do path <- getArgs
               contents <- readFile (head path)
               let lexVar = alexScanTokens contents
               let parseVar = parseCalc lexVar
               str <- parse [] parseVar
               --print parseVar
               print str

parse :: [(String, Vals)] -> Exp -> IO String
parse _ [] = error "File does not end in an output."
parse vars (VarAssign var query _:ts) = do newVars <- assign vars var query
                                           parse newVars ts
parse vars [Out var] = return (out (getVars vars var))

out :: Vals -> String
out (Trpl triple) = output triple
out (Numbr int) = show int
out (Str string) = string
out (TOF bl) = show bl

getTriple :: Vals -> [MaybTripl]
getTriple (Trpl t) = t
getTriple _ = error "Invalid reference on variable."

getVars :: [(String, Vals)] -> String -> Vals
getVars [] var = error "Variable being printed out does not exist."
getVars (e:es) var | fst e == var = snd e
                   | otherwise = getVars es var

assign :: [(String, Vals)] -> String -> Value -> IO [(String, Vals)]
assign vars var (QueryVal query) = do triples <- getQuery query vars
                                      return (vars ++ [(var, Trpl triples)])
assign vars var (StringVal string) = return (vars ++ [(var, Str string)])
assign vars var (IntVal int) = return (vars ++ [(var, Numbr int)])
assign vars var (BoolVal bl) = return (vars ++ [(var, TOF bl)])

getQuery :: Query -> [(String, Vals)] -> IO [MaybTripl]
getQuery (SelectIF fields file) vars = do triples <- select file
                                          return (map (selectItems fields) triples)
getQuery (SelectIFP fields file cond) vars = do triples <- select file
                                                let selected = map (selectItems fields) triples
                                                return (whr selected cond vars)

--union :: 

whr :: [MaybTripl] -> Predicate -> [(String, Vals)] -> [MaybTripl]
whr triples (PredICS "Pred" o item) vars = filtr triples (Pred (removeLast (tail item))) (readOp o)
whr triples (PredICS "Obj" o item) vars | head item == '<' && lst item == '>' = filtr2 triples (Object (ObjURI (removeLast (tail item)))) (readOp o)
                                        | item == "false" = filtr2 triples (Object (Bl False)) (readOp o)
                                        | item == "true" = filtr2 triples (Object (Bl True)) (readOp o)
                                        | checkNothing (readMaybe item) = filtr2 triples (Object (Lit item)) (readOp o)
                                        | otherwise = filtr2 triples (Object (Num (read item))) (readOp o)
whr triples (PredICS "Subj" o item) vars = filtr triples (Sub (removeLast (tail item))) (readOp o)
whr triples (PredICR "Obj" o (ObjReference var)) vars = filtrRef2 triples (getTriple $ getVars vars var) (readOp o)
whr triples (PredICR itm o (SubjReference var)) vars = filtrRef itm triples "Subj" (getTriple $ getVars vars var) (readOp o)
whr triples (PredICR itm o (PredReference var)) vars = filtrRef itm triples "Pred" (getTriple $ getVars vars var) (readOp o)
whr triples (PredICR itm o (ObjReference var)) vars = filtrRef itm triples "Obj" (getTriple $ getVars vars var) (readOp o)


readOp :: Ord a => String -> a -> a -> Bool
readOp "==" = (==)
readOp "!=" = (/=)
readOp ">=" = (>=)
readOp "<=" = (<=)
readOp ">" = (>)
readOp "<" = (<)
readOp _ = error "Invalid operator."

checkNothing :: Maybe Int -> Bool
checkNothing Nothing = True
checkNothing _ = False

lst :: String -> Char
lst [] = ' '
lst [x] = x
lst (x:xs) = lst xs

filtrRef :: String -> [MaybTripl] -> String -> [MaybTripl] -> (String -> String -> Bool) -> [MaybTripl]
filtrRef _ [] _ _ _ = []
filtrRef _ _ _ [] _ = []
filtrRef itm1 (t:ts) itm2 rs op = getMatches itm1 t itm2 rs op ++ filtrRef itm1 ts itm2 rs op
filtrRef2 :: [MaybTripl] -> [MaybTripl] -> (Obj -> Obj -> Bool) -> [MaybTripl]
filtrRef2 [] _ _ = []
filtrRef2 _ [] _ = []
filtrRef2 (t:ts) rs op = getMatches2 t rs op ++ filtrRef2 ts rs op

getMatches :: String -> MaybTripl -> String -> [MaybTripl] -> (String -> String -> Bool) -> [MaybTripl]
getMatches "Subj" t@(Just t1, _, _) "Subj" (r@(Just r1, _, _):rs) op | op t1 r1 = [t]
                                                                     | otherwise = getMatches "Subj" t "Subj" rs op
getMatches "Subj" t@(Just t1, _, _) "Pred" (r@(_, Just r2, _):rs) op | op t1 r2 = [t]
                                                                     | otherwise = getMatches "Subj" t "Pred" rs op
getMatches "Subj" t@(Just t1, _, _) "Obj" (r@(_, _, Just r3):rs) op  | op t1 (getObj r3) = [t]
                                                                     | otherwise = getMatches "Subj" t "Obj" rs op
getMatches "Pred" t@(_, Just t2, _) "Subj" (r@(Just r1, _, _):rs) op | op t2 r1 = [t]
                                                                     | otherwise = getMatches "Pred" t "Subj" rs op
getMatches "Pred" t@(_, Just t2, _) "Pred" (r@(_, Just r2, _):rs) op | op t2 r2 = [t]
                                                                     | otherwise = getMatches "Pred" t "Pred" rs op
getMatches "Pred" t@(_, Just t2, _) "Obj" (r@(_, _, Just r3):rs) op  | op t2 (getObj r3) = [t]
                                                                     | otherwise = getMatches "Pred" t "Obj" rs op
getMatches "Obj" t@(_, _, Just t3) "Subj" (r@(Just r1, _, _):rs) op  | op (getObj t3) r1 = [t]
                                                                     | otherwise = getMatches "Obj" t "Subj" rs op
getMatches "Obj" t@(_, _, Just t3) "Pred" (r@(_, Just r2, _):rs) op  | op (getObj t3) r2 = [t]
                                                                     | otherwise = getMatches "Obj" t "Pred" rs op
getMatches _ _ _ [] _ = []
getMatches2 :: MaybTripl -> [MaybTripl] -> (Obj -> Obj -> Bool) -> [MaybTripl]
getMatches2 t@(_, _, Just t3) (r@(_, _, Just r3):rs) op | op t3 r3 = [t]
                                                        | otherwise = getMatches2 t rs op


filtr2 :: [MaybTripl] -> Itm -> (Obj -> Obj -> Bool) -> [MaybTripl]
filtr2 [] _ _ = []
filtr2 (t@(_, _, Just t3):ts) (Object obj) op | op t3 obj = t:filtr2 ts (Object obj) op
                                              | otherwise = filtr2 ts (Object obj) op

filtr :: [MaybTripl] -> Itm -> (String -> String -> Bool) -> [MaybTripl]
filtr (t@(_, Just t2, _):ts) (Pred pred) op | op t2 pred = t:filtr ts (Pred pred) op
                                                    | otherwise = filtr ts (Pred pred) op
filtr (t@(Just t1, _, _):ts) (Sub sub) op | op t1 sub = t:filtr ts (Sub sub) op
                                                    | otherwise = filtr ts (Sub sub) op
filtr _ _ _ = error "Item was not selected from file."

select :: String -> IO [Triple]
select s = do tokens <- getTriples [s]
              return (head tokens)

selectItems :: [String] -> Triple -> MaybTripl
selectItems ["Subj", "Pred", "Obj"] (x, y, z) = (Just x, Just y, Just z)
selectItems ["Subj", "Pred"] (x, y, _) = (Just x, Just y, Nothing)
selectItems ["Subj", "Obj"] (x, _, z) = (Just x, Nothing, Just z)
selectItems ["Subj"] (x, _, _) = (Just x, Nothing, Nothing)
selectItems ["Pred", "Obj"] (_, y, z) = (Nothing, Just y, Just z)
selectItems ["Pred"] (_, y, _) = (Nothing, Just y, Nothing)
selectItems ["Obj"] (_, _, z) = (Nothing, Nothing, Just z)
selectItems _ _ = error "Incorrect Items/Item Order in Select STM."