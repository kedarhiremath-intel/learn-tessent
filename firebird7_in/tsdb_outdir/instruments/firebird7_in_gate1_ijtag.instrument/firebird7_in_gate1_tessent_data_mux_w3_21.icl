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
//       Created on: Sun Nov  5 08:26:32 PST 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_data_mux_w3_21 {
 
  DataInPort  ijtag_select;
  DataInPort  ijtag_data_in[2:0];
  DataOutPort data_out[2:0] { 
    Attribute connection_rule_option = "allowed_no_destination";
    Source DM1; 
  }
 
  DataMux DM1[2:0] SelectedBy ijtag_select {
    1'b1 : ijtag_data_in[2:0];
  }
  Attribute tessent_use_in_dft_specification = "false";
  Attribute keep_active_during_scan_test     = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_signature                = "2cd7f68761165e432e3c33c123713264";
}
