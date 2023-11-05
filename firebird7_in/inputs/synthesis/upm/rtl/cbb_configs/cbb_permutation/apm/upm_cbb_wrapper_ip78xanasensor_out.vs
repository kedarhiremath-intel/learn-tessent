//------------------------------------------------------------------------------
//  INTEL CONFIDENTIAL
//
//  Copyright 2023 Intel Corporation All Rights Reserved.
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
//  Module upm_cbb_wrapper_ip78xanasensor :  hip wrapper module
//
//------------------------------------------------------------------------------
module upm_cbb_wrapper_ip78xanasensor_out (
	  
	  //
	  //
	  //// APM Module outside the IP
		output	logic apm_en_sensor,
		output	logic apm_en_cal,
		output	logic apm_en_osc,
		output	logic apm_en_step,
		output	logic apm_osc_sel,
		output	logic [1:0]  apm_xtor_sel,
		output	logic [3:0]  apm_mux_sel ,
		output	logic [3:0]  apm_vdac_sel,
		input	logic apm_osc_out,
        //
        //
		//
       //CBB_WRAPPER INPUTS
       input  logic            shift,
       input  logic            update,
       input  logic            tck,
       input  logic            capture,
       input  logic            si,
       input  logic            sel,
       input  logic            debug_clk_en,
       input  logic            fdfx_powergood,
       input  logic            iso_n,
       input  logic            clk_debug,
        //
        //
       //CBB_WRAPPER OUTPUTS
       output logic  [1:0]     clk_out,
       output logic            so,
       output logic            power_enable_error_next,
       //manual INPUTS
       input  logic            so_out,
       //manual OUTPUTS
       output logic            si_out,
       //TIE INPUTS
       input  logic     [1:0]  clk_in,
       input  logic            power_enable_prev,
       input  logic            power_enable_error_prev
        );
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                         - UPM_CBB_WRAPPER_ip78xanasensor -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
`include "upm_dft_build_macros.vh"
`include "tap_upm_cbb_wrapper_ip78xanasensor_out.vs"
//------------------------------------------------------------------------------------------------------
endmodule
