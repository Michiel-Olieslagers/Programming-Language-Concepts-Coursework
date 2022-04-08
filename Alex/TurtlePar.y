{ 
module TurtlePar where 
import TurtleLex 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    int { TokenInt $$ } 
    tag { TokenTag $$ } 
    lit { TokenLit $$ } 
    bool { TokenBool $$ } 
    name { TokenName $$ }
    pre { TokenPre $$ }
    at { TokenAt $$ }
    '+' { TokenPos } 
    '-' { TokenNeg } 
    '/' { TokenDiv } 
    '.' { TokenEnd } 
    ';' { TokenList } 
    ',' { TokenCom } 

%left '+' '-' 
%left '*' '/' 
%% 
Exp : let var '=' Exp in Exp { Let $2 $4 $6 } 
    | Exp '+' Exp            { Plus $1 $3 } 
    | Exp '-' Exp            { Minus $1 $3 } 
    | Exp '*' Exp            { Times $1 $3 } 
    | Exp '/' Exp            { Div $1 $3 } 
    | '(' Exp ')'            { $2 } 
    | '-' Exp %prec NEG      { Negate $2 } 
    | int                    { Int $1 } 
    | var                    { Var $1 } 
    
{ 
parseError :: [Token] -> a
parseError _ = error "Parse error" 
data Exp = Let String Exp Exp 
         | Plus Exp Exp 
         | Minus Exp Exp 
         | Times Exp Exp 
         | Div Exp Exp 
         | Negate Exp
         | Int Int 
         | Var String 
         deriving Show 
} 