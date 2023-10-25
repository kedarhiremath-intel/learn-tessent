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
//       Created on: Mon Oct 23 12:51:39 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_data_mux_w19_33 {
 
  DataInPort  ijtag_select;
  DataInPort  ijtag_data_in[18:0];
  DataOutPort data_out[18:0] { 
    Attribute connection_rule_option = "allowed_no_destination";
    Source DM1; 
  }
 
  DataMux DM1[18:0] SelectedBy ijtag_select {
    1'b1 : ijtag_data_in[18:0];
  }
  Attribute tessent_use_in_dft_specification = "false";
  Attribute keep_active_during_scan_test     = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_signature                = "5434355c93031c1d55786cae567cc99f";
}
