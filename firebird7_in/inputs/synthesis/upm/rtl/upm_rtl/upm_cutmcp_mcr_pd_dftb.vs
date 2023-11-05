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
//  Module cutmcp_mcr_pd_dftb :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_cutmcp_mcr_pd_dftb.vs
///
/// Unit Owner        : dftb
/// Secondary Contact : 
///
/// cutmcp with pounded delay modeling
///
/// Copyright (c) 2021 Intel Corporation
/// Intel Proprietary and Top Secret Information 
///
///=====================================================================================================================
`ifndef UPM_MODULE_UPM_CUTMCP_MCR_PD_DFTB
`define UPM_MODULE_UPM_CUTMCP_MCR_PD_DFTB
module upm_cutmcp_mcr_pd_dftb #(
    parameter CYCLES                    = 1,       // the cycles for MCP BE command and for validation
    parameter WIDTH                     = 1,       // width of the mcp buffer. 
    parameter DISABLE_CUTMCP_MODELING   = 0,       
    parameter ENABLE_CUTMCP_MODELING    = 0,       // enable the validation capabilities - should be set to "1" from ace files during test.
    // not in use - keep to match with legacy cutmcp MCR interface
    parameter USE_SIM_CLK               = "yes",   // no - use provided clock as MCP delay, yes - use pound delay as MCP delay    
    parameter MCPSEED                   = 1,       // not in used - keep to match with legacy cutmcp MCR module
    parameter TYPE                      = "setup", // setup/hold/any to define the type of MCP command to create
    parameter SVA_ENABLE_INSTANCE       = 1,       // to disable the assertion in module.
    parameter ENABLE_X_INJ              = 1,       // to choose X injection or random delay validation.
    parameter CLK_SOURCE                = "none",  // pointer to one clock from SPY_CLOCK module to define the clock to be passed to BE command.
    parameter USE_CLK_SOURCE            = "yes",   // to enable the SPY_CLOCK feature.
    parameter COVERAGE                  = 0,       // to enable COVERAGE for mcp points.
    parameter DISABLE_CUTMCP_GLITCH_FILTER = 1     // TGL CUTMCP Enhancement, by default GLITCH filter is always enabled
) (
           output logic [WIDTH-1:0]  cut_out,
           input  logic [WIDTH-1:0]  src_sig
        `ifdef INTEL_SIMONLY
          ,input  logic              clk_free,
           input  logic              dest_en,
           input  logic              reset,           
           input  logic              disableXes    /* lintra s-52505 */  //in upm_dft_build_macros, disableXes is tied to 1
        `endif
);
//-----------------------------------------------------------------------------------------------------------------------------
//parameters
localparam ENABLE_MCR_MODELING = ENABLE_CUTMCP_MODELING & !DISABLE_CUTMCP_MODELING; //spyglass disable W576  
genvar g_i; 
//-----------------------------------------------------------------------------------------------------------------------------
`include "upm_spy_clocks_case_mcr_dftb.sv"
//-----------------------------------------------------------------------------------------------------------------------------
if ((ENABLE_MCR_MODELING == 0)) begin : behavioral
    `ifndef HIGH_SPEED_BE
        for (g_i = 0; g_i < WIDTH; g_i++) begin : buf_loop
            upm_fdr_mcr_dftb #(
                .BE_CMD_TYPE("mcp"),
                .BE_NUM_CYCLES(CYCLES+1),
                .BE_DELAY_TYPE(TYPE),
                .CLK_SOURCE(CLK_SOURCE)
            ) fdr_cutmcp (
                .fdr_in(src_sig[g_i]),
                .fdr_out(cut_out[g_i])
            );
        end
    `else    
        upm_dftb_buf #(.WIDTH(WIDTH))
        cutmcp_buf (
                .a(src_sig),
                .o(cut_out)
            );    
    `endif
end
//-----------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
else begin : validation
   //RTL simulation RANDOM DELAY or Buffer in synthesis
   upm_random_delay_dfx_db #(
           .WIDTH(WIDTH),
           .USE_POUND_DELAY(1),
           .MAX_DELAY(CYCLES + 2)
       ) random_delay_cutmcp (
           .q(cut_out),
           .d(src_sig),
           .enable(1'b1),
         `ifdef INTEL_SIMONLY     
           .clock(clk_free_int),
           .reset(reset)
         `else
           .clock(1'b0),
           .reset(1'b0)
         `endif
   );
end 
//----------------------------------------------------------------------------------------------------------------------------- 
endmodule
`endif
