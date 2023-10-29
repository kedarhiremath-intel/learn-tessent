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

Module firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr {
 
  ResetPort     ijtag_reset             { ActivePolarity 0;      }
  SelectPort    ijtag_sel;
  ScanInPort    ijtag_si;
  CaptureEnPort ijtag_ce;
  ShiftEnPort   ijtag_se;
  UpdateEnPort  ijtag_ue;
  TCKPort       ijtag_tck;
  ScanOutPort   ijtag_so                { Source tdr[0];         }
  DataOutPort   hdspsr_trim_ovrd_en     {
    Source tdr[19];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wa_override2     {
    Source tdr[18];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wa_override1     {
    Source tdr[17];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wa_override0     {
    Source tdr[16];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_ra_override1     {
    Source tdr[15];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_ra_override0     {
    Source tdr[14];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wmce_override1   {
    Source tdr[13];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wmce_override0   {
    Source tdr[12];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wpulse_override1 {
    Source tdr[11];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wpulse_override0 {
    Source tdr[10];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_mce_override     {
    Source tdr[9];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_shutoff_override {
    Source tdr[8];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_wa_disable_override                       {
    Source tdr[7];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_stbyp_override   {
    Source tdr[6];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_rmce_override3   {
    Source tdr[5];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_rmce_override2   {
    Source tdr[4];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_rmce_override1   {
    Source tdr[3];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_rmce_override0   {
    Source tdr[2];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_sbc_override1    {
    Source tdr[1];
    Attribute connection_rule_option = "allowed_no_destination";
  }
  DataOutPort   hdspsr_sbc_override0    {
    Source tdr[0];
    Attribute connection_rule_option = "allowed_no_destination";
  }
 
  ScanInterface client { 
    Port ijtag_si; 
    Port ijtag_so; 
    Port ijtag_sel;
  }
 
  Attribute keep_active_during_scan_test = "true";
 
  ScanRegister tdr[19:0] {
    ScanInSource     ijtag_si;
    CaptureSource    tdr[19:0];
    ResetValue       20'b00000000000000000000;
    DefaultLoadValue 20'b00000000000000000000;
  }
 
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_instrument_subtype       = "tessent_tdr";
  Attribute tessent_signature                = "46fa45a593c463b9e506cea85ff23ee0";
}
