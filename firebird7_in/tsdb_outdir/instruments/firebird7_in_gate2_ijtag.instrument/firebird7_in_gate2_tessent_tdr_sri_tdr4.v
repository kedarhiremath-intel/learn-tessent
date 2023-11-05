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

module firebird7_in_gate2_tessent_tdr_sri_tdr4 (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire [0:0] ijtag_data_out,
  output wire ijtag_so
);
reg    [0:0]        tdr;
reg                 retiming_so ;
reg                 ijtag_data_out_0_latch;
 
 
assign ijtag_data_out[0]                = ijtag_data_out_0_latch;
 
// --------- ShiftRegister ---------
 
always @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { 1'b0};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= ijtag_si;
  end
end
 
assign ijtag_so = retiming_so;
always @ (ijtag_tck or tdr[0]) begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
// --------- DataOutPort 0 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    ijtag_data_out_0_latch <= 1'b1;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      ijtag_data_out_0_latch <= tdr[0];
    end
  end
end
 
endmodule
