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
//       Created on: Sun Oct 29 14:37:19 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate2_tessent_tdr_sri_ctrl (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire all_test,
  output wire occ_kill_clock_en,
  output wire se_pipeline_en,
  output wire ext_mode,
  output wire int_mode,
  output wire ext_edt_mode,
  output wire int_edt_mode,
  output wire ext_ltest_en,
  output wire int_ltest_en,
  output wire tck_occ_en,
  output wire async_set_reset_static_disable,
  output wire memory_bypass_en,
  output wire ltest_en,
  output wire fscan_clkungate,
  output wire ijtag_so
);
wire                all_test_to_buf;
wire                occ_kill_clock_en_to_buf;
wire                se_pipeline_en_to_buf;
wire                ext_mode_to_buf;
wire                int_mode_to_buf;
wire                ext_edt_mode_to_buf;
wire                int_edt_mode_to_buf;
wire                ext_ltest_en_to_buf;
wire                int_ltest_en_to_buf;
wire                tck_occ_en_to_buf;
wire                async_set_reset_static_disable_to_buf;
wire                memory_bypass_en_to_buf;
wire                ltest_en_to_buf;
wire                fscan_clkungate_to_buf;
reg    [13:0]       tdr;
reg                 retiming_so ;
reg                 all_test_latch;
reg                 occ_kill_clock_en_latch;
reg                 se_pipeline_en_latch;
reg                 ext_mode_latch;
reg                 int_mode_latch;
reg                 ext_edt_mode_latch;
reg                 int_edt_mode_latch;
reg                 ext_ltest_en_latch;
reg                 int_ltest_en_latch;
reg                 tck_occ_en_latch;
reg                 async_set_reset_static_disable_latch;
reg                 memory_bypass_en_latch;
reg                 ltest_en_latch;
reg                 fscan_clkungate_latch;
 
 
i0sbfn000ab1n02x5 tessent_persistent_cell_all_test ( .a (all_test_latch), .o (all_test) );
i0sbfn000ab1n02x5 tessent_persistent_cell_occ_kill_clock_en ( .a (occ_kill_clock_en_latch), .o (occ_kill_clock_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_se_pipeline_en ( .a (se_pipeline_en_latch), .o (se_pipeline_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_ext_mode ( .a (ext_mode_latch), .o (ext_mode) );
i0sbfn000ab1n02x5 tessent_persistent_cell_int_mode ( .a (int_mode_latch), .o (int_mode) );
i0sbfn000ab1n02x5 tessent_persistent_cell_ext_edt_mode ( .a (ext_edt_mode_latch), .o (ext_edt_mode) );
i0sbfn000ab1n02x5 tessent_persistent_cell_int_edt_mode ( .a (int_edt_mode_latch), .o (int_edt_mode) );
i0sbfn000ab1n02x5 tessent_persistent_cell_ext_ltest_en ( .a (ext_ltest_en_latch), .o (ext_ltest_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_int_ltest_en ( .a (int_ltest_en_latch), .o (int_ltest_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_tck_occ_en ( .a (tck_occ_en_latch), .o (tck_occ_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_async_set_reset_static_disable ( .a (async_set_reset_static_disable_latch), .o (async_set_reset_static_disable) );
i0sbfn000ab1n02x5 tessent_persistent_cell_memory_bypass_en ( .a (memory_bypass_en_latch), .o (memory_bypass_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_ltest_en ( .a (ltest_en_latch), .o (ltest_en) );
i0sbfn000ab1n02x5 tessent_persistent_cell_fscan_clkungate ( .a (fscan_clkungate_latch), .o (fscan_clkungate) );
 
// --------- ShiftRegister ---------
 
always @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { 14'b00000000000000};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[13:1]};
  end
end
 
assign ijtag_so = retiming_so;
always @ (ijtag_tck or tdr[0]) begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
// --------- DataOutPort 13 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    all_test_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      all_test_latch <= tdr[13];
    end
  end
end
 
// --------- DataOutPort 12 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    occ_kill_clock_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      occ_kill_clock_en_latch <= tdr[12];
    end
  end
end
 
// --------- DataOutPort 11 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    se_pipeline_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      se_pipeline_en_latch <= tdr[11];
    end
  end
end
 
// --------- DataOutPort 10 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    ext_mode_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      ext_mode_latch <= tdr[10];
    end
  end
end
 
// --------- DataOutPort 9 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    int_mode_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      int_mode_latch <= tdr[9];
    end
  end
end
 
// --------- DataOutPort 8 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    ext_edt_mode_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      ext_edt_mode_latch <= tdr[8];
    end
  end
end
 
// --------- DataOutPort 7 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    int_edt_mode_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      int_edt_mode_latch <= tdr[7];
    end
  end
end
 
// --------- DataOutPort 6 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    ext_ltest_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      ext_ltest_en_latch <= tdr[6];
    end
  end
end
 
// --------- DataOutPort 5 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    int_ltest_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      int_ltest_en_latch <= tdr[5];
    end
  end
end
 
// --------- DataOutPort 4 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    tck_occ_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      tck_occ_en_latch <= tdr[4];
    end
  end
end
 
// --------- DataOutPort 3 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    async_set_reset_static_disable_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      async_set_reset_static_disable_latch <= tdr[3];
    end
  end
end
 
// --------- DataOutPort 2 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    memory_bypass_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      memory_bypass_en_latch <= tdr[2];
    end
  end
end
 
// --------- DataOutPort 1 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    ltest_en_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      ltest_en_latch <= tdr[1];
    end
  end
end
 
// --------- DataOutPort 0 ---------
always @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    fscan_clkungate_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      fscan_clkungate_latch <= tdr[0];
    end
  end
end
 
endmodule
