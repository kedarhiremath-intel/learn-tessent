// Generated by tap_gen.pl version 1.8
// Time : Tue Apr 18 12:19:08 2023


Module dteg_upm_top {

   // Top level attributes
   Attribute intel_instrument_subtype = "upm";
   Attribute intel_instrument_type = "debug";

   Attribute intel_desc = "UPM";

   //--------------------------------------------------------------------------------
   //TAP DR Sizes
   LocalParameter upm_inst_DR_SIZE = "VARIABLE";

   //--------------------------------------------------------------------------------
   // Common RTDR/IJTAG ports
   // All ports in ICL must match corresponding RTL module port names

   TCKPort       dfx_upm_tck;

   // TLR reset
   ResetPort     dfx_upm_trstb { ActivePolarity 0;}

   // DFx powergood/reset ports
   ResetPort     dfx_upm_fdfx_powergood { ActivePolarity 0;}

   CaptureEnPort   	dfx_upm_capture;
   ShiftEnPort   	dfx_upm_shift;
   UpdateEnPort   	dfx_upm_update;

   //--------------------------------------------------------------------------------
   // TAP TDRs and ScanInterfaces
   //--------------------------------------------------------------------------------

   ScanInPort	 dfx_upm_si;
   ScanOutPort	 dfx_upm_so { Source upm_inst.so;}
   SelectPort	 dfx_upm_sel;

   ScanInterface c_ip {
      Port   dfx_upm_si;
      Port   dfx_upm_so;
      Port   dfx_upm_sel;
      Port   dfx_upm_trstb;
   }

   Instance upm_inst Of ip_rtdr_ijtag_def_dteg_upm_top_upm_ijtag_chain_def {
      InputPort   si = dfx_upm_si;
      InputPort   ijtag_reset_b = dfx_upm_trstb;
      InputPort   rstn = dfx_upm_fdfx_powergood;
   }

   //---------------------------


   // Other Ports (not used)
   // -----------------------
   [% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
    ClockPort   dfx_upm_func_clk { Attribute tessent_clock_domain_labels = "dfx_upm_func_clk dfx_upm_func_clk"; Attribute tessent_clock_periods = "all 100.00ns";}
    [% END %]

    DataInPort   dfx_upm_iso_n {  Attribute connection_rule_option = "allowed_no_source"; DefaultLoadValue 1'h1;}

} // end of dteg_upm_top


// Chain Definitions
//---------------------------
Module ip_rtdr_ijtag_def_dteg_upm_top_upm_ijtag_chain_def {

   Attribute intel_desc = "UPM IJTAG chain description";

   //--------------------------------------------------------------------------------
   //Local Parameters

   //TAP DR Sizes
   LocalParameter CBB_reg_DR_SIZE = 21;
   LocalParameter COUNTER_CTRL_reg_DR_SIZE = 26;
   LocalParameter COUNTER_RESULT_reg_DR_SIZE = 21;
   LocalParameter UPM_STATUS_reg_DR_SIZE = 25;

   ScanInPort    si;
   ScanOutPort   so   { Source SIB_UPM_STATUS.so;}
   SelectPort    sel;
   ResetPort     ijtag_reset_b { ActivePolarity 0; }
   ResetPort     rstn { ActivePolarity 0;}

   //--------------------------------------------
   // Chain hierarchy level: 1 (TDI->TDO/si->so)
   //---------------------------
   Instance SIB_CBB Of iclgen_intel_ijtag_sib {
      InputPort   si = si;
      InputPort   inst_so = CBB_reg.so;
      InputPort   rstn = ijtag_reset_b;
   }
   //---------------------------
   Instance SIB_COUNTER_CTRL Of iclgen_intel_ijtag_sib {
      InputPort   si = SIB_CBB.so;
      InputPort   inst_so = COUNTER_CTRL_reg.so;
      InputPort   rstn = ijtag_reset_b;
   }
   //---------------------------
   Instance SIB_COUNTER_RESULT Of iclgen_intel_ijtag_sib {
      InputPort   si = SIB_COUNTER_CTRL.so;
      InputPort   inst_so = COUNTER_RESULT_reg.so;
      InputPort   rstn = ijtag_reset_b;
   }
   //---------------------------
   Instance SIB_UPM_STATUS Of iclgen_intel_ijtag_sib {
      InputPort   si = SIB_COUNTER_RESULT.so;
      InputPort   inst_so = UPM_STATUS_reg.so;
      InputPort   rstn = ijtag_reset_b;
   }
   //--------------------------------------------
   // Chain hierarchy level: 2 (TDI->TDO/si->so)
   //---------------------------
   Instance CBB_reg Of ip_rtdr_ijtag_def_dteg_upm_top_CBB_reg_def {
      InputPort   si = SIB_CBB.inst_si;
      InputPort   reset_b = rstn;
   }
   Alias CBB_reg[$CBB_reg_DR_SIZE-1:0] = CBB_reg.DR;
   //---------------------------
   Instance COUNTER_CTRL_reg Of ip_rtdr_ijtag_def_dteg_upm_top_COUNTER_CTRL_reg_def {
      InputPort   si = SIB_COUNTER_CTRL.inst_si;
      InputPort   reset_b = rstn;
   }
   Alias COUNTER_CTRL_reg[$COUNTER_CTRL_reg_DR_SIZE-1:0] = COUNTER_CTRL_reg.DR;
   //---------------------------
   Instance COUNTER_RESULT_reg Of ip_rtdr_ijtag_def_dteg_upm_top_COUNTER_RESULT_reg_def {
      InputPort   si = SIB_COUNTER_RESULT.inst_si;
      InputPort   reset_b = rstn;
   }
   Alias COUNTER_RESULT_reg[$COUNTER_RESULT_reg_DR_SIZE-1:0] = COUNTER_RESULT_reg.DR;
   //---------------------------
   Instance UPM_STATUS_reg Of ip_rtdr_ijtag_def_dteg_upm_top_UPM_STATUS_reg_def {
      InputPort   si = SIB_UPM_STATUS.inst_si;
      InputPort   reset_b = rstn;
   }
   Alias UPM_STATUS_reg[$UPM_STATUS_reg_DR_SIZE-1:0] = UPM_STATUS_reg.DR;
} // end of ip_rtdr_ijtag_def_dteg_upm_top_upm_ijtag_chain_def


// Register definitions of chain ip_rtdr_ijtag_def_dteg_upm_top_upm_ijtag_chain_def
//---------------------------
Module ip_rtdr_ijtag_def_dteg_upm_top_CBB_reg_def {

   Attribute intel_desc = "CBB_reg description";
   Attribute intel_TapRegResetType = "PWRGOOD";

   ScanInPort     si;
   ScanOutPort    so   { Source DR[0];}
   ResetPort      reset_b { ActivePolarity 0;}
   SelectPort     sel;

   ScanInterface client {
      Port si;
      Port so;
      Port sel;
   }

   ScanRegister DR[20:0] {
      ScanInSource   si;
      ResetValue     21'b0;
      CaptureSource  DR[20:0];
      Attribute intel_TapRegSecurity = "SECURE_RED";
   }
   Alias IJTAG_UPM1_CBB_CBB0_POWER_ENABLE[0:0] = DR[0:0] {
      Attribute intel_desc = "cbb0_pwr_enable";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_UPM1_CBB_CBB0_UPM_ADDR[5:0] = DR[6:1] {
      Attribute intel_desc = "cbb0_addr";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_UPM1_CBB_CBB1_POWER_ENABLE[0:0] = DR[7:7] {
      Attribute intel_desc = "cbb1_pwr_enable";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_UPM1_CBB_CBB1_UPM_ADDR[5:0] = DR[13:8] {
      Attribute intel_desc = "cbb1_addr";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_UPM1_CBB_CBB2_POWER_ENABLE[0:0] = DR[14:14] {
      Attribute intel_desc = "cbb2_pwr_enable";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_UPM1_CBB_CBB2_UPM_ADDR[5:0] = DR[20:15] {
      Attribute intel_desc = "cbb2_addr";
      Attribute intel_AccessType = "RW";
   }
   Attribute tessent_use_in_dft_specification = "false";
} // end of ip_rtdr_ijtag_def_dteg_upm_top_CBB_reg_def

//---------------------------
Module ip_rtdr_ijtag_def_dteg_upm_top_COUNTER_CTRL_reg_def {

   Attribute intel_desc = "COUNTER_CTRL_reg description";
   Attribute intel_TapRegResetType = "PWRGOOD";

   ScanInPort     si;
   ScanOutPort    so   { Source DR[0];}
   ResetPort      reset_b { ActivePolarity 0;}
   SelectPort     sel;

   ScanInterface client {
      Port si;
      Port so;
      Port sel;
   }

   ScanRegister DR[25:0] {
      ScanInSource   si;
      ResetValue     26'b0;
      CaptureSource  DR[25:0];
      Attribute intel_TapRegSecurity = "SECURE_RED";
   }
   Alias IJTAG_COUNTER_CTRL_WINDOW_MODE[0:0] = DR[0:0] {
      Attribute intel_desc = "window_mode";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_COUNTER_CTRL_START_MODE[0:0] = DR[1:1] {
      Attribute intel_desc = "start_mode";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_COUNTER_CTRL_STOP_MODE[0:0] = DR[2:2] {
      Attribute intel_desc = "stop_mode";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_COUNTER_CTRL_CLOCK_DIVDER_SELECT[4:0] = DR[7:3] {
      Attribute intel_desc = "divider_value_select";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_COUNTER_CTRL_UPM_WINDOW_SIZE[15:0] = DR[23:8] {
      Attribute intel_desc = "counter_window_size";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_COUNTER_CTRL_UPM_DEBUG_CLK_EN[0:0] = DR[24:24] {
      Attribute intel_desc = "debug_clk_enable";
      Attribute intel_AccessType = "RW";
   }
   Alias IJTAG_COUNTER_CTRL_UPM_TAP_MASTER_MODE[0:0] = DR[25:25] {
      Attribute intel_desc = "tap_master_mode_bit";
      Attribute intel_AccessType = "RW";
   }
   Attribute tessent_use_in_dft_specification = "false";
} // end of ip_rtdr_ijtag_def_dteg_upm_top_COUNTER_CTRL_reg_def

//---------------------------
Module ip_rtdr_ijtag_def_dteg_upm_top_COUNTER_RESULT_reg_def {

   Attribute intel_desc = "COUNTER_RESULT_reg description";
   Attribute intel_TapRegResetType = "PWRGOOD";

   ScanInPort     si;
   ScanOutPort    so   { Source DR[0];}
   ResetPort      reset_b { ActivePolarity 0;}
   SelectPort     sel;

   ScanInterface client {
      Port si;
      Port so;
      Port sel;
   }

   ScanRegister DR[20:0] {
      ScanInSource   si;
      ResetValue     21'b0;
      CaptureSource  21'bx;
      Attribute intel_TapRegSecurity = "SECURE_RED";
   }
   Alias IJTAG_COUNTER_RESULT_OVERFLOW[0:0] = DR[0:0] {
      Attribute intel_desc = "counter_overflow";
      Attribute intel_AccessType = "RO/V";
   }
   Alias IJTAG_COUNTER_RESULT_COUNTER_VALUE[19:0] = DR[20:1] {
      Attribute intel_desc = "counter_current_value_result";
      Attribute intel_AccessType = "RO/V";
   }
   Attribute tessent_use_in_dft_specification = "false";
} // end of ip_rtdr_ijtag_def_dteg_upm_top_COUNTER_RESULT_reg_def

//---------------------------
Module ip_rtdr_ijtag_def_dteg_upm_top_UPM_STATUS_reg_def {

   Attribute intel_desc = "UPM_STATUS_reg description";
   Attribute intel_TapRegResetType = "PWRGOOD";

   ScanInPort     si;
   ScanOutPort    so   { Source DR[0];}
   ResetPort      reset_b { ActivePolarity 0;}
   SelectPort     sel;

   ScanInterface client {
      Port si;
      Port so;
      Port sel;
   }

   ScanRegister DR[24:0] {
      ScanInSource   si;
      ResetValue     25'b1;
      CaptureSource  25'bx;
      Attribute intel_TapRegSecurity = "SECURE_RED";
   }
   Alias IJTAG_UPM_STATUS_FSM_STATE[4:0] = DR[4:0] {
      Attribute intel_desc = "fsm_state";
      Attribute intel_AccessType = "RO/V";
   }
   Alias IJTAG_UPM_STATUS_FSM_ENABLE[0:0] = DR[5:5] {
      Attribute intel_desc = "fsm_enable";
      Attribute intel_AccessType = "RO/V";
   }
   Alias IJTAG_UPM_STATUS_WINDOW_COUNTER_ACTIVE[0:0] = DR[6:6] {
      Attribute intel_desc = "window_counter_active_status";
      Attribute intel_AccessType = "RO/V";
   }
   Alias IJTAG_UPM_STATUS_COUNTER_CURRENT_VALUE[15:0] = DR[22:7] {
      Attribute intel_desc = "counter_current_value_status";
      Attribute intel_AccessType = "RO/V";
   }
   Alias IJTAG_UPM_STATUS_CBB_CFG_ERROR[0:0] = DR[23:23] {
      Attribute intel_desc = "cbb_cfg_error_status";
      Attribute intel_AccessType = "RO/V";
   }
   Alias IJTAG_UPM_STATUS_COUNTER_STATUS[0:0] = DR[24:24] {
      Attribute intel_desc = "counter status";
      Attribute intel_AccessType = "RO/V";
   }
   Attribute tessent_use_in_dft_specification = "false";
} // end of ip_rtdr_ijtag_def_dteg_upm_top_UPM_STATUS_reg_def

// SIB (standard)
Module iclgen_intel_ijtag_sib {

   ScanInPort    si;
   ScanOutPort   so     { Source sib[0]; }
   SelectPort    sel;
   ResetPort     rstn { ActivePolarity 0; }

   ToSelectPort  inst_sel { Source select_out;}
   ScanOutPort   inst_si  { Source si;}
   ScanInPort    inst_so;
 
   ScanInterface c {
      Port si; 
      Port so; 
      Port sel;
   } 

   ScanInterface host   { 
      Port inst_si; 
      Port inst_so; 
      Port inst_sel; 
   }
  
   ScanRegister sib [0:0] {
      ScanInSource     scan_in_mux;
      CaptureSource    sib[0:0];
      ResetValue       1'b0;
      DefaultLoadValue 1'b0;
   }

   ScanMux scan_in_mux SelectedBy sib {
      1'b0 : si;
      1'b1 : inst_so;
   }

   LogicSignal select_out { sel,sib == 2'b11; }
}