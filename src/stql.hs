import StqlLex
import StqlPar
import System.Environment
import Control.Exception
import System.IO
import Turtle
import TurtlePar (Obj(ObjURI, Lit, Bl, Num, ObjPre))

main :: IO ()
main = do path <- getArgs
          contents <- readFile (head path)
          out <- eval (parseCalc (alexScanTokens contents))
          print out

eval :: [Statement] -> IO [String]
-- eval ((CreateFile f):es) = []
-- eval ((Insert q f):es) = []
eval ((Query q):es) = do x <- evalQuery q
                         xs <- eval es
                         return (x ++ xs)
eval [] = do return []
-- eval ((VarAssign i v mf):es) = []

evalQuery :: Query -> IO [String]
evalQuery (SelectIF fields file) = do getFields fields file
-- evalQuery (SelectIFP fields file pred) = 0
-- evalQuery (SelectIFPI fields file pred order) = 0

unpackObject :: Obj -> String
unpackObject (ObjURI s) = s
unpackObject (Lit s) = s
unpackObject (Bl s) = show s
unpackObject (Num s) = show s
unpackObject (ObjPre s1 s2) = s1 ++ s2

selectItems :: [String] -> Triple -> String
selectItems ["Subj", "Pred", "Obj"] (x, y, z) = x ++ " " ++ y ++ " " ++ unpackObject z
selectItems ["Subj", "Pred"] (x, y, _) = x ++ " " ++ y
selectItems ["Subj", "Obj"] (x, _, z) = x ++ " " ++ unpackObject z
selectItems ["Subj"] (x, _, _) = x
selectItems ["Pred", "Obj"] (_, y, z) = y ++ " " ++ unpackObject z
selectItems ["Pred"] (_, y, _) = y
selectItems ["Obj"] (_, _, z) = unpackObject z
selectItems _ _ = error "Incorrect Items/Item Order in Select STM."

getFields :: [String] -> String -> IO [String]
getFields fields file = do contents <- getTokens [file]
                           return (map (selectItems fields) (head contents))
