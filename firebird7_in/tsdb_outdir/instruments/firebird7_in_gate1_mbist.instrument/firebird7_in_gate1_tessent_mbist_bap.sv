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
//       Created on: Sun Oct 29 14:14:48 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_mbist_bap (
// firebird7_in_gate1_tessent_mbist_bap {{{
  input wire reset,
  input wire ijtag_select,
  input wire si,
  input wire capture_en,
  input wire shift_en,
  output wire shift_en_R,
  input wire update_en,
  input wire tck,
  output wire to_interfaces_tck,
  output wire to_controllers_tck,
  input wire mcp_bounding_en,
  output wire mcp_bounding_to_en,
  input wire scan_en,
  output wire scan_to_en,
  input wire memory_bypass_en,
  output wire memory_bypass_to_en,
  input wire ltest_en,
  output wire ltest_to_en,
  output wire BIST_HOLD,
  output wire   ENABLE_MEM_RESET,
  output wire   REDUCED_ADDRESS_COUNT,
  output wire   BIST_SELECT_TEST_DATA,
  output wire   BIST_ALGO_MODE0,
  output wire   BIST_ALGO_MODE1,
  output wire   MEM_ARRAY_DUMP_MODE,
  output wire   BIRA_EN,
  output wire   BIST_DIAG_EN,
  output wire   PRESERVE_FUSE_REGISTER,
  output wire   CHECK_REPAIR_NEEDED,
  output wire   BIST_ASYNC_RESET,
  output wire   FL_CNT_MODE0,
  output wire   FL_CNT_MODE1,
  output wire   INCLUDE_MEM_RESULTS_REG,
  output wire   CHAIN_BYPASS_EN,
  output wire   TCK_MODE,
  output wire [2:0]   BIST_SETUP,
  input wire [0:0] MBISTPG_GO,
  input wire [0:0] MBISTPG_DONE,
  output wire [0:0] bistEn,
  output reg [0:0] toBist,
  input wire [0:0] fromBist,
  output wire so
);
wire [0:0] sib_scan_out;
wire [0:0] sib_bist_en;
wire [0:0] sib_bist_en_reg;
wire [0:0] sib_bist_en_latch;
wire tdr_so;
wire ENABLE_MEM_RESET_int;
wire REDUCED_ADDRESS_COUNT_int;
wire BIST_SELECT_TEST_DATA_int;
wire BIST_ALGO_MODE0_int;
wire BIST_ALGO_MODE1_int;
wire MEM_ARRAY_DUMP_MODE_int;
wire BIRA_EN_int;
wire BIST_DIAG_EN_int;
wire PRESERVE_FUSE_REGISTER_int;
wire CHECK_REPAIR_NEEDED_int;
wire FL_CNT_MODE0_int;
wire FL_CNT_MODE1_int;
wire INCLUDE_MEM_RESULTS_REG_int;
wire CHAIN_BYPASS_EN_int;
wire CHAIN_BYPASS_EN_reg;
wire [2:0] BIST_SETUP_int;
wire [2:0] BIST_SETUP_reg;
wire  BIST_ASYNC_RESET_to_buf;
wire  TCK_MODE_to_buf;
assign ltest_to_en         = ltest_en;
assign memory_bypass_to_en = memory_bypass_en;
assign scan_to_en          = scan_en;
assign mcp_bounding_to_en  = mcp_bounding_en;
 
