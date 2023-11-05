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
//  Module upm_cutdc_dfx_db
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_cutdc_dfx_db.vs
///
/// Unit Owner        : Dror Buhnik
/// Secondary Contact :
///
/// Copyright (c) 2013 Intel Corporation
/// Intel Proprietary and Top Secret Information 
///
/// Description: The CUTDC macro checks to insure that the signal being observed does not toggle out
///              side of the Active High window. If it toggle outside this window an Assertion will 
///              fire.
///
/// Interface: 
///
/// src_sig         This is the input to the macro.  Needs to be of type Packed!!! 
/// del_out         This is the output of the  macro. Needs to be of type Packed!!! 
/// act_win         Input that defines the Active  Window. Note, the window is active when it is a 1
///                     If your window is low you need to invert it for this macro to work.
///
///                            ----------
///      src_sig          -----|In       |
///                            |      Out|---- cut_out
///      act_win          -----|         |
///                            ----------
///                                 ________________________________
///      act_win            ________|                              |_____________
///                                                                     ________
///      src_sig               _________/\/\/\/\/\/\/\/\/\_____________/
///                                     Valid Transistions            Invalid transistion. Assertion will fire.
///
///=====================================================================================================================
`ifndef MODULE_upm_cutdc_dfx_db
`define MODULE_upm_cutdc_dfx_db
module upm_cutdc_dfx_db #(
    parameter WIDTH         = 1
) (
    output logic [WIDTH-1:0] cut_out,
    input  logic [WIDTH-1:0] src_sig,
    input  logic             act_win
);

genvar g_i;
generate
    for (g_i = 0; g_i < WIDTH; g_i++) begin : buf_loop

// we want this fdr to black box this buffer.
        upm_fdr_dfx_db #(  
            .BE_CMD_TYPE("none"),
            .BE_NUM_CYCLES(1),
            .BE_DELAY_TYPE("any")
        ) fdr_cutdc (
            .fdr_in(src_sig[g_i]),
            .fdr_out(cut_out[g_i])
        );
    end
    `ifdef HIGH_SPEED_BE
        `ifdef FEV
            (* fev_rpp = "CDC_cutdc" *)
            logic [WIDTH-1:0] fev_rpp_cut_out;
            assign fev_rpp_cut_out = cut_out;
            upm_rtl2be_module #(
                .TYPE("Cutdc"),
                .EXTRA0("any"),
                .EXTRA1("any"),
                .SIZE0($bits(cut_out))
            ) rtl2be_cutdc (
                .s0(cut_out)
            );
        `endif
        `ifdef INTEL_DC
            for (g_i = 0; g_i < WIDTH; g_i++) begin : rls_loop
                upm_rls_design_attributes #(
                    .MODULETYPE("cutdc_setup"),
                    .OVERRIDETYPE("dc"),
                    .PATHTYPE("setup"),
                    .SOURCEDATAEDGE("all"),
                    .TARGETDATAEDGE("all"),
                    .SOURCECLOCKEDGE("all"),
                    .TARGETCLOCKEDGE("all"),
                    .SOURCEPROPAGATE("auto"),
                    .TARGETPROPAGATE("ignore")
                ) setup_cutdc (
                    .source(cut_out[g_i]),
                    .target(1'b0),
                    .srcclock('0),
                    .trgclock('0)
                );
                upm_rls_design_attributes #(
                    .MODULETYPE("cutdc_hold"),
                    .OVERRIDETYPE("dc"),
                    .PATHTYPE("hold"),
                    .SOURCEDATAEDGE("all"),
                    .TARGETDATAEDGE("all"),
                    .SOURCECLOCKEDGE("all"),
                    .TARGETCLOCKEDGE("all"),
                    .SOURCEPROPAGATE("auto"),
                    .TARGETPROPAGATE("ignore")
                ) hold_cutdc (
                    .source(cut_out[g_i]),
                    .target(1'b0),
                    .srcclock('0),
                    .trgclock('0)
                );
            end
            /* synopsys dc_tcl_script_begin
            dcsv_set_dont_touch_nets_p {cut_out*}
            dcsv_set_dont_touch_nets_p {src_sig*}
            set_attribute [get_cells *cutdc_buf*] -type boolean is_rtl_buf_keep_net true */
        `endif
    `endif
endgenerate

`ifdef INTEL_SIMONLY
`ifndef INTEL_SVA_OFF
    cutdc_violation: assert property (@(src_sig) $isunknown(act_win) | act_win)
        else $error("cutdc detected a change on signal outside of the active window");
`endif
`endif
endmodule
`endif
