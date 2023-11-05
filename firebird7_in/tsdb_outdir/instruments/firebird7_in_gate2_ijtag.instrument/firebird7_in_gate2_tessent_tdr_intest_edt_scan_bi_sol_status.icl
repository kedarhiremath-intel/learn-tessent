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
//       Created on: Sun Nov  5 08:58:05 PST 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_status {
 
  ResetPort     ijtag_reset             { ActivePolarity 0;      }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so                { Source tdr[0];         }
  DataInPort   sol_out                  {
    Attribute connection_rule_option = "allowed_no_source"; 
  }
  DataInPort   sol_tog_status[1:0]      {
    Attribute connection_rule_option = "allowed_no_source"; 
  }
  DataInPort   sol_cnt_status[14:0]     {
    Attribute connection_rule_option = "allowed_no_source"; 
  }
 
  ScanInterface client { 
    Port ijtag_si; 
    Port ijtag_so; 
    Port ijtag_sel;
  }
 
  Attribute keep_active_during_scan_test = "true";
 
  ScanRegister tdr[17:0] {
    ScanInSource     ijtag_si;
    CaptureSource    sol_out,
                     sol_tog_status[1:0],
                     sol_cnt_status[14:0];
    ResetValue       18'bXXXXXXXXXXXXXXXXXX;
    DefaultLoadValue 18'b000000000000000000;
  }
 
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_instrument_subtype       = "tessent_tdr";
  Attribute tessent_signature                = "0b0eee2e21430956986744be5787b88e";
}
