//--------------------------------------------------------------------------
//
//  Unpublished work. Copyright 2022 Siemens
//
//  This material contains trade secrets or otherwise confidential 
//  information owned by Siemens Industry Software Inc. or its affiliates 
//  (collectively, SISW), or its licensors. Access to and use of this 
//  information is strictly limited as set forth in the Customer's 
//  applicable agreements with SISW.
//
//--------------------------------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Sun Nov  5 08:58:04 PST 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_tdr_sri_ctrl {
 
  ResetPort     ijtag_reset             { ActivePolarity 0;      }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so                { Source tdr[0];         }
  DataOutPort   all_test                {
    Source tdr[13];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "all_test";
    Attribute tessent_dft_signal_usage = "global_dft_control";
    Attribute tessent_dft_signal_default_value_in_all_test = 1;
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_all_test/o";
  }
  DataOutPort   occ_kill_clock_en       {
    Source tdr[12];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "occ_kill_clock_en";
    Attribute tessent_dft_signal_usage = "global_dft_control";
    Attribute tessent_dft_signal_default_value_in_all_test = 0;
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_occ_kill_clock_en/o";
  }
  DataOutPort   se_pipeline_en          {
    Source tdr[11];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "se_pipeline_en";
    Attribute tessent_dft_signal_usage = "logic_test_control";
    Attribute tessent_dft_signal_value_in_pre_scan_drc = "0";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_se_pipeline_en/o";
  }
  DataOutPort   ext_mode                {
    Source tdr[10];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "ext_mode";
    Attribute tessent_dft_signal_usage = "scan_mode";
    Attribute tessent_dft_signal_scan_mode_type = "external";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_ext_mode/o";
  }
  DataOutPort   int_mode                {
    Source tdr[9];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "int_mode";
    Attribute tessent_dft_signal_usage = "scan_mode";
    Attribute tessent_dft_signal_scan_mode_type = "internal";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_int_mode/o";
  }
  DataOutPort   ext_edt_mode            {
    Source tdr[8];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "ext_edt_mode";
    Attribute tessent_dft_signal_usage = "scan_mode";
    Attribute tessent_dft_signal_scan_mode_type = "external";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_ext_edt_mode/o";
  }
  DataOutPort   int_edt_mode            {
    Source tdr[7];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "int_edt_mode";
    Attribute tessent_dft_signal_usage = "scan_mode";
    Attribute tessent_dft_signal_scan_mode_type = "internal";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_int_edt_mode/o";
  }
  DataOutPort   ext_ltest_en            {
    Source tdr[6];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "ext_ltest_en";
    Attribute tessent_dft_signal_usage = "logic_test_control";
    Attribute tessent_dft_signal_value_in_pre_scan_drc = "x";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_ext_ltest_en/o";
  }
  DataOutPort   int_ltest_en            {
    Source tdr[5];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "int_ltest_en";
    Attribute tessent_dft_signal_usage = "logic_test_control";
    Attribute tessent_dft_signal_value_in_pre_scan_drc = "x";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_int_ltest_en/o";
  }
  DataOutPort   tck_occ_en              {
    Source tdr[4];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "tck_occ_en";
    Attribute tessent_dft_signal_usage = "global_dft_control";
    Attribute tessent_dft_signal_default_value_in_all_test = 0;
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_tck_occ_en/o";
  }
  DataOutPort   async_set_reset_static_disable                   {
    Source tdr[3];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "async_set_reset_static_disable";
    Attribute tessent_dft_signal_usage = "logic_test_control";
    Attribute tessent_dft_signal_value_in_pre_scan_drc = "0";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_async_set_reset_static_disable/o";
  }
  DataOutPort   memory_bypass_en        {
    Source tdr[2];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "memory_bypass_en";
    Attribute tessent_dft_signal_usage = "logic_test_control";
    Attribute tessent_dft_signal_value_in_pre_scan_drc = "1";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_memory_bypass_en/o";
  }
  DataOutPort   ltest_en                {
    Source tdr[1];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "ltest_en";
    Attribute tessent_dft_signal_usage = "logic_test_control";
    Attribute tessent_dft_signal_value_in_pre_scan_drc = "1";
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_ltest_en/o";
  }
  DataOutPort   fscan_clkungate         {
    Source tdr[0];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_signal_name = "fscan_clkungate";
    Attribute tessent_dft_signal_usage = "global_dft_control";
    Attribute tessent_dft_signal_default_value_in_all_test = 0;
    Attribute tessent_dft_signal_reset_value = 0;
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_fscan_clkungate/o";
  }
 
  ScanInterface client { 
    Port ijtag_si; 
    Port ijtag_so; 
    Port ijtag_sel;
  }
 
  Attribute keep_active_during_scan_test = "true";
  Attribute tessent_dft_function = "scan_resource_instrument_dft_control";
  Attribute forced_high_output_port_list = "all_test";
 
  ScanRegister tdr[13:0] {
    ScanInSource     ijtag_si;
    CaptureSource    14'b00000000000000;
    ResetValue       14'b00000000000000;
    DefaultLoadValue 14'b00000000000000;
  }
 
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_instrument_subtype       = "tessent_tdr";
  Attribute tessent_signature                = "366dbaa23bbdf6af590c43fa1eb03f2e";
}
