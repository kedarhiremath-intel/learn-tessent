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
//  Module upm_controller :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
`ifndef UPM_MODULE_UPM_CONTROLLER
`define UPM_MODULE_UPM_CONTROLLER

module upm_controller
       #(
                parameter NUMBER_OF_BITS_IN_FSM = 12
        )
(
                //------------------ Inputs --------------------//
                input logic                                 tck_i            ,
                input logic                                 trstn_i          ,
                input logic                                 counter_manual_i ,
                input logic                                 counter_start_i  , //start mode  //moved from ump counter
                input logic                                 counter_stop_i   , //stop mode   //moved from ump counter
                input logic                                 fsm_start_i      ,
                input logic [NUMBER_OF_BITS_IN_FSM-1:0]     counter_init_i   ,
                //------------------ Outputs --------------------//
                //output logic                                 fsm_start_o               ,
                //output logic                                 fsm_stop_o                ,
                output logic                                 fsm_enable_o                ,
                output logic                                 cntr_start_o                ,
                output logic                                 cntr_stop_o                 ,
                output logic                                 fsm_counter_active_o        ,
                output logic [NUMBER_OF_BITS_IN_FSM-1:0]     fsm_counter_current_value_o , 
                output logic [4:0]                           fsm_state_o                
);
//---------------- Local Parameters ---------------//
localparam [4:0]       IDLE                 = 5'b00001 ;
localparam [4:0]       LOAD_COUNTER         = 5'b00010 ;
localparam [4:0]       FSM_START            = 5'b00100 ;
localparam [4:0]       COUNT_DOWN           = 5'b01000 ;
localparam [4:0]       STOP                 = 5'b10000 ;
//----------- Internal Declaration ---------------//
logic [4:0]                                 fsm_state_reg ;
logic [NUMBER_OF_BITS_IN_FSM-1:0]           load_counter  ;
logic fsm_enable_o_r;
logic [4:0]                                 fsm_state_reg_r ;
//logic                                       fsm_start_o;
//logic                                       fsm_stop_o;
logic                                       fsm_enable_reg;
//----------- Code Begins here ---------------//
assign fsm_counter_current_value_o = load_counter;
always_ff @ (posedge tck_i or negedge trstn_i) begin
   if(~trstn_i) begin
      //fsm_start_o          <= 1'b0;
      //fsm_stop_o           <= 1'b0;
      fsm_enable_reg             <= 1'b0;
      fsm_counter_active_o <= 1'b0;
      fsm_state_reg        <= 5'd1;
      load_counter         <= {NUMBER_OF_BITS_IN_FSM{1'd0}};
   end else begin
      case (fsm_state_reg) 
         IDLE :         begin
                           //fsm_start_o          <= 1'b0;         
                           //fsm_stop_o           <= 1'b0;         
                           fsm_enable_reg             <= 1'b0;         
                           fsm_counter_active_o <= 1'b0;
                           if (fsm_start_i & (~counter_manual_i)) begin
                               fsm_state_reg <= LOAD_COUNTER;
                           end else begin
                               fsm_state_reg <= IDLE;
                           end    
                        end 
         LOAD_COUNTER : begin 
                           load_counter  <= counter_init_i;
                           fsm_state_reg <= FSM_START;
                        end
         FSM_START :    begin
                           //fsm_start_o   <= 1'b1;         
                           fsm_enable_reg  <= (load_counter == {NUMBER_OF_BITS_IN_FSM{1'b0}} ) ? 1'b0 : 1'b1;         
                           fsm_state_reg <= COUNT_DOWN;
                        end
         COUNT_DOWN:    begin
                           fsm_counter_active_o <= 1'b1;
                           if (load_counter == {NUMBER_OF_BITS_IN_FSM{1'b0}}) begin
                              fsm_state_reg <= STOP;
                           end else begin
                              fsm_state_reg <= COUNT_DOWN;
                              load_counter  <= load_counter - 1'b1;                                
                           end
                        end
         STOP :         begin
                           //fsm_start_o          <= 1'b0;
                           //fsm_stop_o           <= 1'b1;
                           fsm_enable_reg           <= 1'b0;
                           fsm_counter_active_o <= 1'b0;
                           fsm_state_reg        <= IDLE;
                        end

         default : begin
                           fsm_enable_reg           <= 1'b0;
                           fsm_counter_active_o <= 1'b0;
                           fsm_state_reg        <= IDLE;
         end

      endcase
   end
end
`UPM_ASYNC_RST_MSFF(fsm_state_reg_r , fsm_state_reg, tck_i, ~trstn_i) 
`UPM_ASYNC_RST_MSFF(fsm_state_o , fsm_state_reg_r, tck_i, ~trstn_i) 
//`UPM_ASYNC_RST_MSFF(upm_start, ( cntr_start_i & (~cntr_stop_i)), tck_i, ~trstn_i)  
//moved from upm cntr
`UPM_ASYNC_RST_MSFF(fsm_enable_o_r , fsm_enable_reg, tck_i, ~trstn_i)  
`UPM_ASYNC_RST_MSFF(fsm_enable_o, fsm_enable_o_r, tck_i, ~trstn_i)  
`UPM_MUX_2TO1(cntr_start_o, counter_manual_i, counter_start_i,  fsm_enable_o)
`UPM_MUX_2TO1(cntr_stop_o,  counter_manual_i, counter_stop_i, (~fsm_enable_o))
endmodule
`endif
