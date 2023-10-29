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
//       Created on: Sun Oct 29 14:14:07 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr {
 
  ResetPort     ijtag_reset             { ActivePolarity 0;      }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so                { Source tdr[0];         }
  DataOutPort   hdspsr_pwr_mgmt_ovrd_en {
    Source tdr[3];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_fastsleep_override                        {
    Source tdr[2];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_deepsleep_override                        {
    Source tdr[1];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_async_rst_override                        {
    Source tdr[0];
    Attribute connection_rule_option = "allowed_no_destination";
  }
 
  ScanInterface client { 
    Port ijtag_si; 
    Port ijtag_so; 
    Port ijtag_sel;
  }
 
  Attribute keep_active_during_scan_test = "true";
 
  ScanRegister tdr[3:0] {
    ScanInSource     ijtag_si;
    CaptureSource    tdr[3:0];
    ResetValue       4'b0000;
    DefaultLoadValue 4'b0000;
  }
 
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_instrument_subtype       = "tessent_tdr";
  Attribute tessent_signature                = "96e4d4c2d17173a9506b6b84bb56e3d6";
}
