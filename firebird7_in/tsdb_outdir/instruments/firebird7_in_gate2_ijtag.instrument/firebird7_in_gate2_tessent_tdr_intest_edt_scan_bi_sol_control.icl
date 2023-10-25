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
//       Created on: Tue Oct 24 19:28:51 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_control {
 
  ResetPort     ijtag_reset             { ActivePolarity 0;      }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so                { Source tdr[0];         }
  DataOutPort   sol_mask[1:0]           {
    Source tdr[20],
           tdr[19];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   sol_thresh[14:0]        {
    Source tdr[18],
           tdr[17],
           tdr[16],
           tdr[15],
           tdr[14],
           tdr[13],
           tdr[12],
           tdr[11],
           tdr[10],
           tdr[9],
           tdr[8],
           tdr[7],
           tdr[6],
           tdr[5],
           tdr[4];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   sol_init                {
    Source tdr[3];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   sol_mode                {
    Source tdr[2];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   reset_b                 {
    Source tdr[1];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   jam_edt_channels_in     {
    Source tdr[0];
    Attribute connection_rule_option = "allowed_no_destination";
  }
 
  ScanInterface client { 
    Port ijtag_si; 
    Port ijtag_so; 
    Port ijtag_sel;
  }
 
  Attribute keep_active_during_scan_test = "true";
 
  ScanRegister tdr[20:0] {
    ScanInSource     ijtag_si;
    CaptureSource    tdr[20:0];
    ResetValue       21'b000000000000000000000;
    DefaultLoadValue 21'b000000000000000000000;
  }
 
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_instrument_subtype       = "tessent_tdr";
  Attribute tessent_signature                = "3bb92987cc13f3793f6e949625ade9e7";
}
