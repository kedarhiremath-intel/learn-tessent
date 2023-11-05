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

module firebird7_in_gate2_edt_channel_out_mux_2x1_1 (
  mux_in0, mux_en0,
  mux_in1, mux_en1,
  mux_out
);
 
input  [1:0]   mux_in0, mux_in1;
input  [0:0]   mux_en0;
input  [0:0]   mux_en1;
output [1:0]   mux_out;
 
assign mux_out = ( mux_in0 & {2{|mux_en0}} ) |
               ( mux_in1 & {2{|mux_en1}} ) ;
 
endmodule
