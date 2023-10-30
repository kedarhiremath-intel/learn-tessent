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

module firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire hdspsr_pwr_mgmt_ovrd_en,
  output wire hdspsr_fastsleep_override,
  output wire hdspsr_deepsleep_override,
  output wire hdspsr_async_rst_override,
  output wire ijtag_so
);
reg    [3:0]        tdr;
reg                 retiming_so ;
reg                 hdspsr_pwr_mgmt_ovrd_en_latch;
reg                 hdspsr_fastsleep_override_latch;
reg                 hdspsr_deepsleep_override_latch;
reg                 hdspsr_async_rst_override_latch;
 
 
assign hdspsr_pwr_mgmt_ovrd_en          = hdspsr_pwr_mgmt_ovrd_en_latch;
assign hdspsr_fastsleep_override        = hdspsr_fastsleep_override_latch;
assign hdspsr_deepsleep_override        = hdspsr_deepsleep_override_latch;
assign hdspsr_async_rst_override        = hdspsr_async_rst_override_latch;
 
// --------- ShiftRegister ---------
 
always_ff @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { hdspsr_pwr_mgmt_ovrd_en_latch,
             hdspsr_fastsleep_override_latch,
             hdspsr_deepsleep_override_latch,
             hdspsr_async_rst_override_latch};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[3:1]};
  end
end
 
assign ijtag_so = retiming_so;
always_latch begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
// --------- DataOutPort 3 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_pwr_mgmt_ovrd_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_pwr_mgmt_ovrd_en_latch <= tdr[3];
    end
  end
end
 
// --------- DataOutPort 2 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_fastsleep_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_fastsleep_override_latch <= tdr[2];
    end
  end
end
 
// --------- DataOutPort 1 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_deepsleep_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_deepsleep_override_latch <= tdr[1];
    end
  end
end
 
// --------- DataOutPort 0 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_async_rst_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_async_rst_override_latch <= tdr[0];
    end
  end
end
 
endmodule
