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
//  Module mcr_macros_mcr_dftb :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
`include "upm_mcr_macros_mcr_dftb.vh"
logic clk_free_int;
generate if (USE_CLK_SOURCE == "yes") begin : USE_CLK_SRC
   case (CLK_SOURCE)
     "IPCLK1" : `MCR_ASSIGN_CLK_MCR_DFTB(IPCLK1,spy_clocks_mcr_dftbinst,ipclk1)
     "IPCLK2" : `MCR_ASSIGN_CLK_MCR_DFTB(IPCLK2,spy_clocks_mcr_dftbinst,ipclk2) 
     default : begin
        `ifdef INTEL_SIMONLY
	        assign clk_free_int = clk_free;
                //`ifndef INTEL_SVA_OFF
	        //import mcr_sva_library_pkg_mcr_dftb::*; - not used in DFTB causing compilation conflicts
	        //`MCR_ASSERTC_FORBIDDEN_MCR_DFTB (frb_spy_clk,1,0,`MCR_ERR_MSG_MCR_DFTB("CLK_SOURCE must be one of this clocks: IPCLK1,IP_CLK2"));
                //`endif
        `else
	        assign clk_free_int = 1'b0;
        `endif
     end
   endcase // case (CLK_SOURCE)
end // block: USE_CLK_SRC
else begin
`ifdef INTEL_SIMONLY
   assign clk_free_int = clk_free;                 
`else                                              
   assign clk_free_int = 1'b0;	                   
`endif
end
endgenerate
