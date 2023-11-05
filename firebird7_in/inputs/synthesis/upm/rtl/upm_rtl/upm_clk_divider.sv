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
//  Module upm_clk_divider :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
`ifndef UPM_MODULE_UPM_CLK_DIVIDER
`define UPM_MODULE_UPM_CLK_DIVIDER
module upm_clk_divider 
(
                //------------------ Inputs --------------------//
                 input  logic       fin               ,
                 input  logic       trstn_i           ,
                 input  logic [4:0] en_div_i          ,
                //------------------ Outputs --------------------//
                 output logic       fout 
);
//----------- Internal Declaration ----------//
//logic      trstn_i     ;
logic      div_2_clk   ;
logic      div_4_clk   ;
logic      div_8_clk   ;
logic      div_16_clk  ;
logic      clk1        ; 
logic      clk2        ; 
logic      clk4        ; 
logic      clk8        ; 
logic      clk16       ; 
// Stephane L : fin will start after trstn_i reset release, so reset synchronizer is not required
//assign trstn_i = trstn_i ;
//`UPM_ASYNC_RST_MSFF(div_2_clk ,  (~div_2_clk),  fin      , ~trstn_i)
//`UPM_ASYNC_RST_MSFF(div_4_clk ,  (~div_4_clk),  div_2_clk, ~trstn_i)
//`UPM_ASYNC_RST_MSFF(div_8_clk ,  (~div_8_clk),  div_4_clk, ~trstn_i)
//`UPM_ASYNC_RST_MSFF(div_16_clk,  (~div_16_clk), div_8_clk, ~trstn_i)

upm_dftb_clk_divider_by_2 u_upm_dftb_clk_divider_by_2  (.clkout(div_2_clk), .clk(fin), .rstb(trstn_i) );
upm_dftb_clk_divider_by_2 u_upm_dftb_clk_divider_by_4  (.clkout(div_4_clk), .clk(div_2_clk), .rstb(trstn_i) );
upm_dftb_clk_divider_by_2 u_upm_dftb_clk_divider_by_8  (.clkout(div_8_clk), .clk(div_4_clk), .rstb(trstn_i) );
upm_dftb_clk_divider_by_2 u_upm_dftb_clk_divider_by_16 (.clkout(div_16_clk), .clk(div_8_clk), .rstb(trstn_i) );

// Clock MUX for divided clocks
`UPM_CLK_MUX_2TO1(clk16, div_16_clk, 1'b0,   en_div_i[4])
`UPM_CLK_MUX_2TO1(clk8,  div_8_clk , clk16,  en_div_i[3])
`UPM_CLK_MUX_2TO1(clk4,  div_4_clk , clk8,   en_div_i[2])
`UPM_CLK_MUX_2TO1(clk2,  div_2_clk , clk4,   en_div_i[1])
`UPM_CLK_MUX_2TO1(clk1,  fin       , clk2,   en_div_i[0])
// Clock Gate Element
`UPM_CLKAND(fout, clk1, (|en_div_i))
endmodule
`endif
