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
//       Created on: Mon Oct 23 12:51:38 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_tdr_spare_green_tdr (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire ijtag_so
);
reg    [7:0]        tdr;
reg                 retiming_so ;
 
 
 
// --------- ShiftRegister ---------
 
always_ff @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { 8'b00000000};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[7:1]};
  end
end
 
assign ijtag_so = retiming_so;
always_latch begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
endmodule
