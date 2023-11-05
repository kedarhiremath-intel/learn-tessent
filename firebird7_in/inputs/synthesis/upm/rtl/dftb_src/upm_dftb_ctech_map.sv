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
//  Module upm_dftb_ctech_map 
//
//------------------------------------------------------------------------------
///====================================================================================================================
///
/// upm_dftb_ctech_map.vs
///
/// Unit Owner        : dft_build.pl
///
/// Original Author   : yoz
///
/// Copyright (c) 2020 Intel Corporation
/// Intel Proprietary
///
///====================================================================================================================

//------------------------------------------------------------------------------------------------------
//CLKINV
module upm_dftb_clk_inv (
   input logic  clk,
   output logic clkout
);
 
   ctech_lib_clk_inv i_ctech_lib_clk_inv(
        .clk(clk),
        .clkout(clkout)
   );
 
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//CLK GATE TE
module upm_dftb_clk_gate_te (
   input logic  clk,
   input logic  en,
   input logic  te,
   output logic clkout
);
 
   ctech_lib_clk_gate_te i_ctech_lib_clk_gate_te(
        .clk(clk),
        .en(en),
        .te(te),
        .clkout(clkout)
   );
 
endmodule
//------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
//MAKE_RCB_AND_PH1
module upm_dftb_clk_gate_and (
   input logic  clk,
   input logic  en,
   output logic clkout
);
 
   ctech_lib_clk_gate_and i_ctech_lib_clk_gate_and(
        .clk(clk),
        .en(en),
        .clkout(clkout)
   );
 
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//CLKAND
module upm_dftb_clk_and_en (
   input logic  clk,
   input logic  en,
   output logic clkout
);
 
   ctech_lib_clk_and_en i_ctech_lib_clk_and_en(
        .clk(clk),
        .en(en),
        .clkout(clkout)
   );
 
endmodule

module upm_dftb_clk_and (
   input logic  clk1,
   input logic  clk2,
   output logic clkout
);
 
   ctech_lib_clk_and i_ctech_lib_clk_and(
        .clk1(clk1),
        .clk2(clk2),
        .clkout(clkout)
   );
 
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//CLKOR
module upm_dftb_clk_or (
   input logic  clk1,
   input logic  clk2,
   output logic clkout
);
 
   ctech_lib_clk_or i_ctech_lib_clk_or(
        .clk1(clk1),
        .clk2(clk2),
        .clkout(clkout)
   );
 
endmodule
//------------------------------------------------------------------------------------------------------
//CLK_DIVIDER_BY_2

module upm_dftb_clk_divider_by_2 (
   input  logic  clk,
   input  logic  rstb,
   output logic clkout
);
 
   ctech_lib_clk_divider2_rstb i_ctech_lib_clk_divider2_rstb(
        .clk   (clk),
        .rstb   (rstb),
        .clkout (clkout)
   );
 
endmodule


//------------------------------------------------------------------------------------------------------
//CLK_MUX_2TO1
module upm_dftb_clk_mux_2to1 (
   input  logic  clk1,
   input  logic  clk2,
   input  logic  s,
   output logic clkout
);
 
   ctech_lib_clk_mux_2to1 i_ctech_lib_clk_mux_2to1(
        .clk1   (clk1),
        .clk2   (clk2),
        .s      (s),
        .clkout (clkout)
   );
 
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//MUX_2TO1
module upm_dftb_mux_2to1 #(
    parameter WIDTH = 1
) (
   input  logic [WIDTH-1:0] d1,
   input  logic [WIDTH-1:0] d2,
   input  logic  s,
   output logic [WIDTH-1:0] o
);

genvar g_i;
generate
        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
                ctech_lib_mux_2to1 mux_2to1(
                        .d1     (d1[g_i]),
                        .d2     (d2[g_i]),
                        .s      (s      ),
                        .o      (o[g_i] )
                );
        end
