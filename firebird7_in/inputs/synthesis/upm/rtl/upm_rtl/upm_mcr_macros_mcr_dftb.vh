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
//  %header_collateral%
//
//  Source organization:
//  %header_organization%
//
//  Support Information:
//  %header_support%
//
//  Revision:
//  %header_tag%
//
//  Module MCR_ASSIGN_CLK_MCR_DFTB :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
`ifndef MCR_MACROS_VH_MCR_DFTB
`define MCR_MACROS_VH_MCR_DFTB

                                  

`define MCR_ASSIGN_CLK_MCR_DFTB(RTLCLK,inst,rtlclk) \
begin                                               \
`ifdef INTEL_DC                                     \
   /* synopsys dc_tcl_script_begin set_attribute [get_cells] -type string fdr_spy_reference_``RTLCLK `"inst rtlclk`" ;  */ \
`elsif INTEL_SIMONLY                                \
   assign clk_free_int = inst.rtlclk;               \
`else                                               \
     assign clk_free_int = 1'b0;	            \
`endif                                              \
end
					       
`endif