// TDR instance {{{
wire ijtag_select_bap_tdr;
firebird7_in_gate1_tessent_mbist_bap_tdr tdr_inst (
  .reset            (reset),
  .ijtag_select     (ijtag_select_bap_tdr),
  .si               (si),
  .capture_en       (capture_en),
  .shift_en         (shift_en),
  .update_en        (update_en),
  .tck              (tck),
  .ltest_en         (ltest_en),
  .ENABLE_MEM_RESET ( ENABLE_MEM_RESET_int ),
  .REDUCED_ADDRESS_COUNT( REDUCED_ADDRESS_COUNT_int ),
  .BIST_SELECT_TEST_DATA( BIST_SELECT_TEST_DATA_int ),
  .BIST_ALGO_MODE0  ( BIST_ALGO_MODE0_int ),
  .BIST_ALGO_MODE1  ( BIST_ALGO_MODE1_int ),
  .MEM_ARRAY_DUMP_MODE( MEM_ARRAY_DUMP_MODE_int ),
  .BIRA_EN          ( BIRA_EN_int ),
  .BIST_DIAG_EN     ( BIST_DIAG_EN_int ),
  .PRESERVE_FUSE_REGISTER( PRESERVE_FUSE_REGISTER_int ),
  .CHECK_REPAIR_NEEDED( CHECK_REPAIR_NEEDED_int ),
  .BIST_ASYNC_RESET ( BIST_ASYNC_RESET_to_buf ),
  .FL_CNT_MODE0     ( FL_CNT_MODE0_int ),
  .FL_CNT_MODE1     ( FL_CNT_MODE1_int ),
  .INCLUDE_MEM_RESULTS_REG( INCLUDE_MEM_RESULTS_REG_int ),
  .CHAIN_BYPASS_EN  ( CHAIN_BYPASS_EN_int ),
  .CHAIN_BYPASS_EN_reg( CHAIN_BYPASS_EN_reg ),
  .TCK_MODE         ( TCK_MODE_to_buf ),
  .BIST_SETUP       ( BIST_SETUP_int ),
  .BIST_SETUP_reg   ( BIST_SETUP_reg ),
  .so               (tdr_so)
);
// TDR instance }}}
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_SETUP_2_buf (.a(BIST_SETUP_int[2]),.o(BIST_SETUP[2]));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_SETUP_1_buf (.a(BIST_SETUP_int[1]),.o(BIST_SETUP[1]));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_SETUP_0_buf (.a(BIST_SETUP_int[0]),.o(BIST_SETUP[0]));
// SIB firebird7_in_gate1_tessent_mbist_controller_sib_tdr_bypass_inst instance {{{
wire tdr_bypass_so;
firebird7_in_gate1_tessent_mbist_bap_sib firebird7_in_gate1_tessent_mbist_controller_sib_tdr_bypass_inst (
  .reset             (reset),
  .si                (si),
  .capture_en        (capture_en),
  .shift_en          (shift_en),
  .update_en         (update_en),
  .tck               (tck),
  .ijtag_select      (ijtag_select),
  .ijtag_to_select   (ijtag_select_bap_tdr),
  .ijtag_to_select_reg  ( ),
  .from_scan_out     (tdr_so),
  .so                (tdr_bypass_so)); 
// SIB firebird7_in_gate1_tessent_mbist_controller_sib_tdr_bypass_inst instance }}}
wire ChainBypassMode_int;
assign ChainBypassMode_int = CHAIN_BYPASS_EN_int | BIST_SETUP_int[1];
reg [0:0] fromBist_retime;
wire ijtag_select_ctl_sib;
wire ijtag_select_ctl_sib_reg;
// SIB 0 instance {{{
firebird7_in_gate1_tessent_mbist_bap_ctl_sib firebird7_in_gate1_tessent_mbist_controller_sib_inst0 (
  .reset             (reset),
  .si                (tdr_bypass_so),
  .capture_en        (capture_en),
  .shift_en          (shift_en),
  .update_en         (update_en),
  .tck               (tck),
  .bist_go           (MBISTPG_GO[0]), 
  .bist_done         (MBISTPG_DONE[0]), 
  .ijtag_select      (ijtag_select_ctl_sib),
  .bistEn            (sib_bist_en[0]),
  .bistEn_reg        (sib_bist_en_reg[0]),
  .bistEn_latch      (sib_bist_en_latch[0]),
  .from_scan_out     (fromBist_retime[0]),
  .ChainBypassMode   (ChainBypassMode_int),
  .so                (sib_scan_out[0])); 
 
