{-# OPTIONS_GHC -w #-}
module TurtlePar where 
import TurtleLex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,60) ([15360,57344,1,15,24,32,512,8192,0,0,60,0,256,0,49153,0,64,310,64,19840,0,8,128,1024,8192,256,0,8,0,128,0,8192,0,0,49152,38,2048,2480,19840,27648,2,3,512,192,0,0,0,0,0,620,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Line","Objs","List","int","bool","var","tag","pre","base","pref","lit","'.'","';'","','","%eof"]
        bit_start = st Prelude.* 19
        bit_end = (st Prelude.+ 1) Prelude.* 19
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..18]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_3
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_8
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_3
action_1 (12) = happyShift action_4
action_1 (13) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (11) = happyShift action_3
action_2 (12) = happyShift action_4
action_2 (13) = happyShift action_5
action_2 (14) = happyShift action_6
action_2 (4) = happyGoto action_9
action_2 (5) = happyGoto action_8
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_14
action_3 (12) = happyShift action_15
action_3 (7) = happyGoto action_13
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (10) = happyShift action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (11) = happyShift action_11
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (12) = happyShift action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (19) = happyAccept
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_3
action_8 (12) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (4) = happyGoto action_9
action_8 (5) = happyGoto action_8
action_8 _ = happyReduce_2

action_9 _ = happyReduce_1

action_10 (11) = happyShift action_26
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (16) = happyShift action_25
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_14
action_12 (12) = happyShift action_15
action_12 (7) = happyGoto action_24
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (16) = happyShift action_23
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_18
action_14 (9) = happyShift action_19
action_14 (11) = happyShift action_20
action_14 (12) = happyShift action_21
action_14 (15) = happyShift action_22
action_14 (6) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (10) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_18
action_16 (9) = happyShift action_19
action_16 (11) = happyShift action_20
action_16 (12) = happyShift action_21
action_16 (15) = happyShift action_22
action_16 (6) = happyGoto action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (17) = happyShift action_34
action_17 _ = happyReduce_20

action_18 (18) = happyShift action_33
action_18 _ = happyReduce_15

action_19 (18) = happyShift action_32
action_19 _ = happyReduce_13

action_20 (18) = happyShift action_31
action_20 _ = happyReduce_12

action_21 (10) = happyShift action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (18) = happyShift action_29
action_22 _ = happyReduce_14

action_23 _ = happyReduce_3

action_24 (16) = happyShift action_28
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_5

action_26 (16) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_6

action_28 _ = happyReduce_4

action_29 (8) = happyShift action_18
action_29 (9) = happyShift action_19
action_29 (11) = happyShift action_20
action_29 (12) = happyShift action_21
action_29 (15) = happyShift action_22
action_29 (6) = happyGoto action_42
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (18) = happyShift action_41
action_30 _ = happyReduce_16

action_31 (8) = happyShift action_18
action_31 (9) = happyShift action_19
action_31 (11) = happyShift action_20
action_31 (12) = happyShift action_21
action_31 (15) = happyShift action_22
action_31 (6) = happyGoto action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (8) = happyShift action_18
action_32 (9) = happyShift action_19
action_32 (11) = happyShift action_20
action_32 (12) = happyShift action_21
action_32 (15) = happyShift action_22
action_32 (6) = happyGoto action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (8) = happyShift action_18
action_33 (9) = happyShift action_19
action_33 (11) = happyShift action_20
action_33 (12) = happyShift action_21
action_33 (15) = happyShift action_22
action_33 (6) = happyGoto action_38
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (11) = happyShift action_14
action_34 (12) = happyShift action_15
action_34 (7) = happyGoto action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (17) = happyShift action_36
action_35 _ = happyReduce_19

action_36 (11) = happyShift action_14
action_36 (12) = happyShift action_15
action_36 (7) = happyGoto action_44
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_17

action_38 _ = happyReduce_10

action_39 _ = happyReduce_9

action_40 _ = happyReduce_7

action_41 (8) = happyShift action_18
action_41 (9) = happyShift action_19
action_41 (11) = happyShift action_20
action_41 (12) = happyShift action_21
action_41 (15) = happyShift action_22
action_41 (6) = happyGoto action_43
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_11

action_43 _ = happyReduce_8

action_44 _ = happyReduce_18

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

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn7  happy_var_2)
	(HappyTerminal (TokenTag happy_var_1 _))
	 =  HappyAbsSyn5
		 (Tag (URI happy_var_1) happy_var_2
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 4 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	(HappyTerminal (TokenName happy_var_2 _)) `HappyStk`
	(HappyTerminal (TokenPre happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Tag (Pre happy_var_1 happy_var_2) happy_var_3
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 _
	(HappyTerminal (TokenTag happy_var_2 _))
	_
	 =  HappyAbsSyn5
		 (BaseDef happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyTerminal (TokenTag happy_var_3 _)) `HappyStk`
	(HappyTerminal (TokenPre happy_var_2 _)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PreDef happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenTag happy_var_1 _))
	 =  HappyAbsSyn6
		 (((ObjURI happy_var_1):happy_var_3)
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName happy_var_2 _)) `HappyStk`
	(HappyTerminal (TokenPre happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (((ObjPre happy_var_1 happy_var_2):happy_var_4)
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenBool happy_var_1 _))
	 =  HappyAbsSyn6
		 (((Bl happy_var_1):happy_var_3)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenInt happy_var_1 _))
	 =  HappyAbsSyn6
		 (((Num happy_var_1):happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenLit happy_var_1 _))
	 =  HappyAbsSyn6
		 (((Lit happy_var_1):happy_var_3)
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyTerminal (TokenTag happy_var_1 _))
	 =  HappyAbsSyn6
		 ([ObjURI happy_var_1]
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyTerminal (TokenBool happy_var_1 _))
	 =  HappyAbsSyn6
		 ([Bl happy_var_1]
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 (HappyTerminal (TokenLit happy_var_1 _))
	 =  HappyAbsSyn6
		 ([Lit happy_var_1]
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 (HappyTerminal (TokenInt happy_var_1 _))
	 =  HappyAbsSyn6
		 ([Num happy_var_1]
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  6 happyReduction_16
happyReduction_16 (HappyTerminal (TokenName happy_var_2 _))
	(HappyTerminal (TokenPre happy_var_1 _))
	 =  HappyAbsSyn6
		 ([ObjPre happy_var_1 happy_var_2]
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 7 happyReduction_17
happyReduction_17 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	(HappyTerminal (TokenTag happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (((URI happy_var_1,happy_var_2):happy_var_4)
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 5 7 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyTerminal (TokenName happy_var_2 _)) `HappyStk`
	(HappyTerminal (TokenPre happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (((Pre happy_var_1 happy_var_2,happy_var_3):happy_var_5)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	(HappyTerminal (TokenName happy_var_2 _))
	(HappyTerminal (TokenPre happy_var_1 _))
	 =  HappyAbsSyn7
		 ([(Pre happy_var_1 happy_var_2,happy_var_3)]
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  7 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_2)
	(HappyTerminal (TokenTag happy_var_1 _))
	 =  HappyAbsSyn7
		 ([(URI happy_var_1,happy_var_2)]
	)
happyReduction_20 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 19 19 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt happy_dollar_dollar _ -> cont 8;
	TokenBool happy_dollar_dollar _ -> cont 9;
	TokenName happy_dollar_dollar _ -> cont 10;
	TokenTag happy_dollar_dollar _ -> cont 11;
	TokenPre happy_dollar_dollar _ -> cont 12;
	TokenBase _ -> cont 13;
	TokenPref _ -> cont 14;
	TokenLit happy_dollar_dollar _ -> cont 15;
	TokenEnd _ -> cont 16;
	TokenList _ -> cont 17;
	TokenCom _ -> cont 18;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 19 tk tks = happyError' (tks, explist)
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
data Item = URI String                                 
          | Pre String String
          deriving Show 
data Obj = ObjURI String                                  
         | Lit String                                  
         | Bl Bool                                   
         | Num Int                                   
         | ObjPre String String
         deriving Show 

type Exp = [Line]

data Line = Tag Item [(Item,[Obj])]                     
          | BaseDef String                              
          | PreDef String String
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
