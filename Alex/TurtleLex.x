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
  $digit+       { \p s -> TokenInt (read s) p } 
  false       { \p s -> TokenBool False p }
  true       { \p s -> TokenBool True p }
  \@ [$alpha \_ ]*      { \p s -> TokenAt s p }
  $alpha+ \:     { \p s -> TokenPre s p }
  $alpha+     { \p s -> TokenName s p }
  \;          { \p s -> TokenList p }
  \.          { \p s -> TokenEnd p }
  \+          { \p s -> TokenPos p }
  \-          { \p s -> TokenNeg p }
  \,          { \p s -> TokenCom p }
  \< [$alpha $digit \# \/ \: \_ \.]+ \>   { \p s -> TokenTag s p } 
  \" [$alpha $digit \_ ]+ \"   { \p s -> TokenLit s p } 

{ 
-- Each action has type :: String -> Token 
-- The token type: 
data Token = 
  TokenInt Int AlexPosn     |
  TokenTag String AlexPosn  | 
  TokenLit String AlexPosn  | 
  TokenPos AlexPosn         |
  TokenNeg AlexPosn         |
  TokenEnd AlexPosn         |
  TokenCom AlexPosn         |
  TokenList AlexPosn        |
  TokenPre String AlexPosn  |
  TokenAt String AlexPosn   |
  TokenBool Bool AlexPosn   |
  TokenName String AlexPosn     
  deriving (Eq,Show) 

}