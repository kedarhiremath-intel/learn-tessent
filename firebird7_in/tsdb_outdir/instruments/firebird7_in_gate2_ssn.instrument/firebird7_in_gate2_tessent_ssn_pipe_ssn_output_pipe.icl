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
//       Created on: Sun Oct 29 14:37:19 PDT 2023
//--------------------------------------------------------------------------

Module firebird7_in_gate2_tessent_ssn_pipe_ssn_output_pipe {
 
  ResetPort       ijtag_reset {
    ActivePolarity 0;
  }
  ClockPort       bus_clock {
    Attribute function_modifier = "tessent_ssn_clock";
    Attribute forced_high_dft_signal_list = "ssn_en";
  }
  DataInPort      bus_data_in[19:0] {
    Attribute function_modifier = "tessent_ssn_bus_data";
    Attribute forced_high_dft_signal_list = "ssn_en";
  }
  DataOutPort     bus_data_out[19:0] {  
    Attribute function_modifier = "tessent_ssn_bus_data";
    Attribute forced_high_dft_signal_list = "ssn_en";
    Source    bus_out_reg;
  }
 
  DataRegister    bus_out_reg[19:0] {
    WriteDataSource bus_data_in[19:0];
    WriteEnSource   1'b1;
    ResetValue      20'b0;
  }
 
 
  Attribute keep_active_during_scan_test      = "true";
  Attribute tessent_instrument_type           = "mentor::ssn";
  Attribute tessent_instrument_subtype        = "pipeline";
  Attribute tessent_instrument_container      = "firebird7_in_gate2_ssn.instrument";
  Attribute tessent_signature                 = "32afc177ee2fb58b83cdf75e468de602";
}
