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
//  Module upm_reg_2_cntrs :  tdr logic thermal
//
//------------------------------------------------------------------------------
`ifndef UPM_MODULE_UPM_REG
`define UPM_MODULE_UPM_REG
module upm_reg 
       #(
               parameter UPM_NUMBER_OF_BITS_IN_COUNTER    = 20, 
               parameter NUMBER_OF_BITS_IN_WINDOW_COUNTER = 16 ,
			   parameter CBB_HIP_TYPE  = "UPM_T_A"
       )
	   
(       
	
		output logic [1:0] dfx_upm_dcm_out,
       //SIB_REG_COUNTER_RESULT INPUTS
       input  logic            s2,
       //SIB_REG_UPM_STATUS INPUTS
       input  logic            update,
       input  logic            shift,
       input  logic            capture,
       input  logic            tck,
       input  logic            cntr_ctrl_si,
       input  logic            cntr_res_si,
       input  logic            upm_status_si,       
       input  logic            s3,
       //SIB_REG_UPM_STATUS OUTPUTS
       output logic            cntr_ctrl_so,
       output logic            cntr_res_so,
       output logic            upm_status_so,
       //SIB_REG_COUNTER_CTRL INPUTS
       input  logic            s1,
       input  logic            fdfx_powergood,
       //UNIT interface INPUTS
       input  logic [1:0]      cbb_clk_in,
       input  logic            cbb_power_en_error,
       input  logic            trstb,
	   
       //UNIT interface OUTPUTS
	   
		output logic			tap_master_mode,
	    output logic            debug_clk_en
	   
        );
//______________________________________________________________________________________________________
//======================================================================================================
//
//                                         - UPM_REG_CNTRS -
//
//______________________________________________________________________________________________________
//======================================================================================================
//------------------------------------------------------------------------------------------------------
`include "upm_dft_build_macros.vh"
`include "tap_upm_reg.vs"
//------------------------------------------------------------------------------------------------------
endmodule
`endif