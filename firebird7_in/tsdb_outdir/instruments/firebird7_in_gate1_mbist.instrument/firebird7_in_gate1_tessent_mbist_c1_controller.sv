/*
----------------------------------------------------------------------------------
-                                                                                -
-  Unpublished work. Copyright 2022 Siemens                                      -
-                                                                                -
-  This material contains trade secrets or otherwise confidential                -
-  information owned by Siemens Industry Software Inc. or its affiliates         -
-  (collectively, SISW), or its licensors. Access to and use of this             -
-  information is strictly limited as set forth in the Customer's                -
-  applicable agreements with SISW.                                              -
-                                                                                -
----------------------------------------------------------------------------------
-  File created by: Tessent Shell                                                -
-          Version: 2022.4                                                       -
-       Created on: Mon Oct 23 12:51:54 PDT 2023                                 -
----------------------------------------------------------------------------------


*/
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller
 
     Description :  Microprogrammable BIST Controller
--------------------------------------------------------------------------------
     Language               : Verilog
     Controller Type        : HardProgrammable
---------------------------------------------------------------------------- */


module firebird7_in_gate1_tessent_mbist_c1_controller (
  input  wire        MBIST_RA_PRSRV_FUSE_VAL,
  input  wire        MBISTPG_ALGO_SEL,
  input  wire [1:0]  MBISTPG_ALGO_MODE,
  input  wire        MBISTPG_MEM_RST,
  input  wire        MBISTPG_REDUCED_ADDR_CNT_EN,
  input  wire        MEM_BYPASS_EN,
  input  wire        MCP_BOUNDING_EN,
  input  wire        MEM0_BIST_COLLAR_SO,
  input  wire        MEM1_BIST_COLLAR_SO,
  input  wire        MEM2_BIST_COLLAR_SO,
  input  wire        MEM3_BIST_COLLAR_SO,
  input  wire        MEM4_BIST_COLLAR_SO,
  input  wire        MEM5_BIST_COLLAR_SO,
  input  wire        MEM6_BIST_COLLAR_SO,
  input  wire        MEM7_BIST_COLLAR_SO,
  input  wire        MEM8_BIST_COLLAR_SO,
  input  wire        MEM9_BIST_COLLAR_SO,
  input  wire        MEM10_BIST_COLLAR_SO,
  input  wire        MEM11_BIST_COLLAR_SO,
  input  wire        MEM12_BIST_COLLAR_SO,
  input  wire        MEM13_BIST_COLLAR_SO,
  input  wire        MEM14_BIST_COLLAR_SO,
  input  wire        MEM15_BIST_COLLAR_SO,
  input  wire        MEM16_BIST_COLLAR_SO,
  input  wire        MEM17_BIST_COLLAR_SO,
  input  wire        MEM18_BIST_COLLAR_SO,
  input  wire        MEM19_BIST_COLLAR_SO,
  input  wire        MEM20_BIST_COLLAR_SO,
  input  wire        MEM21_BIST_COLLAR_SO,
  input  wire        MEM22_BIST_COLLAR_SO,
  input  wire        MEM23_BIST_COLLAR_SO,
  input  wire        MEM24_BIST_COLLAR_SO,
  input  wire        MEM25_BIST_COLLAR_SO,
  input  wire        MEM26_BIST_COLLAR_SO,
  input  wire        MEM27_BIST_COLLAR_SO,
  input  wire        MEM28_BIST_COLLAR_SO,
  input  wire        MEM29_BIST_COLLAR_SO,
  input  wire        MEM30_BIST_COLLAR_SO,
  input  wire        MEM31_BIST_COLLAR_SO,
  input  wire        MEM32_BIST_COLLAR_SO,
  input  wire        MEM33_BIST_COLLAR_SO,
  input  wire        MEM34_BIST_COLLAR_SO,
  input  wire        MEM35_BIST_COLLAR_SO,
  input  wire        MEM36_BIST_COLLAR_SO,
  input  wire        MEM37_BIST_COLLAR_SO,
  input  wire        MEM38_BIST_COLLAR_SO,
  input  wire        MEM39_BIST_COLLAR_SO,
  input  wire [1:0]  FL_CNT_MODE,
  input  wire        MBISTPG_BIRA_EN,
  input  wire        CHECK_REPAIR_NEEDED,
  input  wire [39:0] BIST_COLLAR_GO, // Status bit from collars with local comparators
  input  wire        MBISTPG_DIAG_EN, // Diagnostic mode enable
  input  wire        BIST_CLK,
  input  wire        BIST_SI, // toIscan wire from TAP
  input  wire        BIST_HOLD, // holdBist wire from TAP
  input  wire        BIST_SETUP2, // setupMode wires from TAP
  input  wire [1:0]  BIST_SETUP, // setupMode wires from TAP
  input  wire        MBISTPG_TESTDATA_SELECT,
  input  wire        TCK, // tck wire from TAP
  input  wire        MBISTPG_EN, // bistEn wire from TAP
  input  wire        MBISTPG_ASYNC_RESETN, // Asynchronous reset enable (active low)
  input  wire        LV_TM, // testMode wire from Tap
  input  wire        MBISTPG_MEM_ARRAY_DUMP_MODE,
  output wire        BIST_CLEAR_BIRA,
  output wire        MBISTPG_RESET_REG_SETUP2,
  output wire [2:0]  BIST_COL_ADD, // column address
  output wire [7:0]  BIST_ROW_ADD, // row address
  output wire [3:0]  BIST_WRITE_DATA, // write data
  output wire [3:0]  BIST_EXPECT_DATA, // expect data
  output wire        BIST_SHIFT_COLLAR, // internal scan chain shift enable to Memory collar
  output wire        BIST_TESTDATA_SELECT_TO_COLLAR,
  output wire        MEM0_BIST_COLLAR_SI,
  output wire        MEM1_BIST_COLLAR_SI,
  output wire        MEM2_BIST_COLLAR_SI,
  output wire        MEM3_BIST_COLLAR_SI,
  output wire        MEM4_BIST_COLLAR_SI,
  output wire        MEM5_BIST_COLLAR_SI,
  output wire        MEM6_BIST_COLLAR_SI,
  output wire        MEM7_BIST_COLLAR_SI,
  output wire        MEM8_BIST_COLLAR_SI,
  output wire        MEM9_BIST_COLLAR_SI,
  output wire        MEM10_BIST_COLLAR_SI,
  output wire        MEM11_BIST_COLLAR_SI,
  output wire        MEM12_BIST_COLLAR_SI,
  output wire        MEM13_BIST_COLLAR_SI,
  output wire        MEM14_BIST_COLLAR_SI,
  output wire        MEM15_BIST_COLLAR_SI,
  output wire        MEM16_BIST_COLLAR_SI,
  output wire        MEM17_BIST_COLLAR_SI,
  output wire        MEM18_BIST_COLLAR_SI,
  output wire        MEM19_BIST_COLLAR_SI,
  output wire        MEM20_BIST_COLLAR_SI,
  output wire        MEM21_BIST_COLLAR_SI,
  output wire        MEM22_BIST_COLLAR_SI,
  output wire        MEM23_BIST_COLLAR_SI,
  output wire        MEM24_BIST_COLLAR_SI,
  output wire        MEM25_BIST_COLLAR_SI,
  output wire        MEM26_BIST_COLLAR_SI,
  output wire        MEM27_BIST_COLLAR_SI,
  output wire        MEM28_BIST_COLLAR_SI,
  output wire        MEM29_BIST_COLLAR_SI,
  output wire        MEM30_BIST_COLLAR_SI,
  output wire        MEM31_BIST_COLLAR_SI,
  output wire        MEM32_BIST_COLLAR_SI,
  output wire        MEM33_BIST_COLLAR_SI,
  output wire        MEM34_BIST_COLLAR_SI,
  output wire        MEM35_BIST_COLLAR_SI,
  output wire        MEM36_BIST_COLLAR_SI,
  output wire        MEM37_BIST_COLLAR_SI,
  output wire        MEM38_BIST_COLLAR_SI,
  output wire        MEM39_BIST_COLLAR_SI,
  output wire        BIST_COLLAR_SETUP,
  output wire        BIST_COLLAR_OPSET_SELECT,
  output wire        BIST_COLLAR_HOLD,
  output wire        FREEZE_STOP_ERROR,
  output wire        ERROR_CNT_ZERO,
  output wire        BIST_COLLAR_DIAG_EN,
  output wire        BIST_COLLAR_BIRA_EN,
  output wire        BIST_CLEAR_DEFAULT,
  output wire        BIST_CLEAR,
  output wire        MBISTPG_SO, // fromBist wire to TAP
  output wire        PriorityColumn,
  output wire        BIST_WRITEENABLE,
  output wire        BIST_READENABLE,
  output wire        BIST_CMP,
  output wire        BIST_COLLAR_EN0, // Enable for interface m1
  output wire        BIST_RUN_TO_COLLAR0,
  output wire        BIST_COLLAR_EN1, // Enable for interface m2
  output wire        BIST_RUN_TO_COLLAR1,
  output wire        BIST_COLLAR_EN2, // Enable for interface m3
  output wire        BIST_RUN_TO_COLLAR2,
  output wire        BIST_COLLAR_EN3, // Enable for interface m4
  output wire        BIST_RUN_TO_COLLAR3,
  output wire        BIST_COLLAR_EN4, // Enable for interface m5
  output wire        BIST_RUN_TO_COLLAR4,
  output wire        BIST_COLLAR_EN5, // Enable for interface m6
  output wire        BIST_RUN_TO_COLLAR5,
  output wire        BIST_COLLAR_EN6, // Enable for interface m7
  output wire        BIST_RUN_TO_COLLAR6,
  output wire        BIST_COLLAR_EN7, // Enable for interface m8
  output wire        BIST_RUN_TO_COLLAR7,
  output wire        BIST_COLLAR_EN8, // Enable for interface m9
  output wire        BIST_RUN_TO_COLLAR8,
  output wire        BIST_COLLAR_EN9, // Enable for interface m10
  output wire        BIST_RUN_TO_COLLAR9,
  output wire        BIST_COLLAR_EN10, // Enable for interface m11
  output wire        BIST_RUN_TO_COLLAR10,
  output wire        BIST_COLLAR_EN11, // Enable for interface m12
  output wire        BIST_RUN_TO_COLLAR11,
  output wire        BIST_COLLAR_EN12, // Enable for interface m13
  output wire        BIST_RUN_TO_COLLAR12,
  output wire        BIST_COLLAR_EN13, // Enable for interface m14
  output wire        BIST_RUN_TO_COLLAR13,
  output wire        BIST_COLLAR_EN14, // Enable for interface m15
  output wire        BIST_RUN_TO_COLLAR14,
  output wire        BIST_COLLAR_EN15, // Enable for interface m16
  output wire        BIST_RUN_TO_COLLAR15,
  output wire        BIST_COLLAR_EN16, // Enable for interface m17
  output wire        BIST_RUN_TO_COLLAR16,
  output wire        BIST_COLLAR_EN17, // Enable for interface m18
  output wire        BIST_RUN_TO_COLLAR17,
  output wire        BIST_COLLAR_EN18, // Enable for interface m19
  output wire        BIST_RUN_TO_COLLAR18,
  output wire        BIST_COLLAR_EN19, // Enable for interface m20
  output wire        BIST_RUN_TO_COLLAR19,
  output wire        BIST_COLLAR_EN20, // Enable for interface m21
  output wire        BIST_RUN_TO_COLLAR20,
  output wire        BIST_COLLAR_EN21, // Enable for interface m22
  output wire        BIST_RUN_TO_COLLAR21,
  output wire        BIST_COLLAR_EN22, // Enable for interface m23
  output wire        BIST_RUN_TO_COLLAR22,
  output wire        BIST_COLLAR_EN23, // Enable for interface m24
  output wire        BIST_RUN_TO_COLLAR23,
  output wire        BIST_COLLAR_EN24, // Enable for interface m25
  output wire        BIST_RUN_TO_COLLAR24,
  output wire        BIST_COLLAR_EN25, // Enable for interface m26
  output wire        BIST_RUN_TO_COLLAR25,
  output wire        BIST_COLLAR_EN26, // Enable for interface m27
  output wire        BIST_RUN_TO_COLLAR26,
  output wire        BIST_COLLAR_EN27, // Enable for interface m28
  output wire        BIST_RUN_TO_COLLAR27,
  output wire        BIST_COLLAR_EN28, // Enable for interface m29
  output wire        BIST_RUN_TO_COLLAR28,
  output wire        BIST_COLLAR_EN29, // Enable for interface m30
  output wire        BIST_RUN_TO_COLLAR29,
  output wire        BIST_COLLAR_EN30, // Enable for interface m31
  output wire        BIST_RUN_TO_COLLAR30,
  output wire        BIST_COLLAR_EN31, // Enable for interface m32
  output wire        BIST_RUN_TO_COLLAR31,
  output wire        BIST_COLLAR_EN32, // Enable for interface m33
  output wire        BIST_RUN_TO_COLLAR32,
  output wire        BIST_COLLAR_EN33, // Enable for interface m34
  output wire        BIST_RUN_TO_COLLAR33,
  output wire        BIST_COLLAR_EN34, // Enable for interface m35
  output wire        BIST_RUN_TO_COLLAR34,
  output wire        BIST_COLLAR_EN35, // Enable for interface m36
  output wire        BIST_RUN_TO_COLLAR35,
  output wire        BIST_COLLAR_EN36, // Enable for interface m37
  output wire        BIST_RUN_TO_COLLAR36,
  output wire        BIST_COLLAR_EN37, // Enable for interface m38
  output wire        BIST_RUN_TO_COLLAR37,
  output wire        BIST_COLLAR_EN38, // Enable for interface m39
  output wire        BIST_RUN_TO_COLLAR38,
  output wire        BIST_COLLAR_EN39, // Enable for interface m40
  output wire        BIST_RUN_TO_COLLAR39,
  output wire        CHKBCI_PHASE,
  output wire        MBISTPG_GO, // Status bit indicating BIST is Pass when high and DONE is High
  output wire        MBISTPG_DONE, // Status bit indicating BIST is done when high
  output wire        BIST_ON_TO_COLLAR,
  output wire        BIST_SHIFT_BIRA_COLLAR
);
wire        MBIST_RA_PRSRV_FUSE_VAL_SYNC;
wire        BYPASS_RUN_STATE_INT;
reg         ALGO_SEL_REG;
wire        ALGO_SEL_RST;
wire        ALGO_SEL_SO;
wire        ALGO_SEL_SI;
reg         ALGO_SEL_CNT_REG;
wire        ALGO_SEL_CNT_RST;
wire        ALGO_SEL_CNT_SI;
wire        ALGO_SEL_CNT_SO;
reg         SELECT_COMMON_OPSET_REG;
wire        SELECT_COMMON_OPSET_RST;
wire        SELECT_COMMON_OPSET_SI;
wire        SELECT_COMMON_OPSET_SO;
reg         SELECT_COMMON_DATA_PAT_REG;
wire        SELECT_COMMON_DATA_PAT_RST;
wire        SELECT_COMMON_DATA_PAT_SI;
wire        SELECT_COMMON_DATA_PAT_SO;
reg         MICROCODE_EN_REG;
wire        MICROCODE_EN_RST;
wire        MICROCODE_EN_SI;
wire        MICROCODE_EN_SO;
wire [0:0]  STEP_ALGO_SELECT;
wire [1:0]  MBISTPG_ALGO_MODE_SYNC;
wire [1:0]  MBISTPG_ALGO_MODE_INT;
wire        PAUSETOEND_ALGO_MODE;
wire        MBISTPG_MEM_RST_SYNC;
wire        MBISTPG_REDUCED_ADDR_CNT_EN_SYNC;
wire        MBISTPG_REDUCED_ADDR_CNT_EN_INT;
reg         REDUCED_ADDR_CNT_EN_REG;
wire        REDUCED_ADDR_CNT_EN_SI;
wire        REDUCED_ADDR_CNT_EN_SO;
wire        MBISTPG_ALGO_SEL_INT;
wire        INIT_SIGNAL_GEN_REGS;
wire        INIT_DATA_GEN_REGS;
reg         MEM0_BIST_COLLAR_SI_RetimeOut;
reg         MEM0_BIST_COLLAR_SO_RetimeIn;
reg         MEM1_BIST_COLLAR_SI_RetimeOut;
reg         MEM2_BIST_COLLAR_SI_RetimeOut;
reg         MEM3_BIST_COLLAR_SI_RetimeOut;
reg         MEM4_BIST_COLLAR_SI_RetimeOut;
reg         MEM5_BIST_COLLAR_SI_RetimeOut;
reg         MEM6_BIST_COLLAR_SI_RetimeOut;
reg         MEM7_BIST_COLLAR_SI_RetimeOut;
reg         MEM8_BIST_COLLAR_SI_RetimeOut;
reg         MEM9_BIST_COLLAR_SI_RetimeOut;
reg         MEM10_BIST_COLLAR_SI_RetimeOut;
reg         MEM11_BIST_COLLAR_SI_RetimeOut;
reg         MEM12_BIST_COLLAR_SI_RetimeOut;
reg         MEM13_BIST_COLLAR_SI_RetimeOut;
reg         MEM14_BIST_COLLAR_SI_RetimeOut;
reg         MEM15_BIST_COLLAR_SI_RetimeOut;
reg         MEM16_BIST_COLLAR_SI_RetimeOut;
reg         MEM17_BIST_COLLAR_SI_RetimeOut;
reg         MEM18_BIST_COLLAR_SI_RetimeOut;
reg         MEM19_BIST_COLLAR_SI_RetimeOut;
reg         MEM20_BIST_COLLAR_SI_RetimeOut;
reg         MEM21_BIST_COLLAR_SI_RetimeOut;
reg         MEM22_BIST_COLLAR_SI_RetimeOut;
reg         MEM23_BIST_COLLAR_SI_RetimeOut;
reg         MEM24_BIST_COLLAR_SI_RetimeOut;
reg         MEM25_BIST_COLLAR_SI_RetimeOut;
reg         MEM26_BIST_COLLAR_SI_RetimeOut;
reg         MEM27_BIST_COLLAR_SI_RetimeOut;
reg         MEM28_BIST_COLLAR_SI_RetimeOut;
reg         MEM29_BIST_COLLAR_SI_RetimeOut;
reg         MEM30_BIST_COLLAR_SI_RetimeOut;
reg         MEM31_BIST_COLLAR_SI_RetimeOut;
reg         MEM32_BIST_COLLAR_SI_RetimeOut;
reg         MEM33_BIST_COLLAR_SI_RetimeOut;
reg         MEM34_BIST_COLLAR_SI_RetimeOut;
reg         MEM35_BIST_COLLAR_SI_RetimeOut;
reg         MEM36_BIST_COLLAR_SI_RetimeOut;
reg         MEM37_BIST_COLLAR_SI_RetimeOut;
reg         MEM38_BIST_COLLAR_SI_RetimeOut;
reg         MEM39_BIST_COLLAR_SI_RetimeOut;
wire        BIST_BIRA_EN;
wire        FREEZE_GO_ID;
reg  [39:0] MEM_SELECT_REG;
wire [39:0] MEM_SELECT_REG_INT;
wire        MEM_SELECT_REG_SI;
wire        MEM_SELECT_REG_SO;
wire        BIST_CLK_INT;
wire        BIST_EN_INT;
wire        BIST_CLK_GATED;
wire        INJECT_TCK;
wire        BIST_DONE_INT;
wire        BIST_EN_RST;
wire        BIST_EN_RETIME1_IN;
wire        BIST_EN_RETIME1;
wire        BIST_EN_RETIME2_IN;
reg         BIST_EN_RETIME2;
wire        BIST_HOLD_INT;
wire [2:0]  BIST_SETUP_INT2;
wire        MBISTPG_EN_INT;
wire        BIST_CMP_INT;
wire        BIST_CMP_FROM_SIGNAL_GEN;
wire        BIST_RUN_TO_COLLAR0_INT;
wire        BIST_RUN_TO_COLLAR0_PRE;
wire        BIST_COLLAR_EN0_PRE;
wire        BIST_COLLAR_EN0_INT;
wire        BIST_RUN_TO_COLLAR1_INT;
wire        BIST_RUN_TO_COLLAR1_PRE;
wire        BIST_COLLAR_EN1_PRE;
wire        BIST_COLLAR_EN1_INT;
wire        BIST_RUN_TO_COLLAR2_INT;
wire        BIST_RUN_TO_COLLAR2_PRE;
wire        BIST_COLLAR_EN2_PRE;
wire        BIST_COLLAR_EN2_INT;
wire        BIST_RUN_TO_COLLAR3_INT;
wire        BIST_RUN_TO_COLLAR3_PRE;
wire        BIST_COLLAR_EN3_PRE;
wire        BIST_COLLAR_EN3_INT;
wire        BIST_RUN_TO_COLLAR4_INT;
wire        BIST_RUN_TO_COLLAR4_PRE;
wire        BIST_COLLAR_EN4_PRE;
wire        BIST_COLLAR_EN4_INT;
wire        BIST_RUN_TO_COLLAR5_INT;
wire        BIST_RUN_TO_COLLAR5_PRE;
wire        BIST_COLLAR_EN5_PRE;
wire        BIST_COLLAR_EN5_INT;
wire        BIST_RUN_TO_COLLAR6_INT;
wire        BIST_RUN_TO_COLLAR6_PRE;
wire        BIST_COLLAR_EN6_PRE;
wire        BIST_COLLAR_EN6_INT;
wire        BIST_RUN_TO_COLLAR7_INT;
wire        BIST_RUN_TO_COLLAR7_PRE;
wire        BIST_COLLAR_EN7_PRE;
wire        BIST_COLLAR_EN7_INT;
wire        BIST_RUN_TO_COLLAR8_INT;
wire        BIST_RUN_TO_COLLAR8_PRE;
wire        BIST_COLLAR_EN8_PRE;
wire        BIST_COLLAR_EN8_INT;
wire        BIST_RUN_TO_COLLAR9_INT;
wire        BIST_RUN_TO_COLLAR9_PRE;
wire        BIST_COLLAR_EN9_PRE;
wire        BIST_COLLAR_EN9_INT;
wire        BIST_RUN_TO_COLLAR10_INT;
wire        BIST_RUN_TO_COLLAR10_PRE;
wire        BIST_COLLAR_EN10_PRE;
wire        BIST_COLLAR_EN10_INT;
wire        BIST_RUN_TO_COLLAR11_INT;
wire        BIST_RUN_TO_COLLAR11_PRE;
wire        BIST_COLLAR_EN11_PRE;
wire        BIST_COLLAR_EN11_INT;
wire        BIST_RUN_TO_COLLAR12_INT;
wire        BIST_RUN_TO_COLLAR12_PRE;
wire        BIST_COLLAR_EN12_PRE;
wire        BIST_COLLAR_EN12_INT;
wire        BIST_RUN_TO_COLLAR13_INT;
wire        BIST_RUN_TO_COLLAR13_PRE;
wire        BIST_COLLAR_EN13_PRE;
wire        BIST_COLLAR_EN13_INT;
wire        BIST_RUN_TO_COLLAR14_INT;
wire        BIST_RUN_TO_COLLAR14_PRE;
wire        BIST_COLLAR_EN14_PRE;
wire        BIST_COLLAR_EN14_INT;
wire        BIST_RUN_TO_COLLAR15_INT;
wire        BIST_RUN_TO_COLLAR15_PRE;
wire        BIST_COLLAR_EN15_PRE;
wire        BIST_COLLAR_EN15_INT;
wire        BIST_RUN_TO_COLLAR16_INT;
wire        BIST_RUN_TO_COLLAR16_PRE;
wire        BIST_COLLAR_EN16_PRE;
wire        BIST_COLLAR_EN16_INT;
wire        BIST_RUN_TO_COLLAR17_INT;
wire        BIST_RUN_TO_COLLAR17_PRE;
wire        BIST_COLLAR_EN17_PRE;
wire        BIST_COLLAR_EN17_INT;
wire        BIST_RUN_TO_COLLAR18_INT;
wire        BIST_RUN_TO_COLLAR18_PRE;
wire        BIST_COLLAR_EN18_PRE;
wire        BIST_COLLAR_EN18_INT;
wire        BIST_RUN_TO_COLLAR19_INT;
wire        BIST_RUN_TO_COLLAR19_PRE;
wire        BIST_COLLAR_EN19_PRE;
wire        BIST_COLLAR_EN19_INT;
wire        BIST_RUN_TO_COLLAR20_INT;
wire        BIST_RUN_TO_COLLAR20_PRE;
wire        BIST_COLLAR_EN20_PRE;
wire        BIST_COLLAR_EN20_INT;
wire        BIST_RUN_TO_COLLAR21_INT;
wire        BIST_RUN_TO_COLLAR21_PRE;
wire        BIST_COLLAR_EN21_PRE;
wire        BIST_COLLAR_EN21_INT;
wire        BIST_RUN_TO_COLLAR22_INT;
wire        BIST_RUN_TO_COLLAR22_PRE;
wire        BIST_COLLAR_EN22_PRE;
wire        BIST_COLLAR_EN22_INT;
wire        BIST_RUN_TO_COLLAR23_INT;
wire        BIST_RUN_TO_COLLAR23_PRE;
wire        BIST_COLLAR_EN23_PRE;
wire        BIST_COLLAR_EN23_INT;
wire        BIST_RUN_TO_COLLAR24_INT;
wire        BIST_RUN_TO_COLLAR24_PRE;
wire        BIST_COLLAR_EN24_PRE;
wire        BIST_COLLAR_EN24_INT;
wire        BIST_RUN_TO_COLLAR25_INT;
wire        BIST_RUN_TO_COLLAR25_PRE;
wire        BIST_COLLAR_EN25_PRE;
wire        BIST_COLLAR_EN25_INT;
wire        BIST_RUN_TO_COLLAR26_INT;
wire        BIST_RUN_TO_COLLAR26_PRE;
wire        BIST_COLLAR_EN26_PRE;
wire        BIST_COLLAR_EN26_INT;
wire        BIST_RUN_TO_COLLAR27_INT;
wire        BIST_RUN_TO_COLLAR27_PRE;
wire        BIST_COLLAR_EN27_PRE;
wire        BIST_COLLAR_EN27_INT;
wire        BIST_RUN_TO_COLLAR28_INT;
wire        BIST_RUN_TO_COLLAR28_PRE;
wire        BIST_COLLAR_EN28_PRE;
wire        BIST_COLLAR_EN28_INT;
wire        BIST_RUN_TO_COLLAR29_INT;
wire        BIST_RUN_TO_COLLAR29_PRE;
wire        BIST_COLLAR_EN29_PRE;
wire        BIST_COLLAR_EN29_INT;
wire        BIST_RUN_TO_COLLAR30_INT;
wire        BIST_RUN_TO_COLLAR30_PRE;
wire        BIST_COLLAR_EN30_PRE;
wire        BIST_COLLAR_EN30_INT;
wire        BIST_RUN_TO_COLLAR31_INT;
wire        BIST_RUN_TO_COLLAR31_PRE;
wire        BIST_COLLAR_EN31_PRE;
wire        BIST_COLLAR_EN31_INT;
wire        BIST_RUN_TO_COLLAR32_INT;
wire        BIST_RUN_TO_COLLAR32_PRE;
wire        BIST_COLLAR_EN32_PRE;
wire        BIST_COLLAR_EN32_INT;
wire        BIST_RUN_TO_COLLAR33_INT;
wire        BIST_RUN_TO_COLLAR33_PRE;
wire        BIST_COLLAR_EN33_PRE;
wire        BIST_COLLAR_EN33_INT;
wire        BIST_RUN_TO_COLLAR34_INT;
wire        BIST_RUN_TO_COLLAR34_PRE;
wire        BIST_COLLAR_EN34_PRE;
wire        BIST_COLLAR_EN34_INT;
wire        BIST_RUN_TO_COLLAR35_INT;
wire        BIST_RUN_TO_COLLAR35_PRE;
wire        BIST_COLLAR_EN35_PRE;
wire        BIST_COLLAR_EN35_INT;
wire        BIST_RUN_TO_COLLAR36_INT;
wire        BIST_RUN_TO_COLLAR36_PRE;
wire        BIST_COLLAR_EN36_PRE;
wire        BIST_COLLAR_EN36_INT;
wire        BIST_RUN_TO_COLLAR37_INT;
wire        BIST_RUN_TO_COLLAR37_PRE;
wire        BIST_COLLAR_EN37_PRE;
wire        BIST_COLLAR_EN37_INT;
wire        BIST_RUN_TO_COLLAR38_INT;
wire        BIST_RUN_TO_COLLAR38_PRE;
wire        BIST_COLLAR_EN38_PRE;
wire        BIST_COLLAR_EN38_INT;
wire        BIST_RUN_TO_COLLAR39_INT;
wire        BIST_RUN_TO_COLLAR39_PRE;
wire        BIST_COLLAR_EN39_PRE;
wire        BIST_COLLAR_EN39_INT;
wire        CHKBCI_PHASE_INT;
wire        POINTER_CNTRL_SI;
wire        POINTER_CNTRL_SO;
wire        ADD_GEN_SI;
wire        ADD_GEN_SO;
wire        SIGNAL_GEN_SI;
wire        SIGNAL_GEN_SO;
wire        REPEAT_LOOP_CNTRL_SI;
wire        REPEAT_LOOP_CNTRL_SO;
wire        DATA_GEN_SI;
wire        DATA_GEN_SO;
wire        COUNTERA_SI;
wire        COUNTERA_SO;
wire        DELAYCOUNTER_SI;
wire        DELAYCOUNTER_SO;
wire        COLLAR_GO;
wire        MBISTPG_GO_INT;
wire        BIST_SI_SYNC;
wire        BIST_SHIFT_SYNC;
wire        BIST_SHIFT_SHORT;
wire [2:0]  BIST_SETUP_INT;
wire [1:0]  BIST_SETUP_SYNC;
wire        MBISTPG_TESTDATA_SELECT_INT;
wire        SHORT_SETUP_SYNC;
reg         TO_COLLAR_SI;
wire        TO_COLLAR_SI_MUX_INPUT0;
wire        TO_COLLAR_SI_MUX_INPUT1;
wire        BIST_HOLD_R;
wire        BIST_HOLD_R_INT;
wire        LAST_STATE_DONE;
wire        LAST_STATE_DONE_PIPELINED;
wire        BIST_ON_TO_BUF;
wire        BIST_ON;
wire        BIST_DONE;
wire        BIST_IDLE;
wire        LAST_TICK;
wire        LAST_STATE;
wire        LAST_TICK_PIPELINED;
wire [1:0]  OPSET_SELECT_DECODED;
wire        SETUP_PULSE1;
wire        SETUP_PULSE2;
wire [5:0]  OP_SELECT_CMD;
wire [1:0]  A_EQUALS_B_INVERT_DATA;
wire [1:0]  ADD_Y0_CMD;
wire [2:0]  ADD_Y1_CMD;
wire [1:0]  ADD_X0_CMD;
wire [2:0]  ADD_X1_CMD;
wire [2:0]  ADD_REG_SELECT;
wire [3:0]  WDATA_CMD;
wire [3:0]  EDATA_CMD;
wire [1:0]  LOOP_CMD;
wire        COUNTERA_CMD;
wire        DELAYCOUNTER_CMD;
wire        INH_LAST_ADDR_CNT;
wire        INH_DATA_CMP;
wire [1:0]  ADD_Y0_CMD_MODIFIED;
wire [2:0]  ADD_Y1_CMD_MODIFIED;
wire [1:0]  ADD_X0_CMD_MODIFIED;
wire [2:0]  ADD_X1_CMD_MODIFIED;
wire [3:0]  WDATA_CMD_MODIFIED;
wire [3:0]  EDATA_CMD_MODIFIED;
wire        INH_LAST_ADDR_CNT_MODIFIED;
wire        INH_LAST_ADDR_CNT_MODIFIED_INT;
wire        INH_DATA_CMP_MODIFIED;
wire         LOOP_STATE_TRUE;
wire [4:0]  LOOP_POINTER;
wire [7:0]  ROW_ADDRESS;
wire [2:0]  COLUMN_ADDRESS;
wire [7:0]  X_ADDRESS;
wire [2:0]  Y_ADDRESS;
wire [3:0]  WRITE_DATA;
wire [3:0]  EXPECT_DATA;
wire        A_EQUALS_B_TRIGGER;
wire        Y0_MINMAX_TRIGGER;
wire        Y0_MINMAX_TRIGGER_OUT;
wire        Y1_MINMAX_TRIGGER;
wire        Y1_MINMAX_TRIGGER_OUT;
wire        X0_MINMAX_TRIGGER;
wire        X0_MINMAX_TRIGGER_OUT;
wire        X1_MINMAX_TRIGGER;
wire        X1_MINMAX_TRIGGER_OUT;
wire        DELAYCOUNTER_ENDCOUNT_TRIGGER;
wire        DELAYCOUNTER_ENDCOUNT_TRIGGER_INT;
wire        COUNTERA_ENDCOUNT_TRIGGER;
wire        COUNTERA_ENDCOUNT_TRIGGER_INT;
wire        LOOPCOUNTMAX_TRIGGER;
wire        LOOPCOUNTMAX_TRIGGER_INT;
wire        BIST_Y0_COUNT_EN;
wire        BIST_X0_COUNT_EN;
wire        SWITCH_ADDRESS_REG;
wire        OPSET_INVERT_EDATA;
wire        OPSET_INVERT_WDATA;
wire        BIST_INIT;
wire        RESET_REG_SETUP1;
wire        RESET_REG_SETUP2;
wire        BIST_RUN;
wire        BIST_RUN_INT;
wire        BIST_RUN_PIPE;
wire        DEFAULT_MODE;
wire        RESET_REG_DEFAULT_MODE;
wire        CLEAR_DEFAULT;
wire        CLEAR;
wire        BIST_DIAG_EN;
wire        ESOE_RESET;
wire        FL_CNT_MODE0_SYNC;
wire        BIST_IDLE_PULSE;
wire        MBISTPG_DIAG_EN_GATED;
wire        MBISTPG_DIAG_EN_SYNC;
reg         DIAG_EN_R;
wire        DIAG_EN_SI;
wire        DIAG_EN_SO;
reg         BIRA_EN_R;
wire        MBISTPG_BIRA_EN_SYNC;
reg         PriorityColumn_R;
reg         GO_EN;
wire        MBISTPG_BIRA_SETUP_TO_SYNC;
wire        MBISTPG_BIRA_SETUP_SYNC;
wire        BIST_CLEAR_BIRA_INT;
wire        MBISTPG_RESET_BIRA_CONFIG_INT;
wire        BIRA_CONFIG_SO;
wire        MBISTPG_PRESERVE_BIRA;
wire        BIST_SHIFT_BIRA;
reg         BIRA_CONFIG;
wire        CTL_COMP_SI;
wire        CTL_COMP_SO;
wire        HOLD_EN;
wire        BIST_STOP_ON_ERROR_EN_INT;
wire        RA_BIRA_SO;
wire         BIST_SWITCH_ADDRESS_EN;
wire        MBISTPG_GOID_SETUP_TO_SYNC;
wire        MBISTPG_GOID_SETUP_SYNC;
wire        BIST_SHIFT_GOID;
reg         MEM_ARRAY_DUMP_MODE_R;
wire        MEM_ARRAY_DUMP_MODE_RST;
wire        MEM_ARRAY_DUMP_MODE_SI;
wire        MEM_ARRAY_DUMP_MODE_SO;
wire        MEM_ARRAY_DUMP_MODE;



//----------------------------------
//-----  Controller Main Code  -----
//----------------------------------
    assign BIST_SWITCH_ADDRESS_EN = SWITCH_ADDRESS_REG; 
    assign BIST_ON_TO_COLLAR  = BIST_ON_TO_BUF;
 
    assign INJECT_TCK = MBISTPG_EN_INT & BIST_HOLD_INT & (~LV_TM); 


//------------------------
//-- BIST_EN Retiming --
//------------------------
    assign BIST_EN_RST              = ~MBISTPG_ASYNC_RESETN;
    assign BIST_EN_RETIME1_IN       = MBISTPG_EN_INT & BIST_SETUP[1];
    // Posedge retiming cell
    i0sfmn203ab1d03x5 tessent_persistent_cell_MBIST_NTC_RETIMING_CELL_CLK_EN ( 
        .rb          (MBISTPG_ASYNC_RESETN         ), // i
        .clk        ( BIST_CLK     ), // i
        .d          ( BIST_EN_RETIME1_IN          ), // i
        .o          ( BIST_EN_RETIME1             )  // o
    ); 
    assign BIST_EN_RETIME2_IN       = BIST_EN_RETIME1;
 
    // Posedge stage
    // synopsys async_set_reset "BIST_EN_RST"
    always_ff @ (posedge BIST_CLK or posedge BIST_EN_RST) begin
        if (BIST_EN_RST)
            BIST_EN_RETIME2         <= 1'b0;
        else
            BIST_EN_RETIME2         <= BIST_EN_RETIME2_IN;
    end
    assign BIST_EN_INT              = BIST_ON_TO_BUF ? ((~BIST_DONE_INT) & (~FREEZE_STOP_ERROR)) : BIST_DONE_INT;
    i0scilb01ab1n02x5 tessent_persistent_cell_GATING_BIST_CLK (
        .clk        ( BIST_CLK                    ),
        .te         ( 1'b0         ),
        .en         ( BIST_EN_INT & (~MCP_BOUNDING_EN)           ),
        .clkout     ( BIST_CLK_GATED              )
    );
    i0scmbn22ab1n02x5 tessent_persistent_cell_BIST_CLK_INT (
        .s          ( INJECT_TCK                                 ),
        .clk2       ( BIST_CLK_GATED                             ),
        .clk1       ( TCK                                        ),
        .clkout     ( BIST_CLK_INT                               )
    );

 
    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBIST_RA_PRSRV_FUSE_VAL_SYNC (
        .a          ( MBIST_RA_PRSRV_FUSE_VAL                    ),
        .b          ( BIST_ON                                    ),
        .o          ( MBIST_RA_PRSRV_FUSE_VAL_SYNC               )
    );

    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_BIRA_EN_SYNC (
        .a          ( MBISTPG_BIRA_EN                            ),
        .b          ( BIST_ON                                    ),
        .o          ( MBISTPG_BIRA_EN_SYNC                       )
    );

    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_MEM_RST_SYNC (
        .a          ( MBISTPG_MEM_RST                            ),
        .b          ( BIST_ON                                    ),
        .o          ( MBISTPG_MEM_RST_SYNC                       )
    );

    i0sand002ab1n02x5 tessent_persistent_cell_AND_FL_CNT_MODE0_SYNC (
        .a          ( FL_CNT_MODE[0]                             ),
        .b          ( BIST_ON                                    ),
        .o          ( FL_CNT_MODE0_SYNC                          )
    );

 
    assign MBISTPG_ALGO_SEL_INT     = ((DEFAULT_MODE & (~MEM_ARRAY_DUMP_MODE)) | (~(ALGO_SEL_CNT_REG))) ? 1'b0 : ALGO_SEL_REG;
    assign INIT_SIGNAL_GEN_REGS     = ~(SELECT_COMMON_OPSET_REG);
    assign INIT_DATA_GEN_REGS       = ~(SELECT_COMMON_DATA_PAT_REG);
    i0sfmn203ab1d03x5 tessent_persistent_cell_MBIST_NTC_RETIMING_CELL_TESTDATA_SELECT ( 
        .rb                         (MBISTPG_ASYNC_RESETN         ), // i
        .clk        ( BIST_CLK     ), // i
        .d          ( MBISTPG_TESTDATA_SELECT     ), // i
        .o          ( BIST_TESTDATA_SELECT_TO_COLLAR             )  // o
    ); 
    assign RESET_REG_SETUP1         = SETUP_PULSE1;
    assign RESET_REG_SETUP2         = SETUP_PULSE2;
    assign RESET_REG_DEFAULT_MODE   = (SETUP_PULSE1 & (DEFAULT_MODE | (~MICROCODE_EN_REG)));
    assign MBISTPG_RESET_BIRA_CONFIG_INT = BIST_INIT & DEFAULT_MODE;
    assign CLEAR_DEFAULT            = (BIST_INIT & DEFAULT_MODE & (~GO_EN));
    assign CLEAR                    = (BIST_INIT & (~GO_EN));
    assign BIST_CLEAR_DEFAULT       = CLEAR_DEFAULT & (~MBISTPG_ALGO_MODE_INT[1]);
    assign BIST_CLEAR               = CLEAR & (~MBISTPG_ALGO_MODE_INT[1]);
    assign BIST_CLEAR_BIRA_INT      = RESET_REG_SETUP1 & (~GO_EN) & (BIST_BIRA_EN | BYPASS_RUN_STATE_INT) & (~MBISTPG_PRESERVE_BIRA);
    assign BIST_SHIFT_BIRA_COLLAR   = BIST_SHIFT_BIRA;
    assign BIST_CLEAR_BIRA          = BIST_CLEAR_BIRA_INT;
    assign BIST_COL_ADD             = COLUMN_ADDRESS;
    assign BIST_ROW_ADD             = ROW_ADDRESS;
    assign BIST_WRITE_DATA          = WRITE_DATA;
    assign BIST_EXPECT_DATA         = EXPECT_DATA;
    assign BIST_SHIFT_COLLAR        = BIST_SHIFT_SHORT | BIST_SHIFT_GOID;
    assign BIST_COLLAR_SETUP        = (SETUP_PULSE1 & (~BIST_HOLD_R_INT));
    assign BIST_COLLAR_DIAG_EN      = DIAG_EN_R;
    assign BIST_BIRA_EN             = BIRA_EN_R;
    assign BIST_COLLAR_BIRA_EN      = BIST_BIRA_EN;
    //----------------------
    //-- Collar BIST_HOLD --
    //----------------------
    assign BIST_COLLAR_HOLD         = BIST_HOLD_R;
    //--------------------------
    //-- Controller BIST_HOLD --
    //--------------------------
    assign BIST_HOLD_R_INT          = HOLD_EN;
     
    i0sand002ab1n02x5 tessent_persistent_cell_AND_BIST_SI_SYNC (
        .a          ( BIST_SI                                    ),
        .b          ( BIST_SHIFT_SYNC                            ),
        .o          ( BIST_SI_SYNC                               )
    );
 
    assign BIST_SETUP_INT2          = {BIST_SETUP2, BIST_SETUP[1:0]};    

    assign BIST_SETUP_INT           = BIST_SETUP_INT2;

 
    i0sand002ab1n02x5 tessent_persistent_cell_AND_BIST_SETUP_SYNC0 (
        .a          ( BIST_SETUP_INT[0]                          ),
        .b          ( BIST_ON                                    ),
        .o          ( BIST_SETUP_SYNC[0]                         )
    );

    i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_SETUP_SYNC1 (
        .a           (BIST_ON),
        .o           (BIST_SETUP_SYNC[1])
    );
 
    assign MBISTPG_BIRA_SETUP_TO_SYNC              = BIST_SETUP_INT[2] & (~BIST_SETUP_INT[1]) & (~BIST_SETUP_INT[0]);
    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_BIRA_SETUP_SYNC (
        .a          ( MBISTPG_BIRA_SETUP_TO_SYNC                 ),
        .b          ( BIST_SHIFT_SYNC                            ),
        .o          ( MBISTPG_BIRA_SETUP_SYNC                    )
    );

    assign MBISTPG_GOID_SETUP_TO_SYNC              = BIST_SETUP_INT[2] & (~BIST_SETUP_INT[1]) & BIST_SETUP_INT[0];
    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_GOID_SETUP_SYNC (
        .a          ( MBISTPG_GOID_SETUP_TO_SYNC                 ),
        .b          ( BIST_SHIFT_SYNC                            ),
        .o          ( MBISTPG_GOID_SETUP_SYNC                    )
    );

    i0sand002ab1n02x5 tessent_persistent_cell_AND_SHORT_SETUP_SYNC (
        .a          ( (~BIST_SETUP_INT[2]) & (~BIST_SETUP_INT[1]) & (~BIST_SETUP_INT[0])       ),
        .b          ( BIST_SHIFT_SYNC                            ),
        .o          ( SHORT_SETUP_SYNC                           )
    );

    wire  BIST_DONE_PIPE0;
    assign BIST_DONE_PIPE0 = BIST_DONE;

    reg  BIST_DONE_PIPE1;
    reg  BIST_DONE_PIPE2;

    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @(posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
      if ( ~ MBISTPG_ASYNC_RESETN ) begin
        BIST_DONE_PIPE1 <= 1'b0;
        BIST_DONE_PIPE2 <= 1'b0;
      end else begin
        BIST_DONE_PIPE1 <= BIST_DONE_PIPE0;
        BIST_DONE_PIPE2 <= BIST_DONE_PIPE1;
      end
    end

    assign BIST_DONE_INT = BIST_DONE_PIPE2;

    i0sbfn000ab1n02x5 tessent_persistent_cell_MBISTPG_DONE (
        .a           (BIST_DONE_PIPE2),
        .o           (MBISTPG_DONE)
    );
    assign MBISTPG_RESET_REG_SETUP2 = RESET_REG_SETUP2;
 
    assign MBISTPG_EN_INT = MBISTPG_EN;
    //-------------------
    //-- Collar Enable --
    //-------------------
    assign BIST_COLLAR_EN0          = BIST_COLLAR_EN0_INT; // Memory ID: m1
    assign BIST_RUN_TO_COLLAR0      = BIST_RUN_TO_COLLAR0_INT; // Memory ID: m1
    assign BIST_COLLAR_EN1          = BIST_COLLAR_EN1_INT; // Memory ID: m2
    assign BIST_RUN_TO_COLLAR1      = BIST_RUN_TO_COLLAR1_INT; // Memory ID: m2
    assign BIST_COLLAR_EN2          = BIST_COLLAR_EN2_INT; // Memory ID: m3
    assign BIST_RUN_TO_COLLAR2      = BIST_RUN_TO_COLLAR2_INT; // Memory ID: m3
    assign BIST_COLLAR_EN3          = BIST_COLLAR_EN3_INT; // Memory ID: m4
    assign BIST_RUN_TO_COLLAR3      = BIST_RUN_TO_COLLAR3_INT; // Memory ID: m4
    assign BIST_COLLAR_EN4          = BIST_COLLAR_EN4_INT; // Memory ID: m5
    assign BIST_RUN_TO_COLLAR4      = BIST_RUN_TO_COLLAR4_INT; // Memory ID: m5
    assign BIST_COLLAR_EN5          = BIST_COLLAR_EN5_INT; // Memory ID: m6
    assign BIST_RUN_TO_COLLAR5      = BIST_RUN_TO_COLLAR5_INT; // Memory ID: m6
    assign BIST_COLLAR_EN6          = BIST_COLLAR_EN6_INT; // Memory ID: m7
    assign BIST_RUN_TO_COLLAR6      = BIST_RUN_TO_COLLAR6_INT; // Memory ID: m7
    assign BIST_COLLAR_EN7          = BIST_COLLAR_EN7_INT; // Memory ID: m8
    assign BIST_RUN_TO_COLLAR7      = BIST_RUN_TO_COLLAR7_INT; // Memory ID: m8
    assign BIST_COLLAR_EN8          = BIST_COLLAR_EN8_INT; // Memory ID: m9
    assign BIST_RUN_TO_COLLAR8      = BIST_RUN_TO_COLLAR8_INT; // Memory ID: m9
    assign BIST_COLLAR_EN9          = BIST_COLLAR_EN9_INT; // Memory ID: m10
    assign BIST_RUN_TO_COLLAR9      = BIST_RUN_TO_COLLAR9_INT; // Memory ID: m10
    assign BIST_COLLAR_EN10         = BIST_COLLAR_EN10_INT; // Memory ID: m11
    assign BIST_RUN_TO_COLLAR10     = BIST_RUN_TO_COLLAR10_INT; // Memory ID: m11
    assign BIST_COLLAR_EN11         = BIST_COLLAR_EN11_INT; // Memory ID: m12
    assign BIST_RUN_TO_COLLAR11     = BIST_RUN_TO_COLLAR11_INT; // Memory ID: m12
    assign BIST_COLLAR_EN12         = BIST_COLLAR_EN12_INT; // Memory ID: m13
    assign BIST_RUN_TO_COLLAR12     = BIST_RUN_TO_COLLAR12_INT; // Memory ID: m13
    assign BIST_COLLAR_EN13         = BIST_COLLAR_EN13_INT; // Memory ID: m14
    assign BIST_RUN_TO_COLLAR13     = BIST_RUN_TO_COLLAR13_INT; // Memory ID: m14
    assign BIST_COLLAR_EN14         = BIST_COLLAR_EN14_INT; // Memory ID: m15
    assign BIST_RUN_TO_COLLAR14     = BIST_RUN_TO_COLLAR14_INT; // Memory ID: m15
    assign BIST_COLLAR_EN15         = BIST_COLLAR_EN15_INT; // Memory ID: m16
    assign BIST_RUN_TO_COLLAR15     = BIST_RUN_TO_COLLAR15_INT; // Memory ID: m16
    assign BIST_COLLAR_EN16         = BIST_COLLAR_EN16_INT; // Memory ID: m17
    assign BIST_RUN_TO_COLLAR16     = BIST_RUN_TO_COLLAR16_INT; // Memory ID: m17
    assign BIST_COLLAR_EN17         = BIST_COLLAR_EN17_INT; // Memory ID: m18
    assign BIST_RUN_TO_COLLAR17     = BIST_RUN_TO_COLLAR17_INT; // Memory ID: m18
    assign BIST_COLLAR_EN18         = BIST_COLLAR_EN18_INT; // Memory ID: m19
    assign BIST_RUN_TO_COLLAR18     = BIST_RUN_TO_COLLAR18_INT; // Memory ID: m19
    assign BIST_COLLAR_EN19         = BIST_COLLAR_EN19_INT; // Memory ID: m20
    assign BIST_RUN_TO_COLLAR19     = BIST_RUN_TO_COLLAR19_INT; // Memory ID: m20
    assign BIST_COLLAR_EN20         = BIST_COLLAR_EN20_INT; // Memory ID: m21
    assign BIST_RUN_TO_COLLAR20     = BIST_RUN_TO_COLLAR20_INT; // Memory ID: m21
    assign BIST_COLLAR_EN21         = BIST_COLLAR_EN21_INT; // Memory ID: m22
    assign BIST_RUN_TO_COLLAR21     = BIST_RUN_TO_COLLAR21_INT; // Memory ID: m22
    assign BIST_COLLAR_EN22         = BIST_COLLAR_EN22_INT; // Memory ID: m23
    assign BIST_RUN_TO_COLLAR22     = BIST_RUN_TO_COLLAR22_INT; // Memory ID: m23
    assign BIST_COLLAR_EN23         = BIST_COLLAR_EN23_INT; // Memory ID: m24
    assign BIST_RUN_TO_COLLAR23     = BIST_RUN_TO_COLLAR23_INT; // Memory ID: m24
    assign BIST_COLLAR_EN24         = BIST_COLLAR_EN24_INT; // Memory ID: m25
    assign BIST_RUN_TO_COLLAR24     = BIST_RUN_TO_COLLAR24_INT; // Memory ID: m25
    assign BIST_COLLAR_EN25         = BIST_COLLAR_EN25_INT; // Memory ID: m26
    assign BIST_RUN_TO_COLLAR25     = BIST_RUN_TO_COLLAR25_INT; // Memory ID: m26
    assign BIST_COLLAR_EN26         = BIST_COLLAR_EN26_INT; // Memory ID: m27
    assign BIST_RUN_TO_COLLAR26     = BIST_RUN_TO_COLLAR26_INT; // Memory ID: m27
    assign BIST_COLLAR_EN27         = BIST_COLLAR_EN27_INT; // Memory ID: m28
    assign BIST_RUN_TO_COLLAR27     = BIST_RUN_TO_COLLAR27_INT; // Memory ID: m28
    assign BIST_COLLAR_EN28         = BIST_COLLAR_EN28_INT; // Memory ID: m29
    assign BIST_RUN_TO_COLLAR28     = BIST_RUN_TO_COLLAR28_INT; // Memory ID: m29
    assign BIST_COLLAR_EN29         = BIST_COLLAR_EN29_INT; // Memory ID: m30
    assign BIST_RUN_TO_COLLAR29     = BIST_RUN_TO_COLLAR29_INT; // Memory ID: m30
    assign BIST_COLLAR_EN30         = BIST_COLLAR_EN30_INT; // Memory ID: m31
    assign BIST_RUN_TO_COLLAR30     = BIST_RUN_TO_COLLAR30_INT; // Memory ID: m31
    assign BIST_COLLAR_EN31         = BIST_COLLAR_EN31_INT; // Memory ID: m32
    assign BIST_RUN_TO_COLLAR31     = BIST_RUN_TO_COLLAR31_INT; // Memory ID: m32
    assign BIST_COLLAR_EN32         = BIST_COLLAR_EN32_INT; // Memory ID: m33
    assign BIST_RUN_TO_COLLAR32     = BIST_RUN_TO_COLLAR32_INT; // Memory ID: m33
    assign BIST_COLLAR_EN33         = BIST_COLLAR_EN33_INT; // Memory ID: m34
    assign BIST_RUN_TO_COLLAR33     = BIST_RUN_TO_COLLAR33_INT; // Memory ID: m34
    assign BIST_COLLAR_EN34         = BIST_COLLAR_EN34_INT; // Memory ID: m35
    assign BIST_RUN_TO_COLLAR34     = BIST_RUN_TO_COLLAR34_INT; // Memory ID: m35
    assign BIST_COLLAR_EN35         = BIST_COLLAR_EN35_INT; // Memory ID: m36
    assign BIST_RUN_TO_COLLAR35     = BIST_RUN_TO_COLLAR35_INT; // Memory ID: m36
    assign BIST_COLLAR_EN36         = BIST_COLLAR_EN36_INT; // Memory ID: m37
    assign BIST_RUN_TO_COLLAR36     = BIST_RUN_TO_COLLAR36_INT; // Memory ID: m37
    assign BIST_COLLAR_EN37         = BIST_COLLAR_EN37_INT; // Memory ID: m38
    assign BIST_RUN_TO_COLLAR37     = BIST_RUN_TO_COLLAR37_INT; // Memory ID: m38
    assign BIST_COLLAR_EN38         = BIST_COLLAR_EN38_INT; // Memory ID: m39
    assign BIST_RUN_TO_COLLAR38     = BIST_RUN_TO_COLLAR38_INT; // Memory ID: m39
    assign BIST_COLLAR_EN39         = BIST_COLLAR_EN39_INT; // Memory ID: m40
    assign BIST_RUN_TO_COLLAR39     = BIST_RUN_TO_COLLAR39_INT; // Memory ID: m40
    assign BIST_COLLAR_EN0_INT      = BIST_COLLAR_EN0_PRE;
    assign BIST_RUN_TO_COLLAR0_INT                 = BIST_RUN_TO_COLLAR0_PRE;
    assign BIST_COLLAR_EN1_INT      = BIST_COLLAR_EN1_PRE;
    assign BIST_RUN_TO_COLLAR1_INT                 = BIST_RUN_TO_COLLAR1_PRE;
    assign BIST_COLLAR_EN2_INT      = BIST_COLLAR_EN2_PRE;
    assign BIST_RUN_TO_COLLAR2_INT                 = BIST_RUN_TO_COLLAR2_PRE;
    assign BIST_COLLAR_EN3_INT      = BIST_COLLAR_EN3_PRE;
    assign BIST_RUN_TO_COLLAR3_INT                 = BIST_RUN_TO_COLLAR3_PRE;
    assign BIST_COLLAR_EN4_INT      = BIST_COLLAR_EN4_PRE;
    assign BIST_RUN_TO_COLLAR4_INT                 = BIST_RUN_TO_COLLAR4_PRE;
    assign BIST_COLLAR_EN5_INT      = BIST_COLLAR_EN5_PRE;
    assign BIST_RUN_TO_COLLAR5_INT                 = BIST_RUN_TO_COLLAR5_PRE;
    assign BIST_COLLAR_EN6_INT      = BIST_COLLAR_EN6_PRE;
    assign BIST_RUN_TO_COLLAR6_INT                 = BIST_RUN_TO_COLLAR6_PRE;
    assign BIST_COLLAR_EN7_INT      = BIST_COLLAR_EN7_PRE;
    assign BIST_RUN_TO_COLLAR7_INT                 = BIST_RUN_TO_COLLAR7_PRE;
    assign BIST_COLLAR_EN8_INT      = BIST_COLLAR_EN8_PRE;
    assign BIST_RUN_TO_COLLAR8_INT                 = BIST_RUN_TO_COLLAR8_PRE;
    assign BIST_COLLAR_EN9_INT      = BIST_COLLAR_EN9_PRE;
    assign BIST_RUN_TO_COLLAR9_INT                 = BIST_RUN_TO_COLLAR9_PRE;
    assign BIST_COLLAR_EN10_INT     = BIST_COLLAR_EN10_PRE;
    assign BIST_RUN_TO_COLLAR10_INT                = BIST_RUN_TO_COLLAR10_PRE;
    assign BIST_COLLAR_EN11_INT     = BIST_COLLAR_EN11_PRE;
    assign BIST_RUN_TO_COLLAR11_INT                = BIST_RUN_TO_COLLAR11_PRE;
    assign BIST_COLLAR_EN12_INT     = BIST_COLLAR_EN12_PRE;
    assign BIST_RUN_TO_COLLAR12_INT                = BIST_RUN_TO_COLLAR12_PRE;
    assign BIST_COLLAR_EN13_INT     = BIST_COLLAR_EN13_PRE;
    assign BIST_RUN_TO_COLLAR13_INT                = BIST_RUN_TO_COLLAR13_PRE;
    assign BIST_COLLAR_EN14_INT     = BIST_COLLAR_EN14_PRE;
    assign BIST_RUN_TO_COLLAR14_INT                = BIST_RUN_TO_COLLAR14_PRE;
    assign BIST_COLLAR_EN15_INT     = BIST_COLLAR_EN15_PRE;
    assign BIST_RUN_TO_COLLAR15_INT                = BIST_RUN_TO_COLLAR15_PRE;
    assign BIST_COLLAR_EN16_INT     = BIST_COLLAR_EN16_PRE;
    assign BIST_RUN_TO_COLLAR16_INT                = BIST_RUN_TO_COLLAR16_PRE;
    assign BIST_COLLAR_EN17_INT     = BIST_COLLAR_EN17_PRE;
    assign BIST_RUN_TO_COLLAR17_INT                = BIST_RUN_TO_COLLAR17_PRE;
    assign BIST_COLLAR_EN18_INT     = BIST_COLLAR_EN18_PRE;
    assign BIST_RUN_TO_COLLAR18_INT                = BIST_RUN_TO_COLLAR18_PRE;
    assign BIST_COLLAR_EN19_INT     = BIST_COLLAR_EN19_PRE;
    assign BIST_RUN_TO_COLLAR19_INT                = BIST_RUN_TO_COLLAR19_PRE;
    assign BIST_COLLAR_EN20_INT     = BIST_COLLAR_EN20_PRE;
    assign BIST_RUN_TO_COLLAR20_INT                = BIST_RUN_TO_COLLAR20_PRE;
    assign BIST_COLLAR_EN21_INT     = BIST_COLLAR_EN21_PRE;
    assign BIST_RUN_TO_COLLAR21_INT                = BIST_RUN_TO_COLLAR21_PRE;
    assign BIST_COLLAR_EN22_INT     = BIST_COLLAR_EN22_PRE;
    assign BIST_RUN_TO_COLLAR22_INT                = BIST_RUN_TO_COLLAR22_PRE;
    assign BIST_COLLAR_EN23_INT     = BIST_COLLAR_EN23_PRE;
    assign BIST_RUN_TO_COLLAR23_INT                = BIST_RUN_TO_COLLAR23_PRE;
    assign BIST_COLLAR_EN24_INT     = BIST_COLLAR_EN24_PRE;
    assign BIST_RUN_TO_COLLAR24_INT                = BIST_RUN_TO_COLLAR24_PRE;
    assign BIST_COLLAR_EN25_INT     = BIST_COLLAR_EN25_PRE;
    assign BIST_RUN_TO_COLLAR25_INT                = BIST_RUN_TO_COLLAR25_PRE;
    assign BIST_COLLAR_EN26_INT     = BIST_COLLAR_EN26_PRE;
    assign BIST_RUN_TO_COLLAR26_INT                = BIST_RUN_TO_COLLAR26_PRE;
    assign BIST_COLLAR_EN27_INT     = BIST_COLLAR_EN27_PRE;
    assign BIST_RUN_TO_COLLAR27_INT                = BIST_RUN_TO_COLLAR27_PRE;
    assign BIST_COLLAR_EN28_INT     = BIST_COLLAR_EN28_PRE;
    assign BIST_RUN_TO_COLLAR28_INT                = BIST_RUN_TO_COLLAR28_PRE;
    assign BIST_COLLAR_EN29_INT     = BIST_COLLAR_EN29_PRE;
    assign BIST_RUN_TO_COLLAR29_INT                = BIST_RUN_TO_COLLAR29_PRE;
    assign BIST_COLLAR_EN30_INT     = BIST_COLLAR_EN30_PRE;
    assign BIST_RUN_TO_COLLAR30_INT                = BIST_RUN_TO_COLLAR30_PRE;
    assign BIST_COLLAR_EN31_INT     = BIST_COLLAR_EN31_PRE;
    assign BIST_RUN_TO_COLLAR31_INT                = BIST_RUN_TO_COLLAR31_PRE;
    assign BIST_COLLAR_EN32_INT     = BIST_COLLAR_EN32_PRE;
    assign BIST_RUN_TO_COLLAR32_INT                = BIST_RUN_TO_COLLAR32_PRE;
    assign BIST_COLLAR_EN33_INT     = BIST_COLLAR_EN33_PRE;
    assign BIST_RUN_TO_COLLAR33_INT                = BIST_RUN_TO_COLLAR33_PRE;
    assign BIST_COLLAR_EN34_INT     = BIST_COLLAR_EN34_PRE;
    assign BIST_RUN_TO_COLLAR34_INT                = BIST_RUN_TO_COLLAR34_PRE;
    assign BIST_COLLAR_EN35_INT     = BIST_COLLAR_EN35_PRE;
    assign BIST_RUN_TO_COLLAR35_INT                = BIST_RUN_TO_COLLAR35_PRE;
    assign BIST_COLLAR_EN36_INT     = BIST_COLLAR_EN36_PRE;
    assign BIST_RUN_TO_COLLAR36_INT                = BIST_RUN_TO_COLLAR36_PRE;
    assign BIST_COLLAR_EN37_INT     = BIST_COLLAR_EN37_PRE;
    assign BIST_RUN_TO_COLLAR37_INT                = BIST_RUN_TO_COLLAR37_PRE;
    assign BIST_COLLAR_EN38_INT     = BIST_COLLAR_EN38_PRE;
    assign BIST_RUN_TO_COLLAR38_INT                = BIST_RUN_TO_COLLAR38_PRE;
    assign BIST_COLLAR_EN39_INT     = BIST_COLLAR_EN39_PRE;
    assign BIST_RUN_TO_COLLAR39_INT                = BIST_RUN_TO_COLLAR39_PRE;
    assign BIST_RUN_TO_COLLAR0_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[0] ;
    assign BIST_RUN_TO_COLLAR1_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[1] ;
    assign BIST_RUN_TO_COLLAR2_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[2] ;
    assign BIST_RUN_TO_COLLAR3_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[3] ;
    assign BIST_RUN_TO_COLLAR4_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[4] ;
    assign BIST_RUN_TO_COLLAR5_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[5] ;
    assign BIST_RUN_TO_COLLAR6_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[6] ;
    assign BIST_RUN_TO_COLLAR7_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[7] ;
    assign BIST_RUN_TO_COLLAR8_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[8] ;
    assign BIST_RUN_TO_COLLAR9_PRE                 = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[9] ;
    assign BIST_RUN_TO_COLLAR10_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[10] ;
    assign BIST_RUN_TO_COLLAR11_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[11] ;
    assign BIST_RUN_TO_COLLAR12_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[12] ;
    assign BIST_RUN_TO_COLLAR13_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[13] ;
    assign BIST_RUN_TO_COLLAR14_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[14] ;
    assign BIST_RUN_TO_COLLAR15_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[15] ;
    assign BIST_RUN_TO_COLLAR16_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[16] ;
    assign BIST_RUN_TO_COLLAR17_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[17] ;
    assign BIST_RUN_TO_COLLAR18_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[18] ;
    assign BIST_RUN_TO_COLLAR19_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[19] ;
    assign BIST_RUN_TO_COLLAR20_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[20] ;
    assign BIST_RUN_TO_COLLAR21_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[21] ;
    assign BIST_RUN_TO_COLLAR22_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[22] ;
    assign BIST_RUN_TO_COLLAR23_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[23] ;
    assign BIST_RUN_TO_COLLAR24_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[24] ;
    assign BIST_RUN_TO_COLLAR25_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[25] ;
    assign BIST_RUN_TO_COLLAR26_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[26] ;
    assign BIST_RUN_TO_COLLAR27_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[27] ;
    assign BIST_RUN_TO_COLLAR28_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[28] ;
    assign BIST_RUN_TO_COLLAR29_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[29] ;
    assign BIST_RUN_TO_COLLAR30_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[30] ;
    assign BIST_RUN_TO_COLLAR31_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[31] ;
    assign BIST_RUN_TO_COLLAR32_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[32] ;
    assign BIST_RUN_TO_COLLAR33_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[33] ;
    assign BIST_RUN_TO_COLLAR34_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[34] ;
    assign BIST_RUN_TO_COLLAR35_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[35] ;
    assign BIST_RUN_TO_COLLAR36_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[36] ;
    assign BIST_RUN_TO_COLLAR37_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[37] ;
    assign BIST_RUN_TO_COLLAR38_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[38] ;
    assign BIST_RUN_TO_COLLAR39_PRE                = (BIST_RUN_INT|BIST_RUN_PIPE) & MEM_SELECT_REG_INT[39] ;
    assign BIST_COLLAR_EN0_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[0] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN1_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[1] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN2_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[2] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN3_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[3] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN4_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[4] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN5_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[5] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN6_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[6] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN7_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[7] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN8_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[8] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN9_PRE      = BIST_RUN_INT & MEM_SELECT_REG_INT[9] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN10_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[10] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN11_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[11] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN12_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[12] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN13_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[13] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN14_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[14] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN15_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[15] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN16_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[16] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN17_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[17] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN18_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[18] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN19_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[19] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN20_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[20] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN21_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[21] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN22_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[22] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN23_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[23] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN24_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[24] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN25_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[25] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN26_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[26] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN27_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[27] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN28_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[28] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN29_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[29] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN30_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[30] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN31_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[31] & (~(X_ADDRESS > 8'b01111111)) ;
    assign BIST_COLLAR_EN32_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[32] & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN33_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[33] & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN34_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[34] & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN35_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[35] & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN36_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[36] & (~(X_ADDRESS > 8'b01111111)) & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN37_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[37] & (~(X_ADDRESS > 8'b01111111)) & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN38_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[38] & (~(X_ADDRESS > 8'b01111111)) & (~(Y_ADDRESS > 3'b011)) ;
    assign BIST_COLLAR_EN39_PRE     = BIST_RUN_INT & MEM_SELECT_REG_INT[39] & (~(X_ADDRESS > 8'b01111111)) & (~(Y_ADDRESS > 3'b011)) ;
 
 
    assign BIST_SHIFT_SHORT  = BIST_HOLD_INT & MBISTPG_EN_INT & (~BIST_SETUP2) & (~BIST_SETUP[1]);  
    assign BIST_SHIFT_SYNC   = BIST_HOLD_INT & MBISTPG_EN_INT;
    assign BIST_SHIFT_GOID   = BIST_HOLD_INT & MBISTPG_EN_INT & BIST_SETUP2 & (~BIST_SETUP[1]) & BIST_SETUP[0];
    assign BIST_SHIFT_BIRA   = BIST_HOLD_INT & MBISTPG_EN_INT & BIST_SETUP2 & (~BIST_SETUP[1]) & (~BIST_SETUP[0]);
    assign BIST_HOLD_INT = BIST_HOLD;
    
  assign BIST_ON_TO_BUF           = BIST_EN_RETIME2;  
    i0sand002ab1n02x5 tessent_persistent_cell_AND_DEFAULT_MODE (
        .a          ( ~BIST_SETUP[0]                             ),
        .b          ( BIST_ON_TO_BUF                             ),
        .o          ( DEFAULT_MODE                               )
    );
 
  assign BIST_HOLD_R              = BIST_HOLD_INT;            
    i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_ON (
        .a           (BIST_ON_TO_BUF),
        .o           (BIST_ON)
    );    
 
 
    assign BYPASS_RUN_STATE_INT     = (MBISTPG_MEM_RST_SYNC & (MBISTPG_ALGO_MODE_INT != 2'b00)) | (MEM_ARRAY_DUMP_MODE & BIST_SETUP_SYNC[1] & BIST_SETUP_SYNC[0]);
    firebird7_in_gate1_tessent_mbist_c1_controller_fsm MBISTPG_FSM (
       .BIST_CLK                    (BIST_CLK_INT                ), 
       .BIST_ON                     (BIST_ON_TO_BUF              ),
       .BIST_HOLD_R                 (BIST_HOLD_R                 ),
       .BYPASS_RUN_STATE            (BYPASS_RUN_STATE_INT        ),
       .BIST_ASYNC_RESETN           (MBISTPG_ASYNC_RESETN        ),
       .PAUSETOEND_ALGO_MODE        (PAUSETOEND_ALGO_MODE                       ),
       .LAST_STATE_DONE_PIPELINED   (LAST_STATE_DONE_PIPELINED   ),
       .SETUP_PULSE1                (SETUP_PULSE1                ),
       .SETUP_PULSE2                (SETUP_PULSE2                ),
       .BIST_RUN                    (BIST_RUN_INT                ),
       .BIST_RUN_PIPE               (BIST_RUN_PIPE               ),
       .BIST_INIT                   (BIST_INIT                   ),
       .BIST_DONE                   (BIST_DONE                   ),
       .BIST_IDLE_PULSE             (BIST_IDLE_PULSE             ),
       .BIST_IDLE                   (BIST_IDLE                   )
    );                     
    i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_RUN (
        .a           (BIST_RUN_INT),
        .o           (BIST_RUN)
    );    
 
  reg BIST_SI_PIPELINE;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          BIST_SI_PIPELINE <= 1'b0;
       else
          BIST_SI_PIPELINE <= BIST_SI_SYNC;
    end

    //----------------
    // DIAGNOSIS MODE
    //----------------
    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_DIAG_EN_GATED (
        .a          ( MBISTPG_DIAG_EN                            ),
        .b          ( BIST_ON                                    ),
        .o          ( MBISTPG_DIAG_EN_GATED                      )
    );

    assign MBISTPG_DIAG_EN_SYNC = MBISTPG_DIAG_EN_GATED;
    assign DIAG_EN_SI = BIST_SI_PIPELINE;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          DIAG_EN_R <= 1'b0;
       else     
       if (BIST_SHIFT_SHORT) begin
          DIAG_EN_R <= DIAG_EN_SI;
       end else begin
          if ((~BIST_HOLD_R_INT) & CLEAR_DEFAULT) begin
             DIAG_EN_R <= MBISTPG_DIAG_EN_SYNC;
          end
       end
    end
    assign DIAG_EN_SO = DIAG_EN_R;
    assign BIST_DIAG_EN = DIAG_EN_R;

    //-------------------------
    // Redundancy Analysis MODE
    //-------------------------
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          BIRA_EN_R <= 1'b0;
       else     
       if (BIST_SHIFT_SHORT) begin
          BIRA_EN_R <= DIAG_EN_SO;
       end else begin
          if ((~BIST_HOLD_R_INT) & CLEAR_DEFAULT) begin
             BIRA_EN_R <= MBISTPG_BIRA_EN_SYNC;
          end
       end
    end

    //-------------------------
    // SpareElementPriority register 
    //-------------------------
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          PriorityColumn_R <= 1'b0;
       else     
       if (BIST_SHIFT_SHORT) begin
          PriorityColumn_R <= BIRA_EN_R;
       end else begin
          if ((~BIST_HOLD_R_INT) & CLEAR_DEFAULT) begin
             PriorityColumn_R <= 1'b1;
          end
       end
    end

wire CMP_EN;
wire CMP_EN_IN;
assign CMP_EN_IN = BIST_CMP;

 
reg CMP_EN_MASK_EN,CMP_EN_MASK;
wire CMP_EN_INT;
 
// synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
always_ff @(posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
  if ( ~MBISTPG_ASYNC_RESETN ) begin
    CMP_EN_MASK_EN <= 1'b0;
    CMP_EN_MASK    <= 1'b0;
  end else
  if ( BIST_SHIFT_SHORT ) begin
    CMP_EN_MASK_EN <= PriorityColumn_R;
    CMP_EN_MASK    <= CMP_EN_MASK_EN;
  end else begin
    if ( CLEAR_DEFAULT ) begin
      CMP_EN_MASK_EN <= 1'b0;
      CMP_EN_MASK    <= 1'b0;
    end else begin
      if ( (~BIST_HOLD_R_INT) & GO_EN ) begin
          CMP_EN_MASK    <= ~CMP_EN_MASK;
      end
    end
  end
end
assign CMP_EN_INT = CMP_EN_IN; 
reg  CMP_EN_R;
  // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
      if (~MBISTPG_ASYNC_RESETN) begin
         CMP_EN_R    <= 1'b0;
      end else begin
         CMP_EN_R    <= (~FREEZE_GO_ID) & (~HOLD_EN);
      end
   end
assign BIST_CMP      = BIST_CMP_INT;
assign BIST_CMP_INT                 = BIST_CMP_FROM_SIGNAL_GEN & (~BIST_HOLD_R_INT) & (~INH_DATA_CMP_MODIFIED) & ((~CMP_EN_MASK_EN) | CMP_EN_MASK); 
assign CMP_EN = CMP_EN_INT;

    //-------------------
    // GO_ID Chain Muxing
    //-------------------
    wire GOID_CHAIN_SO;
    assign GOID_CHAIN_SO = (MEM_SELECT_REG[39] & ( MEM38_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[38] & ( MEM37_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[37] & ( MEM36_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[36] & ( MEM35_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[35] & ( MEM34_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[34] & ( MEM33_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[33] & ( MEM32_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[32] & ( MEM31_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[31] & ( MEM30_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[30] & ( MEM29_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[29] & ( MEM28_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[28] & ( MEM27_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[27] & ( MEM26_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[26] & ( MEM25_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[25] & ( MEM24_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[24] & ( MEM23_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[23] & ( MEM22_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[22] & ( MEM21_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[21] & ( MEM20_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[20] & ( MEM19_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[19] & ( MEM18_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[18] & ( MEM17_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[17] & ( MEM16_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[16] & ( MEM15_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[15] & ( MEM14_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[14] & ( MEM13_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[13] & ( MEM12_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[12] & ( MEM11_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[11] & ( MEM10_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[10] & ( MEM9_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[9] & ( MEM8_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[8] & ( MEM7_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[7] & ( MEM6_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[6] & ( MEM5_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[5] & ( MEM4_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[4] & ( MEM3_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[3] & ( MEM2_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[2] & ( MEM1_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[1] & ( MEM0_BIST_COLLAR_SI_RetimeOut  ) ) |
                           (MEM_SELECT_REG[0] & ( MEM0_BIST_COLLAR_SO_RetimeIn  ) ) ;

    //-------------------------------
    // SELECTIVE PARALLEL MEMORY TEST
    //-------------------------------
    // Step 0  
    //     MemoryInstance M1 enabled by register MEM_SELECT_REG[0]  
    //     MemoryInstance M2 enabled by register MEM_SELECT_REG[1]  
    //     MemoryInstance M3 enabled by register MEM_SELECT_REG[2]  
    //     MemoryInstance M4 enabled by register MEM_SELECT_REG[3]  
    //     MemoryInstance M5 enabled by register MEM_SELECT_REG[4]  
    //     MemoryInstance M6 enabled by register MEM_SELECT_REG[5]  
    //     MemoryInstance M7 enabled by register MEM_SELECT_REG[6]  
    //     MemoryInstance M8 enabled by register MEM_SELECT_REG[7]  
    //     MemoryInstance M9 enabled by register MEM_SELECT_REG[8]  
    //     MemoryInstance M10 enabled by register MEM_SELECT_REG[9]  
    //     MemoryInstance M11 enabled by register MEM_SELECT_REG[10]  
    //     MemoryInstance M12 enabled by register MEM_SELECT_REG[11]  
    //     MemoryInstance M13 enabled by register MEM_SELECT_REG[12]  
    //     MemoryInstance M14 enabled by register MEM_SELECT_REG[13]  
    //     MemoryInstance M15 enabled by register MEM_SELECT_REG[14]  
    //     MemoryInstance M16 enabled by register MEM_SELECT_REG[15]  
    //     MemoryInstance M17 enabled by register MEM_SELECT_REG[16]  
    //     MemoryInstance M18 enabled by register MEM_SELECT_REG[17]  
    //     MemoryInstance M19 enabled by register MEM_SELECT_REG[18]  
    //     MemoryInstance M20 enabled by register MEM_SELECT_REG[19]  
    //     MemoryInstance M21 enabled by register MEM_SELECT_REG[20]  
    //     MemoryInstance M22 enabled by register MEM_SELECT_REG[21]  
    //     MemoryInstance M23 enabled by register MEM_SELECT_REG[22]  
    //     MemoryInstance M24 enabled by register MEM_SELECT_REG[23]  
    //     MemoryInstance M25 enabled by register MEM_SELECT_REG[24]  
    //     MemoryInstance M26 enabled by register MEM_SELECT_REG[25]  
    //     MemoryInstance M27 enabled by register MEM_SELECT_REG[26]  
    //     MemoryInstance M28 enabled by register MEM_SELECT_REG[27]  
    //     MemoryInstance M29 enabled by register MEM_SELECT_REG[28]  
    //     MemoryInstance M30 enabled by register MEM_SELECT_REG[29]  
    //     MemoryInstance M31 enabled by register MEM_SELECT_REG[30]  
    //     MemoryInstance M32 enabled by register MEM_SELECT_REG[31]  
    //     MemoryInstance M33 enabled by register MEM_SELECT_REG[32]  
    //     MemoryInstance M34 enabled by register MEM_SELECT_REG[33]  
    //     MemoryInstance M35 enabled by register MEM_SELECT_REG[34]  
    //     MemoryInstance M36 enabled by register MEM_SELECT_REG[35]  
    //     MemoryInstance M37 enabled by register MEM_SELECT_REG[36]  
    //     MemoryInstance M38 enabled by register MEM_SELECT_REG[37]  
    //     MemoryInstance M39 enabled by register MEM_SELECT_REG[38]  
    //     MemoryInstance M40 enabled by register MEM_SELECT_REG[39]  
    assign MEM_SELECT_REG_SI = CMP_EN_MASK;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
        if (~MBISTPG_ASYNC_RESETN)
            MEM_SELECT_REG          <= {40{1'b1}};
        else 
        if (BIST_SHIFT_SHORT)
            MEM_SELECT_REG          <= {MEM_SELECT_REG[38:0], MEM_SELECT_REG_SI};
        else
        if ((~BIST_HOLD_R_INT) & CLEAR_DEFAULT & (~MEM_ARRAY_DUMP_MODE))
            MEM_SELECT_REG          <= {40{1'b1}};
    end
    assign MEM_SELECT_REG_SO = MEM_SELECT_REG[39];
    assign MEM_SELECT_REG_INT = MEM_SELECT_REG;

    //------------------------
    // REDUCED ADDRESS COUNT
    //------------------------
    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_REDUCED_ADDR_CNT_EN_SYNC (
        .a          ( MBISTPG_REDUCED_ADDR_CNT_EN                ),
        .b          ( BIST_ON                                    ),
        .o          ( MBISTPG_REDUCED_ADDR_CNT_EN_SYNC           )
    );

    assign REDUCED_ADDR_CNT_EN_SI = MEM_SELECT_REG_SO;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          REDUCED_ADDR_CNT_EN_REG   <= 1'b0;
       else
       if (BIST_SHIFT_SHORT) begin
          REDUCED_ADDR_CNT_EN_REG                  <= REDUCED_ADDR_CNT_EN_SI;
       end else begin
          if ((~BIST_HOLD_R_INT) & CLEAR_DEFAULT) begin
             REDUCED_ADDR_CNT_EN_REG               <= MBISTPG_REDUCED_ADDR_CNT_EN_SYNC; 
          end
       end
    end
    assign REDUCED_ADDR_CNT_EN_SO = REDUCED_ADDR_CNT_EN_REG;
    assign MBISTPG_REDUCED_ADDR_CNT_EN_INT = REDUCED_ADDR_CNT_EN_REG ;

    //------------------------
    // PARALLEL RETENTION TEST
    //------------------------
    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_ALGO_MODE_SYNC0 (
        .a          ( MBISTPG_ALGO_MODE[0]                       ),
        .b          ( BIST_ON                                    ),
        .o          ( MBISTPG_ALGO_MODE_SYNC[0]                  )
    );

    i0sand002ab1n02x5 tessent_persistent_cell_AND_MBISTPG_ALGO_MODE_SYNC1 (
        .a          ( MBISTPG_ALGO_MODE[1]                       ),
        .b          ( BIST_ON                                    ),
        .o          ( MBISTPG_ALGO_MODE_SYNC[1]                  )
    );

    assign MBISTPG_ALGO_MODE_INT = MBISTPG_ALGO_MODE_SYNC;
    assign PAUSETOEND_ALGO_MODE     = (MBISTPG_ALGO_MODE_INT == 2'b11);

    //------------------------
    // HARDCODED ALGO DECODE
    //------------------------
    assign ALGO_SEL_SI = REDUCED_ADDR_CNT_EN_SO;
    // synopsys sync_set_reset "ALGO_SEL_RST"
    assign ALGO_SEL_RST = (~BIST_HOLD_R_INT) & CLEAR_DEFAULT & (~MEM_ARRAY_DUMP_MODE);
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          ALGO_SEL_REG              <= 1'b0;
       else
       if (ALGO_SEL_RST) begin
          ALGO_SEL_REG              <= 1'b0;
       end else begin
          if (BIST_SHIFT_SHORT) begin
             ALGO_SEL_REG           <= ALGO_SEL_SI;
          end
       end
    end
    assign ALGO_SEL_SO = ALGO_SEL_REG;

    //------------------------
    // HARDCODED ALGO SELECT
    //------------------------
    assign ALGO_SEL_CNT_SI = ALGO_SEL_SO;
    // synopsys sync_set_reset "ALGO_SEL_CNT_RST"
    assign ALGO_SEL_CNT_RST = (~BIST_HOLD_R_INT) & CLEAR_DEFAULT & (~MEM_ARRAY_DUMP_MODE);
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          ALGO_SEL_CNT_REG          <= 1'b0;
       else
       if (ALGO_SEL_CNT_RST) begin
          ALGO_SEL_CNT_REG          <= 1'b0;
       end else begin
          if (BIST_SHIFT_SHORT) begin
             ALGO_SEL_CNT_REG       <= ALGO_SEL_CNT_SI;
          end
       end
    end
    assign ALGO_SEL_CNT_SO = ALGO_SEL_CNT_REG;

    //------------------------
    // COMMON OPSET SELECT
    //------------------------
    assign SELECT_COMMON_OPSET_SI = ALGO_SEL_CNT_SO;
    // synopsys sync_set_reset "SELECT_COMMON_OPSET_RST"
    assign SELECT_COMMON_OPSET_RST = (~BIST_HOLD_R_INT) & CLEAR_DEFAULT & (~MEM_ARRAY_DUMP_MODE);
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          SELECT_COMMON_OPSET_REG   <= 1'b0;
       else
       if (SELECT_COMMON_OPSET_RST) begin
          SELECT_COMMON_OPSET_REG   <= 1'b0;
       end else begin
          if (BIST_SHIFT_SHORT) begin
             SELECT_COMMON_OPSET_REG               <= SELECT_COMMON_OPSET_SI;
          end
       end
    end
    assign SELECT_COMMON_OPSET_SO = SELECT_COMMON_OPSET_REG;

    //------------------------
    // COMMON DATA PATTERN SELECT
    //------------------------
    assign SELECT_COMMON_DATA_PAT_SI = SELECT_COMMON_OPSET_SO;
    // synopsys sync_set_reset "SELECT_COMMON_DATA_PAT_RST"
    assign SELECT_COMMON_DATA_PAT_RST = (~BIST_HOLD_R_INT) & CLEAR_DEFAULT & (~MEM_ARRAY_DUMP_MODE);
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          SELECT_COMMON_DATA_PAT_REG               <= 1'b0;
       else
       if (SELECT_COMMON_DATA_PAT_RST) begin
          SELECT_COMMON_DATA_PAT_REG               <= 1'b0;
       end else begin
          if (BIST_SHIFT_SHORT) begin
             SELECT_COMMON_DATA_PAT_REG            <= SELECT_COMMON_DATA_PAT_SI;
          end
       end
    end
    assign SELECT_COMMON_DATA_PAT_SO = SELECT_COMMON_DATA_PAT_REG;

    //------------------------
    // MICROCODE ARRAY ENABLE
    //------------------------
    assign MICROCODE_EN_SI = SELECT_COMMON_DATA_PAT_SO;
    // synopsys sync_set_reset "MICROCODE_EN_RST"
    assign MICROCODE_EN_RST = (~BIST_HOLD_R_INT) & CLEAR_DEFAULT & (~MEM_ARRAY_DUMP_MODE);
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          MICROCODE_EN_REG          <= 1'b0;
       else
       if (MICROCODE_EN_RST) begin
          MICROCODE_EN_REG          <= 1'b0; 
       end else begin
          if (BIST_SHIFT_SHORT) begin
             MICROCODE_EN_REG       <= MICROCODE_EN_SI;
          end
       end
    end
    assign MICROCODE_EN_SO = MICROCODE_EN_REG;

    //------------------------
    // MEMORY ARRAY DUMP MODE
    //------------------------
    assign MEM_ARRAY_DUMP_MODE_SI = MICROCODE_EN_SO;
    assign MEM_ARRAY_DUMP_MODE_SO = MEM_ARRAY_DUMP_MODE_R;
    assign MEM_ARRAY_DUMP_MODE_RST = (~BIST_HOLD_R_INT) & CLEAR_DEFAULT;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ ( posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN ) begin
       if (~MBISTPG_ASYNC_RESETN)
          MEM_ARRAY_DUMP_MODE_R     <= 1'b0;
       else
       if (MEM_ARRAY_DUMP_MODE_RST) begin
          MEM_ARRAY_DUMP_MODE_R     <= 1'b0; 
       end else begin
          if (BIST_SHIFT_SHORT) begin
             MEM_ARRAY_DUMP_MODE_R                 <= MEM_ARRAY_DUMP_MODE_SI;
          end
       end
    end
    assign MEM_ARRAY_DUMP_MODE = DEFAULT_MODE ? MBISTPG_MEM_ARRAY_DUMP_MODE : MEM_ARRAY_DUMP_MODE_R;

    assign POINTER_CNTRL_SI         = MEM_ARRAY_DUMP_MODE_SO;
    firebird7_in_gate1_tessent_mbist_c1_controller_pointer_cntrl MBISTPG_POINTER_CNTRL ( 
       .BIST_CLK                                   ( BIST_CLK_INT                              ),
       .RESET_REG_SETUP1                           (RESET_REG_SETUP1                           ),
       .RESET_REG_DEFAULT_MODE                     (RESET_REG_DEFAULT_MODE                     ),
       .DEFAULT_MODE                               (DEFAULT_MODE                               ),
       .BIST_MICROCODE_EN                          (MICROCODE_EN_REG                           ),
       .RESET_REG_SETUP2                           (RESET_REG_SETUP2                           ),
       .BIST_RUN                                   (BIST_RUN                                   ),
       .BIST_ON                                    (BIST_ON_TO_BUF              ),
       .LAST_TICK                                  (LAST_TICK                                  ),
       .BIST_ASYNC_RESETN                          (MBISTPG_ASYNC_RESETN        ),
       .ALGO_MODE                                  (MBISTPG_ALGO_MODE_INT       ),
       .MEM_RST                                    (MBISTPG_MEM_RST_SYNC        ),
       .CHKBCI_PHASE                               (CHKBCI_PHASE_INT                           ),       
       .OPSET_SELECT_DECODED                       (OPSET_SELECT_DECODED                       ),
       .ESOE_RESET                                 (ESOE_RESET                                 ),
       .OP_SELECT_CMD                              (OP_SELECT_CMD                              ),
       .A_EQUALS_B_INVERT_DATA                     (A_EQUALS_B_INVERT_DATA                     ),
       .ADD_Y0_CMD                                 (ADD_Y0_CMD                                 ),
       .ADD_Y1_CMD                                 (ADD_Y1_CMD                                 ),
       .ADD_X0_CMD                                 (ADD_X0_CMD                                 ),
       .ADD_X1_CMD                                 (ADD_X1_CMD                                 ),
       .ADD_REG_SELECT                             (ADD_REG_SELECT                             ),
       .WDATA_CMD                                  (WDATA_CMD                                  ),
       .EDATA_CMD                                  (EDATA_CMD                                  ),
       .LOOP_CMD                                   (LOOP_CMD                                   ),
       .COUNTERA_CMD                               (COUNTERA_CMD                               ),
       .INH_LAST_ADDR_CNT                          (INH_LAST_ADDR_CNT                          ),
       .INH_DATA_CMP                               (INH_DATA_CMP                               ),
       .DELAYCOUNTER_CMD                           (DELAYCOUNTER_CMD                           ),
       .Y0_MINMAX_TRIGGER                          (Y0_MINMAX_TRIGGER                          ),
       .Y1_MINMAX_TRIGGER                          (Y1_MINMAX_TRIGGER                          ),
       .X0_MINMAX_TRIGGER                          (X0_MINMAX_TRIGGER                          ),
       .X1_MINMAX_TRIGGER                          (X1_MINMAX_TRIGGER                          ),
       .DELAYCOUNTER_ENDCOUNT_TRIGGER              (DELAYCOUNTER_ENDCOUNT_TRIGGER              ),
       .COUNTERA_ENDCOUNT_TRIGGER                  (COUNTERA_ENDCOUNT_TRIGGER                  ),
       .LOOPCOUNTMAX_TRIGGER                       (LOOPCOUNTMAX_TRIGGER                       ),
       .LOOP_POINTER                               (LOOP_POINTER                               ),
       .BIST_HOLD                                  (BIST_HOLD_R_INT                            ),
       .BIST_SHIFT_SHORT                           (BIST_SHIFT_SHORT                           ),
       .SI                                         (POINTER_CNTRL_SI                           ),
       .SHORT_SETUP                                (SHORT_SETUP_SYNC                           ),
       .SO                                         (POINTER_CNTRL_SO                           ),
       .LAST_STATE                                 (LAST_STATE                                 ),
       .LAST_STATE_DONE                            (LAST_STATE_DONE                            ),
       .LAST_STATE_DONE_PIPELINED                  (LAST_STATE_DONE_PIPELINED                  ),
       .MBISTPG_ALGO_SEL                           (MBISTPG_ALGO_SEL_INT        ),
       .LOOP_STATE_TRUE                            (LOOP_STATE_TRUE                            )
    );
    assign  CHKBCI_PHASE = CHKBCI_PHASE_INT & BIST_RUN_INT;

    wire BIST_Y0_COUNT_EN_MODIFIED;
    assign BIST_Y0_COUNT_EN_MODIFIED = BIST_Y0_COUNT_EN;

    wire BIST_X0_COUNT_EN_MODIFIED;
    assign BIST_X0_COUNT_EN_MODIFIED = BIST_X0_COUNT_EN;

    assign ADD_GEN_SI               = POINTER_CNTRL_SO;
    firebird7_in_gate1_tessent_mbist_c1_controller_add_gen MBISTPG_ADD_GEN (
       .BIST_CLK                    (BIST_CLK_INT                ),
       .BIST_RUN                    (BIST_RUN                    ),
       .RESET_REG_DEFAULT_MODE      (RESET_REG_DEFAULT_MODE      ),
       .BIST_ASYNC_RESETN           (MBISTPG_ASYNC_RESETN        ),
       .BIST_SWITCH_ADDRESS_EN      (BIST_SWITCH_ADDRESS_EN      ),
       .SI                          (ADD_GEN_SI                  ),
       .SO                          (ADD_GEN_SO                  ),
       .BIST_SHIFT_SHORT            (BIST_SHIFT_SHORT            ),
       .BIST_HOLD                   (BIST_HOLD_R_INT             ),
       .LAST_TICK                   (LAST_TICK                   ),
       .MBISTPG_REDUCED_ADDR_CNT_EN (MBISTPG_REDUCED_ADDR_CNT_EN_INT            ),
       .ESOE_RESET                  (ESOE_RESET                  ), 
       .MBISTPG_ALGO_SEL            (MBISTPG_ALGO_SEL_INT        ),
       .ADD_Y0_CMD                  (ADD_Y0_CMD_MODIFIED         ),
       .ADD_Y1_CMD                  (ADD_Y1_CMD_MODIFIED         ),
       .ADD_X0_CMD                  (ADD_X0_CMD_MODIFIED         ),
       .ADD_X1_CMD                  (ADD_X1_CMD_MODIFIED         ),
       .ADD_REG_SELECT              (ADD_REG_SELECT              ),
       .BIST_Y0_COUNT_EN            (BIST_Y0_COUNT_EN_MODIFIED   ),
       .BIST_X0_COUNT_EN            (BIST_X0_COUNT_EN_MODIFIED   ),
       .Y0_MINMAX_TRIGGER           (Y0_MINMAX_TRIGGER_OUT       ),
       .Y1_MINMAX_TRIGGER           (Y1_MINMAX_TRIGGER_OUT       ),
       .X0_MINMAX_TRIGGER           (X0_MINMAX_TRIGGER_OUT       ),
       .X1_MINMAX_TRIGGER           (X1_MINMAX_TRIGGER_OUT       ),
       .INH_LAST_ADDR_CNT           (INH_LAST_ADDR_CNT_MODIFIED  ),
       .X_ADDRESS                   (X_ADDRESS                   ),
       .Y_ADDRESS                   (Y_ADDRESS                   ),
       .MEM_ARRAY_DUMP_MODE         (MEM_ARRAY_DUMP_MODE         ),
       .A_EQUALS_B_TRIGGER          (A_EQUALS_B_TRIGGER          )
    );
 
    firebird7_in_gate1_tessent_mbist_c1_controller_add_format MBISTPG_ADD_FORMAT (
       .Y_ADDRESS                   (Y_ADDRESS                   ),
       .X_ADDRESS                   (X_ADDRESS                   ),
       .COLUMN_ADDRESS              (COLUMN_ADDRESS              ), 
       .ROW_ADDRESS                 (ROW_ADDRESS                 ) 
    );

    i0sbfn000ab1n02x5 tessent_persistent_cell_Y0_MINMAX_TRIGGER(
        .a           (Y0_MINMAX_TRIGGER_OUT),
        .o           (Y0_MINMAX_TRIGGER)
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_Y1_MINMAX_TRIGGER(
        .a           (Y1_MINMAX_TRIGGER_OUT),
        .o           (Y1_MINMAX_TRIGGER)
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X1_MINMAX_TRIGGER(
        .a           (X1_MINMAX_TRIGGER_OUT),
        .o           (X1_MINMAX_TRIGGER)
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X0_MINMAX_TRIGGER(
        .a           (X0_MINMAX_TRIGGER_OUT),
        .o           (X0_MINMAX_TRIGGER)
    );    

    assign SIGNAL_GEN_SI            = ADD_GEN_SO;
    firebird7_in_gate1_tessent_mbist_c1_controller_signal_gen MBISTPG_SIGNAL_GEN (       
       .BIST_CLK                                   ( BIST_CLK_INT                              ),
       .BIST_ASYNC_RESETN                          ( MBISTPG_ASYNC_RESETN       ),
       .SI                                         (SIGNAL_GEN_SI                              ),
       .BIST_SHIFT_SHORT                           (BIST_SHIFT_SHORT                           ),
       .BIST_HOLD_R_INT                            (BIST_HOLD_R_INT                            ),
       .RESET_REG_DEFAULT_MODE                     (RESET_REG_DEFAULT_MODE      ),
       .OP_SELECT_CMD                              (OP_SELECT_CMD                              ),
       .BIST_RUN                                   (BIST_RUN_PIPE                              ),
       .BIST_RUN_TO_BUF                            (BIST_RUN_INT                               ),
       .BIST_RUN_BUF                               (BIST_RUN                                   ),
       .LAST_STATE_DONE                            (LAST_STATE_DONE                            ),
       .LAST_STATE_DONE_PIPELINED                  (LAST_STATE_DONE_PIPELINED                  ),
       .MBISTPG_ALGO_SEL                           (MBISTPG_ALGO_SEL_INT                       ),
       .MEM_ARRAY_DUMP_MODE                        (MEM_ARRAY_DUMP_MODE         ),
       .BIST_ALGO_SEL_CNT                          (INIT_SIGNAL_GEN_REGS        ), 
       .MEM_BYPASS_EN                              (MEM_BYPASS_EN               ),
       .LV_TM                                      (LV_TM        ),
       .BIST_CMP                                   (BIST_CMP_FROM_SIGNAL_GEN                   ),
       .BIST_Y0_COUNT_EN            (BIST_Y0_COUNT_EN                           ),
       .BIST_X0_COUNT_EN            (BIST_X0_COUNT_EN                           ),
       .SWITCH_ADDRESS_REG          (SWITCH_ADDRESS_REG                         ),
       .OPSET_INVERT_EDATA          (OPSET_INVERT_EDATA                         ),
       .OPSET_INVERT_WDATA          (OPSET_INVERT_WDATA                         ),
       .BIST_WRITEENABLE            (BIST_WRITEENABLE                           ),
       .BIST_READENABLE             (BIST_READENABLE                            ),
       .SO                                         (SIGNAL_GEN_SO                              ),
       .LAST_TICK_PIPELINED                        (LAST_TICK_PIPELINED                        ),
       .OPSET_SELECT_DECODED                       (OPSET_SELECT_DECODED                       ),
       .BIST_COLLAR_OPSET_SELECT                   (BIST_COLLAR_OPSET_SELECT                   ),
       .LAST_TICK                                  (LAST_TICK                                  )
    );                                                     

    assign DELAYCOUNTER_SI          = SIGNAL_GEN_SO;
    firebird7_in_gate1_tessent_mbist_c1_controller_delaycounter MBISTPG_DELAYCOUNTER (
       //inputs
       .BIST_CLK                                   ( BIST_CLK_INT                              ),
       .BIST_HOLD                                  (BIST_HOLD_R_INT                            ),
       .BIST_ASYNC_RESETN                          (MBISTPG_ASYNC_RESETN        ),
       .BIST_SHIFT_SHORT                           (BIST_SHIFT_SHORT                           ),
       .RESET_REG_DEFAULT_MODE                     (RESET_REG_DEFAULT_MODE                     ),
       .RESET_REG_SETUP1                           (RESET_REG_SETUP1                           ),
       .BIST_ALGO_SEL_CNT                          (ALGO_SEL_CNT_REG                           ), 
       .DELAYCOUNTER_CMD                           (DELAYCOUNTER_CMD                           ),
       .LAST_TICK                                  (LAST_TICK                                  ),    
       .BIST_RUN                                   (BIST_RUN                                   ),
       .SI                                         (DELAYCOUNTER_SI                            ),
       .MBISTPG_ALGO_SEL                           (MBISTPG_ALGO_SEL_INT        ),
       .MEM_ARRAY_DUMP_MODE                        (MEM_ARRAY_DUMP_MODE                        ),
       .ESOE_RESET                                 (ESOE_RESET                                 ),
        
       //outputs
       .DELAYCOUNTER_ENDCOUNT_TRIGGER              (DELAYCOUNTER_ENDCOUNT_TRIGGER_INT          ),
       .SO                                         (DELAYCOUNTER_SO                            )
    );

    i0sbfn000ab1n02x5 tessent_persistent_cell_DELAYCOUNTER_ENDCOUNT_TRIGGER (
        .a           (DELAYCOUNTER_ENDCOUNT_TRIGGER_INT),
        .o           (DELAYCOUNTER_ENDCOUNT_TRIGGER)
    );    
    assign DATA_GEN_SI              = DELAYCOUNTER_SO;

    firebird7_in_gate1_tessent_mbist_c1_controller_data_gen MBISTPG_DATA_GEN (
       //inputs
       .BIST_CLK                    (BIST_CLK_INT                ),
       .BIST_HOLD                   (BIST_HOLD_R_INT             ),
       .BIST_ASYNC_RESETN           (MBISTPG_ASYNC_RESETN        ), 
       .BIST_SWITCH_ADDRESS_EN      (BIST_SWITCH_ADDRESS_EN & (~OPSET_INVERT_EDATA)            ),
       .RESET_REG_DEFAULT_MODE      (RESET_REG_DEFAULT_MODE      ),
       .WDATA_CMD                   (WDATA_CMD_MODIFIED          ),
       .EDATA_CMD                   (EDATA_CMD_MODIFIED          ),
       .ROW_ADDRESS                 (ROW_ADDRESS                 ),
       .COLUMN_ADDRESS              (COLUMN_ADDRESS              ),
       .LAST_TICK_PIPELINED         (LAST_TICK_PIPELINED         ),
       .OPSET_SELECT_DECODED        (OPSET_SELECT_DECODED        ),
       .BIST_ALGO_SEL_CNT           (INIT_DATA_GEN_REGS          ),
       .MBISTPG_ALGO_SEL            (MBISTPG_ALGO_SEL_INT        ),
 
       .LAST_TICK                   (LAST_TICK                   ),
       .BIST_RUN                    (BIST_RUN                    ),
       .BIST_SHIFT_SHORT            (BIST_SHIFT_SHORT            ),
       .SI                          (DATA_GEN_SI                 ),
       .BIST_WRITEENABLE            (BIST_WRITEENABLE            ),
       //outputs
       .SO                          (DATA_GEN_SO                 ),
       .EXPECT_DATA                 (EXPECT_DATA                 ),
       .WRITE_DATA                  (WRITE_DATA                  )
    );
 

    assign REPEAT_LOOP_CNTRL_SI     = DATA_GEN_SO;
    firebird7_in_gate1_tessent_mbist_c1_controller_repeat_loop_cntrl MBISTPG_REPEAT_LOOP_CNTRL (
       .BIST_CLK                                   ( BIST_CLK_INT               ),
       .RESET_REG_SETUP1                           (RESET_REG_SETUP1            ),
       .RESET_REG_DEFAULT_MODE                     (RESET_REG_DEFAULT_MODE      ),
       .LOOP_CMD                                   (LOOP_CMD                    ),
       .BIST_ASYNC_RESETN                          (MBISTPG_ASYNC_RESETN        ),
       .ADD_Y0_CMD                                 (ADD_Y0_CMD                  ),
       .ADD_Y1_CMD                                 (ADD_Y1_CMD                  ),
       .ADD_X0_CMD                                 (ADD_X0_CMD                  ),
       .ADD_X1_CMD                                 (ADD_X1_CMD                  ),
       .MBISTPG_ALGO_SEL                           (MBISTPG_ALGO_SEL_INT        ),
 
       .WDATA_CMD                                  (WDATA_CMD                   ),
       .EDATA_CMD                                  (EDATA_CMD                   ),
       .INH_LAST_ADDR_CNT                          (INH_LAST_ADDR_CNT           ),
       .INH_DATA_CMP                               (INH_DATA_CMP                ),
       .LOOP_STATE_TRUE                            (LOOP_STATE_TRUE             ),
       .A_EQUALS_B_TRIGGER                         (A_EQUALS_B_TRIGGER          ),
       .A_EQUALS_B_INVERT_DATA                     (A_EQUALS_B_INVERT_DATA      ),
       .SI                                         (REPEAT_LOOP_CNTRL_SI        ),
       .BIST_HOLD                                  (BIST_HOLD_R_INT             ),
       .LAST_TICK                                  (LAST_TICK                   ),
       .BIST_SHIFT_SHORT                           (BIST_SHIFT_SHORT            ),
       .BIST_RUN                                   (BIST_RUN                    ),
       .OPSET_SELECT_DECODED                       (OPSET_SELECT_DECODED        ),
       .LOOPCOUNTMAX_TRIGGER                       (LOOPCOUNTMAX_TRIGGER_INT    ),
       .LOOP_POINTER                               (LOOP_POINTER                ),
       .ADD_Y0_CMD_MODIFIED                        (ADD_Y0_CMD_MODIFIED         ),
       .ADD_Y1_CMD_MODIFIED                        (ADD_Y1_CMD_MODIFIED         ),
       .ADD_X0_CMD_MODIFIED                        (ADD_X0_CMD_MODIFIED         ),
       .ADD_X1_CMD_MODIFIED                        (ADD_X1_CMD_MODIFIED         ),
       .SO                                         (REPEAT_LOOP_CNTRL_SO        ),
       .ESOE_RESET                                 (ESOE_RESET                                 ),
       .OPSET_INVERT_EDATA                         (OPSET_INVERT_EDATA                         ),
       .OPSET_INVERT_WDATA                         (OPSET_INVERT_WDATA                         ),
       .WDATA_CMD_MODIFIED                         (WDATA_CMD_MODIFIED          ),
       .EDATA_CMD_MODIFIED                         (EDATA_CMD_MODIFIED          ),
       .INH_LAST_ADDR_CNT_MODIFIED                 (INH_LAST_ADDR_CNT_MODIFIED_INT             ),
       .INH_DATA_CMP_MODIFIED                      (INH_DATA_CMP_MODIFIED       )
    );
 
    i0sbfn000ab1n02x5 tessent_persistent_cell_LOOPCOUNTMAX_TRIGGER (
        .a           (LOOPCOUNTMAX_TRIGGER_INT),
        .o           (LOOPCOUNTMAX_TRIGGER)
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_INH_LAST_ADDR_CNT (
        .a           (INH_LAST_ADDR_CNT_MODIFIED_INT),
        .o           (INH_LAST_ADDR_CNT_MODIFIED)
    );    
    assign COUNTERA_ENDCOUNT_TRIGGER               = 1'b0;
    
    //---------------------
    // GO ENABLE
    //---------------------
    //synopsys sync_set_reset "BIST_ON"
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          GO_EN <= 1'b0;
       else
       if (~BIST_ON_TO_BUF) begin
          GO_EN <= 1'b0;
       end else begin
          if (RESET_REG_SETUP1) begin
             GO_EN <= 1'b1;
          end
       end
    end
    //---------------------
    // MBISTPG_GO MUXING
    //---------------------
    // BIST_COLLAR_GO[0] connects to MemoryInstance: m1
    // BIST_COLLAR_GO[1] connects to MemoryInstance: m2
    // BIST_COLLAR_GO[2] connects to MemoryInstance: m3
    // BIST_COLLAR_GO[3] connects to MemoryInstance: m4
    // BIST_COLLAR_GO[4] connects to MemoryInstance: m5
    // BIST_COLLAR_GO[5] connects to MemoryInstance: m6
    // BIST_COLLAR_GO[6] connects to MemoryInstance: m7
    // BIST_COLLAR_GO[7] connects to MemoryInstance: m8
    // BIST_COLLAR_GO[8] connects to MemoryInstance: m9
    // BIST_COLLAR_GO[9] connects to MemoryInstance: m10
    // BIST_COLLAR_GO[10] connects to MemoryInstance: m11
    // BIST_COLLAR_GO[11] connects to MemoryInstance: m12
    // BIST_COLLAR_GO[12] connects to MemoryInstance: m13
    // BIST_COLLAR_GO[13] connects to MemoryInstance: m14
    // BIST_COLLAR_GO[14] connects to MemoryInstance: m15
    // BIST_COLLAR_GO[15] connects to MemoryInstance: m16
    // BIST_COLLAR_GO[16] connects to MemoryInstance: m17
    // BIST_COLLAR_GO[17] connects to MemoryInstance: m18
    // BIST_COLLAR_GO[18] connects to MemoryInstance: m19
    // BIST_COLLAR_GO[19] connects to MemoryInstance: m20
    // BIST_COLLAR_GO[20] connects to MemoryInstance: m21
    // BIST_COLLAR_GO[21] connects to MemoryInstance: m22
    // BIST_COLLAR_GO[22] connects to MemoryInstance: m23
    // BIST_COLLAR_GO[23] connects to MemoryInstance: m24
    // BIST_COLLAR_GO[24] connects to MemoryInstance: m25
    // BIST_COLLAR_GO[25] connects to MemoryInstance: m26
    // BIST_COLLAR_GO[26] connects to MemoryInstance: m27
    // BIST_COLLAR_GO[27] connects to MemoryInstance: m28
    // BIST_COLLAR_GO[28] connects to MemoryInstance: m29
    // BIST_COLLAR_GO[29] connects to MemoryInstance: m30
    // BIST_COLLAR_GO[30] connects to MemoryInstance: m31
    // BIST_COLLAR_GO[31] connects to MemoryInstance: m32
    // BIST_COLLAR_GO[32] connects to MemoryInstance: m33
    // BIST_COLLAR_GO[33] connects to MemoryInstance: m34
    // BIST_COLLAR_GO[34] connects to MemoryInstance: m35
    // BIST_COLLAR_GO[35] connects to MemoryInstance: m36
    // BIST_COLLAR_GO[36] connects to MemoryInstance: m37
    // BIST_COLLAR_GO[37] connects to MemoryInstance: m38
    // BIST_COLLAR_GO[38] connects to MemoryInstance: m39
    // BIST_COLLAR_GO[39] connects to MemoryInstance: m40
   wire RAM_COLLAR_BIRA_GO;
   assign RAM_COLLAR_BIRA_GO        = BIST_COLLAR_GO[0]&BIST_COLLAR_GO[1]&BIST_COLLAR_GO[2]&BIST_COLLAR_GO[3]&BIST_COLLAR_GO[4]&BIST_COLLAR_GO[5]&BIST_COLLAR_GO[6]&BIST_COLLAR_GO[7]&BIST_COLLAR_GO[8]&BIST_COLLAR_GO[9]&BIST_COLLAR_GO[10]&BIST_COLLAR_GO[11]&BIST_COLLAR_GO[12]&BIST_COLLAR_GO[13]&BIST_COLLAR_GO[14]&BIST_COLLAR_GO[15]&BIST_COLLAR_GO[16]&BIST_COLLAR_GO[17]&BIST_COLLAR_GO[18]&BIST_COLLAR_GO[19]&BIST_COLLAR_GO[20]&BIST_COLLAR_GO[21]&BIST_COLLAR_GO[22]&BIST_COLLAR_GO[23]&BIST_COLLAR_GO[24]&BIST_COLLAR_GO[25]&BIST_COLLAR_GO[26]&BIST_COLLAR_GO[27]&BIST_COLLAR_GO[28]&BIST_COLLAR_GO[29]&BIST_COLLAR_GO[30]&BIST_COLLAR_GO[31]&BIST_COLLAR_GO[32]&BIST_COLLAR_GO[33]&BIST_COLLAR_GO[34]&BIST_COLLAR_GO[35]&BIST_COLLAR_GO[36]&BIST_COLLAR_GO[37]&BIST_COLLAR_GO[38]&BIST_COLLAR_GO[39];
    assign COLLAR_GO                =&BIST_COLLAR_GO;
    wire RAM_COLLAR_BIRA_REPAIR_NEEDED;
    assign RAM_COLLAR_BIRA_REPAIR_NEEDED = ~(BIST_COLLAR_GO[0]&BIST_COLLAR_GO[1]&BIST_COLLAR_GO[2]&BIST_COLLAR_GO[3]&BIST_COLLAR_GO[4]&BIST_COLLAR_GO[5]&BIST_COLLAR_GO[6]&BIST_COLLAR_GO[7]&BIST_COLLAR_GO[8]&BIST_COLLAR_GO[9]&BIST_COLLAR_GO[10]&BIST_COLLAR_GO[11]&BIST_COLLAR_GO[12]&BIST_COLLAR_GO[13]&BIST_COLLAR_GO[14]&BIST_COLLAR_GO[15]&BIST_COLLAR_GO[16]&BIST_COLLAR_GO[17]&BIST_COLLAR_GO[18]&BIST_COLLAR_GO[19]&BIST_COLLAR_GO[20]&BIST_COLLAR_GO[21]&BIST_COLLAR_GO[22]&BIST_COLLAR_GO[23]&BIST_COLLAR_GO[24]&BIST_COLLAR_GO[25]&BIST_COLLAR_GO[26]&BIST_COLLAR_GO[27]&BIST_COLLAR_GO[28]&BIST_COLLAR_GO[29]&BIST_COLLAR_GO[30]&BIST_COLLAR_GO[31]&BIST_COLLAR_GO[32]&BIST_COLLAR_GO[33]&BIST_COLLAR_GO[34]&BIST_COLLAR_GO[35]&BIST_COLLAR_GO[36]&BIST_COLLAR_GO[37]&BIST_COLLAR_GO[38]&BIST_COLLAR_GO[39]);
    assign MBISTPG_GO_INT = CHECK_REPAIR_NEEDED ? ~(RAM_COLLAR_BIRA_REPAIR_NEEDED) : GO_EN & (BIRA_EN_R ? (RAM_COLLAR_BIRA_GO) : (COLLAR_GO));
    i0sbfn000ab1n02x5 tessent_persistent_cell_MBISTPG_GO (
        .a           ( MBISTPG_GO_INT              ),
        .o           ( MBISTPG_GO   )
    );
 
 
    //---------------------------------------
    // Setup chain muxing to first collar
    //---------------------------------------
    assign TO_COLLAR_SI_MUX_INPUT0 = (MBISTPG_BIRA_SETUP_SYNC) ? BIST_SI_PIPELINE : REPEAT_LOOP_CNTRL_SO;
    assign TO_COLLAR_SI_MUX_INPUT1 = REPEAT_LOOP_CNTRL_SO;
    always_comb begin
        case (SHORT_SETUP_SYNC)
        1'b0 : TO_COLLAR_SI = TO_COLLAR_SI_MUX_INPUT0;
        1'b1 : TO_COLLAR_SI = TO_COLLAR_SI_MUX_INPUT1;
        endcase
    end
    //----------------------
    // Collar SI/SO chaining
    //----------------------
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM39_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM39_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[39] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : TO_COLLAR_SI;
       end
    end
    assign MEM39_BIST_COLLAR_SI = MEM39_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM38_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM38_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[38] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM39_BIST_COLLAR_SO;
       end
    end
    assign MEM38_BIST_COLLAR_SI = MEM38_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM37_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM37_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[37] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM38_BIST_COLLAR_SO;
       end
    end
    assign MEM37_BIST_COLLAR_SI = MEM37_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM36_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM36_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[36] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM37_BIST_COLLAR_SO;
       end
    end
    assign MEM36_BIST_COLLAR_SI = MEM36_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM35_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM35_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[35] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM36_BIST_COLLAR_SO;
       end
    end
    assign MEM35_BIST_COLLAR_SI = MEM35_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM34_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM34_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[34] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM35_BIST_COLLAR_SO;
       end
    end
    assign MEM34_BIST_COLLAR_SI = MEM34_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM33_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM33_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[33] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM34_BIST_COLLAR_SO;
       end
    end
    assign MEM33_BIST_COLLAR_SI = MEM33_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM32_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM32_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[32] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM33_BIST_COLLAR_SO;
       end
    end
    assign MEM32_BIST_COLLAR_SI = MEM32_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM31_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM31_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[31] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM32_BIST_COLLAR_SO;
       end
    end
    assign MEM31_BIST_COLLAR_SI = MEM31_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM30_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM30_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[30] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM31_BIST_COLLAR_SO;
       end
    end
    assign MEM30_BIST_COLLAR_SI = MEM30_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM29_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM29_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[29] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM30_BIST_COLLAR_SO;
       end
    end
    assign MEM29_BIST_COLLAR_SI = MEM29_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM28_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM28_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[28] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM29_BIST_COLLAR_SO;
       end
    end
    assign MEM28_BIST_COLLAR_SI = MEM28_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM27_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM27_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[27] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM28_BIST_COLLAR_SO;
       end
    end
    assign MEM27_BIST_COLLAR_SI = MEM27_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM26_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM26_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[26] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM27_BIST_COLLAR_SO;
       end
    end
    assign MEM26_BIST_COLLAR_SI = MEM26_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM25_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM25_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[25] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM26_BIST_COLLAR_SO;
       end
    end
    assign MEM25_BIST_COLLAR_SI = MEM25_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM24_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM24_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[24] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM25_BIST_COLLAR_SO;
       end
    end
    assign MEM24_BIST_COLLAR_SI = MEM24_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM23_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM23_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[23] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM24_BIST_COLLAR_SO;
       end
    end
    assign MEM23_BIST_COLLAR_SI = MEM23_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM22_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM22_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[22] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM23_BIST_COLLAR_SO;
       end
    end
    assign MEM22_BIST_COLLAR_SI = MEM22_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM21_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM21_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[21] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM22_BIST_COLLAR_SO;
       end
    end
    assign MEM21_BIST_COLLAR_SI = MEM21_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM20_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM20_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[20] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM21_BIST_COLLAR_SO;
       end
    end
    assign MEM20_BIST_COLLAR_SI = MEM20_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM19_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM19_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[19] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM20_BIST_COLLAR_SO;
       end
    end
    assign MEM19_BIST_COLLAR_SI = MEM19_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM18_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM18_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[18] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM19_BIST_COLLAR_SO;
       end
    end
    assign MEM18_BIST_COLLAR_SI = MEM18_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM17_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM17_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[17] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM18_BIST_COLLAR_SO;
       end
    end
    assign MEM17_BIST_COLLAR_SI = MEM17_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM16_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM16_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[16] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM17_BIST_COLLAR_SO;
       end
    end
    assign MEM16_BIST_COLLAR_SI = MEM16_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM15_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM15_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[15] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM16_BIST_COLLAR_SO;
       end
    end
    assign MEM15_BIST_COLLAR_SI = MEM15_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM14_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM14_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[14] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM15_BIST_COLLAR_SO;
       end
    end
    assign MEM14_BIST_COLLAR_SI = MEM14_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM13_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM13_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[13] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM14_BIST_COLLAR_SO;
       end
    end
    assign MEM13_BIST_COLLAR_SI = MEM13_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM12_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM12_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[12] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM13_BIST_COLLAR_SO;
       end
    end
    assign MEM12_BIST_COLLAR_SI = MEM12_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM11_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM11_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[11] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM12_BIST_COLLAR_SO;
       end
    end
    assign MEM11_BIST_COLLAR_SI = MEM11_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM10_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM10_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[10] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM11_BIST_COLLAR_SO;
       end
    end
    assign MEM10_BIST_COLLAR_SI = MEM10_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM9_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM9_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[9] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM10_BIST_COLLAR_SO;
       end
    end
    assign MEM9_BIST_COLLAR_SI = MEM9_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM8_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM8_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[8] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM9_BIST_COLLAR_SO;
       end
    end
    assign MEM8_BIST_COLLAR_SI = MEM8_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM7_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM7_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[7] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM8_BIST_COLLAR_SO;
       end
    end
    assign MEM7_BIST_COLLAR_SI = MEM7_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM6_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM6_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[6] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM7_BIST_COLLAR_SO;
       end
    end
    assign MEM6_BIST_COLLAR_SI = MEM6_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM5_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM5_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[5] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM6_BIST_COLLAR_SO;
       end
    end
    assign MEM5_BIST_COLLAR_SI = MEM5_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM4_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM4_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[4] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM5_BIST_COLLAR_SO;
       end
    end
    assign MEM4_BIST_COLLAR_SI = MEM4_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM3_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM3_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[3] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM4_BIST_COLLAR_SO;
       end
    end
    assign MEM3_BIST_COLLAR_SI = MEM3_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM2_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM2_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[2] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM3_BIST_COLLAR_SO;
       end
    end
    assign MEM2_BIST_COLLAR_SI = MEM2_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM1_BIST_COLLAR_SI_RetimeOut <= 1'b0;
       end else begin
          MEM1_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[1] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM2_BIST_COLLAR_SO;
       end
    end
    assign MEM1_BIST_COLLAR_SI = MEM1_BIST_COLLAR_SI_RetimeOut;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (negedge TCK or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN) begin
          MEM0_BIST_COLLAR_SI_RetimeOut <= 1'b0;
          MEM0_BIST_COLLAR_SO_RetimeIn  <= 1'b0;
       end else begin
          MEM0_BIST_COLLAR_SI_RetimeOut <= (MEM_SELECT_REG[0] & MBISTPG_GOID_SETUP_SYNC) ? BIST_SI_PIPELINE : MEM1_BIST_COLLAR_SO;
          MEM0_BIST_COLLAR_SO_RetimeIn <= MEM0_BIST_COLLAR_SO;
       end
    end
    assign MEM0_BIST_COLLAR_SI = MEM0_BIST_COLLAR_SI_RetimeOut;
    //------------------------------
    // Setup chain after last collar
    //------------------------------
    assign CTL_COMP_SI              = BIRA_CONFIG_SO;
    reg BIST_SO_PIPELINE;
    // synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
       if (~MBISTPG_ASYNC_RESETN)
          BIST_SO_PIPELINE <= 1'b0;
       else
          BIST_SO_PIPELINE <= (MBISTPG_GOID_SETUP_TO_SYNC) ? GOID_CHAIN_SO : (MBISTPG_BIRA_SETUP_TO_SYNC) ? MEM0_BIST_COLLAR_SO_RetimeIn : CTL_COMP_SO;
    end
    assign MBISTPG_SO               = BIST_SO_PIPELINE;
        
 
 
assign PriorityColumn = PriorityColumn_R;
assign RA_BIRA_SO = MEM0_BIST_COLLAR_SO_RetimeIn;
    //---------------------------
    // BIRA Preserve Mode Enable
    //---------------------------
 
    assign BIRA_CONFIG_SO = BIRA_CONFIG;
   assign MBISTPG_PRESERVE_BIRA     = BIST_ON & BIRA_CONFIG;
// synopsys async_set_reset "MBISTPG_ASYNC_RESETN"
// synopsys sync_set_reset "MBISTPG_RESET_BIRA_CONFIG_INT"
always_ff @ (posedge BIST_CLK_INT or negedge MBISTPG_ASYNC_RESETN) begin
    if (~MBISTPG_ASYNC_RESETN)
        BIRA_CONFIG <= 1'b0;
    else
    if (BIST_SHIFT_SHORT) begin 
        BIRA_CONFIG <=  MEM0_BIST_COLLAR_SO_RetimeIn;
    end
    else begin
        if (MBISTPG_RESET_BIRA_CONFIG_INT) begin
            BIRA_CONFIG <=  MBIST_RA_PRSRV_FUSE_VAL_SYNC;
        end
    end
end    
    firebird7_in_gate1_tessent_mbist_c1_controller_ctl_comp MBISTPG_CTL_COMP (
       .BIST_CLK                    ( BIST_CLK_INT                              ), // i
       .BIST_CLK_NG                 ( BIST_CLK                   ), // i
       .BIST_EN                     ( MBISTPG_EN_INT             ), // i
       .BIST_ON                     ( BIST_ON                                   ), // i
       .BIST_ASYNC_RESETN           ( MBISTPG_ASYNC_RESETN       ), // i
       .BIST_IDLE_PULSE             ( BIST_IDLE_PULSE                           ), // i
       .CLEAR_DEFAULT               ( BIST_CLEAR_DEFAULT                        ), // i
       .CLEAR                       ( CLEAR                                     ), // i
       .BIST_HOLD_R                 ( BIST_HOLD_R                               ), // i
       .BIST_SHIFT_SHORT            ( BIST_SHIFT_SHORT                          ), // i
       .FREEZE_STOP_ERROR           ( FREEZE_STOP_ERROR                         ), // o
       .SI                          ( CTL_COMP_SI                               ), // i
       .SO                          ( CTL_COMP_SO                               ), // o
       .GO                          ( MBISTPG_GO                 ), // o
       .GO_EN                       ( GO_EN                                     ), // i
       .FREEZE_GO_ID                ( FREEZE_GO_ID                              ), // o
       .CMP_EN_R                    ( CMP_EN_R                                  ), // i
       .CMP_EN                      ( CMP_EN_INT                 ), // i
       .BIST_COLLAR_GO              ( BIST_COLLAR_GO                            ), // i [39:0]
       .HOLD_EN                     ( HOLD_EN                                   ), // o
       .ERROR_CNT_ZERO              ( ERROR_CNT_ZERO                            ), // o
       .BIST_STOP_ON_ERROR_EN       ( BIST_STOP_ON_ERROR_EN_INT                 ), // o
       .BIST_DONE                   ( BIST_DONE                                 ), // i
       .FL1                         ( FL_CNT_MODE[1]                            ), // i
       .RESET_REG_SETUP1            ( RESET_REG_SETUP2                          ), // i
       .FL_CNT_MODE0_SYNC           ( FL_CNT_MODE0_SYNC                         ), // i
       .ESOE_RESET                  ( ESOE_RESET                                ), // o
       .TM                          ( LV_TM                                     )  // i
    );                       


endmodule // firebird7_in_gate1_tessent_mbist_c1_controller


/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_ctl_comp
 
     Description :  Module containing the controller comparators and the 
                    stop-on-error circuitry. 
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_ctl_comp (
  input  wire        BIST_CLK,
  input  wire        BIST_CLK_NG,
  input  wire        BIST_EN,
  input  wire        BIST_ON,
  input  wire        BIST_ASYNC_RESETN,
  input  wire        BIST_IDLE_PULSE,
  input  wire        CLEAR_DEFAULT,
  input  wire        CLEAR,
  input  wire        BIST_HOLD_R,
  input  wire        BIST_SHIFT_SHORT,
  input  wire        SI,
  input  wire        GO,
  input  wire        GO_EN,
  input  wire        CMP_EN,
  input  wire        CMP_EN_R,
  input  wire [39:0] BIST_COLLAR_GO,
  input  wire        BIST_DONE,
  input  wire        FL1,
  input  wire        RESET_REG_SETUP1,
  input  wire        FL_CNT_MODE0_SYNC,
  input  wire        TM,
  output reg         FREEZE_STOP_ERROR,
  output wire        SO,
  output wire        FREEZE_GO_ID,
  output wire        HOLD_EN,
  output wire        BIST_STOP_ON_ERROR_EN,
  output wire        ERROR_CNT_ZERO,
  output reg         ESOE_RESET
 );
// Internal signals

wire                 ERROR_CNT_EN;
wire                 ERROR_CNT_REG_RST;
wire                 FREEZE_STOP_ERROR_IN;
wire                 FREEZE_STOP_ERROR_RST;
wire                 STOP_ON_ERROR_RST; 
reg                  STOP_ON_ERROR;
reg  [1:0]           PHASE_START_REG;
reg  [15:0]          ERROR_CNT_REG;
wire                 ERROR_CNT_LAST;
wire                 FL_CNT_MODE1_PULSE;  
reg  [15:0]          FL_CNT_REG;
reg                  ERROR_CNT_LT2_REG;
wire                 SOE_COLLAR_CMP_STAT;
wire ERROR;    
reg  ERROR_R;
    //-----------------------
    //-- Stop-on-Nth-Error --
    //-----------------------
assign HOLD_EN                = FREEZE_STOP_ERROR | BIST_HOLD_R;
 
assign BIST_STOP_ON_ERROR_EN  = STOP_ON_ERROR;
 
// synopsys sync_set_reset "STOP_ON_ERROR_RST"
assign STOP_ON_ERROR_RST = CLEAR_DEFAULT & (~HOLD_EN) & (~BIST_SHIFT_SHORT);
// synopsys sync_set_reset "FREEZE_STOP_ERROR_RST"
assign FREEZE_STOP_ERROR_RST = BIST_IDLE_PULSE;
assign SOE_COLLAR_CMP_STAT = BIST_STOP_ON_ERROR_EN ? ((~BIST_COLLAR_GO[0]) | (~BIST_COLLAR_GO[1]) | (~BIST_COLLAR_GO[2]) | (~BIST_COLLAR_GO[3]) | (~BIST_COLLAR_GO[4]) | (~BIST_COLLAR_GO[5]) | (~BIST_COLLAR_GO[6]) | (~BIST_COLLAR_GO[7]) | (~BIST_COLLAR_GO[8]) | (~BIST_COLLAR_GO[9]) | (~BIST_COLLAR_GO[10]) | (~BIST_COLLAR_GO[11]) | (~BIST_COLLAR_GO[12]) | (~BIST_COLLAR_GO[13]) | (~BIST_COLLAR_GO[14]) | (~BIST_COLLAR_GO[15]) | (~BIST_COLLAR_GO[16]) | (~BIST_COLLAR_GO[17]) | (~BIST_COLLAR_GO[18]) | (~BIST_COLLAR_GO[19]) | (~BIST_COLLAR_GO[20]) | (~BIST_COLLAR_GO[21]) | (~BIST_COLLAR_GO[22]) | (~BIST_COLLAR_GO[23]) | (~BIST_COLLAR_GO[24]) | (~BIST_COLLAR_GO[25]) | (~BIST_COLLAR_GO[26]) | (~BIST_COLLAR_GO[27]) | (~BIST_COLLAR_GO[28]) | (~BIST_COLLAR_GO[29]) | (~BIST_COLLAR_GO[30]) | (~BIST_COLLAR_GO[31]) | (~BIST_COLLAR_GO[32]) | (~BIST_COLLAR_GO[33]) | (~BIST_COLLAR_GO[34]) | (~BIST_COLLAR_GO[35]) | (~BIST_COLLAR_GO[36]) | (~BIST_COLLAR_GO[37]) | (~BIST_COLLAR_GO[38]) | (~BIST_COLLAR_GO[39])) : CMP_EN;
assign ERROR_CNT_EN = (GO_EN & BIST_ON) & (SOE_COLLAR_CMP_STAT);
assign FREEZE_STOP_ERROR_IN = FREEZE_STOP_ERROR | (ERROR_CNT_EN & STOP_ON_ERROR & ERROR_CNT_ZERO);
assign ERROR_CNT_ZERO = ERROR_CNT_LT2_REG & (~ERROR_CNT_REG[0]) & BIST_STOP_ON_ERROR_EN;
assign ERROR_CNT_LAST       = ERROR_CNT_ZERO & ERROR_CNT_EN;

// synopsys sync_set_reset "ERROR_CNT_REG_RST"
assign ERROR_CNT_REG_RST = (CLEAR_DEFAULT & (~HOLD_EN) & (~BIST_SHIFT_SHORT)) | ESOE_RESET;
// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @ (posedge BIST_CLK  or negedge BIST_ASYNC_RESETN) begin
    if (~BIST_ASYNC_RESETN)
        STOP_ON_ERROR <= 1'b0;
    else
    if (STOP_ON_ERROR_RST) begin
        STOP_ON_ERROR <= 1'b0;
    end else begin
        if (BIST_SHIFT_SHORT) begin
            STOP_ON_ERROR <= SI;
        end
    end
end    

    reg BIST_DONE_R;
    // synopsys async_set_reset BIST_ASYNC_RESETN
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
          BIST_DONE_R  <= 1'b0;
       else
          BIST_DONE_R  <= BIST_DONE;
   end
    // synopsys async_set_reset BIST_ASYNC_RESETN
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
          ESOE_RESET  <= 1'b0;
       else
          ESOE_RESET  <= (BIST_DONE & STOP_ON_ERROR & FL_CNT_MODE0_SYNC) & (~BIST_DONE_R);
   end

// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @ (posedge BIST_CLK  or negedge BIST_ASYNC_RESETN) begin
    if (~BIST_ASYNC_RESETN)
        FREEZE_STOP_ERROR <= 1'b0;
    else 
    if (FREEZE_STOP_ERROR_RST) begin
        FREEZE_STOP_ERROR <= 1'b0;
    end else begin
        if (BIST_SHIFT_SHORT) begin
            FREEZE_STOP_ERROR <= STOP_ON_ERROR;
        end else begin
            if (~BIST_HOLD_R) begin
                if (GO_EN) begin
                    FREEZE_STOP_ERROR <= FREEZE_STOP_ERROR_IN;
                end
            end
        end
    end
end

// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
    if (~BIST_ASYNC_RESETN) 
        ERROR_CNT_REG <= 16'd0;
    else 
    if (ERROR_CNT_REG_RST) begin
        ERROR_CNT_REG <= 16'd0; 
    end else begin
        if (BIST_SHIFT_SHORT) begin
            ERROR_CNT_REG <= {ERROR_CNT_REG[14:0], FREEZE_STOP_ERROR};
        end else begin
            if (~HOLD_EN) begin
                if (~CLEAR_DEFAULT) begin
                    if (RESET_REG_SETUP1 & STOP_ON_ERROR & FL_CNT_MODE0_SYNC) begin
                         ERROR_CNT_REG <= FL_CNT_REG;
                    end else 
                        if ((ERROR_CNT_EN && (~ERROR_CNT_ZERO)) | (ERROR_CNT_LAST & (~((~CMP_EN_R) | FREEZE_STOP_ERROR)))) begin
                            ERROR_CNT_REG <= ERROR_CNT_DEC(ERROR_CNT_REG);
                        end
                end
            end
        end
    end
end  

// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
    if (~BIST_ASYNC_RESETN)
        ERROR_CNT_LT2_REG <= 1'b0;
    else
    if (ERROR_CNT_REG_RST)
        ERROR_CNT_LT2_REG <= 1'b0;
    else
        ERROR_CNT_LT2_REG <= ERROR_CNT_REG < 16'd2;
end

wire                 FL1_RETIME1_IN;
wire                 FL1_RETIME1;
wire                 FL1_SYNC_IN;
reg                  FL1_SYNC;

    // Posedge retiming cell
assign FL1_RETIME1_IN = FL1; 
    i0sfmn203ab1d03x5 tessent_persistent_cell_MBIST_NTC_RETIMING_CELL_FL1 ( 
        .rb                         (BIST_ASYNC_RESETN            ), // i
        .clk        ( BIST_CLK_NG  ),       // i
        .d          ( FL1_RETIME1_IN              ), // i
        .o          ( FL1_RETIME1  )     // o
    ); 

    assign FL1_SYNC_IN        =   FL1_RETIME1 ;
reg FL1_STICKY_R;
// synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK_NG or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
         FL1_STICKY_R <= 1'b0;
       else
         FL1_STICKY_R <= (~RESET_REG_SETUP1) & (FL1_SYNC_IN | FL1_STICKY_R);
    end
// synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
           FL1_SYNC          <= 1'b0;
       else
           FL1_SYNC          <= FL1_STICKY_R;
   end
assign FL_CNT_MODE1_PULSE                = (FL1_STICKY_R & (~FL1_SYNC));

// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
    if (~BIST_ASYNC_RESETN) 
        FL_CNT_REG <= 16'd0;
    else 
       if (RESET_REG_SETUP1 & STOP_ON_ERROR & ((~FL_CNT_MODE0_SYNC))) begin
          FL_CNT_REG  <= ERROR_CNT_REG; 
       end else begin
          if (FL_CNT_MODE1_PULSE) 
             FL_CNT_REG  <= FL_CNT_INC(FL_CNT_REG);
       end
end

function automatic [15:0] FL_CNT_INC;
input [15:0] FL_CNT;
reg TOGGLE; 
begin
   FL_CNT_INC[0] = ~FL_CNT[0];
   TOGGLE = 1;
   for (integer i=1;i<=15;i=i+1) begin
       TOGGLE = FL_CNT[i-1] & TOGGLE;
       FL_CNT_INC[i] = FL_CNT[i] ^ TOGGLE;
   end
end
endfunction

function automatic [15:0] ERROR_CNT_DEC;
input [15:0] ERROR_CNT;
reg TOGGLE;
begin
   ERROR_CNT_DEC[0] = ~ERROR_CNT[0];
   TOGGLE = 1;
   for (integer i=1;i<=15;i=i+1) begin
       TOGGLE = (~ERROR_CNT[i-1]) & TOGGLE;
       ERROR_CNT_DEC[i] = ERROR_CNT[i] ^ TOGGLE;
   end
end
endfunction

    assign FREEZE_GO_ID = BIST_SHIFT_SHORT | (~GO_EN) | (~CMP_EN) ;
 
    assign SO        = ERROR_CNT_REG[15];
 
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_ctl_comp
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_pointer_cntrl
 
     Description :  This module contains the microcode register array as well as 
                    the pointer control logic for selecting the instruction to
                    be executed.
                    
                    To advance the pointer to the next instruction to be executed 
                    the NextState Conditions and the JumpState 
                    conditions for the selected instruction are tested. The 
                    testing of these conditions are prioritized and there are 
                    four possible states which may be selected next as follows:
                      1) NEXTSTATE - test the  NextState Conditions for a TRUE 
                                     and advance the instruction pointer by 1
                      2) LOOPSTATE - test the reduced NextState Conditions 
                                     (NextState conditions without the 
                                     LOOPCOUNTMAX trigger) for a TRUE and
                                     branch to the address provided by the 
                                     LOOPPOINTER register.
                      3) BRANCHSTATE - test the Branch Conditions for a TRUE
                                     and branch to the address in the BRANCHPOINTER
                                     field of the selected instruction.
                      4) ELSE -  do not change the intsruction pointer.
                    To end the test the LAST_STATE_DONE flag is set on a TRUE
                    NextState Condition when the instruction pointer is at the 
                    last available instruction of the microprogram array.
                    The instruction pointer remains at the LAST_STATE address
                    until reset by the SETUP_PULSE from the BIST_FSM module.
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_pointer_cntrl (
  input wire BIST_CLK,
  input wire RESET_REG_SETUP1,
  input wire RESET_REG_DEFAULT_MODE,
  input wire RESET_REG_SETUP2,
  input wire BIST_RUN,
  input wire BIST_ON,
  input wire LAST_TICK,
  output wire CHKBCI_PHASE,
  input wire [1:0] ALGO_MODE,
  input wire MEM_RST,
  input wire MBISTPG_ALGO_SEL,
  input wire [1:0] OPSET_SELECT_DECODED,
  input wire Y0_MINMAX_TRIGGER,
  input wire Y1_MINMAX_TRIGGER,
  input wire X0_MINMAX_TRIGGER,
  input wire X1_MINMAX_TRIGGER,
  input wire DELAYCOUNTER_ENDCOUNT_TRIGGER,
  input wire COUNTERA_ENDCOUNT_TRIGGER,
  input wire LOOPCOUNTMAX_TRIGGER,
  input wire [4:0] LOOP_POINTER,
  input wire BIST_HOLD,
  input wire BIST_SHIFT_SHORT,
  input wire SI,
  input wire DEFAULT_MODE,
  input wire BIST_MICROCODE_EN,
  input wire BIST_ASYNC_RESETN,
  input wire ESOE_RESET,
  output wire SO,
  input wire SHORT_SETUP,
  output wire [5:0] OP_SELECT_CMD,
  output wire [1:0] A_EQUALS_B_INVERT_DATA,
  output wire [1:0] ADD_Y0_CMD,
  output wire [2:0] ADD_Y1_CMD,
  output wire [1:0] ADD_X0_CMD,
  output wire [2:0] ADD_X1_CMD,
  output wire [2:0] ADD_REG_SELECT,
  output wire [3:0] WDATA_CMD,
  output wire [3:0] EDATA_CMD,
  output wire [1:0] LOOP_CMD,
  output wire COUNTERA_CMD,
  output wire INH_LAST_ADDR_CNT,
  output wire INH_DATA_CMP,
  output wire DELAYCOUNTER_CMD,
  output wire LAST_STATE_DONE_PIPELINED,
  output wire LOOP_STATE_TRUE,
  output wire LAST_STATE_DONE,
  output wire LAST_STATE
);
    reg              CHKBCI_PHASE_INT;
    wire             MBISTPG_ALGO_SEL_INT;
    reg              LAST_STATE_INT;
    reg   [4:0]      NEXT_POINTER_TO_BUF;
    wire  [4:0]      NEXT_POINTER;
    wire   [4:0]     NEXT_POINTER_INT;
    wire   [4:0]     BRANCH_POINTER;
    reg              EXECUTE_BRANCH_POINTER_REG4;
    reg              EXECUTE_BRANCH_POINTER_REG3;
    reg              EXECUTE_BRANCH_POINTER_REG2;
    reg              EXECUTE_BRANCH_POINTER_REG1;
    reg              EXECUTE_BRANCH_POINTER_REG0;
    wire   [4:0]     NEXT_BRANCH_POINTER;
    wire             LOOP_STATE_TRUE_INT;
    wire             NEXT_STATE_TRUE;
    wire   [6:0]     NEXT_TRIGGERS;
    wire   [6:0]     NEXT_CONDITIONS;
    reg              EXECUTE_NEXT_CONDITIONS_REG6;
    reg              EXECUTE_NEXT_CONDITIONS_REG3;
    reg              EXECUTE_NEXT_CONDITIONS_REG1;
    wire   [6:0]     NEXT_CONDITIONS_FIELD;
    wire   [5:0]     LOOP_TRIGGERS;
    wire   [5:0]     LOOP_CONDITIONS;
    reg              EXECUTE_OP_SELECT_CMD_REG3;
    reg              EXECUTE_OP_SELECT_CMD_REG1;
    reg              EXECUTE_OP_SELECT_CMD_REG0;
    wire   [5:0]     NEXT_OP_SELECT_CMD;
    wire   [1:0]     NEXT_A_EQUALS_B_INVERT_DATA;
    wire   [1:0]     NEXT_ADD_Y0_CMD;
    reg              EXECUTE_ADD_Y1_CMD_REG2;
    reg              EXECUTE_ADD_Y1_CMD_REG1;
    reg              EXECUTE_ADD_Y1_CMD_REG0;
    wire   [2:0]     NEXT_ADD_Y1_CMD;
    wire   [1:0]     NEXT_ADD_X0_CMD;
    reg              EXECUTE_ADD_X1_CMD_REG2;
    reg              EXECUTE_ADD_X1_CMD_REG1;
    reg              EXECUTE_ADD_X1_CMD_REG0;
    wire   [2:0]     NEXT_ADD_X1_CMD;
    reg              EXECUTE_ADD_REG_SELECT_REG1;
    wire   [2:0]     NEXT_ADD_REG_SELECT;
    reg              EXECUTE_WDATA_CMD_REG3;
    reg              EXECUTE_WDATA_CMD_REG1;
    reg              EXECUTE_WDATA_CMD_REG0;
    wire   [3:0]     NEXT_WDATA_CMD;
    reg              EXECUTE_EDATA_CMD_REG3;
    reg              EXECUTE_EDATA_CMD_REG1;
    reg              EXECUTE_EDATA_CMD_REG0;
    wire   [3:0]     NEXT_EDATA_CMD;
    reg              EXECUTE_LOOP_CMD_REG1;
    reg              EXECUTE_LOOP_CMD_REG0;
    wire   [1:0]     NEXT_LOOP_CMD;
    wire             NEXT_COUNTERA_CMD;
    reg              EXECUTE_INH_LAST_ADDR_CNT_REG0;
    wire             NEXT_INH_LAST_ADDR_CNT;
    reg              EXECUTE_INH_DATA_CMP_REG0;
    wire             NEXT_INH_DATA_CMP;
    wire             NEXT_DELAYCOUNTER_CMD;
// [start] : Hard algo wires {{{
    reg    [46:0]    INSTRUCTION0_WIRE;
    reg    [46:0]    INSTRUCTION1_WIRE;
    reg    [46:0]    INSTRUCTION2_WIRE;
    reg    [46:0]    INSTRUCTION3_WIRE;
    reg    [46:0]    INSTRUCTION4_WIRE;
    reg    [46:0]    INSTRUCTION5_WIRE;
    reg    [46:0]    INSTRUCTION6_WIRE;
    reg    [46:0]    INSTRUCTION7_WIRE;
    reg    [46:0]    INSTRUCTION8_WIRE;
    reg    [46:0]    INSTRUCTION9_WIRE;
    reg    [46:0]    INSTRUCTION10_WIRE;
    reg    [46:0]    INSTRUCTION11_WIRE;
    reg    [46:0]    INSTRUCTION12_WIRE;
    reg    [46:0]    INSTRUCTION13_WIRE;
    reg    [46:0]    INSTRUCTION14_WIRE;
    reg    [46:0]    INSTRUCTION15_WIRE;
    reg    [46:0]    INSTRUCTION16_WIRE;
    reg    [46:0]    INSTRUCTION17_WIRE;
    reg    [46:0]    INSTRUCTION18_WIRE;
    reg    [46:0]    INSTRUCTION19_WIRE;
    reg    [46:0]    INSTRUCTION20_WIRE;
    reg    [46:0]    INSTRUCTION21_WIRE;
    reg    [46:0]    INSTRUCTION22_WIRE;
    reg    [46:0]    INSTRUCTION23_WIRE;
    reg    [46:0]    INSTRUCTION24_WIRE;
    reg    [46:0]    INSTRUCTION25_WIRE;
    reg    [46:0]    INSTRUCTION26_WIRE;
// [end]   : Hard algo wires }}}
// [start] : Final instruction assignment {{{
    wire   [46:0]    INSTRUCTION0;
    wire   [46:0]    INSTRUCTION1;
    wire   [46:0]    INSTRUCTION2;
    wire   [46:0]    INSTRUCTION3;
    wire   [46:0]    INSTRUCTION4;
    wire   [46:0]    INSTRUCTION5;
    wire   [46:0]    INSTRUCTION6;
    wire   [46:0]    INSTRUCTION7;
    wire   [46:0]    INSTRUCTION8;
    wire   [46:0]    INSTRUCTION9;
    wire   [46:0]    INSTRUCTION10;
    wire   [46:0]    INSTRUCTION11;
    wire   [46:0]    INSTRUCTION12;
    wire   [46:0]    INSTRUCTION13;
    wire   [46:0]    INSTRUCTION14;
    wire   [46:0]    INSTRUCTION15;
    wire   [46:0]    INSTRUCTION16;
    wire   [46:0]    INSTRUCTION17;
    wire   [46:0]    INSTRUCTION18;
    wire   [46:0]    INSTRUCTION19;
    wire   [46:0]    INSTRUCTION20;
    wire   [46:0]    INSTRUCTION21;
    wire   [46:0]    INSTRUCTION22;
    wire   [46:0]    INSTRUCTION23;
    wire   [46:0]    INSTRUCTION24;
    wire   [46:0]    INSTRUCTION25;
    wire   [46:0]    INSTRUCTION26;
// [end]   : Final instruction assignment }}}
    reg              LAST_STATE_DONE_PIPE;
    reg [4:0] INST_POINTER;
    wire             INST_POINTER_SI;
    wire             INST_POINTER_SO;
    reg              LAST_STATE_DONE_REG;

//---------------------
//-- OperationSelect --
//---------------------
// [start] : OperationSelect {{{
    assign OP_SELECT_CMD            = {
                                        1'b0,
                                        1'b0,
                                        EXECUTE_OP_SELECT_CMD_REG3,
                                        1'b0,
                                        EXECUTE_OP_SELECT_CMD_REG1,
                                        EXECUTE_OP_SELECT_CMD_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_OP_SELECT_CMD       = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[5:0]            :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[5:0]            :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[5:0]            :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[5:0]            :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[5:0]            :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[5:0]            :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[5:0]            :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[5:0]            :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[5:0]            :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[5:0]            :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[5:0]           :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[5:0]           :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[5:0]           :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[5:0]           :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[5:0]           :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[5:0]           :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[5:0]           :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[5:0]           :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[5:0]           :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[5:0]           :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[5:0]           :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[5:0]           :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[5:0]           :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[5:0]           :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[5:0]           :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[5:0]           :
                                                                  INSTRUCTION26[5:0]            ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN) begin
            EXECUTE_OP_SELECT_CMD_REG3             <= 1'b0;
            EXECUTE_OP_SELECT_CMD_REG1             <= 1'b0;
            EXECUTE_OP_SELECT_CMD_REG0             <= 1'b0;
        end else
        if (RESET_REG_SETUP2) begin
            EXECUTE_OP_SELECT_CMD_REG3             <= INSTRUCTION0[3];
            EXECUTE_OP_SELECT_CMD_REG1             <= INSTRUCTION0[1];
            EXECUTE_OP_SELECT_CMD_REG0             <= INSTRUCTION0[0];
        end else
        if (LAST_TICK & (~BIST_HOLD)) begin
            EXECUTE_OP_SELECT_CMD_REG3            <= NEXT_OP_SELECT_CMD[3];
            EXECUTE_OP_SELECT_CMD_REG1            <= NEXT_OP_SELECT_CMD[1];
            EXECUTE_OP_SELECT_CMD_REG0            <= NEXT_OP_SELECT_CMD[0];
        end
    end
// [end]   : OperationSelect }}}


//------------------------
//-- Add_Reg_A_Equals_B --
//------------------------
// [start] : Add_Reg_A_Equals_B {{{
    assign A_EQUALS_B_INVERT_DATA   = {
                                        1'b0,
                                        1'b0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_A_EQUALS_B_INVERT_DATA             = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[7:6]            :
                                                     (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[7:6]            :
                                                     (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[7:6]            :
                                                     (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[7:6]            :
                                                     (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[7:6]            :
                                                     (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[7:6]            :
                                                     (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[7:6]            :
                                                     (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[7:6]            :
                                                     (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[7:6]            :
                                                     (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[7:6]            :
                                                     (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[7:6]           :
                                                     (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[7:6]           :
                                                     (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[7:6]           :
                                                     (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[7:6]           :
                                                     (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[7:6]           :
                                                     (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[7:6]           :
                                                     (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[7:6]           :
                                                     (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[7:6]           :
                                                     (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[7:6]           :
                                                     (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[7:6]           :
                                                     (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[7:6]           :
                                                     (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[7:6]           :
                                                     (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[7:6]           :
                                                     (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[7:6]           :
                                                     (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[7:6]           :
                                                     (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[7:6]           :
                                                                                 INSTRUCTION26[7:6]            ;
    // [end]   : instruction field }}}
 
// [end]   : Add_Reg_A_Equals_B }}}


//------------------
//-- Y0AddressCmd --
//------------------
// [start] : Y0AddressCmd {{{
    assign ADD_Y0_CMD               = {
                                        1'b0,
                                        1'b0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_ADD_Y0_CMD          = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[9:8]            :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[9:8]            :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[9:8]            :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[9:8]            :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[9:8]            :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[9:8]            :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[9:8]            :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[9:8]            :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[9:8]            :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[9:8]            :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[9:8]           :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[9:8]           :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[9:8]           :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[9:8]           :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[9:8]           :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[9:8]           :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[9:8]           :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[9:8]           :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[9:8]           :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[9:8]           :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[9:8]           :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[9:8]           :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[9:8]           :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[9:8]           :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[9:8]           :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[9:8]           :
                                                                  INSTRUCTION26[9:8]            ;
    // [end]   : instruction field }}}
 
// [end]   : Y0AddressCmd }}}


//------------------
//-- Y1AddressCmd --
//------------------
// [start] : Y1AddressCmd {{{
    assign ADD_Y1_CMD               = {
                                        EXECUTE_ADD_Y1_CMD_REG2,
                                        EXECUTE_ADD_Y1_CMD_REG1,
                                        EXECUTE_ADD_Y1_CMD_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_ADD_Y1_CMD          = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[12:10]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[12:10]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[12:10]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[12:10]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[12:10]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[12:10]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[12:10]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[12:10]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[12:10]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[12:10]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[12:10]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[12:10]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[12:10]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[12:10]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[12:10]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[12:10]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[12:10]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[12:10]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[12:10]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[12:10]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[12:10]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[12:10]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[12:10]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[12:10]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[12:10]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[12:10]         :
                                                                  INSTRUCTION26[12:10]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_ADD_Y1_CMD_REG2     <= 1'b0;
        EXECUTE_ADD_Y1_CMD_REG1     <= 1'b0;
        EXECUTE_ADD_Y1_CMD_REG0     <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_ADD_Y1_CMD_REG2   <= INSTRUCTION0[12];
          EXECUTE_ADD_Y1_CMD_REG1   <= INSTRUCTION0[11];
          EXECUTE_ADD_Y1_CMD_REG0   <= INSTRUCTION0[10];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_ADD_Y1_CMD_REG2              <= NEXT_ADD_Y1_CMD[2];
             EXECUTE_ADD_Y1_CMD_REG1              <= NEXT_ADD_Y1_CMD[1];
             EXECUTE_ADD_Y1_CMD_REG0              <= NEXT_ADD_Y1_CMD[0];
          end
       end
    end
// [end]   : Y1AddressCmd }}}


//------------------
//-- X0AddressCmd --
//------------------
// [start] : X0AddressCmd {{{
    assign ADD_X0_CMD               = {
                                        1'b0,
                                        1'b0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_ADD_X0_CMD          = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[14:13]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[14:13]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[14:13]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[14:13]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[14:13]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[14:13]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[14:13]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[14:13]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[14:13]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[14:13]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[14:13]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[14:13]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[14:13]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[14:13]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[14:13]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[14:13]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[14:13]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[14:13]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[14:13]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[14:13]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[14:13]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[14:13]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[14:13]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[14:13]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[14:13]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[14:13]         :
                                                                  INSTRUCTION26[14:13]          ;
    // [end]   : instruction field }}}
 
// [end]   : X0AddressCmd }}}


//------------------
//-- X1AddressCmd --
//------------------
// [start] : X1AddressCmd {{{
    assign ADD_X1_CMD               = {
                                        EXECUTE_ADD_X1_CMD_REG2,
                                        EXECUTE_ADD_X1_CMD_REG1,
                                        EXECUTE_ADD_X1_CMD_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_ADD_X1_CMD          = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[17:15]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[17:15]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[17:15]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[17:15]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[17:15]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[17:15]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[17:15]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[17:15]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[17:15]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[17:15]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[17:15]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[17:15]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[17:15]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[17:15]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[17:15]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[17:15]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[17:15]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[17:15]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[17:15]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[17:15]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[17:15]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[17:15]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[17:15]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[17:15]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[17:15]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[17:15]         :
                                                                  INSTRUCTION26[17:15]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_ADD_X1_CMD_REG2     <= 1'b0;
        EXECUTE_ADD_X1_CMD_REG1     <= 1'b0;
        EXECUTE_ADD_X1_CMD_REG0     <= 1'b0;
       end else 
       if (RESET_REG_SETUP2) begin
          EXECUTE_ADD_X1_CMD_REG2   <= INSTRUCTION0[17];
          EXECUTE_ADD_X1_CMD_REG1   <= INSTRUCTION0[16];
          EXECUTE_ADD_X1_CMD_REG0   <= INSTRUCTION0[15];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_ADD_X1_CMD_REG2              <= NEXT_ADD_X1_CMD[2];
             EXECUTE_ADD_X1_CMD_REG1              <= NEXT_ADD_X1_CMD[1];
             EXECUTE_ADD_X1_CMD_REG0              <= NEXT_ADD_X1_CMD[0];
          end
       end
    end
// [end]   : X1AddressCmd }}}


//----------------------
//-- AddressSelectCmd --
//----------------------
// [start] : AddressSelectCmd {{{
    assign ADD_REG_SELECT           = {
                                        1'b0,
                                        EXECUTE_ADD_REG_SELECT_REG1,
                                        1'b0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_ADD_REG_SELECT      = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[20:18]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[20:18]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[20:18]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[20:18]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[20:18]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[20:18]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[20:18]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[20:18]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[20:18]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[20:18]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[20:18]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[20:18]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[20:18]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[20:18]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[20:18]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[20:18]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[20:18]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[20:18]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[20:18]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[20:18]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[20:18]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[20:18]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[20:18]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[20:18]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[20:18]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[20:18]         :
                                                                  INSTRUCTION26[20:18]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
         EXECUTE_ADD_REG_SELECT_REG1               <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_ADD_REG_SELECT_REG1              <= INSTRUCTION0[19];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_ADD_REG_SELECT_REG1          <= NEXT_ADD_REG_SELECT[1];
          end
       end
    end
// [end]   : AddressSelectCmd }}}


//------------------
//-- WriteDataCmd --
//------------------
// [start] : WriteDataCmd {{{
    assign WDATA_CMD                = {
                                        EXECUTE_WDATA_CMD_REG3,
                                        1'b0,
                                        EXECUTE_WDATA_CMD_REG1,
                                        EXECUTE_WDATA_CMD_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_WDATA_CMD           = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[24:21]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[24:21]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[24:21]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[24:21]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[24:21]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[24:21]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[24:21]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[24:21]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[24:21]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[24:21]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[24:21]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[24:21]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[24:21]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[24:21]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[24:21]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[24:21]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[24:21]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[24:21]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[24:21]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[24:21]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[24:21]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[24:21]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[24:21]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[24:21]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[24:21]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[24:21]         :
                                                                  INSTRUCTION26[24:21]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_WDATA_CMD_REG3      <= 1'b0;
        EXECUTE_WDATA_CMD_REG1      <= 1'b0;
        EXECUTE_WDATA_CMD_REG0      <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_WDATA_CMD_REG3    <= INSTRUCTION0[24];
          EXECUTE_WDATA_CMD_REG1    <= INSTRUCTION0[22];
          EXECUTE_WDATA_CMD_REG0    <= INSTRUCTION0[21];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_WDATA_CMD_REG3               <= NEXT_WDATA_CMD[3];
             EXECUTE_WDATA_CMD_REG1               <= NEXT_WDATA_CMD[1];
             EXECUTE_WDATA_CMD_REG0               <= NEXT_WDATA_CMD[0];
          end
       end
    end
// [end]   : WriteDataCmd }}}


//-------------------
//-- ExpectDataCmd --
//-------------------
// [start] : ExpectDataCmd {{{
    assign EDATA_CMD                = {
                                        EXECUTE_EDATA_CMD_REG3,
                                        1'b0,
                                        EXECUTE_EDATA_CMD_REG1,
                                        EXECUTE_EDATA_CMD_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_EDATA_CMD           = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[28:25]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[28:25]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[28:25]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[28:25]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[28:25]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[28:25]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[28:25]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[28:25]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[28:25]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[28:25]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[28:25]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[28:25]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[28:25]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[28:25]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[28:25]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[28:25]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[28:25]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[28:25]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[28:25]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[28:25]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[28:25]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[28:25]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[28:25]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[28:25]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[28:25]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[28:25]         :
                                                                  INSTRUCTION26[28:25]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_EDATA_CMD_REG3      <= 1'b0;
        EXECUTE_EDATA_CMD_REG1      <= 1'b0;
        EXECUTE_EDATA_CMD_REG0      <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_EDATA_CMD_REG3    <= INSTRUCTION0[28];
          EXECUTE_EDATA_CMD_REG1    <= INSTRUCTION0[26];
          EXECUTE_EDATA_CMD_REG0    <= INSTRUCTION0[25];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_EDATA_CMD_REG3               <= NEXT_EDATA_CMD[3];
             EXECUTE_EDATA_CMD_REG1               <= NEXT_EDATA_CMD[1];
             EXECUTE_EDATA_CMD_REG0               <= NEXT_EDATA_CMD[0];
          end
       end
    end
// [end]   : ExpectDataCmd }}}


//-------------
//-- LoopCmd --
//-------------
// [start] : LoopCmd {{{
    assign LOOP_CMD                 = {
                                        EXECUTE_LOOP_CMD_REG1,
                                        EXECUTE_LOOP_CMD_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_LOOP_CMD            = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[30:29]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[30:29]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[30:29]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[30:29]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[30:29]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[30:29]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[30:29]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[30:29]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[30:29]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[30:29]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[30:29]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[30:29]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[30:29]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[30:29]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[30:29]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[30:29]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[30:29]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[30:29]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[30:29]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[30:29]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[30:29]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[30:29]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[30:29]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[30:29]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[30:29]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[30:29]         :
                                                                  INSTRUCTION26[30:29]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_LOOP_CMD_REG1       <= 1'b0;
        EXECUTE_LOOP_CMD_REG0       <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_LOOP_CMD_REG1     <= INSTRUCTION0[30];
          EXECUTE_LOOP_CMD_REG0     <= INSTRUCTION0[29];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_LOOP_CMD_REG1                <= NEXT_LOOP_CMD[1];
             EXECUTE_LOOP_CMD_REG0                <= NEXT_LOOP_CMD[0];
          end
       end
    end
// [end]   : LoopCmd }}}


//------------------------
//-- InhibitDataCompare --
//------------------------
// [start] : InhibitDataCompare {{{
    assign INH_DATA_CMP             = EXECUTE_INH_DATA_CMP_REG0;
 
    // [start] : instruction field {{{
    assign NEXT_INH_DATA_CMP        = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[32:32]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[32:32]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[32:32]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[32:32]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[32:32]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[32:32]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[32:32]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[32:32]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[32:32]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[32:32]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[32:32]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[32:32]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[32:32]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[32:32]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[32:32]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[32:32]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[32:32]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[32:32]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[32:32]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[32:32]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[32:32]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[32:32]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[32:32]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[32:32]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[32:32]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[32:32]         :
                                                                  INSTRUCTION26[32:32]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_INH_DATA_CMP_REG0   <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_INH_DATA_CMP_REG0                <= INSTRUCTION0[32];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_INH_DATA_CMP_REG0            <= NEXT_INH_DATA_CMP;
          end
       end
    end
// [end]   : InhibitDataCompare }}}


//-----------------
//-- CounterACmd --
//-----------------
// [start] : CounterACmd {{{
    assign COUNTERA_CMD             = 1'b0;
 
    // [start] : instruction field {{{
    assign NEXT_COUNTERA_CMD        = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[33:33]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[33:33]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[33:33]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[33:33]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[33:33]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[33:33]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[33:33]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[33:33]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[33:33]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[33:33]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[33:33]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[33:33]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[33:33]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[33:33]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[33:33]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[33:33]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[33:33]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[33:33]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[33:33]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[33:33]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[33:33]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[33:33]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[33:33]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[33:33]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[33:33]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[33:33]         :
                                                                  INSTRUCTION26[33:33]          ;
    // [end]   : instruction field }}}
 
// [end]   : CounterACmd }}}


//----------------------
//-- DelayCounterACmd --
//----------------------
// [start] : DelayCounterCmd {{{
    assign DELAYCOUNTER_CMD         = 1'b0;
 
    // [start] : instruction field {{{
    assign NEXT_DELAYCOUNTER_CMD    = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[34:34]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[34:34]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[34:34]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[34:34]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[34:34]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[34:34]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[34:34]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[34:34]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[34:34]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[34:34]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[34:34]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[34:34]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[34:34]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[34:34]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[34:34]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[34:34]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[34:34]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[34:34]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[34:34]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[34:34]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[34:34]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[34:34]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[34:34]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[34:34]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[34:34]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[34:34]         :
                                                                  INSTRUCTION26[34:34]          ;
    // [end]   : instruction field }}}
 
// [end]   : DelayCounterCmd }}}


//-------------------------
//-- BranchToInstruction --
//-------------------------
// [start] : BranchToInstruction {{{
    assign BRANCH_POINTER           = {
                                        EXECUTE_BRANCH_POINTER_REG4,
                                        EXECUTE_BRANCH_POINTER_REG3,
                                        EXECUTE_BRANCH_POINTER_REG2,
                                        EXECUTE_BRANCH_POINTER_REG1,
                                        EXECUTE_BRANCH_POINTER_REG0 
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_BRANCH_POINTER      = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[39:35]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[39:35]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[39:35]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[39:35]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[39:35]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[39:35]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[39:35]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[39:35]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[39:35]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[39:35]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[39:35]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[39:35]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[39:35]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[39:35]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[39:35]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[39:35]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[39:35]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[39:35]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[39:35]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[39:35]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[39:35]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[39:35]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[39:35]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[39:35]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[39:35]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[39:35]         :
                                                                  INSTRUCTION26[39:35]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_BRANCH_POINTER_REG4                <= 1'b0;
        EXECUTE_BRANCH_POINTER_REG3                <= 1'b0;
        EXECUTE_BRANCH_POINTER_REG2                <= 1'b0;
        EXECUTE_BRANCH_POINTER_REG1                <= 1'b0;
        EXECUTE_BRANCH_POINTER_REG0                <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_BRANCH_POINTER_REG4              <= INSTRUCTION0[39];
          EXECUTE_BRANCH_POINTER_REG3              <= INSTRUCTION0[38];
          EXECUTE_BRANCH_POINTER_REG2              <= INSTRUCTION0[37];
          EXECUTE_BRANCH_POINTER_REG1              <= INSTRUCTION0[36];
          EXECUTE_BRANCH_POINTER_REG0              <= INSTRUCTION0[35];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_BRANCH_POINTER_REG4          <= NEXT_BRANCH_POINTER[4];
             EXECUTE_BRANCH_POINTER_REG3          <= NEXT_BRANCH_POINTER[3];
             EXECUTE_BRANCH_POINTER_REG2          <= NEXT_BRANCH_POINTER[2];
             EXECUTE_BRANCH_POINTER_REG1          <= NEXT_BRANCH_POINTER[1];
             EXECUTE_BRANCH_POINTER_REG0          <= NEXT_BRANCH_POINTER[0];
          end
       end
    end
// [end]   : BranchToInstruction }}}


//--------------------
//-- NextConditions --
//--------------------
// [start] : NextConditions {{{
    assign NEXT_CONDITIONS          = {
                                        EXECUTE_NEXT_CONDITIONS_REG6, // NC0_REPEATLOOP_ENDCOUNT
                                        1'b0, // NC0_COUNTERA_ENDCOUNT
                                        1'b0, // NC0_DELAYCOUNTER_ENDCOUNT
                                        EXECUTE_NEXT_CONDITIONS_REG3, // NC0_X1_ENDCOUNT
                                        1'b0, // NC0_X0_ENDCOUNT
                                        EXECUTE_NEXT_CONDITIONS_REG1, // NC0_Y1_ENDCOUNT
                                        1'b0  // NC0_Y0_ENDCOUNT
                                      };
 
    // [start] : instruction field {{{
    assign NEXT_CONDITIONS_FIELD    = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[46:40]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[46:40]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[46:40]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[46:40]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[46:40]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[46:40]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[46:40]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[46:40]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[46:40]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[46:40]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[46:40]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[46:40]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[46:40]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[46:40]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[46:40]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[46:40]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[46:40]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[46:40]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[46:40]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[46:40]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[46:40]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[46:40]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[46:40]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[46:40]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[46:40]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[46:40]         :
                                                                  INSTRUCTION26[46:40]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_NEXT_CONDITIONS_REG6               <= 1'b0;
        EXECUTE_NEXT_CONDITIONS_REG3               <= 1'b0;
        EXECUTE_NEXT_CONDITIONS_REG1               <= 1'b0;
       end else        
       if (RESET_REG_SETUP2) begin
          EXECUTE_NEXT_CONDITIONS_REG6             <= INSTRUCTION0[46];
          EXECUTE_NEXT_CONDITIONS_REG3             <= INSTRUCTION0[43];
          EXECUTE_NEXT_CONDITIONS_REG1             <= INSTRUCTION0[41];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_NEXT_CONDITIONS_REG6         <= NEXT_CONDITIONS_FIELD[6];
             EXECUTE_NEXT_CONDITIONS_REG3         <= NEXT_CONDITIONS_FIELD[3];
             EXECUTE_NEXT_CONDITIONS_REG1         <= NEXT_CONDITIONS_FIELD[1];
          end
       end
    end
// [end]   : NextConditions }}}


//-----------------------------
//-- InhibitLastAddressCount --
//-----------------------------
// [start] : InhibitLastAddressCount {{{
    assign INH_LAST_ADDR_CNT        = (LOOP_STATE_TRUE_INT | NEXT_STATE_TRUE) & EXECUTE_INH_LAST_ADDR_CNT_REG0;
 
    // [start] : instruction field {{{
    assign NEXT_INH_LAST_ADDR_CNT   = (NEXT_POINTER == 5'b00000)                ? INSTRUCTION0[31:31]          :
                                      (NEXT_POINTER == 5'b00001)                ? INSTRUCTION1[31:31]          :
                                      (NEXT_POINTER == 5'b00010)                ? INSTRUCTION2[31:31]          :
                                      (NEXT_POINTER == 5'b00011)                ? INSTRUCTION3[31:31]          :
                                      (NEXT_POINTER == 5'b00100)                ? INSTRUCTION4[31:31]          :
                                      (NEXT_POINTER == 5'b00101)                ? INSTRUCTION5[31:31]          :
                                      (NEXT_POINTER == 5'b00110)                ? INSTRUCTION6[31:31]          :
                                      (NEXT_POINTER == 5'b00111)                ? INSTRUCTION7[31:31]          :
                                      (NEXT_POINTER == 5'b01000)                ? INSTRUCTION8[31:31]          :
                                      (NEXT_POINTER == 5'b01001)                ? INSTRUCTION9[31:31]          :
                                      (NEXT_POINTER == 5'b01010)                ? INSTRUCTION10[31:31]         :
                                      (NEXT_POINTER == 5'b01011)                ? INSTRUCTION11[31:31]         :
                                      (NEXT_POINTER == 5'b01100)                ? INSTRUCTION12[31:31]         :
                                      (NEXT_POINTER == 5'b01101)                ? INSTRUCTION13[31:31]         :
                                      (NEXT_POINTER == 5'b01110)                ? INSTRUCTION14[31:31]         :
                                      (NEXT_POINTER == 5'b01111)                ? INSTRUCTION15[31:31]         :
                                      (NEXT_POINTER == 5'b10000)                ? INSTRUCTION16[31:31]         :
                                      (NEXT_POINTER == 5'b10001)                ? INSTRUCTION17[31:31]         :
                                      (NEXT_POINTER == 5'b10010)                ? INSTRUCTION18[31:31]         :
                                      (NEXT_POINTER == 5'b10011)                ? INSTRUCTION19[31:31]         :
                                      (NEXT_POINTER == 5'b10100)                ? INSTRUCTION20[31:31]         :
                                      (NEXT_POINTER == 5'b10101)                ? INSTRUCTION21[31:31]         :
                                      (NEXT_POINTER == 5'b10110)                ? INSTRUCTION22[31:31]         :
                                      (NEXT_POINTER == 5'b10111)                ? INSTRUCTION23[31:31]         :
                                      (NEXT_POINTER == 5'b11000)                ? INSTRUCTION24[31:31]         :
                                      (NEXT_POINTER == 5'b11001)                ? INSTRUCTION25[31:31]         :
                                                                  INSTRUCTION26[31:31]          ;
    // [end]   : instruction field }}}
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EXECUTE_INH_LAST_ADDR_CNT_REG0             <= 1'b0;
       end else
       if (RESET_REG_SETUP2) begin
          EXECUTE_INH_LAST_ADDR_CNT_REG0           <= INSTRUCTION0[31];
       end else begin 
          if (LAST_TICK & (~BIST_HOLD)) begin
             EXECUTE_INH_LAST_ADDR_CNT_REG0       <= NEXT_INH_LAST_ADDR_CNT;
          end
       end
    end
// [end]   : InhibitLastAddressCount }}}

    assign LOOP_STATE_TRUE          = LOOP_STATE_TRUE_INT;

//--------------------
//-- LoopConditions --
//--------------------
// [start] : LoopConditions {{{
    assign LOOP_CONDITIONS          = {
                                        1'b0, // NC0_COUNTERA_ENDCOUNT
                                        1'b0, // NC0_DELAYCOUNTER_ENDCOUNT
                                        EXECUTE_NEXT_CONDITIONS_REG3, // NC0_X1_ENDCOUNT
                                        1'b0, // NC0_X0_ENDCOUNT
                                        EXECUTE_NEXT_CONDITIONS_REG1, // NC0_Y1_ENDCOUNT
                                        1'b0  // NC0_Y0_ENDCOUNT
                                      };
 
 
// [end]   : LoopConditions }}}


    assign SO        = INST_POINTER_SO;
 

// NEXT_POINTER persistent buffers {{{
    i0sbfn000ab1n02x5 tessent_persistent_cell_NEXT_POINTER0 (
        .a           (NEXT_POINTER_TO_BUF[0]      ),
        .o           (NEXT_POINTER[0]             )
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_NEXT_POINTER1 (
        .a           (NEXT_POINTER_TO_BUF[1]      ),
        .o           (NEXT_POINTER[1]             )
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_NEXT_POINTER2 (
        .a           (NEXT_POINTER_TO_BUF[2]      ),
        .o           (NEXT_POINTER[2]             )
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_NEXT_POINTER3 (
        .a           (NEXT_POINTER_TO_BUF[3]      ),
        .o           (NEXT_POINTER[3]             )
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_NEXT_POINTER4 (
        .a           (NEXT_POINTER_TO_BUF[4]      ),
        .o           (NEXT_POINTER[4]             )
    );    
// NEXT_POINTER persistent buffers }}}
 

 
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
       1'b0: begin  
           NEXT_POINTER_TO_BUF = NEXT_POINTER_INT;
       end 
       1'b1: begin  
           NEXT_POINTER_TO_BUF = ((MEM_RST == 1'b1) & (INST_POINTER == 5'b00100)) ? 5'b01110 :
                          ((ALGO_MODE == 2'b10) & (INST_POINTER == 5'b00000)) ? 5'b01000 :
                          ((ALGO_MODE == 2'b11) & (INST_POINTER == 5'b00000)) ? 5'b01010 :
                          NEXT_POINTER_INT ;
       end 
       endcase
    end
 
    assign NEXT_POINTER_INT         = (NEXT_STATE_TRUE)     ? INC_POINTER(INST_POINTER)         :
                                      (LOOP_STATE_TRUE_INT) ? LOOP_POINTER                      :
                                                              BRANCH_POINTER                    ;
     
    assign NEXT_STATE_TRUE          = (NEXT_CONDITIONS == (NEXT_TRIGGERS & NEXT_CONDITIONS))    ;
     
    assign NEXT_TRIGGERS            = {LOOPCOUNTMAX_TRIGGER,
                                       COUNTERA_ENDCOUNT_TRIGGER,
                                       DELAYCOUNTER_ENDCOUNT_TRIGGER, 
                                       X1_MINMAX_TRIGGER,
                                       X0_MINMAX_TRIGGER,
                                       Y1_MINMAX_TRIGGER,
                                       Y0_MINMAX_TRIGGER};
     
    assign LOOP_STATE_TRUE_INT      = ((NEXT_CONDITIONS[6] == 1'b1)              &&
                                       (LOOP_CONDITIONS == (LOOP_TRIGGERS & LOOP_CONDITIONS)))  ;
     
    assign LOOP_TRIGGERS            = {COUNTERA_ENDCOUNT_TRIGGER,
                                       DELAYCOUNTER_ENDCOUNT_TRIGGER, 
                                       X1_MINMAX_TRIGGER,
                                       X0_MINMAX_TRIGGER,
                                       Y1_MINMAX_TRIGGER,
                                       Y0_MINMAX_TRIGGER};
     
    assign MBISTPG_ALGO_SEL_INT  = MBISTPG_ALGO_SEL ;    
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
       1'b0: begin  
                      LAST_STATE_INT               = (NEXT_STATE_TRUE && (INST_POINTER == 5'b11010));
      end   
       1'b1: begin  
          case (ALGO_MODE)
             2'b00: LAST_STATE_INT                 = (MEM_RST) ? (BIST_RUN && NEXT_STATE_TRUE && (INST_POINTER == 5'b01110)) : (NEXT_STATE_TRUE && (INST_POINTER == 5'b11010));
             2'b01: LAST_STATE_INT                 = (NEXT_STATE_TRUE && (INST_POINTER == 5'b00110)); 
             2'b10: LAST_STATE_INT                 = (NEXT_STATE_TRUE && (INST_POINTER == 5'b01000)); 
             2'b11: LAST_STATE_INT                 = (NEXT_STATE_TRUE && (INST_POINTER == 5'b01010)); 
          endcase
      end   
       endcase 
    end
   
    assign    LAST_STATE =  LAST_STATE_INT;
   
    assign LAST_STATE_DONE          = LAST_STATE_DONE_REG;

//--------------------------
//-- Hardcoded algorithms (2)
//--------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
       // Algorithm: INTELLVPMOVIFX Instructions: 5 {{{
       1'b0:  begin
         // Instruction: M0_DUMMY INST_POINTER: 0 {{{
         INSTRUCTION0_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0010   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b101    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b101    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: M0_DUMMY }}}
         // Instruction: M0_W0 INST_POINTER: 1 {{{
         INSTRUCTION1_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b1      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b011    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b011    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000010 };             // [5:0] OperationSelect
         // Instruction: M0_W0 }}}
         // Instruction: M1_R0_W1 INST_POINTER: 2 {{{
         INSTRUCTION2_WIRE          = { 1'b1      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b01     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0001   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b001000 };             // [5:0] OperationSelect
         // Instruction: M1_R0_W1 }}}
         // Instruction: M1_DUMMY INST_POINTER: 3 {{{
         INSTRUCTION3_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00011  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0010   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b100    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b100    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: M1_DUMMY }}}
         // Instruction: CLEAR_ARRAYS INST_POINTER: 4 {{{
         INSTRUCTION4_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00100  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b1001   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000010 };             // [5:0] OperationSelect
         // Instruction: CLEAR_ARRAYS }}}
         // Instruction: 5 INST_POINTER: 5 {{{
         INSTRUCTION5_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00101  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 5 }}}
         // Instruction: 6 INST_POINTER: 6 {{{
         INSTRUCTION6_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00110  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 6 }}}
         // Instruction: 7 INST_POINTER: 7 {{{
         INSTRUCTION7_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 7 }}}
         // Instruction: 8 INST_POINTER: 8 {{{
         INSTRUCTION8_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 8 }}}
         // Instruction: 9 INST_POINTER: 9 {{{
         INSTRUCTION9_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 9 }}}
         // Instruction: 10 INST_POINTER: 10 {{{
         INSTRUCTION10_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 10 }}}
         // Instruction: 11 INST_POINTER: 11 {{{
         INSTRUCTION11_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01011  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 11 }}}
         // Instruction: 12 INST_POINTER: 12 {{{
         INSTRUCTION12_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01100  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 12 }}}
         // Instruction: 13 INST_POINTER: 13 {{{
         INSTRUCTION13_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01101  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 13 }}}
         // Instruction: 14 INST_POINTER: 14 {{{
         INSTRUCTION14_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01110  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 14 }}}
         // Instruction: 15 INST_POINTER: 15 {{{
         INSTRUCTION15_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 15 }}}
         // Instruction: 16 INST_POINTER: 16 {{{
         INSTRUCTION16_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 16 }}}
         // Instruction: 17 INST_POINTER: 17 {{{
         INSTRUCTION17_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 17 }}}
         // Instruction: 18 INST_POINTER: 18 {{{
         INSTRUCTION18_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 18 }}}
         // Instruction: 19 INST_POINTER: 19 {{{
         INSTRUCTION19_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10011  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 19 }}}
         // Instruction: 20 INST_POINTER: 20 {{{
         INSTRUCTION20_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10100  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 20 }}}
         // Instruction: 21 INST_POINTER: 21 {{{
         INSTRUCTION21_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10101  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 21 }}}
         // Instruction: 22 INST_POINTER: 22 {{{
         INSTRUCTION22_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10110  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 22 }}}
         // Instruction: 23 INST_POINTER: 23 {{{
         INSTRUCTION23_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 23 }}}
         // Instruction: 24 INST_POINTER: 24 {{{
         INSTRUCTION24_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b11000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 24 }}}
         // Instruction: 25 INST_POINTER: 25 {{{
         INSTRUCTION25_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b11001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 25 }}}
         // Instruction: 26 INST_POINTER: 26 {{{
         INSTRUCTION26_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b11010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: 26 }}}
       end   
       // Algorithm: INTELLVPMOVIFX }}}
       // Algorithm: SMARCHCHKBCI Instructions: 27 {{{
       1'b1:  begin
         // Instruction: INST0_IDLE_PH_1 INST_POINTER: 0 {{{
         INSTRUCTION0_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0011   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: INST0_IDLE_PH_1 }}}
         // Instruction: INS1_PH_2 INST_POINTER: 1 {{{
         INSTRUCTION1_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b1      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0011   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS1_PH_2 }}}
         // Instruction: INS2_PH_2 INST_POINTER: 2 {{{
         INSTRUCTION2_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0011   ,              // [28:25] ExpectDataCmd
                                        4'b0011   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS2_PH_2 }}}
         // Instruction: INS3_PH_3 INST_POINTER: 3 {{{
         INSTRUCTION3_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00011  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0011   ,              // [28:25] ExpectDataCmd
                                        4'b0010   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS3_PH_3 }}}
         // Instruction: INS4_PH_3 INST_POINTER: 4 {{{
         INSTRUCTION4_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00100  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0010   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000010 };             // [5:0] OperationSelect
         // Instruction: INS4_PH_3 }}}
         // Instruction: INS5_IDLE_PH_4 INST_POINTER: 5 {{{
         INSTRUCTION5_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00101  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0010   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: INS5_IDLE_PH_4 }}}
         // Instruction: INS6_PH_5 INST_POINTER: 6 {{{
         INSTRUCTION6_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00110  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b1      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS6_PH_5 }}}
         // Instruction: INS7_PH_5.5 INST_POINTER: 7 {{{
         INSTRUCTION7_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b00111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS7_PH_5.5 }}}
         // Instruction: INS8_PH_6 INST_POINTER: 8 {{{
         INSTRUCTION8_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0000   ,              // [28:25] ExpectDataCmd
                                        4'b0001   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS8_PH_6 }}}
         // Instruction: INS9_PH_6.5 INST_POINTER: 9 {{{
         INSTRUCTION9_WIRE          = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0001   ,              // [28:25] ExpectDataCmd
                                        4'b0001   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS9_PH_6.5 }}}
         // Instruction: INS10_PH_7 INST_POINTER: 10 {{{
         INSTRUCTION10_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0001   ,              // [28:25] ExpectDataCmd
                                        4'b0000   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS10_PH_7 }}}
         // Instruction: INST11_IDLE_PH_8 INST_POINTER: 11 {{{
         INSTRUCTION11_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01011  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b0010   ,              // [24:21] WriteDataCmd
                                        3'b000    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000000 };             // [5:0] OperationSelect
         // Instruction: INST11_IDLE_PH_8 }}}
         // Instruction: INS12_PH_9 INST_POINTER: 12 {{{
         INSTRUCTION12_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01100  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b1      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1001   ,              // [28:25] ExpectDataCmd
                                        4'b1001   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS12_PH_9 }}}
         // Instruction: INS13_PH_9 INST_POINTER: 13 {{{
         INSTRUCTION13_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01101  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1001   ,              // [28:25] ExpectDataCmd
                                        4'b1001   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000010 };             // [5:0] OperationSelect
         // Instruction: INS13_PH_9 }}}
         // Instruction: INS14_PH_10 INST_POINTER: 14 {{{
         INSTRUCTION14_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01110  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1001   ,              // [28:25] ExpectDataCmd
                                        4'b1001   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000001 };             // [5:0] OperationSelect
         // Instruction: INS14_PH_10 }}}
         // Instruction: INS15_PH_11 INST_POINTER: 15 {{{
         INSTRUCTION15_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1001   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS15_PH_11 }}}
         // Instruction: INS16_PH_11 INST_POINTER: 16 {{{
         INSTRUCTION16_WIRE         = { 1'b1      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b01111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b01     ,              // [30:29] RepeatLoop
                                        4'b1000   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS16_PH_11 }}}
         // Instruction: INS17_PH_13 INST_POINTER: 17 {{{
         INSTRUCTION17_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1001   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS17_PH_13 }}}
         // Instruction: INS18_PH_13 INST_POINTER: 18 {{{
         INSTRUCTION18_WIRE         = { 1'b1      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b10     ,              // [30:29] RepeatLoop
                                        4'b1000   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b011    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b011    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000010 };             // [5:0] OperationSelect
         // Instruction: INS18_PH_13 }}}
         // Instruction: INS19_PH_15 INST_POINTER: 19 {{{
         INSTRUCTION19_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10011  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b1      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1001   ,              // [28:25] ExpectDataCmd
                                        4'b1001   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b011    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b011    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS19_PH_15 }}}
         // Instruction: INS20_PH_16 INST_POINTER: 20 {{{
         INSTRUCTION20_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10100  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b1      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS20_PH_16 }}}
         // Instruction: INS21_PH_16 INST_POINTER: 21 {{{
         INSTRUCTION21_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10101  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1000   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000010 };             // [5:0] OperationSelect
         // Instruction: INS21_PH_16 }}}
         // Instruction: INS22_PH_17 INST_POINTER: 22 {{{
         INSTRUCTION22_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10110  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000001 };             // [5:0] OperationSelect
         // Instruction: INS22_PH_17 }}}
         // Instruction: INS23_PH_18 INST_POINTER: 23 {{{
         INSTRUCTION23_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b10111  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1000   ,              // [28:25] ExpectDataCmd
                                        4'b1000   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS23_PH_18 }}}
         // Instruction: INS24_PH_19 INST_POINTER: 24 {{{
         INSTRUCTION24_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b11000  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b1000   ,              // [28:25] ExpectDataCmd
                                        4'b1010   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b000    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000011 };             // [5:0] OperationSelect
         // Instruction: INS24_PH_19 }}}
         // Instruction: INS25_PH_19 INST_POINTER: 25 {{{
         INSTRUCTION25_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b0      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b0      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b11001  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b1010   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b000    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000001 };             // [5:0] OperationSelect
         // Instruction: INS25_PH_19 }}}
         // Instruction: INS26_PH_20 INST_POINTER: 26 {{{
         INSTRUCTION26_WIRE         = { 1'b0      ,              // [46:46] NextConditions: RepeatLoopEndCount
                                        1'b0      ,              // [45:45] NextConditions: CounterAEndCount
                                        1'b0      ,              // [44:44] NextConditions: DelayCounterEndCount
                                        1'b1      ,              // [43:43] NextConditions: X1_EndCount
                                        1'b0      ,              // [42:42] NextConditions: X0_EndCount
                                        1'b1      ,              // [41:41] NextConditions: Y1_EndCount
                                        1'b0      ,              // [40:40] NextConditions: Y0_EndCount
                                        5'b11010  ,              // [39:35] BranchToInstruction
                                        1'b0      ,              // [34:34] DelayCounterCmd
                                        1'b0      ,              // [33:33] CounterACmd
                                        1'b0      ,              // [32:32] InhibitDataCompare
                                        1'b0      ,              // [31:31] InhibitLastAddressCount
                                        2'b00     ,              // [30:29] RepeatLoop
                                        4'b0010   ,              // [28:25] ExpectDataCmd
                                        4'b1010   ,              // [24:21] WriteDataCmd
                                        3'b010    ,              // [20:18] AddressSelectCmd
                                        3'b010    ,              // [17:15] X1AddressCmd
                                        2'b00     ,              // [14:13] X0AddressCmd
                                        3'b010    ,              // [12:10] Y1AddressCmd
                                        2'b00     ,              // [9:8] Y0AddressCmd
                                        2'b00     ,              // [7:6] Add_Reg_A_Equals_B
                                        6'b000001 };             // [5:0] OperationSelect
         // Instruction: INS26_PH_20 }}}
       end   
       // Algorithm: SMARCHCHKBCI }}}
       endcase
    end 

//------------------------------------------------
//-- Select hardcoded or softcoded instructions --
//------------------------------------------------
// [start] : hard vs soft code {{{
    assign INSTRUCTION0             =  INSTRUCTION0_WIRE ;           
    assign INSTRUCTION1             =  INSTRUCTION1_WIRE ;           
    assign INSTRUCTION2             =  INSTRUCTION2_WIRE ;           
    assign INSTRUCTION3             =  INSTRUCTION3_WIRE ;           
    assign INSTRUCTION4             =  INSTRUCTION4_WIRE ;           
    assign INSTRUCTION5             =  INSTRUCTION5_WIRE ;           
    assign INSTRUCTION6             =  INSTRUCTION6_WIRE ;           
    assign INSTRUCTION7             =  INSTRUCTION7_WIRE ;           
    assign INSTRUCTION8             =  INSTRUCTION8_WIRE ;           
    assign INSTRUCTION9             =  INSTRUCTION9_WIRE ;           
    assign INSTRUCTION10            =  INSTRUCTION10_WIRE ;           
    assign INSTRUCTION11            =  INSTRUCTION11_WIRE ;           
    assign INSTRUCTION12            =  INSTRUCTION12_WIRE ;           
    assign INSTRUCTION13            =  INSTRUCTION13_WIRE ;           
    assign INSTRUCTION14            =  INSTRUCTION14_WIRE ;           
    assign INSTRUCTION15            =  INSTRUCTION15_WIRE ;           
    assign INSTRUCTION16            =  INSTRUCTION16_WIRE ;           
    assign INSTRUCTION17            =  INSTRUCTION17_WIRE ;           
    assign INSTRUCTION18            =  INSTRUCTION18_WIRE ;           
    assign INSTRUCTION19            =  INSTRUCTION19_WIRE ;           
    assign INSTRUCTION20            =  INSTRUCTION20_WIRE ;           
    assign INSTRUCTION21            =  INSTRUCTION21_WIRE ;           
    assign INSTRUCTION22            =  INSTRUCTION22_WIRE ;           
    assign INSTRUCTION23            =  INSTRUCTION23_WIRE ;           
    assign INSTRUCTION24            =  INSTRUCTION24_WIRE ;           
    assign INSTRUCTION25            =  INSTRUCTION25_WIRE ;           
    assign INSTRUCTION26            =  INSTRUCTION26_WIRE ;           
// [end]   : hard vs soft code }}}

    wire             RESET_REG_SETUP1_BISTON;
    assign RESET_REG_SETUP1_BISTON = RESET_REG_SETUP1|(~BIST_ON);
//synopsys sync_set_reset "RESET_REG_SETUP1_BISTON"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
        LAST_STATE_DONE_REG         <= 1'b0;
       else
       if (RESET_REG_SETUP1_BISTON) begin
          LAST_STATE_DONE_REG       <= 1'b0;
       end else begin 
          if (LAST_TICK & (~BIST_HOLD) & (~LAST_STATE_DONE_REG)) begin
             LAST_STATE_DONE_REG    <= LAST_STATE;
          end
       end
    end
    //synopsys sync_set_reset "RESET_REG_SETUP1_BISTON"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
        LAST_STATE_DONE_PIPE        <= 1'b0;
       else
       if (RESET_REG_SETUP1_BISTON) begin
          LAST_STATE_DONE_PIPE      <= 1'b0;
       end else begin 
          if (~BIST_HOLD) begin
             LAST_STATE_DONE_PIPE   <= LAST_STATE_DONE_REG;
          end
       end
    end
 
    assign LAST_STATE_DONE_PIPELINED =
                               (LAST_STATE_DONE_PIPE             & OPSET_SELECT_DECODED[0])     |
                               (LAST_STATE_DONE_REG              & OPSET_SELECT_DECODED[1])     ;

    assign INST_POINTER_SI = SI;
    wire INST_POINTER_SYNC_RESET;
    assign INST_POINTER_SYNC_RESET = RESET_REG_SETUP1 | ESOE_RESET;
    // synopsys sync_set_reset "INST_POINTER_SYNC_RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
        INST_POINTER                <= 5'b00000;
       else
       if (INST_POINTER_SYNC_RESET) begin
           INST_POINTER             <= 5'b00000; 
       end else begin
          if (BIST_SHIFT_SHORT) begin
             INST_POINTER           <= {INST_POINTER[3:0], INST_POINTER_SI};
          end else begin
             if (LAST_TICK & (~BIST_HOLD)) begin
                INST_POINTER        <= NEXT_POINTER;
             end
          end
       end
    end

    assign INST_POINTER_SO          = INST_POINTER[4];
    // Checkerboard phase enable for the SMarchCHKB family of algorithms.
    always_comb begin
        case (MBISTPG_ALGO_SEL_INT) 
             1'b0: CHKBCI_PHASE_INT = 1'b0; // Algorithm: INTELLVPMOVIFX
             1'b1: CHKBCI_PHASE_INT = (INST_POINTER > 5'b00101) & (INST_POINTER < 5'b1011); // Algorithm: SMARCHCHKBCI
        endcase
    end     
 
    assign CHKBCI_PHASE = CHKBCI_PHASE_INT;
 
    function automatic [4:0] INC_POINTER;
    input            [4:0] INST_POINTER;
    reg              TOGGLE;
       begin
          INC_POINTER[0]            = ~INST_POINTER[0];
          TOGGLE     = 1;
          for (integer i=1; i<=4; i=i+1) begin
             TOGGLE                 = INST_POINTER[i-1] & TOGGLE;
             INC_POINTER[i]         = INST_POINTER[i] ^ TOGGLE;
          end
       end
    endfunction
    
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_pointer_cntrl
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_add_format
 
     Description :  This module formats the logical address generated by the  
                    address generator. The address formater currently performs
        only two functions. The first is to drive any padding values
        for multiplexed addresses with unequal row and column 
        address buses.  The second function is to drive forced
        address values.
---------------------------------------------------------------------------- */
 

module firebird7_in_gate1_tessent_mbist_c1_controller_add_format (
  input  wire [2:0] Y_ADDRESS,
  input  wire [7:0] X_ADDRESS,
  output wire [2:0] COLUMN_ADDRESS,
  output wire [7:0] ROW_ADDRESS
);
 
 
 
 
    assign ROW_ADDRESS             = X_ADDRESS;
 
    assign COLUMN_ADDRESS          = Y_ADDRESS;
 
 
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_add_format
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_add_gen
 
     Description :  This module generates the logical address to be applied to  
                    the memory under test.
                    
                    Two address registers are implemented in this architecture.
                    Each of the address registers consists of an X and a Y
                    component (Row and Column component).  Each of the X or Y
                    addresses can be segmented into an X1 and X0 component for
                    the X address or a Y1 and Y0 component for the Y address.
                  
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_add_gen (
  input wire BIST_CLK,
  input wire BIST_RUN,
  input wire RESET_REG_DEFAULT_MODE,
  input wire BIST_SWITCH_ADDRESS_EN,
  input wire BIST_ASYNC_RESETN,
  input wire SI,
  input wire BIST_SHIFT_SHORT,
  input wire BIST_HOLD,
  input wire LAST_TICK,
  input wire MBISTPG_REDUCED_ADDR_CNT_EN,
  input wire  ESOE_RESET,
  input wire  [1:0] ADD_Y0_CMD,
  input wire  [2:0] ADD_Y1_CMD,
  input wire  [1:0] ADD_X0_CMD,
  input wire  [2:0] ADD_X1_CMD,
  input wire BIST_Y0_COUNT_EN,
  input wire BIST_X0_COUNT_EN,
  input wire  [2:0] ADD_REG_SELECT,
  input wire INH_LAST_ADDR_CNT,
  input wire MBISTPG_ALGO_SEL,
  input wire MEM_ARRAY_DUMP_MODE,
  output wire SO,
  output wire Y0_MINMAX_TRIGGER,
  output wire Y1_MINMAX_TRIGGER,
  output wire X0_MINMAX_TRIGGER,
  output wire X1_MINMAX_TRIGGER,
  output reg [7:0] X_ADDRESS,
  output reg [2:0] Y_ADDRESS,
  output wire A_EQUALS_B_TRIGGER
);
    wire MBISTPG_ALGO_SEL_INT;
    reg    [7:0]     AX_ADD_REG, AX_ADD_WIRE;
    reg    [7:0]     BX_ADD_REG, BX_ADD_WIRE;
    reg    [2:0]     AY_ADD_REG, AY_ADD_WIRE;
    reg    [2:0]     BY_ADD_REG, BY_ADD_WIRE;
    wire    [7:0]    AX_MASK;   
    wire    [7:0]    BX_MASK;
    wire    [2:0]    AY_MASK;   
    wire    [2:0]    BY_MASK;
    wire   [13:0]    A_SCAN_REGISTER, B_SCAN_REGISTER;
    reg    [13:0]    A_SCAN_WIRE, B_SCAN_WIRE;
    wire   [1:0]     SELECT_REG;
    wire             ENABLE_A_ADD_REG, ENABLE_B_ADD_REG;
    wire             A_ADD_REG_SI, B_ADD_REG_SI;
 
    wire   [2:0]     Y1_MASK, Y0_MASK;
    wire   [7:0]     X1_MASK, X0_MASK;
 
    wire             INCY0, DECY0;
    wire             INCY1, DECY1, SETY1MAX, SETY1MIN ;
    wire             INCX0, DECX0;
    wire             INCX1, DECX1, SETX1MAX, SETX1MIN;
 
    wire             ROT_LF_A_ADD_REG, ROT_RT_A_ADD_REG;
    wire             ROT_LF_B_ADD_REG;
 
    wire   [2:0]     Y_R, Y_RP, Y_RCO, Y_RCI;
    reg    [2:0]     NEXT_Y_ADD_COUNT;
    wire   [2:0]     Y_ADD_CNT;
    wire   [2:0]     Y_ADD_CNT_TO_BUF;
    wire   [2:0]     Y_ADD_CNT_MAX, Y_ADD_CNT_MIN;
    wire   [1:0]     Y_ADD_ROT_OUT;
    wire   [1:0]     Y_ADD_ROT_IN_REG;
    wire   [7:0]     X_R, X_RP, X_RCO, X_RCI;
    reg   [7:0]      NEXT_X_ADD_COUNT;
    wire   [7:0]     X_ADD_CNT_TO_BUF;
    wire   [7:0]     X_ADD_CNT;
    wire   [7:0]     X_ADD_CNT_MAX, X_ADD_CNT_MIN;
    wire   [2:0]     X_ADD_ROT_OUT;
    wire   [1:0]     X_ADD_ROT_IN_REG;
    
    wire             Y0_MAX;
    wire             Y0_SET_MIN, Y0_SET_MAX;
    wire             Y0_MAX_TRIGGER, Y0_MIN_TRIGGER;
    wire             Y0_MINMAX_TRIGGER_INT;
    wire             Y0_CNT_EN;
 
    wire             Y1_MIN, Y1_MAX;
    wire             Y1_SET_MIN, Y1_SET_MAX;
    wire             Y1_MAX_TRIGGER, Y1_MIN_TRIGGER;
    wire             Y1_MINMAX_TRIGGER_INT;
    wire             Y1_CNT_EN;
 
    wire             X0_MAX;
    wire             X0_SET_MIN, X0_SET_MAX;
    wire             X0_MAX_TRIGGER, X0_MIN_TRIGGER;
    wire             X0_MINMAX_TRIGGER_INT;
    wire             X0_CNT_EN;
 
    wire             X1_MIN, X1_MAX;
    wire             X1_SET_MIN, X1_SET_MAX;
    wire             X1_MAX_TRIGGER, X1_MIN_TRIGGER;
    wire             X1_MINMAX_TRIGGER_INT;
    wire             X1_CNT_EN;
 
 
    wire   [2:0]     Y0_ADD_SEGMENT_LINK;
    wire   [2:0]     Y0_CNT_EN_CONDITIONS;
    wire   [2:0]     Y0_CNT_EN_TRIGGER;
    wire   [2:0]     A_Y0_ADD_SEGMENT_LINK_REG, B_Y0_ADD_SEGMENT_LINK_REG;
    wire   [2:0]     Y1_ADD_SEGMENT_LINK;
    wire   [2:0]     Y1_CNT_EN_CONDITIONS;
    wire   [2:0]     Y1_CNT_EN_TRIGGER;
    wire   [2:0]     A_Y1_ADD_SEGMENT_LINK_REG, B_Y1_ADD_SEGMENT_LINK_REG;
    wire   [2:0]     X0_ADD_SEGMENT_LINK;
    wire   [2:0]     X0_CNT_EN_CONDITIONS;
    wire   [2:0]     X0_CNT_EN_TRIGGER;
    wire   [2:0]     A_X0_ADD_SEGMENT_LINK_REG, B_X0_ADD_SEGMENT_LINK_REG;
    wire   [2:0]     X1_ADD_SEGMENT_LINK;
    wire   [2:0]     X1_CNT_EN_CONDITIONS;
    wire   [2:0]     X1_CNT_EN_TRIGGER;
    wire   [2:0]     A_X1_ADD_SEGMENT_LINK_REG, B_X1_ADD_SEGMENT_LINK_REG;
              
    wire             Y0_SEGMENT_DEF;
    wire             X0_SEGMENT_DEF;
 
    wire             A_Y0_SEGMENT_DEF_REG, B_Y0_SEGMENT_DEF_REG;
    wire             A_X0_SEGMENT_DEF_REG, B_X0_SEGMENT_DEF_REG;
    wire             A_SCAN_REGISTER_SI;
    wire             B_SCAN_REGISTER_SI;
    wire             A_SCAN_REGISTER_SO;
    wire             B_SCAN_REGISTER_SO;
 
    wire             AX_ROT_RT_OUT_SELECTED;
    wire             AX_ROT_RT_IN_SELECTED;
    reg              AX_ROT_IN_SELECTED;
    reg              BX_ROT_IN_SELECTED;    
    wire   [1:0]     X_ADD_ROT_IN_SELECTED;   
    reg              AX_ROT_OUT_SELECTED;
    reg              BX_ROT_OUT_SELECTED;
    reg    [7:0]     X_ADD_REG_MIN_DEFAULT;
    reg    [7:0]     X_ADD_REG_MAX_DEFAULT;
    reg    [2:0]     X_ADD_ROT_OUT_DEFAULT; 
    reg    [1:0]     X_ADD_ROT_IN_DEFAULT;
    wire             AY_ROT_RT_OUT_SELECTED;
    wire             AY_ROT_RT_IN_SELECTED;
    wire   [1:0]     Y_ADD_ROT_IN_SELECTED; 
    reg              AY_ROT_IN_SELECTED;
    reg              BY_ROT_IN_SELECTED;
    reg              AY_ROT_OUT_SELECTED;
    reg              BY_ROT_OUT_SELECTED;       
    reg    [2:0]     Y_ADD_REG_MIN_DEFAULT;
    reg    [2:0]     Y_ADD_REG_MAX_DEFAULT;
    reg    [1:0]     Y_ADD_ROT_OUT_DEFAULT;
    reg    [1:0]     Y_ADD_ROT_IN_DEFAULT;    
    assign A_ADD_REG_SI             =  (BIST_SHIFT_SHORT) ? SI :
                                                            AX_ADD_REG[7];
    assign B_ADD_REG_SI             =  (BIST_SHIFT_SHORT) ? A_SCAN_REGISTER_SO :
                                                            BX_ADD_REG[7];

    assign SO        = B_SCAN_REGISTER_SO;

    always_comb begin
    case ({BIST_SWITCH_ADDRESS_EN, SELECT_REG})
       3'b000, 3'b101, 3'b111: X_ADDRESS = AX_ADD_REG;
       3'b001, 3'b100, 3'b110: X_ADDRESS = BX_ADD_REG;
       3'b010, 3'b011:         X_ADDRESS = BX_ADD_REG ^ AX_ADD_REG;
    endcase    
    end
    always_comb begin
    case ({BIST_SWITCH_ADDRESS_EN, SELECT_REG})
       3'b000, 3'b101, 3'b111: Y_ADDRESS = AY_ADD_REG;
       3'b001, 3'b100, 3'b110: Y_ADDRESS = BY_ADD_REG;
       3'b010, 3'b011:         Y_ADDRESS = BY_ADD_REG ^ AY_ADD_REG;
    endcase    
    end
 
    assign Y0_MINMAX_TRIGGER        = Y0_MINMAX_TRIGGER_INT;
    assign Y1_MINMAX_TRIGGER        = Y1_MINMAX_TRIGGER_INT;
    assign X0_MINMAX_TRIGGER        = X0_MINMAX_TRIGGER_INT;
    assign X1_MINMAX_TRIGGER        = X1_MINMAX_TRIGGER_INT;
 
    assign A_EQUALS_B_TRIGGER       = 1'b0;
 
    assign Y0_MASK   = (Y0_SEGMENT_DEF == 1'b1)    ? 3'b001 :
                                                                    3'b000 ;
 
    assign Y1_MASK   = ~Y0_MASK;
 
    assign X0_MASK   = (X0_SEGMENT_DEF == 1'b1)    ? 8'b00000001 :
                                                                    8'b00000000 ;
 
    assign X1_MASK   = ~X0_MASK;
 
    assign Y0_CNT_EN_CONDITIONS     =Y0_ADD_SEGMENT_LINK;
    assign Y1_CNT_EN_CONDITIONS     =Y1_ADD_SEGMENT_LINK;
    assign X0_CNT_EN_CONDITIONS     =X0_ADD_SEGMENT_LINK;
    assign X1_CNT_EN_CONDITIONS     =X1_ADD_SEGMENT_LINK;
 
    //
    // AddressSelectCmd           Decode
    // ----------------           ------
    // Select_A                   3'b000
    // Select_A_Copy_To_B         3'b001
    // Select_B                   3'b010
    // Select_B_Copy_To_A         3'b011
    // A_Xor_B                    3'b100
    // Select_A_Rotate_B          3'b101
    // Select_B_Rotate_A          3'b110
    // Select_B_RotateRight_A     3'b111
    //
    // 1 enables A xor B
    assign SELECT_REG[1]            = (ADD_REG_SELECT == 3'b100  );
    // 0 selects A; 1 selects B
    assign SELECT_REG[0]            = (ADD_REG_SELECT == 3'b010  ) || 
                                      (ADD_REG_SELECT == 3'b011  ) || 
                                      (ADD_REG_SELECT == 3'b110  ) ||
                                      (ADD_REG_SELECT == 3'b111  ) ;
    assign ENABLE_A_ADD_REG         = (ADD_REG_SELECT == 3'b000  ) || 
                                      (ADD_REG_SELECT == 3'b001  ) || 
                                      (ADD_REG_SELECT == 3'b011  ) || 
                                      (ADD_REG_SELECT == 3'b101  ) || 
                                      (ADD_REG_SELECT == 3'b110  ) ||
                                      (ADD_REG_SELECT == 3'b111  ) ||
                                      (ADD_REG_SELECT == 3'b100  ) ;
    assign ENABLE_B_ADD_REG         = (ADD_REG_SELECT == 3'b001  ) || 
                                      (ADD_REG_SELECT == 3'b010  ) || 
                                      (ADD_REG_SELECT == 3'b011  ) || 
                                      (ADD_REG_SELECT == 3'b101  ) || 
                                      (ADD_REG_SELECT == 3'b110  ) ||
                                      (ADD_REG_SELECT == 3'b111  ) ;
    // Rotate left from LSB to MSB
    assign ROT_LF_A_ADD_REG         = (ADD_REG_SELECT == 3'b110  ) ;
    assign ROT_LF_B_ADD_REG         = (ADD_REG_SELECT == 3'b101  ) ;
    // Rotate right from MSB to LSB
    assign ROT_RT_A_ADD_REG         = (ADD_REG_SELECT == 3'b111  ) ;
    //
    // AddressSegmentCmd          Decode
    // ----------------           ------
    // Hold                       3'b000
    // Increment                  3'b010
    // Decrement                  3'b011
    // LoadMin                    3'b100
    // LoadMax                    3'b101
    //
    assign INCY0     = (ADD_Y0_CMD == 2'b10);
    assign DECY0     = (ADD_Y0_CMD == 2'b11);
    assign INCY1     = (ADD_Y1_CMD == 3'b010);
    assign DECY1     = (ADD_Y1_CMD == 3'b011);
    assign SETY1MIN                 = (MBISTPG_REDUCED_ADDR_CNT_EN & Y1_CNT_EN & Y1_MAX) | (ADD_Y1_CMD == 3'b100);
    assign SETY1MAX                 = (MBISTPG_REDUCED_ADDR_CNT_EN & Y1_CNT_EN & Y1_MIN) | (ADD_Y1_CMD == 3'b101); 
    assign INCX0     = (ADD_X0_CMD == 2'b10);
    assign DECX0     = (ADD_X0_CMD == 2'b11);
    assign INCX1     = (ADD_X1_CMD == 3'b010);
    assign DECX1     = (ADD_X1_CMD == 3'b011);
    assign SETX1MIN                 = (MBISTPG_REDUCED_ADDR_CNT_EN & X1_CNT_EN & X1_MAX) | (ADD_X1_CMD == 3'b100);
    assign SETX1MAX                 = (MBISTPG_REDUCED_ADDR_CNT_EN & X1_CNT_EN & X1_MIN) | (ADD_X1_CMD == 3'b101);
  
//------------------------------
//-- Calculate next Y address --
//------------------------------
    assign Y_R       = Y_ADD_CNT;
 
    assign Y_RP      = ((Y1_MASK & (({3{INCY1}} & (~Y_R)) | ({3{DECY1}} & Y_R))) | 
                        (Y0_MASK & (({3{INCY0}} & (~Y_R)) | ({3{DECY0}} & Y_R))));
 
    assign Y_RCO     = (Y_RCI | Y_RP) ;
 
    assign Y_RCI     = (~(Y0_CNT_EN | Y1_CNT_EN)) ? {3{1'b1}}                                                                 :
                       (Y0_CNT_EN & Y1_CNT_EN)    ? ({Y_RCO[1:0], 1'b0 } & ({Y1_MASK[1:0], 1'b0} ^ Y0_MASK))                  :
                       (Y0_CNT_EN)                ? ({Y_RCO[1:0], 1'b0 } | Y1_MASK)                                           :
                                                   (({Y_RCO[1:0], 1'b0 } & ({Y1_MASK[1:0], 1'b0} ^ Y0_MASK)) | Y0_MASK)       ; 
 
    always_comb begin
        case ({Y1_SET_MAX, Y0_SET_MAX, Y1_SET_MIN, Y0_SET_MIN})
        4'b1100, 4'b1101, 4'b1110, 4'b1111 : NEXT_Y_ADD_COUNT = Y_ADD_CNT_MAX[2:0];
        4'b0011, 4'b0111, 4'b1011          : NEXT_Y_ADD_COUNT = Y_ADD_CNT_MIN[2:0];
        4'b1000, 4'b1001, 4'b1010          : NEXT_Y_ADD_COUNT = ((Y_ADD_CNT ^ (~Y_RCI)) & Y0_MASK) | (Y_ADD_CNT_MAX[2:0] & Y1_MASK);
        4'b0010, 4'b0110                   : NEXT_Y_ADD_COUNT = ((Y_ADD_CNT ^ (~Y_RCI)) & Y0_MASK) | (Y_ADD_CNT_MIN[2:0] & Y1_MASK);
        default                            : NEXT_Y_ADD_COUNT = (Y_ADD_CNT ^ (~Y_RCI)); 
        endcase
    end
//------------------------------
//-- Calculate next X address --
//------------------------------
    assign X_R       = X_ADD_CNT;
 
    assign X_RP      = ((X1_MASK & (({8{INCX1}} & (~X_R)) | ({8{DECX1}} & X_R))) | 
                        (X0_MASK & (({8{INCX0}} & (~X_R)) | ({8{DECX0}} & X_R))));
 
    assign X_RCO     = (X_RCI | X_RP) ;
 
    assign X_RCI     = (~(X0_CNT_EN | X1_CNT_EN)) ? {8{1'b1}}                                                                 :
                       (X0_CNT_EN & X1_CNT_EN)    ? ({X_RCO[6:0], 1'b0 } & ({X1_MASK[6:0], 1'b0} ^ X0_MASK))                  :
                       (X0_CNT_EN)                ? ({X_RCO[6:0], 1'b0 } | X1_MASK)                                           :
                                                   (({X_RCO[6:0], 1'b0 } & ({X1_MASK[6:0], 1'b0} ^ X0_MASK)) | X0_MASK)       ; 
 
    always_comb begin
        case ({X1_SET_MAX, X0_SET_MAX, X1_SET_MIN, X0_SET_MIN})
        4'b1100, 4'b1101, 4'b1110, 4'b1111 : NEXT_X_ADD_COUNT = X_ADD_CNT_MAX[7:0];
        4'b0011, 4'b0111, 4'b1011          : NEXT_X_ADD_COUNT = X_ADD_CNT_MIN[7:0];
        4'b1000, 4'b1001, 4'b1010          : NEXT_X_ADD_COUNT = ((X_ADD_CNT ^ (~X_RCI)) & X0_MASK) | (X_ADD_CNT_MAX[7:0] & X1_MASK);
        4'b0010, 4'b0110                   : NEXT_X_ADD_COUNT = ((X_ADD_CNT ^ (~X_RCI)) & X0_MASK) | (X_ADD_CNT_MIN[7:0] & X1_MASK);
        default                            : NEXT_X_ADD_COUNT = (X_ADD_CNT ^ (~X_RCI)); 
        endcase
    end
 
//---------------------------------
//-- Select the address register --
//---------------------------------
    assign X_ADD_CNT_TO_BUF         =    (SELECT_REG[0] == 1'b1)                 ? BX_ADD_REG                 :
                                                                                   AX_ADD_REG                 ;
  // Instantiate X_ADD_CNT persistent buffers {{{
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_0 (
        .a           (X_ADD_CNT_TO_BUF[0]),
        .o           (X_ADD_CNT[0])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_1 (
        .a           (X_ADD_CNT_TO_BUF[1]),
        .o           (X_ADD_CNT[1])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_2 (
        .a           (X_ADD_CNT_TO_BUF[2]),
        .o           (X_ADD_CNT[2])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_3 (
        .a           (X_ADD_CNT_TO_BUF[3]),
        .o           (X_ADD_CNT[3])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_4 (
        .a           (X_ADD_CNT_TO_BUF[4]),
        .o           (X_ADD_CNT[4])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_5 (
        .a           (X_ADD_CNT_TO_BUF[5]),
        .o           (X_ADD_CNT[5])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_6 (
        .a           (X_ADD_CNT_TO_BUF[6]),
        .o           (X_ADD_CNT[6])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_X_ADD_CNT_7 (
        .a           (X_ADD_CNT_TO_BUF[7]),
        .o           (X_ADD_CNT[7])
    );    
  // Instantiate X_ADD_CNT persistent buffers }}}
 
    assign Y_ADD_CNT_TO_BUF         =    (SELECT_REG[0] == 1'b1)                 ? BY_ADD_REG                 :
                                                                                   AY_ADD_REG                 ;
  // Instantiate Y_ADD_CNT persistent buffers {{{
    i0sbfn000ab1n02x5 tessent_persistent_cell_Y_ADD_CNT_0 (
        .a           (Y_ADD_CNT_TO_BUF[0]),
        .o           (Y_ADD_CNT[0])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_Y_ADD_CNT_1 (
        .a           (Y_ADD_CNT_TO_BUF[1]),
        .o           (Y_ADD_CNT[1])
    );    
    i0sbfn000ab1n02x5 tessent_persistent_cell_Y_ADD_CNT_2 (
        .a           (Y_ADD_CNT_TO_BUF[2]),
        .o           (Y_ADD_CNT[2])
    );    
  // Instantiate Y_ADD_CNT persistent buffers }}}
 
//--------------------------------------
//-- Select the carry-in & X0Y0 setup --
//--------------------------------------
    assign Y0_SEGMENT_DEF           = (SELECT_REG[0] == 1'b1)     ? B_Y0_SEGMENT_DEF_REG       :
                                                                    A_Y0_SEGMENT_DEF_REG       ;
 
    assign X0_SEGMENT_DEF           = (SELECT_REG[0] == 1'b1)     ? B_X0_SEGMENT_DEF_REG       :
                                                                    A_X0_SEGMENT_DEF_REG       ;
 
    assign X1_ADD_SEGMENT_LINK      = (SELECT_REG[0] == 1'b1)     ? B_X1_ADD_SEGMENT_LINK_REG  :
                                                                    A_X1_ADD_SEGMENT_LINK_REG  ;
    assign X0_ADD_SEGMENT_LINK      = (SELECT_REG[0] == 1'b1)     ? B_X0_ADD_SEGMENT_LINK_REG  :
                                                                    A_X0_ADD_SEGMENT_LINK_REG  ;
    assign Y1_ADD_SEGMENT_LINK      = (SELECT_REG[0] == 1'b1)     ? B_Y1_ADD_SEGMENT_LINK_REG  :
                                                                    A_Y1_ADD_SEGMENT_LINK_REG  ;
    assign Y0_ADD_SEGMENT_LINK      = (SELECT_REG[0] == 1'b1)     ? B_Y0_ADD_SEGMENT_LINK_REG  :
                                                                    A_Y0_ADD_SEGMENT_LINK_REG  ;

//----------------------------------------------
// X Address min and max address count values --
//----------------------------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          // Algorithm: INTELLVPMOVIFX Type: CUSTOM
          1'b0:      X_ADD_REG_MIN_DEFAULT         = 8'b00000000;
          // Algorithm: SMARCHCHKBCI Type: IC
          1'b1:      X_ADD_REG_MIN_DEFAULT         = 8'b00000000;
       endcase
    end
      
    assign X_ADD_CNT_MIN            = X_ADD_REG_MIN_DEFAULT;
 
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          // Algorithm: INTELLVPMOVIFX Type: CUSTOM
          1'b0:      X_ADD_REG_MAX_DEFAULT         = 8'b11111111;
          // Algorithm: SMARCHCHKBCI Type: IC
          1'b1:      X_ADD_REG_MAX_DEFAULT         = MBISTPG_REDUCED_ADDR_CNT_EN ? 8'b01111111 : 8'b11111111;
       endcase
    end
 
    assign X_ADD_CNT_MAX            = X_ADD_REG_MAX_DEFAULT;
//----------------------------------------
// Select out bit X register            --
//----------------------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          1'b0:      X_ADD_ROT_OUT_DEFAULT         = 3'b111;
          1'b1:      X_ADD_ROT_OUT_DEFAULT         = 3'b111;
       endcase
    end
   
    assign X_ADD_ROT_OUT            = X_ADD_ROT_OUT_DEFAULT; 
     
//------------------------------------------------
// Mux controlled by the X_ADD_ROT_OUT register --
//------------------------------------------------
    always_comb begin
    case (X_ADD_ROT_OUT) 
     3'b000 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[0:0];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[0:0];
              end
     3'b001 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[1:1];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[1:1];
              end
     3'b010 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[2:2];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[2:2];
              end
     3'b011 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[3:3];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[3:3];
              end
     3'b100 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[4:4];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[4:4];
              end
     3'b101 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[5:5];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[5:5];
              end
     3'b110 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[6:6];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[6:6];
              end
     3'b111 : begin
                     AX_ROT_OUT_SELECTED = AX_ADD_REG[7:7];
                     BX_ROT_OUT_SELECTED = BX_ADD_REG[7:7];
              end
    endcase
    end   
  
//----------------------------------------
// Select shift in bit X register       --
//----------------------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          1'b0:      X_ADD_ROT_IN_DEFAULT          = 2'b00;
          1'b1:      X_ADD_ROT_IN_DEFAULT          = 2'b00;
       endcase
    end
   
    assign X_ADD_ROT_IN_REG         = X_ADD_ROT_IN_DEFAULT; 

//-----------------------------------------------------------------
// Mux for AX and BX controlled by the X_ADD_ROT_IN_REG register --
//-----------------------------------------------------------------
    assign X_ADD_ROT_IN_SELECTED = (BIST_RUN) ? X_ADD_ROT_IN_REG : 2'b00 ;
             
    always_comb begin
    case (X_ADD_ROT_IN_SELECTED) 
     2'b00 : begin
                     AX_ROT_IN_SELECTED =     AY_ADD_REG[2] ;
     end
     2'b01 : begin
                     AX_ROT_IN_SELECTED = 1'b0 ;
              end
      2'b10 : begin
                     AX_ROT_IN_SELECTED = AY_ROT_OUT_SELECTED ;
              end        
     2'b11 : begin
                     AX_ROT_IN_SELECTED = AX_ROT_OUT_SELECTED ;
              end
       endcase
    end   
 
    always_comb begin
    case (X_ADD_ROT_IN_SELECTED) 
     2'b00 : begin
                     BX_ROT_IN_SELECTED =     BY_ADD_REG[2] ;
           end
     2'b01 : begin
                     BX_ROT_IN_SELECTED = 1'b0 ;
              end
      2'b10 : begin
                     BX_ROT_IN_SELECTED = BY_ROT_OUT_SELECTED ;
              end        
     2'b11 : begin
                     BX_ROT_IN_SELECTED = BX_ROT_OUT_SELECTED ;
              end
       endcase
    end   
 
//-----------------------------
// Right rotation on AX only --
//-----------------------------
    assign AX_ROT_RT_IN_SELECTED    = AY_ROT_RT_OUT_SELECTED;
 
    assign AX_ROT_RT_OUT_SELECTED   = AX_ADD_REG[0];

//----------------------------------------------
// Y Address min and max address count values --
//----------------------------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          // Algorithm: INTELLVPMOVIFX Type: CUSTOM
          1'b0:      Y_ADD_REG_MIN_DEFAULT         = 3'b000;
          // Algorithm: SMARCHCHKBCI Type: IC
          1'b1:      Y_ADD_REG_MIN_DEFAULT         = 3'b000;
       endcase
    end 
 
    assign Y_ADD_CNT_MIN            = Y_ADD_REG_MIN_DEFAULT;
 
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          // Algorithm: INTELLVPMOVIFX Type: CUSTOM
          1'b0:      Y_ADD_REG_MAX_DEFAULT         = 3'b111;
          // Algorithm: SMARCHCHKBCI Type: IC
          1'b1:      Y_ADD_REG_MAX_DEFAULT         = MBISTPG_REDUCED_ADDR_CNT_EN ? 3'b011 : 3'b111;
       endcase
    end
 
    assign Y_ADD_CNT_MAX            = Y_ADD_REG_MAX_DEFAULT;
   
//----------------------------------------
// Select out bit Y register            --
//----------------------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          1'b0:      Y_ADD_ROT_OUT_DEFAULT         = 2'b10;
          1'b1:      Y_ADD_ROT_OUT_DEFAULT         = 2'b10;
       endcase
    end
   
    assign Y_ADD_ROT_OUT            = Y_ADD_ROT_OUT_DEFAULT; 
     
//------------------------------------------------
// Mux controlled by the Y_ADD_ROT_OUT register --
//------------------------------------------------
    always_comb begin
    case (Y_ADD_ROT_OUT)
     2'b00 : begin
                     AY_ROT_OUT_SELECTED = AY_ADD_REG[0:0];
                     BY_ROT_OUT_SELECTED = BY_ADD_REG[0:0];
              end
     2'b01 : begin
                     AY_ROT_OUT_SELECTED = AY_ADD_REG[1:1];
                     BY_ROT_OUT_SELECTED = BY_ADD_REG[1:1];
              end
     2'b10 : begin
                     AY_ROT_OUT_SELECTED = AY_ADD_REG[2:2];
                     BY_ROT_OUT_SELECTED = BY_ADD_REG[2:2];
              end
    default : begin 
                     AY_ROT_OUT_SELECTED = 1'b0;
                     BY_ROT_OUT_SELECTED = 1'b0;
              end
    endcase
    end   
  
//----------------------------------------
// Select shift in bit Y register       --
//----------------------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT)
          1'b0:      Y_ADD_ROT_IN_DEFAULT          = 2'b00;
          1'b1:      Y_ADD_ROT_IN_DEFAULT          = 2'b00;
       endcase
    end
   
    assign Y_ADD_ROT_IN_REG         = Y_ADD_ROT_IN_DEFAULT; 

//-----------------------------------------------------------------
// Mux for AY and BY controlled by the Y_ADD_ROT_IN_REG register --
//-----------------------------------------------------------------
    assign Y_ADD_ROT_IN_SELECTED = (BIST_RUN) ? Y_ADD_ROT_IN_REG : 2'b00 ;
             
    always_comb begin
    case (Y_ADD_ROT_IN_SELECTED) 
     2'b00 : begin
                     AY_ROT_IN_SELECTED = A_ADD_REG_SI;
              end
     2'b01 : begin
                     AY_ROT_IN_SELECTED = 1'b0 ;
              end
      2'b10 : begin
                     AY_ROT_IN_SELECTED = AY_ROT_OUT_SELECTED ;
              end        
     2'b11 : begin
                     AY_ROT_IN_SELECTED = AX_ROT_OUT_SELECTED ;
              end
       endcase
    end   
 
    always_comb begin
    case (Y_ADD_ROT_IN_SELECTED) 
     2'b00 : begin
                     BY_ROT_IN_SELECTED =     B_ADD_REG_SI;
           end
     2'b01 : begin
                     BY_ROT_IN_SELECTED = 1'b0 ;
              end
      2'b10 : begin
                     BY_ROT_IN_SELECTED = BY_ROT_OUT_SELECTED ;
              end        
     2'b11 : begin
                     BY_ROT_IN_SELECTED = BX_ROT_OUT_SELECTED ;
              end
       endcase
    end   
 
//-----------------------------
// Right rotation on AY only --
//-----------------------------
    assign AY_ROT_RT_IN_SELECTED    = AX_ROT_RT_OUT_SELECTED;
 
    assign AY_ROT_RT_OUT_SELECTED   = AY_ADD_REG[0];
  
//------------------------------------------------
// Address end count triggers and count enables --
//------------------------------------------------
    assign Y1_MIN    = ((Y_ADD_CNT[2:0] & Y1_MASK[2:0]) == (Y_ADD_CNT_MIN[2:0] & Y1_MASK[2:0]));
    assign Y1_MAX    = ((Y_ADD_CNT[2:0] & Y1_MASK[2:0]) == (Y_ADD_CNT_MAX[2:0] & Y1_MASK[2:0]));
 
    assign X1_MIN    = ((X_ADD_CNT[7:0] & X1_MASK[7:0]) == (X_ADD_CNT_MIN[7:0] & X1_MASK[7:0]));
    assign X1_MAX    = ((X_ADD_CNT[7:0] & X1_MASK[7:0]) == (X_ADD_CNT_MAX[7:0] & X1_MASK[7:0]));
 
    assign Y0_MAX_TRIGGER           = (Y_ADD_CNT[2:0] & Y0_MASK[2:0]) == (Y0_MASK[2:0]);
    assign Y0_MIN_TRIGGER           = (Y_ADD_CNT[2:0] & Y0_MASK[2:0]) == (3'b000);
 
    assign Y1_MAX_TRIGGER           = Y1_MAX;
    assign Y1_MIN_TRIGGER           = Y1_MIN;
 
    assign X0_MAX_TRIGGER           = (X_ADD_CNT[7:0] & X0_MASK[7:0]) == (X0_MASK[7:0]);
    assign X0_MIN_TRIGGER           = (X_ADD_CNT[7:0] & X0_MASK[7:0]) == (8'b00000000);
 
    assign X1_MAX_TRIGGER           = X1_MAX;
    assign X1_MIN_TRIGGER           = X1_MIN;
 
    assign Y0_MINMAX_TRIGGER_INT    = (INCY0 & Y0_MAX_TRIGGER) | (DECY0 & Y0_MIN_TRIGGER) | BIST_Y0_COUNT_EN;
    assign Y1_MINMAX_TRIGGER_INT    = (INCY1 & Y1_MAX_TRIGGER) | (DECY1 & Y1_MIN_TRIGGER);
    assign X0_MINMAX_TRIGGER_INT    = (INCX0 & X0_MAX_TRIGGER) | (DECX0 & X0_MIN_TRIGGER) | BIST_X0_COUNT_EN;
    assign X1_MINMAX_TRIGGER_INT    = (INCX1 & X1_MAX_TRIGGER) | (DECX1 & X1_MIN_TRIGGER);
 
    assign Y0_CNT_EN_TRIGGER        = {X1_MINMAX_TRIGGER_INT,    X0_MINMAX_TRIGGER_INT,        Y1_MINMAX_TRIGGER_INT };
    assign Y1_CNT_EN_TRIGGER        = {X1_MINMAX_TRIGGER_INT,    X0_MINMAX_TRIGGER_INT,        Y0_MINMAX_TRIGGER_INT };
    assign X0_CNT_EN_TRIGGER        = {X1_MINMAX_TRIGGER_INT,    Y1_MINMAX_TRIGGER_INT,        Y0_MINMAX_TRIGGER_INT };
    assign X1_CNT_EN_TRIGGER        = {X0_MINMAX_TRIGGER_INT,    Y1_MINMAX_TRIGGER_INT,        Y0_MINMAX_TRIGGER_INT };
    
    assign Y0_CNT_EN                = (INCY0 | DECY0) & ((Y0_CNT_EN_CONDITIONS & Y0_CNT_EN_TRIGGER) == Y0_CNT_EN_CONDITIONS);
    assign Y1_CNT_EN                = (INCY1 | DECY1) & ((Y1_CNT_EN_CONDITIONS & Y1_CNT_EN_TRIGGER) == Y1_CNT_EN_CONDITIONS);
    assign X0_CNT_EN                = (INCX0 | DECX0) & ((X0_CNT_EN_CONDITIONS & X0_CNT_EN_TRIGGER) == X0_CNT_EN_CONDITIONS);
    assign X1_CNT_EN                = (INCX1 | DECX1) & ((X1_CNT_EN_CONDITIONS & X1_CNT_EN_TRIGGER) == X1_CNT_EN_CONDITIONS);
 
//------------------------------------------
// Address set min and set max conditions --
//------------------------------------------
    assign Y0_SET_MIN               = (Y0_CNT_EN & Y0_MAX_TRIGGER & INCY0) | SETY1MIN;
    assign Y0_SET_MAX               = (Y0_CNT_EN & Y0_MIN_TRIGGER & DECY0) | SETY1MAX;
 
    assign Y1_SET_MIN               = (Y1_CNT_EN & Y1_MAX_TRIGGER & INCY1) | SETY1MIN;
    assign Y1_SET_MAX               = (Y1_CNT_EN & Y1_MIN_TRIGGER & DECY1) | SETY1MAX;
 
    assign X0_SET_MIN               = (X0_CNT_EN & X0_MAX_TRIGGER & INCX0) | SETX1MIN;
    assign X0_SET_MAX               = (X0_CNT_EN & X0_MIN_TRIGGER & DECX0) | SETX1MAX; 
    assign X1_SET_MIN               = (X1_CNT_EN & X1_MAX_TRIGGER & INCX1) | SETX1MIN;
    assign X1_SET_MAX               = (X1_CNT_EN & X1_MIN_TRIGGER & DECX1) | SETX1MAX;
 
    assign MBISTPG_ALGO_SEL_INT  =   MBISTPG_ALGO_SEL ;    

//------------------------------------
//-- ADDRESS REGISTER A : X SEGMENT --
//------------------------------------
    always_comb begin
        case (MBISTPG_ALGO_SEL_INT) 
            1'b0:    AX_ADD_WIRE   = 8'b00000000; // Algorithm: INTELLVPMOVIFX
            1'b1:    AX_ADD_WIRE   = 8'b00000000; // Algorithm: SMARCHCHKBCI
        endcase            
    end
 
    assign AX_MASK   =                      (BIST_SHIFT_SHORT)    ? 8'b11111111 :
                      (X_ADD_ROT_OUT == 3'b111)    ? 8'b11111111 :
                      (X_ADD_ROT_OUT == 3'b110)    ? 8'b01111111 :
                      (X_ADD_ROT_OUT == 3'b101)    ? 8'b00111111 :
                      (X_ADD_ROT_OUT == 3'b100)    ? 8'b00011111 :
                      (X_ADD_ROT_OUT == 3'b011)    ? 8'b00001111 :
                      (X_ADD_ROT_OUT == 3'b010)    ? 8'b00000111 :
                      (X_ADD_ROT_OUT == 3'b001)    ? 8'b00000011 :
                                                                    8'b00000001; 
 

    // synopsys sync_set_reset "ESOE_RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            AX_ADD_REG              <= 8'b00000000;
        else
        if (RESET_REG_DEFAULT_MODE & (~MEM_ARRAY_DUMP_MODE))
            AX_ADD_REG              <= AX_ADD_WIRE; 
        else
        if (ESOE_RESET)
            AX_ADD_REG              <= 8'b00000000;
        else
        if (BIST_SHIFT_SHORT | (LAST_TICK & (~BIST_HOLD) & ROT_LF_A_ADD_REG & BIST_RUN))
            AX_ADD_REG              <= (AX_MASK & {AX_ADD_REG[6:0], AX_ROT_IN_SELECTED}) | ((~AX_MASK) & AX_ADD_REG);
        else
        if (LAST_TICK & (~BIST_HOLD) & ROT_RT_A_ADD_REG & BIST_RUN)
            AX_ADD_REG              <= {AX_ROT_RT_IN_SELECTED, AX_ADD_REG[7:1]};
        else begin
          if ( ENABLE_A_ADD_REG & BIST_RUN & (~BIST_HOLD)) 
            if ( BIST_X0_COUNT_EN ) 
              if (~LAST_TICK) begin
                AX_ADD_REG[0]       <= ~X_ADD_CNT_TO_BUF[0];
              end else begin
                if (~INH_LAST_ADDR_CNT) begin
                  AX_ADD_REG[0]     <= ~X_ADD_CNT_TO_BUF[0];
                  AX_ADD_REG[7:1]  <= NEXT_X_ADD_COUNT[7:1];
                end 
              end 
            else 
              if (LAST_TICK & (~INH_LAST_ADDR_CNT)) begin
                AX_ADD_REG    <= NEXT_X_ADD_COUNT;
              end 
        end
    end 

//------------------------------------
//-- ADDRESS REGISTER A : Y SEGMENT --
//------------------------------------
    always_comb begin
        case (MBISTPG_ALGO_SEL_INT) 
        1'b0:        AY_ADD_WIRE    = 3'b000; // Algorithm: INTELLVPMOVIFX
        1'b1:        AY_ADD_WIRE    = 3'b000; // Algorithm: SMARCHCHKBCI
        endcase
    end
 
    assign AY_MASK   =                      (BIST_SHIFT_SHORT)    ? 3'b111 :
                      (Y_ADD_ROT_OUT == 2'b10)     ? 3'b111 :
                      (Y_ADD_ROT_OUT == 2'b01)     ? 3'b011 :
                                                                    3'b001;
     

    // synopsys sync_set_reset "ESOE_RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            AY_ADD_REG              <= 3'b000;
        else
        if (RESET_REG_DEFAULT_MODE & (~MEM_ARRAY_DUMP_MODE))
            AY_ADD_REG              <= AY_ADD_WIRE; 
        else
        if (ESOE_RESET)
            AY_ADD_REG              <= 3'b000;
        else
        if (BIST_SHIFT_SHORT | (LAST_TICK & (~BIST_HOLD) & ROT_LF_A_ADD_REG & BIST_RUN))
            AY_ADD_REG              <= (AY_MASK & {AY_ADD_REG[1:0], AY_ROT_IN_SELECTED}) | ((~AY_MASK) & AY_ADD_REG);
        else
        if (LAST_TICK & (~BIST_HOLD) & ROT_RT_A_ADD_REG & BIST_RUN)
            AY_ADD_REG              <= {AY_ROT_RT_IN_SELECTED, AY_ADD_REG[2:1]};
        else begin
          if ( ENABLE_A_ADD_REG & BIST_RUN & (~BIST_HOLD))
            if ( BIST_Y0_COUNT_EN ) 
              if (~LAST_TICK) begin
                AY_ADD_REG[0]       <= ~Y_ADD_CNT_TO_BUF[0];
              end else begin
                if (~INH_LAST_ADDR_CNT) begin
                  AY_ADD_REG[0]     <= ~Y_ADD_CNT_TO_BUF[0];
                  AY_ADD_REG[2:1]  <= NEXT_Y_ADD_COUNT[2:1];
                end 
              end 
            else 
              if (LAST_TICK & (~INH_LAST_ADDR_CNT)) begin
                AY_ADD_REG    <= NEXT_Y_ADD_COUNT;
              end 
        end
    end 

//------------------------------------
//-- ADDRESS REGISTER B : X SEGMENT --
//------------------------------------
    always_comb begin
        case (MBISTPG_ALGO_SEL_INT) 
        1'b0:        BX_ADD_WIRE    = 8'b00000000; // Algorithm: INTELLVPMOVIFX
        1'b1:        BX_ADD_WIRE    = 8'b00000000; // Algorithm: SMARCHCHKBCI
        endcase
    end
 
    assign BX_MASK   =                      (BIST_SHIFT_SHORT)    ? 8'b11111111 :
                      (X_ADD_ROT_OUT == 3'b111)    ? 8'b11111111 :
                      (X_ADD_ROT_OUT == 3'b110)    ? 8'b01111111 :
                      (X_ADD_ROT_OUT == 3'b101)    ? 8'b00111111 :
                      (X_ADD_ROT_OUT == 3'b100)    ? 8'b00011111 :
                      (X_ADD_ROT_OUT == 3'b011)    ? 8'b00001111 :
                      (X_ADD_ROT_OUT == 3'b010)    ? 8'b00000111 :
                      (X_ADD_ROT_OUT == 3'b001)    ? 8'b00000011 :
                                                                    8'b00000001; 
     

    // synopsys sync_set_reset "ESOE_RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            BX_ADD_REG              <= 8'b00000000;
        else
        if (RESET_REG_DEFAULT_MODE & (~MEM_ARRAY_DUMP_MODE))
            BX_ADD_REG              <= BX_ADD_WIRE; 
        else
        if (ESOE_RESET)
            BX_ADD_REG              <= 8'b00000000;
        else
        if (BIST_SHIFT_SHORT | (LAST_TICK & (~BIST_HOLD) & ROT_LF_B_ADD_REG & BIST_RUN))
            BX_ADD_REG              <= (BX_MASK & {BX_ADD_REG[6:0], BX_ROT_IN_SELECTED}) | ((~BX_MASK) & BX_ADD_REG);
        else begin
          if ( ENABLE_B_ADD_REG & BIST_RUN & (~BIST_HOLD)) 
            if ( BIST_X0_COUNT_EN ) 
              if (~LAST_TICK) begin
                BX_ADD_REG[0]       <= ~X_ADD_CNT_TO_BUF[0];
              end else begin
                if (~INH_LAST_ADDR_CNT) begin
                  BX_ADD_REG[0]     <= ~X_ADD_CNT_TO_BUF[0];
                  BX_ADD_REG[7:1]  <= NEXT_X_ADD_COUNT[7:1];
                end 
              end 
            else 
              if (LAST_TICK & (~INH_LAST_ADDR_CNT)) begin
                BX_ADD_REG    <= NEXT_X_ADD_COUNT;
              end 
        end
    end 

//------------------------------------
//-- ADDRESS REGISTER B : Y SEGMENT --
//------------------------------------
    always_comb begin
        case (MBISTPG_ALGO_SEL_INT) 
        1'b0:        BY_ADD_WIRE    = 3'b000; // Algorithm: INTELLVPMOVIFX
        1'b1:        BY_ADD_WIRE    = 3'b000; // Algorithm: SMARCHCHKBCI
        endcase
    end
 
    assign BY_MASK   =                      (BIST_SHIFT_SHORT)    ? 3'b111 :
                      (Y_ADD_ROT_OUT == 2'b10)     ? 3'b111 :
                      (Y_ADD_ROT_OUT == 2'b01)     ? 3'b011 :
                                                                    3'b001;
      

    // synopsys sync_set_reset "ESOE_RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            BY_ADD_REG              <= 3'b000;
        else
        if (RESET_REG_DEFAULT_MODE & (~MEM_ARRAY_DUMP_MODE))
            BY_ADD_REG              <= BY_ADD_WIRE; 
        else
        if (ESOE_RESET)
            BY_ADD_REG              <= 3'b000;
        else
        if (BIST_SHIFT_SHORT | (LAST_TICK & (~BIST_HOLD) & ROT_LF_B_ADD_REG & BIST_RUN))
            BY_ADD_REG              <= (BY_MASK & {BY_ADD_REG[1:0], BY_ROT_IN_SELECTED}) | ((~BY_MASK) & BY_ADD_REG);
        else begin
          if ( ENABLE_B_ADD_REG & BIST_RUN & (~BIST_HOLD))
            if ( BIST_Y0_COUNT_EN ) 
              if (~LAST_TICK) begin
                BY_ADD_REG[0]       <= ~Y_ADD_CNT_TO_BUF[0];
              end else begin
                if (~INH_LAST_ADDR_CNT) begin
                  BY_ADD_REG[0]     <= ~Y_ADD_CNT_TO_BUF[0];
                  BY_ADD_REG[2:1]  <= NEXT_Y_ADD_COUNT[2:1];
                end 
              end 
            else 
              if (LAST_TICK & (~INH_LAST_ADDR_CNT)) begin
                BY_ADD_REG    <= NEXT_Y_ADD_COUNT;
              end 
        end 
    end 

//------------------------------------------------
//-- ADDRESS REGISTER A : CARRY-IN & X0Y0 SETUP --
//------------------------------------------------
    assign A_X1_ADD_SEGMENT_LINK_REG               = A_SCAN_REGISTER[2:0];
    assign A_X0_ADD_SEGMENT_LINK_REG               = A_SCAN_REGISTER[5:3];
    assign A_Y1_ADD_SEGMENT_LINK_REG               = A_SCAN_REGISTER[8:6];
    assign A_Y0_ADD_SEGMENT_LINK_REG               = A_SCAN_REGISTER[11:9];
    assign A_X0_SEGMENT_DEF_REG     = A_SCAN_REGISTER[12:12];
    assign A_Y0_SEGMENT_DEF_REG     = A_SCAN_REGISTER[13:13];
    assign A_SCAN_REGISTER_SI       = AX_ADD_REG[7];
    assign A_SCAN_REGISTER_SO       = A_SCAN_REGISTER_SI; 

    always_comb begin
       case (MBISTPG_ALGO_SEL_INT) 
       1'b0:         A_SCAN_WIRE    = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
       1'b1:         A_SCAN_WIRE    = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0};
       endcase   
    end

    assign A_SCAN_REGISTER          = A_SCAN_WIRE;         

//------------------------------------------------
//-- ADDRESS REGISTER B : CARRY-IN & X0Y0 SETUP --
//------------------------------------------------
    assign B_X1_ADD_SEGMENT_LINK_REG               = B_SCAN_REGISTER[2:0];
    assign B_X0_ADD_SEGMENT_LINK_REG               = B_SCAN_REGISTER[5:3];
    assign B_Y1_ADD_SEGMENT_LINK_REG               = B_SCAN_REGISTER[8:6];
    assign B_Y0_ADD_SEGMENT_LINK_REG               = B_SCAN_REGISTER[11:9];
    assign B_X0_SEGMENT_DEF_REG     = B_SCAN_REGISTER[12:12];
    assign B_Y0_SEGMENT_DEF_REG     = B_SCAN_REGISTER[13:13];
    assign B_SCAN_REGISTER_SI       = BX_ADD_REG[7];
    assign B_SCAN_REGISTER_SO       = B_SCAN_REGISTER_SI;

    always_comb begin
       case (MBISTPG_ALGO_SEL_INT) 
       1'b0:         B_SCAN_WIRE    = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
       1'b1:         B_SCAN_WIRE    = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
       endcase
    end

    assign B_SCAN_REGISTER          = B_SCAN_WIRE;       
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_add_gen
  
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_fsm
 
     Description :  This module is a finite state machine used to control the 
                    initialization, setup, and execution of the test. 
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_fsm (
  input wire BIST_CLK,
  input wire BIST_ON,
  input wire BIST_HOLD_R,
  input wire BYPASS_RUN_STATE,
  input wire BIST_ASYNC_RESETN,
  input wire LAST_STATE_DONE_PIPELINED,
  input wire PAUSETOEND_ALGO_MODE,
 
  output wire SETUP_PULSE1,
  output wire SETUP_PULSE2,
  output wire BIST_INIT,
  output wire BIST_RUN,
  output wire BIST_RUN_PIPE,
  output wire BIST_DONE,
  output wire BIST_IDLE_PULSE,
  output wire BIST_IDLE
);

    localparam MAIN_STATE_IDLE                  = 3'b000; // 0
    localparam MAIN_STATE_INIT                  = 3'b001; // 1
    localparam MAIN_STATE_IDLE2                 = 3'b011; // 3
    localparam MAIN_STATE_IDLE3                 = 3'b010; // 2
    localparam MAIN_STATE_SETUP1                = 3'b110; // 6
    localparam MAIN_STATE_SETUP2                = 3'b111; // 7
    localparam MAIN_STATE_RUN                   = 3'b101; // 5
    localparam MAIN_STATE_DONE                  = 3'b100; // 4
    reg    [2:0]     STATE;
    reg    [2:0]     NEXT_STATE;
    reg              RUNTEST_EN;
    reg    [3:0]     RUNTEST_EN_REG;
    reg              INIT;
    reg              SETUP1;
    reg              SETUP2;
    reg              PAUSETOEND_ALGO_MODE_REG;
    wire             RESET;

    //-------------------
    // Main State Machine
    //-------------------

    assign RESET     = ((~BIST_ON) | BIST_HOLD_R) & (~PAUSETOEND_ALGO_MODE_REG);
 
    assign BIST_IDLE                = (STATE == MAIN_STATE_IDLE);
    assign BIST_IDLE_PULSE          = (~RESET) & BIST_IDLE;
 
    assign BIST_INIT                = INIT;
 
    assign SETUP_PULSE1             = SETUP1;
 
    assign SETUP_PULSE2             = SETUP2;
 
    assign BIST_RUN                 = RUNTEST_EN;
 
    assign BIST_RUN_PIPE            = RUNTEST_EN_REG[3];
 
    assign BIST_DONE                = (STATE == MAIN_STATE_DONE) & (~BIST_RUN_PIPE);

    // synopsys sync_set_reset "RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            STATE    <= MAIN_STATE_IDLE;
        else
        if (RESET)
            STATE    <= MAIN_STATE_IDLE;
        else
        if (~BIST_HOLD_R)
            STATE    <= NEXT_STATE;
    end
  
    always_comb begin
       case (STATE)
          MAIN_STATE_IDLE:
             begin
                NEXT_STATE                         = MAIN_STATE_INIT;
                INIT                               = 1'b0;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b0;
             end
          MAIN_STATE_INIT:
             begin
                NEXT_STATE                         = MAIN_STATE_IDLE2;
                INIT                               = 1'b1;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b0;
             end
          MAIN_STATE_IDLE2:
              begin
                NEXT_STATE                         = MAIN_STATE_IDLE3;
                INIT                               = 1'b0;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b0;
              end
          MAIN_STATE_IDLE3:
              begin
                NEXT_STATE                         = MAIN_STATE_SETUP1;
                INIT                               = 1'b0;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b0;
              end
          MAIN_STATE_SETUP1:
             begin
                NEXT_STATE                         = MAIN_STATE_SETUP2;
                INIT                               = 1'b0;
                SETUP1                             = 1'b1;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b0;
             end
          MAIN_STATE_SETUP2:
             begin
                if (BYPASS_RUN_STATE) begin
                   NEXT_STATE                      = MAIN_STATE_DONE;
                end else begin
                   NEXT_STATE                      = MAIN_STATE_RUN;
                end
                INIT                               = 1'b0;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b1;
                RUNTEST_EN                         = 1'b0;
             end
          MAIN_STATE_RUN:
             begin
                INIT                               = 1'b0;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b1;
                if (LAST_STATE_DONE_PIPELINED) begin
                   NEXT_STATE                      = MAIN_STATE_DONE;
                end
                else begin
                   NEXT_STATE = MAIN_STATE_RUN;
                end
             end
          MAIN_STATE_DONE:
             begin
                NEXT_STATE                         = MAIN_STATE_DONE;
                INIT                               = 1'b0;
                SETUP1                             = 1'b0;
                SETUP2                             = 1'b0;
                RUNTEST_EN                         = 1'b0;
             end
       endcase
    end
 
    // synopsys sync_set_reset "RESET"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            RUNTEST_EN_REG          <= 4'd0;
        else
        if (RESET)
            RUNTEST_EN_REG          <= 4'd0;
        else
        if (~BIST_HOLD_R)
            RUNTEST_EN_REG          <= {RUNTEST_EN_REG[2:0], RUNTEST_EN};
    end
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
        PAUSETOEND_ALGO_MODE_REG <= 1'b0;
        else
       if ((~BIST_ON) & (~BIST_DONE)) begin
          PAUSETOEND_ALGO_MODE_REG <= 1'b0;
       end else begin
          PAUSETOEND_ALGO_MODE_REG <= PAUSETOEND_ALGO_MODE;
       end  
    end 
 
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_fsm
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_signal_gen
 
     Description :  
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_signal_gen (
  input wire  BIST_CLK,
  input wire  BIST_ASYNC_RESETN,
  input wire  LV_TM,
  input wire  MEM_BYPASS_EN,
  input wire  SI,
  input wire  BIST_SHIFT_SHORT,
  input wire  BIST_HOLD_R_INT,
  input wire  RESET_REG_DEFAULT_MODE,
  input wire [5:0] OP_SELECT_CMD,
     
  input wire  BIST_RUN,
  input wire  BIST_RUN_TO_BUF,
  input wire  BIST_RUN_BUF,
  input wire  LAST_STATE_DONE,
  input wire  LAST_STATE_DONE_PIPELINED,
 
  input wire BIST_ALGO_SEL_CNT, 
  input wire MBISTPG_ALGO_SEL,
  input wire  MEM_ARRAY_DUMP_MODE,
  output wire  LAST_TICK,
  output wire  LAST_TICK_PIPELINED,
  output wire [1:0] OPSET_SELECT_DECODED,
  output wire  BIST_COLLAR_OPSET_SELECT,
  output wire  BIST_CMP,
  output wire  BIST_Y0_COUNT_EN,
  output wire  BIST_X0_COUNT_EN,
  output wire  SWITCH_ADDRESS_REG,
  output wire  OPSET_INVERT_EDATA,
  output wire  OPSET_INVERT_WDATA,
  output wire  BIST_WRITEENABLE,
  output wire  BIST_READENABLE,
  output wire SO
);
    wire             MBISTPG_ALGO_SEL_INT;
    reg  [1:0]       LAST_TICK_REG;
    wire             OPERATION_LAST_TICK_REG;
 
    reg  [2:0]       JCNT;
 
    wire  [5:0]      JCNT_FROM, JCNT_TO;
    wire             JCNT_SI;
    wire             JCNT_SO;
    wire              RESET_JCNT;
    wire              RESET_LAST_TICK_REG;
 
    wire              LAST_TICK_D;
    wire              LAST_OPERATION_DONE;

    //----------------
    // Last cycle flag
    //----------------
    // Last cycle flag {{{
    wire              DEFAULT_LAST_TICK;
    wire              DEFAULT_LAST_TICK_PIPELINED;
    wire              DEFAULT_SYNCCUSTOM_LAST_TICK;
    wire              DEFAULT_SYNC_LAST_TICK;
    // Last cycle flag }}}

    wire  [1:0]      DEFAULT_OPSET_SEL;

    //-----------------------------
    // COLUMNADDRESSCOUNT waveform
    //-----------------------------
    wire              DEFAULT_COLUMNADDRESSCOUNT;
    wire              DEFAULT_COLUMNADDRESSCOUNT_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READONE_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READTWO_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READSEG_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_COLUMNADDRESSCOUNT;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNC_WRITE_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNC_READ_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNC_READMODIFYWRITE_COLUMNADDRESSCOUNT;
    wire              DEFAULT_SYNC_WRITEREAD_COLUMNADDRESSCOUNT;
    // OperationSet: SYNC }}}

    //-----------------------------
    // ROWADDRESSCOUNT waveform
    //-----------------------------
    wire              DEFAULT_ROWADDRESSCOUNT;
    wire              DEFAULT_ROWADDRESSCOUNT_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READONE_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READTWO_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READSEG_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_ROWADDRESSCOUNT;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNC_WRITE_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNC_READ_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNC_READMODIFYWRITE_ROWADDRESSCOUNT;
    wire              DEFAULT_SYNC_WRITEREAD_ROWADDRESSCOUNT;
    // OperationSet: SYNC }}}

    //-----------------------------
    // SWITCHADDRESSREGISTER waveform
    //-----------------------------
    wire              DEFAULT_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SWITCHADDRESSREGISTER_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READONE_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READTWO_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READSEG_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_SWITCHADDRESSREGISTER;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNC_WRITE_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNC_READ_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNC_READMODIFYWRITE_SWITCHADDRESSREGISTER;
    wire              DEFAULT_SYNC_WRITEREAD_SWITCHADDRESSREGISTER;
    // OperationSet: SYNC }}}

    //-----------------------------
    // INVERTEXPECTDATA waveform
    //-----------------------------
    wire              DEFAULT_INVERTEXPECTDATA;
    wire              DEFAULT_INVERTEXPECTDATA_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READONE_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READTWO_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READSEG_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_INVERTEXPECTDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_INVERTEXPECTDATA;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_INVERTEXPECTDATA;
    wire              DEFAULT_SYNC_WRITE_INVERTEXPECTDATA;
    wire              DEFAULT_SYNC_READ_INVERTEXPECTDATA;
    wire              DEFAULT_SYNC_READMODIFYWRITE_INVERTEXPECTDATA;
    wire              DEFAULT_SYNC_WRITEREAD_INVERTEXPECTDATA;
    // OperationSet: SYNC }}}

    //-----------------------------
    // INVERTWRITEDATA waveform
    //-----------------------------
    wire              DEFAULT_INVERTWRITEDATA;
    wire              DEFAULT_INVERTWRITEDATA_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READONE_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READTWO_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READSEG_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_INVERTWRITEDATA;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_INVERTWRITEDATA;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_INVERTWRITEDATA;
    wire              DEFAULT_SYNC_WRITE_INVERTWRITEDATA;
    wire              DEFAULT_SYNC_READ_INVERTWRITEDATA;
    wire              DEFAULT_SYNC_READMODIFYWRITE_INVERTWRITEDATA;
    wire              DEFAULT_SYNC_WRITEREAD_INVERTWRITEDATA;
    // OperationSet: SYNC }}}

    //-----------------------------
    // WRITEENABLE waveform
    //-----------------------------
    wire              DEFAULT_WRITEENABLE;
    wire              DEFAULT_WRITEENABLE_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READONE_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READTWO_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READSEG_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_WRITEENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_WRITEENABLE;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_WRITEENABLE;
    wire              DEFAULT_SYNC_WRITE_WRITEENABLE;
    wire              DEFAULT_SYNC_READ_WRITEENABLE;
    wire              DEFAULT_SYNC_READMODIFYWRITE_WRITEENABLE;
    wire              DEFAULT_SYNC_WRITEREAD_WRITEENABLE;
    // OperationSet: SYNC }}}

    //-----------------------------
    // READENABLE waveform
    //-----------------------------
    wire              DEFAULT_READENABLE;
    wire              DEFAULT_READENABLE_SELECTED;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READONE_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READTWO_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READSEG_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_READENABLE;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_READENABLE;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_READENABLE;
    wire              DEFAULT_SYNC_WRITE_READENABLE;
    wire              DEFAULT_SYNC_READ_READENABLE;
    wire              DEFAULT_SYNC_READMODIFYWRITE_READENABLE;
    wire              DEFAULT_SYNC_WRITEREAD_READENABLE;
    // OperationSet: SYNC }}}

    //-----------------
    // Compare waveform
    //-----------------
    wire              DEFAULT_STROBEDATAOUT;
    wire              DEFAULT_STROBEDATAOUT_SELECTED;
    reg  [0:0]       DEFAULT_STROBEDATAOUT_PIPE;
    // OperationSet: SYNCCUSTOM {{{
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT1;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT0;
    wire              DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT1;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    wire              DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT;
    wire              DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT0;
    wire              DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT1;
    wire              DEFAULT_SYNC_WRITE_STROBEDATAOUT;
    wire              DEFAULT_SYNC_WRITE_STROBEDATAOUT0;
    wire              DEFAULT_SYNC_WRITE_STROBEDATAOUT1;
    wire              DEFAULT_SYNC_READ_STROBEDATAOUT;
    wire              DEFAULT_SYNC_READ_STROBEDATAOUT0;
    wire              DEFAULT_SYNC_READ_STROBEDATAOUT1;
    wire              DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT;
    wire              DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT0;
    wire              DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT1;
    wire              DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT;
    wire              DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT0;
    wire              DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT1;
    // OperationSet: SYNC }}}

    wire             BIST_Y0_COUNT_EN_BIT0_EN;
    wire             BIST_X0_COUNT_EN_BIT0_EN;
    wire             SWITCH_ADDRESS_REG_BIT0_EN;
    wire             OPSET_INVERT_EDATA_BIT0_EN;
    wire             OPSET_INVERT_WDATA_BIT0_EN;
    wire             BIST_WRITEENABLE_BIT0_EN;
    wire             BIST_READENABLE_BIT0_EN;
    wire             DEFAULT_OPSET_REG_BUS;
    
    wire [37:0]      OP_SELECT_DECODED_INT;
    
    wire             SIGNAL_GEN_ENABLE;
    wire             SIGNAL_GEN_HOLD;
    wire             OPSET_SELECT_REG_SI;
   
    reg              OPSET_SELECT_REG;
    wire              OPSET_SELECT_WIRE;     
 
     

    //----------
    // Main Code
    //----------
        
    assign LAST_TICK                = (LAST_TICK_REG[0]);
 
    assign LAST_TICK_PIPELINED      = DEFAULT_LAST_TICK_PIPELINED;
 
    assign OPSET_SELECT_DECODED    = DEFAULT_OPSET_SEL;
 
    assign BIST_COLLAR_OPSET_SELECT = OPSET_SELECT_REG;
    assign SO                       = OPSET_SELECT_REG;

    assign SIGNAL_GEN_ENABLE        = BIST_RUN;
    assign SIGNAL_GEN_HOLD          = BIST_HOLD_R_INT;
    assign LAST_OPERATION_DONE      = LAST_STATE_DONE;

    //----------------
    // Johnson Counter
    //----------------
    assign RESET_JCNT               = (OPERATION_LAST_TICK_REG | LAST_OPERATION_DONE | (~SIGNAL_GEN_ENABLE)) & (~BIST_HOLD_R_INT);
    assign JCNT_SI   = SI;
    //synopsys sync_set_reset "RESET_JCNT"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            JCNT     <= 3'b000;
        else
        if (BIST_SHIFT_SHORT) begin 
            JCNT     <= {JCNT[1:0], JCNT_SI};
        end else
        if (RESET_JCNT) begin
            JCNT     <= 3'b000;
        end
        else if ((~SIGNAL_GEN_HOLD) ) begin
            JCNT     <= {JCNT[1:0],~JCNT[2]};
        end
    end
    assign JCNT_SO   = JCNT[2];
 
    assign JCNT_FROM                = {~JCNT[1:0], JCNT, ~JCNT[2]};
    assign JCNT_TO                  = {JCNT, ~JCNT};
    
    //------------------
    // Johnson Counter_B
    //------------------
 
       assign OP_SELECT_DECODED_INT[37]           = (OP_SELECT_CMD == 6'b100101);
       assign OP_SELECT_DECODED_INT[36]           = (OP_SELECT_CMD == 6'b100100);
       assign OP_SELECT_DECODED_INT[35]           = (OP_SELECT_CMD == 6'b100011);
       assign OP_SELECT_DECODED_INT[34]           = (OP_SELECT_CMD == 6'b100010);
       assign OP_SELECT_DECODED_INT[33]           = (OP_SELECT_CMD == 6'b100001);
       assign OP_SELECT_DECODED_INT[32]           = (OP_SELECT_CMD == 6'b100000);
       assign OP_SELECT_DECODED_INT[31]           = (OP_SELECT_CMD == 6'b011111);
       assign OP_SELECT_DECODED_INT[30]           = (OP_SELECT_CMD == 6'b011110);
       assign OP_SELECT_DECODED_INT[29]           = (OP_SELECT_CMD == 6'b011101);
       assign OP_SELECT_DECODED_INT[28]           = (OP_SELECT_CMD == 6'b011100);
       assign OP_SELECT_DECODED_INT[27]           = (OP_SELECT_CMD == 6'b011011);
       assign OP_SELECT_DECODED_INT[26]           = (OP_SELECT_CMD == 6'b011010);
       assign OP_SELECT_DECODED_INT[25]           = (OP_SELECT_CMD == 6'b011001);
       assign OP_SELECT_DECODED_INT[24]           = (OP_SELECT_CMD == 6'b011000);
       assign OP_SELECT_DECODED_INT[23]           = (OP_SELECT_CMD == 6'b010111);
       assign OP_SELECT_DECODED_INT[22]           = (OP_SELECT_CMD == 6'b010110);
       assign OP_SELECT_DECODED_INT[21]           = (OP_SELECT_CMD == 6'b010101);
       assign OP_SELECT_DECODED_INT[20]           = (OP_SELECT_CMD == 6'b010100);
       assign OP_SELECT_DECODED_INT[19]           = (OP_SELECT_CMD == 6'b010011);
       assign OP_SELECT_DECODED_INT[18]           = (OP_SELECT_CMD == 6'b010010);
       assign OP_SELECT_DECODED_INT[17]           = (OP_SELECT_CMD == 6'b010001);
       assign OP_SELECT_DECODED_INT[16]           = (OP_SELECT_CMD == 6'b010000);
       assign OP_SELECT_DECODED_INT[15]           = (OP_SELECT_CMD == 6'b001111);
       assign OP_SELECT_DECODED_INT[14]           = (OP_SELECT_CMD == 6'b001110);
       assign OP_SELECT_DECODED_INT[13]           = (OP_SELECT_CMD == 6'b001101);
       assign OP_SELECT_DECODED_INT[12]           = (OP_SELECT_CMD == 6'b001100);
       assign OP_SELECT_DECODED_INT[11]           = (OP_SELECT_CMD == 6'b001011);
       assign OP_SELECT_DECODED_INT[10]           = (OP_SELECT_CMD == 6'b001010);
       assign OP_SELECT_DECODED_INT[9]            = (OP_SELECT_CMD == 6'b001001);
       assign OP_SELECT_DECODED_INT[8]            = (OP_SELECT_CMD == 6'b001000);
       assign OP_SELECT_DECODED_INT[7]            = (OP_SELECT_CMD == 6'b000111);
       assign OP_SELECT_DECODED_INT[6]            = (OP_SELECT_CMD == 6'b000110);
       assign OP_SELECT_DECODED_INT[5]            = (OP_SELECT_CMD == 6'b000101);
       assign OP_SELECT_DECODED_INT[4]            = (OP_SELECT_CMD == 6'b000100);
       assign OP_SELECT_DECODED_INT[3]            = (OP_SELECT_CMD == 6'b000011);
       assign OP_SELECT_DECODED_INT[2]            = (OP_SELECT_CMD == 6'b000010);
       assign OP_SELECT_DECODED_INT[1]            = (OP_SELECT_CMD == 6'b000001);
       assign OP_SELECT_DECODED_INT[0]            = (OP_SELECT_CMD == 6'b000000);

    //---------------------------------------------
    // Generate Signal COLUMNADDRESSCOUNT
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWO_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READSEG_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWODP_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_COLUMNADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_COLUMNADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_COLUMNADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_COLUMNADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_COLUMNADDRESSCOUNT = 1'b0;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_WRITE_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_READ_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_READMODIFYWRITE_COLUMNADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_WRITEREAD_COLUMNADDRESSCOUNT = 1'b0;
    // OperationSet: SYNC }}}
 
    assign DEFAULT_COLUMNADDRESSCOUNT = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_COLUMNADDRESSCOUNT     & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_COLUMNADDRESSCOUNT       & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_COLUMNADDRESSCOUNT       & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_COLUMNADDRESSCOUNT         & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_COLUMNADDRESSCOUNT              & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_COLUMNADDRESSCOUNT         & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_COLUMNADDRESSCOUNT                & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_COLUMNADDRESSCOUNT      & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_COLUMNADDRESSCOUNT            & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_COLUMNADDRESSCOUNT       & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_COLUMNADDRESSCOUNT   & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_COLUMNADDRESSCOUNT                & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_COLUMNADDRESSCOUNT  & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_COLUMNADDRESSCOUNT         & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_COLUMNADDRESSCOUNT      & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_COLUMNADDRESSCOUNT           & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_COLUMNADDRESSCOUNT     & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_COLUMNADDRESSCOUNT              & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_COLUMNADDRESSCOUNT          & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_COLUMNADDRESSCOUNT       & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_COLUMNADDRESSCOUNT    & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_COLUMNADDRESSCOUNT                & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_COLUMNADDRESSCOUNT               & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_COLUMNADDRESSCOUNT                & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_COLUMNADDRESSCOUNT               & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_COLUMNADDRESSCOUNT                & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_COLUMNADDRESSCOUNT    & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_COLUMNADDRESSCOUNT   & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_COLUMNADDRESSCOUNT  & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_COLUMNADDRESSCOUNT     & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_COLUMNADDRESSCOUNT          & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_COLUMNADDRESSCOUNT     & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_COLUMNADDRESSCOUNT            & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_COLUMNADDRESSCOUNT            & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_COLUMNADDRESSCOUNT         & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_COLUMNADDRESSCOUNT             & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_COLUMNADDRESSCOUNT          & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_COLUMNADDRESSCOUNT           & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_COLUMNADDRESSCOUNT           & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_COLUMNADDRESSCOUNT  & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_COLUMNADDRESSCOUNT   & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_COLUMNADDRESSCOUNT       & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_COLUMNADDRESSCOUNT             & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_COLUMNADDRESSCOUNT_SELECTED =
                               (DEFAULT_COLUMNADDRESSCOUNT       & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_COLUMNADDRESSCOUNT       & DEFAULT_OPSET_SEL[1]);
 

    //---------------------------------------------
    // Generate Signal ROWADDRESSCOUNT
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWO_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READSEG_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWODP_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_ROWADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_ROWADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_ROWADDRESSCOUNT = 1'b1;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_ROWADDRESSCOUNT = 1'b0;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_WRITE_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_READ_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_READMODIFYWRITE_ROWADDRESSCOUNT = 1'b0;
    assign DEFAULT_SYNC_WRITEREAD_ROWADDRESSCOUNT = 1'b0;
    // OperationSet: SYNC }}}
 
    assign DEFAULT_ROWADDRESSCOUNT = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_ROWADDRESSCOUNT        & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_ROWADDRESSCOUNT          & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_ROWADDRESSCOUNT          & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_ROWADDRESSCOUNT            & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_ROWADDRESSCOUNT  & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_ROWADDRESSCOUNT            & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_ROWADDRESSCOUNT    & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_ROWADDRESSCOUNT         & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_ROWADDRESSCOUNT               & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_ROWADDRESSCOUNT          & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_ROWADDRESSCOUNT      & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_ROWADDRESSCOUNT    & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_ROWADDRESSCOUNT     & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_ROWADDRESSCOUNT            & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_ROWADDRESSCOUNT         & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_ROWADDRESSCOUNT              & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_ROWADDRESSCOUNT        & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_ROWADDRESSCOUNT  & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_ROWADDRESSCOUNT             & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_ROWADDRESSCOUNT          & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_ROWADDRESSCOUNT       & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_ROWADDRESSCOUNT    & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_ROWADDRESSCOUNT   & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_ROWADDRESSCOUNT    & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_ROWADDRESSCOUNT   & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_ROWADDRESSCOUNT    & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_ROWADDRESSCOUNT       & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_ROWADDRESSCOUNT      & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_ROWADDRESSCOUNT     & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_ROWADDRESSCOUNT        & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_ROWADDRESSCOUNT             & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_ROWADDRESSCOUNT        & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_ROWADDRESSCOUNT               & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_ROWADDRESSCOUNT               & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_ROWADDRESSCOUNT            & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_ROWADDRESSCOUNT                & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_ROWADDRESSCOUNT             & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_ROWADDRESSCOUNT              & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_ROWADDRESSCOUNT              & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_ROWADDRESSCOUNT     & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_ROWADDRESSCOUNT      & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_ROWADDRESSCOUNT          & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_ROWADDRESSCOUNT                & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_ROWADDRESSCOUNT_SELECTED =
                               (DEFAULT_ROWADDRESSCOUNT          & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_ROWADDRESSCOUNT          & DEFAULT_OPSET_SEL[1]);
 

    //---------------------------------------------
    // Generate Signal SWITCHADDRESSREGISTER
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWO_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READSEG_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWODP_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_SWITCHADDRESSREGISTER =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_SWITCHADDRESSREGISTER =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_SWITCHADDRESSREGISTER =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_SWITCHADDRESSREGISTER =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_SWITCHADDRESSREGISTER =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_SWITCHADDRESSREGISTER =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_SWITCHADDRESSREGISTER = 1'b0;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNC_WRITE_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNC_READ_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNC_READMODIFYWRITE_SWITCHADDRESSREGISTER = 1'b0;
    assign DEFAULT_SYNC_WRITEREAD_SWITCHADDRESSREGISTER = 1'b0;
    // OperationSet: SYNC }}}
 
    assign DEFAULT_SWITCHADDRESSREGISTER = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_SWITCHADDRESSREGISTER  & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_SWITCHADDRESSREGISTER    & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_SWITCHADDRESSREGISTER    & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_SWITCHADDRESSREGISTER      & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_SWITCHADDRESSREGISTER           & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_SWITCHADDRESSREGISTER      & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_SWITCHADDRESSREGISTER             & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_SWITCHADDRESSREGISTER   & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_SWITCHADDRESSREGISTER         & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_SWITCHADDRESSREGISTER    & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_SWITCHADDRESSREGISTER               & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_SWITCHADDRESSREGISTER             & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_SWITCHADDRESSREGISTER              & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_SWITCHADDRESSREGISTER      & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_SWITCHADDRESSREGISTER   & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_SWITCHADDRESSREGISTER        & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_SWITCHADDRESSREGISTER  & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_SWITCHADDRESSREGISTER           & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_SWITCHADDRESSREGISTER       & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_SWITCHADDRESSREGISTER    & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_SWITCHADDRESSREGISTER                & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_SWITCHADDRESSREGISTER             & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_SWITCHADDRESSREGISTER            & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_SWITCHADDRESSREGISTER             & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_SWITCHADDRESSREGISTER            & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_SWITCHADDRESSREGISTER             & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_SWITCHADDRESSREGISTER                & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_SWITCHADDRESSREGISTER               & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_SWITCHADDRESSREGISTER              & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_SWITCHADDRESSREGISTER  & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_SWITCHADDRESSREGISTER       & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_SWITCHADDRESSREGISTER  & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_SWITCHADDRESSREGISTER         & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_SWITCHADDRESSREGISTER         & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_SWITCHADDRESSREGISTER      & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_SWITCHADDRESSREGISTER          & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_SWITCHADDRESSREGISTER       & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_SWITCHADDRESSREGISTER        & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_SWITCHADDRESSREGISTER        & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_SWITCHADDRESSREGISTER              & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_SWITCHADDRESSREGISTER               & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_SWITCHADDRESSREGISTER    & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_SWITCHADDRESSREGISTER          & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_SWITCHADDRESSREGISTER_SELECTED =
                               (DEFAULT_SWITCHADDRESSREGISTER    & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_SWITCHADDRESSREGISTER    & DEFAULT_OPSET_SEL[1]);
 

    //---------------------------------------------
    // Generate Signal INVERTEXPECTDATA
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWO_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_INVERTEXPECTDATA =
                     (JCNT_FROM[2] & JCNT_TO[2]);
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READSEG_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_INVERTEXPECTDATA =
                     (JCNT_FROM[2] & JCNT_TO[2]);
    assign DEFAULT_SYNCCUSTOM_READTWODP_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_INVERTEXPECTDATA =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_INVERTEXPECTDATA =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_INVERTEXPECTDATA = 1'b0;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNC_WRITE_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNC_READ_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNC_READMODIFYWRITE_INVERTEXPECTDATA = 1'b0;
    assign DEFAULT_SYNC_WRITEREAD_INVERTEXPECTDATA = 1'b0;
    // OperationSet: SYNC }}}
 
    assign DEFAULT_INVERTEXPECTDATA = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_INVERTEXPECTDATA       & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_INVERTEXPECTDATA         & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_INVERTEXPECTDATA         & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_INVERTEXPECTDATA           & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_INVERTEXPECTDATA                & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_INVERTEXPECTDATA           & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_INVERTEXPECTDATA   & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_INVERTEXPECTDATA        & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_INVERTEXPECTDATA              & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_INVERTEXPECTDATA         & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_INVERTEXPECTDATA     & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_INVERTEXPECTDATA   & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_INVERTEXPECTDATA    & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_INVERTEXPECTDATA           & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_INVERTEXPECTDATA        & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_INVERTEXPECTDATA             & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_INVERTEXPECTDATA       & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_INVERTEXPECTDATA                & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_INVERTEXPECTDATA            & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_INVERTEXPECTDATA         & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_INVERTEXPECTDATA      & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_INVERTEXPECTDATA   & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_INVERTEXPECTDATA  & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_INVERTEXPECTDATA   & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_INVERTEXPECTDATA  & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_INVERTEXPECTDATA   & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_INVERTEXPECTDATA      & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_INVERTEXPECTDATA     & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_INVERTEXPECTDATA    & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_INVERTEXPECTDATA       & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_INVERTEXPECTDATA            & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_INVERTEXPECTDATA       & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_INVERTEXPECTDATA              & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_INVERTEXPECTDATA              & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_INVERTEXPECTDATA           & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_INVERTEXPECTDATA               & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_INVERTEXPECTDATA            & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_INVERTEXPECTDATA             & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_INVERTEXPECTDATA             & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_INVERTEXPECTDATA    & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_INVERTEXPECTDATA     & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_INVERTEXPECTDATA         & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_INVERTEXPECTDATA               & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_INVERTEXPECTDATA_SELECTED =
                               (DEFAULT_INVERTEXPECTDATA         & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_INVERTEXPECTDATA         & DEFAULT_OPSET_SEL[1]);
 

    //---------------------------------------------
    // Generate Signal INVERTWRITEDATA
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWO_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READSEG_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_INVERTWRITEDATA =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWODP_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_INVERTWRITEDATA = 1'b0;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNC_WRITE_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNC_READ_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNC_READMODIFYWRITE_INVERTWRITEDATA = 1'b0;
    assign DEFAULT_SYNC_WRITEREAD_INVERTWRITEDATA = 1'b0;
    // OperationSet: SYNC }}}
 
    assign DEFAULT_INVERTWRITEDATA = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_INVERTWRITEDATA        & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_INVERTWRITEDATA          & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_INVERTWRITEDATA          & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_INVERTWRITEDATA            & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_INVERTWRITEDATA  & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_INVERTWRITEDATA            & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_INVERTWRITEDATA    & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_INVERTWRITEDATA         & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_INVERTWRITEDATA               & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_INVERTWRITEDATA          & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_INVERTWRITEDATA      & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_INVERTWRITEDATA    & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_INVERTWRITEDATA     & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_INVERTWRITEDATA            & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_INVERTWRITEDATA         & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_INVERTWRITEDATA              & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_INVERTWRITEDATA        & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_INVERTWRITEDATA  & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_INVERTWRITEDATA             & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_INVERTWRITEDATA          & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_INVERTWRITEDATA       & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_INVERTWRITEDATA    & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_INVERTWRITEDATA   & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_INVERTWRITEDATA    & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_INVERTWRITEDATA   & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_INVERTWRITEDATA    & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_INVERTWRITEDATA       & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_INVERTWRITEDATA      & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_INVERTWRITEDATA     & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_INVERTWRITEDATA        & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_INVERTWRITEDATA             & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_INVERTWRITEDATA        & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_INVERTWRITEDATA               & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_INVERTWRITEDATA               & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_INVERTWRITEDATA            & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_INVERTWRITEDATA                & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_INVERTWRITEDATA             & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_INVERTWRITEDATA              & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_INVERTWRITEDATA              & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_INVERTWRITEDATA     & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_INVERTWRITEDATA      & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_INVERTWRITEDATA          & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_INVERTWRITEDATA                & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_INVERTWRITEDATA_SELECTED =
                               (DEFAULT_INVERTWRITEDATA          & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_INVERTWRITEDATA          & DEFAULT_OPSET_SEL[1]);
 

    //---------------------------------------------
    // Generate Signal WRITEENABLE
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READONE_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READTWO_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_WRITEENABLE =
                     (JCNT_FROM[3] & JCNT_TO[3]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_WRITEENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READSEG_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_WRITEENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READTWODP_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_WRITEENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_WRITEENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_WRITEENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNC_WRITE_WRITEENABLE = 1'b1;
    assign DEFAULT_SYNC_READ_WRITEENABLE = 1'b0;
    assign DEFAULT_SYNC_READMODIFYWRITE_WRITEENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNC_WRITEREAD_WRITEENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    // OperationSet: SYNC }}}
 
    assign DEFAULT_WRITEENABLE = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_WRITEENABLE            & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_WRITEENABLE              & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_WRITEENABLE              & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_WRITEENABLE                & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_WRITEENABLE      & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_WRITEENABLE                & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_WRITEENABLE        & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_WRITEENABLE             & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_WRITEENABLE    & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_WRITEENABLE              & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_WRITEENABLE          & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_WRITEENABLE        & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_WRITEENABLE         & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_WRITEENABLE                & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_WRITEENABLE             & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_WRITEENABLE   & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_WRITEENABLE            & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_WRITEENABLE      & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_WRITEENABLE  & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_WRITEENABLE              & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_WRITEENABLE           & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_WRITEENABLE        & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_WRITEENABLE       & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_WRITEENABLE        & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_WRITEENABLE       & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_WRITEENABLE        & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_WRITEENABLE           & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_WRITEENABLE          & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_WRITEENABLE         & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_WRITEENABLE            & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_WRITEENABLE  & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_WRITEENABLE            & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_WRITEENABLE    & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_WRITEENABLE    & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_WRITEENABLE                & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_WRITEENABLE     & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_WRITEENABLE  & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_WRITEENABLE   & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_WRITEENABLE   & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_WRITEENABLE         & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_WRITEENABLE          & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_WRITEENABLE              & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_WRITEENABLE     & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_WRITEENABLE_SELECTED =
                               (DEFAULT_WRITEENABLE              & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_WRITEENABLE              & DEFAULT_OPSET_SEL[1]);
 

    //---------------------------------------------
    // Generate Signal READENABLE
    //---------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READONE_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READTWO_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_READENABLE =
                     (JCNT_FROM[0] | JCNT_TO[2]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]) |
                     (JCNT_FROM[2] & JCNT_TO[2]);
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_READENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READSEG_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_READENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]) |
                     (JCNT_FROM[2] & JCNT_TO[2]);
    assign DEFAULT_SYNCCUSTOM_READTWODP_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_READENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READFASTROW_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_READENABLE = 1'b0;
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_READENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_READENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_READENABLE = 1'b1;
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_READENABLE = 1'b0;
    assign DEFAULT_SYNC_WRITE_READENABLE = 1'b0;
    assign DEFAULT_SYNC_READ_READENABLE = 1'b1;
    assign DEFAULT_SYNC_READMODIFYWRITE_READENABLE =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    assign DEFAULT_SYNC_WRITEREAD_READENABLE =
                     (JCNT_FROM[1] & JCNT_TO[1]);
    // OperationSet: SYNC }}}
 
    assign DEFAULT_READENABLE = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_READENABLE             & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_READENABLE               & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_READENABLE               & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_READENABLE  & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_READENABLE       & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_READENABLE  & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_READENABLE         & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_READENABLE              & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_READENABLE     & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_READENABLE               & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_READENABLE           & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_READENABLE         & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_READENABLE          & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_READENABLE  & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_READENABLE              & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_READENABLE    & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_READENABLE             & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_READENABLE       & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_READENABLE   & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_READENABLE               & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_READENABLE            & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_READENABLE         & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_READENABLE        & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_READENABLE         & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_READENABLE        & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_READENABLE         & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_READENABLE            & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_READENABLE           & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_READENABLE          & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_READENABLE             & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_READENABLE   & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_READENABLE             & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_READENABLE     & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_READENABLE     & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_READENABLE  & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_READENABLE      & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_READENABLE   & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_READENABLE    & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_READENABLE    & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_READENABLE          & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_READENABLE           & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_READENABLE               & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_READENABLE      & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
    assign DEFAULT_READENABLE_SELECTED =
                               (DEFAULT_READENABLE               & DEFAULT_OPSET_SEL[0]) |
                               (DEFAULT_READENABLE               & DEFAULT_OPSET_SEL[1]);
 
 
 
    //-------------------------------------------------------
    // Generate Signal STROBEDATAOUT0
    //-------------------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT0 =
                     (JCNT_FROM[0] & JCNT_TO[0]);
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
 
    assign DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNC_WRITE_STROBEDATAOUT0 = 1'b0;
 
    assign DEFAULT_SYNC_READ_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT0 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT0 = 1'b0;
    // OperationSet: SYNC }}}
    //-------------------------------------------------------
    // Generate Signal STROBEDATAOUT1
    //-------------------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT1 =
                     (JCNT_FROM[2] & JCNT_TO[2]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT1 =
                     (JCNT_FROM[2] & JCNT_TO[2]);
 
    assign DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT1 =
                     (JCNT_FROM[1] & JCNT_TO[1]);
 
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT1 = 1'b0;
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
 
    assign DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNC_WRITE_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNC_READ_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT1 = 1'b0;
 
    assign DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT1 = 1'b0;
    // OperationSet: SYNC }}}
 
    //---------------------------------------------------------------------------------
    // Generate Merged Signal STROBEDATAOUT with selective enabling
    //---------------------------------------------------------------------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT1);
    assign DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT =
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT0) | 
                     (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT1);
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT =
                     (DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT0) | 
                     (DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT1);
    assign DEFAULT_SYNC_WRITE_STROBEDATAOUT =
                     (DEFAULT_SYNC_WRITE_STROBEDATAOUT0) | 
                     (DEFAULT_SYNC_WRITE_STROBEDATAOUT1);
    assign DEFAULT_SYNC_READ_STROBEDATAOUT =
                     (DEFAULT_SYNC_READ_STROBEDATAOUT0) | 
                     (DEFAULT_SYNC_READ_STROBEDATAOUT1);
    assign DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT =
                     (DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT0) | 
                     (DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT1);
    assign DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT =
                     (DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT0) | 
                     (DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT1);
    // OperationSet: SYNC }}}
 
    assign DEFAULT_STROBEDATAOUT = ((~LAST_STATE_DONE) & BIST_RUN) & (
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION_STROBEDATAOUT          & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONPIPELINEDEPTH_STROBEDATAOUT            & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEDATA_STROBEDATAOUT            & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STROBEDATAOUT              & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READONE_STRETCHED_STROBEDATAOUT    & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWO_STROBEDATAOUT              & OP_SELECT_DECODED_INT[5]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STROBEDATAOUT      & OP_SELECT_DECODED_INT[6]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITE_STRETCHED_STROBEDATAOUT           & OP_SELECT_DECODED_INT[7]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREAD_STROBEDATAOUT  & OP_SELECT_DECODED_INT[8]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREAD_STROBEDATAOUT            & OP_SELECT_DECODED_INT[9]    & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGON_STROBEDATAOUT        & OP_SELECT_DECODED_INT[10]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITESEGEVENODD_STROBEDATAOUT      & OP_SELECT_DECODED_INT[11]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEALLSEGOFF_STROBEDATAOUT       & OP_SELECT_DECODED_INT[12]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READSEG_STROBEDATAOUT              & OP_SELECT_DECODED_INT[13]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READWRITE_SHADOWWRITEREAD_STROBEDATAOUT           & OP_SELECT_DECODED_INT[14]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READREAD_SHADOWWRITE_STROBEDATAOUT                & OP_SELECT_DECODED_INT[15]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEREADDP_STROBEDATAOUT          & OP_SELECT_DECODED_INT[16]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEDP_STROBEDATAOUT    & OP_SELECT_DECODED_INT[17]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITEREADDP_STROBEDATAOUT               & OP_SELECT_DECODED_INT[18]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READTWODP_STROBEDATAOUT            & OP_SELECT_DECODED_INT[19]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATION2_STROBEDATAOUT         & OP_SELECT_DECODED_INT[20]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONREAD_STROBEDATAOUT      & OP_SELECT_DECODED_INT[21]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONWRITE_STROBEDATAOUT     & OP_SELECT_DECODED_INT[22]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READNOOPERATION_STROBEDATAOUT      & OP_SELECT_DECODED_INT[23]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITENOOPERATION_STROBEDATAOUT     & OP_SELECT_DECODED_INT[24]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTCOLUMN_STROBEDATAOUT      & OP_SELECT_DECODED_INT[25]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTROW_STROBEDATAOUT         & OP_SELECT_DECODED_INT[26]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEFASTDIAG_STROBEDATAOUT        & OP_SELECT_DECODED_INT[27]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTCOLUMN_STROBEDATAOUT       & OP_SELECT_DECODED_INT[28]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READFASTROW_STROBEDATAOUT          & OP_SELECT_DECODED_INT[29]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONFASTCOLUMN_STROBEDATAOUT               & OP_SELECT_DECODED_INT[30]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_NOOPERATIONADDR1WRITEADDR2_STROBEDATAOUT          & OP_SELECT_DECODED_INT[31]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1WRITEADDR2_STROBEDATAOUT  & OP_SELECT_DECODED_INT[32]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2_STROBEDATAOUT  & OP_SELECT_DECODED_INT[33]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_WRITEADDR1READADDR2INV_STROBEDATAOUT              & OP_SELECT_DECODED_INT[34]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2_STROBEDATAOUT   & OP_SELECT_DECODED_INT[35]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READADDR1READADDR2INV_STROBEDATAOUT               & OP_SELECT_DECODED_INT[36]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNCCUSTOM_READMODIFYWRITENOCDP_STROBEDATAOUT                & OP_SELECT_DECODED_INT[37]   & DEFAULT_OPSET_SEL[0]) |
                                        (DEFAULT_SYNC_NOOPERATION_STROBEDATAOUT                & OP_SELECT_DECODED_INT[0]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITE_STROBEDATAOUT       & OP_SELECT_DECODED_INT[1]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READ_STROBEDATAOUT        & OP_SELECT_DECODED_INT[2]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_READMODIFYWRITE_STROBEDATAOUT            & OP_SELECT_DECODED_INT[3]    & DEFAULT_OPSET_SEL[1]) |
                                        (DEFAULT_SYNC_WRITEREAD_STROBEDATAOUT   & OP_SELECT_DECODED_INT[4]    & DEFAULT_OPSET_SEL[1]));
 
wire DEFAULT_STROBEDATAOUT_PIPE_RST;
     assign DEFAULT_STROBEDATAOUT_PIPE_RST = (~SIGNAL_GEN_ENABLE);
    //-------------------------------------------------------
    // Pipelining DEFAULT_STROBEDATAOUT
    //-------------------------------------------------------
    //synopsys sync_set_reset "DEFAULT_STROBEDATAOUT_PIPE_RST"     
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
          DEFAULT_STROBEDATAOUT_PIPE <= 1'b0;
        else       
       if (DEFAULT_STROBEDATAOUT_PIPE_RST) begin
          DEFAULT_STROBEDATAOUT_PIPE <= 1'b0;
       end else begin
          if (~SIGNAL_GEN_HOLD) begin
             DEFAULT_STROBEDATAOUT_PIPE[0] <= DEFAULT_STROBEDATAOUT;
          end
       end
    end
 
    assign DEFAULT_STROBEDATAOUT_SELECTED =
                               (DEFAULT_STROBEDATAOUT_PIPE[0]    & DEFAULT_OPSET_SEL[0]) | 
                               (DEFAULT_STROBEDATAOUT            & DEFAULT_OPSET_SEL[1]);
 
 
    //---------------
    // Signal mapping
    //---------------
    assign BIST_Y0_COUNT_EN =
           (BIST_Y0_COUNT_EN_BIT0_EN) & DEFAULT_COLUMNADDRESSCOUNT_SELECTED ;
    assign BIST_X0_COUNT_EN =
           (BIST_X0_COUNT_EN_BIT0_EN) & DEFAULT_ROWADDRESSCOUNT_SELECTED ;
    assign SWITCH_ADDRESS_REG =
           (SWITCH_ADDRESS_REG_BIT0_EN) & DEFAULT_SWITCHADDRESSREGISTER_SELECTED ;
    assign OPSET_INVERT_EDATA =
           (OPSET_INVERT_EDATA_BIT0_EN) & DEFAULT_INVERTEXPECTDATA_SELECTED ;
    assign OPSET_INVERT_WDATA =
           (OPSET_INVERT_WDATA_BIT0_EN) & DEFAULT_INVERTWRITEDATA_SELECTED ;
    assign BIST_WRITEENABLE =
           (BIST_WRITEENABLE_BIT0_EN) & DEFAULT_WRITEENABLE_SELECTED ;
    assign BIST_READENABLE =
           (BIST_READENABLE_BIT0_EN) & DEFAULT_READENABLE_SELECTED ;
 
    assign BIST_CMP = ((~LV_TM)|MEM_BYPASS_EN)&DEFAULT_STROBEDATAOUT_SELECTED ;
 
    //-------------------
    // Address decoding 
    //-------------------
       
    assign BIST_Y0_COUNT_EN_BIT0_EN = 
                                  1'b1;
       
    assign BIST_X0_COUNT_EN_BIT0_EN = 
                                  1'b1;
       
    assign SWITCH_ADDRESS_REG_BIT0_EN = 
                                  1'b1;
       
    assign OPSET_INVERT_EDATA_BIT0_EN = 
                                  1'b1;
       
    assign OPSET_INVERT_WDATA_BIT0_EN = 
                                  1'b1;
       
    assign BIST_WRITEENABLE_BIT0_EN = 
                                  1'b1;
       
    assign BIST_READENABLE_BIT0_EN = 
                                  1'b1;
      
    //-----------------
    // OPFAM#_OPSET_SEL
    //-----------------
    assign DEFAULT_OPSET_REG_BUS   = 
                                                   OPSET_SELECT_REG;
    assign DEFAULT_OPSET_SEL[0] = (DEFAULT_OPSET_REG_BUS == 1'b0); // OperationSet: SYNCCUSTOM
    assign DEFAULT_OPSET_SEL[1] = (DEFAULT_OPSET_REG_BUS == 1'b1); // OperationSet: SYNC
    
    
      
    //-------------------
    // Generate LAST_TICK
    //-------------------
    // OperationSet: SYNCCUSTOM {{{
    assign DEFAULT_SYNCCUSTOM_LAST_TICK =
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[0])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[1])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[2])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[3])) &
                           ((JCNT_FROM[2] & JCNT_TO[2]) | (~OP_SELECT_DECODED_INT[4])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[5])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[6])) &
                           ((JCNT_FROM[2] & JCNT_TO[2]) | (~OP_SELECT_DECODED_INT[7])) &
                           ((JCNT_FROM[1] & JCNT_TO[1]) | (~OP_SELECT_DECODED_INT[8])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[9])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[10])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[11])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[12])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[13])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[14])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[15])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[16])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[17])) &
                           ((JCNT_FROM[1] & JCNT_TO[1]) | (~OP_SELECT_DECODED_INT[18])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[19])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[20])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[21])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[22])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[23])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[24])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[25])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[26])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[27])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[28])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[29])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[30])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[31])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[32])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[33])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[34])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[35])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[36])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[37]));
    // OperationSet: SYNCCUSTOM }}}
    // OperationSet: SYNC {{{
    assign DEFAULT_SYNC_LAST_TICK =
                           ((JCNT_FROM[2] & JCNT_TO[2]) | (~OP_SELECT_DECODED_INT[0])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[1])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[2])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[3])) &
                           ((JCNT_FROM[0] & JCNT_TO[0]) | (~OP_SELECT_DECODED_INT[4]));
    // OperationSet: SYNC }}}
       
    assign DEFAULT_LAST_TICK =
                            (DEFAULT_SYNCCUSTOM_LAST_TICK & DEFAULT_OPSET_SEL[0]) |
                            (DEFAULT_SYNC_LAST_TICK & DEFAULT_OPSET_SEL[1]);
    assign DEFAULT_LAST_TICK_PIPELINED =  
                               (LAST_TICK_REG[1]  & DEFAULT_OPSET_SEL[0]) |
                               (LAST_TICK_REG[0]  & DEFAULT_OPSET_SEL[1]);
        
        
      
    assign RESET_LAST_TICK_REG      = ~SIGNAL_GEN_ENABLE;
    //-----------------------
    // LAST_TICK_D
    //-----------------------
    assign LAST_TICK_D = DEFAULT_LAST_TICK;
   
   
    //-------------------------
    // LAST_TICK_REG
    //-------------------------
    //synopsys sync_set_reset "RESET_LAST_TICK_REG"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
            LAST_TICK_REG <= 2'b00;
       else
        if (RESET_LAST_TICK_REG) begin
            LAST_TICK_REG <= 2'b00;
        end else begin
           if (~SIGNAL_GEN_HOLD) begin
              LAST_TICK_REG <= {(LAST_TICK_REG[0] ), (~LAST_OPERATION_DONE) & (~LAST_TICK_REG[0]) & LAST_TICK_D };
           end
        end
    end
    
    
    assign OPERATION_LAST_TICK_REG = LAST_TICK_REG[0];
    assign MBISTPG_ALGO_SEL_INT  =   MBISTPG_ALGO_SEL ;    
    assign OPSET_SELECT_REG_SI = JCNT_SO;
  
    //--------------------------
    // OPERATION SELECT REGISTER
    //--------------------------
    assign OPSET_SELECT_WIRE = 1'b0; // OperationSet: SYNCCUSTOM

    // synopsys async_set_reset "BIST_ASYNC_RESETN"
     always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
             OPSET_SELECT_REG <= 1'b0;
       else
        if (RESET_REG_DEFAULT_MODE & BIST_ALGO_SEL_CNT & (~MEM_ARRAY_DUMP_MODE)) begin 
          OPSET_SELECT_REG <=  OPSET_SELECT_WIRE ;
        end
        else begin
          if (BIST_SHIFT_SHORT) begin
             OPSET_SELECT_REG <= OPSET_SELECT_REG_SI;
          end
        end          
      end  
  
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_signal_gen
     
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_repeat_loop_cntrl
 
     Description :  This module contains logic used to re-execute previously 
                    specified instructions with modified address, write data,
                    and/or expect data.
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_repeat_loop_cntrl (
  input wire BIST_CLK,
  input wire RESET_REG_SETUP1,
  input wire RESET_REG_DEFAULT_MODE,
  input wire  [1:0] LOOP_CMD,
  input wire BIST_ASYNC_RESETN,
  input wire  [1:0] ADD_Y0_CMD,
  input wire  [2:0] ADD_Y1_CMD,
  input wire  [1:0] ADD_X0_CMD,
  input wire  [2:0] ADD_X1_CMD,
  input wire  [3:0] WDATA_CMD,
  input wire  [3:0] EDATA_CMD,
  input wire INH_LAST_ADDR_CNT,
  input wire INH_DATA_CMP,
  input wire LOOP_STATE_TRUE,
  input wire  [1:0] A_EQUALS_B_INVERT_DATA,
  input wire A_EQUALS_B_TRIGGER,
  input wire SI,
  input wire BIST_HOLD,
  input wire LAST_TICK,
  input wire BIST_SHIFT_SHORT,
  input wire BIST_RUN,
  input wire [1:0] OPSET_SELECT_DECODED,
  input wire MBISTPG_ALGO_SEL,
  input wire OPSET_INVERT_EDATA,
  input wire OPSET_INVERT_WDATA,
  input wire  ESOE_RESET,
  output wire LOOPCOUNTMAX_TRIGGER,
  output wire [4:0] LOOP_POINTER,
  output wire [1:0] ADD_Y0_CMD_MODIFIED,
  output wire [2:0] ADD_Y1_CMD_MODIFIED,
  output wire [1:0] ADD_X0_CMD_MODIFIED,
  output wire [2:0] ADD_X1_CMD_MODIFIED,
  output wire [3:0] WDATA_CMD_MODIFIED,
  output wire [3:0] EDATA_CMD_MODIFIED,
  output wire INH_LAST_ADDR_CNT_MODIFIED,
  output wire INH_DATA_CMP_MODIFIED,
  output wire SO
);
    wire             MBISTPG_ALGO_SEL_INT;
    reg    [1:0]     LOOP_A_CNTR;
    reg    [1:0]     LOOP_B_CNTR;
    wire             LOOP_A_CNTR_SI;
    wire             LOOP_A_CNTR_SO;
    wire             LOOP_B_CNTR_SI;
    wire             LOOP_B_CNTR_SO;
    
    wire   [1:0]     CNTR_A_MAX_REG;   
    wire   [4:0]     CNTR_A_LOOP_POINTER_REG;
    wire   [4:0]     CNTR_A_LOOP1_REG;
    wire   [4:0]     CNTR_A_LOOP2_REG;
    wire   [4:0]     CNTR_A_LOOP3_REG;
    wire   [1:0]     CNTR_B_MAX_REG;  
    wire   [4:0]     CNTR_B_LOOP_POINTER_REG;
    wire   [4:0]     CNTR_B_LOOP1_REG;
    wire   [4:0]     CNTR_B_LOOP2_REG;
    wire   [4:0]     CNTR_B_LOOP3_REG;
    reg    [1:0]     CNTR_A_MAX_WIRE;
    reg    [4:0]     CNTR_A_LOOP_POINTER_WIRE;
    reg    [4:0]     CNTR_A_LOOP1_WIRE;
    reg    [4:0]     CNTR_A_LOOP2_WIRE;
    reg    [4:0]     CNTR_A_LOOP3_WIRE;
    reg    [1:0]     CNTR_B_MAX_WIRE; 
    reg    [4:0]     CNTR_B_LOOP_POINTER_WIRE;
    reg    [4:0]     CNTR_B_LOOP1_WIRE;
    reg    [4:0]     CNTR_B_LOOP2_WIRE;
    reg    [4:0]     CNTR_B_LOOP3_WIRE;
    
 
    reg              INH_DATA_CMP_MODIFIED_INT_PIPE;
 
    wire             INC_CNTR_A;
    wire             INC_CNTR_B;
    wire             INC_CNTR_BA;
 
    wire             CNTR_A_MAX;
    wire             CNTR_B_MAX;
  
    wire             ENABLE_CNTR_A;
    wire             ENABLE_CNTR_B;
  
    wire             RESET_CNTR_A;
    wire             RESET_CNTR_B;
 
    wire             ADD_SEQUENCE_FLIP;
    wire             WDATA_SEQUENCE_FLIP;
    wire             EDATA_SEQUENCE_FLIP;
    wire             INH_DATA_CMP_NESTED_LOOP_FLIP;
    wire             INH_DATA_CMP_MODIFIED_INT;
 
    wire   [4:0]     CNTR_A_LOOP_REG_SEL;
    wire   [4:0]     CNTR_B_LOOP_REG_SEL;

    assign SO        = LOOP_B_CNTR_SO;
    assign LOOPCOUNTMAX_TRIGGER     = (INC_CNTR_BA & CNTR_A_MAX & CNTR_B_MAX) |
                                      (INC_CNTR_A  & CNTR_A_MAX)              |
                                      (INC_CNTR_B  & CNTR_B_MAX)              ;
 
    assign LOOP_POINTER             = (INC_CNTR_A | (INC_CNTR_BA & (~CNTR_A_MAX))) ? CNTR_A_LOOP_POINTER_REG :
                                                                            CNTR_B_LOOP_POINTER_REG ;
 
    assign INC_CNTR_A               = (LOOP_CMD == 2'b01);
    assign INC_CNTR_B               = (LOOP_CMD == 2'b10);
    assign INC_CNTR_BA              = (LOOP_CMD == 2'b11);
 
    assign RESET_CNTR_A             = (ESOE_RESET | RESET_REG_SETUP1 | ((~BIST_HOLD) & LAST_TICK & LOOP_STATE_TRUE & CNTR_A_MAX & (INC_CNTR_A | INC_CNTR_BA)));
    assign RESET_CNTR_B             = (ESOE_RESET | RESET_REG_SETUP1 | ((~BIST_HOLD) & LAST_TICK & LOOP_STATE_TRUE & ((INC_CNTR_B & CNTR_B_MAX) | (CNTR_A_MAX & CNTR_B_MAX & INC_CNTR_BA))));
 
    assign ENABLE_CNTR_A            = (INC_CNTR_A | INC_CNTR_BA);
    assign ENABLE_CNTR_B            = ((INC_CNTR_BA & CNTR_A_MAX) | (INC_CNTR_B));
 
    assign CNTR_A_MAX               = (LOOP_A_CNTR == CNTR_A_MAX_REG);
    assign CNTR_B_MAX               = (LOOP_B_CNTR == CNTR_B_MAX_REG);
 

    //---------------
    // LOOP COUNTER A
    //---------------
    assign LOOP_A_CNTR_SI = SI;
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
          LOOP_A_CNTR               <= 2'b00;
       else
       if (BIST_SHIFT_SHORT) begin
          LOOP_A_CNTR               <= {LOOP_A_CNTR[0:0],LOOP_A_CNTR_SI};
       end else begin
          if (RESET_CNTR_A) begin
             LOOP_A_CNTR            <= 2'b00;
          end else begin 
             if ((~BIST_HOLD) & BIST_RUN & ENABLE_CNTR_A & LAST_TICK & LOOP_STATE_TRUE) begin
                LOOP_A_CNTR         <= INC_FUNCTION_FOR_CNTR_A(LOOP_A_CNTR);
             end
          end
       end
    end
    assign LOOP_A_CNTR_SO = LOOP_A_CNTR[1];

    //---------------
    // LOOP COUNTER B
    //---------------
    assign LOOP_B_CNTR_SI = LOOP_A_CNTR_SO;
    //synopsys sync_set_reset "RESET_CNTR_B"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
          LOOP_B_CNTR               <= 2'b00;
       else
       if (BIST_SHIFT_SHORT) begin
          LOOP_B_CNTR               <= {LOOP_B_CNTR[0:0],LOOP_B_CNTR_SI};
       end else begin
          if (RESET_CNTR_B) begin
             LOOP_B_CNTR            <= 2'b00;
          end else begin 
             if ((~BIST_HOLD) & BIST_RUN & ENABLE_CNTR_B & LAST_TICK & LOOP_STATE_TRUE) begin
                LOOP_B_CNTR         <= INC_FUNCTION_FOR_CNTR_B(LOOP_B_CNTR);
             end
          end
       end
    end
    assign LOOP_B_CNTR_SO = LOOP_B_CNTR[1];
 

    assign CNTR_A_LOOP_REG_SEL     = (LOOP_A_CNTR == 2'b00) ? 5'b00000          :
                                     (LOOP_A_CNTR == 2'b01) ? CNTR_A_LOOP1_REG  :
                                     (LOOP_A_CNTR == 2'b10) ? CNTR_A_LOOP2_REG  :
                                                              CNTR_A_LOOP3_REG  ;

    assign CNTR_B_LOOP_REG_SEL     = (LOOP_B_CNTR == 2'b00) ? 5'b00000          :
                                     (LOOP_B_CNTR == 2'b01) ? CNTR_B_LOOP1_REG  :
                                     (LOOP_B_CNTR == 2'b10) ? CNTR_B_LOOP2_REG  :
                                                              CNTR_B_LOOP3_REG  ;

    assign EDATA_SEQUENCE_FLIP                    = CNTR_A_LOOP_REG_SEL[4] ^ CNTR_B_LOOP_REG_SEL[4] ^ (A_EQUALS_B_INVERT_DATA[1] & A_EQUALS_B_TRIGGER) ^ OPSET_INVERT_EDATA;
    assign WDATA_SEQUENCE_FLIP                    = CNTR_A_LOOP_REG_SEL[3] ^ CNTR_B_LOOP_REG_SEL[3] ^ (A_EQUALS_B_INVERT_DATA[0] & A_EQUALS_B_TRIGGER) ^ OPSET_INVERT_WDATA;
    assign ADD_SEQUENCE_FLIP                      = CNTR_A_LOOP_REG_SEL[2] ^ CNTR_B_LOOP_REG_SEL[2];
    assign INH_DATA_CMP_NESTED_LOOP_FLIP          = CNTR_A_LOOP_REG_SEL[0] ^ CNTR_B_LOOP_REG_SEL[0];
 
    assign ADD_Y0_CMD_MODIFIED     = {ADD_Y0_CMD[1:1]            , ADD_Y0_CMD[0] ^ ADD_SEQUENCE_FLIP};
    assign ADD_Y1_CMD_MODIFIED     = {ADD_Y1_CMD[2:1]            , ADD_Y1_CMD[0] ^ ADD_SEQUENCE_FLIP};
    assign ADD_X0_CMD_MODIFIED     = {ADD_X0_CMD[1:1]            , ADD_X0_CMD[0] ^ ADD_SEQUENCE_FLIP};
    assign ADD_X1_CMD_MODIFIED     = {ADD_X1_CMD[2:1]            , ADD_X1_CMD[0] ^ ADD_SEQUENCE_FLIP};
 
    assign WDATA_CMD_MODIFIED      = {WDATA_CMD[3:1]             , WDATA_CMD[0] ^ WDATA_SEQUENCE_FLIP}; 
    assign EDATA_CMD_MODIFIED      = {EDATA_CMD[3:1]             , EDATA_CMD[0] ^ EDATA_SEQUENCE_FLIP};
 
    assign INH_LAST_ADDR_CNT_MODIFIED             = (LOOP_STATE_TRUE & ENABLE_CNTR_B & (LOOP_B_CNTR != 2'b00))               ? CNTR_B_LOOP_REG_SEL[1]      :
                                                    (LOOP_STATE_TRUE & ENABLE_CNTR_A & (LOOP_A_CNTR != 2'b00))               ? CNTR_A_LOOP_REG_SEL[1]      :
                                                                                                                 INH_LAST_ADDR_CNT          ;
 
    assign INH_DATA_CMP_MODIFIED_INT              = ((LOOP_B_CNTR != 2'b00) | (LOOP_A_CNTR != 2'b00))         ? INH_DATA_CMP_NESTED_LOOP_FLIP              : 
                                                                                                                   INH_DATA_CMP             ;
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
        INH_DATA_CMP_MODIFIED_INT_PIPE <= 1'b0;
        else
       if (~BIST_HOLD) begin
             INH_DATA_CMP_MODIFIED_INT_PIPE <= INH_DATA_CMP_MODIFIED_INT;
       end
    end
    assign INH_DATA_CMP_MODIFIED =
                               (INH_DATA_CMP_MODIFIED_INT_PIPE   & OPSET_SELECT_DECODED[0])     |
                               (INH_DATA_CMP_MODIFIED_INT        & OPSET_SELECT_DECODED[1])     ;
    assign MBISTPG_ALGO_SEL_INT  =   MBISTPG_ALGO_SEL ;    
    //-------------------------
    // LOOP COUNTER A REGISTERS
    //-------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT) 
          1'b0:  begin           
            CNTR_A_MAX_WIRE        = 2'b11;
            CNTR_A_LOOP_POINTER_WIRE              = 5'b00010;
            CNTR_A_LOOP1_WIRE[4]   = 1'b1;
            CNTR_A_LOOP1_WIRE[3]   = 1'b1;
            CNTR_A_LOOP1_WIRE[2]   = 1'b0;
            CNTR_A_LOOP1_WIRE[1]   = 1'b1;
            CNTR_A_LOOP1_WIRE[0]   = 1'b0;
            CNTR_A_LOOP2_WIRE[4]   = 1'b0;
            CNTR_A_LOOP2_WIRE[3]   = 1'b0;
            CNTR_A_LOOP2_WIRE[2]   = 1'b1;
            CNTR_A_LOOP2_WIRE[1]   = 1'b0;
            CNTR_A_LOOP2_WIRE[0]   = 1'b0;
            CNTR_A_LOOP3_WIRE[4]   = 1'b1;
            CNTR_A_LOOP3_WIRE[3]   = 1'b1;
            CNTR_A_LOOP3_WIRE[2]   = 1'b1;
            CNTR_A_LOOP3_WIRE[1]   = 1'b0;
            CNTR_A_LOOP3_WIRE[0]   = 1'b0;
          end  
          1'b1:  begin           
            CNTR_A_MAX_WIRE        = 2'b01;
            CNTR_A_LOOP_POINTER_WIRE              = 5'b01111;
            CNTR_A_LOOP1_WIRE[4]   = 1'b1;
            CNTR_A_LOOP1_WIRE[3]   = 1'b1;
            CNTR_A_LOOP1_WIRE[2]   = 1'b0;
            CNTR_A_LOOP1_WIRE[1]   = 1'b1;
            CNTR_A_LOOP1_WIRE[0]   = 1'b0;
            CNTR_A_LOOP2_WIRE[4]   = 1'b0;
            CNTR_A_LOOP2_WIRE[3]   = 1'b0;
            CNTR_A_LOOP2_WIRE[2]   = 1'b0;
            CNTR_A_LOOP2_WIRE[1]   = 1'b0;
            CNTR_A_LOOP2_WIRE[0]   = 1'b0;
            CNTR_A_LOOP3_WIRE[4]   = 1'b0;
            CNTR_A_LOOP3_WIRE[3]   = 1'b0;
            CNTR_A_LOOP3_WIRE[2]   = 1'b0;
            CNTR_A_LOOP3_WIRE[1]   = 1'b0;
            CNTR_A_LOOP3_WIRE[0]   = 1'b0;
          end  
       endcase
    
    end
    assign CNTR_A_MAX_REG          = CNTR_A_MAX_WIRE;
    assign CNTR_A_LOOP_POINTER_REG                = CNTR_A_LOOP_POINTER_WIRE;  
    assign CNTR_A_LOOP1_REG[4]     = CNTR_A_LOOP1_WIRE[4]; 
    assign CNTR_A_LOOP1_REG[3]     = CNTR_A_LOOP1_WIRE[3];
    assign CNTR_A_LOOP1_REG[2]     = CNTR_A_LOOP1_WIRE[2]; 
    assign CNTR_A_LOOP1_REG[1]     = CNTR_A_LOOP1_WIRE[1];
    assign CNTR_A_LOOP1_REG[0]     = CNTR_A_LOOP1_WIRE[0];
    assign CNTR_A_LOOP2_REG[4]     = CNTR_A_LOOP2_WIRE[4]; 
    assign CNTR_A_LOOP2_REG[3]     = CNTR_A_LOOP2_WIRE[3];
    assign CNTR_A_LOOP2_REG[2]     = CNTR_A_LOOP2_WIRE[2]; 
    assign CNTR_A_LOOP2_REG[1]     = CNTR_A_LOOP2_WIRE[1];
    assign CNTR_A_LOOP2_REG[0]     = CNTR_A_LOOP2_WIRE[0];
    assign CNTR_A_LOOP3_REG[4]     = CNTR_A_LOOP3_WIRE[4]; 
    assign CNTR_A_LOOP3_REG[3]     = CNTR_A_LOOP3_WIRE[3];
    assign CNTR_A_LOOP3_REG[2]     = CNTR_A_LOOP3_WIRE[2]; 
    assign CNTR_A_LOOP3_REG[1]     = CNTR_A_LOOP3_WIRE[1];
    assign CNTR_A_LOOP3_REG[0]     = CNTR_A_LOOP3_WIRE[0];
    
    //-------------------------
    // LOOP COUNTER B REGISTERS
    //-------------------------
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT) 
       1'b0:  begin
          CNTR_B_MAX_WIRE          = 2'b00;
          CNTR_B_LOOP_POINTER_WIRE                = 5'b11010;
          CNTR_B_LOOP1_WIRE[4]     = 1'b0;
          CNTR_B_LOOP1_WIRE[3]     = 1'b0;
          CNTR_B_LOOP1_WIRE[2]     = 1'b0;
          CNTR_B_LOOP1_WIRE[1]     = 1'b0;
          CNTR_B_LOOP1_WIRE[0]     = 1'b0;
          CNTR_B_LOOP2_WIRE[4]     = 1'b0;
          CNTR_B_LOOP2_WIRE[3]     = 1'b0;
          CNTR_B_LOOP2_WIRE[2]     = 1'b0;
          CNTR_B_LOOP2_WIRE[1]     = 1'b0;
          CNTR_B_LOOP2_WIRE[0]     = 1'b0;
          CNTR_B_LOOP3_WIRE[4]     = 1'b0;
          CNTR_B_LOOP3_WIRE[3]     = 1'b0;
          CNTR_B_LOOP3_WIRE[2]     = 1'b0;
          CNTR_B_LOOP3_WIRE[1]     = 1'b0;
          CNTR_B_LOOP3_WIRE[0]     = 1'b0;
          end  
       1'b1:  begin
          CNTR_B_MAX_WIRE          = 2'b01;
          CNTR_B_LOOP_POINTER_WIRE                = 5'b10001;
          CNTR_B_LOOP1_WIRE[4]     = 1'b1;
          CNTR_B_LOOP1_WIRE[3]     = 1'b1;
          CNTR_B_LOOP1_WIRE[2]     = 1'b0;
          CNTR_B_LOOP1_WIRE[1]     = 1'b0;
          CNTR_B_LOOP1_WIRE[0]     = 1'b0;
          CNTR_B_LOOP2_WIRE[4]     = 1'b0;
          CNTR_B_LOOP2_WIRE[3]     = 1'b0;
          CNTR_B_LOOP2_WIRE[2]     = 1'b0;
          CNTR_B_LOOP2_WIRE[1]     = 1'b0;
          CNTR_B_LOOP2_WIRE[0]     = 1'b0;
          CNTR_B_LOOP3_WIRE[4]     = 1'b0;
          CNTR_B_LOOP3_WIRE[3]     = 1'b0;
          CNTR_B_LOOP3_WIRE[2]     = 1'b0;
          CNTR_B_LOOP3_WIRE[1]     = 1'b0;
          CNTR_B_LOOP3_WIRE[0]     = 1'b0;
          end  
       endcase
    
    end
    assign CNTR_B_MAX_REG          = CNTR_B_MAX_WIRE;
    assign CNTR_B_LOOP_POINTER_REG                = CNTR_B_LOOP_POINTER_WIRE;  
    assign CNTR_B_LOOP1_REG[4]     = CNTR_B_LOOP1_WIRE[4]; 
    assign CNTR_B_LOOP1_REG[3]     = CNTR_B_LOOP1_WIRE[3];
    assign CNTR_B_LOOP1_REG[2]     = CNTR_B_LOOP1_WIRE[2]; 
    assign CNTR_B_LOOP1_REG[1]     = CNTR_B_LOOP1_WIRE[1];
    assign CNTR_B_LOOP1_REG[0]     = CNTR_B_LOOP1_WIRE[0];
    assign CNTR_B_LOOP2_REG[4]     = CNTR_B_LOOP2_WIRE[4]; 
    assign CNTR_B_LOOP2_REG[3]     = CNTR_B_LOOP2_WIRE[3];
    assign CNTR_B_LOOP2_REG[2]     = CNTR_B_LOOP2_WIRE[2]; 
    assign CNTR_B_LOOP2_REG[1]     = CNTR_B_LOOP2_WIRE[1];
    assign CNTR_B_LOOP2_REG[0]     = CNTR_B_LOOP2_WIRE[0];
    assign CNTR_B_LOOP3_REG[4]     = CNTR_B_LOOP3_WIRE[4]; 
    assign CNTR_B_LOOP3_REG[3]     = CNTR_B_LOOP3_WIRE[3];
    assign CNTR_B_LOOP3_REG[2]     = CNTR_B_LOOP3_WIRE[2]; 
    assign CNTR_B_LOOP3_REG[1]     = CNTR_B_LOOP3_WIRE[1];
    assign CNTR_B_LOOP3_REG[0]     = CNTR_B_LOOP3_WIRE[0];

    //-----------------------------
    // Increment Counter A function
    //-----------------------------
    function automatic [1:0] INC_FUNCTION_FOR_CNTR_A;
    input            [1:0] COUNT;
    reg              TOGGLE;
       begin
          INC_FUNCTION_FOR_CNTR_A[0]               = ~COUNT[0];
          TOGGLE     = 1;
          for (integer i=1; i<=1; i=i+1) begin
             TOGGLE                 = COUNT[i-1] & TOGGLE;
             INC_FUNCTION_FOR_CNTR_A[i]            = COUNT[i] ^ TOGGLE;
          end
       end
    endfunction

    //-----------------------------
    // Increment Counter B function
    //-----------------------------
    function automatic [1:0] INC_FUNCTION_FOR_CNTR_B;
    input            [1:0] COUNT;
    reg              TOGGLE;
       begin
          INC_FUNCTION_FOR_CNTR_B[0]               = ~COUNT[0];
          TOGGLE     = 1;
          for (integer i=1; i<=1; i=i+1) begin
             TOGGLE                 = COUNT[i-1] & TOGGLE;
             INC_FUNCTION_FOR_CNTR_B[i]            = COUNT[i] ^ TOGGLE;
          end
       end
    endfunction
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_repeat_loop_cntrl
 
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_delaycounter
 
     Description :  This module contains the general delay counter.
 
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_delaycounter (
  input wire BIST_CLK,
  input wire BIST_HOLD,
  input wire BIST_ASYNC_RESETN,
  input wire BIST_SHIFT_SHORT,
  input wire RESET_REG_DEFAULT_MODE,
  input wire RESET_REG_SETUP1,
  input wire BIST_ALGO_SEL_CNT,
  input wire DELAYCOUNTER_CMD,
  input wire LAST_TICK,
  input wire BIST_RUN,
  input wire SI,
  input wire MBISTPG_ALGO_SEL,
  input wire MEM_ARRAY_DUMP_MODE,
  input wire ESOE_RESET,
  output wire DELAYCOUNTER_ENDCOUNT_TRIGGER,
  output wire SO
);
 
    wire             DELAYCOUNTER_ENABLE;
    wire             MBISTPG_ALGO_SEL_INT;
    wire             ENABLE_CNT_CMD;
    wire             CNT_ENABLE;
 
    wire             RESET_DELAYCOUNTER;
  
    wire   [7:0]     COMPARE_COUNTER_DATA;
 
    reg    [7:0]     DELAYCOUNTER_CNT;
    reg    [7:0]     DELAYCOUNTER_REG;
    wire             DELAYCOUNTER_REG_RST;
    reg    [7:0]     DELAYCOUNTER_WIRE;
 

    //---------
    //Main code
    //---------
    assign SO        = DELAYCOUNTER_REG[7];
 
    assign DELAYCOUNTER_ENDCOUNT_TRIGGER           = (DELAYCOUNTER_CNT == COMPARE_COUNTER_DATA);
 
    assign DELAYCOUNTER_ENABLE      = (DELAYCOUNTER_CMD == 1'b1);
 
    assign ENABLE_CNT_CMD           = ((~BIST_HOLD) & BIST_RUN & DELAYCOUNTER_ENABLE);
 
    assign RESET_DELAYCOUNTER       = (CNT_ENABLE & DELAYCOUNTER_ENDCOUNT_TRIGGER) | (RESET_REG_SETUP1 & (~MEM_ARRAY_DUMP_MODE)) | ESOE_RESET;
 
    assign CNT_ENABLE               = LAST_TICK & ENABLE_CNT_CMD;
 
    assign COMPARE_COUNTER_DATA     = DELAYCOUNTER_REG;
 
 
    assign MBISTPG_ALGO_SEL_INT  =   MBISTPG_ALGO_SEL ;    
    //
    //  DELAY COUNTER                                                   
    //
    // synopsys sync_set_reset "RESET_DELAYCOUNTER"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            DELAYCOUNTER_CNT        <= 8'b00000000; 
        else
        if (RESET_DELAYCOUNTER)
            DELAYCOUNTER_CNT        <= 8'b00000000;
        else
        if (BIST_SHIFT_SHORT)
            DELAYCOUNTER_CNT        <= {DELAYCOUNTER_CNT[6:0], SI};
        else
        if (CNT_ENABLE)
            DELAYCOUNTER_CNT        <= NEXT_DELAYCOUNTER_CNT(DELAYCOUNTER_CNT);
    end
    //
    //  DELAY COUNTER END COUNT                                          
    //
    always_comb begin
        case (MBISTPG_ALGO_SEL_INT) 
            1'b0: DELAYCOUNTER_WIRE                = 8'b11111111; // Algorithm: INTELLVPMOVIFX
            1'b1: DELAYCOUNTER_WIRE                = 8'b11111111; // Algorithm: SMARCHCHKBCI
        endcase
    end

    assign DELAYCOUNTER_REG_RST     = RESET_REG_DEFAULT_MODE & (~MEM_ARRAY_DUMP_MODE);
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            DELAYCOUNTER_REG        <= 8'b00000000;
        else
        if (DELAYCOUNTER_REG_RST)
            DELAYCOUNTER_REG        <= DELAYCOUNTER_WIRE;       
        else
        if (BIST_SHIFT_SHORT)
            DELAYCOUNTER_REG        <= {DELAYCOUNTER_REG[6:0], DELAYCOUNTER_CNT[7]};
    end

    //-------------------
    // Increment function
    //-------------------
    function automatic [7:0] NEXT_DELAYCOUNTER_CNT;
    input [7:0]      DELAYCOUNTER_CNT;
    reg              TOGGLE;
       begin
          NEXT_DELAYCOUNTER_CNT[0]                 = ~DELAYCOUNTER_CNT[0];
          TOGGLE = 1;
          for (integer i=1; i<=7; i=i+1) begin
             TOGGLE                 = DELAYCOUNTER_CNT[i-1] & TOGGLE;
             NEXT_DELAYCOUNTER_CNT[i]              = DELAYCOUNTER_CNT[i] ^ TOGGLE;
          end
       end
    endfunction
    
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_delaycounter
 
/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_controller_data_gen
 
     Description :  This module contains the data generator block.
 
---------------------------------------------------------------------------- */
 
module firebird7_in_gate1_tessent_mbist_c1_controller_data_gen (
  input wire BIST_CLK,
  input wire BIST_HOLD,
  input wire BIST_ASYNC_RESETN,
  input wire BIST_SWITCH_ADDRESS_EN,
  input wire RESET_REG_DEFAULT_MODE,
  input wire [3:0] WDATA_CMD,
  input wire [3:0] EDATA_CMD,
  input wire [7:0] ROW_ADDRESS,
  input wire [2:0] COLUMN_ADDRESS,
  input wire LAST_TICK,
  input wire LAST_TICK_PIPELINED,
  input wire [1:0] OPSET_SELECT_DECODED,
  input wire BIST_RUN,
  input wire BIST_SHIFT_SHORT,
  input wire SI,
  input wire BIST_ALGO_SEL_CNT,
  input wire MBISTPG_ALGO_SEL,
  output wire [3:0] WRITE_DATA,
  output wire [3:0] EXPECT_DATA,
  input wire BIST_WRITEENABLE,
  output wire SO
);
 
    wire             MBISTPG_ALGO_SEL_INT;
    wire   [3:0]     MEMORY_CONTENT;
    reg    [3:0]     WRITE_DATA_INT;
    reg    [3:0]     EXPECT_DATA_INT;
    wire   [3:0]     EDATA_CMD_SELECTED;
    wire   [3:0]     EDATA_CMD_SELECTED_INT;
    reg    [3:0]     EDATA_CMD_SELECTED_SHADOW;
wire BIST_SWITCH_ADDRESS_EN_PIPELINED_INT;       
reg BIST_SWITCH_ADDRESS_EN_PIPELINED;
    wire   [3:0]     WDATA_CMD_SELECTED;
 
    wire             WDATA_ROT;
    wire             WDATA_INV_FDBK;
 
    wire             EDATA_ROT;
    wire             EDATA_INV_FDBK;
 
    wire             WDATA_SHIFT;
    wire             EDATA_SHIFT;
 
    wire             WDATA_SELECT_ZEROS_REG;
    wire   [3:0]     WDATA_REG_SELECTED;
    wire             WDATA_INVERT;
 
    wire             EDATA_SELECT_ZEROS_REG;
    wire   [3:0]     EDATA_REG_SELECTED;
    wire             EDATA_INVERT;
    wire             EDATA_SI;
    wire             WDATA_SI;
    wire   [7:0]     X_ADDR_BIT_SEL_DECODED;
    wire   [2:0]     Y_ADDR_BIT_SEL_DECODED;
 
    wire             WDATA_EN_ADDR_BIT_INVERSION;
    wire             EDATA_EN_ADDR_BIT_INVERSION;
    wire             EN_ADDR_BIT_INVERSION_TO_BUF;
    wire             EN_ADDR_BIT_INVERSION;
 
    reg              EN_ADDR_BIT_INVERSION_PIPE ;
    reg    [3:0]     EDATA_CMD_PIPE_0;
    reg    [3:0]     EDATA_REG;
    reg    [3:0]     WDATA_REG;
    reg              X_ADDR_BIT_SEL_REG;
    reg              Y_ADDR_BIT_SEL_REG;
    reg              X_ADDR_BIT_SEL_WIRE;
    reg              Y_ADDR_BIT_SEL_WIRE;

    assign SO        = Y_ADDR_BIT_SEL_REG;
    assign MBISTPG_ALGO_SEL_INT  = MBISTPG_ALGO_SEL ;    

    //
    // ExpectDataCmd                         Decode
    // ----------------                      -------
    // DataReg                               4'b0000
    // InverseDataReg                        4'b0001
    // Zero                                  4'b0010
    // One                                   4'b0011
    // DataReg_Rotate                        4'b0100
    // InverseDataReg_Rotate                 4'b0101
    // DataReg_RotateWithInvert              4'b0110
    // InverseDataReg_RotateWithInvert       4'b0111
    // Set_DataReg                           4'b1000
    // Reset_DataReg                         4'b1001
    // Memory_Content                        4'b1010
    //

//------------------------
//-- Write Data Command --
//------------------------
    assign WDATA_CMD_SELECTED = WDATA_CMD;

//-------------------------------------------
//-- Expect Data for SwitchAddressRegister --
//-------------------------------------------
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) 
          EDATA_CMD_SELECTED_SHADOW <= 0;
       else
       if ((~BIST_SWITCH_ADDRESS_EN_PIPELINED_INT) & LAST_TICK_PIPELINED)  
          EDATA_CMD_SELECTED_SHADOW <= EDATA_CMD_SELECTED;
    end
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
          BIST_SWITCH_ADDRESS_EN_PIPELINED <= 1'b0;
        else       
        BIST_SWITCH_ADDRESS_EN_PIPELINED <= BIST_SWITCH_ADDRESS_EN;
    end
    assign BIST_SWITCH_ADDRESS_EN_PIPELINED_INT = 
                               (BIST_SWITCH_ADDRESS_EN_PIPELINED                & OPSET_SELECT_DECODED[0]) |
                               (BIST_SWITCH_ADDRESS_EN           & OPSET_SELECT_DECODED[1]);
    assign EDATA_CMD_SELECTED_INT = BIST_SWITCH_ADDRESS_EN_PIPELINED_INT ? EDATA_CMD_SELECTED_SHADOW : EDATA_CMD_SELECTED;

//-------------------------
//-- Expect Data Command --
//-------------------------
    assign EDATA_CMD_SELECTED = 
                               (EDATA_CMD_PIPE_0 & {4{OPSET_SELECT_DECODED[0]}})                |
                               (EDATA_CMD & {4{OPSET_SELECT_DECODED[1]}})        ;
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN) begin
        EDATA_CMD_PIPE_0           <= 4'b0000;
       end
        else
       if (~BIST_HOLD) begin
             EDATA_CMD_PIPE_0      <= EDATA_CMD;
       end
    end
 

//-------------------------
//-- Write Data Register --
//-------------------------
    assign WDATA_ROT                = (WDATA_CMD_SELECTED == 4'b0100) |
                                      (WDATA_CMD_SELECTED == 4'b0101) |
                                      (WDATA_CMD_SELECTED == 4'b0110) |
                                      (WDATA_CMD_SELECTED == 4'b0111) ;
 
    assign WDATA_INV_FDBK           = (WDATA_CMD_SELECTED == 4'b0110) |
                                      (WDATA_CMD_SELECTED == 4'b0111) ;
 
    assign WDATA_SHIFT              = (BIST_SHIFT_SHORT) | ( LAST_TICK & WDATA_ROT & BIST_RUN);
    
    assign WDATA_SI                 = (BIST_SHIFT_SHORT) ? SI :
                                                         WDATA_ROT & (WDATA_INV_FDBK ^ WDATA_REG[3]);
 
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            WDATA_REG               <= 4'b0000;
        else
        if (RESET_REG_DEFAULT_MODE & BIST_ALGO_SEL_CNT)
            case (MBISTPG_ALGO_SEL_INT) 
            1'b0: WDATA_REG         <= 4'b0000; // Algorithm: INTELLVPMOVIFX
            1'b1: WDATA_REG         <= 4'b1010; // Algorithm: SMARCHCHKBCI
            endcase
        else
        if (WDATA_SHIFT)
            WDATA_REG               <= {WDATA_REG[2:0], WDATA_SI};    
    end

//--------------------------
//-- Expect Data Register --
//--------------------------
    assign EDATA_ROT                = (EDATA_CMD_SELECTED == 4'b0100) |
                                      (EDATA_CMD_SELECTED == 4'b0101) |
                                      (EDATA_CMD_SELECTED == 4'b0110) |
                                      (EDATA_CMD_SELECTED == 4'b0111) ;
 
    assign EDATA_INV_FDBK           = (EDATA_CMD_SELECTED == 4'b0110) |
                                      (EDATA_CMD_SELECTED == 4'b0111) ;
 
    assign EDATA_SHIFT              = (BIST_SHIFT_SHORT) | ( LAST_TICK_PIPELINED & EDATA_ROT & BIST_RUN);
    
    assign EDATA_SI                 = (BIST_SHIFT_SHORT) ? WDATA_REG[3] :
                                                        EDATA_ROT & (EDATA_INV_FDBK ^ EDATA_REG[3]);
    
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN)
            EDATA_REG               <= 4'b0000;
        else
        if (RESET_REG_DEFAULT_MODE & BIST_ALGO_SEL_CNT)
            case (MBISTPG_ALGO_SEL_INT) 
            1'b0: EDATA_REG         <= 4'b0000; // Algorithm: INTELLVPMOVIFX
            1'b1: EDATA_REG         <= 4'b1010; // Algorithm: SMARCHCHKBCI
            endcase
        else
        if (EDATA_SHIFT)
            EDATA_REG               <= {EDATA_REG[2:0], EDATA_SI};
    end

//----------------------------------
//-- Write Data for MemoryContent --
//----------------------------------
    assign MEMORY_CONTENT = 4'b0000; // BitSliceWidth: 1

//---------------------------
//-- Write Data Generation --
//---------------------------
    always_comb begin
        case (WDATA_CMD_SELECTED)
        4'b0001,
        4'b0101,
        4'b0111:     WRITE_DATA_INT = (~WDATA_REG) ^ {4{ WDATA_EN_ADDR_BIT_INVERSION }};
        4'b0011:     WRITE_DATA_INT = (~4'b0000) ^ {4{ WDATA_EN_ADDR_BIT_INVERSION }};
        4'b0010:     WRITE_DATA_INT = 4'b0000 ^ {4{ WDATA_EN_ADDR_BIT_INVERSION }};
        4'b1000:     WRITE_DATA_INT = ~(4'b0000);
        4'b1001:     WRITE_DATA_INT = 4'b0000;
        4'b1010:     WRITE_DATA_INT = MEMORY_CONTENT;
        default:     WRITE_DATA_INT = WDATA_REG ^ {4{ WDATA_EN_ADDR_BIT_INVERSION }};
        endcase
    end
    assign WRITE_DATA = WRITE_DATA_INT;

//----------------------------
//-- Expect Data Generation --
//----------------------------
    always_comb begin
        case (EDATA_CMD_SELECTED_INT)
        4'b0001,
        4'b0101,
        4'b0111:     EXPECT_DATA_INT = (~EDATA_REG) ^ {4{ EDATA_EN_ADDR_BIT_INVERSION }};
        4'b0011:     EXPECT_DATA_INT = (~4'b0000) ^ {4{ EDATA_EN_ADDR_BIT_INVERSION }};
        4'b0010:     EXPECT_DATA_INT = 4'b0000 ^ {4{ EDATA_EN_ADDR_BIT_INVERSION }};
        4'b1000:     EXPECT_DATA_INT = ~(4'b0000);
        4'b1001:     EXPECT_DATA_INT = 4'b0000;
        4'b1010:     EXPECT_DATA_INT = MEMORY_CONTENT;
        default:     EXPECT_DATA_INT = EDATA_REG ^ {4{ EDATA_EN_ADDR_BIT_INVERSION }};
        endcase
    end
    assign EXPECT_DATA = EXPECT_DATA_INT;

 
    // Decode address bit for inversion
    assign X_ADDR_BIT_SEL_DECODED[7]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[6]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[5]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[4]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[3]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[2]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[1]              = 1'b0; 
    assign X_ADDR_BIT_SEL_DECODED[0]              = (X_ADDR_BIT_SEL_REG == 1'b1); 
 
    assign Y_ADDR_BIT_SEL_DECODED[2]              = 1'b0;
    assign Y_ADDR_BIT_SEL_DECODED[1]              = 1'b0;
    assign Y_ADDR_BIT_SEL_DECODED[0]              = (Y_ADDR_BIT_SEL_REG == 1'b1);
 
    // Address bit inversion mask
    assign EN_ADDR_BIT_INVERSION_TO_BUF           = (|(X_ADDR_BIT_SEL_DECODED & ROW_ADDRESS)) ^  (|(Y_ADDR_BIT_SEL_DECODED & COLUMN_ADDRESS));   
   //
   // An MCP can be declared through the EN_ADDR_BIT_INVERSION persistent buffer 
   // ONLY if no operation is writing in the first TICK.
   // If any operation writes in the first TICK, this creates an SCP path 
   // through this buffer.
   //
    i0sbfn000ab1n02x5 tessent_persistent_cell_EN_ADDR_BIT_INVERSION (
        .a           (EN_ADDR_BIT_INVERSION_TO_BUF),
        .o           (EN_ADDR_BIT_INVERSION)
    );    
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
        EN_ADDR_BIT_INVERSION_PIPE <= 1'b0;
        else
       if (~BIST_HOLD) begin
             EN_ADDR_BIT_INVERSION_PIPE <= EN_ADDR_BIT_INVERSION;
       end
    end

//--------------------------
//-- Write Data Inversion --
//--------------------------
    assign WDATA_EN_ADDR_BIT_INVERSION = EN_ADDR_BIT_INVERSION;

//---------------------------
//-- Expect Data Inversion --
//---------------------------
    assign EDATA_EN_ADDR_BIT_INVERSION = 
                          (EN_ADDR_BIT_INVERSION_PIPE            & OPSET_SELECT_DECODED[0])     |
                          (EN_ADDR_BIT_INVERSION  & OPSET_SELECT_DECODED[1])     ;
 
    // Select row bit to invert
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT) 
       1'b0:         X_ADDR_BIT_SEL_WIRE = 1'b0; // Algorithm: INTELLVPMOVIFX
       1'b1:         X_ADDR_BIT_SEL_WIRE = 1'b1; // Algorithm: SMARCHCHKBCI
       endcase
    
    end
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
             X_ADDR_BIT_SEL_REG    <= 1'b0;
        else
        if (RESET_REG_DEFAULT_MODE & BIST_ALGO_SEL_CNT) begin
           X_ADDR_BIT_SEL_REG      <= X_ADDR_BIT_SEL_WIRE;     
        end
        else begin
            if (BIST_SHIFT_SHORT) begin
             X_ADDR_BIT_SEL_REG    <= {EDATA_REG[3]};
            end        
        end    
    end
 
    // Select column bit to invert
    always_comb begin
       case (MBISTPG_ALGO_SEL_INT) 
       1'b0:         Y_ADDR_BIT_SEL_WIRE = 1'b0; // Algorithm: INTELLVPMOVIFX
       1'b1:         Y_ADDR_BIT_SEL_WIRE = 1'b0; // Algorithm: SMARCHCHKBCI
       endcase
    
    end
    
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
            Y_ADDR_BIT_SEL_REG     <= 1'b0;
       else
        if (RESET_REG_DEFAULT_MODE & BIST_ALGO_SEL_CNT) begin
           Y_ADDR_BIT_SEL_REG      <= Y_ADDR_BIT_SEL_WIRE;          
        end   
        else begin
            if (BIST_SHIFT_SHORT) begin
             Y_ADDR_BIT_SEL_REG    <= {X_ADDR_BIT_SEL_REG};
            end
        end    
    end
 
endmodule // firebird7_in_gate1_tessent_mbist_c1_controller_data_gen
 
 
 
 
 
