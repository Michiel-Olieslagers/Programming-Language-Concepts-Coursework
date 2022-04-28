{-# OPTIONS_GHC -w #-}
module StqlPar where
import StqlLex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,194) ([0,2,33792,0,16,8192,4,128,0,33,0,0,8,0,0,1024,0,224,0,0,0,0,0,64,32768,16,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,1248,64,2,0,0,0,0,0,0,0,0,1022,0,0,0,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,32768,0,0,0,512,0,14,0,0,4,0,0,0,2044,0,0,0,0,1248,64,2,9984,512,16,14336,4097,128,49152,32777,1024,0,78,8196,0,624,32,1,4992,256,8,39936,2048,64,57344,16388,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,112,64608,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,4096,0,0,32768,0,0,0,4,0,0,32,0,0,256,0,0,0,4,0,0,448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,15,0,0,0,0,0,14,0,0,112,0,0,896,0,0,28,32792,3,224,192,28,1792,1536,224,14336,12288,1792,49152,32769,14337,0,14,49164,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Statement","Condition","Query","Item","Items","Predicate","Value","Modifier","ModifierList","Reference","int","trueBool","falseBool","out","file","select","from","where","subjItem","objItem","PredItem","equal","notEqual","greaterThan","lessThan","greaterThanEqual","lessThanEqual","string","tag","andBoolOp","orBoolOp","notBoolOp","plusNumOp","minusNumOp","timesNumOp","modNumOp","divNumOp","powerNumOp","identifier","referenceSubj","referenceObj","referencePred","'='","set","in","to","%eof"]
        bit_start = st Prelude.* 51
        bit_end = (st Prelude.+ 1) Prelude.* 51
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..50]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (18) = happyShift action_3
action_0 (43) = happyShift action_4
action_0 (48) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (18) = happyShift action_3
action_1 (43) = happyShift action_4
action_1 (48) = happyShift action_5
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (18) = happyShift action_3
action_2 (43) = happyShift action_4
action_2 (48) = happyShift action_5
action_2 (4) = happyGoto action_8
action_2 (5) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (43) = happyShift action_14
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (47) = happyShift action_13
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (23) = happyShift action_10
action_5 (24) = happyShift action_11
action_5 (25) = happyShift action_12
action_5 (8) = happyGoto action_9
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (51) = happyAccept
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (18) = happyShift action_3
action_7 (43) = happyShift action_4
action_7 (48) = happyShift action_5
action_7 (4) = happyGoto action_8
action_7 (5) = happyGoto action_7
action_7 _ = happyReduce_2

action_8 _ = happyReduce_1

action_9 (49) = happyShift action_23
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_20

action_11 _ = happyReduce_21

action_12 _ = happyReduce_22

action_13 (15) = happyShift action_17
action_13 (16) = happyShift action_18
action_13 (17) = happyShift action_19
action_13 (20) = happyShift action_20
action_13 (32) = happyShift action_21
action_13 (43) = happyShift action_22
action_13 (7) = happyGoto action_15
action_13 (11) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_3

action_15 _ = happyReduce_64

action_16 (34) = happyShift action_29
action_16 (35) = happyShift action_30
action_16 (36) = happyShift action_31
action_16 (37) = happyShift action_32
action_16 (38) = happyShift action_33
action_16 (39) = happyShift action_34
action_16 (40) = happyShift action_35
action_16 (41) = happyShift action_36
action_16 (42) = happyShift action_37
action_16 (12) = happyGoto action_27
action_16 (13) = happyGoto action_28
action_16 _ = happyReduce_5

action_17 _ = happyReduce_66

action_18 _ = happyReduce_67

action_19 _ = happyReduce_68

action_20 (23) = happyShift action_10
action_20 (24) = happyShift action_11
action_20 (25) = happyShift action_12
action_20 (8) = happyGoto action_25
action_20 (9) = happyGoto action_26
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_65

action_22 _ = happyReduce_69

action_23 (43) = happyShift action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (50) = happyShift action_50
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (23) = happyShift action_10
action_25 (24) = happyShift action_11
action_25 (25) = happyShift action_12
action_25 (8) = happyGoto action_25
action_25 (9) = happyGoto action_49
action_25 _ = happyReduce_24

action_26 (21) = happyShift action_48
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (34) = happyShift action_29
action_27 (35) = happyShift action_30
action_27 (36) = happyShift action_31
action_27 (37) = happyShift action_32
action_27 (38) = happyShift action_33
action_27 (39) = happyShift action_34
action_27 (40) = happyShift action_35
action_27 (41) = happyShift action_36
action_27 (42) = happyShift action_37
action_27 (12) = happyGoto action_27
action_27 (13) = happyGoto action_47
action_27 _ = happyReduce_80

action_28 _ = happyReduce_6

action_29 (15) = happyShift action_17
action_29 (16) = happyShift action_18
action_29 (17) = happyShift action_19
action_29 (20) = happyShift action_20
action_29 (32) = happyShift action_21
action_29 (43) = happyShift action_22
action_29 (7) = happyGoto action_15
action_29 (11) = happyGoto action_46
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (15) = happyShift action_17
action_30 (16) = happyShift action_18
action_30 (17) = happyShift action_19
action_30 (20) = happyShift action_20
action_30 (32) = happyShift action_21
action_30 (43) = happyShift action_22
action_30 (7) = happyGoto action_15
action_30 (11) = happyGoto action_45
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (15) = happyShift action_17
action_31 (16) = happyShift action_18
action_31 (17) = happyShift action_19
action_31 (20) = happyShift action_20
action_31 (32) = happyShift action_21
action_31 (43) = happyShift action_22
action_31 (7) = happyGoto action_15
action_31 (11) = happyGoto action_44
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (15) = happyShift action_17
action_32 (16) = happyShift action_18
action_32 (17) = happyShift action_19
action_32 (20) = happyShift action_20
action_32 (32) = happyShift action_21
action_32 (43) = happyShift action_22
action_32 (7) = happyGoto action_15
action_32 (11) = happyGoto action_43
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_17
action_33 (16) = happyShift action_18
action_33 (17) = happyShift action_19
action_33 (20) = happyShift action_20
action_33 (32) = happyShift action_21
action_33 (43) = happyShift action_22
action_33 (7) = happyGoto action_15
action_33 (11) = happyGoto action_42
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_17
action_34 (16) = happyShift action_18
action_34 (17) = happyShift action_19
action_34 (20) = happyShift action_20
action_34 (32) = happyShift action_21
action_34 (43) = happyShift action_22
action_34 (7) = happyGoto action_15
action_34 (11) = happyGoto action_41
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_17
action_35 (16) = happyShift action_18
action_35 (17) = happyShift action_19
action_35 (20) = happyShift action_20
action_35 (32) = happyShift action_21
action_35 (43) = happyShift action_22
action_35 (7) = happyGoto action_15
action_35 (11) = happyGoto action_40
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (15) = happyShift action_17
action_36 (16) = happyShift action_18
action_36 (17) = happyShift action_19
action_36 (20) = happyShift action_20
action_36 (32) = happyShift action_21
action_36 (43) = happyShift action_22
action_36 (7) = happyGoto action_15
action_36 (11) = happyGoto action_39
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (15) = happyShift action_17
action_37 (16) = happyShift action_18
action_37 (17) = happyShift action_19
action_37 (20) = happyShift action_20
action_37 (32) = happyShift action_21
action_37 (43) = happyShift action_22
action_37 (7) = happyGoto action_15
action_37 (11) = happyGoto action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_78

action_39 _ = happyReduce_77

action_40 _ = happyReduce_76

action_41 _ = happyReduce_75

action_42 _ = happyReduce_74

action_43 _ = happyReduce_73

action_44 _ = happyReduce_72

action_45 _ = happyReduce_71

action_46 _ = happyReduce_70

action_47 _ = happyReduce_79

action_48 (19) = happyShift action_63
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_23

action_50 (15) = happyShift action_52
action_50 (16) = happyShift action_53
action_50 (17) = happyShift action_54
action_50 (32) = happyShift action_55
action_50 (33) = happyShift action_56
action_50 (37) = happyShift action_57
action_50 (38) = happyShift action_58
action_50 (39) = happyShift action_59
action_50 (40) = happyShift action_60
action_50 (41) = happyShift action_61
action_50 (42) = happyShift action_62
action_50 (6) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_4

action_52 _ = happyReduce_17

action_53 _ = happyReduce_15

action_54 _ = happyReduce_16

action_55 _ = happyReduce_8

action_56 _ = happyReduce_7

action_57 (15) = happyShift action_70
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (15) = happyShift action_69
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (15) = happyShift action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (15) = happyShift action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (22) = happyShift action_64
action_63 _ = happyReduce_18

action_64 (23) = happyShift action_10
action_64 (24) = happyShift action_11
action_64 (25) = happyShift action_12
action_64 (8) = happyGoto action_71
action_64 (10) = happyGoto action_72
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_14

action_66 _ = happyReduce_13

action_67 _ = happyReduce_11

action_68 _ = happyReduce_12

action_69 _ = happyReduce_10

action_70 _ = happyReduce_9

action_71 (26) = happyShift action_76
action_71 (27) = happyShift action_77
action_71 (28) = happyShift action_78
action_71 (29) = happyShift action_79
action_71 (30) = happyShift action_80
action_71 (31) = happyShift action_81
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (34) = happyShift action_73
action_72 (35) = happyShift action_74
action_72 (36) = happyShift action_75
action_72 _ = happyReduce_19

action_73 (23) = happyShift action_10
action_73 (24) = happyShift action_11
action_73 (25) = happyShift action_12
action_73 (8) = happyGoto action_71
action_73 (10) = happyGoto action_123
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (23) = happyShift action_10
action_74 (24) = happyShift action_11
action_74 (25) = happyShift action_12
action_74 (8) = happyGoto action_71
action_74 (10) = happyGoto action_122
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (23) = happyShift action_10
action_75 (24) = happyShift action_11
action_75 (25) = happyShift action_12
action_75 (8) = happyGoto action_71
action_75 (10) = happyGoto action_121
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (15) = happyShift action_116
action_76 (16) = happyShift action_117
action_76 (17) = happyShift action_118
action_76 (32) = happyShift action_119
action_76 (33) = happyShift action_120
action_76 (44) = happyShift action_88
action_76 (45) = happyShift action_89
action_76 (46) = happyShift action_90
action_76 (14) = happyGoto action_115
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (15) = happyShift action_110
action_77 (16) = happyShift action_111
action_77 (17) = happyShift action_112
action_77 (32) = happyShift action_113
action_77 (33) = happyShift action_114
action_77 (44) = happyShift action_88
action_77 (45) = happyShift action_89
action_77 (46) = happyShift action_90
action_77 (14) = happyGoto action_109
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (15) = happyShift action_104
action_78 (16) = happyShift action_105
action_78 (17) = happyShift action_106
action_78 (32) = happyShift action_107
action_78 (33) = happyShift action_108
action_78 (44) = happyShift action_88
action_78 (45) = happyShift action_89
action_78 (46) = happyShift action_90
action_78 (14) = happyGoto action_103
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (15) = happyShift action_98
action_79 (16) = happyShift action_99
action_79 (17) = happyShift action_100
action_79 (32) = happyShift action_101
action_79 (33) = happyShift action_102
action_79 (44) = happyShift action_88
action_79 (45) = happyShift action_89
action_79 (46) = happyShift action_90
action_79 (14) = happyGoto action_97
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (15) = happyShift action_92
action_80 (16) = happyShift action_93
action_80 (17) = happyShift action_94
action_80 (32) = happyShift action_95
action_80 (33) = happyShift action_96
action_80 (44) = happyShift action_88
action_80 (45) = happyShift action_89
action_80 (46) = happyShift action_90
action_80 (14) = happyGoto action_91
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (15) = happyShift action_83
action_81 (16) = happyShift action_84
action_81 (17) = happyShift action_85
action_81 (32) = happyShift action_86
action_81 (33) = happyShift action_87
action_81 (44) = happyShift action_88
action_81 (45) = happyShift action_89
action_81 (46) = happyShift action_90
action_81 (14) = happyGoto action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_60

action_83 _ = happyReduce_42

action_84 _ = happyReduce_48

action_85 _ = happyReduce_54

action_86 _ = happyReduce_30

action_87 _ = happyReduce_36

action_88 _ = happyReduce_81

action_89 _ = happyReduce_82

action_90 _ = happyReduce_83

action_91 _ = happyReduce_59

action_92 _ = happyReduce_41

action_93 _ = happyReduce_47

action_94 _ = happyReduce_53

action_95 _ = happyReduce_29

action_96 _ = happyReduce_35

action_97 _ = happyReduce_58

action_98 _ = happyReduce_40

action_99 _ = happyReduce_46

action_100 _ = happyReduce_52

action_101 _ = happyReduce_28

action_102 _ = happyReduce_34

action_103 _ = happyReduce_57

action_104 _ = happyReduce_39

action_105 _ = happyReduce_45

action_106 _ = happyReduce_51

action_107 _ = happyReduce_27

action_108 _ = happyReduce_33

action_109 _ = happyReduce_56

action_110 _ = happyReduce_38

action_111 _ = happyReduce_44

action_112 _ = happyReduce_50

action_113 _ = happyReduce_26

action_114 _ = happyReduce_32

action_115 _ = happyReduce_55

action_116 _ = happyReduce_37

action_117 _ = happyReduce_43

action_118 _ = happyReduce_49

action_119 _ = happyReduce_25

action_120 _ = happyReduce_31

action_121 (34) = happyShift action_73
action_121 (35) = happyShift action_74
action_121 (36) = happyShift action_75
action_121 _ = happyReduce_63

action_122 (34) = happyShift action_73
action_122 (35) = happyShift action_74
action_122 (36) = happyShift action_75
action_122 _ = happyReduce_62

action_123 (34) = happyShift action_73
action_123 (35) = happyShift action_74
action_123 (36) = happyShift action_75
action_123 _ = happyReduce_61

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

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (Identifier happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Cond happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 []
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 5 happyReduction_6
happyReduction_6 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (Identifier happy_var_1 _)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (VarAssign happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyTerminal (Tag happy_var_1 _))
	 =  HappyAbsSyn6
		 (TagCond happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (String happy_var_1 _))
	 =  HappyAbsSyn6
		 (StrCond happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyTerminal (Integer happy_var_2 _))
	_
	 =  HappyAbsSyn6
		 (AddCond happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyTerminal (Integer happy_var_2 _))
	_
	 =  HappyAbsSyn6
		 (MinusCond happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyTerminal (Integer happy_var_2 _))
	_
	 =  HappyAbsSyn6
		 (ModCond happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 (HappyTerminal (Integer happy_var_2 _))
	_
	 =  HappyAbsSyn6
		 (MultCond happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  6 happyReduction_13
happyReduction_13 (HappyTerminal (Integer happy_var_2 _))
	_
	 =  HappyAbsSyn6
		 (DivCond happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  6 happyReduction_14
happyReduction_14 (HappyTerminal (Integer happy_var_2 _))
	_
	 =  HappyAbsSyn6
		 (PowCond happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn6
		 (BoolCond True
	)

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn6
		 (BoolCond False
	)

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyTerminal (Integer happy_var_1 _))
	 =  HappyAbsSyn6
		 (IntCond happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 7 happyReduction_18
happyReduction_18 ((HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectIF happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 6 7 happyReduction_19
happyReduction_19 ((HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (File happy_var_4 _)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SelectIFP happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyTerminal (SubjItem happy_var_1 _))
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyTerminal (ObjItem happy_var_1 _))
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyTerminal (PredItem happy_var_1 _))
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  9 happyReduction_23
happyReduction_23 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 ((happy_var_1:happy_var_2)
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyTerminal (String happy_var_3 _))
	(HappyTerminal (Equal happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 (HappyTerminal (String happy_var_3 _))
	(HappyTerminal (NotEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 (HappyTerminal (String happy_var_3 _))
	(HappyTerminal (GreaterThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyTerminal (String happy_var_3 _))
	(HappyTerminal (LessThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 (HappyTerminal (String happy_var_3 _))
	(HappyTerminal (GreaterThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 (HappyTerminal (String happy_var_3 _))
	(HappyTerminal (LessThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  10 happyReduction_31
happyReduction_31 (HappyTerminal (Tag happy_var_3 _))
	(HappyTerminal (Equal happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  10 happyReduction_32
happyReduction_32 (HappyTerminal (Tag happy_var_3 _))
	(HappyTerminal (NotEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  10 happyReduction_33
happyReduction_33 (HappyTerminal (Tag happy_var_3 _))
	(HappyTerminal (GreaterThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  10 happyReduction_34
happyReduction_34 (HappyTerminal (Tag happy_var_3 _))
	(HappyTerminal (LessThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  10 happyReduction_35
happyReduction_35 (HappyTerminal (Tag happy_var_3 _))
	(HappyTerminal (GreaterThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  10 happyReduction_36
happyReduction_36 (HappyTerminal (Tag happy_var_3 _))
	(HappyTerminal (LessThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  10 happyReduction_37
happyReduction_37 (HappyTerminal (Integer happy_var_3 _))
	(HappyTerminal (Equal happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  10 happyReduction_38
happyReduction_38 (HappyTerminal (Integer happy_var_3 _))
	(HappyTerminal (NotEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  10 happyReduction_39
happyReduction_39 (HappyTerminal (Integer happy_var_3 _))
	(HappyTerminal (GreaterThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  10 happyReduction_40
happyReduction_40 (HappyTerminal (Integer happy_var_3 _))
	(HappyTerminal (LessThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  10 happyReduction_41
happyReduction_41 (HappyTerminal (Integer happy_var_3 _))
	(HappyTerminal (GreaterThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  10 happyReduction_42
happyReduction_42 (HappyTerminal (Integer happy_var_3 _))
	(HappyTerminal (LessThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  10 happyReduction_43
happyReduction_43 (HappyTerminal (TrueBool happy_var_3 _))
	(HappyTerminal (Equal happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  10 happyReduction_44
happyReduction_44 (HappyTerminal (TrueBool happy_var_3 _))
	(HappyTerminal (NotEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  10 happyReduction_45
happyReduction_45 (HappyTerminal (TrueBool happy_var_3 _))
	(HappyTerminal (GreaterThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  10 happyReduction_46
happyReduction_46 (HappyTerminal (TrueBool happy_var_3 _))
	(HappyTerminal (LessThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  10 happyReduction_47
happyReduction_47 (HappyTerminal (TrueBool happy_var_3 _))
	(HappyTerminal (GreaterThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  10 happyReduction_48
happyReduction_48 (HappyTerminal (TrueBool happy_var_3 _))
	(HappyTerminal (LessThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  10 happyReduction_49
happyReduction_49 (HappyTerminal (FalseBool happy_var_3 _))
	(HappyTerminal (Equal happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  10 happyReduction_50
happyReduction_50 (HappyTerminal (FalseBool happy_var_3 _))
	(HappyTerminal (NotEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  10 happyReduction_51
happyReduction_51 (HappyTerminal (FalseBool happy_var_3 _))
	(HappyTerminal (GreaterThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  10 happyReduction_52
happyReduction_52 (HappyTerminal (FalseBool happy_var_3 _))
	(HappyTerminal (LessThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  10 happyReduction_53
happyReduction_53 (HappyTerminal (FalseBool happy_var_3 _))
	(HappyTerminal (GreaterThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  10 happyReduction_54
happyReduction_54 (HappyTerminal (FalseBool happy_var_3 _))
	(HappyTerminal (LessThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICS happy_var_1 happy_var_2 (show happy_var_3)
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  10 happyReduction_55
happyReduction_55 (HappyAbsSyn14  happy_var_3)
	(HappyTerminal (Equal happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICR happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  10 happyReduction_56
happyReduction_56 (HappyAbsSyn14  happy_var_3)
	(HappyTerminal (NotEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICR happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  10 happyReduction_57
happyReduction_57 (HappyAbsSyn14  happy_var_3)
	(HappyTerminal (GreaterThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICR happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  10 happyReduction_58
happyReduction_58 (HappyAbsSyn14  happy_var_3)
	(HappyTerminal (LessThan happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICR happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  10 happyReduction_59
happyReduction_59 (HappyAbsSyn14  happy_var_3)
	(HappyTerminal (GreaterThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICR happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  10 happyReduction_60
happyReduction_60 (HappyAbsSyn14  happy_var_3)
	(HappyTerminal (LessThanEqual happy_var_2 _))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (PredICR happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  10 happyReduction_61
happyReduction_61 (HappyAbsSyn10  happy_var_3)
	(HappyTerminal (AndBooleanOperator happy_var_2 _))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (PredPBP happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  10 happyReduction_62
happyReduction_62 (HappyAbsSyn10  happy_var_3)
	(HappyTerminal (OrBooleanOperator happy_var_2 _))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (PredPBP happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  10 happyReduction_63
happyReduction_63 (HappyAbsSyn10  happy_var_3)
	(HappyTerminal (NotBooleanOperator happy_var_2 _))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (PredPBP happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  11 happyReduction_64
happyReduction_64 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (QueryVal happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  11 happyReduction_65
happyReduction_65 (HappyTerminal (String happy_var_1 _))
	 =  HappyAbsSyn11
		 (StringVal happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  11 happyReduction_66
happyReduction_66 (HappyTerminal (Integer happy_var_1 _))
	 =  HappyAbsSyn11
		 (IntVal happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  11 happyReduction_67
happyReduction_67 (HappyTerminal (TrueBool happy_var_1 _))
	 =  HappyAbsSyn11
		 (BoolVal happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  11 happyReduction_68
happyReduction_68 (HappyTerminal (FalseBool happy_var_1 _))
	 =  HappyAbsSyn11
		 (BoolVal happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  11 happyReduction_69
happyReduction_69 (HappyTerminal (Identifier happy_var_1 _))
	 =  HappyAbsSyn11
		 (VarVal happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_2  12 happyReduction_70
happyReduction_70 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (AndBooleanOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_70 _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_2  12 happyReduction_71
happyReduction_71 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (OrBooleanOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_71 _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_2  12 happyReduction_72
happyReduction_72 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (NotBooleanOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (BoolOpModifier happy_var_1 happy_var_2
	)
happyReduction_72 _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_2  12 happyReduction_73
happyReduction_73 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (PlusNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_73 _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_2  12 happyReduction_74
happyReduction_74 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (MinusNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_74 _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  12 happyReduction_75
happyReduction_75 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (MultiplyNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  12 happyReduction_76
happyReduction_76 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (ModNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_2  12 happyReduction_77
happyReduction_77 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (DivNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_77 _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_2  12 happyReduction_78
happyReduction_78 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (PowerNumericalOperator happy_var_1 _))
	 =  HappyAbsSyn12
		 (NumOpModifier happy_var_1 happy_var_2
	)
happyReduction_78 _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_2  13 happyReduction_79
happyReduction_79 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1] ++ happy_var_2
	)
happyReduction_79 _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  13 happyReduction_80
happyReduction_80 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  14 happyReduction_81
happyReduction_81 (HappyTerminal (ReferenceSubj happy_var_1 _))
	 =  HappyAbsSyn14
		 (SubjReference happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  14 happyReduction_82
happyReduction_82 (HappyTerminal (ReferenceObj happy_var_1 _))
	 =  HappyAbsSyn14
		 (ObjReference happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  14 happyReduction_83
happyReduction_83 (HappyTerminal (ReferencePred happy_var_1 _))
	 =  HappyAbsSyn14
		 (PredReference happy_var_1
	)
happyReduction_83 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Integer happy_dollar_dollar _ -> cont 15;
	TrueBool happy_dollar_dollar _ -> cont 16;
	FalseBool happy_dollar_dollar _ -> cont 17;
	Output _ -> cont 18;
	File happy_dollar_dollar _ -> cont 19;
	Select _ -> cont 20;
	From _ -> cont 21;
	Where _ -> cont 22;
	SubjItem happy_dollar_dollar _ -> cont 23;
	ObjItem happy_dollar_dollar _ -> cont 24;
	PredItem happy_dollar_dollar _ -> cont 25;
	Equal happy_dollar_dollar _ -> cont 26;
	NotEqual happy_dollar_dollar _ -> cont 27;
	GreaterThan happy_dollar_dollar _ -> cont 28;
	LessThan happy_dollar_dollar _ -> cont 29;
	GreaterThanEqual happy_dollar_dollar _ -> cont 30;
	LessThanEqual happy_dollar_dollar _ -> cont 31;
	String happy_dollar_dollar _ -> cont 32;
	Tag happy_dollar_dollar _ -> cont 33;
	AndBooleanOperator happy_dollar_dollar _ -> cont 34;
	OrBooleanOperator happy_dollar_dollar _ -> cont 35;
	NotBooleanOperator happy_dollar_dollar _ -> cont 36;
	PlusNumericalOperator happy_dollar_dollar _ -> cont 37;
	MinusNumericalOperator happy_dollar_dollar _ -> cont 38;
	MultiplyNumericalOperator happy_dollar_dollar _ -> cont 39;
	ModNumericalOperator happy_dollar_dollar _ -> cont 40;
	DivNumericalOperator happy_dollar_dollar _ -> cont 41;
	PowerNumericalOperator happy_dollar_dollar _ -> cont 42;
	Identifier happy_dollar_dollar _ -> cont 43;
	ReferenceSubj happy_dollar_dollar _ -> cont 44;
	ReferenceObj happy_dollar_dollar _ -> cont 45;
	ReferencePred happy_dollar_dollar _ -> cont 46;
	Assignment _ -> cont 47;
	Set _ -> cont 48;
	In _ -> cont 49;
	To _ -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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
