//------------------------------------------------------------------------------
//
//  INTEL CONFIDENTIAL
//
//  Copyright 2022 Intel Corporation All Rights Reserved.
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
//  Module upm_system_controller :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
`ifndef UPM_MODULE_UPM_SYSTEM_CONTROLLER
`define UPM_MODULE_UPM_SYSTEM_CONTROLLER
module upm_system_controller #(
       parameter DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER = 16,
       parameter DFX_UPM_NUMBER_OF_BITS_IN_COUNTER = 20,
	   parameter DFX_UPM_CBB_HIP_TYPE = "UPM_T_A"
       )
	(
		`include "upm_system_controller_ports.sv"
	);
//------------------------------------------------------------------------------------------------------
localparam WINDOW_MODE = 0;
localparam START_MODE  = 1;
localparam STOP_MODE   = 2;
localparam DIVIDER_L   = 3;
localparam DIVIDER_H   = 7;
localparam WINDOWC_L   = 8;
localparam WINDOWC_H   = 23;
localparam DEBUG_EN    = 24;
logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 - 1 :0]	dfx_upm_sys_ctrl_o;
logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 - 1 :0]	dfx_upm_sys_ctrl_1;
logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 - 1 :0]	dfx_upm_sys_ctrl_2;
logic	[3:0]	dfx_upm_sys_cbb_pwr_1;
logic	[3:0]	dfx_upm_sys_cbb_pwr_2;
logic	[3:0]	dfx_upm_sys_cbb_pwr_o;
logic	[15:0]	dfx_upm_sys_cbb_ctrl_1;
logic	[15:0]	dfx_upm_sys_cbb_ctrl_2;
logic	[15:0]	dfx_upm_sys_cbb_ctrl_o;
logic   [15:0] system_cbb_pwr_en_w;
logic dfx_upm_sys_en_1; 
logic dfx_upm_sys_en_2;
logic dfx_upm_sys_en_3;
logic dfx_upm_sys_en_4;
//logic dfx_upm_sys_en_c;
//logic dfx_upm_sys_en_p;
logic dfx_upm_sys_load_en;
logic dfx_upm_hold_bit;
logic dfx_upm_hold_bit_in;
logic upm_tap_master_mode_1;
//logic upm_tap_master_mode_2;
logic dfx_upm_sys_load_en_1;
logic dfx_upm_sys_load_en_2;
logic dfx_upm_sys_load_en_3;
logic dfx_upm_sys_load_en_4;
logic dfx_upm_sys_load_en_5;
logic dfx_upm_sys_load_en_6;
logic dfx_upm_sys_load_en_7;
logic dfx_upm_sys_load_en_8;
logic dfx_upm_sys_load_en_9;
logic dfx_upm_sys_load_en_10;

logic dfx_upm_sys_en_l;
logic dfx_upm_func_clk_cg;
logic [2*DFX_UPM_NUMBER_OF_BITS_IN_COUNTER + 1: 0] dfx_upm_result_in;
logic [DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 10 - 1 : 0]	dfx_upm_status_in;
localparam CTRL_SYS_SIZE = DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9;
localparam CBB_CTRL_SIZE = 16;
localparam CBB_PWR_SIZE = 4;
// clock gating 
`UPM_LATCH_P(dfx_upm_sys_en_l,dfx_upm_sys_en,dfx_upm_func_clk)
`UPM_CLKAND(dfx_upm_func_clk_cg,dfx_upm_func_clk,dfx_upm_sys_en_l)
// generating system load enable for loading config registers
// put meta flop
// UPM_ASYNC_RST_METAFLOP_2
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_en_1, dfx_upm_sys_en  ,  dfx_upm_func_clk, ~dfx_upm_sys_rstn,,)
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_en_2, dfx_upm_sys_en_1,  dfx_upm_func_clk, ~dfx_upm_sys_rstn,,)
// regular flop
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_en_3, dfx_upm_sys_en_2, dfx_upm_func_clk, ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_en_4, dfx_upm_sys_en_3, dfx_upm_func_clk, ~dfx_upm_sys_rstn)
assign dfx_upm_sys_load_en = dfx_upm_sys_en_3 && !dfx_upm_sys_en_4;
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_1,	dfx_upm_sys_load_en  ,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_2,	dfx_upm_sys_load_en_1,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_3,	dfx_upm_sys_load_en_2,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_4,	dfx_upm_sys_load_en_3,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_5,	dfx_upm_sys_load_en_4,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_6,	dfx_upm_sys_load_en_5,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_7,	dfx_upm_sys_load_en_6,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_8,	dfx_upm_sys_load_en_7,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_9,	dfx_upm_sys_load_en_8,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_sys_load_en_10,	dfx_upm_sys_load_en_9,	dfx_upm_func_clk,  ~dfx_upm_sys_rstn)

// UPM_ASYNC_RST_METAFLOP_2
genvar i,j,k;
for(i=0;i<CTRL_SYS_SIZE; i++) begin : UPM_META_SYS_CTRL
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_ctrl_1[i],dfx_upm_sys_ctl[i]   ,dfx_upm_func_clk_cg,~dfx_upm_sys_rstn,,)
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_ctrl_2[i],dfx_upm_sys_ctrl_1[i],dfx_upm_func_clk_cg,~dfx_upm_sys_rstn,,)
end
for(j=0;j<CBB_PWR_SIZE; j++) begin : UPM_META_CBB_PWR_CTRL
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_cbb_pwr_1[j],dfx_upm_sys_cbb_pwr[j],dfx_upm_func_clk_cg,~dfx_upm_sys_rstn,,)
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_cbb_pwr_2[j],dfx_upm_sys_cbb_pwr_1[j],dfx_upm_func_clk_cg,~dfx_upm_sys_rstn,,)
end
for(k=0;k<CBB_CTRL_SIZE; k++) begin : UPM_META_CBB_CTRL
// UPM_ASYNC_RST_METAFLOP_2
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_cbb_ctrl_1[k],dfx_upm_sys_cbb_ctrl[k],dfx_upm_func_clk_cg,~dfx_upm_sys_rstn,,)
`UPM_ASYNC_RST_METAFLOP_2(dfx_upm_sys_cbb_ctrl_2[k],dfx_upm_sys_cbb_ctrl_1[k],dfx_upm_func_clk_cg,~dfx_upm_sys_rstn,,)
end
// have a single set of flops
//
always_ff @(posedge dfx_upm_func_clk_cg or negedge dfx_upm_sys_rstn) begin
	if (!dfx_upm_sys_rstn) begin
		dfx_upm_sys_ctrl_o      <= 'b0;
		dfx_upm_sys_cbb_ctrl_o  <= 'b0;
		dfx_upm_sys_cbb_pwr_o   <= 'b0;
	end else begin
	// enable , delay dfx_upm_sys_ctrl_o by 2 or 3 cycles
		dfx_upm_sys_ctrl_o      <= dfx_upm_sys_load_en_9    ? dfx_upm_sys_ctrl_2     : dfx_upm_sys_ctrl_o;
		dfx_upm_sys_cbb_ctrl_o  <= dfx_upm_sys_load_en_6 	? dfx_upm_sys_cbb_ctrl_2 : dfx_upm_sys_cbb_ctrl_o;
		dfx_upm_sys_cbb_pwr_o   <= dfx_upm_sys_load_en_6 	? dfx_upm_sys_cbb_pwr_2  : dfx_upm_sys_cbb_pwr_o;
	end
end
// system mode mux enable bit logic
logic  dfx_upm_sys_manual_mode;
assign dfx_upm_sys_manual_mode = dfx_upm_sys_ctrl_o[WINDOW_MODE] &&  dfx_upm_sys_ctrl_o[START_MODE] &&  ~dfx_upm_sys_ctrl_o[STOP_MODE] ;
//assign dfx_upm_hold_bit_w = dfx_upm_sys_load_en ?  dfx_upm_sys_manual_mode  : dfx_upm_hold_bit;
`UPM_MUX_2TO1(dfx_upm_hold_bit_in,  dfx_upm_sys_load_en_10, dfx_upm_sys_manual_mode, dfx_upm_hold_bit)
`UPM_ASYNC_RST_MSFF(dfx_upm_hold_bit,dfx_upm_hold_bit_in,dfx_upm_func_clk, ~dfx_upm_sys_rstn)
// metaflop on tap master flop
//remvoe 2 flops on master mode
// set quasi-static on upm_tap_master_mode cdc constraints
`UPM_ASYNC_RST_METAFLOP_2(upm_tap_master_mode_1, upm_tap_master_mode  ,  dfx_upm_func_clk, ~dfx_upm_sys_rstn,,)
assign system_mode =  ~upm_tap_master_mode_1  && (dfx_upm_sys_en_3 || dfx_upm_hold_bit);
// result loading 
assign dfx_upm_result_in = dfx_upm_sys_en_3 ? {system_counter_overflow[1],system_counter_value[39:20],system_counter_overflow[0],system_counter_value[19:0]} : 'b0;
assign dfx_upm_status_in = dfx_upm_sys_en_3 ? {system_counter_status,1'b0,system_fsm_active, system_fsm_enable, system_fsm_state, system_window_counter_o} : 'b0;
`UPM_ASYNC_RST_MSFF(dfx_upm_result, dfx_upm_result_in, dfx_upm_func_clk_cg, ~dfx_upm_sys_rstn)
`UPM_ASYNC_RST_MSFF(dfx_upm_status, dfx_upm_status_in, dfx_upm_func_clk_cg, ~dfx_upm_sys_rstn)
upm_system_cbb_pwren_decoder u_upm_system_cbb_pwren_decoder (
.system_cbb_pwr_en_in(dfx_upm_sys_cbb_pwr_o),
.system_cbb_pwr_en_out(system_cbb_pwr_en_w)
);
//powergood
assign system_cbb_pwr_en = system_mode ? system_cbb_pwr_en_w : 'b0;
assign system_cbb_cbb_addr = system_mode ? dfx_upm_sys_cbb_ctrl_o : 'b0;
assign system_window_mode     = system_mode ? dfx_upm_sys_ctrl_o[WINDOW_MODE]           : 'b0;
assign system_counter_start   = system_mode ? dfx_upm_sys_ctrl_o[START_MODE]            : 'b0;
assign system_counter_stop    = system_mode ? dfx_upm_sys_ctrl_o[STOP_MODE]             : 'b0;
assign system_clock_divider   = system_mode ? dfx_upm_sys_ctrl_o[DIVIDER_H:DIVIDER_L]   : 'b0;
assign system_debug_clk_en    = system_mode ? dfx_upm_sys_ctrl_o[DEBUG_EN]              : 'b0;
assign system_window_counter_i  = system_mode ? dfx_upm_sys_ctrl_o[WINDOWC_H:WINDOWC_L]   : 'b0;
assign upm_system_cfg_capture = system_mode ? dfx_upm_sys_load_en_1 : 'b0;
assign upm_system_cfg_update  = system_mode ? dfx_upm_sys_load_en_10 : 'b0;
endmodule
`endif
