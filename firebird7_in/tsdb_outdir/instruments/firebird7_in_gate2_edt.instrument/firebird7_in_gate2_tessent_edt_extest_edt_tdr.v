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
//       Created on: Tue Oct 24 19:28:52 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate2_tessent_edt_extest_edt_tdr (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire edt_bypass,
  output wire edt_low_power_shift_en,
  output wire ijtag_so
);
wire                edt_bypass_to_buf;
wire                edt_low_power_shift_en_to_buf;
reg    [1:0]        tdr;
reg                 retiming_so ;
reg                 edt_low_power_shift_en_latch;
reg                 edt_bypass_latch;
 
 
i0sbfn000ab1n02x5 tessent_persistent_cell_edt_low_power_shift_en ( .a (edt_low_power_shift_en_latch), .o (edt_low_power_shift_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_edt_bypass ( .a (edt_bypass_latch), .o (edt_bypass) );
 
// --------- ShiftRegister ---------
 
always @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { edt_low_power_shift_en_latch,
             edt_bypass_latch};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[1:1]};
  end
end
 
assign ijtag_so = retiming_so;
always @ (negedge ijtag_tck) begin
  retiming_so <= tdr[0];
end
 
// --------- DataOutPort 1 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    edt_low_power_shift_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      edt_low_power_shift_en_latch <= tdr[1];
    end
  end
end
 
// --------- DataOutPort 0 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    edt_bypass_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      edt_bypass_latch <= tdr[0];
    end
  end
end
 
endmodule
