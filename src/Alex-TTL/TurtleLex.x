{ 
module TurtleLex where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*        ; 
  $digit+                               { \p s -> TokenInt (read s) p }
  \+ $digit+                            { \p s -> TokenInt (read (tail s)) p }
  \- $digit+                            { \p s -> TokenInt (-1*(read (tail s))) p }
  $alpha+ \:                            { \p s -> TokenPre (removeLast s) p }
  false                                 { \p s -> TokenBool False p }
  true                                  { \p s -> TokenBool True p }
  \@ prefix                             { \p s -> TokenPref p }
  \@ base                               { \p s -> TokenBase p }
  \;                                    { \p s -> TokenList p }
  \.                                    { \p s -> TokenEnd p }
  \,                                    { \p s -> TokenCom p }
  \" [$alpha $digit \# \/ \: \_ \.]+ \" { \p s -> TokenLit (removeLast (tail s)) p }  
  \< [$alpha $digit \# \/ \: \_ \.]+ \> { \p s -> TokenTag (removeLast (tail s)) p }
  [$alpha $digit \_]+                      { \p s -> TokenName s p}

{ 
-- Each action has type :: String -> Token 
-- The token type: 
data Token = 
  TokenInt Int AlexPosn     |
  TokenBool Bool AlexPosn   |
  TokenName String AlexPosn |
  TokenTag String AlexPosn  |
  TokenPre String AlexPosn  | 
  TokenLit String AlexPosn  | 
  TokenBase AlexPosn        | 
  TokenPref AlexPosn        |       
  TokenEnd AlexPosn         |
  TokenCom AlexPosn         |
  TokenList AlexPosn         
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenInt n (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBool n (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPre n (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenName n (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTag n (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLit n (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBase (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPref (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCom (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenList (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

removeLast :: String -> String
removeLast (c:[]) = []
removeLast (c:cs) = (c:removeLast cs)

}