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
<<<<<<< HEAD
//       Created on: Sun Oct 29 23:49:36 PDT 2023
=======
//       Created on: Sun Oct 29 14:14:08 PDT 2023
>>>>>>> 4e4549e56b67a7b4dea437b7120c3145ada194bf
//--------------------------------------------------------------------------

Module firebird7_in_gate1_tessent_data_mux_w19_34 {
 
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
  Attribute tessent_signature                = "c25168db0ab9c8d65704a64ca622ec28";
}
