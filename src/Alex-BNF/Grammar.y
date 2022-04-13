{
module Grammar where
import Tokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
int {Integer $$ _}
bool {Boolean $$ _}
create {Create _}
insert {Insert _}
into {Into _}
file {File $$ _}
select {Select _}
from {From _}
where {Where _}
orderby {OrderBy _}
item {Item $$ _}
comparison {Comparison $$ _}
string {String $$ _}
boolOp {BooleanOperator $$ _}
numOp {NumericalOperator $$ _}
identifier {Identifier $$ _}
referenceSubj {ReferenceSubj $$ _}
referenceObj {ReferenceObj $$ _}
referencePred {ReferencePred $$ _}

%%
Exp : create file               {Crt $2}
    | insert Query into file    {Insrt $2 $4}
    | Query                     {Query}

Query: select Item from file where Predicate orderby Item  {Slt3 $2 $4 $6 $8}
     | select Item from file where Predicate               {Slt2 $2 $4 $6}
     | select Item from file                               {Slt1 $2 $4}

Item: item                     {Itm1 $1} 
    | Item Item                {Itm2 $1 $2}


Predicate: Item comparison string           {Pred2 $1 $3}
         | Predicate boolOp Predicate       {Pred3 $1 $3}
 
Value: Query                {ValQ $1}
     | string               {ValS $1}
     | int                  {ValI $1}
     | bool                 {ValB $1}

Modifier: boolOp Value    {ModB $1 $2} 
        | numOp Value     {ModN $1 $2}

Variable: identifier      {Var $1}

VariableAssignment: Variable '=' Value Modifier     {VarAssign $1 $3 $4}

Referenceable: file        {Referencable1 $1}
             | Variable    {Referencable2 $1}

Reference: Referenceable referenceSubj     {Reference1 $1 $2}
         | Referenceable referenceObj      {Reference1 $1 $2}
         | Referenceable referencePred     {Reference1 $1 $2}

{ 
parseError :: [Token] -> a
parseError _ = error "Parse error" 

data Exp = Crt String
         | Insrt Query String
         | Query
         | VariableAssignment
         deriving Show 

data Query = Slt3 Item String Predicate Item
           | Slt2 Item String Predicate
           | Slt1 Item String 
           deriving Show

data Item = Itm1 String
          | Itm2 Item Item
          deriving Show

data Predicate = Pred1 Item String
               | Pred2 Item Reference
               | Pred3 Predicate Predicate
               deriving Show

data Value = ValQ Query
           | ValS String
           | ValI Int
           | ValB Bool 
           deriving Show

data Modifier = ModB String Value
              | ModN String Value
              deriving Show

data Variable = Var String
              deriving Show

data VariableAssignment = VarAssign Variable Value Modifier
                         deriving Show

data Referencable = Referencable1 String
                  | Referencable2 Variable
                  deriving Show

date Reference = Reference1 Referencable String
               deriving Show
} 