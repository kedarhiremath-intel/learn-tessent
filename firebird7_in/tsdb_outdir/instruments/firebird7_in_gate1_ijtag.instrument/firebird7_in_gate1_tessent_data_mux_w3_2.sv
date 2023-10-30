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
//       Created on: Sun Oct 29 23:49:35 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_data_mux_w3_2 (
  input wire ijtag_select,
  input wire [2:0]  functional_data_in,
  input wire [2:0]  ijtag_data_in,
  output wire [2:0] data_out
);
assign data_out = (ijtag_select) ? ijtag_data_in : functional_data_in;
endmodule
