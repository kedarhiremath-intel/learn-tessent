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
//  Module upm_system_controller_ports :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
input  	logic 	dfx_upm_func_clk,
input 	logic 	dfx_upm_sys_en,
input 	logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 - 1 :0]	dfx_upm_sys_ctl,
input 	logic	[15:0]	dfx_upm_sys_cbb_ctrl,
input 	logic	[3:0]	dfx_upm_sys_cbb_pwr,
input   logic  			dfx_upm_sys_rstn,
output 	logic 	[2*DFX_UPM_NUMBER_OF_BITS_IN_COUNTER + 1: 0] dfx_upm_result,
output	logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 10 - 1 : 0]	dfx_upm_status,
output  logic  [DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 : 0] system_window_counter_i,
output  logic  	system_window_mode,
output  logic  	system_counter_start,
output  logic  	system_counter_stop,
output  logic 	[4:0] system_clock_divider,
output  logic  	system_debug_clk_en,
input   logic  	upm_tap_master_mode,
output  logic  	upm_system_cfg_capture,
output  logic  	upm_system_cfg_update,
output  logic 	system_mode,
output  logic  [15:0] system_cbb_pwr_en,
output  logic  [15:0]  system_cbb_cbb_addr,
input 	logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER - 1 : 0] system_window_counter_o,
input  	logic 	[4:0]   system_fsm_state,
input  	logic			system_fsm_enable,
input  	logic 			system_fsm_active,
input 	logic 	[2*DFX_UPM_NUMBER_OF_BITS_IN_COUNTER - 1:0] system_counter_value,
input 	logic 	[1:0]	system_counter_overflow,
input 	logic 	[1:0]	system_counter_status
