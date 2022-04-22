{ 
module StqlLex where 
}

%wrapper "posn" 
$digit = [0-9]     

$alpha = [a-zA-Z]    

tokens:-

$white+       ;
"--".*        ;
\=            {\p s -> Assignment p}
"true"        {\p s -> Boolean True p}
"false"       {\p s -> Boolean False p}
\&&           {\p s -> BooleanOperator s p}
"||"          {\p s -> BooleanOperator s p}
\!            {\p s -> BooleanOperator s p}
\+            {\p s -> NumericalOperator s p}
\-            {\p s -> NumericalOperator s p}
\*            {\p s -> NumericalOperator s p}
\%            {\p s -> NumericalOperator s p}
\/            {\p s -> NumericalOperator s p}
\^            {\p s -> NumericalOperator s p}
"Subj"        {\p s -> Item s p}
"Obj"         {\p s -> Item s p}
"Pred"        {\p s -> Item s p}
$alpha [$alpha $digit]* \.Subj       {\p s -> ReferenceSubj (dropLast 5 s) p}
$alpha [$alpha $digit]* \.Obj        {\p s -> ReferenceObj (dropLast 4 s) p}
$alpha [$alpha $digit]* \.Pred       {\p s -> ReferencePred (dropLast 5 s) p}
"SELECT"      {\p s -> Select p}
"FROM"        {\p s -> From p}
"WHERE"       {\p s -> Where p}
"OUT"         {\p s -> Output p}
\==           {\p s -> Comparison s p}
\!=           {\p s -> Comparison s p}
\< [$alpha $digit \_ \. \: \/]+ \>       {\p s -> Tag s p} 
\>            {\p s -> Comparison s p}
\<            {\p s -> Comparison s p}
\>=           {\p s -> Comparison s p}
\<=           {\p s -> Comparison s p}
$alpha [$alpha $digit]*          {\p s -> Identifier s p}
\( $alpha [$alpha $digit]* \)    {\p s -> Identifier s p}
[$alpha $digit]+ \. $alpha+      {\p s -> File s p}
$digit+                          {\p s -> Integer (read s) p}
\" $alpha+ \"                    {\p s -> String (removeLast (tail s)) p}

{



data Token = 
  Integer               Int AlexPosn |
  String             String AlexPosn |
  Tag             String AlexPosn |
  Comparison         String AlexPosn |
  BooleanOperator    String AlexPosn |
  NumericalOperator  String AlexPosn |
  Boolean              Bool AlexPosn |
  Item               String AlexPosn |
  File               String AlexPosn |
  Predicate          String AlexPosn |
  Output                    AlexPosn |
  Into                      AlexPosn |
  Identifier         String AlexPosn |
  Select                    AlexPosn |
  From                      AlexPosn |
  Where                     AlexPosn |
  ReferenceSubj      String AlexPosn |
  ReferenceObj       String AlexPosn |
  ReferencePred      String AlexPosn |
  Assignment                AlexPosn 
  deriving (Eq,Show) 


tokenPosn :: Token -> String
tokenPosn (Integer  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (String  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Comparison  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (BooleanOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Boolean  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Item  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (File  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Predicate  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)

dropLast :: Int -> String -> String
dropLast n s = reverse (drop n (reverse s))

removeLast :: String -> String
removeLast (c:[]) = []
removeLast (c:cs) = (c:removeLast cs)

}