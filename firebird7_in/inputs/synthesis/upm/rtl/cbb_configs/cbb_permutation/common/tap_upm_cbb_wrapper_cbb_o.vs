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
//  Module tap_upm_cbb_wrapper_cbb_o :  hip wrapper module
//
//------------------------------------------------------------------------------
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        -  CBB_CONTROL -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
logic cbb_clk;
logic power_enable;
logic power_enable_hip;
logic [1:0] clk_out_pre;
logic [63:0] upm_address_hip;
logic [63:0] upm_address;
//module upm_cbb_control instantiation
//module upm_cbb_control instantiation
upm_cbb_control #(
       .BANK_SIZE(6)
)
upm_cbb_control (
        .so_out                  (so_out                  ), //upm_cbb_wrapper::CREATE_MODULE::input  
        .shift_out               (shift_out               ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .update_out              (update_out              ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .tck_out                 (tck_out                 ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .capture_out             (capture_out             ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .si_out                  (si_out                  ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .sel_out                 (sel_out                 ), //upm_cbb_wrapper::CREATE_MODULE::output 
        .fdfx_powergood          (fdfx_powergood          ), //upm_cbb_wrapper::TOP::input  
        .update                  (update                  ), //upm_cbb_wrapper::TOP::input  
        .shift                   (shift                   ), //upm_cbb_wrapper::TOP::input  
        .capture                 (capture                 ), //upm_cbb_wrapper::TOP::input  
        .tck                     (tck                     ), //upm_cbb_wrapper::TOP::input  
        .si                      (si                      ), //upm_cbb_wrapper::TOP::input  
        .sel                     (sel                     ), //upm_cbb_wrapper::TOP::input  
        .so                      (so                      ), //upm_cbb_wrapper::TOP::output 
		.power_enable_hip		  (power_enable_hip),
        .clk_debug               (clk_debug               ), //upm_cbb_wrapper::UNIT interface::input 
        .power_enable_prev       (power_enable_prev       ), //upm_cbb_wrapper::UNIT interface::input 
        .iso_n                   (iso_n                   ), //upm_cbb_wrapper::UNIT interface::input 
        .power_enable_error_prev (power_enable_error_prev ), //upm_cbb_wrapper::UNIT interface::input 
        .clk_in                  (clk_in                  ), //upm_cbb_wrapper::UNIT interface::input 
        .power_enable_next       (power_enable_next       ), //upm_cbb_wrapper::UNIT interface::output 
        .power_enable_error_next (power_enable_error_next ), //upm_cbb_wrapper::UNIT interface::output 
        .clk_out                 (clk_out             ),  //upm_cbb_wrapper::UNIT interface::output 
        .cbb_clk                 (cbb_clk                 ),  //upm_cbb_wrapper::UNIT interface::output 
        .power_enable            (power_enable            ),  //upm_cbb_wrapper::UNIT interface::output 
        .upm_address             (upm_address             )  //upm_cbb_wrapper::UNIT interface::output 
);
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
	assign power_enable_hip = power_enable;
	assign upm_address_hip  = upm_address;
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                        - CBB_HIP -
//
//______________________________________________________________________________________________________
//======================================================================================================
//upm_address[63:1]
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
generate
	if (1) begin : UPM_CBB_INSTANCES
		if(CBB_HIP_TYPE == "UPM_T_A") begin : UPM_T_A_INST
		i70idvtpmd03m50ashipbm1m3 inst_i70idvtpmd03m50ashipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);
		end else if(CBB_HIP_TYPE == "UPM_T_B") begin : UPM_T_B_INST
		i70idvtpmd03m50bshipbm1m3 inst_i70idvtpmd03m50bshipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
			);															  
		end else if(CBB_HIP_TYPE == "UPM_T_C") begin : UPM_T_C_INST
		i70idvtpmd03m50cshipbm1m3 inst_i70idvtpmd03m50cshipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);																	  
		end else if(CBB_HIP_TYPE == "UPM_T_D") begin : UPM_T_D_INST
		i70idvtpmd03m50dshipbm1m3 inst_i70idvtpmd03m50dshipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);															  
		end else if(CBB_HIP_TYPE == "UPM_D_A") begin : UPM_D_A_INST
		i70idvdpmd03m50ashipbm1m3 inst_i70idvdpmd03m50ashipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);															  
		end else if(CBB_HIP_TYPE == "UPM_D_B") begin : UPM_D_B_INST
		i70idvdpmd03m50bshipbm1m3 inst_i70idvdpmd03m50bshipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);															  
		end else if(CBB_HIP_TYPE == "UPM_D_C") begin : UPM_D_C_INST
		i70idvdpmd03m50cshipbm1m3 inst_i70idvdpmd03m50cshipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);													  
		end else if(CBB_HIP_TYPE == "UPM_D_D") begin : UPM_D_D_INST
		i70idvdpmd03m50dshipbm1m3 inst_i70idvdpmd03m50dshipbm1m3 (
			
			.enosc           (upm_address_hip[63:1]), 
			.sleep_b         (power_enable_hip),
			.idvdebug_clki   (clk_debug), 
			.hfbankl         (cbb_clk)
		);		
		end
	end 
endgenerate
//------------------------------------------------------------------------------------------------------
