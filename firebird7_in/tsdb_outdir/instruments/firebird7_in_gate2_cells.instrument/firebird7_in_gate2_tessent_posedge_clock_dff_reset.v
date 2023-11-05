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
//       Created on: Sun Nov  5 08:58:04 PST 2023
//--------------------------------------------------------------------------

  
module firebird7_in_gate2_tessent_posedge_clock_dff_reset (
  input wire rn,
  input wire d,
  input wire clk,
  output reg q
);
always @ (posedge clk or negedge rn) begin
  if (~rn) begin
    q <= 1'b0;
  end else begin
    q <= d;
  end
end
endmodule