endgenerate
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//BUF
module upm_dftb_buf #(
    parameter WIDTH             = 1
) (
    output logic [WIDTH-1:0]    o,
    input  logic [WIDTH-1:0]    a
);

genvar g_i;
generate
        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
                ctech_lib_buf buffer(
                        .o              (o[g_i]),
                        .a              (a[g_i])
                );
        end
endgenerate
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//BUF with enable
/* experimental ctech module
module upm_dftb_dq #(
    parameter WIDTH             = 1
) (
    output logic [WIDTH-1:0]    o,
    input  logic [WIDTH-1:0]    a,
    input  logic                b
);

genvar g_i;
generate
        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
                ctech_lib_dq dq(
                        .o              (o[g_i]),
                        .a              (a[g_i]),
                        .b              (b)
                );
        end
endgenerate
endmodule
*/
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//OR2
/*
module upm_dftb_or2 #(
    parameter WIDTH             = 1
) (
    output logic [WIDTH-1:0]    o,
    input  logic [WIDTH-1:0]    a,
    input  logic [WIDTH-1:0]    b
);

genvar g_i;
generate
        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
                ctech_lib_or2 or2(
                        .o              (o[g_i]),
                        .a              (a[g_i]),
                        .b              (b[g_i])
                );
        end
endgenerate
endmodule
*/
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//CLKBF
module upm_dftb_clk_buf #(
    parameter WIDTH             = 1
) (
    output logic [WIDTH-1:0]    clkout,
    input  logic [WIDTH-1:0]    clk
);

genvar g_i;
generate
        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
                ctech_lib_clk_buf clk_buf(
                        .clkout         (clkout[g_i]),
                        .clk            (clk[g_i])
                );
        end
