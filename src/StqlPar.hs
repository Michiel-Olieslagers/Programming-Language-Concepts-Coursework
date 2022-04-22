{-# OPTIONS_GHC -w #-}
module StqlPar where
import StqlLex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,70) ([16384,1024,16384,1024,16384,1024,0,1024,0,16384,0,0,16384,1024,0,0,12288,65,0,0,0,0,0,768,0,0,0,0,0,16,0,0,0,2,0,16,0,768,0,0,12288,65,12288,65,0,0,0,0,0,0,0,0,32768,0,0,4,0,16,0,8,0,32,12288,1216,0,16,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14336,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Statement","Query","Item","Predicate","Value","Modifier","ModifierList","Reference","int","bool","out","file","select","from","where","orderby","item","comparison","string","tag","boolOp","numOp","identifier","referenceSubj","referenceObj","referencePred","'='","%eof"]
        bit_start = st Prelude.* 32
        bit_end = (st Prelude.+ 1) Prelude.* 32
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..31]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (15) = happyShift action_3
action_0 (27) = happyShift action_4
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_3
action_1 (27) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (15) = happyShift action_3
action_2 (27) = happyShift action_4
action_2 (4) = happyGoto action_7
action_2 (5) = happyGoto action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (27) = happyShift action_9
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (31) = happyShift action_8
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (32) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (15) = happyShift action_3
action_6 (27) = happyShift action_4
action_6 (4) = happyGoto action_7
action_6 (5) = happyGoto action_6
action_6 _ = happyReduce_2

action_7 _ = happyReduce_1

action_8 (13) = happyShift action_12
action_8 (14) = happyShift action_13
action_8 (17) = happyShift action_14
action_8 (23) = happyShift action_15
action_8 (6) = happyGoto action_10
action_8 (9) = happyGoto action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_3

action_10 _ = happyReduce_17

action_11 (25) = happyShift action_20
action_11 (26) = happyShift action_21
action_11 (10) = happyGoto action_18
action_11 (11) = happyGoto action_19
action_11 _ = happyReduce_4

action_12 _ = happyReduce_19

action_13 _ = happyReduce_20

action_14 (21) = happyShift action_17
action_14 (7) = happyGoto action_16
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_18

action_16 (18) = happyShift action_26
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (21) = happyShift action_17
action_17 (7) = happyGoto action_25
action_17 _ = happyReduce_10

action_18 (25) = happyShift action_20
action_18 (26) = happyShift action_21
action_18 (10) = happyGoto action_18
action_18 (11) = happyGoto action_24
action_18 _ = happyReduce_24

action_19 _ = happyReduce_5

action_20 (13) = happyShift action_12
action_20 (14) = happyShift action_13
action_20 (17) = happyShift action_14
action_20 (23) = happyShift action_15
action_20 (6) = happyGoto action_10
action_20 (9) = happyGoto action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (13) = happyShift action_12
action_21 (14) = happyShift action_13
action_21 (17) = happyShift action_14
action_21 (23) = happyShift action_15
action_21 (6) = happyGoto action_10
action_21 (9) = happyGoto action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_22

action_23 _ = happyReduce_21

action_24 _ = happyReduce_23

action_25 _ = happyReduce_9

action_26 (16) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (19) = happyShift action_28
action_27 _ = happyReduce_6

action_28 (21) = happyShift action_30
action_28 (8) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (20) = happyShift action_32
action_29 (25) = happyShift action_33
action_29 _ = happyReduce_7

action_30 (22) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (13) = happyShift action_37
action_31 (14) = happyShift action_38
action_31 (23) = happyShift action_39
action_31 (24) = happyShift action_40
action_31 (27) = happyShift action_41
action_31 (12) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (21) = happyShift action_17
action_32 (7) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (21) = happyShift action_30
action_33 (8) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (25) = happyShift action_33
action_34 _ = happyReduce_16

action_35 _ = happyReduce_8

action_36 _ = happyReduce_15

action_37 _ = happyReduce_13

action_38 _ = happyReduce_14

action_39 _ = happyReduce_11

action_40 _ = happyReduce_12

action_41 (28) = happyShift action_42
action_41 (29) = happyShift action_43
action_41 (30) = happyShift action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_25

action_43 _ = happyReduce_26

action_44 _ = happyReduce_27

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
happyReduction_3 (HappyTerminal (Identifier happy_var_2 _))
	_
	 =  HappyAbsSyn5
		 (Out happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 []
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 5 happyReduction_5
happyReduction_5 ((HappyAbsSyn11  happy_var_4) `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (Identifier happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 ((HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIF happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIFP happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 8 6 happyReduction_8
happyReduction_8 ((HappyAbsSyn7  happy_var_8) `HappyStk`
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

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_2)
	(HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn7
		 ((happy_var_1:happy_var_2)
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyTerminal (String happy_var_3 _))
	_
	(HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn8
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn8
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn8
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyTerminal (Boolean happy_var_3 _))
	_
	(HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn8
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (Item happy_var_1 _))
	 =  HappyAbsSyn8
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (PredPBP happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (QueryVal happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyTerminal (String happy_var_1 _))
	 =  HappyAbsSyn9
		 (StringVal happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 (HappyTerminal (Integer happy_var_1 _))
	 =  HappyAbsSyn9
		 (IntVal happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 (HappyTerminal (Boolean happy_var_1 _))
	 =  HappyAbsSyn9
		 (BoolVal happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  10 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_2)
	(HappyTerminal (BooleanOperator happy_var_1 _))
	 =  HappyAbsSyn10
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  10 happyReduction_22
happyReduction_22 (HappyAbsSyn9  happy_var_2)
	(HappyTerminal (NumericalOperator happy_var_1 _))
	 =  HappyAbsSyn10
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  11 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1] ++ happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  12 happyReduction_25
happyReduction_25 _
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn12
		 (SubjReference happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  12 happyReduction_26
happyReduction_26 _
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn12
		 (ObjReference happy_var_1
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  12 happyReduction_27
happyReduction_27 _
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn12
		 (PredReference happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Integer happy_dollar_dollar _ -> cont 13;
	Boolean happy_dollar_dollar _ -> cont 14;
	Output _ -> cont 15;
	File happy_dollar_dollar _ -> cont 16;
	Select _ -> cont 17;
	From _ -> cont 18;
	Where _ -> cont 19;
	OrderBy _ -> cont 20;
	Item happy_dollar_dollar _ -> cont 21;
	Comparison happy_dollar_dollar _ -> cont 22;
	String happy_dollar_dollar _ -> cont 23;
	Tag happy_dollar_dollar _ -> cont 24;
	BooleanOperator happy_dollar_dollar _ -> cont 25;
	NumericalOperator happy_dollar_dollar _ -> cont 26;
	Identifier happy_dollar_dollar _ -> cont 27;
	ReferenceSubj happy_dollar_dollar _ -> cont 28;
	ReferenceObj happy_dollar_dollar _ -> cont 29;
	ReferencePred happy_dollar_dollar _ -> cont 30;
	Assignment _ -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
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


data Statement = Out String
               | VarAssign String Value [Modifier]
               deriving Show 

data Query = SelectIF [String] String 
           | SelectIFP [String] String Predicate
           | SelectIFPI [String] String Predicate [String]
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
