/*
----------------------------------------------------------------------------------
-                                                                                -
-  Unpublished work. Copyright 2022 Siemens                                      -
-                                                                                -
-  This material contains trade secrets or otherwise confidential                -
-  information owned by Siemens Industry Software Inc. or its affiliates         -
-  (collectively, SISW), or its licensors. Access to and use of this             -
-  information is strictly limited as set forth in the Customer's                -
-  applicable agreements with SISW.                                              -
-                                                                                -
----------------------------------------------------------------------------------
-  File created by: Tessent Shell                                                -
-          Version: 2022.4                                                       -
-       Created on: Mon Oct 23 12:51:56 PDT 2023                                 -
----------------------------------------------------------------------------------


*/

/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_interface_m5
 
     Description :  This module contains the interface logic for the memory
                    module ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper
 
--------------------------------------------------------------------------------
     Interface Options in Effect
 
     BistDataPipelineStages        : 0;
     BitGrouping                   : 1;
     BitSliceWidth                 : 1;
     ConcurrentWrite               : OFF 
     ConcurrentRead                : OFF 
     ControllerType                : PROG;
     DataOutStage                  : NONE;
     DefaultAlgorithm              : INTELLVPMOVIFX;
     DefaultOperationSet           : SYNCCUSTOM;
     InternalScanLogic             : OFF;
     LocalComparators              : ON;
     MemoryType                    : RAM;
     ObservationLogic              : ON;
     OutputEnableControl           : ALWAYSON;
     PipelineSerialDataOut         : OFF;
     ScanWriteThru                 : OFF;
     ShadowRead                    : OFF;
     ShadowWrite                   : OFF;
     Stop-On-Error Limit           : 65536;
     TransparentMode               : SYNCMUX;
     RedundancyAnalysisType        : RC;
 
---------------------------------------------------------------------------- */

module firebird7_in_gate1_tessent_mbist_c1_interface_m5 (
  input  wire        PriorityColumn,
  input  wire        BIST_CLEAR_BIRA,
  input  wire        wen_IN,
  input  wire        ren_IN,
  input  wire [9:0]  adr_IN,
  input  wire [21:0] din_IN,
  input  wire [21:0] q_IN,
  input  wire        TCK,
  input  wire        BIST_CMP,
  input  wire        INCLUDE_MEM_RESULTS_REG,
  input  wire        BIST_WRITEENABLE,
  input  wire        BIST_READENABLE,
  input  wire [2:0]  BIST_COL_ADD,
  input  wire [6:0]  BIST_ROW_ADD,
  input  wire [3:0]  BIST_WRITE_DATA,
  input  wire        CHKBCI_PHASE,
  input  wire        BIST_TESTDATA_SELECT_TO_COLLAR,
  input  wire        MEM_BYPASS_EN,
  input  wire        SCAN_SHIFT_EN,
  input  wire        MCP_BOUNDING_EN,
  input  wire        BIST_ON,
  input  wire        BIST_RUN,
  input  wire        BIST_ASYNC_RESETN,
  input  wire        BIST_CLK,
  input  wire        BIST_SHIFT_COLLAR,
  input  wire [3:0]  BIST_EXPECT_DATA,
  input  wire        BIST_SI,
  input  wire        BIST_COLLAR_SETUP,
  input  wire        BIST_COLLAR_OPSET_SELECT,
  input  wire        BIST_COLLAR_HOLD,
  input  wire        BIST_BIRA_EN,
  input  wire        CHECK_REPAIR_NEEDED,
  input  wire        BIST_DIAG_EN,
  input  wire        BIST_CLEAR_DEFAULT,
  input  wire        BIST_CLEAR,
  input  wire        BIST_SETUP2,
  input  wire        BIST_SETUP1,
  input  wire        BIST_SETUP0,
  input  wire        LV_TM,
  input  wire        FREEZE_STOP_ERROR,
  input  wire        BIST_COLLAR_EN,
  input  wire [6:0]  FROM_BISR_ALL_SROW0_FUSE_ADD_REG,
  input  wire        FROM_BISR_ALL_SROW0_ALLOC_REG,
  input  wire [6:0]  FROM_BISR_ALL_SROW1_FUSE_ADD_REG,
  input  wire        FROM_BISR_ALL_SROW1_ALLOC_REG,
  input  wire [4:0]  FROM_BISR_All_SCOL0_FUSE_REG,
  input  wire        FROM_BISR_All_SCOL0_ALLOC_REG,
  input  wire        BIST_SHIFT_BIRA_COLLAR,
  input  wire        RESET_REG_SETUP2,
  input  wire        ERROR_CNT_ZERO,
  output wire        wen,
  output wire        ren,
  output reg  [9:0]  adr,
  output reg  [21:0] din,
  output reg  [21:0] q,
  output reg  [3:0]  SCAN_OBS_FLOPS,
  output wire        BIST_SO,
  output wire        BIST_GO,
  output wire [6:0]  ALL_SROW0_FUSE_ADD_REG,
  output wire        ALL_SROW0_ALLOC_REG,
  output wire [6:0]  ALL_SROW1_FUSE_ADD_REG,
  output wire        ALL_SROW1_ALLOC_REG,
  output wire [4:0]  All_SCOL0_FUSE_REG,
  output wire        All_SCOL0_ALLOC_REG,
  output reg  [1:0]  REPAIR_STATUS
);


wire        MBISTPG_BIRA_SETUP;
wire [6:0]  BIRA_ROW_ADD;
wire        CMP_EN;
wire [21:0] BIST_WRITE_DATA_REP;
wire [21:0] BIST_WRITE_DATA_INT;
reg         BIST_INPUT_SELECT;
wire        BIST_EN_RST;
wire        BIST_CLK_INT;
wire        BIST_CLK_OR_TCK;
wire [21:0] BIST_EXPECT_DATA_REP;
wire [21:0] BIST_EXPECT_DATA_INT;
wire        BIST_CLK_EN;
wire        BIST_GO_FROM_STATUS;
wire        GO_EN;
wire        COLLAR_STATUS_SO;
wire        STATUS_SO;
wire        BIST_COLLAR_BIRA_SO;
wire        BIRA_STATUS_SO;
wire        BIST_SO_RA;
wire        BIST_ON_TO_IO_RA;
wire [9:0]  BIST_ADD;
wire        COLLAR_STATUS_SI;
wire        BIST_INPUT_SELECT_INT;
wire [0:0]  ERROR;
wire [0:0]  ERROR_R;
wire [0:0]  MultiBitError_R;
wire [0:0]  ERROR_R_A;
wire [4:0]  IOIndex0_R;
wire        ErrorGlobal;
wire        RepairedBySpareColumn;
wire        RepairableBySpareColumn;
wire        RepairableBySpareRow;
wire        RepairedBySpareRow;
wire [21:0] RAW_CMP_STAT;
wire [21:0] DATA_TO_MEM;
wire [21:0] DATA_FROM_MEM;
wire [21:0] DATA_FROM_MEM_EXP;
wire [1:0]  OPSET_SELECT_DECODED;
wire [1:0]  DEFAULT_OPSET_SEL;
wire        DEFAULT_OPSET_REG_BUS;
wire        wen_TEST_IN;
reg         wen_NOT_GATED;
wire        wen_TO_MUX;
wire        ren_TEST_IN;
reg         ren_NOT_GATED;
wire        ren_TO_MUX;
wire [9:0]  adr_TEST_IN;
wire [21:0] din_DIN_OBS;
wire [21:0] q_TO_BYPASS;
wire [21:0] q_FROM_BYPASS;
wire [21:0] din_TEST_IN;
reg  [21:0] q_SCAN_IN;
wire        EDATA_CKB_EN;
wire        EDATA_COL_ADD_BIT0;
wire        BIST_COLLAR_EN_PIPE;
reg         BIST_COLLAR_EN_PIPE_0;
wire        EDATA_CKB_EN_PIPE;
reg         EDATA_CKB_EN_PIPE_0;
wire        EDATA_COL_ADD_BIT0_PIPE;
reg         EDATA_COL_ADD_BIT0_PIPE_0;
wire [6:0]  BIST_ROW_ADD_PIPE;
reg  [6:0]  BIST_ROW_ADD_PIPE_0;
wire        USE_DEFAULTS;
wire        BIST_COLLAR_HOLD_INT;
wire        FREEZE_STOP_ERROR_RST;
wire        FREEZE_STOP_ERROR_SI;
wire        HOLD_EN;
wire        BIST_SETUP0_SYNC;
wire        LOGIC_HIGH;
wire [6:0]  BIST_ROW_ADD_R1;
reg  [6:0]  BIST_ROW_ADD_R2;
reg  [6:0]  BIST_ROW_ADD_R3;
reg  [6:0]  BIST_ROW_ADD_R4;
wire [6:0]  BIRA_ROW_ADD_A;
wire [6:0]  BIRA_ROW_ADD_B;

//---------------------------
// Memory Interface Main Code
//---------------------------
   assign LOGIC_HIGH = 1'b1;
// Address Pipeline {{{
  assign BIST_ROW_ADD_R1 = BIST_ROW_ADD_PIPE;
// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @(posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN ) begin
  if (~BIST_ASYNC_RESETN) begin
    BIST_ROW_ADD_R2 <= 7'b0000000;
    BIST_ROW_ADD_R3 <= 7'b0000000;
    BIST_ROW_ADD_R4 <= 7'b0000000;
  end else begin
    BIST_ROW_ADD_R2 <= BIST_ROW_ADD_R1;
    BIST_ROW_ADD_R3 <= BIST_ROW_ADD_R2;
    BIST_ROW_ADD_R4 <= BIST_ROW_ADD_R3;
  end
