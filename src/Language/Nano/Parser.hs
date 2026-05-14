{-# OPTIONS_GHC -w #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Language.Nano.Parser (
    parseExpr
  , parseTokens
  ) where

import Language.Nano.Lexer
import Language.Nano.Types hiding (Nano (..))
import Control.Monad.Except
import Control.Exception
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,277) ([11776,32775,2,64,0,16384,0,0,0,0,65024,7,1560,1280,0,0,0,16,0,0,0,0,0,47104,28,10,0,0,0,1,0,4,32768,459,160,14704,13312,0,32736,8,0,128,0,0,0,0,0,65024,23,4096,0,52096,40961,0,65282,3,4608,0,0,0,47104,28,10,919,320,29408,10240,23552,14,32773,459,160,14704,5120,11776,32775,49154,229,80,7352,2560,38656,16387,1,15872,4,49152,135,0,4344,0,7936,2,57344,67,0,28,0,896,0,0,0,0,8,0,256,0,1024,0,4096,0,11776,32775,49154,229,80,32768,511,38656,16387,1,0,0,0,0,52096,40961,0,0,0,57344,67,4096,4092,16384,65408,1,0,0,29408,10240,8192,65472,32768,459,160,14704,5120,0,17376,0,64512,15,7352,2560,0,16368,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_top","Top","Expr","Axpr","Bxpr","Exprs","Ids","let","true","false","in","if","then","else","TNUM","ID","'\\\\'","'->'","'='","'+'","'-'","'*'","'&&'","'||'","'=='","'/='","'<'","'<='","':'","'('","')'","'['","']'","','","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (14) = happyShift action_10
action_0 (17) = happyShift action_11
action_0 (18) = happyShift action_12
action_0 (19) = happyShift action_13
action_0 (32) = happyShift action_14
action_0 (34) = happyShift action_15
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (18) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (21) = happyShift action_22
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (37) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (22) = happyShift action_26
action_4 (23) = happyShift action_27
action_4 (24) = happyShift action_28
action_4 (25) = happyShift action_29
action_4 (26) = happyShift action_30
action_4 (27) = happyShift action_31
action_4 (28) = happyShift action_32
action_4 (29) = happyShift action_33
action_4 (30) = happyShift action_34
action_4 (31) = happyShift action_35
action_4 _ = happyReduce_2

action_5 (11) = happyShift action_8
action_5 (12) = happyShift action_9
action_5 (17) = happyShift action_11
action_5 (18) = happyShift action_18
action_5 (32) = happyShift action_14
action_5 (34) = happyShift action_15
action_5 (7) = happyGoto action_25
action_5 _ = happyReduce_17

action_6 _ = happyReduce_19

action_7 (18) = happyShift action_24
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_21

action_9 _ = happyReduce_22

action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (14) = happyShift action_10
action_10 (17) = happyShift action_11
action_10 (18) = happyShift action_18
action_10 (19) = happyShift action_13
action_10 (32) = happyShift action_14
action_10 (34) = happyShift action_15
action_10 (5) = happyGoto action_23
action_10 (6) = happyGoto action_5
action_10 (7) = happyGoto action_6
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_20

action_12 (21) = happyShift action_22
action_12 _ = happyReduce_24

action_13 (18) = happyShift action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (10) = happyShift action_7
action_14 (11) = happyShift action_8
action_14 (12) = happyShift action_9
action_14 (14) = happyShift action_10
action_14 (17) = happyShift action_11
action_14 (18) = happyShift action_18
action_14 (19) = happyShift action_13
action_14 (32) = happyShift action_14
action_14 (34) = happyShift action_15
action_14 (5) = happyGoto action_20
action_14 (6) = happyGoto action_5
action_14 (7) = happyGoto action_6
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (10) = happyShift action_7
action_15 (11) = happyShift action_8
action_15 (12) = happyShift action_9
action_15 (14) = happyShift action_10
action_15 (17) = happyShift action_11
action_15 (18) = happyShift action_18
action_15 (19) = happyShift action_13
action_15 (32) = happyShift action_14
action_15 (34) = happyShift action_15
action_15 (35) = happyShift action_19
action_15 (5) = happyGoto action_16
action_15 (6) = happyGoto action_5
action_15 (7) = happyGoto action_6
action_15 (8) = happyGoto action_17
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (22) = happyShift action_26
action_16 (23) = happyShift action_27
action_16 (24) = happyShift action_28
action_16 (25) = happyShift action_29
action_16 (26) = happyShift action_30
action_16 (27) = happyShift action_31
action_16 (28) = happyShift action_32
action_16 (29) = happyShift action_33
action_16 (30) = happyShift action_34
action_16 (31) = happyShift action_35
action_16 (36) = happyShift action_54
action_16 _ = happyReduce_27

action_17 (35) = happyShift action_53
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_24

action_19 _ = happyReduce_25

action_20 (22) = happyShift action_26
action_20 (23) = happyShift action_27
action_20 (24) = happyShift action_28
action_20 (25) = happyShift action_29
action_20 (26) = happyShift action_30
action_20 (27) = happyShift action_31
action_20 (28) = happyShift action_32
action_20 (29) = happyShift action_33
action_20 (30) = happyShift action_34
action_20 (31) = happyShift action_35
action_20 (33) = happyShift action_52
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (20) = happyShift action_51
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (14) = happyShift action_10
action_22 (17) = happyShift action_11
action_22 (18) = happyShift action_18
action_22 (19) = happyShift action_13
action_22 (32) = happyShift action_14
action_22 (34) = happyShift action_15
action_22 (5) = happyGoto action_50
action_22 (6) = happyGoto action_5
action_22 (7) = happyGoto action_6
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (15) = happyShift action_49
action_23 (22) = happyShift action_26
action_23 (23) = happyShift action_27
action_23 (24) = happyShift action_28
action_23 (25) = happyShift action_29
action_23 (26) = happyShift action_30
action_23 (27) = happyShift action_31
action_23 (28) = happyShift action_32
action_23 (29) = happyShift action_33
action_23 (30) = happyShift action_34
action_23 (31) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (18) = happyShift action_47
action_24 (21) = happyShift action_48
action_24 (9) = happyGoto action_46
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_18

action_26 (10) = happyShift action_7
action_26 (11) = happyShift action_8
action_26 (12) = happyShift action_9
action_26 (14) = happyShift action_10
action_26 (17) = happyShift action_11
action_26 (18) = happyShift action_18
action_26 (19) = happyShift action_13
action_26 (32) = happyShift action_14
action_26 (34) = happyShift action_15
action_26 (5) = happyGoto action_45
action_26 (6) = happyGoto action_5
action_26 (7) = happyGoto action_6
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_7
action_27 (11) = happyShift action_8
action_27 (12) = happyShift action_9
action_27 (14) = happyShift action_10
action_27 (17) = happyShift action_11
action_27 (18) = happyShift action_18
action_27 (19) = happyShift action_13
action_27 (32) = happyShift action_14
action_27 (34) = happyShift action_15
action_27 (5) = happyGoto action_44
action_27 (6) = happyGoto action_5
action_27 (7) = happyGoto action_6
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_7
action_28 (11) = happyShift action_8
action_28 (12) = happyShift action_9
action_28 (14) = happyShift action_10
action_28 (17) = happyShift action_11
action_28 (18) = happyShift action_18
action_28 (19) = happyShift action_13
action_28 (32) = happyShift action_14
action_28 (34) = happyShift action_15
action_28 (5) = happyGoto action_43
action_28 (6) = happyGoto action_5
action_28 (7) = happyGoto action_6
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_7
action_29 (11) = happyShift action_8
action_29 (12) = happyShift action_9
action_29 (14) = happyShift action_10
action_29 (17) = happyShift action_11
action_29 (18) = happyShift action_18
action_29 (19) = happyShift action_13
action_29 (32) = happyShift action_14
action_29 (34) = happyShift action_15
action_29 (5) = happyGoto action_42
action_29 (6) = happyGoto action_5
action_29 (7) = happyGoto action_6
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (10) = happyShift action_7
action_30 (11) = happyShift action_8
action_30 (12) = happyShift action_9
action_30 (14) = happyShift action_10
action_30 (17) = happyShift action_11
action_30 (18) = happyShift action_18
action_30 (19) = happyShift action_13
action_30 (32) = happyShift action_14
action_30 (34) = happyShift action_15
action_30 (5) = happyGoto action_41
action_30 (6) = happyGoto action_5
action_30 (7) = happyGoto action_6
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (10) = happyShift action_7
action_31 (11) = happyShift action_8
action_31 (12) = happyShift action_9
action_31 (14) = happyShift action_10
action_31 (17) = happyShift action_11
action_31 (18) = happyShift action_18
action_31 (19) = happyShift action_13
action_31 (32) = happyShift action_14
action_31 (34) = happyShift action_15
action_31 (5) = happyGoto action_40
action_31 (6) = happyGoto action_5
action_31 (7) = happyGoto action_6
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (10) = happyShift action_7
action_32 (11) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (14) = happyShift action_10
action_32 (17) = happyShift action_11
action_32 (18) = happyShift action_18
action_32 (19) = happyShift action_13
action_32 (32) = happyShift action_14
action_32 (34) = happyShift action_15
action_32 (5) = happyGoto action_39
action_32 (6) = happyGoto action_5
action_32 (7) = happyGoto action_6
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (10) = happyShift action_7
action_33 (11) = happyShift action_8
action_33 (12) = happyShift action_9
action_33 (14) = happyShift action_10
action_33 (17) = happyShift action_11
action_33 (18) = happyShift action_18
action_33 (19) = happyShift action_13
action_33 (32) = happyShift action_14
action_33 (34) = happyShift action_15
action_33 (5) = happyGoto action_38
action_33 (6) = happyGoto action_5
action_33 (7) = happyGoto action_6
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (10) = happyShift action_7
action_34 (11) = happyShift action_8
action_34 (12) = happyShift action_9
action_34 (14) = happyShift action_10
action_34 (17) = happyShift action_11
action_34 (18) = happyShift action_18
action_34 (19) = happyShift action_13
action_34 (32) = happyShift action_14
action_34 (34) = happyShift action_15
action_34 (5) = happyGoto action_37
action_34 (6) = happyGoto action_5
action_34 (7) = happyGoto action_6
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (10) = happyShift action_7
action_35 (11) = happyShift action_8
action_35 (12) = happyShift action_9
action_35 (14) = happyShift action_10
action_35 (17) = happyShift action_11
action_35 (18) = happyShift action_18
action_35 (19) = happyShift action_13
action_35 (32) = happyShift action_14
action_35 (34) = happyShift action_15
action_35 (5) = happyGoto action_36
action_35 (6) = happyGoto action_5
action_35 (7) = happyGoto action_6
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (22) = happyShift action_26
action_36 (23) = happyShift action_27
action_36 (24) = happyShift action_28
action_36 (25) = happyShift action_29
action_36 (26) = happyShift action_30
action_36 (31) = happyShift action_35
action_36 _ = happyReduce_3

action_37 (22) = happyShift action_26
action_37 (23) = happyShift action_27
action_37 (24) = happyShift action_28
action_37 (25) = happyShift action_29
action_37 (26) = happyShift action_30
action_37 (27) = happyFail []
action_37 (28) = happyFail []
action_37 (29) = happyFail []
action_37 (30) = happyFail []
action_37 (31) = happyShift action_35
action_37 _ = happyReduce_9

action_38 (22) = happyShift action_26
action_38 (23) = happyShift action_27
action_38 (24) = happyShift action_28
action_38 (25) = happyShift action_29
action_38 (26) = happyShift action_30
action_38 (27) = happyFail []
action_38 (28) = happyFail []
action_38 (29) = happyFail []
action_38 (30) = happyFail []
action_38 (31) = happyShift action_35
action_38 _ = happyReduce_8

action_39 (22) = happyShift action_26
action_39 (23) = happyShift action_27
action_39 (24) = happyShift action_28
action_39 (25) = happyShift action_29
action_39 (26) = happyShift action_30
action_39 (27) = happyFail []
action_39 (28) = happyFail []
action_39 (29) = happyFail []
action_39 (30) = happyFail []
action_39 (31) = happyShift action_35
action_39 _ = happyReduce_7

action_40 (22) = happyShift action_26
action_40 (23) = happyShift action_27
action_40 (24) = happyShift action_28
action_40 (25) = happyShift action_29
action_40 (26) = happyShift action_30
action_40 (27) = happyFail []
action_40 (28) = happyFail []
action_40 (29) = happyFail []
action_40 (30) = happyFail []
action_40 (31) = happyShift action_35
action_40 _ = happyReduce_6

action_41 (22) = happyShift action_26
action_41 (23) = happyShift action_27
action_41 (24) = happyShift action_28
action_41 _ = happyReduce_5

action_42 (22) = happyShift action_26
action_42 (23) = happyShift action_27
action_42 (24) = happyShift action_28
action_42 _ = happyReduce_4

action_43 _ = happyReduce_12

action_44 (24) = happyShift action_28
action_44 _ = happyReduce_11

action_45 (24) = happyShift action_28
action_45 _ = happyReduce_10

action_46 (21) = happyShift action_60
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (18) = happyShift action_47
action_47 (9) = happyGoto action_59
action_47 _ = happyReduce_29

action_48 (10) = happyShift action_7
action_48 (11) = happyShift action_8
action_48 (12) = happyShift action_9
action_48 (14) = happyShift action_10
action_48 (17) = happyShift action_11
action_48 (18) = happyShift action_18
action_48 (19) = happyShift action_13
action_48 (32) = happyShift action_14
action_48 (34) = happyShift action_15
action_48 (5) = happyGoto action_58
action_48 (6) = happyGoto action_5
action_48 (7) = happyGoto action_6
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (10) = happyShift action_7
action_49 (11) = happyShift action_8
action_49 (12) = happyShift action_9
action_49 (14) = happyShift action_10
action_49 (17) = happyShift action_11
action_49 (18) = happyShift action_18
action_49 (19) = happyShift action_13
action_49 (32) = happyShift action_14
action_49 (34) = happyShift action_15
action_49 (5) = happyGoto action_57
action_49 (6) = happyGoto action_5
action_49 (7) = happyGoto action_6
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (22) = happyShift action_26
action_50 (23) = happyShift action_27
action_50 (24) = happyShift action_28
action_50 (25) = happyShift action_29
action_50 (26) = happyShift action_30
action_50 (27) = happyShift action_31
action_50 (28) = happyShift action_32
action_50 (29) = happyShift action_33
action_50 (30) = happyShift action_34
action_50 (31) = happyShift action_35
action_50 _ = happyReduce_1

action_51 (10) = happyShift action_7
action_51 (11) = happyShift action_8
action_51 (12) = happyShift action_9
action_51 (14) = happyShift action_10
action_51 (17) = happyShift action_11
action_51 (18) = happyShift action_18
action_51 (19) = happyShift action_13
action_51 (32) = happyShift action_14
action_51 (34) = happyShift action_15
action_51 (5) = happyGoto action_56
action_51 (6) = happyGoto action_5
action_51 (7) = happyGoto action_6
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_23

action_53 _ = happyReduce_26

action_54 (10) = happyShift action_7
action_54 (11) = happyShift action_8
action_54 (12) = happyShift action_9
action_54 (14) = happyShift action_10
action_54 (17) = happyShift action_11
action_54 (18) = happyShift action_18
action_54 (19) = happyShift action_13
action_54 (32) = happyShift action_14
action_54 (34) = happyShift action_15
action_54 (5) = happyGoto action_16
action_54 (6) = happyGoto action_5
action_54 (7) = happyGoto action_6
action_54 (8) = happyGoto action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_28

action_56 (22) = happyShift action_26
action_56 (23) = happyShift action_27
action_56 (24) = happyShift action_28
action_56 (25) = happyShift action_29
action_56 (26) = happyShift action_30
action_56 (31) = happyShift action_35
action_56 _ = happyReduce_14

action_57 (16) = happyShift action_63
action_57 (22) = happyShift action_26
action_57 (23) = happyShift action_27
action_57 (24) = happyShift action_28
action_57 (25) = happyShift action_29
action_57 (26) = happyShift action_30
action_57 (27) = happyShift action_31
action_57 (28) = happyShift action_32
action_57 (29) = happyShift action_33
action_57 (30) = happyShift action_34
action_57 (31) = happyShift action_35
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (13) = happyShift action_62
action_58 (22) = happyShift action_26
action_58 (23) = happyShift action_27
action_58 (24) = happyShift action_28
action_58 (25) = happyShift action_29
action_58 (26) = happyShift action_30
action_58 (27) = happyShift action_31
action_58 (28) = happyShift action_32
action_58 (29) = happyShift action_33
action_58 (30) = happyShift action_34
action_58 (31) = happyShift action_35
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_30

action_60 (10) = happyShift action_7
action_60 (11) = happyShift action_8
action_60 (12) = happyShift action_9
action_60 (14) = happyShift action_10
action_60 (17) = happyShift action_11
action_60 (18) = happyShift action_18
action_60 (19) = happyShift action_13
action_60 (32) = happyShift action_14
action_60 (34) = happyShift action_15
action_60 (5) = happyGoto action_61
action_60 (6) = happyGoto action_5
action_60 (7) = happyGoto action_6
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (13) = happyShift action_66
action_61 (22) = happyShift action_26
action_61 (23) = happyShift action_27
action_61 (24) = happyShift action_28
action_61 (25) = happyShift action_29
action_61 (26) = happyShift action_30
action_61 (27) = happyShift action_31
action_61 (28) = happyShift action_32
action_61 (29) = happyShift action_33
action_61 (30) = happyShift action_34
action_61 (31) = happyShift action_35
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (10) = happyShift action_7
action_62 (11) = happyShift action_8
action_62 (12) = happyShift action_9
action_62 (14) = happyShift action_10
action_62 (17) = happyShift action_11
action_62 (18) = happyShift action_18
action_62 (19) = happyShift action_13
action_62 (32) = happyShift action_14
action_62 (34) = happyShift action_15
action_62 (5) = happyGoto action_65
action_62 (6) = happyGoto action_5
action_62 (7) = happyGoto action_6
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (10) = happyShift action_7
action_63 (11) = happyShift action_8
action_63 (12) = happyShift action_9
action_63 (14) = happyShift action_10
action_63 (17) = happyShift action_11
action_63 (18) = happyShift action_18
action_63 (19) = happyShift action_13
action_63 (32) = happyShift action_14
action_63 (34) = happyShift action_15
action_63 (5) = happyGoto action_64
action_63 (6) = happyGoto action_5
action_63 (7) = happyGoto action_6
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (22) = happyShift action_26
action_64 (23) = happyShift action_27
action_64 (24) = happyShift action_28
action_64 (25) = happyShift action_29
action_64 (26) = happyShift action_30
action_64 (27) = happyFail []
action_64 (28) = happyFail []
action_64 (29) = happyFail []
action_64 (30) = happyFail []
action_64 (31) = happyShift action_35
action_64 _ = happyReduce_13

action_65 (22) = happyShift action_26
action_65 (23) = happyShift action_27
action_65 (24) = happyShift action_28
action_65 (25) = happyShift action_29
action_65 (26) = happyShift action_30
action_65 (27) = happyShift action_31
action_65 (28) = happyShift action_32
action_65 (29) = happyShift action_33
action_65 (30) = happyShift action_34
action_65 (31) = happyShift action_35
action_65 _ = happyReduce_15

action_66 (10) = happyShift action_7
action_66 (11) = happyShift action_8
action_66 (12) = happyShift action_9
action_66 (14) = happyShift action_10
action_66 (17) = happyShift action_11
action_66 (18) = happyShift action_18
action_66 (19) = happyShift action_13
action_66 (32) = happyShift action_14
action_66 (34) = happyShift action_15
action_66 (5) = happyGoto action_67
action_66 (6) = happyGoto action_5
action_66 (7) = happyGoto action_6
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (22) = happyShift action_26
action_67 (23) = happyShift action_27
action_67 (24) = happyShift action_28
action_67 (25) = happyShift action_29
action_67 (26) = happyShift action_30
action_67 (27) = happyShift action_31
action_67 (28) = happyShift action_32
action_67 (29) = happyShift action_33
action_67 (30) = happyShift action_34
action_67 (31) = happyShift action_35
action_67 _ = happyReduce_16

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	_
	_
	 =  HappyAbsSyn4
		 (happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Cons  happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin And   happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Or    happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Eq    happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Ne    happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Lt    happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Le    happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Plus  happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Minus happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EBin Mul   happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 5 happyReduction_13
happyReduction_13 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (EIf  happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 5 happyReduction_14
happyReduction_14 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (ELam happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 6 5 happyReduction_15
happyReduction_15 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (ELet happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 7 5 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	(HappyTerminal (ID _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (ELet happy_var_2 (mkLam happy_var_3 happy_var_5) happy_var_7
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  6 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (EApp happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyTerminal (NUM _ happy_var_1))
	 =  HappyAbsSyn7
		 (EInt happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  7 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn7
		 (EBool True
	)

happyReduce_22 = happySpecReduce_1  7 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn7
		 (EBool False
	)

happyReduce_23 = happySpecReduce_3  7 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  7 happyReduction_24
happyReduction_24 (HappyTerminal (ID _ happy_var_1))
	 =  HappyAbsSyn7
		 (EVar happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  7 happyReduction_25
happyReduction_25 _
	_
	 =  HappyAbsSyn7
		 (ENil
	)

happyReduce_26 = happySpecReduce_3  7 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (exprList happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  8 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  8 happyReduction_28
happyReduction_28 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 : happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  9 happyReduction_29
happyReduction_29 (HappyTerminal (ID _ happy_var_1))
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  9 happyReduction_30
happyReduction_30 (HappyAbsSyn9  happy_var_2)
	(HappyTerminal (ID _ happy_var_1))
	 =  HappyAbsSyn9
		 (happy_var_1 : happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	LET _ -> cont 10;
	TRUE _ -> cont 11;
	FALSE _ -> cont 12;
	IN _ -> cont 13;
	IF _ -> cont 14;
	THEN _ -> cont 15;
	ELSE _ -> cont 16;
	NUM _ happy_dollar_dollar -> cont 17;
	ID _ happy_dollar_dollar -> cont 18;
	LAM _ -> cont 19;
	ARROW _ -> cont 20;
	EQB _ -> cont 21;
	PLUS _ -> cont 22;
	MINUS _ -> cont 23;
	MUL _ -> cont 24;
	AND _ -> cont 25;
	OR  _ -> cont 26;
	EQL _ -> cont 27;
	NEQ _ -> cont 28;
	LESS _ -> cont 29;
	LEQ _ -> cont 30;
	COLON _ -> cont 31;
	LPAREN _ -> cont 32;
	RPAREN _ -> cont 33;
	LBRAC _ -> cont 34;
	RBRAC _ -> cont 35;
	COMMA _ -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Except String a -> (a -> Except String b) -> Except String b
happyThen = ((>>=))
happyReturn :: () => a -> Except String a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Except String a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Except String a
happyError' = (\(tokens, _) -> parseError tokens)
top tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


mkLam :: [Id] -> Expr -> Expr
mkLam []     e = e
mkLam (x:xs) e = ELam x (mkLam xs e)

parseError :: [Token] -> Except String a
parseError (l:ls) = throwError (show l)
parseError []     = throwError "Unexpected end of Input"

parseExpr :: String -> Expr
parseExpr s = case parseExpr' s of
                Left msg -> throw (Error ("parse error:" ++ msg))
                Right e  -> e

parseExpr' input = runExcept $ do
   tokenStream <- scanTokens input
   top tokenStream

parseTokens :: String -> Either String [Token]
parseTokens = runExcept . scanTokens
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
