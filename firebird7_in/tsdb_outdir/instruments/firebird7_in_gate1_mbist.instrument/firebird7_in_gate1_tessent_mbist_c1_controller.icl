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
-       Created on: Mon Oct 23 12:52:11 PDT 2023                                 -
----------------------------------------------------------------------------------


*/
     
 // ============================================================================
// == Description     : ICL description for firebird7_in_LVISION_MBISTPG_CTRL
// == Tool Name       : membistipCommonGenerate
// == Tool Version    : 2022.4      Tue Nov 29 21:19:37 GMT 2022
// ============================================================================
Module firebird7_in_gate1_tessent_mbist_c1_controller {
  ClockPort     BIST_CLK;
  DataInPort    MBISTPG_EN;
  DataInPort    LV_TM { Attribute connection_rule_option = "allowed_tied_low"; }
  DataInPort           MEM_BYPASS_EN {
    Attribute connection_rule_option = "allowed_tied_low";}
  DataInPort           MCP_BOUNDING_EN {
    Attribute connection_rule_option = "allowed_tied_low";}
  DataInPort    MBIST_RA_PRSRV_FUSE_VAL {RefEnum OnOff;}
  DataInPort    MBISTPG_BIRA_EN {RefEnum OnOff;}
  DataInPort    CHECK_REPAIR_NEEDED {RefEnum OnOff;}
  DataInPort    MBISTPG_ASYNC_RESETN {RefEnum AsyncResetN;}
  DataInPort    MBISTPG_DIAG_EN;
  DataInPort    BIST_SETUP2;
  DataInPort    BIST_SETUP[1:0];
  DataInPort    MBISTPG_REDUCED_ADDR_CNT_EN {RefEnum OnOff;}
  DataInPort    MBISTPG_MEM_RST {RefEnum OnOff;}
  DataInPort    MBISTPG_TESTDATA_SELECT {RefEnum OnOff;}
  DataInPort    MBISTPG_MEM_ARRAY_DUMP_MODE {RefEnum OnOff;}
  DataInPort    FL_CNT_MODE[1:0];
  DataInPort    MBISTPG_ALGO_MODE[1:0];
  DataOutPort   MBISTPG_GO   {RefEnum PassFail;}
  DataOutPort   MBISTPG_DONE {RefEnum PassFail;}
  TCKPort       TCK;                       
  ScanInPort    BIST_SI;
  ScanOutPort   MBISTPG_SO {Source BIST_SO_INT;}
  ShiftEnPort   BIST_HOLD;
  ToShiftEnPort  BIST_SHIFT_COLLAR {Attribute connection_rule_option = "allowed_no_destination";}
  DataOutPort   BIST_COLLAR_EN0 {Attribute tessent_memory_alias = "m1";}
  ScanOutPort   MEM0_BIST_COLLAR_SI { Source MEM0_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM0_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN1 {Attribute tessent_memory_alias = "m2";}
  ScanOutPort   MEM1_BIST_COLLAR_SI { Source MEM1_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM1_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN2 {Attribute tessent_memory_alias = "m3";}
  ScanOutPort   MEM2_BIST_COLLAR_SI { Source MEM2_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM2_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN3 {Attribute tessent_memory_alias = "m4";}
  ScanOutPort   MEM3_BIST_COLLAR_SI { Source MEM3_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM3_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN4 {Attribute tessent_memory_alias = "m5";}
  ScanOutPort   MEM4_BIST_COLLAR_SI { Source MEM4_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM4_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN5 {Attribute tessent_memory_alias = "m6";}
  ScanOutPort   MEM5_BIST_COLLAR_SI { Source MEM5_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM5_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN6 {Attribute tessent_memory_alias = "m7";}
  ScanOutPort   MEM6_BIST_COLLAR_SI { Source MEM6_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM6_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN7 {Attribute tessent_memory_alias = "m8";}
  ScanOutPort   MEM7_BIST_COLLAR_SI { Source MEM7_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM7_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN8 {Attribute tessent_memory_alias = "m9";}
  ScanOutPort   MEM8_BIST_COLLAR_SI { Source MEM8_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM8_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN9 {Attribute tessent_memory_alias = "m10";}
  ScanOutPort   MEM9_BIST_COLLAR_SI { Source MEM9_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM9_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN10 {Attribute tessent_memory_alias = "m11";}
  ScanOutPort   MEM10_BIST_COLLAR_SI { Source MEM10_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM10_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN11 {Attribute tessent_memory_alias = "m12";}
  ScanOutPort   MEM11_BIST_COLLAR_SI { Source MEM11_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM11_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN12 {Attribute tessent_memory_alias = "m13";}
  ScanOutPort   MEM12_BIST_COLLAR_SI { Source MEM12_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM12_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN13 {Attribute tessent_memory_alias = "m14";}
  ScanOutPort   MEM13_BIST_COLLAR_SI { Source MEM13_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM13_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN14 {Attribute tessent_memory_alias = "m15";}
  ScanOutPort   MEM14_BIST_COLLAR_SI { Source MEM14_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM14_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN15 {Attribute tessent_memory_alias = "m16";}
  ScanOutPort   MEM15_BIST_COLLAR_SI { Source MEM15_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM15_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN16 {Attribute tessent_memory_alias = "m17";}
  ScanOutPort   MEM16_BIST_COLLAR_SI { Source MEM16_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM16_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN17 {Attribute tessent_memory_alias = "m18";}
  ScanOutPort   MEM17_BIST_COLLAR_SI { Source MEM17_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM17_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN18 {Attribute tessent_memory_alias = "m19";}
  ScanOutPort   MEM18_BIST_COLLAR_SI { Source MEM18_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM18_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN19 {Attribute tessent_memory_alias = "m20";}
  ScanOutPort   MEM19_BIST_COLLAR_SI { Source MEM19_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM19_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN20 {Attribute tessent_memory_alias = "m21";}
  ScanOutPort   MEM20_BIST_COLLAR_SI { Source MEM20_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM20_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN21 {Attribute tessent_memory_alias = "m22";}
  ScanOutPort   MEM21_BIST_COLLAR_SI { Source MEM21_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM21_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN22 {Attribute tessent_memory_alias = "m23";}
  ScanOutPort   MEM22_BIST_COLLAR_SI { Source MEM22_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM22_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN23 {Attribute tessent_memory_alias = "m24";}
  ScanOutPort   MEM23_BIST_COLLAR_SI { Source MEM23_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM23_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN24 {Attribute tessent_memory_alias = "m25";}
  ScanOutPort   MEM24_BIST_COLLAR_SI { Source MEM24_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM24_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN25 {Attribute tessent_memory_alias = "m26";}
  ScanOutPort   MEM25_BIST_COLLAR_SI { Source MEM25_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM25_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN26 {Attribute tessent_memory_alias = "m27";}
  ScanOutPort   MEM26_BIST_COLLAR_SI { Source MEM26_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM26_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN27 {Attribute tessent_memory_alias = "m28";}
  ScanOutPort   MEM27_BIST_COLLAR_SI { Source MEM27_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM27_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN28 {Attribute tessent_memory_alias = "m29";}
  ScanOutPort   MEM28_BIST_COLLAR_SI { Source MEM28_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM28_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN29 {Attribute tessent_memory_alias = "m30";}
  ScanOutPort   MEM29_BIST_COLLAR_SI { Source MEM29_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM29_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN30 {Attribute tessent_memory_alias = "m31";}
  ScanOutPort   MEM30_BIST_COLLAR_SI { Source MEM30_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM30_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN31 {Attribute tessent_memory_alias = "m32";}
  ScanOutPort   MEM31_BIST_COLLAR_SI { Source MEM31_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM31_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN32 {Attribute tessent_memory_alias = "m33";}
  ScanOutPort   MEM32_BIST_COLLAR_SI { Source MEM32_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM32_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN33 {Attribute tessent_memory_alias = "m34";}
  ScanOutPort   MEM33_BIST_COLLAR_SI { Source MEM33_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM33_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN34 {Attribute tessent_memory_alias = "m35";}
  ScanOutPort   MEM34_BIST_COLLAR_SI { Source MEM34_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM34_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN35 {Attribute tessent_memory_alias = "m36";}
  ScanOutPort   MEM35_BIST_COLLAR_SI { Source MEM35_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM35_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN36 {Attribute tessent_memory_alias = "m37";}
  ScanOutPort   MEM36_BIST_COLLAR_SI { Source MEM36_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM36_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN37 {Attribute tessent_memory_alias = "m38";}
  ScanOutPort   MEM37_BIST_COLLAR_SI { Source MEM37_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM37_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN38 {Attribute tessent_memory_alias = "m39";}
  ScanOutPort   MEM38_BIST_COLLAR_SI { Source MEM38_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM38_BIST_COLLAR_SO;
  DataOutPort   BIST_COLLAR_EN39 {Attribute tessent_memory_alias = "m40";}
  ScanOutPort   MEM39_BIST_COLLAR_SI { Source MEM39_BIST_COLLAR_SI_INT;}
  ScanInPort    MEM39_BIST_COLLAR_SO;
  ScanInterface Client {
    Port BIST_SI;
    Port MBISTPG_SO;
    Port BIST_HOLD;
  }
  ScanInterface MEM0_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM0_BIST_COLLAR_SI;
    Port MEM0_BIST_COLLAR_SO;
  }
  ScanInterface MEM1_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM1_BIST_COLLAR_SI;
    Port MEM1_BIST_COLLAR_SO;
  }
  ScanInterface MEM2_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM2_BIST_COLLAR_SI;
    Port MEM2_BIST_COLLAR_SO;
  }
  ScanInterface MEM3_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM3_BIST_COLLAR_SI;
    Port MEM3_BIST_COLLAR_SO;
  }
  ScanInterface MEM4_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM4_BIST_COLLAR_SI;
    Port MEM4_BIST_COLLAR_SO;
  }
  ScanInterface MEM5_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM5_BIST_COLLAR_SI;
    Port MEM5_BIST_COLLAR_SO;
  }
  ScanInterface MEM6_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM6_BIST_COLLAR_SI;
    Port MEM6_BIST_COLLAR_SO;
  }
  ScanInterface MEM7_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM7_BIST_COLLAR_SI;
    Port MEM7_BIST_COLLAR_SO;
  }
  ScanInterface MEM8_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM8_BIST_COLLAR_SI;
    Port MEM8_BIST_COLLAR_SO;
  }
  ScanInterface MEM9_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM9_BIST_COLLAR_SI;
    Port MEM9_BIST_COLLAR_SO;
  }
  ScanInterface MEM10_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM10_BIST_COLLAR_SI;
    Port MEM10_BIST_COLLAR_SO;
  }
  ScanInterface MEM11_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM11_BIST_COLLAR_SI;
    Port MEM11_BIST_COLLAR_SO;
  }
  ScanInterface MEM12_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM12_BIST_COLLAR_SI;
    Port MEM12_BIST_COLLAR_SO;
  }
  ScanInterface MEM13_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM13_BIST_COLLAR_SI;
    Port MEM13_BIST_COLLAR_SO;
  }
  ScanInterface MEM14_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM14_BIST_COLLAR_SI;
    Port MEM14_BIST_COLLAR_SO;
  }
  ScanInterface MEM15_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM15_BIST_COLLAR_SI;
    Port MEM15_BIST_COLLAR_SO;
  }
  ScanInterface MEM16_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM16_BIST_COLLAR_SI;
    Port MEM16_BIST_COLLAR_SO;
  }
  ScanInterface MEM17_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM17_BIST_COLLAR_SI;
    Port MEM17_BIST_COLLAR_SO;
  }
  ScanInterface MEM18_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM18_BIST_COLLAR_SI;
    Port MEM18_BIST_COLLAR_SO;
  }
  ScanInterface MEM19_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM19_BIST_COLLAR_SI;
    Port MEM19_BIST_COLLAR_SO;
  }
  ScanInterface MEM20_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM20_BIST_COLLAR_SI;
    Port MEM20_BIST_COLLAR_SO;
  }
  ScanInterface MEM21_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM21_BIST_COLLAR_SI;
    Port MEM21_BIST_COLLAR_SO;
  }
  ScanInterface MEM22_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM22_BIST_COLLAR_SI;
    Port MEM22_BIST_COLLAR_SO;
  }
  ScanInterface MEM23_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM23_BIST_COLLAR_SI;
    Port MEM23_BIST_COLLAR_SO;
  }
  ScanInterface MEM24_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM24_BIST_COLLAR_SI;
    Port MEM24_BIST_COLLAR_SO;
  }
  ScanInterface MEM25_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM25_BIST_COLLAR_SI;
    Port MEM25_BIST_COLLAR_SO;
  }
  ScanInterface MEM26_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM26_BIST_COLLAR_SI;
    Port MEM26_BIST_COLLAR_SO;
  }
  ScanInterface MEM27_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM27_BIST_COLLAR_SI;
    Port MEM27_BIST_COLLAR_SO;
  }
  ScanInterface MEM28_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM28_BIST_COLLAR_SI;
    Port MEM28_BIST_COLLAR_SO;
  }
  ScanInterface MEM29_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM29_BIST_COLLAR_SI;
    Port MEM29_BIST_COLLAR_SO;
  }
  ScanInterface MEM30_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM30_BIST_COLLAR_SI;
    Port MEM30_BIST_COLLAR_SO;
  }
  ScanInterface MEM31_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM31_BIST_COLLAR_SI;
    Port MEM31_BIST_COLLAR_SO;
  }
  ScanInterface MEM32_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM32_BIST_COLLAR_SI;
    Port MEM32_BIST_COLLAR_SO;
  }
  ScanInterface MEM33_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM33_BIST_COLLAR_SI;
    Port MEM33_BIST_COLLAR_SO;
  }
  ScanInterface MEM34_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM34_BIST_COLLAR_SI;
    Port MEM34_BIST_COLLAR_SO;
  }
  ScanInterface MEM35_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM35_BIST_COLLAR_SI;
    Port MEM35_BIST_COLLAR_SO;
  }
  ScanInterface MEM36_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM36_BIST_COLLAR_SI;
    Port MEM36_BIST_COLLAR_SO;
  }
  ScanInterface MEM37_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM37_BIST_COLLAR_SI;
    Port MEM37_BIST_COLLAR_SO;
  }
  ScanInterface MEM38_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM38_BIST_COLLAR_SI;
    Port MEM38_BIST_COLLAR_SO;
  }
  ScanInterface MEM39_INTERFACE { 
    Port BIST_SHIFT_COLLAR;
    Port MEM39_BIST_COLLAR_SI;
    Port MEM39_BIST_COLLAR_SO;
  }
  Alias        SETUP_MODE[2:0] = BIST_SETUP2,BIST_SETUP[1:0] { RefEnum SetupModes; }
  Alias        RUN_MODE[2:0]   = BIST_SETUP2,BIST_SETUP[1:0] { RefEnum RunModes; }
  Enum         PassFail {
                    Pass = 1'b1;
                    Fail = 1'b0;
                    Ignore = 1'bx;
               }
  Enum         AsyncResetN {
                    On = 1'b0;
                    Off = 1'b1;
               }
  Enum         SetupModes {
                    Short = 3'b000; 
                    Long  = 3'b001; 
                    Bira  = 3'b100;
               }
  Enum         OnOff {
                    On  = 1'b1;
                    Off = 1'b0;
               }
  Enum         RunModes   {
                    HWDefault   = 3'b010; 
                    RunTimeProg = 3'b011;
                    Idle        = 3'bx0x;
                    Off         = 3'bxxx;
               }
  LogicSignal  BIRA_SETUP  { MBISTPG_EN,SETUP_MODE[2:0] == 1'b1,3'b100;}
  LogicSignal  LONG_SETUP  { MBISTPG_EN,SETUP_MODE[2:0] == 1'b1,3'b001;}
  LogicSignal  SHORT_SETUP { MBISTPG_EN,SETUP_MODE[2:0] == 1'b1,3'b000;}
 
// [start] : LONG_SETUP / SHORT_SETUP chain registers {{{
  ScanRegister BIST_SI_Pipeline {
      ScanInSource   BIST_SI;
      ResetValue     1'b0;
  }
  ScanRegister DIAG_EN_REG[0:0] {
      ScanInSource   BIST_SI_Pipeline;
  }
  ScanRegister BIRA_EN_REG[0:0] {
      ScanInSource   DIAG_EN_REG[0];
  }
  ScanRegister PRIORITY_COLUMN_REG[0:0] {
      ScanInSource   BIRA_EN_REG[0];
  }
  ScanRegister CMP_EN_MASK_EN[0:0] {
      ScanInSource   PRIORITY_COLUMN_REG[0];
  }
  ScanRegister CMP_EN_PARITY[0:0] {
      CaptureSource   1'bx;
      ScanInSource   CMP_EN_MASK_EN[0];
  }
  ScanRegister MEM_SELECT_REG0[0:0] {
      ResetValue     1'd1;
      ScanInSource   CMP_EN_PARITY[0];
  }
  ScanRegister MEM_SELECT_REG1[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG0[0];
  }
  ScanRegister MEM_SELECT_REG2[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG1[0];
  }
  ScanRegister MEM_SELECT_REG3[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG2[0];
  }
  ScanRegister MEM_SELECT_REG4[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG3[0];
  }
  ScanRegister MEM_SELECT_REG5[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG4[0];
  }
  ScanRegister MEM_SELECT_REG6[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG5[0];
  }
  ScanRegister MEM_SELECT_REG7[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG6[0];
  }
  ScanRegister MEM_SELECT_REG8[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG7[0];
  }
  ScanRegister MEM_SELECT_REG9[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG8[0];
  }
  ScanRegister MEM_SELECT_REG10[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG9[0];
  }
  ScanRegister MEM_SELECT_REG11[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG10[0];
  }
  ScanRegister MEM_SELECT_REG12[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG11[0];
  }
  ScanRegister MEM_SELECT_REG13[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG12[0];
  }
  ScanRegister MEM_SELECT_REG14[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG13[0];
  }
  ScanRegister MEM_SELECT_REG15[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG14[0];
  }
  ScanRegister MEM_SELECT_REG16[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG15[0];
  }
  ScanRegister MEM_SELECT_REG17[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG16[0];
  }
  ScanRegister MEM_SELECT_REG18[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG17[0];
  }
  ScanRegister MEM_SELECT_REG19[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG18[0];
  }
  ScanRegister MEM_SELECT_REG20[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG19[0];
  }
  ScanRegister MEM_SELECT_REG21[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG20[0];
  }
  ScanRegister MEM_SELECT_REG22[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG21[0];
  }
  ScanRegister MEM_SELECT_REG23[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG22[0];
  }
  ScanRegister MEM_SELECT_REG24[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG23[0];
  }
  ScanRegister MEM_SELECT_REG25[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG24[0];
  }
  ScanRegister MEM_SELECT_REG26[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG25[0];
  }
  ScanRegister MEM_SELECT_REG27[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG26[0];
  }
  ScanRegister MEM_SELECT_REG28[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG27[0];
  }
  ScanRegister MEM_SELECT_REG29[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG28[0];
  }
  ScanRegister MEM_SELECT_REG30[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG29[0];
  }
  ScanRegister MEM_SELECT_REG31[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG30[0];
  }
  ScanRegister MEM_SELECT_REG32[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG31[0];
  }
  ScanRegister MEM_SELECT_REG33[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG32[0];
  }
  ScanRegister MEM_SELECT_REG34[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG33[0];
  }
  ScanRegister MEM_SELECT_REG35[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG34[0];
  }
  ScanRegister MEM_SELECT_REG36[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG35[0];
  }
  ScanRegister MEM_SELECT_REG37[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG36[0];
  }
  ScanRegister MEM_SELECT_REG38[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG37[0];
  }
  ScanRegister MEM_SELECT_REG39[0:0] {
      ResetValue     1'd1;
      ScanInSource   MEM_SELECT_REG38[0];
  }
  ScanRegister REDUCED_ADDR_CNT_EN_REG[0:0] {
      ScanInSource   MEM_SELECT_REG39[0];
      RefEnum        OnOff;
  }
  ScanRegister ALGO_SEL_REG[0:0] {
      ScanInSource   REDUCED_ADDR_CNT_EN_REG[0];
  }
  ScanRegister ALGO_SEL_CNT_REG[0:0] {
      ScanInSource   ALGO_SEL_REG[0];
      RefEnum        OnOff;
  }
  ScanRegister SELECT_COMMON_OPSET_REG[0:0] {
      ScanInSource   ALGO_SEL_CNT_REG[0];
      RefEnum        OnOff;
  }
  ScanRegister SELECT_COMMON_DATA_PAT_REG[0:0] {
      ScanInSource   SELECT_COMMON_OPSET_REG[0];
      RefEnum        OnOff;
  }
  ScanRegister MICROCODE_EN_REG[0:0] {
      ScanInSource   SELECT_COMMON_DATA_PAT_REG[0];
  }
  ScanRegister MEM_ARRAY_DUMP_MODE_R[0:0] {
      ScanInSource   MICROCODE_EN_REG[0];
  }
  ScanRegister INST_POINTER_REG_HW[0:4] {
      ScanInSource   MEM_ARRAY_DUMP_MODE_R[0];
  }
  Alias INST_POINTER_REG[4:0] = INST_POINTER_REG_HW[4:0];
  ScanRegister A_ADD_REG_Y_HW[0:2] {
      ScanInSource   INST_POINTER_REG_HW[4];
  }
  Alias A_ADD_REG_Y[2:0] = A_ADD_REG_Y_HW[2:0];
  ScanRegister A_ADD_REG_X_HW[0:7] {
      ScanInSource   A_ADD_REG_Y_HW[2];
  }
  Alias A_ADD_REG_X[7:0] = A_ADD_REG_X_HW[7:0];
  ScanRegister B_ADD_REG_Y_HW[0:2] {
      ScanInSource   A_ADD_REG_X_HW[7];
  }
  Alias B_ADD_REG_Y[2:0] = B_ADD_REG_Y_HW[2:0];
  ScanRegister B_ADD_REG_X_HW[0:7] {
      ScanInSource   B_ADD_REG_Y_HW[2];
  }
  Alias B_ADD_REG_X[7:0] = B_ADD_REG_X_HW[7:0];
  ScanRegister JCNT_HW[0:2] {
      ScanInSource   B_ADD_REG_X_HW[7];
  }
  Alias JCNT[2:0] = JCNT_HW[2:0];
  ScanRegister OPSET_SELECT_REG[0:0] {
      ScanInSource   JCNT_HW[2];
  }
  ScanRegister DELAYCOUNTER_CNT_HW[0:7] {
      ScanInSource   OPSET_SELECT_REG[0];
  }
  Alias DELAYCOUNTER_CNT[7:0] = DELAYCOUNTER_CNT_HW[7:0];
  ScanRegister DELAYCOUNTER_REG_HW[0:7] {
      ScanInSource   DELAYCOUNTER_CNT_HW[7];
  }
  Alias DELAYCOUNTER_REG[7:0] = DELAYCOUNTER_REG_HW[7:0];
  ScanRegister WDATA_REG_HW[0:3] {
      ScanInSource   DELAYCOUNTER_REG_HW[7];
  }
  Alias WDATA_REG[3:0] = WDATA_REG_HW[3:0];
  ScanRegister EDATA_REG_HW[0:3] {
      ScanInSource   WDATA_REG_HW[3];
  }
  Alias EDATA_REG[3:0] = EDATA_REG_HW[3:0];
  ScanRegister X_ADDR_BIT_SEL_REG[0:0] {
      ScanInSource   EDATA_REG_HW[3];
  }
  ScanRegister Y_ADDR_BIT_SEL_REG[0:0] {
      ScanInSource   X_ADDR_BIT_SEL_REG[0];
  }
  ScanRegister REPEATLOOP_A_CNTR_REG_HW[0:1] {
      ScanInSource   Y_ADDR_BIT_SEL_REG[0];
  }
  Alias REPEATLOOP_A_CNTR_REG[1:0] = REPEATLOOP_A_CNTR_REG_HW[1:0];
  ScanRegister REPEATLOOP_B_CNTR_REG_HW[0:1] {
      ScanInSource   REPEATLOOP_A_CNTR_REG_HW[1];
  }
  Alias REPEATLOOP_B_CNTR_REG[1:0] = REPEATLOOP_B_CNTR_REG_HW[1:0];
  ScanMux MEM39_TO_COLLAR_SI_MUX SelectedBy BIRA_SETUP {
      1'b0 : REPEATLOOP_B_CNTR_REG_HW[1];
      1'b1 : BIST_SI_Pipeline;
  }
  ScanMux MEM39_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM39_TO_COLLAR_SI_MUX;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM39_BIST_COLLAR_SI_INT = MEM39_GOID_SI_MUX;
  ScanMux MEM38_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM39_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM38_BIST_COLLAR_SI_INT = MEM38_GOID_SI_MUX;
  ScanMux MEM37_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM38_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM37_BIST_COLLAR_SI_INT = MEM37_GOID_SI_MUX;
  ScanMux MEM36_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM37_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM36_BIST_COLLAR_SI_INT = MEM36_GOID_SI_MUX;
  ScanMux MEM35_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM36_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM35_BIST_COLLAR_SI_INT = MEM35_GOID_SI_MUX;
  ScanMux MEM34_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM35_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM34_BIST_COLLAR_SI_INT = MEM34_GOID_SI_MUX;
  ScanMux MEM33_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM34_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM33_BIST_COLLAR_SI_INT = MEM33_GOID_SI_MUX;
  ScanMux MEM32_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM33_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM32_BIST_COLLAR_SI_INT = MEM32_GOID_SI_MUX;
  ScanMux MEM31_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM32_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM31_BIST_COLLAR_SI_INT = MEM31_GOID_SI_MUX;
  ScanMux MEM30_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM31_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM30_BIST_COLLAR_SI_INT = MEM30_GOID_SI_MUX;
  ScanMux MEM29_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM30_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM29_BIST_COLLAR_SI_INT = MEM29_GOID_SI_MUX;
  ScanMux MEM28_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM29_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM28_BIST_COLLAR_SI_INT = MEM28_GOID_SI_MUX;
  ScanMux MEM27_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM28_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM27_BIST_COLLAR_SI_INT = MEM27_GOID_SI_MUX;
  ScanMux MEM26_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM27_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM26_BIST_COLLAR_SI_INT = MEM26_GOID_SI_MUX;
  ScanMux MEM25_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM26_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM25_BIST_COLLAR_SI_INT = MEM25_GOID_SI_MUX;
  ScanMux MEM24_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM25_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM24_BIST_COLLAR_SI_INT = MEM24_GOID_SI_MUX;
  ScanMux MEM23_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM24_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM23_BIST_COLLAR_SI_INT = MEM23_GOID_SI_MUX;
  ScanMux MEM22_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM23_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM22_BIST_COLLAR_SI_INT = MEM22_GOID_SI_MUX;
  ScanMux MEM21_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM22_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM21_BIST_COLLAR_SI_INT = MEM21_GOID_SI_MUX;
  ScanMux MEM20_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM21_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM20_BIST_COLLAR_SI_INT = MEM20_GOID_SI_MUX;
  ScanMux MEM19_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM20_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM19_BIST_COLLAR_SI_INT = MEM19_GOID_SI_MUX;
  ScanMux MEM18_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM19_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM18_BIST_COLLAR_SI_INT = MEM18_GOID_SI_MUX;
  ScanMux MEM17_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM18_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM17_BIST_COLLAR_SI_INT = MEM17_GOID_SI_MUX;
  ScanMux MEM16_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM17_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM16_BIST_COLLAR_SI_INT = MEM16_GOID_SI_MUX;
  ScanMux MEM15_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM16_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM15_BIST_COLLAR_SI_INT = MEM15_GOID_SI_MUX;
  ScanMux MEM14_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM15_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM14_BIST_COLLAR_SI_INT = MEM14_GOID_SI_MUX;
  ScanMux MEM13_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM14_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM13_BIST_COLLAR_SI_INT = MEM13_GOID_SI_MUX;
  ScanMux MEM12_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM13_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM12_BIST_COLLAR_SI_INT = MEM12_GOID_SI_MUX;
  ScanMux MEM11_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM12_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM11_BIST_COLLAR_SI_INT = MEM11_GOID_SI_MUX;
  ScanMux MEM10_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM11_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM10_BIST_COLLAR_SI_INT = MEM10_GOID_SI_MUX;
  ScanMux MEM9_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM10_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM9_BIST_COLLAR_SI_INT = MEM9_GOID_SI_MUX;
  ScanMux MEM8_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM9_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM8_BIST_COLLAR_SI_INT = MEM8_GOID_SI_MUX;
  ScanMux MEM7_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM8_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM7_BIST_COLLAR_SI_INT = MEM7_GOID_SI_MUX;
  ScanMux MEM6_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM7_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM6_BIST_COLLAR_SI_INT = MEM6_GOID_SI_MUX;
  ScanMux MEM5_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM6_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM5_BIST_COLLAR_SI_INT = MEM5_GOID_SI_MUX;
  ScanMux MEM4_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM5_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM4_BIST_COLLAR_SI_INT = MEM4_GOID_SI_MUX;
  ScanMux MEM3_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM4_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM3_BIST_COLLAR_SI_INT = MEM3_GOID_SI_MUX;
  ScanMux MEM2_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM3_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM2_BIST_COLLAR_SI_INT = MEM2_GOID_SI_MUX;
  ScanMux MEM1_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM2_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM1_BIST_COLLAR_SI_INT = MEM1_GOID_SI_MUX;
  ScanMux MEM0_GOID_SI_MUX SelectedBy GOID_SETUP {
      1'b0 : MEM1_BIST_COLLAR_SO;
      1'b1 : BIST_SI_Pipeline;
  }
  Alias MEM0_BIST_COLLAR_SI_INT = MEM0_GOID_SI_MUX;
  ScanRegister PRESERVE_BIRA_FUSE_REG[0:0] {
      ScanInSource   MEM0_BIST_COLLAR_SO;
  }
  ScanRegister STOP_ON_ERROR_REG[0:0] {
      ScanInSource   PRESERVE_BIRA_FUSE_REG[0];
  }
  ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
      ScanInSource   STOP_ON_ERROR_REG[0];
  }
  ScanRegister STOP_ERROR_CNT_REG_HW[0:15] {
      ScanInSource   FREEZE_STOP_ERROR_REG[0];
  }
  Alias STOP_ERROR_CNT_REG[15:0] = STOP_ERROR_CNT_REG_HW[15:0];
 ScanMux CONTROLLER_SETUP_CHAIN SelectedBy MBISTPG_EN,SETUP_MODE[2:0] {
     1'b1,3'b00x : STOP_ERROR_CNT_REG_HW[15];
 }
