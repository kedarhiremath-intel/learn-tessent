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

module firebird7_in_gate1_tessent_tdr_sti_ctrl (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire nonscan_test,
  output wire ijtag_so
);
wire                nonscan_test_to_buf;
reg    [0:0]        tdr;
reg                 retiming_so ;
reg                 nonscan_test_latch;
 
 
i0sbfn000ab1n02x5 tessent_persistent_cell_nonscan_test ( .a (nonscan_test_latch), .o (nonscan_test) );
 
// --------- ShiftRegister ---------
 
always_ff @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { nonscan_test_latch};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= ijtag_si;
  end
end
 
assign ijtag_so = retiming_so;
always_latch begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
// --------- DataOutPort 0 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    nonscan_test_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      nonscan_test_latch <= tdr[0];
    end
  end
end
 
endmodule