end
// Address Pipeline }}}
// Bira Fuse Address busses {{{
assign BIRA_ROW_ADD_A[0] = BIST_ROW_ADD_R3[0];
assign BIRA_ROW_ADD_A[1] = BIST_ROW_ADD_R3[1];
assign BIRA_ROW_ADD_A[2] = BIST_ROW_ADD_R3[2];
assign BIRA_ROW_ADD_A[3] = BIST_ROW_ADD_R3[3];
assign BIRA_ROW_ADD_A[4] = BIST_ROW_ADD_R3[4];
assign BIRA_ROW_ADD_A[5] = BIST_ROW_ADD_R3[5];
assign BIRA_ROW_ADD_A[6] = BIST_ROW_ADD_R3[6];
assign BIRA_ROW_ADD_B[0] = BIST_ROW_ADD_R4[0];
assign BIRA_ROW_ADD_B[1] = BIST_ROW_ADD_R4[1];
assign BIRA_ROW_ADD_B[2] = BIST_ROW_ADD_R4[2];
assign BIRA_ROW_ADD_B[3] = BIST_ROW_ADD_R4[3];
assign BIRA_ROW_ADD_B[4] = BIST_ROW_ADD_R4[4];
assign BIRA_ROW_ADD_B[5] = BIST_ROW_ADD_R4[5];
assign BIRA_ROW_ADD_B[6] = BIST_ROW_ADD_R4[6];
// Bira Fuse Address busses }}}
//----------------------
//-- BIST_ON Sync-ing --
//----------------------
    i0sand002ab1n02x5 tessent_persistent_cell_AND_BIST_SETUP0_SYNC (
        .a          ( BIST_SETUP0                                ),
        .b          ( BIST_ON                                    ),
        .o          ( BIST_SETUP0_SYNC                           )
    );

//----------------------
//-- BIST_EN Retiming --
//----------------------
    assign BIST_EN_RST              = ~BIST_ASYNC_RESETN;
    always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
       if (~BIST_ASYNC_RESETN)
          BIST_INPUT_SELECT <= 1'b0;
       else
       if (~MCP_BOUNDING_EN) begin
          BIST_INPUT_SELECT <= BIST_RUN | BIST_TESTDATA_SELECT_TO_COLLAR;
       end
   end

    wire BIST_INPUT_SELECT_INT_BUF;
    i0sbfn000ab1n02x5 tessent_persistent_cell_BIST_INPUT_SELECT_INT (
        .a                          (BIST_INPUT_SELECT & ((~LV_TM)|MEM_BYPASS_EN)),
        .o                          (BIST_INPUT_SELECT_INT_BUF)
    );
    assign BIST_INPUT_SELECT_INT = BIST_INPUT_SELECT_INT_BUF;
    assign MBISTPG_BIRA_SETUP = BIST_SETUP2 & (~BIST_SETUP1) & (~BIST_SETUP0);
    assign USE_DEFAULTS = ~BIST_SETUP0_SYNC;
    assign BIST_COLLAR_HOLD_INT = HOLD_EN;
//-----------------------
//-- Observation Logic --
//-----------------------
  // synopsys async_set_reset "BIST_ASYNC_RESETN"
  always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
    if (~BIST_ASYNC_RESETN)
      SCAN_OBS_FLOPS    <= 4'b0000;
    else
      SCAN_OBS_FLOPS    <= {4{MEM_BYPASS_EN} } & {
                          wen_NOT_GATED        ^ ren_NOT_GATED        ^ adr[9]               ,
                          adr[8]               ^ adr[7]               ^ adr[6]               ,
                          adr[5]               ^ adr[4]               ^ adr[3]               ,
                          adr[2]               ^ adr[1]               ^ adr[0]               
                           };
  end
 
//--------------------------
//-- Replicate Write Data --
//--------------------------
   assign BIST_WRITE_DATA_REP      = {
                                       BIST_WRITE_DATA[1:0],
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA
                                     };
 
//-----------------------
//-- Checkerboard Data --
//-----------------------
   assign BIST_WRITE_DATA_INT       = ~(CHKBCI_PHASE) ? BIST_WRITE_DATA_REP : ({22{BIST_WRITE_DATA_REP[0]}} ^ {22{BIST_COL_ADD[0]}});
   assign DATA_TO_MEM              = BIST_WRITE_DATA_INT;
 
 
 
 

