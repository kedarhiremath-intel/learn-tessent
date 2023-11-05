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
//  Module upm_fdr_dfx_db
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_fdr_dfx_db.vs
///
/// Unit Owner        : Dror Buhnik
/// Secondary Contact :
///
/// Copyright (c) 2013 Intel Corporation
/// Intel Proprietary and Top Secret Information 
///
/// FDR = FE driven Relaxation
/// This module is for generating automatic commands from RTL to BE
/// Project with FDR utility will be able to auto generate commands instead of maintaining execption file
/// User can generate either multicycle paths or false paths commands via this module
///
/// The use of ctech blackbox buffer here is to make sure implementation won't be able to remove/change the location of 
/// this cell. It must be in the exact location where the RTL put it as we check in validation the correctness 
/// of the relaxation base on the paths that go though this buffer only
///
/// This special ctech is copy-paste from the regular buffer and his function is remove for DC/ICC/FEV tools
///
///=====================================================================================================================
`ifndef MODULE_upm_fdr_dfx_db
`define MODULE_upm_fdr_dfx_db
module upm_fdr_dfx_db #(
    parameter BE_CMD_TYPE   = "none",   // "none" / "mcp" / "false_path"
    parameter BE_NUM_CYCLES = 0,        // number of cycles in case of BE_CMD_TYPE="mcp"
    parameter BE_DELAY_TYPE = "any"     // "setup" / "hold" / "any"
) (
    input  logic fdr_in,
    output logic fdr_out
);
`include  "upm_dft_build_macros.vh"

`UPM_CTECH_BUF(fdr_out, fdr_in)

endmodule
`endif
