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
//  Module upm_async_rst_metaflop_2_dfx_db
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_async_rst_metaflop_2_dfx_db.vs
///
/// Unit Owner        : dftb
///
/// Copyright (c) 2021 Intel Corporation
/// Intel Proprietary and Top Secret Information
///
/// Metaflop 2 has random delay between 0 and MAX_DELAY
///
///=====================================================================================================================
`ifndef UPM_MODULE_UPM_ASYNC_RST_METAFLOP_2_DFX_DB
`define UPM_MODULE_UPM_ASYNC_RST_METAFLOP_2_DFX_DB


module upm_async_rst_metaflop_2_dfx_db #(
                parameter CYCLES                    = 2,
                parameter SVA_ENABLE_INSTANCE       = 1,
                parameter ENABLE_RANDOM_DELAY       = 1,
                parameter RST_CYCLES                = 2, //unused, keep legcy ifc                
                parameter ENABLE_METAFLOP_MODELING  = 0  //unused, keep legcy ifc
            ) (
                output logic q,
                input  logic d,
                input  logic clock,
                input  logic rst
            );

//`ifdef INTEL_SIMONLY
////-------------------------------------------------------------------------------------------------------
//
//        logic real_clk;
//        logic real_d;
//        logic sampled_1d;
//        if(ENABLE_RANDOM_DELAY) begin 
//                upm_metaflop_modeling double_sync2 (
//                    .d(d),
//                    .clock(clock),
//                    .real_clk(real_clk),
//                    .real_d(real_d)
//                );
//        end
//        else begin
//                assign real_clk = clock;
//                assign real_d   = d;
//        end
//        `UPM_ASYNC_RST_MSFF(sampled_1d, real_d,    real_clk, rst)
//        `UPM_ASYNC_RST_MSFF(q,         sampled_1d, clock,    rst)
//
//
/////-------------------------------------------------------------------------------------------------------
//`else
         upm_dftb_doublesync_rst double_sync2 (
             .o(q),
             .d(d),
             .rst(rst),
             .clk(clock)
         );
//`endif
//-------------------------------------------------------------------------------------------------------



endmodule
`endif
