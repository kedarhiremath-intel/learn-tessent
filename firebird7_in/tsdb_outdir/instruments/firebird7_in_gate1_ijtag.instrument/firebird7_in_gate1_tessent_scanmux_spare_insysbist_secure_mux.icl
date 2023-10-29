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

Module firebird7_in_gate1_tessent_scanmux_spare_insysbist_secure_mux {
 
  ScanInPort   mux_in0;
  ScanInPort   mux_in1;
  ScanOutPort  mux_out             {Source M1; }
  DataInPort   mux_select          { 
    Attribute tessent_timing         = "scan_reconfiguration";
  }
  SelectPort   enable_in           { 
    Attribute connection_rule_option = "allowed_tied_high"; 
  }
  ToSelectPort enable_out0         { 
    Attribute connection_rule_option = "allowed_no_destination"; 
  }
  ToSelectPort enable_out1         { 
    Attribute connection_rule_option = "allowed_no_destination"; 
  }
  
   Attribute keep_active_during_scan_test = "true";
 
  ScanInterface In0 { 
    Port mux_in0; 
    Port enable_out0; 
  }
  ScanInterface In1 { 
    Port mux_in1; 
    Port enable_out1; 
  }
  ScanMux M1 SelectedBy mux_select {
    1'b0 : mux_in0;
    1'b1 : mux_in1;
  }
 
  Attribute tessent_use_in_dft_specification = "false";
  Attribute tessent_instrument_type          = "mentor::ijtag_node";
  Attribute tessent_signature                = "7322446e5374c5d16be03574efb0325e";
}
