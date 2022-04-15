{ 
module TurtlePar where 
import TurtleLex 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    int                            { TokenInt $$ _ } 
    bool                          { TokenBool $$ _ } 
    var                           { TokenName $$ _ }
    tag                           { TokenTag $$ _ }
    pre                            { TokenPre $$ _ }
    base                             { TokenBase _ }
    pref                             { TokenPref _ }
    lit                           { TokenLit $$ _ } 
    '.'                              { TokenEnd _ } 
    ';'                             { TokenList _ } 
    ','                              { TokenCom _ } 
%%
Exp : Line Exp {($1:$2)}
    | Line     {[$1]}

Line : tag List '.'                 { Tag (URI $1) $2 }
    | pre var List '.'           { Tag (Pre $1 $2) $3 }
    | base tag '.'                      { BaseDef $2 }
    | pref pre tag '.'                { PreDef $2 $3 }

Objs : tag ',' Objs                     {((ObjURI $1):$3)}
     | pre var ',' Objs              {((ObjPre $1 $2):$4)}
     | bool ',' Objs                     {((Bl $1):$3)}
     | int ',' Objs                     {((Num $1):$3)}
     | lit ',' Objs                     {((Lit $1):$3)}
     | tag                                   {[ObjURI $1]}
     | bool                                   {[Bl $1]}
     | lit                                   {[Lit $1]}
     | int                                   {[Num $1]}
     | pre var                            {[ObjPre $1 $2]}    

List : tag Objs ';' List           {((URI $1,$2):$4)}
     | pre var Objs ';' List      {((Pre $1 $2,$3):$5)}
     | pre var Objs                  {[(Pre $1 $2,$3)]}
     | tag Objs                        {[(URI $1,$2)]}
    
{ 
parseError :: [Token] -> a
parseError _ = error "Parse error" 
data Item = URI String                                 
          | Pre String String
          deriving (Show,Eq) 
data Obj = ObjURI String                                  
         | Lit String                                  
         | Bl Bool                                   
         | Num Int                                   
         | ObjPre String String
         deriving (Show,Eq) 

type Exp = [Line]

data Line = Tag Item [(Item,[Obj])]                     
          | BaseDef String                              
          | PreDef String String
          deriving (Show,Eq)
} 