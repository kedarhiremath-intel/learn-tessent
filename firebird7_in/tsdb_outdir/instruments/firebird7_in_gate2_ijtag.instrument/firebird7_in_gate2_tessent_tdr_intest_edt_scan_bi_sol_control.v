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

module firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_control (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire [1:0] sol_mask,
  output wire [14:0] sol_thresh,
  output wire sol_init,
  output wire sol_mode,
  output wire reset_b,
  output wire jam_edt_channels_in,
  output wire ijtag_so
);
reg    [20:0]       tdr;
reg                 retiming_so ;
reg                 sol_mask_1_latch;
reg                 sol_mask_0_latch;
reg                 sol_thresh_14_latch;
reg                 sol_thresh_13_latch;
reg                 sol_thresh_12_latch;
reg                 sol_thresh_11_latch;
reg                 sol_thresh_10_latch;
reg                 sol_thresh_9_latch;
reg                 sol_thresh_8_latch;
reg                 sol_thresh_7_latch;
reg                 sol_thresh_6_latch;
reg                 sol_thresh_5_latch;
reg                 sol_thresh_4_latch;
reg                 sol_thresh_3_latch;
reg                 sol_thresh_2_latch;
reg                 sol_thresh_1_latch;
reg                 sol_thresh_0_latch;
reg                 sol_init_latch;
reg                 sol_mode_latch;
reg                 reset_b_latch;
reg                 jam_edt_channels_in_latch;
 
 
assign sol_mask[1]                      = sol_mask_1_latch;
assign sol_mask[0]                      = sol_mask_0_latch;
assign sol_thresh[14]                   = sol_thresh_14_latch;
assign sol_thresh[13]                   = sol_thresh_13_latch;
assign sol_thresh[12]                   = sol_thresh_12_latch;
assign sol_thresh[11]                   = sol_thresh_11_latch;
assign sol_thresh[10]                   = sol_thresh_10_latch;
assign sol_thresh[9]                    = sol_thresh_9_latch;
assign sol_thresh[8]                    = sol_thresh_8_latch;
assign sol_thresh[7]                    = sol_thresh_7_latch;
assign sol_thresh[6]                    = sol_thresh_6_latch;
assign sol_thresh[5]                    = sol_thresh_5_latch;
assign sol_thresh[4]                    = sol_thresh_4_latch;
assign sol_thresh[3]                    = sol_thresh_3_latch;
assign sol_thresh[2]                    = sol_thresh_2_latch;
assign sol_thresh[1]                    = sol_thresh_1_latch;
assign sol_thresh[0]                    = sol_thresh_0_latch;
assign sol_init                         = sol_init_latch;
assign sol_mode                         = sol_mode_latch;
assign reset_b                          = reset_b_latch;
assign jam_edt_channels_in              = jam_edt_channels_in_latch;
 
// --------- ShiftRegister ---------
 
always @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { sol_mask_1_latch,
             sol_mask_0_latch,
             sol_thresh_14_latch,
             sol_thresh_13_latch,
             sol_thresh_12_latch,
             sol_thresh_11_latch,
             sol_thresh_10_latch,
             sol_thresh_9_latch,
             sol_thresh_8_latch,
             sol_thresh_7_latch,
             sol_thresh_6_latch,
             sol_thresh_5_latch,
             sol_thresh_4_latch,
             sol_thresh_3_latch,
             sol_thresh_2_latch,
             sol_thresh_1_latch,
             sol_thresh_0_latch,
             sol_init_latch,
             sol_mode_latch,
             reset_b_latch,
             jam_edt_channels_in_latch};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[20:1]};
  end
end
 
assign ijtag_so = retiming_so;
always @ (ijtag_tck or tdr[0]) begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
// --------- DataOutPort 20 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_mask_1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_mask_1_latch <= tdr[20];
    end
  end
end
 
// --------- DataOutPort 19 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_mask_0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_mask_0_latch <= tdr[19];
    end
  end
end
 
// --------- DataOutPort 18 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_14_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_14_latch <= tdr[18];
    end
  end
end
 
// --------- DataOutPort 17 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_13_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_13_latch <= tdr[17];
    end
  end
end
 
// --------- DataOutPort 16 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_12_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_12_latch <= tdr[16];
    end
  end
end
 
// --------- DataOutPort 15 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_11_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_11_latch <= tdr[15];
    end
  end
end
 
// --------- DataOutPort 14 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_10_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_10_latch <= tdr[14];
    end
  end
end
 
// --------- DataOutPort 13 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_9_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_9_latch <= tdr[13];
    end
  end
end
 
// --------- DataOutPort 12 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_8_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_8_latch <= tdr[12];
    end
  end
end
 
// --------- DataOutPort 11 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_7_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_7_latch <= tdr[11];
    end
  end
end
 
// --------- DataOutPort 10 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_6_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_6_latch <= tdr[10];
    end
  end
end
 
// --------- DataOutPort 9 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_5_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_5_latch <= tdr[9];
    end
  end
end
 
// --------- DataOutPort 8 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_4_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_4_latch <= tdr[8];
    end
  end
end
 
// --------- DataOutPort 7 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_3_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_3_latch <= tdr[7];
    end
  end
end
 
// --------- DataOutPort 6 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_2_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_2_latch <= tdr[6];
    end
  end
end
 
// --------- DataOutPort 5 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_1_latch <= tdr[5];
    end
  end
end
 
// --------- DataOutPort 4 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_thresh_0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_thresh_0_latch <= tdr[4];
    end
  end
end
 
// --------- DataOutPort 3 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_init_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_init_latch <= tdr[3];
    end
  end
end
 
// --------- DataOutPort 2 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sol_mode_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sol_mode_latch <= tdr[2];
    end
  end
end
 
// --------- DataOutPort 1 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    reset_b_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      reset_b_latch <= tdr[1];
    end
  end
end
 
// --------- DataOutPort 0 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    jam_edt_channels_in_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      jam_edt_channels_in_latch <= tdr[0];
    end
  end
end
 
endmodule
