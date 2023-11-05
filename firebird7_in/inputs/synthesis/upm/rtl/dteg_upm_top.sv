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
//  Module dteg_upm_top :  Top level module file with fabric and cbb wrapper instantiation
//
//------------------------------------------------------------------------------
//----------------------------------------------------------------------
// NOTE: Log history is at end of file.
//----------------------------------------------------------------------
//
//    FILENAME    :  dteg_upm_top.sv
//    DESIGNER    :  siva.prasad.s@intel.com
//    PROJECT     :  
//    PURPOSE     : 
//    DESCRIPTION : 
//-----------------------------------------------------------------------------
`ifndef MODULE_DTEG_UPM_TOP
`define MODULE_DTEG_UPM_TOP
module dteg_upm_top #(
       parameter DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER = 16,
       parameter DFX_UPM_NUMBER_OF_BITS_IN_COUNTER = 20,
        parameter DFX_UPM_CBB_HIP_TYPE ="UPM_T_A"
        )
        (       
      
	  
        input  logic            dfx_upm_iso_n,
        input  logic            dfx_upm_clk_debug,
        input  logic            dfx_upm_fdfx_powergood,
        input  logic            dfx_upm_trstb,
        input  logic            dfx_upm_update,
        input  logic            dfx_upm_shift,
        input  logic            dfx_upm_capture,
        input  logic            dfx_upm_tck,
        input  logic            dfx_upm_si,
        input  logic            dfx_upm_sel,
        output logic            dfx_upm_so
	);
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//nets definition
logic	     	UPM1_to_UPM_CBB_WRAPPER_capture_out;
logic	     	UPM1_to_UPM_CBB_WRAPPER_debug_clk_en;
logic	     	UPM1_to_UPM_CBB_WRAPPER_reg_sel;
logic	     	UPM1_to_UPM_CBB_WRAPPER_reg_si;
logic	     	UPM1_to_UPM_CBB_WRAPPER_shift_out;
logic	     	UPM1_to_UPM_CBB_WRAPPER_tck_out;
logic	     	UPM1_to_UPM_CBB_WRAPPER_update_out;		
logic	     	UPM_CBB_WRAPPER_to_UPM1_cbb_power_en_error;
logic	     	UPM_CBB_WRAPPER_to_UPM1_reg_so;
logic	     	clk_debug;
logic	     	iso_n;
logic	[1:0]	UPM_CBB_WRAPPER_to_UPM1_cbb_clk_in; //2 clocks
logic			tap_master_mode;
//------------------------------------------------------------------------------------------------------
`ifndef INTEL_HIDE_INTEGRATION
// collage-pragma translate_off			
	//module upm1 instantiation
	upm_fabric #(
				.NUMBER_OF_BITS_IN_WINDOW_COUNTER(DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER),
				.UPM_NUMBER_OF_BITS_IN_COUNTER(DFX_UPM_NUMBER_OF_BITS_IN_COUNTER),
				.CBB_HIP_TYPE(DFX_UPM_CBB_HIP_TYPE)
			)
			upm1 (
					.cbb_clk_in         (UPM_CBB_WRAPPER_to_UPM1_cbb_clk_in         ), //upm1::UPM::input 
					.reg_so             (UPM_CBB_WRAPPER_to_UPM1_reg_so             ), //upm1::UPM::input 
					.cbb_power_en_error (UPM_CBB_WRAPPER_to_UPM1_cbb_power_en_error ), //upm1::UPM::input 
					.fdfx_powergood     (dfx_upm_fdfx_powergood                                                ), //upm1::UPM::input 
					.trstb              (dfx_upm_trstb                                                         ), //upm1::UPM::input 
					.update             (dfx_upm_update                                                        ), //upm1::UPM::input 
					.shift              (dfx_upm_shift                                                         ), //upm1::UPM::input 
					.capture            (dfx_upm_capture                                                       ), //upm1::UPM::input 
					.tck                (dfx_upm_tck                                                           ), //upm1::UPM::input 
					.si                 (dfx_upm_si                                                            ), //upm1::UPM::input 
					.sel                (dfx_upm_sel                                                           ), //upm1::UPM::input 
					.shift_out          (UPM1_to_UPM_CBB_WRAPPER_shift_out          ), //upm1::UPM::output 
					.update_out         (UPM1_to_UPM_CBB_WRAPPER_update_out         ), //upm1::UPM::output 
					.tck_out            (UPM1_to_UPM_CBB_WRAPPER_tck_out            ), //upm1::UPM::output 
					.capture_out        (UPM1_to_UPM_CBB_WRAPPER_capture_out        ), //upm1::UPM::output 
					.reg_si             (UPM1_to_UPM_CBB_WRAPPER_reg_si             ), //upm1::UPM::output 
					.reg_sel            (UPM1_to_UPM_CBB_WRAPPER_reg_sel            ), //upm1::UPM::output 
					.debug_clk_en       (UPM1_to_UPM_CBB_WRAPPER_debug_clk_en       ), //upm1::UPM::output 
					.tap_master_mode    (tap_master_mode),
					
					
					
					
					.dfx_upm_dcm_out		(),
					
					.so                 (dfx_upm_so                                                            )  //upm1::UPM::output 
			);
			//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//module cbb_wrapper_top instantiation
cbb_wrapper_top #(
				.CBB_HIP_TYPE(DFX_UPM_CBB_HIP_TYPE)
)
cbb_wrapper_top (
        .shift                   (UPM1_to_UPM_CBB_WRAPPER_shift_out          ), //cbb_wrapper_top::CREATE_MODULE::input 
        .update                  (UPM1_to_UPM_CBB_WRAPPER_update_out         ), //cbb_wrapper_top::CREATE_MODULE::input 
        .tck                     (dfx_upm_tck                                ), //cbb_wrapper_top::CREATE_MODULE::input 
        .capture                 (UPM1_to_UPM_CBB_WRAPPER_capture_out        ), //cbb_wrapper_top::CREATE_MODULE::input 
        .si                      (UPM1_to_UPM_CBB_WRAPPER_reg_si             ), //cbb_wrapper_top::CREATE_MODULE::input 
        .sel                     (UPM1_to_UPM_CBB_WRAPPER_reg_sel            ), //cbb_wrapper_top::CREATE_MODULE::input 
        .debug_clk_en            (UPM1_to_UPM_CBB_WRAPPER_debug_clk_en       ), //cbb_wrapper_top::CREATE_MODULE::input 
        .fdfx_powergood          (dfx_upm_fdfx_powergood                     ), //cbb_wrapper_top::CREATE_MODULE::input 
        .iso_n                   (iso_n                                      ), //cbb_wrapper_top::CREATE_MODULE::input 
        .clk_debug               (clk_debug                                  ), //cbb_wrapper_top::CREATE_MODULE::input 
        .clk_out                 (UPM_CBB_WRAPPER_to_UPM1_cbb_clk_in         ), //cbb_wrapper_top::CREATE_MODULE::output 
        .so                      (UPM_CBB_WRAPPER_to_UPM1_reg_so             ), //cbb_wrapper_top::CREATE_MODULE::output 
		//
		//
		
		
        .power_enable_error_next (UPM_CBB_WRAPPER_to_UPM1_cbb_power_en_error )  //cbb_wrapper_top::CREATE_MODULE::output 
);
//------------------------------------------------------------------------------------------------------
// collage-pragma translate_on
`endif	
//------------------------------------------------------------------------------------------------------
//module_gen INPUT PORTS ASSIGN
assign clk_debug = dfx_upm_clk_debug; 
assign iso_n     = dfx_upm_iso_n;     
//------------------------------------------------------------------------------------------------------
 `ifndef INTEL_SVA_OFF
  `ifndef UPM_SVA_OFF
   `ifdef INTEL_SIMONLY
  	`include "dteg_upm_coverage.svh"	
   `endif
  `endif
 `endif
endmodule
`endif
