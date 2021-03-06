{ 
module Tokens where 
}

%wrapper "posn" 
$digit = [0-9]     

$alpha = [a-zA-Z]    

tokens:-

$white+       ;
"--".*        ;
\=             {\p s -> Assignment p}
"true"         {\p s -> Boolean True p}
"false"        {\p s -> Boolean False p}
\&&           {\p s -> BooleanOperator s p}
"||"           {\p s -> BooleanOperator s p}
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
".Subj"       {\p s -> ReferenceSubj s p}
".Obj"        {\p s -> ReferenceObj s p}
".Pred"       {\p s -> ReferencePred s p}
"SELECT"      {\p s -> Select p}
"FROM"        {\p s -> From p}
"WHERE"       {\p s -> Where p}
"ORDERBY"     {\p s -> OrderBy p}
"CREATE"      {\p s -> Create p}
"INSERT"      {\p s -> InsertQuery p}
"INTO"        {\p s -> Into p}
\==           {\p s -> Comparison s p}
\!=           {\p s -> Comparison s p} 
\>            {\p s -> Comparison s p}
\<            {\p s -> Comparison s p}
\>=           {\p s -> Comparison s p}
\<=           {\p s -> Comparison s p}
$alpha [$alpha $digit]+      {\p s -> Identifier s p}
\( $alpha [$alpha $digit]+ \)      {\p s -> Identifier s p}
$alpha+ \. $alpha+           {\p s -> File s p}
$digit+ \. $alpha+           {\p s -> File s p}
$digit+       {\p s -> Integer (read s) p}
\" $alpha+ \"       {\p s -> String s p}

{



data Token = 
  Integer               Int AlexPosn |
  String             String AlexPosn |
  Comparison         String AlexPosn |
  BooleanOperator    String AlexPosn |
  NumericalOperator  String AlexPosn |
  Boolean              Bool AlexPosn |
  Item               String AlexPosn |
  File               String AlexPosn |
  Predicate          String AlexPosn |
  Create                    AlexPosn |
  InsertQuery               AlexPosn |
  Into                      AlexPosn |
  Identifier         String AlexPosn |
  Select                    AlexPosn |
  From                      AlexPosn |
  Where                     AlexPosn |
  OrderBy                   AlexPosn |
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

}