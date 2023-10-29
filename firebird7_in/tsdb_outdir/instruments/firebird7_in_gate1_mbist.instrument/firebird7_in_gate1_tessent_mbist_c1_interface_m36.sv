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
-       Created on: Sun Oct 29 14:14:36 PDT 2023                                 -
----------------------------------------------------------------------------------


*/

/*------------------------------------------------------------------------------
     Module      :  firebird7_in_gate1_tessent_mbist_c1_interface_m36
 
     Description :  This module contains the interface logic for the memory
                    module ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper
 
--------------------------------------------------------------------------------
     Interface Options in Effect
 
     BistDataPipelineStages        : 0;
     BitGrouping                   : 1;
     BitSliceWidth                 : 1;
     ConcurrentWrite               : OFF 
     ConcurrentRead                : OFF 
     ControllerType                : PROG;
     DataOutStage                  : NONE;
     DefaultAlgorithm              : INTELLVPMOVIFASTX;
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

module firebird7_in_gate1_tessent_mbist_c1_interface_m36 (
  input  wire        PriorityColumn,
  input  wire        BIST_CLEAR_BIRA,
  input  wire        wen_IN,
  input  wire        ren_IN,
  input  wire [9:0]  adr_IN,
  input  wire [71:0] din_IN,
  input  wire [71:0] q_IN,
  input  wire        TCK,
  input  wire        BIST_CMP,
  input  wire        INCLUDE_MEM_RESULTS_REG,
  input  wire        BIST_WRITEENABLE,
  input  wire        BIST_READENABLE,
  input  wire [1:0]  BIST_COL_ADD,
  input  wire [7:0]  BIST_ROW_ADD,
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
  input  wire [7:0]  FROM_BISR_ALL_SROW0_FUSE_ADD_REG,
  input  wire        FROM_BISR_ALL_SROW0_ALLOC_REG,
  input  wire [7:0]  FROM_BISR_ALL_SROW1_FUSE_ADD_REG,
  input  wire        FROM_BISR_ALL_SROW1_ALLOC_REG,
  input  wire [6:0]  FROM_BISR_All_SCOL0_FUSE_REG,
  input  wire        FROM_BISR_All_SCOL0_ALLOC_REG,
  input  wire        BIST_SHIFT_BIRA_COLLAR,
  input  wire        RESET_REG_SETUP2,
  input  wire        ERROR_CNT_ZERO,
  output wire        wen,
  output wire        ren,
  output reg  [9:0]  adr,
  output reg  [71:0] din,
  output reg  [71:0] q,
  output reg  [3:0]  SCAN_OBS_FLOPS,
  output wire        BIST_SO,
  output wire        BIST_GO,
  output wire [7:0]  ALL_SROW0_FUSE_ADD_REG,
  output wire        ALL_SROW0_ALLOC_REG,
  output wire [7:0]  ALL_SROW1_FUSE_ADD_REG,
  output wire        ALL_SROW1_ALLOC_REG,
  output wire [6:0]  All_SCOL0_FUSE_REG,
  output wire        All_SCOL0_ALLOC_REG,
  output reg  [1:0]  REPAIR_STATUS
);


wire        MBISTPG_BIRA_SETUP;
wire [7:0]  BIRA_ROW_ADD;
wire        CMP_EN;
wire [71:0] BIST_WRITE_DATA_REP;
wire [71:0] BIST_WRITE_DATA_INT;
reg         BIST_INPUT_SELECT;
wire        BIST_EN_RST;
wire        BIST_CLK_INT;
wire        BIST_CLK_OR_TCK;
wire [71:0] BIST_EXPECT_DATA_REP;
wire [71:0] BIST_EXPECT_DATA_INT;
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
wire [6:0]  IOIndex0_R;
wire        ErrorGlobal;
wire        RepairedBySpareColumn;
wire        RepairableBySpareColumn;
wire        RepairableBySpareRow;
wire        RepairedBySpareRow;
wire [71:0] RAW_CMP_STAT;
wire [71:0] DATA_TO_MEM;
wire [71:0] DATA_FROM_MEM;
wire [71:0] DATA_FROM_MEM_EXP;
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
wire [71:0] din_DIN_OBS;
wire [71:0] q_TO_BYPASS;
wire [71:0] q_FROM_BYPASS;
wire [71:0] din_TEST_IN;
reg  [71:0] q_SCAN_IN;
wire        EDATA_CKB_EN;
wire        EDATA_COL_ADD_BIT0;
wire        BIST_COLLAR_EN_PIPE;
reg         BIST_COLLAR_EN_PIPE_0;
wire        EDATA_CKB_EN_PIPE;
reg         EDATA_CKB_EN_PIPE_0;
wire        EDATA_COL_ADD_BIT0_PIPE;
reg         EDATA_COL_ADD_BIT0_PIPE_0;
wire [7:0]  BIST_ROW_ADD_PIPE;
reg  [7:0]  BIST_ROW_ADD_PIPE_0;
wire        USE_DEFAULTS;
wire        BIST_COLLAR_HOLD_INT;
wire        FREEZE_STOP_ERROR_RST;
wire        FREEZE_STOP_ERROR_SI;
wire        HOLD_EN;
wire        BIST_SETUP0_SYNC;
wire        LOGIC_HIGH;
wire [7:0]  BIST_ROW_ADD_R1;
reg  [7:0]  BIST_ROW_ADD_R2;
reg  [7:0]  BIST_ROW_ADD_R3;
reg  [7:0]  BIST_ROW_ADD_R4;
wire [7:0]  BIRA_ROW_ADD_A;
wire [7:0]  BIRA_ROW_ADD_B;

//---------------------------
// Memory Interface Main Code
//---------------------------
   assign LOGIC_HIGH = 1'b1;
// Address Pipeline {{{
  assign BIST_ROW_ADD_R1 = BIST_ROW_ADD_PIPE;
// synopsys async_set_reset "BIST_ASYNC_RESETN"
always_ff @(posedge BIST_CLK_INT or negedge BIST_ASYNC_RESETN ) begin
  if (~BIST_ASYNC_RESETN) begin
    BIST_ROW_ADD_R2 <= 8'b00000000;
    BIST_ROW_ADD_R3 <= 8'b00000000;
    BIST_ROW_ADD_R4 <= 8'b00000000;
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
assign BIRA_ROW_ADD_A[7] = BIST_ROW_ADD_R3[7];
assign BIRA_ROW_ADD_B[0] = BIST_ROW_ADD_R4[0];
assign BIRA_ROW_ADD_B[1] = BIST_ROW_ADD_R4[1];
assign BIRA_ROW_ADD_B[2] = BIST_ROW_ADD_R4[2];
assign BIRA_ROW_ADD_B[3] = BIST_ROW_ADD_R4[3];
assign BIRA_ROW_ADD_B[4] = BIST_ROW_ADD_R4[4];
assign BIRA_ROW_ADD_B[5] = BIST_ROW_ADD_R4[5];
assign BIRA_ROW_ADD_B[6] = BIST_ROW_ADD_R4[6];
assign BIRA_ROW_ADD_B[7] = BIST_ROW_ADD_R4[7];
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
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA,
                                       BIST_WRITE_DATA
                                     };
 
//-----------------------
//-- Checkerboard Data --
//-----------------------
   assign BIST_WRITE_DATA_INT       = ~(CHKBCI_PHASE) ? BIST_WRITE_DATA_REP : ({72{BIST_WRITE_DATA_REP[0]}} ^ {72{BIST_COL_ADD[0]}});
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
   wire   [1:0]                     BIST_COL_ADD_SHADOW;
   wire   [7:0]                     BIST_ROW_ADD_SHADOW;
   assign BIST_ROW_ADD_SHADOW[7] = BIST_ROW_ADD[7];
   assign BIST_ROW_ADD_SHADOW[6] = BIST_ROW_ADD[6];
   assign BIST_ROW_ADD_SHADOW[5] = BIST_ROW_ADD[5];
   assign BIST_ROW_ADD_SHADOW[4] = BIST_ROW_ADD[4];
   assign BIST_ROW_ADD_SHADOW[3] = BIST_ROW_ADD[3];
   assign BIST_ROW_ADD_SHADOW[2] = BIST_ROW_ADD[2];
   assign BIST_ROW_ADD_SHADOW[1] = BIST_ROW_ADD[1];
   assign BIST_ROW_ADD_SHADOW[0] = BIST_ROW_ADD[0];
   assign BIST_COL_ADD_SHADOW[1] = BIST_COL_ADD[1];
   assign BIST_COL_ADD_SHADOW[0] = BIST_COL_ADD[0];
   assign adr_TEST_IN               = {
                                         BIST_ROW_ADD_SHADOW[7],
                                         BIST_ROW_ADD_SHADOW[6],
                                         BIST_ROW_ADD_SHADOW[5],
                                         BIST_ROW_ADD_SHADOW[4],
                                         BIST_ROW_ADD_SHADOW[3],
                                         BIST_ROW_ADD_SHADOW[2],
                                         BIST_ROW_ADD_SHADOW[1],
                                         BIST_ROW_ADD_SHADOW[0],
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
                                        DATA_TO_MEM[71],
                                        DATA_TO_MEM[70],
                                        DATA_TO_MEM[69],
                                        DATA_TO_MEM[68],
                                        DATA_TO_MEM[67],
                                        DATA_TO_MEM[66],
                                        DATA_TO_MEM[65],
                                        DATA_TO_MEM[64],
                                        DATA_TO_MEM[63],
                                        DATA_TO_MEM[62],
                                        DATA_TO_MEM[61],
                                        DATA_TO_MEM[60],
                                        DATA_TO_MEM[59],
                                        DATA_TO_MEM[58],
                                        DATA_TO_MEM[57],
                                        DATA_TO_MEM[56],
                                        DATA_TO_MEM[55],
                                        DATA_TO_MEM[54],
                                        DATA_TO_MEM[53],
                                        DATA_TO_MEM[52],
                                        DATA_TO_MEM[51],
                                        DATA_TO_MEM[50],
                                        DATA_TO_MEM[49],
                                        DATA_TO_MEM[48],
                                        DATA_TO_MEM[47],
                                        DATA_TO_MEM[46],
                                        DATA_TO_MEM[45],
                                        DATA_TO_MEM[44],
                                        DATA_TO_MEM[43],
                                        DATA_TO_MEM[42],
                                        DATA_TO_MEM[41],
                                        DATA_TO_MEM[40],
                                        DATA_TO_MEM[39],
                                        DATA_TO_MEM[38],
                                        DATA_TO_MEM[37],
                                        DATA_TO_MEM[36],
                                        DATA_TO_MEM[35],
                                        DATA_TO_MEM[34],
                                        DATA_TO_MEM[33],
                                        DATA_TO_MEM[32],
                                        DATA_TO_MEM[31],
                                        DATA_TO_MEM[30],
                                        DATA_TO_MEM[29],
                                        DATA_TO_MEM[28],
                                        DATA_TO_MEM[27],
                                        DATA_TO_MEM[26],
                                        DATA_TO_MEM[25],
                                        DATA_TO_MEM[24],
                                        DATA_TO_MEM[23],
                                        DATA_TO_MEM[22],
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
                                        din[71],
                                        din[70],
                                        din[69],
                                        din[68],
                                        din[67],
                                        din[66],
                                        din[65],
                                        din[64],
                                        din[63],
                                        din[62],
                                        din[61],
                                        din[60],
                                        din[59],
                                        din[58],
                                        din[57],
                                        din[56],
                                        din[55],
                                        din[54],
                                        din[53],
                                        din[52],
                                        din[51],
                                        din[50],
                                        din[49],
                                        din[48],
                                        din[47],
                                        din[46],
                                        din[45],
                                        din[44],
                                        din[43],
                                        din[42],
                                        din[41],
                                        din[40],
                                        din[39],
                                        din[38],
                                        din[37],
                                        din[36],
                                        din[35],
                                        din[34],
                                        din[33],
                                        din[32],
                                        din[31],
                                        din[30],
                                        din[29],
                                        din[28],
                                        din[27],
                                        din[26],
                                        din[25],
                                        din[24],
                                        din[23],
                                        din[22],
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
      q_SCAN_IN                     <= 72'd0;
   else
      q_SCAN_IN                     <= {72{MEM_BYPASS_EN}} & q_TO_BYPASS;
   end
 
   assign q_TO_BYPASS               = {
                                        din_DIN_OBS[71],
                                        din_DIN_OBS[70],
                                        din_DIN_OBS[69],
                                        din_DIN_OBS[68],
                                        din_DIN_OBS[67],
                                        din_DIN_OBS[66],
                                        din_DIN_OBS[65],
                                        din_DIN_OBS[64],
                                        din_DIN_OBS[63],
                                        din_DIN_OBS[62],
                                        din_DIN_OBS[61],
                                        din_DIN_OBS[60],
                                        din_DIN_OBS[59],
                                        din_DIN_OBS[58],
                                        din_DIN_OBS[57],
                                        din_DIN_OBS[56],
                                        din_DIN_OBS[55],
                                        din_DIN_OBS[54],
                                        din_DIN_OBS[53],
                                        din_DIN_OBS[52],
                                        din_DIN_OBS[51],
                                        din_DIN_OBS[50],
                                        din_DIN_OBS[49],
                                        din_DIN_OBS[48],
                                        din_DIN_OBS[47],
                                        din_DIN_OBS[46],
                                        din_DIN_OBS[45],
                                        din_DIN_OBS[44],
                                        din_DIN_OBS[43],
                                        din_DIN_OBS[42],
                                        din_DIN_OBS[41],
                                        din_DIN_OBS[40],
                                        din_DIN_OBS[39],
                                        din_DIN_OBS[38],
                                        din_DIN_OBS[37],
                                        din_DIN_OBS[36],
                                        din_DIN_OBS[35],
                                        din_DIN_OBS[34],
                                        din_DIN_OBS[33],
                                        din_DIN_OBS[32],
                                        din_DIN_OBS[31],
                                        din_DIN_OBS[30],
                                        din_DIN_OBS[29],
                                        din_DIN_OBS[28],
                                        din_DIN_OBS[27],
                                        din_DIN_OBS[26],
                                        din_DIN_OBS[25],
                                        din_DIN_OBS[24],
                                        din_DIN_OBS[23],
                                        din_DIN_OBS[22],
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
                                       q[71],
                                       q[70],
                                       q[69],
                                       q[68],
                                       q[67],
                                       q[66],
                                       q[65],
                                       q[64],
                                       q[63],
                                       q[62],
                                       q[61],
                                       q[60],
                                       q[59],
                                       q[58],
                                       q[57],
                                       q[56],
                                       q[55],
                                       q[54],
                                       q[53],
                                       q[52],
                                       q[51],
                                       q[50],
                                       q[49],
                                       q[48],
                                       q[47],
                                       q[46],
                                       q[45],
                                       q[44],
                                       q[43],
                                       q[42],
                                       q[41],
                                       q[40],
                                       q[39],
                                       q[38],
                                       q[37],
                                       q[36],
                                       q[35],
                                       q[34],
                                       q[33],
                                       q[32],
                                       q[31],
                                       q[30],
                                       q[29],
                                       q[28],
                                       q[27],
                                       q[26],
                                       q[25],
                                       q[24],
                                       q[23],
                                       q[22],
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
            BIST_ROW_ADD_PIPE_0 <= 8'd0;
        end else
        if (BIST_CLEAR) begin
            BIST_ROW_ADD_PIPE_0 <= 8'd0;
        end else
        begin
            BIST_ROW_ADD_PIPE_0 <= BIST_ROW_ADD;
        end
    end
    assign BIST_ROW_ADD_PIPE        =
                    (BIST_ROW_ADD_PIPE_0 & {8{OPSET_SELECT_DECODED[0]}}) | // OperationSet: SYNCCUSTOM
                    (BIST_ROW_ADD & {8{OPSET_SELECT_DECODED[1]}}) ; // OperationSet: SYNC
    // Pipelining stages for BIST signal BIST_ROW_ADD }}}

//---------------------------
//-- Replicate Expect Data --
//---------------------------
 
   assign BIST_EXPECT_DATA_REP      = { // 
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA,
                                      BIST_EXPECT_DATA
                                     };
//-----------------
//-- Expect Data --
//-----------------
   assign BIST_EXPECT_DATA_INT      = ~(EDATA_CKB_EN_PIPE) ? BIST_EXPECT_DATA_REP : ({72{BIST_EXPECT_DATA_REP[0]}} ^ {72{EDATA_COL_ADD_BIT0_PIPE}});
   assign DATA_FROM_MEM_EXP         = BIST_EXPECT_DATA_INT;
assign CMP_EN = BIST_CMP;

//-----------------------
//-- Local Comparators --
//-----------------------
 
   assign RAW_CMP_STAT[71]          = ~(DATA_FROM_MEM[71] == DATA_FROM_MEM_EXP[71]);
   assign RAW_CMP_STAT[70]          = ~(DATA_FROM_MEM[70] == DATA_FROM_MEM_EXP[70]);
   assign RAW_CMP_STAT[69]          = ~(DATA_FROM_MEM[69] == DATA_FROM_MEM_EXP[69]);
   assign RAW_CMP_STAT[68]          = ~(DATA_FROM_MEM[68] == DATA_FROM_MEM_EXP[68]);
   assign RAW_CMP_STAT[67]          = ~(DATA_FROM_MEM[67] == DATA_FROM_MEM_EXP[67]);
   assign RAW_CMP_STAT[66]          = ~(DATA_FROM_MEM[66] == DATA_FROM_MEM_EXP[66]);
   assign RAW_CMP_STAT[65]          = ~(DATA_FROM_MEM[65] == DATA_FROM_MEM_EXP[65]);
   assign RAW_CMP_STAT[64]          = ~(DATA_FROM_MEM[64] == DATA_FROM_MEM_EXP[64]);
   assign RAW_CMP_STAT[63]          = ~(DATA_FROM_MEM[63] == DATA_FROM_MEM_EXP[63]);
   assign RAW_CMP_STAT[62]          = ~(DATA_FROM_MEM[62] == DATA_FROM_MEM_EXP[62]);
   assign RAW_CMP_STAT[61]          = ~(DATA_FROM_MEM[61] == DATA_FROM_MEM_EXP[61]);
   assign RAW_CMP_STAT[60]          = ~(DATA_FROM_MEM[60] == DATA_FROM_MEM_EXP[60]);
   assign RAW_CMP_STAT[59]          = ~(DATA_FROM_MEM[59] == DATA_FROM_MEM_EXP[59]);
   assign RAW_CMP_STAT[58]          = ~(DATA_FROM_MEM[58] == DATA_FROM_MEM_EXP[58]);
   assign RAW_CMP_STAT[57]          = ~(DATA_FROM_MEM[57] == DATA_FROM_MEM_EXP[57]);
   assign RAW_CMP_STAT[56]          = ~(DATA_FROM_MEM[56] == DATA_FROM_MEM_EXP[56]);
   assign RAW_CMP_STAT[55]          = ~(DATA_FROM_MEM[55] == DATA_FROM_MEM_EXP[55]);
   assign RAW_CMP_STAT[54]          = ~(DATA_FROM_MEM[54] == DATA_FROM_MEM_EXP[54]);
   assign RAW_CMP_STAT[53]          = ~(DATA_FROM_MEM[53] == DATA_FROM_MEM_EXP[53]);
   assign RAW_CMP_STAT[52]          = ~(DATA_FROM_MEM[52] == DATA_FROM_MEM_EXP[52]);
   assign RAW_CMP_STAT[51]          = ~(DATA_FROM_MEM[51] == DATA_FROM_MEM_EXP[51]);
   assign RAW_CMP_STAT[50]          = ~(DATA_FROM_MEM[50] == DATA_FROM_MEM_EXP[50]);
   assign RAW_CMP_STAT[49]          = ~(DATA_FROM_MEM[49] == DATA_FROM_MEM_EXP[49]);
   assign RAW_CMP_STAT[48]          = ~(DATA_FROM_MEM[48] == DATA_FROM_MEM_EXP[48]);
   assign RAW_CMP_STAT[47]          = ~(DATA_FROM_MEM[47] == DATA_FROM_MEM_EXP[47]);
   assign RAW_CMP_STAT[46]          = ~(DATA_FROM_MEM[46] == DATA_FROM_MEM_EXP[46]);
   assign RAW_CMP_STAT[45]          = ~(DATA_FROM_MEM[45] == DATA_FROM_MEM_EXP[45]);
   assign RAW_CMP_STAT[44]          = ~(DATA_FROM_MEM[44] == DATA_FROM_MEM_EXP[44]);
   assign RAW_CMP_STAT[43]          = ~(DATA_FROM_MEM[43] == DATA_FROM_MEM_EXP[43]);
   assign RAW_CMP_STAT[42]          = ~(DATA_FROM_MEM[42] == DATA_FROM_MEM_EXP[42]);
   assign RAW_CMP_STAT[41]          = ~(DATA_FROM_MEM[41] == DATA_FROM_MEM_EXP[41]);
   assign RAW_CMP_STAT[40]          = ~(DATA_FROM_MEM[40] == DATA_FROM_MEM_EXP[40]);
   assign RAW_CMP_STAT[39]          = ~(DATA_FROM_MEM[39] == DATA_FROM_MEM_EXP[39]);
   assign RAW_CMP_STAT[38]          = ~(DATA_FROM_MEM[38] == DATA_FROM_MEM_EXP[38]);
   assign RAW_CMP_STAT[37]          = ~(DATA_FROM_MEM[37] == DATA_FROM_MEM_EXP[37]);
   assign RAW_CMP_STAT[36]          = ~(DATA_FROM_MEM[36] == DATA_FROM_MEM_EXP[36]);
   assign RAW_CMP_STAT[35]          = ~(DATA_FROM_MEM[35] == DATA_FROM_MEM_EXP[35]);
   assign RAW_CMP_STAT[34]          = ~(DATA_FROM_MEM[34] == DATA_FROM_MEM_EXP[34]);
   assign RAW_CMP_STAT[33]          = ~(DATA_FROM_MEM[33] == DATA_FROM_MEM_EXP[33]);
   assign RAW_CMP_STAT[32]          = ~(DATA_FROM_MEM[32] == DATA_FROM_MEM_EXP[32]);
   assign RAW_CMP_STAT[31]          = ~(DATA_FROM_MEM[31] == DATA_FROM_MEM_EXP[31]);
   assign RAW_CMP_STAT[30]          = ~(DATA_FROM_MEM[30] == DATA_FROM_MEM_EXP[30]);
   assign RAW_CMP_STAT[29]          = ~(DATA_FROM_MEM[29] == DATA_FROM_MEM_EXP[29]);
   assign RAW_CMP_STAT[28]          = ~(DATA_FROM_MEM[28] == DATA_FROM_MEM_EXP[28]);
   assign RAW_CMP_STAT[27]          = ~(DATA_FROM_MEM[27] == DATA_FROM_MEM_EXP[27]);
   assign RAW_CMP_STAT[26]          = ~(DATA_FROM_MEM[26] == DATA_FROM_MEM_EXP[26]);
   assign RAW_CMP_STAT[25]          = ~(DATA_FROM_MEM[25] == DATA_FROM_MEM_EXP[25]);
   assign RAW_CMP_STAT[24]          = ~(DATA_FROM_MEM[24] == DATA_FROM_MEM_EXP[24]);
   assign RAW_CMP_STAT[23]          = ~(DATA_FROM_MEM[23] == DATA_FROM_MEM_EXP[23]);
   assign RAW_CMP_STAT[22]          = ~(DATA_FROM_MEM[22] == DATA_FROM_MEM_EXP[22]);
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
firebird7_in_gate1_tessent_mbist_c1_interface_m36_STATUS MBISTPG_STATUS (
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
firebird7_in_gate1_tessent_mbist_c1_interface_m36_ColumnRedundancyAnalysis MBIST_ColumnRedundancyAnalysis (
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
         
firebird7_in_gate1_tessent_mbist_c1_interface_m36_RowRedundancyAnalysis MBIST_RowRedundancyAnalysis_INST (
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

endmodule // firebird7_in_gate1_tessent_mbist_c1_interface_m36



        
module firebird7_in_gate1_tessent_mbist_c1_interface_m36_STATUS (
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
  input  wire [71:0] RAW_CMP_STAT,
  input  wire        MCP_BOUNDING_EN,
  input  wire        INCLUDE_MEM_RESULTS_REG,
  output reg         GO_EN,
  output wire [0:0]  ERROR,
  output wire [0:0]  ERROR_R,
  output wire [0:0]  MultiBitError_R,
  output wire [0:0]  ERROR_R_A,
  output reg  [6:0]  IOIndex0_R,
  output wire        SO,
  output wire        BIST_GO
);
wire        GO_ID_REG_RST;
reg  [71:0] GO_ID_REG;
wire        BIST_GO_INT;
wire [71:0] ROW_DATA_MAP;
wire        GO_ID_FEEDBACK_EN;
wire [0:0]  IO_SEG_GLOBAL_GO_ID;
reg  [0:0]  ERROR_R1;
reg  [0:0]  ERROR_R2;
reg  [0:0]  MultiBitError;
reg  [0:0]  MultiBitError_R2;
reg  [0:0]  MultiBitError_R1;
wire [71:0] IO_RANGE0;
reg  [6:0]  IOIndex0;

 
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
    
wire [71:0] GO_ID_REG_MUX, BIST_SHIFT_COLLAR_MUX;
wire [71:0] GO_ID_REG_MUX_SEL ;
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
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG22 (
            .sa      ( GO_ID_REG_MUX_SEL[22]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[22] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[22]            ),
            .o       ( GO_ID_REG_MUX[22]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG23 (
            .sa      ( GO_ID_REG_MUX_SEL[23]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[23] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[23]            ),
            .o       ( GO_ID_REG_MUX[23]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG24 (
            .sa      ( GO_ID_REG_MUX_SEL[24]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[24] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[24]            ),
            .o       ( GO_ID_REG_MUX[24]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG25 (
            .sa      ( GO_ID_REG_MUX_SEL[25]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[25] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[25]            ),
            .o       ( GO_ID_REG_MUX[25]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG26 (
            .sa      ( GO_ID_REG_MUX_SEL[26]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[26] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[26]            ),
            .o       ( GO_ID_REG_MUX[26]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG27 (
            .sa      ( GO_ID_REG_MUX_SEL[27]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[27] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[27]            ),
            .o       ( GO_ID_REG_MUX[27]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG28 (
            .sa      ( GO_ID_REG_MUX_SEL[28]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[28] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[28]            ),
            .o       ( GO_ID_REG_MUX[28]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG29 (
            .sa      ( GO_ID_REG_MUX_SEL[29]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[29] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[29]            ),
            .o       ( GO_ID_REG_MUX[29]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG30 (
            .sa      ( GO_ID_REG_MUX_SEL[30]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[30] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[30]            ),
            .o       ( GO_ID_REG_MUX[30]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG31 (
            .sa      ( GO_ID_REG_MUX_SEL[31]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[31] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[31]            ),
            .o       ( GO_ID_REG_MUX[31]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG32 (
            .sa      ( GO_ID_REG_MUX_SEL[32]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[32] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[32]            ),
            .o       ( GO_ID_REG_MUX[32]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG33 (
            .sa      ( GO_ID_REG_MUX_SEL[33]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[33] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[33]            ),
            .o       ( GO_ID_REG_MUX[33]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG34 (
            .sa      ( GO_ID_REG_MUX_SEL[34]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[34] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[34]            ),
            .o       ( GO_ID_REG_MUX[34]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG35 (
            .sa      ( GO_ID_REG_MUX_SEL[35]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[35] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[35]            ),
            .o       ( GO_ID_REG_MUX[35]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG36 (
            .sa      ( GO_ID_REG_MUX_SEL[36]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[36] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[36]            ),
            .o       ( GO_ID_REG_MUX[36]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG37 (
            .sa      ( GO_ID_REG_MUX_SEL[37]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[37] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[37]            ),
            .o       ( GO_ID_REG_MUX[37]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG38 (
            .sa      ( GO_ID_REG_MUX_SEL[38]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[38] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[38]            ),
            .o       ( GO_ID_REG_MUX[38]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG39 (
            .sa      ( GO_ID_REG_MUX_SEL[39]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[39] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[39]            ),
            .o       ( GO_ID_REG_MUX[39]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG40 (
            .sa      ( GO_ID_REG_MUX_SEL[40]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[40] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[40]            ),
            .o       ( GO_ID_REG_MUX[40]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG41 (
            .sa      ( GO_ID_REG_MUX_SEL[41]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[41] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[41]            ),
            .o       ( GO_ID_REG_MUX[41]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG42 (
            .sa      ( GO_ID_REG_MUX_SEL[42]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[42] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[42]            ),
            .o       ( GO_ID_REG_MUX[42]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG43 (
            .sa      ( GO_ID_REG_MUX_SEL[43]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[43] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[43]            ),
            .o       ( GO_ID_REG_MUX[43]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG44 (
            .sa      ( GO_ID_REG_MUX_SEL[44]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[44] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[44]            ),
            .o       ( GO_ID_REG_MUX[44]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG45 (
            .sa      ( GO_ID_REG_MUX_SEL[45]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[45] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[45]            ),
            .o       ( GO_ID_REG_MUX[45]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG46 (
            .sa      ( GO_ID_REG_MUX_SEL[46]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[46] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[46]            ),
            .o       ( GO_ID_REG_MUX[46]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG47 (
            .sa      ( GO_ID_REG_MUX_SEL[47]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[47] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[47]            ),
            .o       ( GO_ID_REG_MUX[47]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG48 (
            .sa      ( GO_ID_REG_MUX_SEL[48]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[48] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[48]            ),
            .o       ( GO_ID_REG_MUX[48]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG49 (
            .sa      ( GO_ID_REG_MUX_SEL[49]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[49] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[49]            ),
            .o       ( GO_ID_REG_MUX[49]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG50 (
            .sa      ( GO_ID_REG_MUX_SEL[50]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[50] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[50]            ),
            .o       ( GO_ID_REG_MUX[50]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG51 (
            .sa      ( GO_ID_REG_MUX_SEL[51]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[51] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[51]            ),
            .o       ( GO_ID_REG_MUX[51]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG52 (
            .sa      ( GO_ID_REG_MUX_SEL[52]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[52] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[52]            ),
            .o       ( GO_ID_REG_MUX[52]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG53 (
            .sa      ( GO_ID_REG_MUX_SEL[53]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[53] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[53]            ),
            .o       ( GO_ID_REG_MUX[53]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG54 (
            .sa      ( GO_ID_REG_MUX_SEL[54]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[54] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[54]            ),
            .o       ( GO_ID_REG_MUX[54]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG55 (
            .sa      ( GO_ID_REG_MUX_SEL[55]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[55] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[55]            ),
            .o       ( GO_ID_REG_MUX[55]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG56 (
            .sa      ( GO_ID_REG_MUX_SEL[56]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[56] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[56]            ),
            .o       ( GO_ID_REG_MUX[56]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG57 (
            .sa      ( GO_ID_REG_MUX_SEL[57]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[57] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[57]            ),
            .o       ( GO_ID_REG_MUX[57]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG58 (
            .sa      ( GO_ID_REG_MUX_SEL[58]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[58] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[58]            ),
            .o       ( GO_ID_REG_MUX[58]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG59 (
            .sa      ( GO_ID_REG_MUX_SEL[59]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[59] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[59]            ),
            .o       ( GO_ID_REG_MUX[59]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG60 (
            .sa      ( GO_ID_REG_MUX_SEL[60]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[60] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[60]            ),
            .o       ( GO_ID_REG_MUX[60]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG61 (
            .sa      ( GO_ID_REG_MUX_SEL[61]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[61] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[61]            ),
            .o       ( GO_ID_REG_MUX[61]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG62 (
            .sa      ( GO_ID_REG_MUX_SEL[62]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[62] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[62]            ),
            .o       ( GO_ID_REG_MUX[62]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG63 (
            .sa      ( GO_ID_REG_MUX_SEL[63]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[63] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[63]            ),
            .o       ( GO_ID_REG_MUX[63]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG64 (
            .sa      ( GO_ID_REG_MUX_SEL[64]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[64] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[64]            ),
            .o       ( GO_ID_REG_MUX[64]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG65 (
            .sa      ( GO_ID_REG_MUX_SEL[65]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[65] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[65]            ),
            .o       ( GO_ID_REG_MUX[65]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG66 (
            .sa      ( GO_ID_REG_MUX_SEL[66]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[66] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[66]            ),
            .o       ( GO_ID_REG_MUX[66]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG67 (
            .sa      ( GO_ID_REG_MUX_SEL[67]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[67] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[67]            ),
            .o       ( GO_ID_REG_MUX[67]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG68 (
            .sa      ( GO_ID_REG_MUX_SEL[68]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[68] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[68]            ),
            .o       ( GO_ID_REG_MUX[68]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG69 (
            .sa      ( GO_ID_REG_MUX_SEL[69]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[69] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[69]            ),
            .o       ( GO_ID_REG_MUX[69]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG70 (
            .sa      ( GO_ID_REG_MUX_SEL[70]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[70] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[70]            ),
            .o       ( GO_ID_REG_MUX[70]           )
            );
    i0smbn022ab1n02x5 tessent_persistent_cell_MUX_GO_ID_REG71 (
            .sa      ( GO_ID_REG_MUX_SEL[71]       ),
            .a       ( BIST_SHIFT_COLLAR_MUX[71] & ~GO_ID_REG_CLR                ),
            .b       ( ROW_DATA_MAP[71]            ),
            .o       ( GO_ID_REG_MUX[71]           )
            );
// Instantiate persistent GO_ID_REG_MUX cells }}}
   assign GO_ID_REG_MUX_SEL = (GO_ID_REG & {72{GO_ID_FEEDBACK_EN}})  | {72 {HOLD_OR_RESET | FREEZE_GO_ID }};
   assign BIST_SHIFT_COLLAR_MUX = ((~MCP_BOUNDING_EN) & BIST_SHIFT_COLLAR) ? {SI,GO_ID_REG[71:1]} : GO_ID_REG;
 
   // synopsys async_set_reset "BIST_ASYNC_RESETN"
   always_ff @ (posedge BIST_CLK or negedge BIST_ASYNC_RESETN) begin
      if (~BIST_ASYNC_RESETN)
         GO_ID_REG   <= {72{1'b0}};
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
assign IO_RANGE0[22] = GO_ID_REG[22];
assign IO_RANGE0[23] = GO_ID_REG[23];
assign IO_RANGE0[24] = GO_ID_REG[24];
assign IO_RANGE0[25] = GO_ID_REG[25];
assign IO_RANGE0[26] = GO_ID_REG[26];
assign IO_RANGE0[27] = GO_ID_REG[27];
assign IO_RANGE0[28] = GO_ID_REG[28];
assign IO_RANGE0[29] = GO_ID_REG[29];
assign IO_RANGE0[30] = GO_ID_REG[30];
assign IO_RANGE0[31] = GO_ID_REG[31];
assign IO_RANGE0[32] = GO_ID_REG[32];
assign IO_RANGE0[33] = GO_ID_REG[33];
assign IO_RANGE0[34] = GO_ID_REG[34];
assign IO_RANGE0[35] = GO_ID_REG[35];
assign IO_RANGE0[36] = GO_ID_REG[36];
assign IO_RANGE0[37] = GO_ID_REG[37];
assign IO_RANGE0[38] = GO_ID_REG[38];
assign IO_RANGE0[39] = GO_ID_REG[39];
assign IO_RANGE0[40] = GO_ID_REG[40];
assign IO_RANGE0[41] = GO_ID_REG[41];
assign IO_RANGE0[42] = GO_ID_REG[42];
assign IO_RANGE0[43] = GO_ID_REG[43];
assign IO_RANGE0[44] = GO_ID_REG[44];
assign IO_RANGE0[45] = GO_ID_REG[45];
assign IO_RANGE0[46] = GO_ID_REG[46];
assign IO_RANGE0[47] = GO_ID_REG[47];
assign IO_RANGE0[48] = GO_ID_REG[48];
assign IO_RANGE0[49] = GO_ID_REG[49];
assign IO_RANGE0[50] = GO_ID_REG[50];
assign IO_RANGE0[51] = GO_ID_REG[51];
assign IO_RANGE0[52] = GO_ID_REG[52];
assign IO_RANGE0[53] = GO_ID_REG[53];
assign IO_RANGE0[54] = GO_ID_REG[54];
assign IO_RANGE0[55] = GO_ID_REG[55];
assign IO_RANGE0[56] = GO_ID_REG[56];
assign IO_RANGE0[57] = GO_ID_REG[57];
assign IO_RANGE0[58] = GO_ID_REG[58];
assign IO_RANGE0[59] = GO_ID_REG[59];
assign IO_RANGE0[60] = GO_ID_REG[60];
assign IO_RANGE0[61] = GO_ID_REG[61];
assign IO_RANGE0[62] = GO_ID_REG[62];
assign IO_RANGE0[63] = GO_ID_REG[63];
assign IO_RANGE0[64] = GO_ID_REG[64];
assign IO_RANGE0[65] = GO_ID_REG[65];
assign IO_RANGE0[66] = GO_ID_REG[66];
assign IO_RANGE0[67] = GO_ID_REG[67];
assign IO_RANGE0[68] = GO_ID_REG[68];
assign IO_RANGE0[69] = GO_ID_REG[69];
assign IO_RANGE0[70] = GO_ID_REG[70];
assign IO_RANGE0[71] = GO_ID_REG[71];
  // [end]   : IO_RANGE0 bus assignment }}}
  // [start] : BIRA signal assignments for IO_RANGE0 {{{
always_comb begin
    case( IO_RANGE0 )
        72'b000000000000000000000000000000000000000000000000000000000000000000000000 : begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000000;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000000000001: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000000;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000000000010: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000001;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000000000100: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000010;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000000001000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000011;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000000010000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000100;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000000100000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000101;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000001000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000110;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000010000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0000111;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000000100000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001000;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000001000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001001;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000010000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001010;
                    end
        72'b000000000000000000000000000000000000000000000000000000000000100000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001011;
                    end
        72'b000000000000000000000000000000000000000000000000000000000001000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001100;
                    end
        72'b000000000000000000000000000000000000000000000000000000000010000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001101;
                    end
        72'b000000000000000000000000000000000000000000000000000000000100000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001110;
                    end
        72'b000000000000000000000000000000000000000000000000000000001000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0001111;
                    end
        72'b000000000000000000000000000000000000000000000000000000010000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010000;
                    end
        72'b000000000000000000000000000000000000000000000000000000100000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010001;
                    end
        72'b000000000000000000000000000000000000000000000000000001000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010010;
                    end
        72'b000000000000000000000000000000000000000000000000000010000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010011;
                    end
        72'b000000000000000000000000000000000000000000000000000100000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010100;
                    end
        72'b000000000000000000000000000000000000000000000000001000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010101;
                    end
        72'b000000000000000000000000000000000000000000000000010000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010110;
                    end
        72'b000000000000000000000000000000000000000000000000100000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0010111;
                    end
        72'b000000000000000000000000000000000000000000000001000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011000;
                    end
        72'b000000000000000000000000000000000000000000000010000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011001;
                    end
        72'b000000000000000000000000000000000000000000000100000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011010;
                    end
        72'b000000000000000000000000000000000000000000001000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011011;
                    end
        72'b000000000000000000000000000000000000000000010000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011100;
                    end
        72'b000000000000000000000000000000000000000000100000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011101;
                    end
        72'b000000000000000000000000000000000000000001000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011110;
                    end
        72'b000000000000000000000000000000000000000010000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0011111;
                    end
        72'b000000000000000000000000000000000000000100000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100000;
                    end
        72'b000000000000000000000000000000000000001000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100001;
                    end
        72'b000000000000000000000000000000000000010000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100010;
                    end
        72'b000000000000000000000000000000000000100000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100011;
                    end
        72'b000000000000000000000000000000000001000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100100;
                    end
        72'b000000000000000000000000000000000010000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100101;
                    end
        72'b000000000000000000000000000000000100000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100110;
                    end
        72'b000000000000000000000000000000001000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0100111;
                    end
        72'b000000000000000000000000000000010000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101000;
                    end
        72'b000000000000000000000000000000100000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101001;
                    end
        72'b000000000000000000000000000001000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101010;
                    end
        72'b000000000000000000000000000010000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101011;
                    end
        72'b000000000000000000000000000100000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101100;
                    end
        72'b000000000000000000000000001000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101101;
                    end
        72'b000000000000000000000000010000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101110;
                    end
        72'b000000000000000000000000100000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0101111;
                    end
        72'b000000000000000000000001000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110000;
                    end
        72'b000000000000000000000010000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110001;
                    end
        72'b000000000000000000000100000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110010;
                    end
        72'b000000000000000000001000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110011;
                    end
        72'b000000000000000000010000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110100;
                    end
        72'b000000000000000000100000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110101;
                    end
        72'b000000000000000001000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110110;
                    end
        72'b000000000000000010000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0110111;
                    end
        72'b000000000000000100000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111000;
                    end
        72'b000000000000001000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111001;
                    end
        72'b000000000000010000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111010;
                    end
        72'b000000000000100000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111011;
                    end
        72'b000000000001000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111100;
                    end
        72'b000000000010000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111101;
                    end
        72'b000000000100000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111110;
                    end
        72'b000000001000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b0111111;
                    end
        72'b000000010000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000000;
                    end
        72'b000000100000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000001;
                    end
        72'b000001000000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000010;
                    end
        72'b000010000000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000011;
                    end
        72'b000100000000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000100;
                    end
        72'b001000000000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000101;
                    end
        72'b010000000000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000110;
                    end
        72'b100000000000000000000000000000000000000000000000000000000000000000000000: begin
                         MultiBitError[0] = 1'b0;
                         IOIndex0 = 7'b1000111;
                    end
        default :   begin
                        MultiBitError[0] = 1'b1;
                        IOIndex0 = 7'b0000000;
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
         IOIndex0_R  <= {7{1'b0}};
      end else begin
         IOIndex0_R  <= IOIndex0;
      end
   end
                       
   //------
   // SO --
   //------
   assign SO         = GO_ID_REG_BYPASS;
endmodule // firebird7_in_gate1_tessent_mbist_c1_interface_m36_STATUS




module firebird7_in_gate1_tessent_mbist_c1_interface_m36_ColumnRedundancyAnalysis (
  input  wire       BIST_CLK,
  input  wire       BIST_ASYNC_RESETN,
  input  wire       BIST_HOLD,
  input  wire       BIST_SHIFT,
  input  wire [0:0] MultiBitError_R,
  input  wire [6:0] IOIndex0,
  input  wire       CLEAR,
  input  wire       BIST_BIRA_EN,
  input  wire       RepairedBySpareRow,
  input  wire       RepairableBySpareRow,
  input  wire       PriorityColumn,
  input  wire [6:0] FROM_BISR_All_SCOL0_FUSE_REG,
  input  wire       FROM_BISR_All_SCOL0_ALLOC_REG,
  input  wire [0:0] ERROR,
  input  wire       LV_TM,
  input  wire       BIRA_SI,
  output wire [6:0] All_SCOL0_FUSE_REG,
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
reg  [6:0] IOIndex0_R0;
wire [6:0] IOIndex0_A;
wire [6:0] IOIndex0_B;
reg        IO_RANGE0_ERROR_MATCH_R;
reg        IO_RANGE0_SPARES_AVAILABLE_R;
wire       IO_RANGE0_SPARES_AVAILABLE;
wire [6:0] IO_RANGE0_FUSE0_REG;
wire       IO_RANGE0_FUSE0_ALLOC;
wire       IO_RANGE0_FUSE0_ERROR_MATCH;
wire       IO_RANGE0_FUSE0_PAST_ALLOC;
wire       IO_RANGE0_FUSE0_ERROR_MATCH_CONDITION;
wire       IO_RANGE0_FUSE0_ERROR_MATCH_RESET_FLAG;
reg  [6:0] All_FUSE0_REG;
reg        All_FUSE0_ALLOC_REG;
reg        All_FUSE0_PAST_ALLOC_REG;
reg  [6:0] All_FUSE0_REG_INT;
wire [6:0] All_FUSE0_REG_MODIFIED;
reg        All_FUSE0_ALLOC_REG_INT;
wire       All_FUSE0_ALLOC_REG_MODIFIED;

wire All_SEGMENT_RANGE_EN_A,All_SEGMENT_RANGE_EN_B;
 
assign All_SEGMENT_RANGE_EN_A = 1'b1;
assign All_SEGMENT_RANGE_EN_B = 1'b1;
      

 
assign IO_RANGE0_FUSE0_REG =  ( All_SEGMENT_RANGE_EN_A ) ? All_FUSE0_REG_INT   :  { 7 {1'b0}};
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
    All_FUSE0_REG                   <= 7'b0000000;
    All_FUSE0_ALLOC_REG             <= 1'b0;
    All_FUSE0_PAST_ALLOC_REG        <= 1'b0;
  end else
  if ( LOCAL_RESET ) begin
    All_FUSE0_REG                   <= FROM_BISR_All_SCOL0_FUSE_REG;
    All_FUSE0_ALLOC_REG             <= FROM_BISR_All_SCOL0_ALLOC_REG;
    All_FUSE0_PAST_ALLOC_REG        <= FROM_BISR_All_SCOL0_ALLOC_REG;
  end else begin
    if ( BIST_SHIFT ) begin
      All_FUSE0_REG                 <= { All_FUSE0_REG[5:0],BIRA_SI};
      All_FUSE0_ALLOC_REG           <= All_FUSE0_REG[6];
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
     IOIndex0_R0     <= 7'b0000000;
  end else
  if ( LOCAL_RESET ) begin
     IOIndex0_R0     <= 7'b0000000;
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


module firebird7_in_gate1_tessent_mbist_c1_interface_m36_RowRedundancyAnalysis (
  input  wire       RepairedBySpareColumn,
  input  wire       RepairableBySpareColumn,
  input  wire       PriorityColumn,
  input  wire       BIST_BIRA_EN,
  input  wire       CLEAR,
  input  wire       BIST_HOLD,
  input  wire       BIST_SHIFT,
  input  wire       ErrorGlobal,
  input  wire       BIST_CLK,
  input  wire [7:0] FROM_BISR_ALL_SROW0_FUSE_ADD_REG,
  input  wire       FROM_BISR_ALL_SROW0_ALLOC_REG,
  input  wire [7:0] FROM_BISR_ALL_SROW1_FUSE_ADD_REG,
  input  wire       FROM_BISR_ALL_SROW1_ALLOC_REG,
  input  wire       LV_TM,
  input  wire       BIRA_SI,
  input  wire       BIST_ASYNC_RESETN,
  input  wire [7:0] BIRA_FUSE_ADD_A,
  input  wire [7:0] BIRA_FUSE_ADD_B,
  output wire [7:0] ALL_SROW0_FUSE_ADD_REG,
  output wire       ALL_SROW0_ALLOC_REG,
  output wire [7:0] ALL_SROW1_FUSE_ADD_REG,
  output wire       ALL_SROW1_ALLOC_REG,
  output wire       BIRA_SO,
  output wire       RepairedBySpareRow,
  output wire       RepairableBySpareRow
);
wire       Repaired;
wire       SpareRowNeeded;
wire       LOCAL_RESET;
reg  [7:0] ALL_FUSE0_ADD_REG;
reg        ALL_FUSE0_ALLOC_REG;
reg  [7:0] ALL_FUSE1_ADD_REG;
reg        ALL_FUSE1_ALLOC_REG;
reg  [7:0] ALL_FUSE0_ADD_REG_INT;
reg        ALL_FUSE0_ALLOC_REG_INT;
wire [7:0] ALL_FUSE0_ADD_REG_MODIFIED;
wire       ALL_FUSE0_ALLOC_REG_MODIFIED;
reg        ALL_FUSE0_PAST_ALLOC_REG;
reg  [7:0] ALL_FUSE1_ADD_REG_INT;
reg        ALL_FUSE1_ALLOC_REG_INT;
wire [7:0] ALL_FUSE1_ADD_REG_MODIFIED;
wire       ALL_FUSE1_ALLOC_REG_MODIFIED;
reg        ALL_FUSE1_PAST_ALLOC_REG;
reg        RepairedBySpareRow_R;
reg        RepairableBySpareRow_R;
wire       RepairedBySpareRow_INT;
wire       RepairableBySpareRow_INT;
wire [7:0] SEGMENT_FUSE0_ADD_REG;
wire       SEGMENT_FUSE0_ALLOC_REG;
wire       SEGMENT_FUSE0_ERROR_MATCH;
wire       SEGMENT_FUSE0_ERROR_MATCH_CONDITION;
wire       SEGMENT_FUSE0_ERROR_MATCH_RESET_FLAG;
wire       SEGMENT_FUSE0_PAST_ALLOC_REG;
wire [7:0] SEGMENT_FUSE1_ADD_REG;
wire       SEGMENT_FUSE1_ALLOC_REG;
wire       SEGMENT_FUSE1_ERROR_MATCH;
wire       SEGMENT_FUSE1_ERROR_MATCH_CONDITION;
wire       SEGMENT_FUSE1_ERROR_MATCH_RESET_FLAG;
wire       SEGMENT_FUSE1_PAST_ALLOC_REG;

assign LOCAL_RESET = CLEAR & (~BIST_HOLD) & (~BIST_SHIFT) & (~LV_TM);
wire firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A,firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_B;
 
assign firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A = 1'b1;
assign firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_B = 1'b1;
      
assign SEGMENT_FUSE0_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE0_ALLOC_REG_INT ;
assign SEGMENT_FUSE0_PAST_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE0_PAST_ALLOC_REG ;
assign SEGMENT_FUSE1_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE1_ALLOC_REG_INT ;
assign SEGMENT_FUSE1_PAST_ALLOC_REG =             firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A & ALL_FUSE1_PAST_ALLOC_REG ;
 
assign SEGMENT_FUSE0_ADD_REG =     firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A ? ALL_FUSE0_ADD_REG_INT :
    {8 { 1'b0 }};
 
assign SEGMENT_FUSE1_ADD_REG =     firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_A ? ALL_FUSE1_ADD_REG_INT :
    {8 { 1'b0 }};
 
 
 
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
  if ( firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_B & ErrorGlobal & (~Repaired) & SpareRowNeeded & (~ALL_FUSE0_ALLOC_REG_MODIFIED)) begin
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
  if ( firebird7_in_gate1_tessent_mbist_c1_interface_m36_ALL_SEGMENT_RANGE_EN_B & ErrorGlobal & (~Repaired) & SpareRowNeeded & (~ALL_FUSE1_ALLOC_REG_MODIFIED) & ALL_FUSE0_ALLOC_REG_MODIFIED) begin
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
    ALL_FUSE0_ADD_REG               <= { 8 {1'b0}};
    ALL_FUSE1_ALLOC_REG             <= 1'b0;
    ALL_FUSE1_PAST_ALLOC_REG        <= 1'b0;
    ALL_FUSE1_ADD_REG               <= { 8 {1'b0}};
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
      ALL_FUSE0_ADD_REG             <= {ALL_FUSE0_ADD_REG[6:0],BIRA_SI};
      ALL_FUSE0_ALLOC_REG           <= ALL_FUSE0_ADD_REG[7];
      ALL_FUSE1_ADD_REG             <= {ALL_FUSE1_ADD_REG[6:0],ALL_FUSE0_ALLOC_REG};
      ALL_FUSE1_ALLOC_REG           <= ALL_FUSE1_ADD_REG[7];
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
 