// [end]   : LONG_SETUP / SHORT_SETUP chain registers }}}
//---------------------------------------------
// BIRA shift Chain Description
//---------------------------------------------
// The BIRA registers are on a dedicated setup chain.
// Variable LV_BIRA_SETUP is the chain length.
// Bit 0 is towards BIST_SO.
  ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : CONTROLLER_SETUP_CHAIN;
      1'b1 : MEM0_BIST_COLLAR_SO;
  }
  LogicSignal  GOID_SETUP  { MBISTPG_EN,SETUP_MODE[2:0] == 1'b1,3'b101;}
  Alias        MEM_SELECT_REG[39:0]   =  MEM_SELECT_REG39,MEM_SELECT_REG38,MEM_SELECT_REG37,MEM_SELECT_REG36,MEM_SELECT_REG35,MEM_SELECT_REG34,MEM_SELECT_REG33,MEM_SELECT_REG32,MEM_SELECT_REG31,MEM_SELECT_REG30,MEM_SELECT_REG29,MEM_SELECT_REG28,MEM_SELECT_REG27,MEM_SELECT_REG26,MEM_SELECT_REG25,MEM_SELECT_REG24,MEM_SELECT_REG23,MEM_SELECT_REG22,MEM_SELECT_REG21,MEM_SELECT_REG20,MEM_SELECT_REG19,MEM_SELECT_REG18,MEM_SELECT_REG17,MEM_SELECT_REG16,MEM_SELECT_REG15,MEM_SELECT_REG14,MEM_SELECT_REG13,MEM_SELECT_REG12,MEM_SELECT_REG11,MEM_SELECT_REG10,MEM_SELECT_REG9,MEM_SELECT_REG8,MEM_SELECT_REG7,MEM_SELECT_REG6,MEM_SELECT_REG5,MEM_SELECT_REG4,MEM_SELECT_REG3,MEM_SELECT_REG2,MEM_SELECT_REG1,MEM_SELECT_REG0;
  ScanMux GO_ID_CHAIN_STEP0 SelectedBy MEM_SELECT_REG[39:0] {
      40'b0000000000000000000000000000000000000001 : MEM0_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000000010 : MEM1_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000000100 : MEM2_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000001000 : MEM3_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000010000 : MEM4_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000000100000 : MEM5_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000001000000 : MEM6_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000010000000 : MEM7_BIST_COLLAR_SO;
      40'b0000000000000000000000000000000100000000 : MEM8_BIST_COLLAR_SO;
      40'b0000000000000000000000000000001000000000 : MEM9_BIST_COLLAR_SO;
      40'b0000000000000000000000000000010000000000 : MEM10_BIST_COLLAR_SO;
      40'b0000000000000000000000000000100000000000 : MEM11_BIST_COLLAR_SO;
      40'b0000000000000000000000000001000000000000 : MEM12_BIST_COLLAR_SO;
      40'b0000000000000000000000000010000000000000 : MEM13_BIST_COLLAR_SO;
      40'b0000000000000000000000000100000000000000 : MEM14_BIST_COLLAR_SO;
      40'b0000000000000000000000001000000000000000 : MEM15_BIST_COLLAR_SO;
      40'b0000000000000000000000010000000000000000 : MEM16_BIST_COLLAR_SO;
      40'b0000000000000000000000100000000000000000 : MEM17_BIST_COLLAR_SO;
      40'b0000000000000000000001000000000000000000 : MEM18_BIST_COLLAR_SO;
      40'b0000000000000000000010000000000000000000 : MEM19_BIST_COLLAR_SO;
      40'b0000000000000000000100000000000000000000 : MEM20_BIST_COLLAR_SO;
      40'b0000000000000000001000000000000000000000 : MEM21_BIST_COLLAR_SO;
      40'b0000000000000000010000000000000000000000 : MEM22_BIST_COLLAR_SO;
      40'b0000000000000000100000000000000000000000 : MEM23_BIST_COLLAR_SO;
      40'b0000000000000001000000000000000000000000 : MEM24_BIST_COLLAR_SO;
      40'b0000000000000010000000000000000000000000 : MEM25_BIST_COLLAR_SO;
      40'b0000000000000100000000000000000000000000 : MEM26_BIST_COLLAR_SO;
      40'b0000000000001000000000000000000000000000 : MEM27_BIST_COLLAR_SO;
      40'b0000000000010000000000000000000000000000 : MEM28_BIST_COLLAR_SO;
      40'b0000000000100000000000000000000000000000 : MEM29_BIST_COLLAR_SO;
      40'b0000000001000000000000000000000000000000 : MEM30_BIST_COLLAR_SO;
      40'b0000000010000000000000000000000000000000 : MEM31_BIST_COLLAR_SO;
      40'b0000000100000000000000000000000000000000 : MEM32_BIST_COLLAR_SO;
      40'b0000001000000000000000000000000000000000 : MEM33_BIST_COLLAR_SO;
      40'b0000010000000000000000000000000000000000 : MEM34_BIST_COLLAR_SO;
      40'b0000100000000000000000000000000000000000 : MEM35_BIST_COLLAR_SO;
      40'b0001000000000000000000000000000000000000 : MEM36_BIST_COLLAR_SO;
      40'b0010000000000000000000000000000000000000 : MEM37_BIST_COLLAR_SO;
      40'b0100000000000000000000000000000000000000 : MEM38_BIST_COLLAR_SO;
      40'b1000000000000000000000000000000000000000 : MEM39_BIST_COLLAR_SO;
  }
  Alias GO_ID_CHAIN = GO_ID_CHAIN_STEP0;
  ScanMux FUNC_DEBUG_MUX SelectedBy GOID_SETUP {
      1'b1 : GO_ID_CHAIN;
      1'b0 : BIRA_SETUP_MUX;
  }
  ScanMux BIST_SO_OUT SelectedBy LV_TM,MBISTPG_ASYNC_RESETN {
    2'b01 : FUNC_DEBUG_MUX;
  }
  ScanRegister BIST_SO_Pipeline {
      ScanInSource   BIST_SO_OUT;
      ResetValue     1'b0;
  }
  Alias BIST_SO_INT = BIST_SO_Pipeline;
  Attribute     tessent_instrument_container           = "firebird7_in_gate1_mbist";
  Attribute     tessent_instrument_type                = "mentor::memory_bist";
  Attribute     tessent_instrument_subtype             = "controller";
  Attribute     tessent_signature                      = "3c6e3878070c26573e281e58b1ccc125";
  Attribute     tessent_ignore_during_icl_verification = "on";
  Attribute     keep_active_during_scan_test           = "false";
  Attribute     tessent_use_in_dft_specification       = "false";
  Attribute     tessent_bist_clk_persistent_cell_output_list     = "tessent_persistent_cell_GATING_BIST_CLK/clkout";
}
