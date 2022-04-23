{-# OPTIONS_GHC -w #-}
module StqlPar where
import StqlLex
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
happyExpList = Happy_Data_Array.listArray (0,163) ([0,1,512,32768,0,256,16384,0,128,0,0,64,0,0,512,0,0,0,1024,0,8,0,0,0,1248,64,0,0,0,0,0,0,0,0,16352,0,0,0,0,0,0,0,0,0,0,448,0,0,0,0,0,112,0,0,2,0,0,0,0,0,0,0,0,0,0,0,64512,7,0,0,0,1248,64,0,624,32,0,312,16,0,156,8,0,78,4,0,39,2,32768,19,1,49152,32777,0,57344,16388,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,128,0,0,896,0,0,32256,0,0,0,0,0,112,0,0,56,0,0,28,0,3584,3072,448,1792,1536,224,896,768,112,448,384,56,224,192,28,112,96,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Statement","Query","Item","Items","Predicate","Value","Modifier","ModifierList","Reference","int","trueBool","falseBool","out","file","select","from","where","subjItem","objItem","PredItem","equal","notEqual","greaterThan","lessThan","greaterThanEqual","lessThanEqual","string","tag","andBoolOp","orBoolOp","notBoolOp","plusNumOp","minusNumOp","timesNumOp","modNumOp","divNumOp","powerNumOp","identifier","referenceSubj","referenceObj","referencePred","'='","%eof"]
        bit_start = st Prelude.* 47
        bit_end = (st Prelude.+ 1) Prelude.* 47
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..46]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (17) = happyShift action_3
action_0 (42) = happyShift action_4
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_3
action_1 (42) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (17) = happyShift action_3
action_2 (42) = happyShift action_4
action_2 (4) = happyGoto action_7
action_2 (5) = happyGoto action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyShift action_9
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (46) = happyShift action_8
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (47) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (17) = happyShift action_3
action_6 (42) = happyShift action_4
action_6 (4) = happyGoto action_7
action_6 (5) = happyGoto action_6
action_6 _ = happyReduce_2

action_7 _ = happyReduce_1

action_8 (14) = happyShift action_12
action_8 (15) = happyShift action_13
action_8 (16) = happyShift action_14
action_8 (19) = happyShift action_15
action_8 (31) = happyShift action_16
action_8 (6) = happyGoto action_10
action_8 (10) = happyGoto action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_3

action_10 _ = happyReduce_52

action_11 (33) = happyShift action_24
action_11 (34) = happyShift action_25
action_11 (35) = happyShift action_26
action_11 (36) = happyShift action_27
action_11 (37) = happyShift action_28
action_11 (38) = happyShift action_29
action_11 (39) = happyShift action_30
action_11 (40) = happyShift action_31
action_11 (41) = happyShift action_32
action_11 (11) = happyGoto action_22
action_11 (12) = happyGoto action_23
action_11 _ = happyReduce_4

action_12 _ = happyReduce_54

action_13 _ = happyReduce_55

action_14 _ = happyReduce_56

action_15 (22) = happyShift action_19
action_15 (23) = happyShift action_20
action_15 (24) = happyShift action_21
action_15 (7) = happyGoto action_17
action_15 (8) = happyGoto action_18
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_53

action_17 (22) = happyShift action_19
action_17 (23) = happyShift action_20
action_17 (24) = happyShift action_21
action_17 (7) = happyGoto action_17
action_17 (8) = happyGoto action_44
action_17 _ = happyReduce_12

action_18 (20) = happyShift action_43
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_8

action_20 _ = happyReduce_9

action_21 _ = happyReduce_10

action_22 (33) = happyShift action_24
action_22 (34) = happyShift action_25
action_22 (35) = happyShift action_26
action_22 (36) = happyShift action_27
action_22 (37) = happyShift action_28
action_22 (38) = happyShift action_29
action_22 (39) = happyShift action_30
action_22 (40) = happyShift action_31
action_22 (41) = happyShift action_32
action_22 (11) = happyGoto action_22
action_22 (12) = happyGoto action_42
action_22 _ = happyReduce_67

action_23 _ = happyReduce_5

action_24 (14) = happyShift action_12
action_24 (15) = happyShift action_13
action_24 (16) = happyShift action_14
action_24 (19) = happyShift action_15
action_24 (31) = happyShift action_16
action_24 (6) = happyGoto action_10
action_24 (10) = happyGoto action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (14) = happyShift action_12
action_25 (15) = happyShift action_13
action_25 (16) = happyShift action_14
action_25 (19) = happyShift action_15
action_25 (31) = happyShift action_16
action_25 (6) = happyGoto action_10
action_25 (10) = happyGoto action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (14) = happyShift action_12
action_26 (15) = happyShift action_13
action_26 (16) = happyShift action_14
action_26 (19) = happyShift action_15
action_26 (31) = happyShift action_16
action_26 (6) = happyGoto action_10
action_26 (10) = happyGoto action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_12
action_27 (15) = happyShift action_13
action_27 (16) = happyShift action_14
action_27 (19) = happyShift action_15
action_27 (31) = happyShift action_16
action_27 (6) = happyGoto action_10
action_27 (10) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (14) = happyShift action_12
action_28 (15) = happyShift action_13
action_28 (16) = happyShift action_14
action_28 (19) = happyShift action_15
action_28 (31) = happyShift action_16
action_28 (6) = happyGoto action_10
action_28 (10) = happyGoto action_37
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (14) = happyShift action_12
action_29 (15) = happyShift action_13
action_29 (16) = happyShift action_14
action_29 (19) = happyShift action_15
action_29 (31) = happyShift action_16
action_29 (6) = happyGoto action_10
action_29 (10) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_12
action_30 (15) = happyShift action_13
action_30 (16) = happyShift action_14
action_30 (19) = happyShift action_15
action_30 (31) = happyShift action_16
action_30 (6) = happyGoto action_10
action_30 (10) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_12
action_31 (15) = happyShift action_13
action_31 (16) = happyShift action_14
action_31 (19) = happyShift action_15
action_31 (31) = happyShift action_16
action_31 (6) = happyGoto action_10
action_31 (10) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_12
action_32 (15) = happyShift action_13
action_32 (16) = happyShift action_14
action_32 (19) = happyShift action_15
action_32 (31) = happyShift action_16
action_32 (6) = happyGoto action_10
action_32 (10) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_65

action_34 _ = happyReduce_64

action_35 _ = happyReduce_63

action_36 _ = happyReduce_62

action_37 _ = happyReduce_61

action_38 _ = happyReduce_60

action_39 _ = happyReduce_59

action_40 _ = happyReduce_58

action_41 _ = happyReduce_57

action_42 _ = happyReduce_66

action_43 (18) = happyShift action_45
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_11

action_45 (21) = happyShift action_46
action_45 _ = happyReduce_6

action_46 (22) = happyShift action_19
action_46 (23) = happyShift action_20
action_46 (24) = happyShift action_21
action_46 (7) = happyGoto action_47
action_46 (9) = happyGoto action_48
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (25) = happyShift action_52
action_47 (26) = happyShift action_53
action_47 (27) = happyShift action_54
action_47 (28) = happyShift action_55
action_47 (29) = happyShift action_56
action_47 (30) = happyShift action_57
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (33) = happyShift action_49
action_48 (34) = happyShift action_50
action_48 (35) = happyShift action_51
action_48 _ = happyReduce_7

action_49 (22) = happyShift action_19
action_49 (23) = happyShift action_20
action_49 (24) = happyShift action_21
action_49 (7) = happyGoto action_47
action_49 (9) = happyGoto action_99
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (22) = happyShift action_19
action_50 (23) = happyShift action_20
action_50 (24) = happyShift action_21
action_50 (7) = happyGoto action_47
action_50 (9) = happyGoto action_98
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_19
action_51 (23) = happyShift action_20
action_51 (24) = happyShift action_21
action_51 (7) = happyGoto action_47
action_51 (9) = happyGoto action_97
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_92
action_52 (15) = happyShift action_93
action_52 (16) = happyShift action_94
action_52 (31) = happyShift action_95
action_52 (32) = happyShift action_96
action_52 (43) = happyShift action_64
action_52 (44) = happyShift action_65
action_52 (45) = happyShift action_66
action_52 (13) = happyGoto action_91
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_86
action_53 (15) = happyShift action_87
action_53 (16) = happyShift action_88
action_53 (31) = happyShift action_89
action_53 (32) = happyShift action_90
action_53 (43) = happyShift action_64
action_53 (44) = happyShift action_65
action_53 (45) = happyShift action_66
action_53 (13) = happyGoto action_85
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_80
action_54 (15) = happyShift action_81
action_54 (16) = happyShift action_82
action_54 (31) = happyShift action_83
action_54 (32) = happyShift action_84
action_54 (43) = happyShift action_64
action_54 (44) = happyShift action_65
action_54 (45) = happyShift action_66
action_54 (13) = happyGoto action_79
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (14) = happyShift action_74
action_55 (15) = happyShift action_75
action_55 (16) = happyShift action_76
action_55 (31) = happyShift action_77
action_55 (32) = happyShift action_78
action_55 (43) = happyShift action_64
action_55 (44) = happyShift action_65
action_55 (45) = happyShift action_66
action_55 (13) = happyGoto action_73
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (14) = happyShift action_68
action_56 (15) = happyShift action_69
action_56 (16) = happyShift action_70
action_56 (31) = happyShift action_71
action_56 (32) = happyShift action_72
action_56 (43) = happyShift action_64
action_56 (44) = happyShift action_65
action_56 (45) = happyShift action_66
action_56 (13) = happyGoto action_67
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (14) = happyShift action_59
action_57 (15) = happyShift action_60
action_57 (16) = happyShift action_61
action_57 (31) = happyShift action_62
action_57 (32) = happyShift action_63
action_57 (43) = happyShift action_64
action_57 (44) = happyShift action_65
action_57 (45) = happyShift action_66
action_57 (13) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_48

action_59 _ = happyReduce_30

action_60 _ = happyReduce_36

action_61 _ = happyReduce_42

action_62 _ = happyReduce_18

action_63 _ = happyReduce_24

action_64 _ = happyReduce_68

action_65 _ = happyReduce_69

action_66 _ = happyReduce_70

action_67 _ = happyReduce_47

action_68 _ = happyReduce_29

action_69 _ = happyReduce_35

action_70 _ = happyReduce_41

action_71 _ = happyReduce_17

action_72 _ = happyReduce_23

action_73 _ = happyReduce_46

action_74 _ = happyReduce_28

action_75 _ = happyReduce_34

action_76 _ = happyReduce_40

action_77 _ = happyReduce_16

action_78 _ = happyReduce_22

action_79 _ = happyReduce_45

action_80 _ = happyReduce_27

action_81 _ = happyReduce_33

action_82 _ = happyReduce_39

action_83 _ = happyReduce_15

action_84 _ = happyReduce_21

action_85 _ = happyReduce_44

action_86 _ = happyReduce_26

action_87 _ = happyReduce_32

action_88 _ = happyReduce_38

action_89 _ = happyReduce_14

action_90 _ = happyReduce_20

action_91 _ = happyReduce_43

action_92 _ = happyReduce_25

action_93 _ = happyReduce_31

action_94 _ = happyReduce_37

action_95 _ = happyReduce_13

action_96 _ = happyReduce_19

action_97 (33) = happyShift action_49
action_97 (34) = happyShift action_50
action_97 (35) = happyShift action_51
action_97 _ = happyReduce_51

action_98 (33) = happyShift action_49
action_98 (34) = happyShift action_50
action_98 (35) = happyShift action_51
action_98 _ = happyReduce_50

action_99 (33) = happyShift action_49
action_99 (34) = happyShift action_50
action_99 (35) = happyShift action_51
action_99 _ = happyReduce_49

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
happyReduction_4 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 []
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 5 happyReduction_5
happyReduction_5 ((HappyAbsSyn12  happy_var_4) `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (Identifier happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 ((HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIF happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SelectIFP happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyTerminal (SubjItem happy_var_1 _))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyTerminal (ObjItem happy_var_1 _))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyTerminal (PredItem happy_var_1 _))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  8 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 ((happy_var_1:happy_var_2)
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  9 happyReduction_16
happyReduction_16 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyTerminal (String happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  9 happyReduction_19
happyReduction_19 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  9 happyReduction_23
happyReduction_23 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyTerminal (Tag happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  9 happyReduction_26
happyReduction_26 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  9 happyReduction_27
happyReduction_27 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  9 happyReduction_30
happyReduction_30 (HappyTerminal (Integer happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  9 happyReduction_31
happyReduction_31 (HappyTerminal (TrueBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  9 happyReduction_32
happyReduction_32 (HappyTerminal (TrueBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  9 happyReduction_33
happyReduction_33 (HappyTerminal (TrueBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  9 happyReduction_34
happyReduction_34 (HappyTerminal (TrueBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 (HappyTerminal (TrueBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 (HappyTerminal (TrueBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  9 happyReduction_37
happyReduction_37 (HappyTerminal (FalseBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  9 happyReduction_38
happyReduction_38 (HappyTerminal (FalseBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  9 happyReduction_39
happyReduction_39 (HappyTerminal (FalseBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  9 happyReduction_40
happyReduction_40 (HappyTerminal (FalseBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  9 happyReduction_41
happyReduction_41 (HappyTerminal (FalseBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  9 happyReduction_42
happyReduction_42 (HappyTerminal (FalseBool happy_var_3 _))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICS happy_var_1 (show happy_var_3)
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  9 happyReduction_43
happyReduction_43 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  9 happyReduction_44
happyReduction_44 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  9 happyReduction_45
happyReduction_45 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  9 happyReduction_46
happyReduction_46 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  9 happyReduction_47
happyReduction_47 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  9 happyReduction_48
happyReduction_48 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (PredICR happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  9 happyReduction_49
happyReduction_49 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (PredPBP happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  9 happyReduction_50
happyReduction_50 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (PredPBP happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  9 happyReduction_51
happyReduction_51 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (PredPBP happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  10 happyReduction_52
happyReduction_52 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (QueryVal happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  10 happyReduction_53
happyReduction_53 (HappyTerminal (String happy_var_1 _))
	 =  HappyAbsSyn10
		 (StringVal happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  10 happyReduction_54
happyReduction_54 (HappyTerminal (Integer happy_var_1 _))
	 =  HappyAbsSyn10
		 (IntVal happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  10 happyReduction_55
happyReduction_55 (HappyTerminal (TrueBool happy_var_1 _))
	 =  HappyAbsSyn10
		 (BoolVal happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  10 happyReduction_56
happyReduction_56 (HappyTerminal (FalseBool happy_var_1 _))
	 =  HappyAbsSyn10
		 (BoolVal happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_2  11 happyReduction_57
happyReduction_57 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (AndBooleanOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_57 _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_2  11 happyReduction_58
happyReduction_58 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (OrBooleanOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_58 _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_2  11 happyReduction_59
happyReduction_59 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (NotBooleanOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_59 _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_2  11 happyReduction_60
happyReduction_60 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (PlusNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_60 _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  11 happyReduction_61
happyReduction_61 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (MinusNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_2  11 happyReduction_62
happyReduction_62 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (MultiplyNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  11 happyReduction_63
happyReduction_63 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (ModNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_2  11 happyReduction_64
happyReduction_64 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (DivNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_64 _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_2  11 happyReduction_65
happyReduction_65 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (PowerNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn11
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_65 _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_2  12 happyReduction_66
happyReduction_66 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1] ++ happy_var_2
	)
happyReduction_66 _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  12 happyReduction_67
happyReduction_67 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  13 happyReduction_68
happyReduction_68 (HappyTerminal (ReferenceSubj happy_var_1 _))
	 =  HappyAbsSyn13
		 (SubjReference happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  13 happyReduction_69
happyReduction_69 (HappyTerminal (ReferenceObj happy_var_1 _))
	 =  HappyAbsSyn13
		 (ObjReference happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  13 happyReduction_70
happyReduction_70 (HappyTerminal (ReferencePred happy_var_1 _))
	 =  HappyAbsSyn13
		 (PredReference happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Integer happy_dollar_dollar _ -> cont 14;
	TrueBool happy_dollar_dollar _ -> cont 15;
	FalseBool happy_dollar_dollar _ -> cont 16;
	Output _ -> cont 17;
	File happy_dollar_dollar _ -> cont 18;
	Select _ -> cont 19;
	From _ -> cont 20;
	Where _ -> cont 21;
	SubjItem happy_dollar_dollar _ -> cont 22;
	ObjItem happy_dollar_dollar _ -> cont 23;
	PredItem happy_dollar_dollar _ -> cont 24;
	Equal happy_dollar_dollar _ -> cont 25;
	NotEqual happy_dollar_dollar _ -> cont 26;
	GreaterThan happy_dollar_dollar _ -> cont 27;
	LessThan happy_dollar_dollar _ -> cont 28;
	GreaterThanEqual happy_dollar_dollar _ -> cont 29;
	LessThanEqual happy_dollar_dollar _ -> cont 30;
	String happy_dollar_dollar _ -> cont 31;
	Tag happy_dollar_dollar _ -> cont 32;
	AndBooleanOperator happy_dollar_dollar _ -> cont 33;
	OrBooleanOperator happy_dollar_dollar _ -> cont 34;
	NotBooleanOperator happy_dollar_dollar _ -> cont 35;
	PlusNumericalOperator happy_dollar_dollar _ -> cont 36;
	MinusNumericalOperator happy_dollar_dollar _ -> cont 37;
	MultiplyNumericalOperator happy_dollar_dollar _ -> cont 38;
	ModNumericalOperator happy_dollar_dollar _ -> cont 39;
	DivNumericalOperator happy_dollar_dollar _ -> cont 40;
	PowerNumericalOperator happy_dollar_dollar _ -> cont 41;
	Identifier happy_dollar_dollar _ -> cont 42;
	ReferenceSubj happy_dollar_dollar _ -> cont 43;
	ReferenceObj happy_dollar_dollar _ -> cont 44;
	ReferencePred happy_dollar_dollar _ -> cont 45;
	Assignment _ -> cont 46;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 47 tk tks = happyError' (tks, explist)
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
