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
//  Module upm_apm_cbb_control :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
///====================================================================================================================
///
/// upm_apm_cbb_control.sv
///
/// Unit Owner        : 
///
/// Original Author   : 
///
/// Copyright (c) 2012 Intel Corporation
/// Intel Proprietary
///
///====================================================================================================================
`ifndef MODULE_upm_apm_cbb_control
`define MODULE_upm_apm_cbb_control
module upm_apm_cbb_control #(
       parameter APM_CNTRL_LEN = 14
       )
(
        input  logic            fdfx_powergood,
        input  logic            update,
        input  logic            shift,
        input  logic            capture,
        input  logic            tck,
        input  logic            si,
        input  logic            sel,
        input  logic            cbb_clk,
        input  logic            clk_debug,
        input  logic            power_enable_prev,
        input  logic            iso_n,
        input  logic            power_enable_error_prev,
        input  logic  [1:0]     clk_in,
        input  logic            so_out,
        input  logic            apm_en_sensor,
        output logic            so,
        output logic            power_enable_next,
        output logic            power_enable,
        output logic            power_enable_error_next,
        output logic   [1:0]    clk_out,
        output logic            shift_out,
        output logic            update_out,
        output logic            tck_out,
        output logic            capture_out,
        output logic            si_out,
        output logic            sel_out,
		output logic            apm_en_cal   ,
		output logic            apm_en_osc   ,
		output logic            apm_en_step  ,
		output logic            apm_osc_sel  ,
		output logic  [1:0]     apm_xtor_sel ,
		output logic  [3:0]     apm_mux_sel  ,
		output logic  [3:0]     apm_vdac_sel
		 );
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - PRE_RTL -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
`include "upm_dft_build_macros.vh"
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - CBB CLK -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic enabled_clk;  
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//nets definition
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//module upm_cbb_reg instantiation
upm_apm_cbb_reg #(
       .APM_CNTRL_LEN(APM_CNTRL_LEN)
)
upm_apm_cbb_reg (
        .so_out         (so_out         ), 
        .fdfx_powergood (fdfx_powergood ), 
        .update         (update         ), 
        .shift          (shift          ), 
        .capture        (capture        ), 
        .tck            (tck            ), 
        .si             (si             ), 
        .sel            (sel            ), 
        .shift_out      (shift_out      ), 
        .update_out     (update_out     ), 
        .tck_out        (tck_out        ), 
        .capture_out    (capture_out    ), 
        .si_out         (si_out         ), 
        .sel_out        (sel_out        ), 
        .so             (so             ), 
        .power_enable   (power_enable   ),
        .apm_en_cal     (apm_en_cal     ),
		.apm_en_osc     (apm_en_osc     ),
		.apm_en_step    (apm_en_step    ),
		.apm_osc_sel    (apm_osc_sel    ),
		.apm_xtor_sel   (apm_xtor_sel   ),
		.apm_mux_sel    (apm_mux_sel    ),
		.apm_vdac_sel   (apm_vdac_sel   )
);
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - POST_RTL -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - CBB CONTROL -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
//if more than one cbb is enabled -> mask clk out
logic power_enable_error;                
assign power_enable_next        = power_enable | power_enable_prev;
assign power_enable_error       = power_enable & power_enable_prev; 
assign power_enable_error_next  = power_enable_error | power_enable_error_prev; 

`UPM_CLK_MUX_2TO1(clk_out[0], cbb_clk, clk_in[0],   apm_en_sensor)
`UPM_CLKBF(clk_out[1], clk_in[1])
//------------------------------------------------------------------------------------------------------
endmodule
`endif