//--------------------------
//-- Operation Set Select --
//--------------------------
   assign OPSET_SELECT_DECODED     = DEFAULT_OPSET_SEL;
 
   assign DEFAULT_OPSET_REG_BUS    = 
                                                          BIST_COLLAR_OPSET_SELECT;
 
   assign DEFAULT_OPSET_SEL[0]     = (DEFAULT_OPSET_REG_BUS == 1'b0);
   assign DEFAULT_OPSET_SEL[1]     = (DEFAULT_OPSET_REG_BUS == 1'b1);
 

//--------------------------
//-- Memory Control Ports --
//--------------------------

   // Port: wen LogicalPort: ## Type: READWRITE {{{

   // Intercept functional signal with test mux
   always_comb begin
      case (BIST_INPUT_SELECT_INT) // synopsys infer_mux
      1'b0 : wen_NOT_GATED = wen_IN;
      1'b1 : wen_NOT_GATED = wen_TEST_IN;
      endcase
   end

   // Disable memory port during logic test
   assign wen                       = wen_NOT_GATED & ~(LV_TM & (MEM_BYPASS_EN | SCAN_SHIFT_EN));

   // Control logic during memory test
   assign wen_TEST_IN               = (BIST_COLLAR_EN & wen_TO_MUX);
   assign wen_TO_MUX                = BIST_WRITEENABLE;

   // Port: wen }}}

   // Port: ren LogicalPort: ## Type: READWRITE {{{

   // Intercept functional signal with test mux
   always_comb begin
      case (BIST_INPUT_SELECT_INT) // synopsys infer_mux
      1'b0 : ren_NOT_GATED = ren_IN;
      1'b1 : ren_NOT_GATED = ren_TEST_IN;
      endcase
   end

   // Disable memory port during logic test
   assign ren                       = ren_NOT_GATED & ~(LV_TM & (MEM_BYPASS_EN | SCAN_SHIFT_EN));

   // Control logic during memory test
   assign ren_TEST_IN               = (BIST_COLLAR_EN & ren_TO_MUX);
   assign ren_TO_MUX                = BIST_READENABLE;

   // Port: ren }}}

//--------------------------
//-- Memory Address Ports --
//--------------------------

   // Port: adr LogicalPort: ## Type: READWRITE {{{

   // Intercept functional signal with test mux
   always_comb  begin
      case (BIST_INPUT_SELECT_INT) // synopsys infer_mux
      1'b0 : adr = adr_IN;
      1'b1 : adr = adr_TEST_IN;
      endcase
   end
   // Address logic during memory test
   wire   [2:0]                     BIST_COL_ADD_SHADOW;
   wire   [6:0]                     BIST_ROW_ADD_SHADOW;
   assign BIST_ROW_ADD_SHADOW[6] = BIST_ROW_ADD[6];
   assign BIST_ROW_ADD_SHADOW[5] = BIST_ROW_ADD[5];
   assign BIST_ROW_ADD_SHADOW[4] = BIST_ROW_ADD[4];
   assign BIST_ROW_ADD_SHADOW[3] = BIST_ROW_ADD[3];
   assign BIST_ROW_ADD_SHADOW[2] = BIST_ROW_ADD[2];
   assign BIST_ROW_ADD_SHADOW[1] = BIST_ROW_ADD[1];
   assign BIST_ROW_ADD_SHADOW[0] = BIST_ROW_ADD[0];
   assign BIST_COL_ADD_SHADOW[2] = BIST_COL_ADD[2];
   assign BIST_COL_ADD_SHADOW[1] = BIST_COL_ADD[1];
   assign BIST_COL_ADD_SHADOW[0] = BIST_COL_ADD[0];
   assign adr_TEST_IN               = {
                                         BIST_ROW_ADD_SHADOW[6],
                                         BIST_ROW_ADD_SHADOW[5],
                                         BIST_ROW_ADD_SHADOW[4],
                                         BIST_ROW_ADD_SHADOW[3],
                                         BIST_ROW_ADD_SHADOW[2],
                                         BIST_ROW_ADD_SHADOW[1],
                                         BIST_ROW_ADD_SHADOW[0],
                                         BIST_COL_ADD_SHADOW[2],
                                         BIST_COL_ADD_SHADOW[1],
                                         BIST_COL_ADD_SHADOW[0] 
                                      };

   // Port: adr }}}

//--------------------
//-- Data To Memory --
//--------------------


   // Intercept functional signal with test mux
   always_comb begin
      case (BIST_INPUT_SELECT_INT) // synopsys infer_mux
      1'b0 : din = din_IN;
      1'b1 : din = din_TEST_IN;
      endcase
   end
   // Write data during memory test
   assign din_TEST_IN               = {
                                        DATA_TO_MEM[21],
                                        DATA_TO_MEM[20],
                                        DATA_TO_MEM[19],
                                        DATA_TO_MEM[18],
                                        DATA_TO_MEM[17],
                                        DATA_TO_MEM[16],
                                        DATA_TO_MEM[15],
                                        DATA_TO_MEM[14],
                                        DATA_TO_MEM[13],
                                        DATA_TO_MEM[12],
                                        DATA_TO_MEM[11],
                                        DATA_TO_MEM[10],
                                        DATA_TO_MEM[9],
                                        DATA_TO_MEM[8],
                                        DATA_TO_MEM[7],
                                        DATA_TO_MEM[6],
                                        DATA_TO_MEM[5],
                                        DATA_TO_MEM[4],
                                        DATA_TO_MEM[3],
                                        DATA_TO_MEM[2],
                                        DATA_TO_MEM[1],
                                        DATA_TO_MEM[0] 
                                      };
   // External memory bypass during logic test
   assign din_DIN_OBS               = {
                                        din[21],
                                        din[20],
                                        din[19],
                                        din[18],
                                        din[17],
                                        din[16],
                                        din[15],
                                        din[14],
                                        din[13],
                                        din[12],
                                        din[11],
                                        din[10],
                                        din[9],
                                        din[8],
                                        din[7],
                                        din[6],
                                        din[5],
                                        din[4],
                                        din[3],
                                        din[2],
                                        din[1],
                                        din[0] 
                                      };
//-------------------
//-- Memory Bypass --
//-------------------
   always_comb begin
      case (MEM_BYPASS_EN) // synopsys infer_mux
      1'b0 : q = q_IN;
      1'b1 : q = q_FROM_BYPASS;
      endcase
   end

   assign q_FROM_BYPASS             = q_SCAN_IN;

   // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
   if (~BIST_ASYNC_RESETN)
      q_SCAN_IN                     <= 22'd0;
   else
      q_SCAN_IN                     <= {22{MEM_BYPASS_EN}} & q_TO_BYPASS;
   end
 
   assign q_TO_BYPASS               = {
                                        din_DIN_OBS[21],
                                        din_DIN_OBS[20],
                                        din_DIN_OBS[19],
                                        din_DIN_OBS[18],
                                        din_DIN_OBS[17],
                                        din_DIN_OBS[16],
                                        din_DIN_OBS[15],
                                        din_DIN_OBS[14],
                                        din_DIN_OBS[13],
                                        din_DIN_OBS[12],
                                        din_DIN_OBS[11],
                                        din_DIN_OBS[10],
                                        din_DIN_OBS[9],
                                        din_DIN_OBS[8],
                                        din_DIN_OBS[7],
                                        din_DIN_OBS[6],
                                        din_DIN_OBS[5],
                                        din_DIN_OBS[4],
                                        din_DIN_OBS[3],
                                        din_DIN_OBS[2],
                                        din_DIN_OBS[1],
                                        din_DIN_OBS[0] 
                                      };
 

//----------------------
//-- Data From Memory --
//----------------------
 
   assign DATA_FROM_MEM             = {
                                       q[21],
                                       q[20],
                                       q[19],
                                       q[18],
                                       q[17],
                                       q[16],
                                       q[15],
                                       q[14],
                                       q[13],
                                       q[12],
                                       q[11],
                                       q[10],
                                       q[9],
                                       q[8],
                                       q[7],
                                       q[6],
                                       q[5],
                                       q[4],
                                       q[3],
                                       q[2],
                                       q[1],
                                       q[0] 
                                      };
 
    assign EDATA_CKB_EN             = CHKBCI_PHASE;

    assign EDATA_COL_ADD_BIT0       = BIST_COL_ADD[0:0];

//------------------------------
//-- StrobeDataOut Pipelining --
//------------------------------
    // Pipelining stages for BIST signal BIST_COLLAR_EN {{{
    // synopsys sync_set_reset "BIST_CLEAR"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN) begin
            BIST_COLLAR_EN_PIPE_0 <= 1'd0;
        end else
        if (BIST_CLEAR) begin
            BIST_COLLAR_EN_PIPE_0 <= 1'd0;
        end else
        begin
            BIST_COLLAR_EN_PIPE_0 <= BIST_COLLAR_EN;
        end
    end
    assign BIST_COLLAR_EN_PIPE      =
                    (BIST_COLLAR_EN_PIPE_0 & {1{OPSET_SELECT_DECODED[0]}}) | // OperationSet: SYNCCUSTOM
                    (BIST_COLLAR_EN & {1{OPSET_SELECT_DECODED[1]}}) ; // OperationSet: SYNC
    // Pipelining stages for BIST signal BIST_COLLAR_EN }}}
    // Pipelining stages for BIST signal EDATA_CKB_EN {{{
    // synopsys sync_set_reset "BIST_CLEAR"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN) begin
            EDATA_CKB_EN_PIPE_0 <= 1'd0;
        end else
        if (BIST_CLEAR) begin
            EDATA_CKB_EN_PIPE_0 <= 1'd0;
        end else
        begin
            EDATA_CKB_EN_PIPE_0 <= EDATA_CKB_EN;
        end
    end
    assign EDATA_CKB_EN_PIPE        =
                    (EDATA_CKB_EN_PIPE_0 & {1{OPSET_SELECT_DECODED[0]}}) | // OperationSet: SYNCCUSTOM
                    (EDATA_CKB_EN & {1{OPSET_SELECT_DECODED[1]}}) ; // OperationSet: SYNC
    // Pipelining stages for BIST signal EDATA_CKB_EN }}}
    // Pipelining stages for BIST signal EDATA_COL_ADD_BIT0 {{{
    // synopsys sync_set_reset "BIST_CLEAR"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN) begin
            EDATA_COL_ADD_BIT0_PIPE_0 <= 1'd0;
        end else
        if (BIST_CLEAR) begin
            EDATA_COL_ADD_BIT0_PIPE_0 <= 1'd0;
        end else
        begin
            EDATA_COL_ADD_BIT0_PIPE_0 <= EDATA_COL_ADD_BIT0;
        end
    end
    assign EDATA_COL_ADD_BIT0_PIPE                        =
                    (EDATA_COL_ADD_BIT0_PIPE_0 & {1{OPSET_SELECT_DECODED[0]}}) | // OperationSet: SYNCCUSTOM
                    (EDATA_COL_ADD_BIT0 & {1{OPSET_SELECT_DECODED[1]}}) ; // OperationSet: SYNC
    // Pipelining stages for BIST signal EDATA_COL_ADD_BIT0 }}}
    // Pipelining stages for BIST signal BIST_ROW_ADD {{{
    // synopsys sync_set_reset "BIST_CLEAR"
    // synopsys async_set_reset "BIST_ASYNC_RESETN"
    always_ff @ (posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN) begin
            BIST_ROW_ADD_PIPE_0 <= 7'd0;
        end else
        if (BIST_CLEAR) begin
            BIST_ROW_ADD_PIPE_0 <= 7'd0;
        end else
        begin
            BIST_ROW_ADD_PIPE_0 <= BIST_ROW_ADD;
        end
    end
    assign BIST_ROW_ADD_PIPE        =
                    (BIST_ROW_ADD_PIPE_0 & {7{OPSET_SELECT_DECODED[0]}}) | // OperationSet: SYNCCUSTOM
                    (BIST_ROW_ADD & {7{OPSET_SELECT_DECODED[1]}}) ; // OperationSet: SYNC
    // Pipelining stages for BIST signal BIST_ROW_ADD }}}

//---------------------------
//-- Replicate Expect Data --
//---------------------------
 
   assign BIST_EXPECT_DATA_REP      = { // 
                                      BIST_EXPECT_DATA[1:0],
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA
                                     };
//-----------------
//-- Expect Data --
//-----------------
   assign BIST_EXPECT_DATA_INT      = ~(EDATA_CKB_EN_PIPE) ? BIST_EXPECT_DATA_REP : ({22{BIST_EXPECT_DATA_REP[0]}} ^ {22{EDATA_COL_ADD_BIT0_PIPE}});
   assign DATA_FROM_MEM_EXP         = BIST_EXPECT_DATA_INT;
assign CMP_EN = BIST_CMP;

//-----------------------
//-- Local Comparators --
//-----------------------
 
   assign RAW_CMP_STAT[21]          = ~(DATA_FROM_MEM[21] == DATA_FROM_MEM_EXP[21]);
   assign RAW_CMP_STAT[20]          = ~(DATA_FROM_MEM[20] == DATA_FROM_MEM_EXP[20]);
   assign RAW_CMP_STAT[19]          = ~(DATA_FROM_MEM[19] == DATA_FROM_MEM_EXP[19]);
   assign RAW_CMP_STAT[18]          = ~(DATA_FROM_MEM[18] == DATA_FROM_MEM_EXP[18]);
   assign RAW_CMP_STAT[17]          = ~(DATA_FROM_MEM[17] == DATA_FROM_MEM_EXP[17]);
   assign RAW_CMP_STAT[16]          = ~(DATA_FROM_MEM[16] == DATA_FROM_MEM_EXP[16]);
   assign RAW_CMP_STAT[15]          = ~(DATA_FROM_MEM[15] == DATA_FROM_MEM_EXP[15]);
   assign RAW_CMP_STAT[14]          = ~(DATA_FROM_MEM[14] == DATA_FROM_MEM_EXP[14]);
   assign RAW_CMP_STAT[13]          = ~(DATA_FROM_MEM[13] == DATA_FROM_MEM_EXP[13]);
   assign RAW_CMP_STAT[12]          = ~(DATA_FROM_MEM[12] == DATA_FROM_MEM_EXP[12]);
   assign RAW_CMP_STAT[11]          = ~(DATA_FROM_MEM[11] == DATA_FROM_MEM_EXP[11]);
   assign RAW_CMP_STAT[10]          = ~(DATA_FROM_MEM[10] == DATA_FROM_MEM_EXP[10]);
   assign RAW_CMP_STAT[9]           = ~(DATA_FROM_MEM[9] == DATA_FROM_MEM_EXP[9]);
   assign RAW_CMP_STAT[8]           = ~(DATA_FROM_MEM[8] == DATA_FROM_MEM_EXP[8]);
   assign RAW_CMP_STAT[7]           = ~(DATA_FROM_MEM[7] == DATA_FROM_MEM_EXP[7]);
   assign RAW_CMP_STAT[6]           = ~(DATA_FROM_MEM[6] == DATA_FROM_MEM_EXP[6]);
   assign RAW_CMP_STAT[5]           = ~(DATA_FROM_MEM[5] == DATA_FROM_MEM_EXP[5]);
   assign RAW_CMP_STAT[4]           = ~(DATA_FROM_MEM[4] == DATA_FROM_MEM_EXP[4]);
   assign RAW_CMP_STAT[3]           = ~(DATA_FROM_MEM[3] == DATA_FROM_MEM_EXP[3]);
   assign RAW_CMP_STAT[2]           = ~(DATA_FROM_MEM[2] == DATA_FROM_MEM_EXP[2]);
   assign RAW_CMP_STAT[1]           = ~(DATA_FROM_MEM[1] == DATA_FROM_MEM_EXP[1]);
   assign RAW_CMP_STAT[0]           = ~(DATA_FROM_MEM[0] == DATA_FROM_MEM_EXP[0]);
  
wire                                FREEZE_GO_ID;
reg                                 FREEZE_STOP_ERROR_EARLY_R; 
assign FREEZE_GO_ID = BIST_SHIFT_COLLAR | (~(BIST_CMP & BIST_COLLAR_EN_PIPE)) | FREEZE_STOP_ERROR_EARLY_R;
   
//----------------
// STOP_ON_ERROR  
//----------------
wire                                SOE_ERROR;
wire                                FREEZE_STOP_ERROR_CLEAR;
wire                                FREEZE_STOP_ERROR_EARLY;
assign SOE_ERROR = (|ERROR) & BIST_ON;
assign FREEZE_STOP_ERROR_EARLY = ERROR_CNT_ZERO & SOE_ERROR;
  
// synopsys sync_set_reset "FREEZE_STOP_ERROR_CLEAR"
assign FREEZE_STOP_ERROR_CLEAR = (~GO_EN) & (~(BIST_COLLAR_HOLD|FREEZE_STOP_ERROR)) & (~BIST_SHIFT_COLLAR);
 
// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @(posedge BIST_CLK_OR_TCK or negedge BIST_ASYNC_RESETN) begin
  if (~BIST_ASYNC_RESETN) begin
    FREEZE_STOP_ERROR_EARLY_R <= 1'b0;
  end else 
  if (FREEZE_STOP_ERROR_CLEAR) begin
    FREEZE_STOP_ERROR_EARLY_R <= 1'b0;
  end else begin
    if (BIST_SHIFT_COLLAR) begin
      FREEZE_STOP_ERROR_EARLY_R <= FREEZE_STOP_ERROR_SI;
    end else 
    if ((~(BIST_COLLAR_HOLD|FREEZE_STOP_ERROR)) & GO_EN) begin
        FREEZE_STOP_ERROR_EARLY_R <= FREEZE_STOP_ERROR_EARLY | FREEZE_STOP_ERROR_EARLY_R;
    end
  end
end

assign HOLD_EN = BIST_COLLAR_HOLD | FREEZE_STOP_ERROR_EARLY_R | FREEZE_STOP_ERROR;
 
assign COLLAR_STATUS_SI = BIRA_STATUS_SO;
firebird7_in_gate1_tessent_mbist_c1_interface_m5_STATUS MBISTPG_STATUS (
    .BIST_CLK                      ( BIST_CLK_OR_TCK              ),
    .BIST_ASYNC_RESETN             (BIST_ASYNC_RESETN           ),
    .MCP_BOUNDING_EN               (MCP_BOUNDING_EN      ), 
    .FREEZE_GO_ID                  (FREEZE_GO_ID                ),
    .CMP_EN                        (CMP_EN                      ),
    .FREEZE_STOP_ERROR_EARLY_R     (FREEZE_STOP_ERROR_EARLY_R   ),
   .GO_EN                          (GO_EN                      ),
   .BIST_COLLAR_SETUP              (BIST_COLLAR_SETUP          ),
   .BIST_COLLAR_HOLD               (BIST_COLLAR_HOLD_INT       ),
   .BIST_SHIFT_COLLAR              (BIST_SHIFT_COLLAR          ),
   .BIST_ON                        (BIST_ON                    ),
   .BIST_CLEAR                     (BIST_CLEAR                 ),
   .USE_DEFAULTS                   (USE_DEFAULTS               ),
   .SI                             (COLLAR_STATUS_SI           ),
   .ERROR                          ( ERROR               ),
   .ERROR_R                        ( ERROR_R             ),
   .MultiBitError_R                ( MultiBitError_R     ),
   .ERROR_R_A                      ( ERROR_R_A           ),
   .IOIndex0_R                     ( IOIndex0_R          ),
   .BIST_DIAG_EN                   (BIST_DIAG_EN         ),
   .BIST_BIRA_EN                   (BIST_BIRA_EN         ),
   .RAW_CMP_STAT                   (RAW_CMP_STAT               ),
   .BIST_GO                        (BIST_GO_FROM_STATUS     ),
   .INCLUDE_MEM_RESULTS_REG        (INCLUDE_MEM_RESULTS_REG    ),
   .SO                             (COLLAR_STATUS_SO           )
);
assign FREEZE_STOP_ERROR_SI = COLLAR_STATUS_SO;
assign BIST_GO = CHECK_REPAIR_NEEDED ? ~REPAIR_STATUS[0] : (BIST_BIRA_EN ? ~REPAIR_STATUS[1] : BIST_GO_FROM_STATUS);
wire COL_BIRA_SO,ROW_BIRA_SO;
wire [0:0] ERROR_TO_BIRA;
assign ERROR_TO_BIRA = ERROR_R_A;
firebird7_in_gate1_tessent_mbist_c1_interface_m5_ColumnRedundancyAnalysis MBIST_ColumnRedundancyAnalysis (
            .BIST_CLK              (BIST_CLK_OR_TCK),
            .IOIndex0              (IOIndex0_R), 
            .BIST_ASYNC_RESETN                           (BIST_ASYNC_RESETN),
            .BIST_HOLD                                   (BIST_COLLAR_HOLD),
            .BIST_SHIFT                                  (BIST_SHIFT_BIRA_COLLAR),
            .RepairedBySpareRow                          (RepairedBySpareRow), 
            .RepairableBySpareRow                        (RepairableBySpareRow), 
            .PriorityColumn                              (PriorityColumn),
            .MultiBitError_R                             (MultiBitError_R), 
            .BIST_BIRA_EN                                (BIST_BIRA_EN),
            .CLEAR                                       (BIST_CLEAR_BIRA),
            .All_SCOL0_FUSE_REG    (All_SCOL0_FUSE_REG),
            .FROM_BISR_All_SCOL0_FUSE_REG                (FROM_BISR_All_SCOL0_FUSE_REG),
            .All_SCOL0_ALLOC_REG   (All_SCOL0_ALLOC_REG),
            .FROM_BISR_All_SCOL0_ALLOC_REG(FROM_BISR_All_SCOL0_ALLOC_REG),
            .ErrorGlobal                                 (ErrorGlobal), 
            .RepairedBySpareColumn                       (RepairedBySpareColumn), 
            .RepairableBySpareColumn                     (RepairableBySpareColumn), 
            .ERROR                                       (ERROR_TO_BIRA),
            .LV_TM                                       (LV_TM),
            .BIRA_SI                                     (BIST_SI),
            .BIRA_SO                                     (COL_BIRA_SO)
        );
         
firebird7_in_gate1_tessent_mbist_c1_interface_m5_RowRedundancyAnalysis MBIST_RowRedundancyAnalysis_INST (
         .BIST_CLK                 (BIST_CLK_OR_TCK           ) , 
         .BIRA_FUSE_ADD_A          (BIRA_ROW_ADD_A) , 
         .BIRA_FUSE_ADD_B          (BIRA_ROW_ADD_B) , 
         .BIST_ASYNC_RESETN        (BIST_ASYNC_RESETN      ) , 
         .RepairableBySpareColumn  (RepairableBySpareColumn) ,
         .RepairedBySpareColumn    (RepairedBySpareColumn  ) , 
         .BIST_HOLD                (BIST_COLLAR_HOLD    ) ,
         .BIST_SHIFT               (BIST_SHIFT_BIRA_COLLAR      ) , 
         .BIST_BIRA_EN             (BIST_BIRA_EN),
         .CLEAR                    (BIST_CLEAR_BIRA) , 
         .PriorityColumn           (PriorityColumn         ) ,
         .ErrorGlobal              (ErrorGlobal            ) , 
         .ALL_SROW0_ALLOC_REG      (ALL_SROW0_ALLOC_REG),
         .ALL_SROW0_FUSE_ADD_REG   (ALL_SROW0_FUSE_ADD_REG),
         .FROM_BISR_ALL_SROW0_ALLOC_REG                  (FROM_BISR_ALL_SROW0_ALLOC_REG),
         .FROM_BISR_ALL_SROW0_FUSE_ADD_REG               (FROM_BISR_ALL_SROW0_FUSE_ADD_REG),
         .ALL_SROW1_ALLOC_REG      (ALL_SROW1_ALLOC_REG),
         .ALL_SROW1_FUSE_ADD_REG   (ALL_SROW1_FUSE_ADD_REG),
         .FROM_BISR_ALL_SROW1_ALLOC_REG                  (FROM_BISR_ALL_SROW1_ALLOC_REG),
         .FROM_BISR_ALL_SROW1_FUSE_ADD_REG               (FROM_BISR_ALL_SROW1_FUSE_ADD_REG),
         .RepairedBySpareRow       (RepairedBySpareRow ) , 
         .RepairableBySpareRow     (RepairableBySpareRow ) ,
         .LV_TM                    (LV_TM),
         .BIRA_SI                  (COL_BIRA_SO ) , 
         .BIRA_SO                  (ROW_BIRA_SO)  
        );
        
reg  [1:0] REPAIR_STATUS_SHADOW;
wire [1:0] REPAIR_STATUS_INT;
 
assign REPAIR_STATUS_INT[0] = ErrorGlobal & BIST_BIRA_EN & (RepairableBySpareColumn | RepairableBySpareRow);
assign REPAIR_STATUS_INT[1] = (ErrorGlobal & ((~BIST_BIRA_EN) | ((~RepairedBySpareColumn) & (~RepairableBySpareColumn) & (~RepairableBySpareRow) & (~RepairedBySpareRow))));
 
always_ff @(posedge BIST_CLK_OR_TCK or negedge BIST_ASYNC_RESETN) begin
  if ( ~ BIST_ASYNC_RESETN ) begin
    REPAIR_STATUS <= 2'b00;
  end else
  if ( BIST_CLEAR_BIRA ) begin
    REPAIR_STATUS <= 2'b00;
  end else begin
    if ( BIST_SHIFT_BIRA_COLLAR )
    REPAIR_STATUS <= {REPAIR_STATUS[0] , ROW_BIRA_SO};
    else
      if ( (~BIST_COLLAR_HOLD) & GO_EN )
        REPAIR_STATUS <= REPAIR_STATUS | REPAIR_STATUS_INT;
  end
end
always_ff @(posedge BIST_CLK_OR_TCK or negedge BIST_ASYNC_RESETN) begin
  if ( ~ BIST_ASYNC_RESETN ) begin
    REPAIR_STATUS_SHADOW <= 2'b00;
  end else
  if ( BIST_CLEAR_BIRA ) begin
    REPAIR_STATUS_SHADOW <= 2'b00;
  end else begin
    if ( BIST_SHIFT_COLLAR )
    REPAIR_STATUS_SHADOW <= {REPAIR_STATUS_SHADOW[0] , BIST_SI};
    else
      if ( (~BIST_COLLAR_HOLD) & GO_EN )
        REPAIR_STATUS_SHADOW <= REPAIR_STATUS;
  end
end

assign BIRA_STATUS_SO = REPAIR_STATUS_SHADOW[1];
assign BIST_COLLAR_BIRA_SO = REPAIR_STATUS[1];
         
 
assign STATUS_SO = (MBISTPG_BIRA_SETUP) ? BIST_COLLAR_BIRA_SO : FREEZE_STOP_ERROR_EARLY_R;
    
assign BIST_SO                      = STATUS_SO;
 
 
    assign BIST_CLK_EN  = BIST_RUN | BIST_COLLAR_SETUP|BIST_CLEAR|BIST_CLEAR_DEFAULT|BIST_CLEAR_BIRA | BIST_SHIFT_BIRA_COLLAR|RESET_REG_SETUP2|(BIST_INPUT_SELECT ^ BIST_TESTDATA_SELECT_TO_COLLAR);
//---------------------
//-- BIST_CLK Gating --
//---------------------
wire   INJECT_TCK;      
    assign INJECT_TCK = (BIST_SHIFT_COLLAR | BIST_SHIFT_BIRA_COLLAR ) & ~LV_TM; 
    i0scilb01ab1n02x5 tessent_persistent_cell_GATING_BIST_CLK (
        .clk        ( BIST_CLK                    ),
        .te         ( 1'b0         ),
        .en         ( BIST_CLK_EN  ),
        .clkout     ( BIST_CLK_INT                )
    );
        i0scmbn22ab1n02x5 tessent_persistent_cell_BIST_CLK_OR_TCK (
        .s          ( INJECT_TCK                                 ),
        .clk2       ( BIST_CLK_INT                               ),
        .clk1       ( TCK                                        ),
        .clkout     ( BIST_CLK_OR_TCK                            )
    );

endmodule // firebird7_in_gate1_tessent_mbist_c1_interface_m5



        
module firebird7_in_gate1_tessent_mbist_c1_interface_m5_STATUS (
  input  wire        BIST_CLEAR,
  input  wire        FREEZE_STOP_ERROR_EARLY_R,
  input  wire        FREEZE_GO_ID,
  input  wire        CMP_EN,
  input  wire        BIST_ASYNC_RESETN,
  input  wire        BIST_CLK,
  input  wire        BIST_COLLAR_SETUP,
  input  wire        BIST_COLLAR_HOLD,
  input  wire        BIST_SHIFT_COLLAR,
  input  wire        BIST_ON,
  input  wire        USE_DEFAULTS,
  input  wire        SI,
  input  wire        BIST_DIAG_EN,
  input  wire        BIST_BIRA_EN,
  input  wire [21:0] RAW_CMP_STAT,
  input  wire        MCP_BOUNDING_EN,
  input  wire        INCLUDE_MEM_RESULTS_REG,
  output reg         GO_EN,
  output wire [0:0]  ERROR,
  output wire [0:0]  ERROR_R,
  output wire [0:0]  MultiBitError_R,
  output wire [0:0]  ERROR_R_A,
  output reg  [4:0]  IOIndex0_R,
  output wire        SO,
  output wire        BIST_GO
);
wire        GO_ID_REG_RST;
reg  [21:0] GO_ID_REG;
wire        BIST_GO_INT;
wire [21:0] ROW_DATA_MAP;
wire        GO_ID_FEEDBACK_EN;
wire [0:0]  IO_SEG_GLOBAL_GO_ID;
reg  [0:0]  ERROR_R1;
reg  [0:0]  ERROR_R2;
reg  [0:0]  MultiBitError;
reg  [0:0]  MultiBitError_R2;
reg  [0:0]  MultiBitError_R1;
wire [21:0] IO_RANGE0;
reg  [4:0]  IOIndex0;

 
   //----------------
   // Row Data Map --
   //----------------
 assign ROW_DATA_MAP = RAW_CMP_STAT;
 
   //-----------
   //-- GO_EN --
   //-----------
   //synopsys sync_set_reset "BIST_ON"
   // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
      if (~BIST_ASYNC_RESETN)
         GO_EN       <= 1'b0;
      else
      if (~BIST_ON) begin
         GO_EN       <= 1'b0;
      end else begin
         if (BIST_COLLAR_SETUP) begin
            GO_EN    <= 1'b1; 
         end
      end
   end
   assign GO_ID_FEEDBACK_EN         = ~(BIST_DIAG_EN|BIST_BIRA_EN) ;
   assign BIST_GO_INT               = ~|ERROR_R;
   assign BIST_GO    = BIST_GO_INT;
 
 
 
   //---------------
   //-- GO_ID_REG --
   //---------------
reg  CMP_EN_R;
  // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
      if (~BIST_ASYNC_RESETN) begin
         CMP_EN_R    <= 1'b0;
      end else begin
         CMP_EN_R    <= (~FREEZE_GO_ID) & (~BIST_COLLAR_HOLD);
      end
   end

   assign GO_ID_REG_RST            = BIST_CLEAR | (~INCLUDE_MEM_RESULTS_REG & BIST_SHIFT_COLLAR);
   wire HOLD_OR_RESET;
    
wire [21:0] GO_ID_REG_MUX, BIST_SHIFT_COLLAR_MUX;
wire [21:0] GO_ID_REG_MUX_SEL ;
wire GO_ID_REG_CLR;
wire GO_ID_REG_BYPASS;
  // synopsys sync_set_reset "GO_ID_REG_RST"
   assign HOLD_OR_RESET = MCP_BOUNDING_EN | GO_ID_REG_RST | BIST_COLLAR_HOLD | ~GO_EN;
   assign GO_ID_REG_CLR = (~MCP_BOUNDING_EN) & (GO_ID_REG_RST | ((~BIST_COLLAR_HOLD) & (~GO_ID_FEEDBACK_EN) & CMP_EN) | (CMP_EN_R & BIST_COLLAR_HOLD & (~FREEZE_STOP_ERROR_EARLY_R)));
// Instantiate persistent GO_ID_REG_MUX cells {{{
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG0 (
            .sa      ( GO_ID_REG_MUX_SEL[0]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[0] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[0]             ),
            .o       ( GO_ID_REG_MUX[0]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG1 (
            .sa      ( GO_ID_REG_MUX_SEL[1]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[1] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[1]             ),
            .o       ( GO_ID_REG_MUX[1]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG2 (
            .sa      ( GO_ID_REG_MUX_SEL[2]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[2] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[2]             ),
            .o       ( GO_ID_REG_MUX[2]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG3 (
            .sa      ( GO_ID_REG_MUX_SEL[3]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[3] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[3]             ),
            .o       ( GO_ID_REG_MUX[3]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG4 (
            .sa      ( GO_ID_REG_MUX_SEL[4]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[4] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[4]             ),
            .o       ( GO_ID_REG_MUX[4]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG5 (
            .sa      ( GO_ID_REG_MUX_SEL[5]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[5] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[5]             ),
            .o       ( GO_ID_REG_MUX[5]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG6 (
            .sa      ( GO_ID_REG_MUX_SEL[6]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[6] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[6]             ),
            .o       ( GO_ID_REG_MUX[6]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG7 (
            .sa      ( GO_ID_REG_MUX_SEL[7]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[7] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[7]             ),
            .o       ( GO_ID_REG_MUX[7]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG8 (
            .sa      ( GO_ID_REG_MUX_SEL[8]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[8] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[8]             ),
            .o       ( GO_ID_REG_MUX[8]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG9 (
            .sa      ( GO_ID_REG_MUX_SEL[9]        ),
            .a       ( BIST_SHIFT_COLLAR_MUX[9] & ~GO_ID_REG_CLR  ),
            .b       ( ROW_DATA_MAP[9]             ),
            .o       ( GO_ID_REG_MUX[9]            )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG10 (
            .sa      ( GO_ID_REG_MUX_SEL[10]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[10] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[10]            ),
            .o       ( GO_ID_REG_MUX[10]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG11 (
            .sa      ( GO_ID_REG_MUX_SEL[11]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[11] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[11]            ),
            .o       ( GO_ID_REG_MUX[11]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG12 (
            .sa      ( GO_ID_REG_MUX_SEL[12]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[12] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[12]            ),
            .o       ( GO_ID_REG_MUX[12]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG13 (
            .sa      ( GO_ID_REG_MUX_SEL[13]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[13] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[13]            ),
            .o       ( GO_ID_REG_MUX[13]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG14 (
            .sa      ( GO_ID_REG_MUX_SEL[14]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[14] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[14]            ),
            .o       ( GO_ID_REG_MUX[14]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG15 (
            .sa      ( GO_ID_REG_MUX_SEL[15]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[15] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[15]            ),
            .o       ( GO_ID_REG_MUX[15]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG16 (
            .sa      ( GO_ID_REG_MUX_SEL[16]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[16] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[16]            ),
            .o       ( GO_ID_REG_MUX[16]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG17 (
            .sa      ( GO_ID_REG_MUX_SEL[17]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[17] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[17]            ),
            .o       ( GO_ID_REG_MUX[17]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG18 (
            .sa      ( GO_ID_REG_MUX_SEL[18]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[18] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[18]            ),
            .o       ( GO_ID_REG_MUX[18]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG19 (
            .sa      ( GO_ID_REG_MUX_SEL[19]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[19] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[19]            ),
            .o       ( GO_ID_REG_MUX[19]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG20 (
            .sa      ( GO_ID_REG_MUX_SEL[20]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[20] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[20]            ),
            .o       ( GO_ID_REG_MUX[20]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG21 (
            .sa      ( GO_ID_REG_MUX_SEL[21]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[21] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[21]            ),
            .o       ( GO_ID_REG_MUX[21]           )
            );
// Instantiate persistent GO_ID_REG_MUX cells }}}
   assign GO_ID_REG_MUX_SEL = (GO_ID_REG & {22{GO_ID_FEEDBACK_EN}})  | {22 {HOLD_OR_RESET | FREEZE_GO_ID }};
   assign BIST_SHIFT_COLLAR_MUX = ((~MCP_BOUNDING_EN) & BIST_SHIFT_COLLAR) ? {SI,GO_ID_REG[21:1]} : GO_ID_REG;
 
   // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
      if (~BIST_ASYNC_RESETN)
         GO_ID_REG   <= {22{1'b0}};
      else
         GO_ID_REG   <= GO_ID_REG_MUX;
   end
   assign GO_ID_REG_BYPASS = (INCLUDE_MEM_RESULTS_REG) ? GO_ID_REG[0] : SI;

    
  assign IO_SEG_GLOBAL_GO_ID[0] = |GO_ID_REG;
  assign ERROR[0] = GO_EN & IO_SEG_GLOBAL_GO_ID[0] & (CMP_EN_R | GO_ID_FEEDBACK_EN | BIST_COLLAR_HOLD);
  // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK  or negedge BIST_ASYNC_RESETN) begin
        if (~BIST_ASYNC_RESETN) begin
         ERROR_R1    <= {1{1'b0}};
         ERROR_R2    <= {1{1'b0}};
      end else 
      if ( BIST_CLEAR ) begin
         ERROR_R1    <= {1{1'b0}};
         ERROR_R2    <= {1{1'b0}};
      end else begin
         ERROR_R1    <= ERROR;
         ERROR_R2    <= ERROR_R1;
      end
   end
  assign ERROR_R   = ERROR_R1;
  assign ERROR_R_A = ERROR_R2;

  // [start] : IO_RANGE0 bus assignment {{{
assign IO_RANGE0[0] = GO_ID_REG[0];
assign IO_RANGE0[1] = GO_ID_REG[1];
assign IO_RANGE0[2] = GO_ID_REG[2];
assign IO_RANGE0[3] = GO_ID_REG[3];
assign IO_RANGE0[4] = GO_ID_REG[4];
assign IO_RANGE0[5] = GO_ID_REG[5];
assign IO_RANGE0[6] = GO_ID_REG[6];
assign IO_RANGE0[7] = GO_ID_REG[7];
assign IO_RANGE0[8] = GO_ID_REG[8];
assign IO_RANGE0[9] = GO_ID_REG[9];
assign IO_RANGE0[10] = GO_ID_REG[10];
assign IO_RANGE0[11] = GO_ID_REG[11];
assign IO_RANGE0[12] = GO_ID_REG[12];
assign IO_RANGE0[13] = GO_ID_REG[13];
assign IO_RANGE0[14] = GO_ID_REG[14];
assign IO_RANGE0[15] = GO_ID_REG[15];
assign IO_RANGE0[16] = GO_ID_REG[16];
assign IO_RANGE0[17] = GO_ID_REG[17];
assign IO_RANGE0[18] = GO_ID_REG[18];
assign IO_RANGE0[19] = GO_ID_REG[19];
assign IO_RANGE0[20] = GO_ID_REG[20];
assign IO_RANGE0[21] = GO_ID_REG[21];
  // [end]   : IO_RANGE0 bus assignment }}}
  // [start] : BIRA signal assignments for IO_RANGE0 {{{
always_comb begin
    case( IO_RANGE0 )
        22'b0000000000000000000000 : begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00000;
                    end
        22'b0000000000000000000001: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00000;
                    end
        22'b0000000000000000000010: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00001;
                    end
        22'b0000000000000000000100: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00010;
                    end
        22'b0000000000000000001000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00011;
                    end
        22'b0000000000000000010000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00100;
                    end
        22'b0000000000000000100000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00101;
                    end
        22'b0000000000000001000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00110;
                    end
        22'b0000000000000010000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b00111;
                    end
        22'b0000000000000100000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01000;
                    end
        22'b0000000000001000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01001;
                    end
        22'b0000000000010000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01010;
                    end
        22'b0000000000100000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01011;
                    end
        22'b0000000001000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01100;
                    end
        22'b0000000010000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01101;
                    end
        22'b0000000100000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01110;
                    end
        22'b0000001000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b01111;
                    end
        22'b0000010000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b10000;
                    end
        22'b0000100000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b10001;
                    end
        22'b0001000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b10010;
                    end
        22'b0010000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b10011;
                    end
        22'b0100000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b10100;
                    end
        22'b1000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 5'b10101;
                    end
        default :   begin
                        MultiBitError[0] = 1'b1;
                        IOIndex0 = 5'b00000;
                    end
    endcase
end
  // [end]   : IO_RANGE0 }}}
assign MultiBitError_R = MultiBitError_R2;
  // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
      if (~BIST_ASYNC_RESETN) begin
         MultiBitError_R1           <= {1{1'b0}};
         MultiBitError_R2           <= {1{1'b0}};
      end else begin
         MultiBitError_R1           <= MultiBitError & ERROR; 
         MultiBitError_R2           <= MultiBitError_R1;
      end
   end
  // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
      if (~BIST_ASYNC_RESETN) begin
         IOIndex0_R  <= {5{1'b0}};
      end else begin
         IOIndex0_R  <= IOIndex0;
      end
   end
                       
   //------
   // SO --
   //------
   assign SO         = GO_ID_REG_BYPASS;
endmodule // firebird7_in_gate1_tessent_mbist_c1_interface_m5_STATUS




module firebird7_in_gate1_tessent_mbist_c1_interface_m5_ColumnRedundancyAnalysis (
  input  wire       BIST_CLK,
  input  wire       BIST_ASYNC_RESETN,
  input  wire       BIST_HOLD,
  input  wire       BIST_SHIFT,
  input  wire [0:0] MultiBitError_R,
  input  wire [4:0] IOIndex0,
  input  wire       CLEAR,
  input  wire       BIST_BIRA_EN,
  input  wire       RepairedBySpareRow,
  input  wire       RepairableBySpareRow,
  input  wire       PriorityColumn,
  input  wire [4:0] FROM_BISR_All_SCOL0_FUSE_REG,
  input  wire       FROM_BISR_All_SCOL0_ALLOC_REG,
  input  wire [0:0] ERROR,
  input  wire       LV_TM,
  input  wire       BIRA_SI,
  output wire [4:0] All_SCOL0_FUSE_REG,
  output wire       All_SCOL0_ALLOC_REG,
  output wire       BIRA_SO,
  output wire       ErrorGlobal,
  output wire       RepairedBySpareColumn,
  output wire       RepairableBySpareColumn
); 
wire       LOCAL_RESET;
wire       SpareColumnNeeded;
wire [0:0] Repaired;
wire [0:0] RepairableBySpareColumnIORange;
wire [0:0] RepairedBySpareColumnIORange;
reg  [4:0] IOIndex0_R0;
wire [4:0] IOIndex0_A;
wire [4:0] IOIndex0_B;
reg        IO_RANGE0_ERROR_MATCH_R;
reg        IO_RANGE0_SPARES_AVAILABLE_R;
wire       IO_RANGE0_SPARES_AVAILABLE;
wire [4:0] IO_RANGE0_FUSE0_REG;
wire       IO_RANGE0_FUSE0_ALLOC;
wire       IO_RANGE0_FUSE0_ERROR_MATCH;
wire       IO_RANGE0_FUSE0_PAST_ALLOC;
wire       IO_RANGE0_FUSE0_ERROR_MATCH_CONDITION;
wire       IO_RANGE0_FUSE0_ERROR_MATCH_RESET_FLAG;
reg  [4:0] All_FUSE0_REG;
reg        All_FUSE0_ALLOC_REG;
reg        All_FUSE0_PAST_ALLOC_REG;
reg  [4:0] All_FUSE0_REG_INT;
wire [4:0] All_FUSE0_REG_MODIFIED;
reg        All_FUSE0_ALLOC_REG_INT;
wire       All_FUSE0_ALLOC_REG_MODIFIED;

wire All_SEGMENT_RANGE_EN_A,All_SEGMENT_RANGE_EN_B;
 
assign All_SEGMENT_RANGE_EN_A = 1'b1;
assign All_SEGMENT_RANGE_EN_B = 1'b1;
      

 
assign IO_RANGE0_FUSE0_REG =  ( All_SEGMENT_RANGE_EN_A ) ? All_FUSE0_REG_INT   :  { 5 {1'b0}};
assign IO_RANGE0_FUSE0_ALLOC =  ( All_SEGMENT_RANGE_EN_A ) ? All_FUSE0_ALLOC_REG_INT   :  1'b0;
assign IO_RANGE0_FUSE0_PAST_ALLOC =  ( All_SEGMENT_RANGE_EN_A ) ? All_FUSE0_PAST_ALLOC_REG   :  1'b0;
 
always_comb begin
  if ( ERROR[0] & (~Repaired[0]) & All_SEGMENT_RANGE_EN_B & SpareColumnNeeded & ((~All_FUSE0_ALLOC_REG_MODIFIED))) begin
    All_FUSE0_REG_INT              = IOIndex0_B;
    All_FUSE0_ALLOC_REG_INT        = 1'b1;
  end else begin
    All_FUSE0_REG_INT              = All_FUSE0_REG_MODIFIED;
    All_FUSE0_ALLOC_REG_INT        = All_FUSE0_ALLOC_REG_MODIFIED;
  end
end
always_ff @(posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
  if ( ~ BIST_ASYNC_RESETN ) begin
    All_FUSE0_REG                   <= 5'b00000;
    All_FUSE0_ALLOC_REG             <= 1'b0;
    All_FUSE0_PAST_ALLOC_REG        <= 1'b0;
  end else
  if ( LOCAL_RESET ) begin
    All_FUSE0_REG                   <= FROM_BISR_All_SCOL0_FUSE_REG;
    All_FUSE0_ALLOC_REG             <= FROM_BISR_All_SCOL0_ALLOC_REG;
    All_FUSE0_PAST_ALLOC_REG        <= FROM_BISR_All_SCOL0_ALLOC_REG;
  end else begin
    if ( BIST_SHIFT ) begin
      All_FUSE0_REG                 <= { All_FUSE0_REG[3:0],BIRA_SI};
      All_FUSE0_ALLOC_REG           <= All_FUSE0_REG[4];
    end else begin
      if ( (~BIST_HOLD) && BIST_BIRA_EN ) begin
        All_FUSE0_REG               <= All_FUSE0_REG_INT;
        All_FUSE0_ALLOC_REG         <= All_FUSE0_ALLOC_REG_INT;
      end
    end
  end
end
assign BIRA_SO = All_FUSE0_ALLOC_REG;
always_ff @(posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
  if ( ~ BIST_ASYNC_RESETN ) begin
     IOIndex0_R0     <= 5'b00000;
  end else
  if ( LOCAL_RESET ) begin
     IOIndex0_R0     <= 5'b00000;
  end else begin
     IOIndex0_R0     <= IOIndex0;
  end
end
assign IOIndex0_A = IOIndex0;
assign IOIndex0_B = IOIndex0_R0;
assign IO_RANGE0_FUSE0_ERROR_MATCH_CONDITION = IO_RANGE0_FUSE0_ALLOC &
                                           ( IO_RANGE0_FUSE0_REG == IOIndex0_A);
assign IO_RANGE0_FUSE0_ERROR_MATCH = IO_RANGE0_FUSE0_ALLOC &(~IO_RANGE0_FUSE0_PAST_ALLOC)&IO_RANGE0_FUSE0_ERROR_MATCH_CONDITION;
assign IO_RANGE0_FUSE0_ERROR_MATCH_RESET_FLAG = IO_RANGE0_FUSE0_PAST_ALLOC&IO_RANGE0_FUSE0_ERROR_MATCH_CONDITION;
always_ff @(posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
  if ( ~ BIST_ASYNC_RESETN ) begin
    IO_RANGE0_ERROR_MATCH_R <= 1'b0;
  end else
  IO_RANGE0_ERROR_MATCH_R <= IO_RANGE0_FUSE0_ERROR_MATCH;
 
end
assign IO_RANGE0_SPARES_AVAILABLE = (~(IO_RANGE0_FUSE0_ALLOC))&((~IO_RANGE0_FUSE0_ERROR_MATCH_RESET_FLAG));
always_ff @(posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
  if ( ~ BIST_ASYNC_RESETN ) begin
    IO_RANGE0_SPARES_AVAILABLE_R <= 1'b0;
  end else
  IO_RANGE0_SPARES_AVAILABLE_R <= IO_RANGE0_SPARES_AVAILABLE;
end
assign ErrorGlobal = |ERROR;
assign SpareColumnNeeded = (~RepairableBySpareRow) | (PriorityColumn & RepairableBySpareColumn);
assign Repaired[0] = RepairedBySpareRow | RepairedBySpareColumnIORange[0];
assign LOCAL_RESET = CLEAR & (~BIST_HOLD) & (~BIST_SHIFT) & (~LV_TM);
assign RepairedBySpareColumnIORange[0] = (~ERROR[0]) | ((~MultiBitError_R[0]) & IO_RANGE0_ERROR_MATCH_R & ERROR[0]);
 
assign RepairedBySpareColumn = RepairedBySpareColumnIORange[0];
assign RepairableBySpareColumnIORange[0] = ((IO_RANGE0_SPARES_AVAILABLE_R & ERROR[0]) | (~ERROR[0]) | RepairedBySpareColumnIORange[0] ) & (~MultiBitError_R[0]);
assign RepairableBySpareColumn = RepairableBySpareColumnIORange[0];
assign All_FUSE0_ALLOC_REG_MODIFIED               = All_FUSE0_ALLOC_REG;
assign All_FUSE0_REG_MODIFIED      = All_FUSE0_REG;
assign All_SCOL0_FUSE_REG = All_FUSE0_REG_MODIFIED;
assign All_SCOL0_ALLOC_REG = All_FUSE0_ALLOC_REG_MODIFIED;
 
endmodule


module firebird7_in_gate1_tessent_mbist_c1_interface_m5_RowRedundancyAnalysis (
  input  wire       RepairedBySpareColumn,
  input  wire       RepairableBySpareColumn,
  input  wire       PriorityColumn,
  input  wire       BIST_BIRA_EN,
  input  wire       CLEAR,
  input  wire       BIST_HOLD,
  input  wire       BIST_SHIFT,
  input  wire       ErrorGlobal,
  input  wire       BIST_CLK,
  input  wire [6:0] FROM_BISR_ALL_SROW0_FUSE_ADD_REG,
  input  wire       FROM_BISR_ALL_SROW0_ALLOC_REG,
  input  wire [6:0] FROM_BISR_ALL_SROW1_FUSE_ADD_REG,
  input  wire       FROM_BISR_ALL_SROW1_ALLOC_REG,
  input  wire       LV_TM,
  input  wire       BIRA_SI,
  input  wire       BIST_ASYNC_RESETN,
  input  wire [6:0] BIRA_FUSE_ADD_A,
  input  wire [6:0] BIRA_FUSE_ADD_B,
  output wire [6:0] ALL_SROW0_FUSE_ADD_REG,
  output wire       ALL_SROW0_ALLOC_REG,
  output wire [6:0] ALL_SROW1_FUSE_ADD_REG,
  output wire       ALL_SROW1_ALLOC_REG,
  output wire       BIRA_SO,
  output wire       RepairedBySpareRow,
  output wire       RepairableBySpareRow
);
wire       Repaired;
wire       SpareRowNeeded;
wire       LOCAL_RESET;
reg  [6:0] ALL_FUSE0_ADD_REG;
reg        ALL_FUSE0_ALLOC_REG;
reg  [6:0] ALL_FUSE1_ADD_REG;
reg        ALL_FUSE1_ALLOC_REG;
reg  [6:0] ALL_FUSE0_ADD_REG_INT;
reg        ALL_FUSE0_ALLOC_REG_INT;
wire [6:0] ALL_FUSE0_ADD_REG_MODIFIED;
wire       ALL_FUSE0_ALLOC_REG_MODIFIED;
reg        ALL_FUSE0_PAST_ALLOC_REG;
reg  [6:0] ALL_FUSE1_ADD_REG_INT;
reg        ALL_FUSE1_ALLOC_REG_INT;
wire [6:0] ALL_FUSE1_ADD_REG_MODIFIED;
wire       ALL_FUSE1_ALLOC_REG_MODIFIED;
reg        ALL_FUSE1_PAST_ALLOC_REG;
reg        RepairedBySpareRow_R;
reg        RepairableBySpareRow_R;
wire       RepairedBySpareRow_INT;
wire       RepairableBySpareRow_INT;
wire [6:0] SEGMENT_FUSE0_ADD_REG;
wire       SEGMENT_FUSE0_ALLOC_REG;
wire       SEGMENT_FUSE0_ERROR_MATCH;
wire       SEGMENT_FUSE0_ERROR_MATCH_CONDITION;
wire       SEGMENT_FUSE0_ERROR_MATCH_RESET_FLAG;
wire       SEGMENT_FUSE0_PAST_ALLOC_REG;
wire [6:0] SEGMENT_FUSE1_ADD_REG;
wire       SEGMENT_FUSE1_ALLOC_REG;
wire       SEGMENT_FUSE1_ERROR_MATCH;
wire       SEGMENT_FUSE1_ERROR_MATCH_CONDITION;
wire       SEGMENT_FUSE1_ERROR_MATCH_RESET_FLAG;
wire       SEGMENT_FUSE1_PAST_ALLOC_REG;

assign LOCAL_RESET = CLEAR & (~BIST_HOLD) & (~BIST_SHIFT) & (~LV_TM);
wire firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A,firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_B;
 
assign firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A = 1'b1;
assign firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_B = 1'b1;
      
assign SEGMENT_FUSE0_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE0_ALLOC_REG_INT ;
assign SEGMENT_FUSE0_PAST_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE0_PAST_ALLOC_REG ;
assign SEGMENT_FUSE1_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE1_ALLOC_REG_INT ;
assign SEGMENT_FUSE1_PAST_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE1_PAST_ALLOC_REG ;
 
assign SEGMENT_FUSE0_ADD_REG =     firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A ? ALL_FUSE0_ADD_REG_INT :
    {7 { 1'b0 }};
 
assign SEGMENT_FUSE1_ADD_REG =     firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_A ? ALL_FUSE1_ADD_REG_INT :
    {7 { 1'b0 }};
 
 
 
assign SEGMENT_FUSE0_ERROR_MATCH_CONDITION = SEGMENT_FUSE0_ALLOC_REG & (SEGMENT_FUSE0_ADD_REG == BIRA_FUSE_ADD_A);
assign SEGMENT_FUSE0_ERROR_MATCH = SEGMENT_FUSE0_ALLOC_REG &(~SEGMENT_FUSE0_PAST_ALLOC_REG )&SEGMENT_FUSE0_ERROR_MATCH_CONDITION;
assign SEGMENT_FUSE0_ERROR_MATCH_RESET_FLAG = SEGMENT_FUSE0_PAST_ALLOC_REG&SEGMENT_FUSE0_ERROR_MATCH_CONDITION;
assign SEGMENT_FUSE1_ERROR_MATCH_CONDITION = SEGMENT_FUSE1_ALLOC_REG & (SEGMENT_FUSE1_ADD_REG == BIRA_FUSE_ADD_A);
assign SEGMENT_FUSE1_ERROR_MATCH = SEGMENT_FUSE1_ALLOC_REG &(~SEGMENT_FUSE1_PAST_ALLOC_REG )&SEGMENT_FUSE1_ERROR_MATCH_CONDITION;
assign SEGMENT_FUSE1_ERROR_MATCH_RESET_FLAG = SEGMENT_FUSE1_PAST_ALLOC_REG&SEGMENT_FUSE1_ERROR_MATCH_CONDITION;
 
 
 
assign RepairedBySpareRow_INT =  SEGMENT_FUSE0_ERROR_MATCH |  SEGMENT_FUSE1_ERROR_MATCH;
 
assign RepairableBySpareRow_INT = (~( SEGMENT_FUSE0_ALLOC_REG &  SEGMENT_FUSE1_ALLOC_REG)) &  (~SEGMENT_FUSE0_ERROR_MATCH_RESET_FLAG) &  (~SEGMENT_FUSE1_ERROR_MATCH_RESET_FLAG);
always_ff @(posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
  if (~BIST_ASYNC_RESETN) begin
    RepairedBySpareRow_R <= 1'b0;
    RepairableBySpareRow_R <= 1'b0;
  end else begin
    RepairedBySpareRow_R   <= RepairedBySpareRow_INT;
    RepairableBySpareRow_R <= RepairableBySpareRow_INT;
 end
end
assign RepairedBySpareRow   = RepairedBySpareRow_R;
assign RepairableBySpareRow = RepairableBySpareRow_R;
 
// Combinational assignment for RowSegment(ALL), Fuse0 {{{
always_comb begin
  if ( firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_B & ErrorGlobal & (~Repaired) & SpareRowNeeded & (~ALL_FUSE0_ALLOC_REG_MODIFIED)) begin
    ALL_FUSE0_ALLOC_REG_INT         = 1'b1;
    ALL_FUSE0_ADD_REG_INT           = BIRA_FUSE_ADD_B;
  end else begin
    ALL_FUSE0_ALLOC_REG_INT         = ALL_FUSE0_ALLOC_REG_MODIFIED;
    ALL_FUSE0_ADD_REG_INT           = ALL_FUSE0_ADD_REG_MODIFIED;
  end
end
// Combinational assignment for RowSegment(ALL), Fuse0 }}}
// Combinational assignment for RowSegment(ALL), Fuse1 {{{
always_comb begin
  if ( firebird7_in_gate1_tessent_mbist_c1_interface_m5_ALL_SEGMENT_RANGE_EN_B & ErrorGlobal & (~Repaired) & SpareRowNeeded & (~ALL_FUSE1_ALLOC_REG_MODIFIED) & ALL_FUSE0_ALLOC_REG_MODIFIED) begin
    ALL_FUSE1_ALLOC_REG_INT         = 1'b1;
    ALL_FUSE1_ADD_REG_INT           = BIRA_FUSE_ADD_B;
  end else begin
    ALL_FUSE1_ALLOC_REG_INT         = ALL_FUSE1_ALLOC_REG_MODIFIED;
    ALL_FUSE1_ADD_REG_INT           = ALL_FUSE1_ADD_REG_MODIFIED;
  end
end
// Combinational assignment for RowSegment(ALL), Fuse1 }}}
 
always_ff @(posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
  if ( ~BIST_ASYNC_RESETN ) begin
    ALL_FUSE0_ALLOC_REG             <= 1'b0;
    ALL_FUSE0_PAST_ALLOC_REG        <= 1'b0;
    ALL_FUSE0_ADD_REG               <= { 7 {1'b0}};
    ALL_FUSE1_ALLOC_REG             <= 1'b0;
    ALL_FUSE1_PAST_ALLOC_REG        <= 1'b0;
    ALL_FUSE1_ADD_REG               <= { 7 {1'b0}};
  end else
  if ( LOCAL_RESET ) begin
    ALL_FUSE0_ALLOC_REG             <= FROM_BISR_ALL_SROW0_ALLOC_REG;
    ALL_FUSE0_PAST_ALLOC_REG        <= FROM_BISR_ALL_SROW0_ALLOC_REG;
    ALL_FUSE0_ADD_REG               <= FROM_BISR_ALL_SROW0_FUSE_ADD_REG;
    ALL_FUSE1_ALLOC_REG             <= FROM_BISR_ALL_SROW1_ALLOC_REG;
    ALL_FUSE1_PAST_ALLOC_REG        <= FROM_BISR_ALL_SROW1_ALLOC_REG;
    ALL_FUSE1_ADD_REG               <= FROM_BISR_ALL_SROW1_FUSE_ADD_REG;
  end else begin
    if ( BIST_SHIFT ) begin
      ALL_FUSE0_ADD_REG             <= {ALL_FUSE0_ADD_REG[5:0],BIRA_SI};
      ALL_FUSE0_ALLOC_REG           <= ALL_FUSE0_ADD_REG[6];
      ALL_FUSE1_ADD_REG             <= {ALL_FUSE1_ADD_REG[5:0],ALL_FUSE0_ALLOC_REG};
      ALL_FUSE1_ALLOC_REG           <= ALL_FUSE1_ADD_REG[6];
    end else begin
      if ( (~BIST_HOLD) && BIST_BIRA_EN ) begin
        ALL_FUSE0_ALLOC_REG         <= ALL_FUSE0_ALLOC_REG_INT;
        ALL_FUSE0_ADD_REG           <= ALL_FUSE0_ADD_REG_INT;
        ALL_FUSE1_ALLOC_REG         <= ALL_FUSE1_ALLOC_REG_INT;
        ALL_FUSE1_ADD_REG           <= ALL_FUSE1_ADD_REG_INT;
      end
    end
  end
end
assign Repaired       = RepairedBySpareRow | RepairedBySpareColumn;
assign SpareRowNeeded = (~RepairableBySpareColumn) | (~PriorityColumn);
assign ALL_FUSE0_ALLOC_REG_MODIFIED = ALL_FUSE0_ALLOC_REG;
assign ALL_FUSE0_ADD_REG_MODIFIED = ALL_FUSE0_ADD_REG;
assign ALL_FUSE1_ALLOC_REG_MODIFIED = ALL_FUSE1_ALLOC_REG;
assign ALL_FUSE1_ADD_REG_MODIFIED = ALL_FUSE1_ADD_REG;
assign ALL_SROW0_FUSE_ADD_REG  = ALL_FUSE0_ADD_REG_MODIFIED;
assign ALL_SROW0_ALLOC_REG = ALL_FUSE0_ALLOC_REG_MODIFIED;
assign ALL_SROW1_FUSE_ADD_REG  = ALL_FUSE1_ADD_REG_MODIFIED;
assign ALL_SROW1_ALLOC_REG = ALL_FUSE1_ALLOC_REG_MODIFIED;
assign BIRA_SO        = ALL_FUSE1_ALLOC_REG;
 
endmodule
 
