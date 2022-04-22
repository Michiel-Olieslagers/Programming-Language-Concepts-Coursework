{
module StqlPar where
import StqlLex
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
int {Integer $$ _}
bool {Boolean $$ _}
out {Output _}
file {File $$ _}
select {Select _}
from {From _}
where {Where _}
item {Item $$ _}
comparison {Comparison $$ _}
string {String $$ _}
tag {Tag $$ _}
boolOp {BooleanOperator $$ _}
numOp {NumericalOperator $$ _}
identifier {Identifier $$ _}
referenceSubj {ReferenceSubj $$ _}
referenceObj {ReferenceObj $$ _}
referencePred {ReferencePred $$ _}
'=' {Assignment _}

%%
Exp: Statement Exp           {($1:$2)}
   | Statement               {[$1]}

Statement : out identifier                          {Out $2}
          | identifier '=' Value                    {VarAssign $1 $3 []}
          | identifier '=' Value ModifierList       {VarAssign $1 $3 $4}

Query: select Item from file                               {SelectIF $2 $4}
     | select Item from file where Predicate               {SelectIFP $2 $4 $6}

Item: item Item                {($1:$2)}
    | item                     {[$1]} 

Predicate: item comparison string           {PredICS $1 $3}
         | item comparison tag              {PredICS $1 $3}
         | item comparison int              {PredICS $1 (show $3)}
         | item comparison bool              {PredICS $1 (show $3)}
         | item comparison Reference        {PredICR $1 $3}
         | Predicate boolOp Predicate       {PredPBP $1 $3}
 
Value: Query                {QueryVal $1}
     | string               {StringVal $1}
     | int                  {IntVal $1}
     | bool                 {BoolVal $1}

Modifier: boolOp Value    {BoolOpModifier $1 $2} 
        | numOp Value     {NumOpModifier $1 $2}

ModifierList: Modifier ModifierList      {[$1] ++ $2}
            | Modifier                   {[$1]}

Reference: referenceSubj     {SubjReference $1}
         | referenceObj      {ObjReference $1}
         | referencePred     {PredReference $1}

{ 
parseError :: [Token] -> a
parseError t = error ("Parse error, Tokens: " ++ show t)

type Exp = [Statement]


data Statement = Out String
               | VarAssign String Value [Modifier]
               deriving Show 

data Query = SelectIF [String] String 
           | SelectIFP [String] String Predicate
           deriving Show

data Predicate = PredICS String String
               | PredICR String Reference
               | PredPBP Predicate Predicate
               deriving Show

data Value = QueryVal Query
           | StringVal String
           | IntVal Int
           | BoolVal Bool 
           deriving Show

data Modifier = BoolOpModifier String Value
              | NumOpModifier String Value
              deriving Show

data Reference = SubjReference String
               | ObjReference String
               | PredReference String
               deriving Show               
}