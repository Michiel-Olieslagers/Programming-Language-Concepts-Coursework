{
module StqlPar where
import StqlLex
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
int {Integer $$ _}
trueBool {TrueBool $$ _} 
falseBool {FalseBool $$ _} 
out {Output _}
file {File $$ _}
select {Select _}
from {From _}
where {Where _}
subjItem {SubjItem $$ _} 
objItem {ObjItem $$ _} 
PredItem {PredItem $$ _} 
equal {Equal $$ _} 
notEqual {NotEqual $$ _} 
greaterThan {GreaterThan $$ _} 
lessThan {LessThan $$ _} 
greaterThanEqual {GreaterThanEqual $$ _} 
lessThanEqual {LessThanEqual $$ _} 
string {String $$ _}
tag {Tag $$ _}
andBoolOp {AndBooleanOperator $$ _} 
orBoolOp {OrBooleanOperator $$ _} 
notBoolOp {NotBooleanOperator $$ _} 
plusNumOp {PlusNumericalOperator $$ _}
minusNumOp {MinusNumericalOperator $$ _}
timesNumOp {MultiplyNumericalOperator $$ _}
modNumOp {ModNumericalOperator $$ _}
divNumOp {DivNumericalOperator $$ _}
powerNumOp {PowerNumericalOperator $$ _} 
identifier {Identifier $$ _}
referenceSubj {ReferenceSubj $$ _}
referenceObj {ReferenceObj $$ _}
referencePred {ReferencePred $$ _}
'=' {Assignment _}
set {Set _}
in {In _}
to {To _}

%%
Exp: Statement Exp           {($1:$2)}
   | Statement               {[$1]}

Statement : out identifier                          {Out $2}
          | set Item in identifier to Condition     {Cond $2 $4 $6}
          | identifier '=' Value                    {VarAssign $1 $3 []}
          | identifier '=' Value ModifierList       {VarAssign $1 $3 $4}

Condition : tag                                     {TagCond $1}
          | string                                  {StrCond $1}
          | plusNumOp int                           {AddCond $2}
          | minusNumOp int                          {MinusCond $2}
          | modNumOp int                            {ModCond $2}
          | timesNumOp int                          {MultCond $2}
          | divNumOp int                            {DivCond $2}
          | powerNumOp int                          {PowCond $2}
          | trueBool                                {BoolCond True}
          | falseBool                               {BoolCond False}
          | int                                     {IntCond $1}

Query: select Items from file                               {SelectIF $2 $4}
     | select Items from file where Predicate               {SelectIFP $2 $4 $6}

Item: subjItem                    {$1}
    | objItem                     {$1}
    | PredItem                    {$1} 

Items: Item Items               {($1:$2)}
     | Item                     {[$1]}
     

Predicate: Item equal string                      {PredICS $1 $2 $3}
         | Item notEqual string                   {PredICS $1 $2 $3}
         | Item greaterThan string                {PredICS $1 $2 $3}
         | Item lessThan string                   {PredICS $1 $2 $3}
         | Item greaterThanEqual string           {PredICS $1 $2 $3}
         | Item lessThanEqual string              {PredICS $1 $2 $3}
         | Item equal tag                         {PredICS $1 $2 $3}
         | Item notEqual tag                      {PredICS $1 $2 $3}
         | Item greaterThan tag                   {PredICS $1 $2 $3}
         | Item lessThan tag                      {PredICS $1 $2 $3}
         | Item greaterThanEqual tag              {PredICS $1 $2 $3}
         | Item lessThanEqual tag                 {PredICS $1 $2 $3}
         | Item equal int                         {PredICS $1 $2 (show $3)}
         | Item notEqual int                      {PredICS $1 $2 (show $3)}
         | Item greaterThan int                   {PredICS $1 $2 (show $3)}
         | Item lessThan int                      {PredICS $1 $2 (show $3)}
         | Item greaterThanEqual int              {PredICS $1 $2 (show $3)}
         | Item lessThanEqual int                 {PredICS $1 $2 (show $3)}
         | Item equal trueBool                    {PredICS $1 $2 (show $3)}
         | Item notEqual trueBool                 {PredICS $1 $2 (show $3)}
         | Item greaterThan trueBool              {PredICS $1 $2 (show $3)}
         | Item lessThan trueBool                 {PredICS $1 $2 (show $3)}
         | Item greaterThanEqual trueBool         {PredICS $1 $2 (show $3)}
         | Item lessThanEqual trueBool            {PredICS $1 $2 (show $3)}
         | Item equal falseBool                   {PredICS $1 $2 (show $3)}
         | Item notEqual falseBool                {PredICS $1 $2 (show $3)}
         | Item greaterThan falseBool             {PredICS $1 $2 (show $3)}
         | Item lessThan falseBool                {PredICS $1 $2 (show $3)}
         | Item greaterThanEqual falseBool        {PredICS $1 $2 (show $3)}
         | Item lessThanEqual falseBool           {PredICS $1 $2 (show $3)}
         | Item equal Reference                   {PredICR $1 $2 $3}
         | Item notEqual Reference                {PredICR $1 $2 $3}
         | Item greaterThan Reference             {PredICR $1 $2 $3}
         | Item lessThan Reference                {PredICR $1 $2 $3}
         | Item greaterThanEqual Reference        {PredICR $1 $2 $3}
         | Item lessThanEqual Reference           {PredICR $1 $2 $3}
         | Predicate andBoolOp Predicate          {PredPBP $1 $2 $3}
         | Predicate orBoolOp Predicate           {PredPBP $1 $2 $3}
         | Predicate notBoolOp Predicate          {PredPBP $1 $2 $3}
 
Value: Query                {QueryVal $1}
     | string               {StringVal $1}
     | int                  {IntVal $1}
     | trueBool                 {BoolVal $1}
     | falseBool                 {BoolVal $1}
     | identifier                {VarVal $1}

Modifier: andBoolOp Value    {BoolOpModifier $1 $2}
        | orBoolOp Value     {BoolOpModifier $1 $2}
        | notBoolOp Value    {BoolOpModifier $1 $2} 
        | plusNumOp Value     {NumOpModifier $1 $2}
        | minusNumOp Value     {NumOpModifier $1 $2}
        | timesNumOp Value     {NumOpModifier $1 $2}
        | modNumOp Value     {NumOpModifier $1 $2}
        | divNumOp Value     {NumOpModifier $1 $2}
        | powerNumOp Value     {NumOpModifier $1 $2}

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
               | Cond String String Condition
               deriving Show 

data Query = SelectIF [String] String 
           | SelectIFP [String] String Predicate
           deriving Show

data Predicate = PredICS String String String
               | PredICR String String Reference
               | PredPBP Predicate String Predicate
               deriving Show

data Value = QueryVal Query
           | StringVal String
           | IntVal Int
           | BoolVal Bool
           | VarVal String
           deriving Show

data Modifier = BoolOpModifier String Value
              | NumOpModifier String Value
              deriving Show

data Reference = SubjReference String
               | ObjReference String
               | PredReference String
               deriving Show  

data Condition = MultCond Int 
               | AddCond Int 
               | MinusCond Int 
               | DivCond Int 
               | PowCond Int 
               | ModCond Int 
               | IntCond Int
               | StrCond String
               | BoolCond Bool
               | TagCond String    
               deriving Show             
}