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

Module firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe {
 
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
 
  DataRegister    bus_in_reg[19:0] {
    Attribute       tessent_active_clock_edge = "falling";
    WriteDataSource bus_data_in[19:0];
    WriteEnSource   1'b1;
    ResetValue      20'b0;
  }
 
  DataRegister    bus_out_reg[19:0] {
    WriteDataSource bus_in_reg[19:0];
    WriteEnSource   1'b1;
    ResetValue      20'b0;
  }
 
 
  Attribute keep_active_during_scan_test      = "true";
  Attribute tessent_instrument_type           = "mentor::ssn";
  Attribute tessent_instrument_subtype        = "output_pipeline";
  Attribute tessent_instrument_container      = "firebird7_in_gate2_ssn.instrument";
  Attribute tessent_signature                 = "f19f7e9387fb1cbb19353e34e5063413";
}