// SIB 0 instance }}}
// SIB firebird7_in_gate1_tessent_mbist_controller_sib_ctl_bypass_inst instance {{{
wire sib_ctl_bypass_so;
firebird7_in_gate1_tessent_mbist_bap_sib firebird7_in_gate1_tessent_mbist_controller_sib_ctl_bypass_inst (
  .reset             (reset),
  .si                (tdr_bypass_so),
  .capture_en        (capture_en),
  .shift_en          (shift_en),
  .update_en         (update_en),
  .tck               (tck),
  .ijtag_select      (ijtag_select),
  .ijtag_to_select   (ijtag_select_ctl_sib ),
  .ijtag_to_select_reg  (ijtag_select_ctl_sib_reg ),
  .from_scan_out     (sib_scan_out[0]),
  .so                (sib_ctl_bypass_so)); 
 
// SIB firebird7_in_gate1_tessent_mbist_controller_sib_ctl_bypass_inst instance }}}
// --------- Bist hold  ---------
// [start] : BistHold pipeline {{{
wire BIST_HOLD_to_latch;
reg BIST_HOLD_latch;
assign BIST_HOLD_to_latch = ijtag_select_ctl_sib_reg & (~BIST_SETUP_reg[1]) & (~CHAIN_BYPASS_EN_reg) & (|sib_bist_en_reg) ;
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    BIST_HOLD_latch     <= 1'b0;
  end else if (update_en & ijtag_select) begin
    BIST_HOLD_latch     <= BIST_HOLD_to_latch;
  end
end
// [end]   : BistHold pipeline }}}
wire to_mbist_tck_en;
wire update_setup_chain_retime;
assign update_setup_chain_retime = ijtag_select & capture_en & (~BIST_SETUP_int[1]) & (~(|sib_bist_en_latch));
assign to_mbist_tck_en = shift_en_R | update_setup_chain_retime;
assign shift_en_R = ijtag_select_ctl_sib & shift_en & (~ChainBypassMode_int) & (|sib_bist_en_latch);
reg                 retiming_so ;
always_ff @ (negedge tck) begin 
  retiming_so <= sib_ctl_bypass_so;
end
always_ff @ (negedge tck) begin 
  fromBist_retime <= fromBist;
end
assign so = retiming_so;
always_ff @ (negedge tck) begin 
  toBist[0] <= tdr_bypass_so;
