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
//  Module dteg_upm_top :  SYSTEM PORTS DEFINITIONS
//
//------------------------------------------------------------------------------
input  logic 			dfx_upm_func_clk,
input 	logic 			dfx_upm_sys_en,
input 	logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 9 - 1 :0]	dfx_upm_sys_ctl,
input 	logic	[15:0]	dfx_upm_sys_cbb_ctrl,
input 	logic	[3:0]	dfx_upm_sys_cbb_pwr,
input   logic  			dfx_upm_sys_rstn,

//generate 
//	if (1) : UPM_SYS_PORTS
//	begin
//		if( (DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_1") || (DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_2") || (DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_3") || (DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_4") || (DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_5") || (DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_6")) begin : UPM_THERMAL 
//			output logic [2*DFX_UPM_NUMBER_OF_BITS_IN_COUNTER + 1: 0] dfx_upm_result,
//		end else begin
//			output logic [DFX_UPM_NUMBER_OF_BITS_IN_COUNTER : 0] dfx_upm_result,
//		end
//	end
//endgenerate 

output logic [2*DFX_UPM_NUMBER_OF_BITS_IN_COUNTER + 1 : 0] dfx_upm_result,

			
output	logic 	[DFX_UPM_NUMBER_OF_BITS_IN_WINDOW_COUNTER + 8 - 1 : 0]	dfx_upm_status,
		
