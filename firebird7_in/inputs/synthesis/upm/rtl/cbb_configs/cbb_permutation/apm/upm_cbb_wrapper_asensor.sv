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
//  Module upm_cbb_wrapper_asensor :  hip wrapper module
//
//------------------------------------------------------------------------------
`ifndef MODULE_upm_cbb_wrapper_asensor
`define MODULE_upm_cbb_wrapper_asensor
module upm_cbb_wrapper_asensor (
	   
        //
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
        output logic     [1:0]  clk_out,
        output logic            so,
        output logic            power_enable_error_next
   );
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//nets definition
logic            upm_cbb_wrapper_ip78xanasensor_to_upm_cbb_wrapper_ip78xanasensor_so_out;
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//module upm_cbb_wrapper_ip78xanasensor instantiation
upm_cbb_wrapper_ip78xanasensor upm_cbb_wrapper_ip78xanasensor (
        
		
		//
		.shift                   (shift                                                                       ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .update                  (update                                                                      ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .tck                     (tck                                                                         ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .capture                 (capture                                                                     ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .si                      (si                                                                          ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .sel                     (sel                                                                         ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .debug_clk_en            (debug_clk_en                                                                ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .fdfx_powergood          (fdfx_powergood                                                              ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .iso_n                   (iso_n                                                                       ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .clk_debug               (clk_debug                                                                   ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::input 
        .clk_out                 (clk_out                                                                     ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::output 
        .so                      (so                                                                          ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::output 
        .power_enable_error_next (power_enable_error_next                                                     ), //upm_cbb_wrapper_ip78xanasensor::CBB_WRAPPER::output 
        .clk_in                  (2'b00                                                                        ), //upm_cbb_wrapper_ip78xanasensor::TIE::input 
        .power_enable_prev       (1'b0                                                                        ), //upm_cbb_wrapper_ip78xanasensor::TIE::input 
        .power_enable_error_prev (1'b0                                                                        ), //upm_cbb_wrapper_ip78xanasensor::TIE::input 
        .so_out                  (upm_cbb_wrapper_ip78xanasensor_to_upm_cbb_wrapper_ip78xanasensor_so_out ), //upm_cbb_wrapper_ip78xanasensor::manual::input 
        .si_out                  (upm_cbb_wrapper_ip78xanasensor_to_upm_cbb_wrapper_ip78xanasensor_so_out )  //upm_cbb_wrapper_ip78xanasensor::manual::output 
);
//------------------------------------------------------------------------------------------------------
endmodule
`endif
