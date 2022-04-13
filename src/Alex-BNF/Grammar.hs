{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,81) ([32768,4105,0,16422,0,152,1,0,0,1024,0,8192,0,0,8,0,16384,0,0,0,16422,0,0,0,33304,0,36864,0,0,0,8192,0,0,0,0,4,0,0,0,64,0,0,0,0,12,0,0,0,0,0,0,0,3072,0,0,0,8326,0,33304,0,8192,0,0,0,0,8,0,0,0,0,0,0,0,6144,0,4096,0,32768,0,0,2,16384,288,0,14336,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Statement","Query","Item","Predicate","Value","Modifier","ModifierList","Referenceable","Reference","int","bool","create","insert","into","file","select","from","where","orderby","item","comparison","string","boolOp","numOp","identifier","referenceSubj","referenceObj","referencePred","'='","%eof"]
        bit_start = st Prelude.* 34
        bit_end = (st Prelude.+ 1) Prelude.* 34
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..33]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (16) = happyShift action_4
action_0 (17) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (29) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_9
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (16) = happyShift action_4
action_1 (17) = happyShift action_5
action_1 (20) = happyShift action_6
action_1 (29) = happyShift action_7
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_4
action_2 (17) = happyShift action_5
action_2 (20) = happyShift action_6
action_2 (29) = happyShift action_7
action_2 (4) = happyGoto action_10
action_2 (5) = happyGoto action_9
action_2 (6) = happyGoto action_3
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_5

action_4 (19) = happyShift action_15
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (20) = happyShift action_6
action_5 (6) = happyGoto action_14
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (24) = happyShift action_13
action_6 (7) = happyGoto action_12
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (33) = happyShift action_11
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (34) = happyAccept
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_4
action_9 (17) = happyShift action_5
action_9 (20) = happyShift action_6
action_9 (29) = happyShift action_7
action_9 (4) = happyGoto action_10
action_9 (5) = happyGoto action_9
action_9 (6) = happyGoto action_3
action_9 _ = happyReduce_2

action_10 _ = happyReduce_1

action_11 (14) = happyShift action_21
action_11 (15) = happyShift action_22
action_11 (20) = happyShift action_6
action_11 (26) = happyShift action_23
action_11 (6) = happyGoto action_19
action_11 (9) = happyGoto action_20
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (21) = happyShift action_18
action_12 (24) = happyShift action_13
action_12 (7) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_11

action_14 (18) = happyShift action_16
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_3

action_16 (19) = happyShift action_29
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (24) = happyShift action_13
action_17 (7) = happyGoto action_17
action_17 _ = happyReduce_12

action_18 (19) = happyShift action_28
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_16

action_20 (27) = happyShift action_26
action_20 (28) = happyShift action_27
action_20 (10) = happyGoto action_24
action_20 (11) = happyGoto action_25
action_20 _ = happyReduce_6

action_21 _ = happyReduce_18

action_22 _ = happyReduce_19

action_23 _ = happyReduce_17

action_24 (27) = happyShift action_26
action_24 (28) = happyShift action_27
action_24 (10) = happyGoto action_24
action_24 (11) = happyGoto action_33
action_24 _ = happyReduce_23

action_25 _ = happyReduce_7

action_26 (14) = happyShift action_21
action_26 (15) = happyShift action_22
action_26 (20) = happyShift action_6
action_26 (26) = happyShift action_23
action_26 (6) = happyGoto action_19
action_26 (9) = happyGoto action_32
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_21
action_27 (15) = happyShift action_22
action_27 (20) = happyShift action_6
action_27 (26) = happyShift action_23
action_27 (6) = happyGoto action_19
action_27 (9) = happyGoto action_31
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (22) = happyShift action_30
action_28 _ = happyReduce_8

action_29 _ = happyReduce_4

action_30 (24) = happyShift action_13
action_30 (7) = happyGoto action_34
action_30 (8) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_21

action_32 _ = happyReduce_20

action_33 _ = happyReduce_22

action_34 (24) = happyShift action_13
action_34 (25) = happyShift action_38
action_34 (7) = happyGoto action_17
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_36
action_35 (27) = happyShift action_37
action_35 _ = happyReduce_9

action_36 (24) = happyShift action_13
action_36 (7) = happyGoto action_45
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (24) = happyShift action_13
action_37 (7) = happyGoto action_34
action_37 (8) = happyGoto action_44
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (19) = happyShift action_41
action_38 (26) = happyShift action_42
action_38 (29) = happyShift action_43
action_38 (12) = happyGoto action_39
action_38 (13) = happyGoto action_40
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (30) = happyShift action_46
action_39 (31) = happyShift action_47
action_39 (32) = happyShift action_48
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_14

action_41 _ = happyReduce_24

action_42 _ = happyReduce_13

action_43 _ = happyReduce_25

action_44 (27) = happyShift action_37
action_44 _ = happyReduce_15

action_45 (24) = happyShift action_13
action_45 (7) = happyGoto action_17
action_45 _ = happyReduce_10

action_46 _ = happyReduce_26

action_47 _ = happyReduce_27

action_48 _ = happyReduce_28

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ((happy_var_1:happy_var_2)
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyTerminal (File happy_var_2 _))
	_
	 =  HappyAbsSyn5
		 (CreateFile happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 4 5 happyReduction_4
happyReduction_4 ((HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InsertQuery happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (QueryOnly happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 []
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 4 5 happyReduction_7
happyReduction_7 ((HappyAbsSyn11  happy_var_4) `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (Identifier happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 ((HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIF happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 6 6 happyReduction_9
happyReduction_9 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIFP happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 8 6 happyReduction_10
happyReduction_10 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIFPI happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn7
		 (ItemOnly happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ItemRec happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (PredPBP happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (QueryVal happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyTerminal (String happy_var_1 _))
	 =  HappyAbsSyn9
		 (StringVal happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyTerminal (Integer happy_var_1 _))
	 =  HappyAbsSyn9
		 (IntVal happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 (HappyTerminal (Boolean happy_var_1 _))
	 =  HappyAbsSyn9
		 (BoolVal happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  10 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_2)
	(HappyTerminal (BooleanOperator happy_var_1 _))
	 =  HappyAbsSyn10
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  10 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_2)
	(HappyTerminal (NumericalOperator happy_var_1 _))
	 =  HappyAbsSyn10
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  11 happyReduction_22
happyReduction_22 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1] ++ happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  12 happyReduction_24
happyReduction_24 (HappyTerminal (File happy_var_1 _))
	 =  HappyAbsSyn12
		 (ReferencableFile happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  12 happyReduction_25
happyReduction_25 (HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn12
		 (ReferencableVariable happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  13 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 (SubjReference happy_var_1
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  13 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 (ObjReference happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  13 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 (PredReference happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 34 34 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Integer happy_dollar_dollar _ -> cont 14;
	Boolean happy_dollar_dollar _ -> cont 15;
	Create _ -> cont 16;
	Insert _ -> cont 17;
	Into _ -> cont 18;
	File happy_dollar_dollar _ -> cont 19;
	Select _ -> cont 20;
	From _ -> cont 21;
	Where _ -> cont 22;
	OrderBy _ -> cont 23;
	Item happy_dollar_dollar _ -> cont 24;
	Comparison happy_dollar_dollar _ -> cont 25;
	String happy_dollar_dollar _ -> cont 26;
	BooleanOperator happy_dollar_dollar _ -> cont 27;
	NumericalOperator happy_dollar_dollar _ -> cont 28;
	Identifier happy_dollar_dollar _ -> cont 29;
	ReferenceSubj happy_dollar_dollar _ -> cont 30;
	ReferenceObj happy_dollar_dollar _ -> cont 31;
	ReferencePred happy_dollar_dollar _ -> cont 32;
	Assignment _ -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error" 

type Exp = [Statement]


data Statement = CreateFile String
               | InsertQuery Query String
               | QueryOnly Query
               | VarAssign String Value [Modifier]
               deriving Show 

data Query = SelectIF Item String 
           | SelectIFP Item String Predicate
           | SelectIFPI Item String Predicate Item
           deriving Show

data Item = ItemOnly String
          | ItemRec Item Item
          deriving Show

data Predicate = PredICS Item String
               | PredICR Item Reference
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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
