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
"true"        {\p s -> TrueBool True p}
"false"       {\p s -> FalseBool False p}
\&&           {\p s -> AndBooleanOperator s p}
"||"          {\p s -> OrBooleanOperator s p}
\!            {\p s -> NotBooleanOperator s p}
\+            {\p s -> PlusNumericalOperator s p}
\-            {\p s -> MinusNumericalOperator s p}
\*            {\p s -> MultiplyNumericalOperator s p}
\%            {\p s -> ModNumericalOperator s p}
\/            {\p s -> DivNumericalOperator s p}
\^            {\p s -> PowerNumericalOperator s p}
"Subj"        {\p s -> SubjItem s p}
"Obj"         {\p s -> ObjItem s p}
"Pred"        {\p s -> PredItem s p}
$alpha [$alpha $digit]* \.Subj       {\p s -> ReferenceSubj (dropLast 5 s) p}
$alpha [$alpha $digit]* \.Obj        {\p s -> ReferenceObj (dropLast 4 s) p}
$alpha [$alpha $digit]* \.Pred       {\p s -> ReferencePred (dropLast 5 s) p}
"SELECT"      {\p s -> Select p}
"FROM"        {\p s -> From p}
"WHERE"       {\p s -> Where p}
"OUT"         {\p s -> Output p}
\==           {\p s -> Equal s p}
\!=           {\p s -> NotEqual s p}
\< [$alpha $digit \_ \. \: \/]+ \>       {\p s -> Tag s p} 
\>            {\p s -> GreaterThan s p}
\<            {\p s -> LessThan s p}
\>=           {\p s -> GreaterThanEqual s p}
\<=           {\p s -> LessThanEqual s p}
$alpha [$alpha $digit]*          {\p s -> Identifier s p}
\( $alpha [$alpha $digit]* \)    {\p s -> Identifier s p}
[$alpha $digit]+ \. $alpha+      {\p s -> File s p}
$digit+                          {\p s -> Integer (read s) p}
\" $alpha+ \"                    {\p s -> String (removeLast (tail s)) p}

{



data Token = 
  Integer                       Int AlexPosn |
  String                     String AlexPosn |
  Tag                        String AlexPosn |
  Equal                      String AlexPosn |
  NotEqual                   String AlexPosn |
  GreaterThan                String AlexPosn |
  LessThan                   String AlexPosn |
  GreaterThanEqual           String AlexPosn |
  LessThanEqual              String AlexPosn |
  AndBooleanOperator         String AlexPosn |
  OrBooleanOperator          String AlexPosn |
  NotBooleanOperator         String AlexPosn |
  PlusNumericalOperator      String AlexPosn |
  MinusNumericalOperator     String AlexPosn |
  MultiplyNumericalOperator     String AlexPosn |
  ModNumericalOperator       String AlexPosn |
  DivNumericalOperator       String AlexPosn |
  PowerNumericalOperator     String AlexPosn |
  TrueBool                     Bool AlexPosn |
  FalseBool                    Bool AlexPosn |
  SubjItem                   String AlexPosn |
  ObjItem                    String AlexPosn |
  PredItem                   String AlexPosn |
  File                       String AlexPosn |
  Predicate                  String AlexPosn |
  Output                            AlexPosn |
  Into                              AlexPosn |
  Identifier                 String AlexPosn |
  Select                            AlexPosn |
  From                              AlexPosn |
  Where                             AlexPosn |
  ReferenceSubj              String AlexPosn |
  ReferenceObj               String AlexPosn |
  ReferencePred              String AlexPosn |
  Assignment                        AlexPosn 
  deriving (Eq,Show) 


tokenPosn :: Token -> String
tokenPosn (Integer  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (String  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Tag  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Equal  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (NotEqual  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (GreaterThan  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (LessThan  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (GreaterThanEqual  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (LessThanEqual  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (AndBooleanOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (OrBooleanOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (NotBooleanOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (PlusNumericalOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (MinusNumericalOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (MultiplyNumericalOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (ModNumericalOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (DivNumericalOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (PowerNumericalOperator  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (TrueBool  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (FalseBool  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (SubjItem  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (ObjItem  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (PredItem  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (File  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Predicate  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Output  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Into  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Identifier  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Select  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (From  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Where  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (ReferenceSubj  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (ReferenceObj  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (ReferencePred  n (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)
tokenPosn (Assignment  (AlexPn a l c) ) = show(l) ++ ":" ++ show(c)


dropLast :: Int -> String -> String
dropLast n s = reverse (drop n (reverse s))

removeLast :: String -> String
removeLast (c:[]) = []
removeLast (c:cs) = (c:removeLast cs)

}