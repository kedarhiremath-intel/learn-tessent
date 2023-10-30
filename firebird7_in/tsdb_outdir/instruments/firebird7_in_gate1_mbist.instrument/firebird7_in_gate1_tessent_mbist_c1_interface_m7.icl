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
-       Created on: Sun Oct 29 23:50:20 PDT 2023                                 -
----------------------------------------------------------------------------------


*/
 // ============================================================================
// == Description     : ICL description for firebird7_in_gate1_tessent_mbist_c1_interface_m7
// == Tool Name       : membistipCommonGenerate
// == Tool Version    : 2022.4      Tue Nov 29 21:19:37 GMT 2022
// ============================================================================
Module firebird7_in_gate1_tessent_mbist_c1_interface_m7 {
    ClockPort                       BIST_CLK;
    DataInPort                      BIST_COLLAR_EN;
    DataInPort                      BIST_ASYNC_RESETN;
    ScanInPort                      BIST_SI;
    ScanOutPort                     BIST_SO {Source BIST_SO_INT;}
    ShiftEnPort                     BIST_SHIFT_COLLAR;
    DataInPort                      BIST_SETUP2;
    DataInPort                      BIST_SETUP1;
    DataInPort                      BIST_SETUP0;
    DataInPort                      MEM_BYPASS_EN {
        Attribute connection_rule_option = "allowed_tied_low";}
    DataInPort                      MCP_BOUNDING_EN {
        Attribute connection_rule_option = "allowed_tied_low";}
    DataInPort                      INCLUDE_MEM_RESULTS_REG;
          
    DataOutPort                     adr[9:0] { 
        Attribute connection_rule_option = "allowed_no_destination"; 
        Attribute tessent_memory_bist_function = "address";
    }
    DataInPort                      CHECK_REPAIR_NEEDED;
    DataOutPort      ALL_SROW0_FUSE_ADD_REG[6:0] { Attribute connection_rule_option = "allowed_no_destination"; Source RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6:0]; }
    DataOutPort      ALL_SROW0_ALLOC_REG { Attribute connection_rule_option = "allowed_no_destination"; Source RA_INTERFACE_ALL_SPARE0_ALLOC_BIT; }
    DataInPort       FROM_BISR_ALL_SROW0_FUSE_ADD_REG[6:0] { Attribute connection_rule_option = "allowed_tied_low"; }
    DataInPort       FROM_BISR_ALL_SROW0_ALLOC_REG { Attribute connection_rule_option = "allowed_tied_low"; }
    DataOutPort      ALL_SROW1_FUSE_ADD_REG[6:0] { Attribute connection_rule_option = "allowed_no_destination"; Source RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6:0]; }
    DataOutPort      ALL_SROW1_ALLOC_REG { Attribute connection_rule_option = "allowed_no_destination"; Source RA_INTERFACE_ALL_SPARE1_ALLOC_BIT; }
    DataInPort       FROM_BISR_ALL_SROW1_FUSE_ADD_REG[6:0] { Attribute connection_rule_option = "allowed_tied_low"; }
    DataInPort       FROM_BISR_ALL_SROW1_ALLOC_REG { Attribute connection_rule_option = "allowed_tied_low"; }
    DataOutPort      All_SCOL0_FUSE_REG[4:0] { Attribute connection_rule_option = "allowed_no_destination"; Source RA_INTERFACE_All_SPARE0_FUSE_REG[4:0]; }
    DataInPort       FROM_BISR_All_SCOL0_FUSE_REG[4:0] { Attribute connection_rule_option = "allowed_tied_low"; }
    DataOutPort      All_SCOL0_ALLOC_REG { Attribute connection_rule_option = "allowed_no_destination"; Source RA_INTERFACE_All_SPARE0_ALLOC_REG; }
    DataInPort       FROM_BISR_All_SCOL0_ALLOC_REG { Attribute connection_rule_option = "allowed_tied_low"; }
    LogicSignal      BIRA_SETUP { BIST_SETUP2,BIST_SETUP1,BIST_SETUP0 == 3'b100;}
// [start] : LONG_SETUP / SHORT_SETUP chain registers {{{
  ScanRegister RA_STATUS_SHADOW_REG_HW[0:1] {
    ScanInSource     BIST_SI;
  }
  Alias RA_STATUS_SHADOW_REG[1:0] = RA_STATUS_SHADOW_REG_HW[1:0];
  Alias GO_ID_REG_BYPASS_SOURCE = RA_STATUS_SHADOW_REG[1];
  ScanRegister GO_ID_REG[21:0] {
    ScanInSource     RA_STATUS_SHADOW_REG[1];
  }
  ScanMux GO_ID_REG_BYPASS_MUX SelectedBy INCLUDE_MEM_RESULTS_REG {
      1'b0 : GO_ID_REG_BYPASS_SOURCE;
      1'b1 : GO_ID_REG[0];
  }
  ScanRegister FREEZE_STOP_ERROR_REG[0:0] {
    ScanInSource     GO_ID_REG_BYPASS_MUX;
  }
// [end]   : LONG_SETUP / SHORT_SETUP chain registers }}}
    
  ScanRegister RA_INTERFACE_All_SPARE0_FUSE_REG[0:4] {
      ScanInSource                  BIST_SI;
  }
  ScanRegister RA_INTERFACE_All_SPARE0_ALLOC_REG[0:0] {
      ScanInSource                  RA_INTERFACE_All_SPARE0_FUSE_REG[4];
  }
  ScanRegister RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[0:6] {
      ScanInSource                  RA_INTERFACE_All_SPARE0_ALLOC_REG[0];
  }
  ScanRegister RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0:0] {
      ScanInSource                  RA_INTERFACE_ALL_SPARE0_FUSE_ADD_REG[6];
  }
  ScanRegister RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[0:6] {
      ScanInSource                  RA_INTERFACE_ALL_SPARE0_ALLOC_BIT[0];
  }
  ScanRegister RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0:0] {
      ScanInSource                  RA_INTERFACE_ALL_SPARE1_FUSE_ADD_REG[6];
  }
  ScanRegister RA_INTERFACE_STATUS_REG[0:1] {
      ScanInSource                  RA_INTERFACE_ALL_SPARE1_ALLOC_BIT[0];
  }
  ScanMux BIRA_SETUP_MUX SelectedBy BIRA_SETUP {
      1'b0 : FREEZE_STOP_ERROR_REG[0];
      1'b1 : RA_INTERFACE_STATUS_REG[1];
  }
  Alias BIST_SO_INT = BIRA_SETUP_MUX;
  Attribute          tessent_instrument_type = "mentor::memory_bist";
  Attribute          tessent_instrument_subtype = "memory_interface";
  Attribute          tessent_signature = "39fd48adce09e9aede4641dd06b78f6b";
  Attribute          tessent_ignore_during_icl_verification = "on";
  Attribute          keep_active_during_scan_test           = "false";
  Attribute          tessent_use_in_dft_specification = "false";
  Attribute          tessent_bist_input_select_persistent_cell_output_list = "tessent_persistent_cell_BIST_INPUT_SELECT_INT/o";
  Attribute          tessent_async_bypass_persistent_cell_input_list = "";
  Attribute          tessent_bist_clk_persistent_cell_output_list = "tessent_persistent_cell_GATING_BIST_CLK/clkout";
  Attribute          tessent_memory_output_is_tristate = "false";
  Attribute          tessent_memory_control_inputs_list = "ren READENABLE ACTIVEHIGH";
  Attribute          tessent_memory_test_inputs_list = "";
  Attribute          tessent_memory_test_outputs_list = "";
  Attribute          tessent_memory_control_inputs_di_coverage_list = "partial";
}
