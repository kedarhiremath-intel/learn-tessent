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
//  Module upm_dftb_build_macros
//
//------------------------------------------------------------------------------

`define NODE logic

`define ZX(in,sz) {{sz-$bits(in){1'b0}},(in)}

`define OX(in,sz) {{sz-$bits(in){1'b1}},in}

`define UPM_CLKINV(outclk,inclk)                                 \
 upm_dftb_clk_inv \upm_dftb_clk_inv_``outclk (.clkout(outclk), .clk(inclk));

`define UPM_ASYNC_RST_MSFF(q,i,clock,rst)                        \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   assign \rst_``q = (rst) ;                                 \
   always_ff @(posedge clock or posedge \rst_``q  )          \
   begin                                                     \
         if ( \rst_``q ) q <= '0;                            \
         else            q <= i;                             \
   end

//`define ASYNC_RST_MSFF_SCAN(q,i,clock,rst)                   \
//   logic \rst_scan_``q ;                     /* lintra s-60034 */ \
//  `UPM_MUX_2TO1(\rst_scan_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , (rst)) \
//   always_ff @(posedge clock or posedge \rst_scan_``q  )     \
//   begin                                                     \
//         if ( \rst_scan_``q ) q <= '0;                       \
//         else            q <= i;                             \
//   end


`define UPM_EN_ASYNC_RST_MSFF(q,i,clock,enable,rst)              \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   assign \rst_``q = (rst) ;                                 \
   always_ff @(posedge clock or posedge \rst_``q  )          \
   begin                                                     \
         if ( \rst_``q )    q <= '0;                         \
         else if ( enable ) q <= i;                          \
   end

//`define EN_ASYNC_RST_MSFF_SCAN(q,i,clock,enable,rst)         \
//   logic \rst_scan_``q ;                /* lintra s-60034 */ \
//  `UPM_MUX_2TO1(\rst_scan_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , (rst)) \
//   always_ff @(posedge clock or posedge \rst_scan_``q  )     \
//   begin                                                     \
//         if ( \rst_scan_``q )    q <= '0;                    \
//         else if ( enable ) q <= i;                          \
//   end


//`define EN_ASYNC_SET_MSFF(q,i,clock,enable,set)              \
//   logic \set_``q ;                     /* lintra s-60034 */ \
//   assign \set_``q = (set) ;                                 \
//   always_ff @(posedge clock or posedge \set_``q  )          \
//   begin                                                     \
//         if ( \set_``q )    q <= '1;                         \
//         else if ( enable ) q <= i;                          \
//   end


//`define EN_ASYNC_SET_MSFF_SCAN(q,i,clock,enable,set)         \
//   logic \set_scan_``q ;                /* lintra s-60034 */ \
//  `UPM_MUX_2TO1(\set_scan_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , (set)) \
//   always_ff @(posedge clock or posedge \set_scan_``q  )     \
//   begin                                                     \
//         if ( \set_scan_``q )    q <= '1;                    \
//         else if ( enable ) q <= i;                          \
//   end


//`define ASYNC_RSTD_MSFF(q,i,clock,rst,rstd)                  \
//   logic \rst_``q ;                     /* lintra s-60034 */ \
//   assign \rst_``q = (rst) ;                                 \
//   always_ff @(posedge clock or posedge \rst_``q  )          \
//   begin                                                     \
//         if ( \rst_``q ) q <= rstd;                          \
//         else            q <= i;                             \
//   end

//`define ASYNC_RSTD_MSFF_SCAN(q,i,clock,rst,rstd)                  \
//   logic \rst_scan_``q ;                     /* lintra s-60034 */ \
//  `UPM_MUX_2TO1(\rst_scan_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , (rst)) \
//   always_ff @(posedge clock or posedge \rst_scan_``q  )          \
//   begin                                                          \
//         if ( \rst_scan_``q ) q <= rstd;                          \
//         else            q <= i;                                  \
//   end

//`define ASYNC_RSTD_MSFF_P(q,i,clock,rst,rstd)                \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `ASYNC_RSTD_MSFF(q,(i),(\invc_``q ),(rst),(rstd))


//`define ASYNC_RSTD_MSFF_P_SCAN(q,i,clock,rst,rstd)                \
//  logic \invc_scan_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_scan_``q ,(clock))                                \
//  `ASYNC_RSTD_MSFF_SCAN(q,(i),(\invc_scan_``q ),(rst),(rstd))


//`define RSTD_MSFF(q,i,clock,rst,rstd)                        \
//   logic \rst_``q ;                     /* lintra s-60034 */ \
//   assign \rst_``q = (rst) ;                                 \
//   always_ff @(posedge clock)                                \
//   begin                                                     \
//         if ( \rst_``q ) q <= rstd;                          \
//         else            q <= i;                             \
//   end

//`define ASYNC_SET_MSFF(q,i,clock,set)                        \
//   logic \set_``q ;                     /* lintra s-60034 */ \
//   assign \set_``q = (set) ;                                 \
//   always_ff @(posedge clock or posedge \set_``q  )          \
//   begin                                                     \
//         if ( \set_``q ) q <= '1;                            \
//         else            q <= i;                             \
//   end


//`define ASYNC_SET_MSFF_SCAN(q,i,clock,set)                   \
//   logic \set_scan_``q ;                /* lintra s-60034 */ \
//  `UPM_MUX_2TO1(\set_scan_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , set) \
//   always_ff @(posedge clock or posedge \set_scan_``q  )     \
//   begin                                                     \
//         if ( \set_scan_``q ) q <= '1;                            \
//         else            q <= i;                             \
//   end

//`define ASYNC_RST_MSFF_P(q,i,clock,rst)                      \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `ASYNC_RST_MSFF(q,(i),(\invc_``q ),(rst))

//`define EN_ASYNC_RST_MSFF_P(q,i,clock,enable,rst)            \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `UPM_EN_ASYNC_RST_MSFF(q,(i),(\invc_``q ),(enable),(rst))


//`define ASYNC_SET_MSFF_P(q,i,clock,set)                      \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `ASYNC_SET_MSFF(q,(i),(\invc_``q ),(set))
//
//`define ASYNC_SET_MSFF_P_SCAN(q,i,clock,set)                 \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `ASYNC_SET_MSFF_SCAN(q,(i),(\invc_``q ),(set))
//
//
//`define ASYNC_RST_MSFF_P_SCAN(q,i,clock,rst)                 \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `ASYNC_RST_MSFF_SCAN(q,(i),(\invc_``q ),(rst))
//
//`define EN_ASYNC_RST_MSFF_P_SCAN(q,i,clock,enable,rst)       \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `EN_ASYNC_RST_MSFF_SCAN(q,(i),(\invc_``q ),(enable),(rst))


`define UPM_MSFF(q,i,clock)                                      \
   always_ff @(posedge clock )                               \
      begin                                                  \
         q <= i;                                             \
      end

`define UPM_MSFF_P(q,i,clock)                                    \
  logic \invc_``q ;                     /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
  `UPM_MSFF(q,(i),(\invc_``q )) 

//`define UPM_EN_MSFF(q,i,clock,enable)                            \
//   always_ff @(posedge clock )                               \
//      begin                                                  \
//         if ((enable)) q <= i; /* spyglass disable IfWithoutElse-ML */\
//      end

//`define UPM_EN_MSFF_P(q,i,clock,enable)                          \
//  logic \invc_``q ;                     /* lintra s-60034 */ \
//  `UPM_CLKINV(\invc_``q ,(clock))                                \
//  `UPM_EN_MSFF(q,(i),(\invc_``q ),(enable))


`define UPM_RST_MSFF(q,i,clock,rst)                              \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   assign \rst_``q = (rst) ;                                 \
   always_ff @(posedge clock )                               \
      begin                                                  \
         if ( \rst_``q ) q <= '0;                            \
         else            q <= i;                             \
      end

`define UPM_RST_MSFF_P(q,i,clock,rst)                            \
  logic \invc_``q ;                     /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
  `UPM_RST_MSFF(q,(i),(\invc_``q ),(rst))


`define UPM_SET_MSFF(q,i,clock,set)                              \
   logic \set_``q ;                     /* lintra s-60034 */ \
   assign \set_``q = (set) ;                                 \
   always_ff @(posedge clock )                               \
      begin                                                  \
         if ( \set_``q ) q <= {$bits(q){1'b1}};              \
         else            q <= i;                             \
      end

`define UPM_SET_MSFF_P(q,i,clock,set)                            \
  logic \invc_``q ;                     /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
     `UPM_SET_MSFF(q,(i),(\invc_``q ),(set))


`define UPM_EN_SET_MSFF(q,i,clock,enable,set)                    \
   always_ff @(posedge clock)                                \
      begin                                                  \
            if ( set )         q <= '1 ;                     \
            else if ( enable ) q <=  i ;                     \
      end

`define UPM_EN_SET_MSFF_P(q,i,clock,enable,set)                  \
  logic \invc_``q ;                     /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
  `UPM_EN_SET_MSFF(q,(i),(\invc_``q ),(enable),(set))


`define UPM_EN_RST_MSFF(q,i,clock,enable,rst)                    \
   always_ff @(posedge clock)                                \
      begin                                                  \
            if ( rst )         q <= '0 ;                     \
            else if ( enable ) q <=  i ;                     \
      end

`define EN_RST_MSFF_P(q,i,clock,enable,rst)                  \
  logic \invc_``q ;                     /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
  `UPM_EN_RST_MSFF(q,(i),(\invc_``q ),(enable),(rst))


`define UPM_ASYNC_SET_RST_MSFF(q,i,clock,set,rst)                \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   logic \set_``q ;                     /* lintra s-60034 */ \
   assign \set_``q = (set) ;                                 \
   assign \rst_``q = (rst & ~( \set_``q )) ;                 \
   always_ff @(posedge clock or posedge \set_``q or posedge \rst_``q ) \
      begin                                                  \
         if ( \set_``q )      q <= '1;                       \
         else if ( \rst_``q ) q <= '0;                       \
         else                 q <=  i;                       \
      end

`define UPM_ASYNC_SET_RST_MSFF_SCAN(q,i,clock,set,rst)           \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   logic \set_``q ;                     /* lintra s-60034 */ \
  `UPM_MUX_2TO1(\set_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , set) \
  `UPM_MUX_2TO1(\rst_``q , fscan_rstbypen_iso , ~fscan_byprst_b_iso , rst & ~( \set_``q )) \
   always_ff @(posedge clock or posedge \set_``q or posedge \rst_``q ) \
      begin                                                  \
         if ( \set_``q )      q <= '1;                       \
         else if ( \rst_``q ) q <= '0;                       \
         else                 q <=  i;                       \
      end



`define UPM_ASYNC_SET_RST_MSFF_P(q,i,clock,set,rst)              \
  logic \invc_``q ;                     /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
  `UPM_ASYNC_SET_RST_MSFF(q,(i),(\invc_``q ),(set),(rst))

`define UPM_ASYNC_SET_RST_MSFF_P_SCAN(q,i,clock,set,rst)         \
  logic \invc_scan_``q ;                /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_scan_``q ,(clock))                           \
  `UPM_ASYNC_SET_RST_MSFF_SCAN(q,(i),(\invc_scan_``q ),(set),(rst))


`define UPM_RST_SET_MSFF(q,i,clock,rst,set)                      \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   logic \set_``q ;                     /* lintra s-60034 */ \
   assign \rst_``q = (rst) ;                                 \
   assign \set_``q = (set) ;                                 \
   always_ff @(posedge clock)                                \
      begin                                                  \
         if ( \set_``q )      q <= '1;                       \
         else if ( \rst_``q ) q <= '0;                       \
         else                 q <=  i;                       \
      end

`define UPM_SET_RST_MSFF(q,i,clock,set,rst)                      \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   logic \set_``q ;                     /* lintra s-60034 */ \
   assign \rst_``q = (rst) ;                                 \
   assign \set_``q = (set) ;                                 \
   always_ff @(posedge clock )                               \
      begin                                                  \
         if ( \rst_``q )      q <= '0;                       \
         else if ( \set_``q ) q <= '1;                       \
         else                 q <=  i;                       \
      end

`define UPM_SET_RST_CLK_MSFF(q,i,clock,set,rst)                      \
   logic \rst_``q ;                     /* lintra s-60034 */ \
   logic \set_``q ;                     /* lintra s-60034 */ \
   assign \rst_``q = (rst) ;                                 \
   assign \set_``q = (set) ;                                 \
   always_ff @(posedge clock )                               \
      begin                                                  \
         if ( \rst_``q )      q <= '0;                       \
         else if ( \set_``q ) q <= '1;                       \
         else                 q =  i;                        \
      end

`define UPM_LATCH(q,i,clock)                                     \
   always_latch                                              \
      begin                                                  \
         if (clock) q <= i; /* spyglass disable IfWithoutElse-ML */\
      end


`define UPM_LATCH_P(q,i,clock)                                   \
   logic \invc_``q ;                    /* lintra s-60034 */ \
  `UPM_CLKINV(\invc_``q ,(clock))                                \
  `UPM_LATCH(q,(i),(\invc_``q ))


//`define UPM_RST_LATCH(q,i,clock,rst)                             \
//        upm_dftb_rst_latch #(.WIDTH ($bits(q))) \i_upm_dftb_rst_latch_``q (.q_pin(q), .i_pin(i), .clock_pin(clock), .rst_pin(rst));
//
//`define UPM_RST_LATCH_P(q,i,clock,rst)                           \
//        upm_dftb_rst_latch_p #(.WIDTH ($bits(q))) \i_upm_dftb_rst_latch_p_``q (.q_pin(q), .i_pin(i), .clock_pin(clock), .rst_pin(rst));

//`define UPM_ASYNC_RST_LATCH(q,i,clock,rst)                       \
//        upm_dftb_async_rst_latch #(.WIDTH ($bits(q))) \i_upm_dftb_async_rst_latch_``q (.q_pin(q), .i_pin(i), .clock_pin(clock), .rst_pin(rst));
//
//`define UPM_ASYNC_RST_LATCH_P(q,i,clock,rst)                     \
//        upm_dftb_async_rst_latch_p #(.WIDTH ($bits(q))) \i_upm_dftb_async_rst_latch_p_``q (.q_pin(q), .i_pin(i), .clock_pin(clock), .rst_pin(rst));

//`define UPM_ASYNC_SET_LATCH(q,i,clock,rst)                       \
//        upm_dftb_async_set_latch #(.WIDTH ($bits(q))) \i_upm_dftb_async_set_latch_``q (.q_pin(q), .i_pin(i), .clock_pin(clock), .rst_pin(rst));
//
//`define UPM_ASYNC_SET_LATCH_P(q,i,clock,rst)                     \
//        upm_dftb_async_set_latch_p #(.WIDTH ($bits(q))) \i_upm_dftb_async_set_latch_p_``q (.q_pin(q), .i_pin(i), .clock_pin(clock), .rst_pin(rst));


`define UPM_CLKBF(o,i) \
        upm_dftb_clk_buf #(.WIDTH ($bits(o))) \i_upm_dftb_clk_buf_``o (.clkout(o), .clk(i));

`define UPM_CUTDC(o,i,dummy)\
       upm_cutdc_dfx_db    #(            \
               .WIDTH  ($bits(o) )   \
       )                             \
       \cutdc_``o (                  \
               .cut_out   (o     ),  \
               .src_sig   (i     ),  \
               .act_win   (1'b1  )   \
       );
`define UPM_CUTMCP_DC(o,i,dummy1,dummy2,dummy3,dummy4)\
        upm_cutdc_dfx_db    #(            \
                .WIDTH  ($bits(o) )   \
        )                             \
        \cutdc_``o (                  \
                .cut_out   (o     ),  \
                .src_sig   (i     ),  \
                .act_win   (1'b1  )   \
        );

//`define UPM_CUTMCP(o,i,cycles,clk,arst,simclk)        \
//        cutmcp_mcr_dftb #(                        \
//                .CYCLES(cycles),                  \
//                .WIDTH($bits(o)),                 \
//                .TYPE("setup"),                   \
//                .SVA_ENABLE_INSTANCE(0),          \
//                .ENABLE_X_INJ(0),                 \
//                .CLK_SOURCE("none"),              \
//                .USE_CLK_SOURCE("no"),            \
//                .USE_SIM_CLK(simclk),             \
//                .DISABLE_CUTMCP_MODELING(0),      \
//                .ENABLE_CUTMCP_MODELING(0),       \
//                .DISABLE_CUTMCP_GLITCH_FILTER(1)  \
//        )                                         \
//        \cutmcp_``o (                             \
//                .cut_out(o ),                     \
//                .src_sig(i )                      \
//                `ifdef INTEL_SIMONLY              \
//                   ,                              \
//                   .clk_free(clk),                \
//                   .dest_en(1'b0),                \
//                   .reset(arst),                  \
//                   .disableXes(1'b1)              \
//                `endif                            \
//        );
//
//`define UPM_CUTMCP_MCO(o,i,cycles,clk,arst,simclk)        \
//        cutmcp_mcr_dftb #(                        \
//                .CYCLES(cycles),                  \
//                .WIDTH($bits(o)),                 \
//                .TYPE("setup"),                   \
//                .SVA_ENABLE_INSTANCE(0),          \
//                .ENABLE_X_INJ(0),                 \
//                .CLK_SOURCE("clk"),               \
//                .USE_CLK_SOURCE("yes"),           \
//                .USE_SIM_CLK(simclk),             \
//                .DISABLE_CUTMCP_MODELING(0),      \
//                .ENABLE_CUTMCP_MODELING(0),       \
//                .DISABLE_CUTMCP_GLITCH_FILTER(1)  \
//        )                                         \
//        \cutmcp_``o (                             \
//                .cut_out(o ),                     \
//                .src_sig(i )                      \
//                `ifdef INTEL_SIMONLY              \
//                   ,                              \
//                   .clk_free(clk),                \
//                   .dest_en(1'b0),                \
//                   .reset(arst),                  \
//                   .disableXes(1'b1)              \
//                `endif                            \
//        );

`define UPM_CUTMCP_PD(o,i,cycles,clk,arst)        \
        upm_cutmcp_mcr_pd_dftb #(                        \
                .CYCLES(cycles),                  \
                .WIDTH($bits(o)),                 \
                .TYPE("setup"),                   \
                .SVA_ENABLE_INSTANCE(0),          \
                .ENABLE_X_INJ(0),                 \
                .CLK_SOURCE("none"),              \
                .USE_CLK_SOURCE("no"),            \
                .DISABLE_CUTMCP_MODELING(0),      \
                .ENABLE_CUTMCP_MODELING(0),       \
                .DISABLE_CUTMCP_GLITCH_FILTER(1)  \
        )                                         \
        \cutmcp_``o (                             \
                .cut_out(o ),                     \
                .src_sig(i )                      \
                `ifdef INTEL_SIMONLY              \
                   ,                              \
                   .clk_free(clk),                \
                   .dest_en(1'b0),                \
                   .reset(arst),                  \
                   .disableXes(1'b1)              \
                `endif                            \
        );

//`define UPM_MAKE_RCB_FREE_AND(clko, clki, clken, dummy)                     \
//        upm_dftb_clk_gate_and \upm_dftb_clk_gate_and_``clko (.clkout(clko), .clk(clki), .en(clken));

`define UPM_ASYNC_RST_METAFLOP_2(out, in, clk, reset, dummy1, dummy2)             \
        upm_async_rst_metaflop_2_dfx_db \async_rst_metaflop_2_dfx_db_``out (.q(out), .d(in), .clock(clk), .rst(reset));

//`define UPM_ASYNC_RST_METAFLOP_2_SCAN(out, in, clk, reset, dummy1, dummy2)                 \
//        logic \reset_scan_``out ;                               /* lintra s-60034 */   \
//       `UPM_MUX_2TO1(\reset_scan_``out , fscan_rstbypen_iso , ~fscan_byprst_b_iso , reset) \
//       `UPM_ASYNC_SET_METAFLOP_2(out , in , clk , \reset_scan_``out , 1 , 1)

//`define UPM_ASYNC_SET_METAFLOP_2(out, in, clk, st, dummy1, dummy2)             \
//        async_set_metaflop_2_dfx_db \async_set_metaflop_2_dfx_db_``out (.q(out), .d(in), .clock(clk), .set(st));

//`define UPM_ASYNC_SET_METAFLOP_2_SCAN(out, in, clk, st, dummy1, dummy2)                \
//        logic \set_scan_``out ;                                                    \
//        `UPM_MUX_2TO1(\set_scan_``out , fscan_rstbypen_iso , ~fscan_byprst_b_iso , st) \
//        `UPM_ASYNC_SET_METAFLOP_2(out , in , clk , \set_scan_``out , 1 , 1)

//`define UPM_METAFLOP_2(out, in, clk, dummy1, dummy2)             \
//        metaflop_2_dfx_db \metaflop_2_dfx_db_``out (.q(out), .d(in), .clock(clk));

`define UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(out, in, clk, reset, dummy1, dummy2)             \
        upm_async_rst_metaflop_2_dfx_db #(.SVA_ENABLE_INSTANCE (0)) \async_rst_metaflop_2_dfx_db_``out (.q(out), .d(in), .clock(clk), .rst(reset));

//`define UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT_SCAN(out, in, clk, reset, dummy1, dummy2)       \
//        logic \reset_scan_``out ;                                                      \
//       `UPM_MUX_2TO1(\reset_scan_``out , fscan_rstbypen_iso , ~fscan_byprst_b_iso , reset) \
//       `UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(out , in , clk , \reset_scan_``out , 1 , 1)

//`define UPM_ASYNC_SET_METAFLOP_2_NO_ASSERT(out, in, clk, st, dummy1, dummy2)             \
//        async_set_metaflop_2_dfx_db #(.SVA_ENABLE_INSTANCE (0)) \async_set_metaflop_2_dfx_db_``out (.q(out), .d(in), .clock(clk), .set(st));

//`define UPM_ASYNC_SET_METAFLOP_2_NO_ASSERT_SCAN(out, in, clk, st, dummy1, dummy2)    \
//        logic \set_scan_``out ;                                                   \
//       `UPM_MUX_2TO1(\set_scan_``out , fscan_rstbypen_iso , ~fscan_byprst_b_iso , st) \
//       `UPM_ASYNC_SET_METAFLOP_2_NO_ASSERT(out , in , clk , \set_scan_``out , 1 , 1)

//`define UPM_METAFLOP_2_NO_ASSERT(out, in, clk, dummy1, dummy2)             \
//        metaflop_2_dfx_db #(.SVA_ENABLE_INSTANCE (0)) \metaflop_2_dfx_db_``out (.q(out), .d(in), .clock(clk));

`define UPM_NB_ASSIGN(out, in)                                   \
        always_comb begin                                    \
        `ifdef INTEL_SIMONLY                                 \
             out <= #1 in; /* novas s-60029, s-50523 */      \
        `else                                                \
             out = in;                                       \
        `endif                                               \
        end

//`define UPM_MAKE_RCB_AND_PH1(clko, clki, clken, dummy1, dummy2, dummy3, dummy4)    \
//        upm_dftb_clk_gate_and \upm_dftb_clk_gate_and_``clko (.clkout(clko), .clk(clki), .en(clken));
//
//`define UPM_MAKE_LCB_LOC_PH1(clko, clki, clken, dummy1, dummy2, dummy3)            \
//        upm_dftb_clk_gate_and \upm_dftb_clk_gate_and_``clko (.clkout(clko), .clk(clki), .en(clken));

`define UPM_CLKAND(clko, clki, clken)                                              \
        upm_dftb_clk_and_en \upm_dftb_clk_and_en_``clko (.clkout(clko), .clk(clki), .en(clken));

`define UPM_CLKGATE(clko, clki, clken, clkte)                                             \
        upm_dftb_clk_gate_te \upm_dftb_clk_gate_te_``clko (.clkout(clko), .clk(clki), .en(clken), .te(clkte));

`define UPM_CLKSAND(clko, clock1, clock2)                                              \
        upm_dftb_clk_and \upm_dftb_clk_and_``clko (.clkout(clko), .clk1(clock1), .clk2(clock2));

`define UPM_CLKOR(clko, clock1, clock2)\
        upm_dftb_clk_or \upm_dftb_clk_or_``clko (.clkout(clko), .clk1(clock1), .clk2(clock2));

`define UPM_XOR(o, i1, i2)\
        upm_dftb_xor \upm_dftb_xor_``o (.a(o), .a(i1), .b(i2));

//`define UPM_XOVER_CLK_FAST(iCkFastXPN, iCkGrid, iSyncSig)                   \
//        xover_clk_fast_en_dfx_db                                        \
//        \xover_clk_fast_en_``iCkFastXPN (                               \
//            .CkFastXPN  (iCkFastXPN),                                   \
//            .CkGrid     (iCkGrid),                                      \
//            .SyncSig    (iSyncSig),                                     \
//            .FuncEn     (1'b1)                                          \
//        );
//
//`define UPM_XOVER_ZCLK_SLOW(iCkSlowXPN, iCkGrid, iSyncSig, iEn)                         \
//        xover_zclk_slow_en_dfx_db                                                   \
//        \xover_zclk_slow_en_``iCkSlowXPN (                                          \
//            .CkSlowXPN  (iCkSlowXPN),                                               \
//            .CkGrid     (iCkGrid),                                                  \
//            .SyncSig    (iSyncSig),                                                 \
//            .En         (iEn),                                                      \
//            .FuncEn     (1'b1)                                                      \
//   );
//
//`define UPM_XOVER_CLK_SLOW(iCkFastXPN, iCkGrid, iSyncSig, iEn)              \
//        xover_clk_slow_en_dfx_db                                        \
//        \xover_clk_slow_en_``iCkFastXPN (                               \
//            .CkSlowXPN  (iCkFastXPN),                                   \
//            .CkGrid     (iCkGrid),                                      \
//            .SyncSig    (iSyncSig),                                     \
//            .En         (iEn),                                          \
//            .FuncEn     (1'b1)                                          \
//        );
//
//`define UPM_XOVER_RX(XY_dest, XY_source, rxClk)             \
//        xover_rx_dfx_db    #(                           \
//                .WIDTH  ($bits(XY_dest) )               \
//        )                                               \
//        \xover_rx_``XY_dest (                           \
//                .q      (XY_dest        ),              \
//                .d      (XY_source      ),              \
//                .clk    (rxClk          )               \
//        );
//
//`define UPM_XOVER_TX(XY_dest, XY_source, txClk)             \
//        xover_tx_dfx_db    #(                           \
//                .WIDTH  ($bits(XY_dest) )               \
//        )                                               \
//        \xover_rx_``XY_dest (                           \
//                .q      (XY_dest        ),              \
//                .d      (XY_source      ),              \
//                .clk    (txClk          )               \
//        );
//
//`define UPM_XOVER_RX_ASYNC_RST(XY_dest, XY_source, rxClk, reset)      \
//        xover_rx_async_rst_dfx_db    #(                           \
//                          .WIDTH  ($bits(XY_dest) )               \
//        )                                                         \
//        \xover_rx_``XY_dest (                                     \
//                          .q      (XY_dest        ),              \
//                          .d      (XY_source      ),              \
//                          .clk    (rxClk          ),              \
//                          .rst    (reset          )               \
//        );
//
//`define UPM_XOVER_TX_ASYNC_RST(XY_dest, XY_source, txClk, reset)      \
//        xover_tx_async_rst_dfx_db    #(                           \
//                          .WIDTH  ($bits(XY_dest) )               \
//        )                                                         \
//        \xover_tx_``XY_dest (                                     \
//                          .q      (XY_dest        ),              \
//                          .d      (XY_source      ),              \
//                          .clk    (txClk          ),              \
//                          .rst    (reset          )               \
//        );

//`define UPM_BUF_KEEP_NETS(out,in)                                                       \
//     rls_buf_keep_nets_mod \rtlnetsbuf_``out (.in_pin(in), .out_pin(out)); 

`define UPM_CTECH_BUF(out,in)                                               \
        upm_dftb_buf #(.WIDTH  ($bits(out))) \i_upm_dftb_buf_``out (.o(out), .a(in));

`define UPM_CTECH_BB_BUF(out,in)                                               \
        upm_dftb_buf #(.WIDTH  ($bits(out))) \i_upm_dftb_buf_``out (.o(out), .a(in));

`define UPM_RESET_RISE_IGNORE(out, in, clk, res_length, MCP_uniqueId,dummy)          \
        assign out=in;

//`define UPM_FAST2SLOW_SYNC(q,i,clock,sync,rst)     \
//        tap_fast2slow_sync \fast2slow_sync_``q (       \
//                .SigMnnnH      (i),                \
//                .ClkMH         (clock),            \
//                .SyncMnnnH     (sync),             \
//                .ResetMnnnH    (rst),              \
//                .SigSyncMnnnH  (q)                 \
//         );
//
//`define UPM_FAST2SLOW_SYNC_ASYNC_RST(q,i,clock,sync,rst)    \
//        tap_fast2slow_sync #(                                   \
//                                .ASYNC(1)                   \
//                        )                                   \
//       \fast2slow_sync_``q (                                \
//                SigMnnnH      (i),                          \
//                ClkMH         (clock),                      \
//                SyncMnnnH     (sync),                       \
//                ResetMnnnH    (rst),                        \
//                SigSyncMnnnH  (q)                           \
//         );

`define UPM_CLK_MUX_2TO1(clko, clkin1, clkin2, sel)\
        upm_dftb_clk_mux_2to1 \upm_dftb_clk_mux_2to1_``clko (.clkout(clko), .clk1(clkin1), .clk2(clkin2), .s(sel));
        
`define UPM_MUX_2TO1(out, sel, in1, in2)\
        upm_dftb_mux_2to1 #(.WIDTH ($bits(out))) \i_upm_dftb_mux_2to1_``out (.o(out), .d1(in1), .d2(in2), .s(sel));

//`define UPM_ASYNC_PULSE_SYNC_2(q,i,clock,rst)         \
//        logic \i1_``q ;                           \
//        logic \i2_``q ;                           \
//        logic \i3_``q ;                           \
//        logic \i4_``q ;                           \
//        `UPM_ASYNC_SET_RST_MSFF(\i1_``q , 1'b0,     clock, i, rst) /* lintra s-50529 */\
//        `UPM_ASYNC_SET_RST_MSFF(\i2_``q , \i1_``q , clock, i, rst) /* lintra s-50529 */\
//        \
//        `UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(\i3_``q , \i2_``q , clock, rst,1,1)\
//        `UPM_ASYNC_RST_MSFF(\i4_``q , \i3_``q , clock, rst) /* lintra s-50529 */\
//        \
//        assign q  = \i3_``q & ~\i4_``q ;\

//`define UPM_ASYNC_META_SYNC_2(q,i,clock,rst)       \
//        logic i1_``q;                           \
//        logic i2_``q;                           \
//        `UPM_UPM_ASYNC_SET_RST_MSFF(i1_``q, 1'b0,           clock, i, rst) /* lintra s-50529 */\
//        `UPM_UPM_ASYNC_SET_RST_MSFF(i2_``q, i1_``q, clock, i, rst) /* lintra s-50529 */\
//        \
//        `UPM_ASYNC_RST_METAFLOP_2_NO_ASSERT(q, i2_``q, clock, rst,1,1)\

`define UPM_MUX_16TO1(out, sel, Reg)            \
     always_comb begin                         \
        unique casez(sel)                          \
                 4'b0000       : out = Reg[0];     \
                 4'b0001       : out = Reg[1];     \
                 4'b0010       : out = Reg[2];     \
                 4'b0011       : out = Reg[3];     \
                 4'b0100       : out = Reg[4];     \
                 4'b0101       : out = Reg[5];     \
                 4'b0110       : out = Reg[6];     \
                 4'b0111       : out = Reg[7];     \
                 4'b1000       : out = Reg[8];     \
                 4'b1001       : out = Reg[9];     \
                 4'b1010       : out = Reg[10];     \
                 4'b1011       : out = Reg[11];     \
                 4'b1100       : out = Reg[12];     \
                 4'b1101       : out = Reg[13];     \
                 4'b1110       : out = Reg[14];     \
                 4'b1111       : out = Reg[15];     \
                 default       : out = '0;         \
        endcase;                                   \
     end

//LCP macros     
//`define UPM_FEV_RPP(name, fev_rpp_attr)                                                                             \
// always_comb begin : \fev_rpp_attr_block_``fev_rpp_attr``_``name                                                \
//    (* fev_rpp = "fev_rpp_attr``" *) logic [$bits( name ) - 1 : 0] \attr_sig_fev_rpp_``fev_rpp_attr``_``name ;  \
//       (* vcc_assign *)                                                                                         \
// `ifdef FEV                                                                                                     \
//    {>>{\attr_sig_fev_rpp_``fev_rpp_attr``_``name }} = {>>{name}} ;     /* lintra, s-70036 */                   \
// `else                                                                                                          \
//    \attr_sig_fev_rpp_``fev_rpp_attr``_``name = '{default:'1} ;                                                 \
// `endif
//
////`define SPY_CLK_MCR(clk)        \
////        spy_clocks_mcr_dftb  \i_dftb_spy_slk_mcr_``clk (.ipclk1(clk));
//
//`define ASSERT_KNOWN_DRIVEN(name, sig, rst)                    \
//   name: assert final ((|(rst)) | (!($isunknown({>>{sig}}))))

                           
