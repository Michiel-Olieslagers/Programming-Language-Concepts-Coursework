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
insert {InsertQuery _}
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
'=' {Assignment _}

%%
Exp: Statement Exp           {($1:$2)}
   | Statement               {[$1]}

Statement : create file                             {CreateFile $2}
          | insert Query into file                  {Insert $2 $4}
          | Query                                   {Query $1}
          | identifier '=' Value                    {VarAssign $1 $3 []}
          | identifier '=' Value ModifierList       {VarAssign $1 $3 $4}

Query: select Item from file                               {SelectIF $2 $4}
     | select Item from file where Predicate               {SelectIFP $2 $4 $6}
     | select Item from file where Predicate orderby Item  {SelectIFPI $2 $4 $6 $8}

Item: item Item                {($1:$2)}
    | item                     {[$1]} 

Predicate: Item comparison string           {PredICS $1 $3}
         | Item comparison Reference        {PredICR $1 $3}
         | Predicate boolOp Predicate       {PredPBP $1 $3}
 
Value: Query                {QueryVal $1}
     | string               {StringVal $1}
     | int                  {IntVal $1}
     | bool                 {BoolVal $1}

Modifier: boolOp Value    {BoolOpModifier $1 $2} 
        | numOp Value     {NumOpModifier $1 $2}

ModifierList: Modifier ModifierList      {[$1] ++ $2}
            | Modifier                   {[$1]}

Referenceable: file          {ReferencableFile $1}
             | identifier    {ReferencableVariable $1}

Reference: Referenceable referenceSubj     {SubjReference $1}
         | Referenceable referenceObj      {ObjReference $1}
         | Referenceable referencePred     {PredReference $1}

{ 
parseError :: [Token] -> a
parseError _ = error "Parse error" 

type Exp = [Statement]


data Statement = CreateFile String
               | Insert Query String
               | Query Query
               | VarAssign String Value [Modifier]
               deriving Show 

data Query = SelectIF [String] String 
           | SelectIFP [String] String Predicate
           | SelectIFPI [String] String Predicate [String]
           deriving Show

data Predicate = PredICS [String] String
               | PredICR [String] Reference
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
                        

data Referencable = ReferencableFile String
                  | ReferencableVariable String
                  deriving Show

data Reference = SubjReference Referencable
               | ObjReference Referencable
               | PredReference Referencable
               deriving Show               
}