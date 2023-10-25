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
//       Created on: Mon Oct 23 12:51:38 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_tdr_sti_ctrl {
 
  ResetPort     ijtag_reset             { ActivePolarity 0;      }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so                { Source tdr[0];         }
  DataOutPort   nonscan_test            {
    Source tdr[0];
    Attribute connection_rule_option = "allowed_no_destination";
    Attribute tessent_dft_function = "clock_enable_reset_low";
    Attribute tessent_persistent_design_pin = "tessent_persistent_cell_nonscan_test/o";
  }
 
  ScanInterface client { 
    Port ijtag_si; 
    Port ijtag_so; 
    Port ijtag_sel;
  }
 
  Attribute keep_active_during_scan_test = "false";
  Attribute tessent_dft_function = "scan_tested_instrument_dft_control";
  Attribute forced_high_output_port_list = "nonscan_test";
 
  ScanRegister tdr[0:0] {
    ScanInSource     ijtag_si;
    CaptureSource    1'b0;
    ResetValue       1'b0;
    DefaultLoadValue 1'b0;
  }
 
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_instrument_subtype       = "tessent_tdr";
  Attribute tessent_signature                = "8094b5090ceacf48db2974055cb4d264";
}
