//------------------------------------------------------------------------------
//
//  INTEL CONFIDENTIAL
//
//  Copyright 2020 Intel Corporation All Rights Reserved.
//
//  The source code contained or described herein and all documents related
//  to the source code (Material) are owned by Intel Corporation or its
//  suppliers or licensors. Title to the Material remains with Intel
//  Corporation or its suppliers and licensors. The Material contains trade
//  secrets and proprietary and confidential information of Intel or its
//  suppliers and licensors. The Material is protected by worldwide copyright
//  and trade secret laws and treaty provisions. No part of the Material may
//  be used, copied, reproduced, modified, published, uploaded, posted,
//  transmitted, distributed, or disclosed in any way without Intel's prior
//  express written permission.
//
//  No license under any patent, copyright, trade secret or other intellectual
//  property right is granted to or conferred upon you by disclosure or
//  delivery of the Materials, either expressly, by implication, inducement,
//  estoppel or otherwise. Any license under such intellectual property rights
//  must be express and approved by Intel in writing.
//
//  Collateral Description:
//  dteg-upm
//
//  Source organization:
//  DTEG Engineering Group (DTEG)
//
//  Support Information:
//  HSD: https://hsdes.intel.com/appstore/article/#/dft_services.bugeco/create
//
//  Revision:
//  DTEG_UPM_2023WW17_FV_1P1_18A
//
//  Module upm_counter :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
`ifndef UPM_MODULE_UPM_COUNTER
`define UPM_MODULE_UPM_COUNTER
module upm_counter
        #(
                  parameter NUMBER_OF_BITS_IN_COUNTER  = 20
         ) 
(
                //------------------ Inputs --------------------//
                  input logic                                   tck_i              ,
                  input logic                                   trstn_i            ,
                  input logic                                   clock_i            ,
                  //input logic                                   fsm_start_i        ,
                  //input logic                                   fsm_stop_i         ,
                  //input logic                                   counter_manual_i   , //window mode
                  //input logic                                   counter_start_i    , //start mode  //moved to ump controller
                  //input logic                                   counter_stop_i     , //stop mode   //moved to ump controller
                  input logic                                   cntr_start_i         ,
                  input logic                                   cntr_stop_i          ,
                  input logic                                   capture_i            ,
                //------------------ Outputs --------------------//
                  output logic [NUMBER_OF_BITS_IN_COUNTER-1:0]  upm_counter_o        , 
                  output logic                                  overflow_o,
				  output logic counter_status
);
//----------- Internal Declaration ---------------//
//logic                                 start_temp    ;
//logic                                 stop_cntr     ;
logic                                 upm_start     ;
logic                                 upm_reset     ;
logic [NUMBER_OF_BITS_IN_COUNTER-1:0] count         ;
logic [NUMBER_OF_BITS_IN_COUNTER-1:0] nxt_count     ;
logic                                 overflow_i    ;
logic                                 upm_start_sync;
logic                                 clk_cntr      ;
logic                                 sync_reset_cntr;
//logic upm_start_sync_l;
//-------------- Code Begins here ---------------//

`UPM_ASYNC_RST_MSFF(upm_reset, (~capture_i), tck_i, ~trstn_i)
`UPM_ASYNC_RST_MSFF(upm_start, ( cntr_start_i & (~cntr_stop_i)), tck_i, ~trstn_i)     
// Reset Synchronizer
`UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(sync_reset_cntr, 1'b1, clock_i,~upm_reset,,)
// Double Flop Synchronizer
`UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(upm_start_sync, upm_start, clock_i, ~sync_reset_cntr,,)

`UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(counter_status, upm_start_sync, tck_i, ~trstn_i,,)
// Clock Gate Element 
//`UPM_CLKAND(clk_cntr, clock_i , upm_start_sync)
// icg cells 
//`UPM_LATCH_P(upm_start_sync_l,upm_start_sync,clock_i)
//`UPM_CLKAND(clk_cntr, clock_i , upm_start_sync_l)
// Adding icg cell
upm_dftb_clk_gate_and u_start_counter_cg (
.clk(clock_i),
.en(upm_start_sync),
.clkout(clk_cntr)
);

// Start Count
assign nxt_count = count + 1'b1 ; 
always_ff @ (posedge clk_cntr or negedge sync_reset_cntr) begin
   if (~sync_reset_cntr) begin
      count       <= {NUMBER_OF_BITS_IN_COUNTER{1'b0}};
      overflow_i  <= 1'b0;
   end else begin
      if (count == {NUMBER_OF_BITS_IN_COUNTER{1'b1}}) begin
         overflow_i <= 1'b1;
      end 
      if (overflow_i) begin
         count      <= {NUMBER_OF_BITS_IN_COUNTER{1'b0}};
      end else begin
         count      <= nxt_count ;
      end
   end
end
assign overflow_o    = overflow_i ; 
assign upm_counter_o = count[NUMBER_OF_BITS_IN_COUNTER-1:0] ;
endmodule
`endif