end
// --------- to_controllers_tck (inversion) -----------
wire tck_out_gated;
i0scilb01ab1n02x5 tessent_persistent_cell_GATING_TCK (
  .clk              (tck),
  .te               (1'b0),
  .en               (to_mbist_tck_en),
  .clkout           (tck_out_gated)
);
  i0scbf000ab1n02x5 tessent_persistent_cell_BUF_C_TCK (
    .clk             (tck_out_gated),
    .clkout          (to_controllers_tck)
  );
  i0scbf000ab1n02x5 tessent_persistent_cell_BUF_I_TCK (
    .clk             (tck_out_gated),
    .clkout          (to_interfaces_tck)
  );
 
// --------- Persistent Buffers for SDC anchors -----------
i0sbfn000ab1n02x5 tessent_persistent_cell_bistEn_0 (.a(sib_bist_en[0]),.o(bistEn[0]));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_ASYNC_RESET (.a(BIST_ASYNC_RESET_to_buf),.o(BIST_ASYNC_RESET));
i0sbfn000ab1n02x5 tessent_persistent_cell_TCK_MODE (.a(TCK_MODE_to_buf),.o(TCK_MODE));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_HOLD (.a(BIST_HOLD_latch),.o(BIST_HOLD));
i0sbfn000ab1n02x5 tessent_persistent_cell_ENABLE_MEM_RESET_buf (.a(ENABLE_MEM_RESET_int),.o(ENABLE_MEM_RESET));
i0sbfn000ab1n02x5 tessent_persistent_cell_REDUCED_ADDRESS_COUNT_buf (.a(REDUCED_ADDRESS_COUNT_int),.o(REDUCED_ADDRESS_COUNT));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_SELECT_TEST_DATA_buf (.a(BIST_SELECT_TEST_DATA_int),.o(BIST_SELECT_TEST_DATA));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_ALGO_MODE0_buf (.a(BIST_ALGO_MODE0_int),.o(BIST_ALGO_MODE0));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_ALGO_MODE1_buf (.a(BIST_ALGO_MODE1_int),.o(BIST_ALGO_MODE1));
i0sbfn000ab1n02x5 tessent_persistent_cell_MEM_ARRAY_DUMP_MODE_buf (.a(MEM_ARRAY_DUMP_MODE_int),.o(MEM_ARRAY_DUMP_MODE));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIRA_EN_buf (.a(BIRA_EN_int),.o(BIRA_EN));
i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_DIAG_EN_buf (.a(BIST_DIAG_EN_int),.o(BIST_DIAG_EN));
i0sbfn000ab1n02x5 tessent_persistent_cell_PRESERVE_FUSE_REGISTER_buf (.a(PRESERVE_FUSE_REGISTER_int),.o(PRESERVE_FUSE_REGISTER));
i0sbfn000ab1n02x5 tessent_persistent_cell_CHECK_REPAIR_NEEDED_buf (.a(CHECK_REPAIR_NEEDED_int),.o(CHECK_REPAIR_NEEDED));
i0sbfn000ab1n02x5 tessent_persistent_cell_FL_CNT_MODE0_buf (.a(FL_CNT_MODE0_int),.o(FL_CNT_MODE0));
i0sbfn000ab1n02x5 tessent_persistent_cell_FL_CNT_MODE1_buf (.a(FL_CNT_MODE1_int),.o(FL_CNT_MODE1));
i0sbfn000ab1n02x5 tessent_persistent_cell_INCLUDE_MEM_RESULTS_REG_buf (.a(INCLUDE_MEM_RESULTS_REG_int),.o(INCLUDE_MEM_RESULTS_REG));
i0sbfn000ab1n02x5 tessent_persistent_cell_CHAIN_BYPASS_EN_buf (.a(CHAIN_BYPASS_EN_int),.o(CHAIN_BYPASS_EN));
// firebird7_in_gate1_tessent_mbist_bap }}}
endmodule
 
module firebird7_in_gate1_tessent_mbist_bap_tdr (
// firebird7_in_gate1_tessent_mbist_bap_tdr {{{
  input wire reset,
  input wire ijtag_select,
  input wire si,
  input wire capture_en,
  input wire shift_en,
  input wire update_en,
  input wire tck,
  input wire ltest_en,
  output wire ENABLE_MEM_RESET,
  output wire REDUCED_ADDRESS_COUNT,
  output wire BIST_SELECT_TEST_DATA,
  output wire BIST_ALGO_MODE0,
  output wire BIST_ALGO_MODE1,
  output wire MEM_ARRAY_DUMP_MODE,
  output wire BIRA_EN,
  output wire BIST_DIAG_EN,
  output wire PRESERVE_FUSE_REGISTER,
  output wire CHECK_REPAIR_NEEDED,
  output wire BIST_ASYNC_RESET,
  output wire FL_CNT_MODE0,
  output wire FL_CNT_MODE1,
  output wire INCLUDE_MEM_RESULTS_REG,
  output wire CHAIN_BYPASS_EN,
  output wire CHAIN_BYPASS_EN_reg,
  output wire TCK_MODE,
  output wire [2:0] BIST_SETUP,
  output wire [2:0] BIST_SETUP_reg,
  output wire so
);
// Shift Register {{{
reg    [18:0]       tdr;
reg                 tdr_latch18;
reg                 tdr_latch17;
reg                 tdr_latch16;
reg                 tdr_latch15;
reg                 tdr_latch14;
reg                 tdr_latch13;
reg                 tdr_latch12;
reg                 tdr_latch11;
reg                 tdr_latch10;
reg                 tdr_latch9;
reg                 tdr_latch8;
reg                 tdr_latch7;
reg                 tdr_latch6;
reg                 tdr_latch5;
reg                 tdr_latch4;
reg                 tdr_latch3;
reg                 tdr_latch2;
reg                 tdr_latch1;
reg                 tdr_latch0;
always_ff @ (posedge tck) begin
  if (capture_en & ijtag_select) begin
    tdr <= { tdr_latch18,
             tdr_latch17,
             tdr_latch16,
             tdr_latch15,
             tdr_latch14,
             tdr_latch13,
             tdr_latch12,
             tdr_latch11,
             tdr_latch10,
             tdr_latch9,
             tdr_latch8,
             tdr_latch7,
             tdr_latch6,
             tdr_latch5,
             tdr_latch4,
             tdr_latch3,
             tdr_latch2,
             tdr_latch1,
             tdr_latch0};
  end else if (shift_en & ijtag_select) begin
    tdr <= {si,tdr[18:1]};
  end
end
// Shift Register }}}
// Update Latches {{{
// --------- DataOutPort 18 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch18 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch18 <= tdr[18];
    end
  end
end
// --------- DataOutPort 17 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch17 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch17 <= tdr[17];
    end
  end
end
// --------- DataOutPort 16 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch16 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch16 <= tdr[16];
    end
  end
end
// --------- DataOutPort 15 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch15 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch15 <= tdr[15];
    end
  end
end
// --------- DataOutPort 14 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch14 <= 1'b1;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch14 <= tdr[14];
    end
  end
end
// --------- DataOutPort 13 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch13 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch13 <= tdr[13];
    end
  end
end
// --------- DataOutPort 12 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch12 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch12 <= tdr[12];
    end
  end
end
// --------- DataOutPort 11 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch11 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch11 <= tdr[11];
    end
  end
end
// --------- DataOutPort 10 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch10 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch10 <= tdr[10];
    end
  end
end
// --------- DataOutPort 9 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch9 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch9 <= tdr[9];
    end
  end
end
// --------- DataOutPort 8 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch8 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch8 <= tdr[8];
    end
  end
end
// --------- DataOutPort 7 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch7 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch7 <= tdr[7];
    end
  end
end
// --------- DataOutPort 6 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch6 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch6 <= tdr[6];
    end
  end
end
// --------- DataOutPort 5 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch5 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch5 <= tdr[5];
    end
  end
end
// --------- DataOutPort 4 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch4 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch4 <= tdr[4];
    end
  end
end
// --------- DataOutPort 3 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch3 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch3 <= tdr[3];
    end
  end
end
// --------- DataOutPort 2 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch2 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch2 <= tdr[2];
    end
  end
end
// --------- DataOutPort 1 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch1 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch1 <= tdr[1];
    end
  end
end
// --------- DataOutPort 0 ---------
always_ff @ (negedge tck or negedge reset) begin
  if (~reset) begin
    tdr_latch0 <= 1'b0;
  end else begin
    if (update_en & ijtag_select) begin
      tdr_latch0 <= tdr[0];
    end
  end
end
// Update Latches }}}
// Data Output Ports {{{
assign BIST_SETUP[2] = tdr_latch18;
assign BIST_SETUP_reg[2] = tdr[18];
assign BIST_SETUP[1] = tdr_latch17;
assign BIST_SETUP_reg[1] = tdr[17];
assign BIST_SETUP[0] = tdr_latch16;
assign BIST_SETUP_reg[0] = tdr[16];
assign TCK_MODE     = tdr_latch15;
assign CHAIN_BYPASS_EN = tdr_latch14;
assign CHAIN_BYPASS_EN_reg = tdr[14];
assign INCLUDE_MEM_RESULTS_REG = tdr_latch13;
assign FL_CNT_MODE1 = tdr_latch12;
assign FL_CNT_MODE0 = tdr_latch11;
i0smbn022ab1n02x5 tessent_persistent_cell_BIST_ASYNC_RESET_mux (.b(tdr_latch10),.a(reset),.sa(ltest_en),.o(BIST_ASYNC_RESET));
assign CHECK_REPAIR_NEEDED = tdr_latch9;
assign PRESERVE_FUSE_REGISTER = tdr_latch8;
assign BIST_DIAG_EN = tdr_latch7;
assign BIRA_EN      = tdr_latch6;
assign MEM_ARRAY_DUMP_MODE = tdr_latch5;
assign BIST_ALGO_MODE1 = tdr_latch4;
assign BIST_ALGO_MODE0 = tdr_latch3;
assign BIST_SELECT_TEST_DATA = tdr_latch2;
assign REDUCED_ADDRESS_COUNT = tdr_latch1;
assign ENABLE_MEM_RESET = tdr_latch0;
// Data Output Ports }}}
  
assign so = tdr[0];
// firebird7_in_gate1_tessent_mbist_bap_tdr }}}
endmodule
 
module firebird7_in_gate1_tessent_mbist_bap_sib (
// firebird7_in_gate1_tessent_mbist_controller_sib {{{
   input wire reset,
   input wire ijtag_select,
   input wire si,
   input wire capture_en,
   input wire shift_en,
   input wire update_en,
   input wire tck,
   output wire so,
   input wire from_scan_out,
   output wire ijtag_to_select_reg,
   output wire ijtag_to_select
);
   reg            sib;
   reg            sib_latch;
   reg            to_enable_int;
   assign ijtag_to_select_reg = sib;
   assign ijtag_to_select = ijtag_select & to_enable_int;
   always_ff @ (negedge tck or negedge reset) begin
      if (~reset) begin
         sib_latch     <= 1'b0;
      end else if (update_en & ijtag_select) begin
         sib_latch     <= sib;
      end
   end
   always_ff @ (negedge tck or negedge reset) begin
      if (~reset) begin
         to_enable_int <= 1'b0;
      end else  begin
         to_enable_int <= sib_latch;
      end
   end
 
   assign so = sib;
 
   always_ff @ (posedge tck) begin
      if (capture_en & ijtag_select) begin
         sib <= 1'b0;
      end else if (shift_en & ijtag_select) begin
         if (sib_latch) begin
            sib <= from_scan_out;
         end else begin
            sib <= si;
         end
      end
   end
// firebird7_in_gate1_tessent_mbist_controller_sib }}}
endmodule
module firebird7_in_gate1_tessent_mbist_bap_ctl_sib (
// firebird7_in_gate1_tessent_mbist_controller_sib {{{
   input wire reset,
   input wire ijtag_select,
   input wire si,
   input wire capture_en,
   input wire shift_en,
   input wire update_en,
   input wire tck,
   output wire so,
   input wire from_scan_out,
   input wire ChainBypassMode,
   input wire bist_done,
   input wire bist_go,
   output wire bistEn_reg,
   output wire bistEn_latch,
   output wire bistEn
);
   reg            sib;
   reg            tdr;
   reg            sib_latch;
   reg            to_enable_int;
   assign bistEn = to_enable_int;
   assign bistEn_reg = sib;
   assign bistEn_latch = sib_latch;
   always_ff @ (negedge tck or negedge reset) begin
      if (~reset) begin
         sib_latch     <= 1'b0;
      end else if (update_en & ijtag_select) begin
         sib_latch     <= sib;
      end
   end
   always_ff @ (negedge tck or negedge reset) begin
      if (~reset) begin
         to_enable_int <= 1'b0;
      end else  begin
         to_enable_int <= sib_latch;
      end
   end
 
   assign so = sib;
 
   always_ff @ (posedge tck) begin
      if (capture_en & ijtag_select) begin
         tdr <= bist_done;
         sib <= bist_go;
      end else if (shift_en & ijtag_select) begin
         if (sib_latch & (ChainBypassMode==0)) begin
            tdr <= from_scan_out;
         end else begin
            tdr <= si;
         end
         sib <= tdr;
      end
   end
// firebird7_in_gate1_tessent_mbist_controller_sib }}}
endmodule
