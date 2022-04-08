{ 
module Tokens where 
}

%wrapper "posn" 
$digit = [0-9]     

$alpha = [a-zA-Z]    

tokens:-

$white+       ;
"--".*        ;
"true"         {\p s -> Boolean p}
"false"        {\p s -> Boolean p}
"Subj"        {\p s -> Item p}
"Obj"         {\p s -> Item p}
"Pred"        {\p s -> Item p}
"SELECT"      {\p s -> Exp p}
"FROM"        {\p s -> Exp p}
"WHERE"       {\p s -> Exp p}
"ORDERBY"     {\p s -> Exp p}
\&&           {\p s -> BooleanOperator p}
\\\           {\p s -> BooleanOperator p}
\!            {\p s -> BooleanOperator p}
\==           {\p s -> Comparison p}
\!=           {\p s -> Comparison p} 
\>            {\p s -> Comparison p}
\<            {\p s -> Comparison p}
\>=           {\p s -> Comparison p}
\<=           {\p s -> Comparison p}
$digit+       {\p s -> Integer p}
--Is one digit a character or Integer? 
$alpha        {\p s -> Character p}
$alpha+       {\p s -> String p}
\.            {\p s -> File p}

{

-- Each action has type :: AlexPosn -> String -> Token

data Token = 
  Integer          AlexPosn  |
  Character        AlexPosn  |
  String           AlexPosn  |
  Comparison       AlexPosn  |
  BooleanOperator  AlexPosn  |
  Boolean          AlexPosn  |
  Item             AlexPosn  |
  File             AlexPosn  |
  Predicate        AlexPosn  |
  Exp              AlexPosn
  deriving (Eq,Show) 


tokenPosn :: Token -> String
tokenPosn (Integer  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (Character  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (String  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Comparison  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (BooleanOperator  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Boolean  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Item  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (File  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Predicate  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)

}