endgenerate
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//RST_LATCH
//module upm_dftb_rst_latch #(
//    parameter WIDTH             = 1
//) (
//    output logic [WIDTH-1:0]    q_pin,
//    input  logic [WIDTH-1:0]    i_pin,
//    input  logic                clock_pin,
//    input  logic                rst_pin
//);
//
//genvar g_i;
//generate
//        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
//                ctech_lib_rst_latch rst_latch(
//                        .q_pin          (q_pin[g_i]),
//                        .i_pin          (i_pin[g_i]),
//                        .clock_pin      (clock_pin),
//                        .rst_pin        (rst_pin)
//                );
//        end
//endgenerate
//endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//RST_LATCH_P
//module upm_dftb_rst_latch_p #(
//    parameter WIDTH             = 1
//) (
//    output logic [WIDTH-1:0]    q_pin,
//    input  logic [WIDTH-1:0]    i_pin,
//    input  logic                clock_pin,
//    input  logic                rst_pin
//);
//
//genvar g_i;
//generate
//        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
//                ctech_lib_rst_latch_p rst_latch_p(
//                        .q_pin          (q_pin[g_i]),
//                        .i_pin          (i_pin[g_i]),
//                        .clock_pin      (clock_pin),
//                        .rst_pin        (rst_pin)
//                );
//        end
//endgenerate
//endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//ASYNC_RST_LATCH
//module upm_dftb_async_rst_latch #(
//    parameter WIDTH             = 1
//) (
//    output logic [WIDTH-1:0]    q_pin,
//    input  logic [WIDTH-1:0]    i_pin,
//    input  logic                clock_pin,
//    input  logic                rst_pin
//);
//
//genvar g_i;
//generate
//        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
//                ctech_lib_async_rst_latch async_rst_latch(
//                        .q_pin          (q_pin[g_i]),
//                        .i_pin          (i_pin[g_i]),
//                        .clock_pin      (clock_pin),
//                        .rst_pin        (rst_pin)
//                );
//        end
//endgenerate
//endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//ASYNC_RST_LATCH_P
//module upm_dftb_async_rst_latch_p #(
//    parameter WIDTH             = 1
//) (
//    output logic [WIDTH-1:0]    q_pin,
//    input  logic [WIDTH-1:0]    i_pin,
//    input  logic                clock_pin,
//    input  logic                rst_pin
//);
//
//genvar g_i;
//generate
//        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
//                ctech_lib_async_rst_latch_p async_rst_latch_p(
//                        .q_pin          (q_pin[g_i]),
//                        .i_pin          (i_pin[g_i]),
//                        .clock_pin      (clock_pin),
//                        .rst_pin        (rst_pin)
//                );
//        end
//endgenerate
//endmodule
////------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//ASYNC_SET_LATCH
//module upm_dftb_async_set_latch #(
//    parameter WIDTH             = 1
//) (
//    output logic [WIDTH-1:0]    q_pin,
//    input  logic [WIDTH-1:0]    i_pin,
//    input  logic                clock_pin,
//    input  logic                rst_pin
//);
//
//logic [WIDTH-1:0]    q_pin_b;
//
//genvar g_i;
//generate
//        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
//                ctech_lib_async_rst_latch rst_latch(
//                        .q_pin          (q_pin_b[g_i]),
//                        .i_pin          (~i_pin[g_i]),
//                        .clock_pin      (clock_pin),
//                        .rst_pin        (rst_pin)
//                );
//        end
//endgenerate
//
//assign q_pin = ~q_pin_b;
//
//endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//ASYNC_SET_LATCH_P
//module upm_dftb_async_set_latch_p #(
//    parameter WIDTH             = 1
//) (
//    output logic [WIDTH-1:0]    q_pin,
//    input  logic [WIDTH-1:0]    i_pin,
//    input  logic                clock_pin,
//    input  logic                rst_pin
//);
//
//logic [WIDTH-1:0]    q_pin_b;
//
//genvar g_i;
//generate
//        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
//                ctech_lib_async_rst_latch_p rst_latch_p(
//                        .q_pin          (q_pin_b[g_i]),
//                        .i_pin          (~i_pin[g_i]),
//                        .clock_pin      (clock_pin),
//                        .rst_pin        (rst_pin)
//                );
//        end
//endgenerate
//
//assign q_pin = ~q_pin_b;
//
//endmodule
////------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//ASYNC_RST_METAFLOP2
module upm_dftb_doublesync_rst (
    output logic o,
    input  logic d,
    input  logic clk,
    input  logic rst
);
    ctech_lib_doublesync_rst i_ctech_lib_doublesync_rst (
        .o(o),
        .d(d),
        .rst(rst),
        .clk(clk)
    );
endmodule
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//ASYNC_SET_METAFLOP2
module upm_dftb_doublesync_set (
    output logic o,
    input  logic d,
    input  logic clk,
    input  logic set
);
    ctech_lib_doublesync_set double_sync2 (
        .o(o),
        .d(d),
        .set(set),
        .clk(clk)
    );
endmodule
//------------------------------------------------------------------------------------------------------



//------------------------------------------------------------------------------------------------------
//XOR
module upm_dftb_xor #(
    parameter WIDTH             = 1
) (
    output logic [WIDTH-1:0]    o,
    input  logic [WIDTH-1:0]    a,
    input  logic [WIDTH-1:0]    b
);

genvar g_i;
generate
        for (g_i = 0; g_i < WIDTH; g_i++) begin : loop
                ctech_lib_xor i_ctech_lib_xor(
                        .o              (o[g_i]),
                        .a              (a[g_i]),
                        .b              (b[g_i])
                );
        end
endgenerate
endmodule
//------------------------------------------------------------------------------------------------------


module upm_2and1_gate (
   input logic  a,
   input logic  b,
   output logic o
);
 
  ctech_lib_and DONT_TOUCH_AND (.o(o), .a(a), .b(b));
 
endmodule


module upm_2nor1_gate (
   input logic  a,
   input logic  b,
   output logic o1
);
 
  ctech_lib_nor u_nor (.o1(o1), .a(a), .b(b));
 
endmodule












