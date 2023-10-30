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
<<<<<<< HEAD:firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_spare_orange_secure_mux.sv
//       Created on: Sun Oct 29 23:49:35 PDT 2023
=======
//       Created on: Sun Oct 29 14:14:07 PDT 2023
>>>>>>> 4e4549e56b67a7b4dea437b7120c3145ada194bf:firebird7_in/tsdb_outdir/instruments/firebird7_in_gate1_ijtag.instrument/firebird7_in_gate1_tessent_scanmux_insysbist_sec_mux.sv
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_scanmux_spare_orange_secure_mux (
  input wire mux_in0,
  input wire mux_in1,
  output wire mux_out,
  input wire mux_select,
  input wire enable_in,
  output wire enable_out0,
  output wire enable_out1
);
  assign enable_out0     = ~mux_select & enable_in;
  assign enable_out1     =  mux_select & enable_in;
 
  assign mux_out         = mux_select ? mux_in1 : mux_in0;
 
endmodule
