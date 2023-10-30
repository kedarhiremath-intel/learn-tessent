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
<<<<<<< HEAD
//       Created on: Sun Oct 29 23:49:35 PDT 2023
=======
//       Created on: Sun Oct 29 14:14:07 PDT 2023
>>>>>>> 4e4549e56b67a7b4dea437b7120c3145ada194bf
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire hdspsr_trim_ovrd_en,
  output wire hdspsr_wa_override2,
  output wire hdspsr_wa_override1,
  output wire hdspsr_wa_override0,
  output wire hdspsr_ra_override1,
  output wire hdspsr_ra_override0,
  output wire hdspsr_wmce_override1,
  output wire hdspsr_wmce_override0,
  output wire hdspsr_wpulse_override1,
  output wire hdspsr_wpulse_override0,
  output wire hdspsr_mce_override,
  output wire hdspsr_shutoff_override,
  output wire hdspsr_wa_disable_override,
  output wire hdspsr_stbyp_override,
  output wire hdspsr_rmce_override3,
  output wire hdspsr_rmce_override2,
  output wire hdspsr_rmce_override1,
  output wire hdspsr_rmce_override0,
  output wire hdspsr_sbc_override1,
  output wire hdspsr_sbc_override0,
  output wire ijtag_so
);
reg    [19:0]       tdr;
reg                 retiming_so ;
reg                 hdspsr_trim_ovrd_en_latch;
reg                 hdspsr_wa_override2_latch;
reg                 hdspsr_wa_override1_latch;
reg                 hdspsr_wa_override0_latch;
reg                 hdspsr_ra_override1_latch;
reg                 hdspsr_ra_override0_latch;
reg                 hdspsr_wmce_override1_latch;
reg                 hdspsr_wmce_override0_latch;
reg                 hdspsr_wpulse_override1_latch;
reg                 hdspsr_wpulse_override0_latch;
reg                 hdspsr_mce_override_latch;
reg                 hdspsr_shutoff_override_latch;
reg                 hdspsr_wa_disable_override_latch;
reg                 hdspsr_stbyp_override_latch;
reg                 hdspsr_rmce_override3_latch;
reg                 hdspsr_rmce_override2_latch;
reg                 hdspsr_rmce_override1_latch;
reg                 hdspsr_rmce_override0_latch;
reg                 hdspsr_sbc_override1_latch;
reg                 hdspsr_sbc_override0_latch;
 
 
assign hdspsr_trim_ovrd_en              = hdspsr_trim_ovrd_en_latch;
assign hdspsr_wa_override2              = hdspsr_wa_override2_latch;
assign hdspsr_wa_override1              = hdspsr_wa_override1_latch;
assign hdspsr_wa_override0              = hdspsr_wa_override0_latch;
assign hdspsr_ra_override1              = hdspsr_ra_override1_latch;
assign hdspsr_ra_override0              = hdspsr_ra_override0_latch;
assign hdspsr_wmce_override1            = hdspsr_wmce_override1_latch;
assign hdspsr_wmce_override0            = hdspsr_wmce_override0_latch;
assign hdspsr_wpulse_override1          = hdspsr_wpulse_override1_latch;
assign hdspsr_wpulse_override0          = hdspsr_wpulse_override0_latch;
assign hdspsr_mce_override              = hdspsr_mce_override_latch;
assign hdspsr_shutoff_override          = hdspsr_shutoff_override_latch;
assign hdspsr_wa_disable_override       = hdspsr_wa_disable_override_latch;
assign hdspsr_stbyp_override            = hdspsr_stbyp_override_latch;
assign hdspsr_rmce_override3            = hdspsr_rmce_override3_latch;
assign hdspsr_rmce_override2            = hdspsr_rmce_override2_latch;
assign hdspsr_rmce_override1            = hdspsr_rmce_override1_latch;
assign hdspsr_rmce_override0            = hdspsr_rmce_override0_latch;
assign hdspsr_sbc_override1             = hdspsr_sbc_override1_latch;
assign hdspsr_sbc_override0             = hdspsr_sbc_override0_latch;
 
// --------- ShiftRegister ---------
 
always_ff @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { hdspsr_trim_ovrd_en_latch,
             hdspsr_wa_override2_latch,
             hdspsr_wa_override1_latch,
             hdspsr_wa_override0_latch,
             hdspsr_ra_override1_latch,
             hdspsr_ra_override0_latch,
             hdspsr_wmce_override1_latch,
             hdspsr_wmce_override0_latch,
             hdspsr_wpulse_override1_latch,
             hdspsr_wpulse_override0_latch,
             hdspsr_mce_override_latch,
             hdspsr_shutoff_override_latch,
             hdspsr_wa_disable_override_latch,
             hdspsr_stbyp_override_latch,
             hdspsr_rmce_override3_latch,
             hdspsr_rmce_override2_latch,
             hdspsr_rmce_override1_latch,
             hdspsr_rmce_override0_latch,
             hdspsr_sbc_override1_latch,
             hdspsr_sbc_override0_latch};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[19:1]};
  end
end
 
assign ijtag_so = retiming_so;
always_latch begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
// --------- DataOutPort 19 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_trim_ovrd_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_trim_ovrd_en_latch <= tdr[19];
    end
  end
end
 
// --------- DataOutPort 18 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wa_override2_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wa_override2_latch <= tdr[18];
    end
  end
end
 
// --------- DataOutPort 17 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wa_override1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wa_override1_latch <= tdr[17];
    end
  end
end
 
// --------- DataOutPort 16 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wa_override0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wa_override0_latch <= tdr[16];
    end
  end
end
 
// --------- DataOutPort 15 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_ra_override1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_ra_override1_latch <= tdr[15];
    end
  end
end
 
// --------- DataOutPort 14 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_ra_override0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_ra_override0_latch <= tdr[14];
    end
  end
end
 
// --------- DataOutPort 13 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wmce_override1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wmce_override1_latch <= tdr[13];
    end
  end
end
 
// --------- DataOutPort 12 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wmce_override0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wmce_override0_latch <= tdr[12];
    end
  end
end
 
// --------- DataOutPort 11 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wpulse_override1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wpulse_override1_latch <= tdr[11];
    end
  end
end
 
// --------- DataOutPort 10 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wpulse_override0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wpulse_override0_latch <= tdr[10];
    end
  end
end
 
// --------- DataOutPort 9 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_mce_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_mce_override_latch <= tdr[9];
    end
  end
end
 
// --------- DataOutPort 8 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_shutoff_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_shutoff_override_latch <= tdr[8];
    end
  end
end
 
// --------- DataOutPort 7 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_wa_disable_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_wa_disable_override_latch <= tdr[7];
    end
  end
end
 
// --------- DataOutPort 6 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_stbyp_override_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_stbyp_override_latch <= tdr[6];
    end
  end
end
 
// --------- DataOutPort 5 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_rmce_override3_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_rmce_override3_latch <= tdr[5];
    end
  end
end
 
// --------- DataOutPort 4 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_rmce_override2_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_rmce_override2_latch <= tdr[4];
    end
  end
end
 
// --------- DataOutPort 3 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_rmce_override1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_rmce_override1_latch <= tdr[3];
    end
  end
end
 
// --------- DataOutPort 2 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_rmce_override0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_rmce_override0_latch <= tdr[2];
    end
  end
end
 
// --------- DataOutPort 1 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_sbc_override1_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_sbc_override1_latch <= tdr[1];
    end
  end
end
 
// --------- DataOutPort 0 ---------
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    hdspsr_sbc_override0_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      hdspsr_sbc_override0_latch <= tdr[0];
    end
  end
end
 
endmodule
