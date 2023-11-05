// ##############################################################################
// ## Intel Top Secret                                                         ##
// ##############################################################################
// ## Copyright (C) Intel Corporation.                                         ##
// ##                                                                          ##
// ## This is the property of Intel Corporation and may only be utilized       ##
// ## pursuant to a written Restricted Use Nondisclosure Agreement and any     ##
// ## applicable licenses with Intel Corporation.  It may not be used,         ##
// ## reproduced, or disclosed to others except in accordance with the terms   ##
// ## and conditions of such agreement.                                        ##
// ##                                                                          ##
// ## All products, processes, computer systems, dates, and figures            ##
// ## specified are preliminary based on current expectations, and are         ##
// ## subject to change without notice.                                        ##
// ##############################################################################
// ## Text_Tag % __Placeholder neutral1


`ifdef INTCNOPWR
      //do nothing
`else
      `define POWER_AWARE_MODE
`endif

`ifdef functional
      `define FUNCTIONAL
`endif



`timescale 1ps/1ps


`ifdef FUNCTIONAL
  `define glsdelay 1
  `ifdef no_unit_delay
          `define cell_delay_value
          `define seq_delay_value
          `define clkcell_delay_value
          `define clkseq_delay_value
  `elsif seq_unit_delay
          `define cell_delay_value
          `define seq_delay_value #1
          `define clkcell_delay_value
          `define clkseq_delay_value #1
  `elsif parameterized_delay
          `define cell_delay_value #(glsdelay)
          `define seq_delay_value #(glsdelay)
          `define clkcell_delay_value #(glsdelay)
          `define clkseq_delay_value #(glsdelay)
  `else   
          `define cell_delay_value #1
          `define seq_delay_value #1
          `define clkcell_delay_value #1
          `define clkseq_delay_value #1
  `endif
  `ifdef clk_no_delay
          `define clkcell_delay_value
          `define clkseq_delay_value
  `endif
`endif

  
`ifdef FUNCTIONAL
     `ifndef ddtih0ad_delay
        `define ddtih0ad_delay `cell_delay_value
     `endif
     `ifndef ddtil0ad_delay
        `define ddtil0ad_delay `cell_delay_value
     `endif
     `ifndef qgbao4ad_delay
        `define qgbao4ad_delay `cell_delay_value
     `endif
     `ifndef qgbbf1ad_delay
        `define qgbbf1ad_delay `cell_delay_value
     `endif
     `ifndef qgbbf4ad_delay
        `define qgbbf4ad_delay `cell_delay_value
     `endif
     `ifndef qgbbf6ad_delay
        `define qgbbf6ad_delay `cell_delay_value
     `endif
     `ifndef qgbcb1ad_delay
        `define qgbcb1ad_delay `clkcell_delay_value
     `endif
     `ifndef qgbci1ad_delay
        `define qgbci1ad_delay `clkcell_delay_value
     `endif
     `ifndef qgbfa4ad_delay
        `define qgbfa4ad_delay `seq_delay_value
     `endif
     `ifndef qgbin1ad_delay
        `define qgbin1ad_delay `cell_delay_value
     `endif
     `ifndef qgbla4ad_delay
        `define qgbla4ad_delay `seq_delay_value
     `endif
     `ifndef qgbmx2ad_delay
        `define qgbmx2ad_delay `cell_delay_value
     `endif
     `ifndef qgbna2ad_delay
        `define qgbna2ad_delay `cell_delay_value
     `endif
     `ifndef qgbna3ad_delay
        `define qgbna3ad_delay `cell_delay_value
     `endif
     `ifndef qgbno2ad_delay
        `define qgbno2ad_delay `cell_delay_value
     `endif
     `ifndef qgbno3ad_delay
        `define qgbno3ad_delay `cell_delay_value
     `endif
     `ifndef qgboa4ad_delay
        `define qgboa4ad_delay `cell_delay_value
     `endif
     `ifndef qgbth1ad_delay
        `define qgbth1ad_delay `cell_delay_value
     `endif
     `ifndef qgbtl1ad_delay
        `define qgbtl1ad_delay `cell_delay_value
     `endif
     `ifndef qgbxc2ad_delay
        `define qgbxc2ad_delay `cell_delay_value
     `endif
     `ifndef qolp01ad_delay
        `define qolp01ad_delay `cell_delay_value
     `endif
     `ifndef qolp10ad_delay
        `define qolp10ad_delay `cell_delay_value
     `endif
     `ifndef qsfbf1ad_delay
        `define qsfbf1ad_delay `cell_delay_value
     `endif
     `ifndef qsfca4ad_delay
        `define qsfca4ad_delay `cell_delay_value
     `endif
     `ifndef qsfco4ad_delay
        `define qsfco4ad_delay `cell_delay_value
     `endif
     `ifndef qsffa4md_delay
        `define qsffa4md_delay `seq_delay_value
     `endif
     `ifndef qsfin1ad_delay
        `define qsfin1ad_delay `cell_delay_value
     `endif
     `ifndef qsfla3md_delay
        `define qsfla3md_delay `seq_delay_value
     `endif
     `ifndef qsfna3ad_delay
        `define qsfna3ad_delay `cell_delay_value
     `endif
     `ifndef qsfno3ad_delay
        `define qsfno3ad_delay `cell_delay_value
     `endif
     `ifndef qsft00ad_delay
        `define qsft00ad_delay `cell_delay_value
     `endif
     `ifndef qsft01ad_delay
        `define qsft01ad_delay `cell_delay_value
     `endif
     `ifndef qsft10ad_delay
        `define qsft10ad_delay `cell_delay_value
     `endif
     `ifndef qsft11ad_delay
        `define qsft11ad_delay `cell_delay_value
     `endif
     `ifndef qsftihad_delay
        `define qsftihad_delay `cell_delay_value
     `endif
     `ifndef qsftilad_delay
        `define qsftilad_delay `cell_delay_value
     `endif
     `ifndef tihi00ad_delay
        `define tihi00ad_delay `cell_delay_value
     `endif
     `ifndef tilo00ad_delay
        `define tilo00ad_delay `cell_delay_value
     `endif
  `endif






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ddtih0ad_func( o `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc_in || vssx) ? 1'bx : 1'b1;
`else
   assign o = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ddtil0ad_func( o `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc_in || vssx) ? 1'bx : 1'b0;
`else
   assign o = 1'b0;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qbnbf2bd_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qbnna2bd_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qbnno2bd_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_0( o1, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, c, d, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, d, b vcc, vssx: o1
    0  0  ?  ?  1  0: 1;
    0  ?  0  ?  1  0: 1;
    ?  0  ?  0  1  0: 1;
    ?  ?  0  0  1  0: 1;
    1  ?  ?  1  1  0: 0;
    ?  1  1  ?  1  0: 0;
  `else
  //a, c, d, b: o1
    0  0  ?  ?: 1;
    0  ?  0  ?: 1;
    ?  0  ?  0: 1;
    ?  ?  0  0: 1;
    1  ?  ?  1: 0;
    ?  1  1  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_0 inst1( o1, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_0 inst1( o1, a, c, d, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc, vssx: o
    1  1  0: 1;
    0  1  0: 0;
  `else
  //a: o
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbbf4ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbbf6ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2( clkout, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc, vssx: clkout
    0  1  0: 1;
    1  1  0: 0;
  `else
  //clk: clkout
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbdp1ad_func( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input dpd1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_LN_IQ_FF_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
   output Q;
   reg Q;
   input C, P, CK, D, N; 
   `ifdef POWER_AWARE_MODE
   input vcc, vssx;
   `endif
   table 
  `ifdef POWER_AWARE_MODE
   //C  P  CK D  PW GN N  :  Q  :  Q 
     0  0  n  ?  1  0  ?  :  ?  :  -;
     ?  0  n  ?  1  0  ?  :  0  :  0;
     0  ?  n  ?  1  0  ?  :  1  :  1;
     ?  0  r  0  1  0  ?  :  ?  :  0;
     1  ?  ?  ?  1  0  ?  :  ?  :  0;
     0  ?  r  1  1  0  ?  :  ?  :  1;
     0  1  ?  ?  1  0  ?  :  ?  :  1;
     0  0  ?  *  1  0  ?  :  ?  :  -;
     0  ?  ?  *  1  0  ?  :  1  :  1;
     ?  0  ?  *  1  0  ?  :  0  :  0;
     0  *  ?  ?  1  0  ?  :  1  :  1;
     *  0  ?  ?  1  0  ?  :  0  :  0;
     ?  0  *  0  1  0  ?  :  0  :  0;
     0  ?  *  1  1  0  ?  :  1  :  1;
     ?  ?  ?  ?  1  0  *  :  ?  :  x;
  `else
   //C  P  CK D  N  :  Q  :  Q 
     0  0  n  ?  ?  :  ?  :  -;
     ?  0  n  ?  ?  :  0  :  0;
     0  ?  n  ?  ?  :  1  :  1;
     ?  0  r  0  ?  :  ?  :  0;
     1  ?  ?  ?  ?  :  ?  :  0;
     0  ?  r  1  ?  :  ?  :  1;
     0  1  ?  ?  ?  :  ?  :  1;
     0  0  ?  *  ?  :  ?  :  -;
     0  ?  ?  *  ?  :  1  :  1;
     ?  0  ?  *  ?  :  0  :  0;
     0  *  ?  ?  ?  :  1  :  1;
     *  0  ?  ?  ?  :  0  :  0;
     ?  0  *  0  ?  :  0  :  0;
     0  ?  *  1  ?  :  1  :  1;
     ?  ?  ?  ?  *  :  ?  :  x;
  `endif

endtable
endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_func( clk, d, o, rb, s, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, s, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst2( MGM_P0, s, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst3( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst4( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_LN_IQ_FF_UDP inst5( IQ, MGM_C0, MGM_P0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst6( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst2( MGM_P0, s );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst3( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst4( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_LN_IQ_FF_UDP inst5( IQ, MGM_C0, MGM_P0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst6( o, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst1( o1, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_N_L_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
   output Q;
   reg Q;
   input C, P, CK, D, N; 
   `ifdef POWER_AWARE_MODE
   input vcc, vssx;
   `endif
   table 
  `ifdef POWER_AWARE_MODE
   //C  P  CK D  PW GN N  :  Q  :  Q 
     0  0  0  ?  1  0  ?  :  ?  :  -;
     ?  0  1  0  1  0  ?  :  ?  :  0;
     ?  0  ?  0  1  0  ?  :  0  :  0;
     ?  0  0  ?  1  0  ?  :  0  :  0;
     1  ?  ?  ?  1  0  ?  :  ?  :  0;
     0  ?  1  1  1  0  ?  :  ?  :  1;
     0  ?  ?  1  1  0  ?  :  1  :  1;
     0  ?  0  ?  1  0  ?  :  1  :  1;
     0  1  ?  ?  1  0  ?  :  ?  :  1;
     ?  ?  ?  ?  1  0  *  :  ?  :  x;
  `else
   //C  P  CK D  N  :  Q  :  Q 
     0  0  0  ?  ?  :  ?  :  -;
     ?  0  1  0  ?  :  ?  :  0;
     ?  0  ?  0  ?  :  0  :  0;
     ?  0  0  ?  ?  :  0  :  0;
     1  ?  ?  ?  ?  :  ?  :  0;
     0  ?  1  1  ?  :  ?  :  1;
     0  ?  ?  1  ?  :  1  :  1;
     0  ?  0  ?  ?  :  1  :  1;
     0  1  ?  ?  ?  :  ?  :  1;
     ?  ?  ?  ?  *  :  ?  :  x;
  `endif

endtable
endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_func( clk, d, o, rb, s, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, s, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst2( MGM_P0, s, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst3( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst4( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_N_L_IQ_LATCH_UDP inst5( IQ, MGM_C0, MGM_P0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst6( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst2( MGM_P0, s );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst3( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst4( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_N_L_IQ_LATCH_UDP inst5( IQ, MGM_C0, MGM_P0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst6( o, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_3( o, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, sa;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, sa vcc, vssx: o
    1  1  ?  1  0: 1;
    1  ?  1  1  0: 1;
    ?  1  0  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  1  1  0: 0;
    ?  0  0  1  0: 0;
  `else
  //a, b, sa: o
    1  1  ?: 1;
    1  ?  1: 1;
    ?  1  0: 1;
    0  0  ?: 0;
    0  ?  1: 0;
    ?  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_3 inst1( o, a, b, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_3 inst1( o, a, b, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_4( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: o1
    0  ?  1  0: 1;
    ?  0  1  0: 1;
    1  1  1  0: 0;
  `else
  //a, b: o1
    0  ?: 1;
    ?  0: 1;
    1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_4 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_4 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_5( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  ?  ?  1  0: 1;
    ?  0  ?  1  0: 1;
    ?  ?  0  1  0: 1;
    1  1  1  1  0: 0;
  `else
  //a, b, c: o1
    0  ?  ?: 1;
    ?  0  ?: 1;
    ?  ?  0: 1;
    1  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_5 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_5 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_6( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: o1
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //a, b: o1
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_6 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_6 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_7( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  0  0  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  ?  1  0: 0;
    ?  ?  1  1  0: 0;
  `else
  //a, b, c: o1
    0  0  0: 1;
    1  ?  ?: 0;
    ?  1  ?: 0;
    ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_7 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_7 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_8( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  0  ?  ?  1  0: 1;
    ?  ?  0  0  1  0: 1;
    1  ?  1  ?  1  0: 0;
    1  ?  ?  1  1  0: 0;
    ?  1  1  ?  1  0: 0;
    ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  0  ?  ?: 1;
    ?  ?  0  0: 1;
    1  ?  1  ?: 0;
    1  ?  ?  1: 0;
    ?  1  1  ?: 0;
    ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_8 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_8 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbth1ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b1;
`else
   assign o = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbtl1ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b0;
`else
   assign o = 1'b0;
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_9( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: out0
    1  0  1  0: 1;
    0  1  1  0: 1;
    1  1  1  0: 0;
    0  0  1  0: 0;
  `else
  //a, b: out0
    1  0: 1;
    0  1: 1;
    1  1: 0;
    0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_9 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_9 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qolp01ad_func( o0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o0 = (!vcc || vssx) ? 1'bx : 1'b0;
`else
   assign o0 = 1'b0;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qolp10ad_func( o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o1 = (!vcc || vssx) ? 1'bx : 1'b1;
`else
   assign o1 = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfca4ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_0 inst1( o1, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_0 inst1( o1, a, c, d, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfco4ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_8 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_8 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfdp1ad_func( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input dpd1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_10( MGM_D0, IQ, d, den `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input IQ, d, den;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ, d, den vcc, vssx: MGM_D0
    1  1  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  1  1  0: 0;
  `else
  //IQ, d, den: MGM_D0
    1  1  ?: 1;
    1  ?  0: 1;
    ?  1  1: 1;
    0  0  ?: 0;
    0  ?  0: 0;
    ?  0  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_N_IQ_FF_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
   output Q;
   reg Q;
   input C, P, CK, D, N; 
   `ifdef POWER_AWARE_MODE
   input vcc, vssx;
   `endif
   table 
  `ifdef POWER_AWARE_MODE
   //C  P  CK D  PW GN N  :  Q  :  Q 
     0  0  n  ?  1  0  ?  :  ?  :  -;
     ?  0  n  ?  1  0  ?  :  0  :  0;
     0  ?  n  ?  1  0  ?  :  1  :  1;
     ?  0  r  0  1  0  ?  :  ?  :  0;
     1  0  ?  ?  1  0  ?  :  ?  :  0;
     0  ?  r  1  1  0  ?  :  ?  :  1;
     0  1  ?  ?  1  0  ?  :  ?  :  1;
     0  0  ?  *  1  0  ?  :  ?  :  -;
     0  ?  ?  *  1  0  ?  :  1  :  1;
     ?  0  ?  *  1  0  ?  :  0  :  0;
     0  *  ?  ?  1  0  ?  :  1  :  1;
     *  0  ?  ?  1  0  ?  :  0  :  0;
     ?  0  *  0  1  0  ?  :  0  :  0;
     0  ?  *  1  1  0  ?  :  1  :  1;
     ?  ?  ?  ?  1  0  *  :  ?  :  x;
  `else
   //C  P  CK D  N  :  Q  :  Q 
     0  0  n  ?  ?  :  ?  :  -;
     ?  0  n  ?  ?  :  0  :  0;
     0  ?  n  ?  ?  :  1  :  1;
     ?  0  r  0  ?  :  ?  :  0;
     1  0  ?  ?  ?  :  ?  :  0;
     0  ?  r  1  ?  :  ?  :  1;
     0  1  ?  ?  ?  :  ?  :  1;
     0  0  ?  *  ?  :  ?  :  -;
     0  ?  ?  *  ?  :  1  :  1;
     ?  0  ?  *  ?  :  0  :  0;
     0  *  ?  ?  ?  :  1  :  1;
     *  0  ?  ?  ?  :  0  :  0;
     ?  0  *  0  ?  :  0  :  0;
     0  ?  *  1  ?  :  1  :  1;
     ?  ?  ?  ?  *  :  ?  :  x;
  `endif

endtable
endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_func( clk, d, den, o, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, den, rb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst2( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_10 inst3( MGM_D0, IQ, d, den, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_N_IQ_FF_UDP inst4( IQ, MGM_C0, 1'b0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst5( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst2( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_10 inst3( MGM_D0, IQ, d, den );
   INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_N_IQ_FF_UDP inst4( IQ, MGM_C0, 1'b0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst5( o, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst1( o1, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
   output Q;
   reg Q;
   input C, P, CK, D, N; 
   `ifdef POWER_AWARE_MODE
   input vcc, vssx;
   `endif
   table 
  `ifdef POWER_AWARE_MODE
   //C  P  CK D  PW GN N  :  Q  :  Q 
     0  0  0  ?  1  0  ?  :  ?  :  -;
     ?  0  1  0  1  0  ?  :  ?  :  0;
     ?  0  ?  0  1  0  ?  :  0  :  0;
     ?  0  0  ?  1  0  ?  :  0  :  0;
     1  0  ?  ?  1  0  ?  :  ?  :  0;
     0  ?  1  1  1  0  ?  :  ?  :  1;
     0  ?  ?  1  1  0  ?  :  1  :  1;
     0  ?  0  ?  1  0  ?  :  1  :  1;
     0  1  ?  ?  1  0  ?  :  ?  :  1;
     ?  ?  ?  ?  1  0  *  :  ?  :  x;
  `else
   //C  P  CK D  N  :  Q  :  Q 
     0  0  0  ?  ?  :  ?  :  -;
     ?  0  1  0  ?  :  ?  :  0;
     ?  0  ?  0  ?  :  0  :  0;
     ?  0  0  ?  ?  :  0  :  0;
     1  0  ?  ?  ?  :  ?  :  0;
     0  ?  1  1  ?  :  ?  :  1;
     0  ?  ?  1  ?  :  1  :  1;
     0  ?  0  ?  ?  :  1  :  1;
     0  1  ?  ?  ?  :  ?  :  1;
     ?  ?  ?  ?  *  :  ?  :  x;
  `endif

endtable
endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_func( clk, d, o, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst2( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst3( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_N_IQ_LATCH_UDP inst4( IQ, MGM_C0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst5( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_2 inst2( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst3( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_N_IQ_LATCH_UDP inst4( IQ, MGM_C0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_1 inst5( o, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfna3ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_5 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_5 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfno3ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_7 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_7 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsft00ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b0;
`else
   assign o = 1'b0;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsft01ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b1;
`else
   assign o = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsft10ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b1;
`else
   assign o = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsft11ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b0;
`else
   assign o = 1'b0;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsftihad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b1;
`else
   assign o = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsftilad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b0;
`else
   assign o = 1'b0;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsfvssad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnca4ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnco4ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsndp1ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnfa4md_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnla3md_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnna3ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnno3ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_qsnvssad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_tihi00ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b1;
`else
   assign o = 1'b1;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_tilo00ad_func( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   assign o = (!vcc || vssx) ? 1'bx : 1'b0;
`else
   assign o = 1'b0;
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ydp122ad_func( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input dpd1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ydp122bd_func( dpd1 `ifdef POWER_AWARE_MODE , vssx `endif );
   input dpd1;
`ifdef POWER_AWARE_MODE
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ydp122ud_func( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input dpd1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ydp122vd_func( dpd1 `ifdef POWER_AWARE_MODE , vssx `endif );
   input dpd1;
`ifdef POWER_AWARE_MODE
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_ysf022cd_func( a, b `ifdef POWER_AWARE_MODE , vssx `endif );
   inout a, b;
`ifdef POWER_AWARE_MODE
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
  assign a = b;
  assign b = a;
`else
  assign a = b;
  assign b = a;
`endif
endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zdp022ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zdp022ud_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zvcc00ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_spcl_zvss00ad_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 




`celldefine 


module i0sddtih0ad1d02x5( o `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );

// 
// Tie high cell
// 
// 
// assign `ddtih0ad_delay o =  1;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "backup_power" *) inout vcc_in;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ddtih0ad_func i0sddtih0ad1d02x5_behav_inst(.o(o_tmp),.vcc_in(vcc_in),.vssx(vssx));
      assign `ddtih0ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ddtih0ad_func i0sddtih0ad1d02x5_behav_inst(.o(o_tmp));
      assign `ddtih0ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ddtih0ad_func i0sddtih0ad1d02x5_inst(.o(o),.vcc_in(vcc_in),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ddtih0ad_func i0sddtih0ad1d02x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sddtil0ad1d02x5( o `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );

// 
// Tie low cell
// 
// 
// assign `ddtil0ad_delay o =  0;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "backup_power" *) inout vcc_in;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ddtil0ad_func i0sddtil0ad1d02x5_behav_inst(.o(o_tmp),.vcc_in(vcc_in),.vssx(vssx));
      assign `ddtil0ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ddtil0ad_func i0sddtil0ad1d02x5_behav_inst(.o(o_tmp));
      assign `ddtil0ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ddtil0ad_func i0sddtil0ad1d02x5_inst(.o(o),.vcc_in(vcc_in),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ddtil0ad_func i0sddtil0ad1d02x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqbnbf2bd1d30x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional buffer spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qbnbf2bd_func i0sqbnbf2bd1d30x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qbnbf2bd_func i0sqbnbf2bd1d30x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qbnbf2bd_func i0sqbnbf2bd1d30x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qbnbf2bd_func i0sqbnbf2bd1d30x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqbnna2bd1d20x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional nand2 spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qbnna2bd_func i0sqbnna2bd1d20x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qbnna2bd_func i0sqbnna2bd1d20x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qbnna2bd_func i0sqbnna2bd1d20x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qbnna2bd_func i0sqbnna2bd1d20x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqbnno2bd1d20x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional spare nor2 cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qbnno2bd_func i0sqbnno2bd1d20x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qbnno2bd_func i0sqbnno2bd1d20x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qbnno2bd_func i0sqbnno2bd1d20x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qbnno2bd_func i0sqbnno2bd1d20x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbao4ad1n03x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus AOI
// 
// 
// assign `qgbao4ad_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_func i0sqgbao4ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbao4ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_func i0sqgbao4ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `qgbao4ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_func i0sqgbao4ad1n03x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbao4ad_func i0sqgbao4ad1n03x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1d60x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1d60x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1d60x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1d60x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1d60x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1n05x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n05x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n05x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n05x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n05x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1n10x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n10x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n10x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n10x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n10x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1n15x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n15x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n15x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n15x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n15x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1n30x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n30x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n30x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n30x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n30x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1n45x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n45x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n45x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n45x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n45x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbar1ad1n60x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// BAR Filler
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n60x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n60x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n60x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbar1ad_func i0sqgbar1ad1n60x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbbf1ad1n03x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Buffer
// 
// 
// buf `qgbbf1ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n03x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbbf1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n03x5_behav_inst(.a(a),.o(o_tmp));
      assign `qgbbf1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n03x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n03x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbbf1ad1n09x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Buffer
// 
// 
// buf `qgbbf1ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n09x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbbf1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n09x5_behav_inst(.a(a),.o(o_tmp));
      assign `qgbbf1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n09x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n09x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbbf1ad1n18x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Buffer
// 
// 
// buf `qgbbf1ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n18x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbbf1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n18x5_behav_inst(.a(a),.o(o_tmp));
      assign `qgbbf1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n18x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf1ad_func i0sqgbbf1ad1n18x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbbf4ad1n03x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Buffer
// 
// 
// buf `qgbbf4ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf4ad_func i0sqgbbf4ad1n03x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbbf4ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf4ad_func i0sqgbbf4ad1n03x5_behav_inst(.a(a),.o(o_tmp));
      assign `qgbbf4ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf4ad_func i0sqgbbf4ad1n03x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf4ad_func i0sqgbbf4ad1n03x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbbf6ad1n03x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Buffer
// 
// 
// buf `qgbbf6ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf6ad_func i0sqgbbf6ad1n03x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbbf6ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf6ad_func i0sqgbbf6ad1n03x5_behav_inst(.a(a),.o(o_tmp));
      assign `qgbbf6ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf6ad_func i0sqgbbf6ad1n03x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbbf6ad_func i0sqgbbf6ad1n03x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbcb1ad1n03x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Clock Buffer
// 
// 
// buf `qgbcb1ad_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbcb1ad_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `qgbcb1ad_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n03x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n03x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbcb1ad1n09x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Clock Buffer
// 
// 
// buf `qgbcb1ad_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbcb1ad_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `qgbcb1ad_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n09x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n09x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbcb1ad1n18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Clock Buffer
// 
// 
// buf `qgbcb1ad_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbcb1ad_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `qgbcb1ad_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n18x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbcb1ad_func i0sqgbcb1ad1n18x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbci1ad1n03x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Clock Inverter
// 
// 
// assign `qgbci1ad_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbci1ad_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `qgbci1ad_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n03x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n03x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbci1ad1n12x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Clock Inverter
// 
// 
// assign `qgbci1ad_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbci1ad_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `qgbci1ad_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n12x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n12x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbci1ad1n18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Clock Inverter
// 
// 
// assign `qgbci1ad_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbci1ad_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `qgbci1ad_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n18x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbci1ad_func i0sqgbci1ad1n18x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdcpad1n05x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Gate Array Bonus Decap
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n05x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n05x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n05x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n05x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdcpad1n10x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Gate Array Bonus Decap
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n10x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n10x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n10x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n10x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdcpad1n15x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Gate Array Bonus Decap
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n15x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n15x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n15x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n15x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdcpad1n30x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Gate Array Bonus Decap
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n30x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n30x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n30x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n30x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdcpad1n45x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Gate Array Bonus Decap
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n45x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n45x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n45x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n45x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdcpad1n60x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Gate Array Bonus Decap
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n60x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n60x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n60x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdcpad_func i0sqgbdcpad1n60x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbdp1ad1n00x5( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus drain protection
// 
// 
// 

   input dpd1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdp1ad_func i0sqgbdp1ad1n00x5_behav_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdp1ad_func i0sqgbdp1ad1n00x5_behav_inst(.dpd1(dpd1));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbdp1ad_func i0sqgbdp1ad1n00x5_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbdp1ad_func i0sqgbdp1ad1n00x5_inst(.dpd1(dpd1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbfa4ad1d03x5( clk, d, o, rb, s `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus async non-scan FF
// 
// 
// wire xor_rb_s = ~rb ^ s ;
// 
// always @ (posedge clk or posedge s or negedge rb or posedge xor_rb_s)
// begin
// if (xor_rb_s)
// begin
// if (s)
// begin
// IQ <= 1'b1 ;
// end
// else if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// end
// else if (s)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else
// begin
// IQ <= 1'b1 ;
// end
// end
// else if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else
// begin
// IQ <= d ;
// end
// end
// 
// assign `qgbfa4ad_delay o =  IQ;
// 

   input clk, d, rb, s;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire o_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(o_random_init)
         if((o_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
      `else
         assign o = o_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_func i0sqgbfa4ad1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qgbfa4ad_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_func i0sqgbfa4ad1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0));
      assign `qgbfa4ad_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   wire s_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_func i0sqgbfa4ad1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbfa4ad_func i0sqgbfa4ad1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G11(MGM_W6,d_delay);
   and MGM_G12(MGM_W7,rb_delay,MGM_W6);
   not MGM_G13(MGM_W8,s_delay);
   and MGM_G14(ENABLE_NOT_d_AND_rb_AND_NOT_s,MGM_W8,MGM_W7);
   and MGM_G15(MGM_W9,rb_delay,d_delay);
   not MGM_G16(MGM_W10,s_delay);
   and MGM_G17(ENABLE_d_AND_rb_AND_NOT_s,MGM_W10,MGM_W9);
   not MGM_G18(MGM_W11,s_delay);
   and MGM_G19(ENABLE_rb_AND_NOT_s,MGM_W11,rb_delay);
   not MGM_G20(ENABLE_NOT_s,s_delay);
   buf MGM_G21(ENABLE_rb,rb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      ifnone
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      negedge d &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      posedge d &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      
      // setuphold d- clk-LH
      
      // recrem rb-clk-posedge
      $recrem(posedge rb &&& (ENABLE_NOT_s == 1'b1),
      posedge clk &&& (ENABLE_NOT_s == 1'b1),
      0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      // recrem rb-clk-posedge
      $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      // recrem s-clk-posedge
      $recrem(negedge s &&& (ENABLE_rb == 1'b1),
      posedge clk &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,s_delay,clk_delay);
      
      // recrem s-clk-posedge
      $recrem(negedge s,posedge clk,0.0,0.0,notifier,,,s_delay,clk_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbin1ad1n03x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Inverter
// 
// 
// assign `qgbin1ad_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n03x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbin1ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n03x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `qgbin1ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n03x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n03x5_inst(.a(a),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbin1ad1n12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Inverter
// 
// 
// assign `qgbin1ad_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbin1ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `qgbin1ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n12x5_inst(.a(a),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbin1ad1n18x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus Inverter
// 
// 
// assign `qgbin1ad_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n18x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbin1ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n18x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `qgbin1ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n18x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbin1ad_func i0sqgbin1ad1n18x5_inst(.a(a),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbla4ad1d03x5( clk, d, o, rb, s `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus async latch
// 
// 
// always @ (clk or d or rb or s)
// begin
// if ((!rb) && (s))
// begin
// IQ <= 1'b0 ;
// end
// else if (s)
// begin
// IQ <= 1'b1 ;
// end
// else if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else if (clk)
// begin
// IQ <= d;
// end
// end
// 
// assign `qgbla4ad_delay o =  IQ;
// 

   input clk, d, rb, s;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire o_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(o_random_init)
         if((o_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
      `else
         assign o = o_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_func i0sqgbla4ad1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qgbla4ad_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_func i0sqgbla4ad1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0));
      assign `qgbla4ad_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   wire s_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_func i0sqgbla4ad1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbla4ad_func i0sqgbla4ad1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G11(MGM_W6,d_delay);
   and MGM_G12(MGM_W7,rb_delay,MGM_W6);
   not MGM_G13(MGM_W8,s_delay);
   and MGM_G14(ENABLE_NOT_d_AND_rb_AND_NOT_s,MGM_W8,MGM_W7);
   and MGM_G15(MGM_W9,rb_delay,d_delay);
   not MGM_G16(MGM_W10,s_delay);
   and MGM_G17(ENABLE_d_AND_rb_AND_NOT_s,MGM_W10,MGM_W9);
   not MGM_G18(MGM_W11,s_delay);
   and MGM_G19(ENABLE_rb_AND_NOT_s,MGM_W11,rb_delay);
   not MGM_G20(ENABLE_NOT_s,s_delay);
   buf MGM_G21(ENABLE_rb,rb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(clk==1'b1 && rb==1'b1 && s==1'b0)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(clk==1'b1 && rb==1'b1 && s==1'b0)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b0)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && rb==1'b1)
      // seq arc s --> o
      (negedge s => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && rb==1'b1)
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      ifnone
      // seq arc s --> o
      (negedge s => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc s --> o
      (posedge s => (o +: 1'b1))  = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      negedge d &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      posedge d &&& (ENABLE_rb_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      
      // setuphold d- clk-HL
      
      // recrem rb-clk-negedge
      $recrem(posedge rb &&& (ENABLE_NOT_s == 1'b1),
      negedge clk &&& (ENABLE_NOT_s == 1'b1),
      0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      // recrem rb-clk-negedge
      $recrem(posedge rb,negedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      // recrem s-clk-negedge
      $recrem(negedge s &&& (ENABLE_rb == 1'b1),
      negedge clk &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,s_delay,clk_delay);
      
      // recrem s-clk-negedge
      $recrem(negedge s,negedge clk,0.0,0.0,notifier,,,s_delay,clk_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbmx2ad1n03x5( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// BAR 2 input MUX
// 
// 
// assign `qgbmx2ad_delay o =  sa ? a : b;
// 

   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n03x5_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `qgbmx2ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n03x5_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa));
      assign `qgbmx2ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n03x5_inst(.a(a),.b(b),.o(o),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n03x5_inst(.a(a),.b(b),.o(o),.sa(sa));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && sa==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && sa==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (o:sa)
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (o:sa)
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbmx2ad1n09x5( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// BAR 2 input MUX
// 
// 
// assign `qgbmx2ad_delay o =  sa ? a : b;
// 

   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n09x5_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `qgbmx2ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n09x5_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa));
      assign `qgbmx2ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n09x5_inst(.a(a),.b(b),.o(o),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbmx2ad_func i0sqgbmx2ad1n09x5_inst(.a(a),.b(b),.o(o),.sa(sa));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && sa==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && sa==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (o:sa)
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (o:sa)
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbna2ad1n03x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus 2-input nand
// 
// 
// assign `qgbna2ad_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n03x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbna2ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n03x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `qgbna2ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n03x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n03x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbna2ad1n06x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus 2-input nand
// 
// 
// assign `qgbna2ad_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbna2ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `qgbna2ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n06x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbna2ad_func i0sqgbna2ad1n06x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbna3ad1n03x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus 3-input nand
// 
// 
// assign `qgbna3ad_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_func i0sqgbna3ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbna3ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_func i0sqgbna3ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `qgbna3ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_func i0sqgbna3ad1n03x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbna3ad_func i0sqgbna3ad1n03x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbno2ad1n03x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus 2-input nor
// 
// 
// assign `qgbno2ad_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n03x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbno2ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n03x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `qgbno2ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n03x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n03x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbno2ad1n06x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus 2-input nor
// 
// 
// assign `qgbno2ad_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbno2ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `qgbno2ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n06x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbno2ad_func i0sqgbno2ad1n06x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbno3ad1n03x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus 3-input nor
// 
// 
// assign `qgbno3ad_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_func i0sqgbno3ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbno3ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_func i0sqgbno3ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `qgbno3ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_func i0sqgbno3ad1n03x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbno3ad_func i0sqgbno3ad1n03x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgboa4ad1n03x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus OAI
// 
// 
// assign `qgboa4ad_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_func i0sqgboa4ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgboa4ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_func i0sqgboa4ad1n03x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `qgboa4ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_func i0sqgboa4ad1n03x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgboa4ad_func i0sqgboa4ad1n03x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbth1ad1n00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus tie high
// 
// 
// assign `qgbth1ad_delay o =  1;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbth1ad_func i0sqgbth1ad1n00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbth1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbth1ad_func i0sqgbth1ad1n00x5_behav_inst(.o(o_tmp));
      assign `qgbth1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbth1ad_func i0sqgbth1ad1n00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbth1ad_func i0sqgbth1ad1n00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbtl1ad1n00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus tie low
// 
// 
// assign `qgbtl1ad_delay o =  0;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbtl1ad_func i0sqgbtl1ad1n00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbtl1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbtl1ad_func i0sqgbtl1ad1n00x5_behav_inst(.o(o_tmp));
      assign `qgbtl1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbtl1ad_func i0sqgbtl1ad1n00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbtl1ad_func i0sqgbtl1ad1n00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbxc2ad1n03x5( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// BAR 2 input XOR
// 
// 
// assign `qgbxc2ad_delay out0 =  a&~b | ~a&b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n03x5_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbxc2ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n03x5_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `qgbxc2ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n03x5_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n03x5_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbxc2ad1n06x5( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// BAR 2 input XOR
// 
// 
// assign `qgbxc2ad_delay out0 =  a&~b | ~a&b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n06x5_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `qgbxc2ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n06x5_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `qgbxc2ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n06x5_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qgbxc2ad_func i0sqgbxc2ad1n06x5_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqolp01ad1n00x5( o0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Tie low cell
// 
// 
// assign `qolp01ad_delay o0 =  0;
// 

   output o0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qolp01ad_func i0sqolp01ad1n00x5_behav_inst(.o0(o0_tmp),.vcc(vcc),.vssx(vssx));
      assign `qolp01ad_delay o0 = o0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qolp01ad_func i0sqolp01ad1n00x5_behav_inst(.o0(o0_tmp));
      assign `qolp01ad_delay o0 = o0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qolp01ad_func i0sqolp01ad1n00x5_inst(.o0(o0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qolp01ad_func i0sqolp01ad1n00x5_inst(.o0(o0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqolp10ad1n00x5( o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Tie high cell
// 
// 
// assign `qolp10ad_delay o1 =  1;
// 

   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qolp10ad_func i0sqolp10ad1n00x5_behav_inst(.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qolp10ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qolp10ad_func i0sqolp10ad1n00x5_behav_inst(.o1(o1_tmp));
      assign `qolp10ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qolp10ad_func i0sqolp10ad1n00x5_inst(.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qolp10ad_func i0sqolp10ad1n00x5_inst(.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfbf1ad1n12x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// buf `qsfbf1ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n12x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfbf1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n12x5_behav_inst(.a(a),.o(o_tmp));
      assign `qsfbf1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n12x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n12x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfbf1ad1n18x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// buf `qsfbf1ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n18x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfbf1ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n18x5_behav_inst(.a(a),.o(o_tmp));
      assign `qsfbf1ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n18x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfbf1ad_func i0sqsfbf1ad1n18x5_inst(.a(a),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfca4ad1n06x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// assign `qsfca4ad_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfca4ad_func i0sqsfca4ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfca4ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfca4ad_func i0sqsfca4ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `qsfca4ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfca4ad_func i0sqsfca4ad1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfca4ad_func i0sqsfca4ad1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfco4ad1n06x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// assign `qsfco4ad_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfco4ad_func i0sqsfco4ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfco4ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfco4ad_func i0sqsfco4ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `qsfco4ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfco4ad_func i0sqsfco4ad1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfco4ad_func i0sqsfco4ad1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfdp1ad1n00x5( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// 

   input dpd1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfdp1ad_func i0sqsfdp1ad1n00x5_behav_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfdp1ad_func i0sqsfdp1ad1n00x5_behav_inst(.dpd1(dpd1));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfdp1ad_func i0sqsfdp1ad1n00x5_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfdp1ad_func i0sqsfdp1ad1n00x5_inst(.dpd1(dpd1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsffa4md1d06x5( clk, d, den, o, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// RedCap scan DFF with scanout and Re-circulating data-enable and asynch reset o = {((si*!ssb)+(ssb*(rb*((den*d)+(!den*o))))) on rising clk} so = {((si*!ssb)+(ssb*(rb*((den*d)+(!den*o))))) on rising clk}
// 
// 
// always @ (posedge clk or negedge rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else
// begin
// IQ <= den ? d : IQ ;
// end
// end
// 
// assign `qsffa4md_delay o =  IQ;
// 

   input clk, d, den, rb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire o_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(o_random_init)
         if((o_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
      `else
         assign o = o_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_func i0sqsffa4md1d06x5_behav_inst(.clk(clk),.d(d),.den(den),.o(o_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qsffa4md_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_func i0sqsffa4md1d06x5_behav_inst(.clk(clk),.d(d),.den(den),.o(o_tmp),.rb(rb),.notifier(1'b0));
      assign `qsffa4md_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire den_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_func i0sqsffa4md1d06x5_inst(.clk(clk_delay),.d(d_delay),.den(den_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsffa4md_func i0sqsffa4md1d06x5_inst(.clk(clk_delay),.d(d_delay),.den(den_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G38(MGM_W24,d_delay);
   and MGM_G39(MGM_W25,den_delay,MGM_W24);
   and MGM_G40(ENABLE_NOT_d_AND_den_AND_rb,rb_delay,MGM_W25);
   and MGM_G41(MGM_W26,den_delay,d_delay);
   and MGM_G42(ENABLE_d_AND_den_AND_rb,rb_delay,MGM_W26);
   and MGM_G43(ENABLE_den_AND_rb,rb_delay,den_delay);
   not MGM_G44(MGM_W27,d_delay);
   and MGM_G45(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W27);
   and MGM_G46(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G47(ENABLE_den,den_delay);
   not MGM_G48(MGM_W28,clk_delay);
   not MGM_G49(MGM_W29,d_delay);
   and MGM_G50(MGM_W30,MGM_W29,MGM_W28);
   not MGM_G51(MGM_W31,den_delay);
   and MGM_G52(ENABLE_NOT_clk_AND_NOT_d_AND_NOT_den,MGM_W31,MGM_W30);
   not MGM_G53(MGM_W32,clk_delay);
   not MGM_G54(MGM_W33,d_delay);
   and MGM_G55(MGM_W34,MGM_W33,MGM_W32);
   and MGM_G56(ENABLE_NOT_clk_AND_NOT_d_AND_den,den_delay,MGM_W34);
   not MGM_G57(MGM_W35,clk_delay);
   and MGM_G58(MGM_W36,d_delay,MGM_W35);
   not MGM_G59(MGM_W37,den_delay);
   and MGM_G60(ENABLE_NOT_clk_AND_d_AND_NOT_den,MGM_W37,MGM_W36);
   not MGM_G61(MGM_W38,clk_delay);
   and MGM_G62(MGM_W39,d_delay,MGM_W38);
   and MGM_G63(ENABLE_NOT_clk_AND_d_AND_den,den_delay,MGM_W39);
   not MGM_G64(MGM_W40,d_delay);
   and MGM_G65(MGM_W41,MGM_W40,clk_delay);
   not MGM_G66(MGM_W42,den_delay);
   and MGM_G67(ENABLE_clk_AND_NOT_d_AND_NOT_den,MGM_W42,MGM_W41);
   not MGM_G68(MGM_W43,d_delay);
   and MGM_G69(MGM_W44,MGM_W43,clk_delay);
   and MGM_G70(ENABLE_clk_AND_NOT_d_AND_den,den_delay,MGM_W44);
   and MGM_G71(MGM_W45,d_delay,clk_delay);
   not MGM_G72(MGM_W46,den_delay);
   and MGM_G73(ENABLE_clk_AND_d_AND_NOT_den,MGM_W46,MGM_W45);
   and MGM_G74(MGM_W47,d_delay,clk_delay);
   and MGM_G75(ENABLE_clk_AND_d_AND_den,den_delay,MGM_W47);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && den==1'b1 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && den==1'b1 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_den_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_den_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_den_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_den_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_den_AND_rb == 1'b1),
      negedge d &&& (ENABLE_den_AND_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_den_AND_rb == 1'b1),
      posedge d &&& (ENABLE_den_AND_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      
      // setuphold d- clk-LH
      
      // setuphold den- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1),
      negedge den &&& (ENABLE_NOT_d_AND_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,den_delay);
      
      // setuphold den- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1),
      posedge den &&& (ENABLE_NOT_d_AND_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,den_delay);
      
      // setuphold den- clk-LH
      $setuphold(posedge clk &&& (ENABLE_d_AND_rb == 1'b1),
      negedge den &&& (ENABLE_d_AND_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,den_delay);
      
      // setuphold den- clk-LH
      $setuphold(posedge clk &&& (ENABLE_d_AND_rb == 1'b1),
      posedge den &&& (ENABLE_d_AND_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,den_delay);
      
      // setuphold den- clk-LH
      
      // setuphold den- clk-LH
      
      // recrem rb-clk-posedge
      $recrem(posedge rb &&& (ENABLE_den == 1'b1),
      posedge clk &&& (ENABLE_den == 1'b1),
      0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      // recrem rb-clk-posedge
      $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfin1ad1n12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// assign `qsfin1ad_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfin1ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `qsfin1ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n12x5_inst(.a(a),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfin1ad1n18x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// assign `qsfin1ad_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n18x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfin1ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n18x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `qsfin1ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n18x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfin1ad_func i0sqsfin1ad1n18x5_inst(.a(a),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfla3md1d06x5( clk, d, o, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// m1 ecoable functional spare async latch
// 
// 
// always @ (clk or d or rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else if (clk)
// begin
// IQ <= d;
// end
// end
// 
// assign `qsfla3md_delay o =  IQ;
// 

   input clk, d, rb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire o_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(o_random_init)
         if((o_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
      `else
         assign o = o_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_func i0sqsfla3md1d06x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qsfla3md_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_func i0sqsfla3md1d06x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.notifier(1'b0));
      assign `qsfla3md_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_func i0sqsfla3md1d06x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfla3md_func i0sqsfla3md1d06x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G9(MGM_W4,d_delay);
   and MGM_G10(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W4);
   and MGM_G11(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G12(ENABLE_rb,rb_delay);
   not MGM_G13(MGM_W5,clk_delay);
   not MGM_G14(MGM_W6,d_delay);
   and MGM_G15(ENABLE_NOT_clk_AND_NOT_d,MGM_W6,MGM_W5);
   not MGM_G16(MGM_W7,clk_delay);
   and MGM_G17(ENABLE_NOT_clk_AND_d,d_delay,MGM_W7);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(clk==1'b1 && rb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(clk==1'b1 && rb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk &&& (ENABLE_rb == 1'b1),
      negedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk &&& (ENABLE_rb == 1'b1),
      posedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      
      // setuphold d- clk-HL
      
      // recrem rb-clk-negedge
      $recrem(posedge rb,negedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfna3ad1n06x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// assign `qsfna3ad_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfna3ad_func i0sqsfna3ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfna3ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfna3ad_func i0sqsfna3ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `qsfna3ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfna3ad_func i0sqsfna3ad1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfna3ad_func i0sqsfna3ad1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfno3ad1n06x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Functional spare cells M2 eco able
// 
// 
// assign `qsfno3ad_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfno3ad_func i0sqsfno3ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsfno3ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfno3ad_func i0sqsfno3ad1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `qsfno3ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfno3ad_func i0sqsfno3ad1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfno3ad_func i0sqsfno3ad1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsft00ad1d00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Reconfigurable functional spare tie low cell ver00
// 
// 
// assign `qsft00ad_delay o =  0;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft00ad_func i0sqsft00ad1d00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsft00ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft00ad_func i0sqsft00ad1d00x5_behav_inst(.o(o_tmp));
      assign `qsft00ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft00ad_func i0sqsft00ad1d00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft00ad_func i0sqsft00ad1d00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsft01ad1d00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Reconfigurable functional spare tie high cell ver01
// 
// 
// assign `qsft01ad_delay o =  1;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft01ad_func i0sqsft01ad1d00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsft01ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft01ad_func i0sqsft01ad1d00x5_behav_inst(.o(o_tmp));
      assign `qsft01ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft01ad_func i0sqsft01ad1d00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft01ad_func i0sqsft01ad1d00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsft10ad1d00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Reconfigurable functional spare tie high cell ver10
// 
// 
// assign `qsft10ad_delay o =  1;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft10ad_func i0sqsft10ad1d00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsft10ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft10ad_func i0sqsft10ad1d00x5_behav_inst(.o(o_tmp));
      assign `qsft10ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft10ad_func i0sqsft10ad1d00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft10ad_func i0sqsft10ad1d00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsft11ad1d00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Reconfigurable functional spare tie low cell ver11
// 
// 
// assign `qsft11ad_delay o =  0;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft11ad_func i0sqsft11ad1d00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsft11ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft11ad_func i0sqsft11ad1d00x5_behav_inst(.o(o_tmp));
      assign `qsft11ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsft11ad_func i0sqsft11ad1d00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsft11ad_func i0sqsft11ad1d00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsftihad1n00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Tie high cell
// 
// 
// assign `qsftihad_delay o =  1;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsftihad_func i0sqsftihad1n00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsftihad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsftihad_func i0sqsftihad1n00x5_behav_inst(.o(o_tmp));
      assign `qsftihad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsftihad_func i0sqsftihad1n00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsftihad_func i0sqsftihad1n00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsftilad1n00x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Tie low cell
// 
// 
// assign `qsftilad_delay o =  0;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsftilad_func i0sqsftilad1n00x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `qsftilad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsftilad_func i0sqsftilad1n00x5_behav_inst(.o(o_tmp));
      assign `qsftilad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsftilad_func i0sqsftilad1n00x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsftilad_func i0sqsftilad1n00x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfvssad1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Filler cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfvssad_func i0sqsfvssad1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfvssad_func i0sqsfvssad1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsfvssad_func i0sqsfvssad1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsfvssad_func i0sqsfvssad1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnbf1ad1n12x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional buffer spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n12x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n12x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n12x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n12x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnbf1ad1n18x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional buffer spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n18x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n18x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n18x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnbf1ad_func i0sqsnbf1ad1n18x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnca4ad1n06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional spare complex cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnca4ad_func i0sqsnca4ad1n06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnca4ad_func i0sqsnca4ad1n06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnca4ad_func i0sqsnca4ad1n06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnca4ad_func i0sqsnca4ad1n06x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnco4ad1n06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional spare complex cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnco4ad_func i0sqsnco4ad1n06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnco4ad_func i0sqsnco4ad1n06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnco4ad_func i0sqsnco4ad1n06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnco4ad_func i0sqsnco4ad1n06x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsndp1ad1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Non Functional spare cells M2 eco able
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsndp1ad_func i0sqsndp1ad1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsndp1ad_func i0sqsndp1ad1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsndp1ad_func i0sqsndp1ad1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsndp1ad_func i0sqsndp1ad1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnfa4md1d06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// m1 ecoable non-functional spare async FF
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnfa4md_func i0sqsnfa4md1d06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnfa4md_func i0sqsnfa4md1d06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnfa4md_func i0sqsnfa4md1d06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnfa4md_func i0sqsnfa4md1d06x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnin1ad1n12x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional inverter spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n12x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n12x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n12x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n12x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnin1ad1n18x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional inverter spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n18x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n18x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n18x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnin1ad_func i0sqsnin1ad1n18x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnla3md1d06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// m1 ecoable non-functional spare async latch
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnla3md_func i0sqsnla3md1d06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnla3md_func i0sqsnla3md1d06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnla3md_func i0sqsnla3md1d06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnla3md_func i0sqsnla3md1d06x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnna3ad1n06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional nand3 spare cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnna3ad_func i0sqsnna3ad1n06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnna3ad_func i0sqsnna3ad1n06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnna3ad_func i0sqsnna3ad1n06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnna3ad_func i0sqsnna3ad1n06x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnno3ad1n06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional spare nor3 cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnno3ad_func i0sqsnno3ad1n06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnno3ad_func i0sqsnno3ad1n06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnno3ad_func i0sqsnno3ad1n06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnno3ad_func i0sqsnno3ad1n06x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnvssad1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Filler cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnvssad_func i0sqsnvssad1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnvssad_func i0sqsnvssad1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_qsnvssad_func i0sqsnvssad1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_qsnvssad_func i0sqsnvssad1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0stihi00ad1n02x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Tie high cell
// 
// 
// assign `tihi00ad_delay o =  1;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_tihi00ad_func i0stihi00ad1n02x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `tihi00ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_tihi00ad_func i0stihi00ad1n02x5_behav_inst(.o(o_tmp));
      assign `tihi00ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_tihi00ad_func i0stihi00ad1n02x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_tihi00ad_func i0stihi00ad1n02x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0stilo00ad1n02x5( o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Tie low cell
// 
// 
// assign `tilo00ad_delay o =  0;
// 

   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_tilo00ad_func i0stilo00ad1n02x5_behav_inst(.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `tilo00ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_spcl_tilo00ad_func i0stilo00ad1n02x5_behav_inst(.o(o_tmp));
      assign `tilo00ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_tilo00ad_func i0stilo00ad1n02x5_inst(.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_tilo00ad_func i0stilo00ad1n02x5_inst(.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sydp122ad1n00x5( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Drain nac protection cell for vcc or gated nac cell with no integrated tap
// 
// 
// 

   input dpd1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ad_func i0sydp122ad1n00x5_behav_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ad_func i0sydp122ad1n00x5_behav_inst(.dpd1(dpd1));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ad_func i0sydp122ad1n00x5_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ad_func i0sydp122ad1n00x5_inst(.dpd1(dpd1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sydp122bd1d00x5( dpd1 `ifdef POWER_AWARE_MODE , vssx `endif );

// 
// Drain nac protection cell for vcc or gated nac cell with no integrated tap
// 
// 
// 

   input dpd1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122bd_func i0sydp122bd1d00x5_behav_inst(.dpd1(dpd1),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122bd_func i0sydp122bd1d00x5_behav_inst(.dpd1(dpd1));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122bd_func i0sydp122bd1d00x5_inst(.dpd1(dpd1),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122bd_func i0sydp122bd1d00x5_inst(.dpd1(dpd1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sydp122ud1n00x5( dpd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Drain nac protection cell for vcc or gated nac cell with no integrated tap
// 
// 
// 

   input dpd1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ud_func i0sydp122ud1n00x5_behav_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ud_func i0sydp122ud1n00x5_behav_inst(.dpd1(dpd1));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ud_func i0sydp122ud1n00x5_inst(.dpd1(dpd1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122ud_func i0sydp122ud1n00x5_inst(.dpd1(dpd1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sydp122vd1d00x5( dpd1 `ifdef POWER_AWARE_MODE , vssx `endif );

// 
// Drain nac protection cell for vcc or gated nac cell with no integrated tap
// 
// 
// 

   input dpd1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122vd_func i0sydp122vd1d00x5_behav_inst(.dpd1(dpd1),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122vd_func i0sydp122vd1d00x5_behav_inst(.dpd1(dpd1));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ydp122vd_func i0sydp122vd1d00x5_inst(.dpd1(dpd1),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ydp122vd_func i0sydp122vd1d00x5_inst(.dpd1(dpd1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sysf022cd1d00x5( a, b `ifdef POWER_AWARE_MODE , vssx `endif );
   inout a, b;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ysf022cd_func i0sysf022cd1d00x5_behav_inst(.a(a),.b(b),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ysf022cd_func i0sysf022cd1d00x5_behav_inst(.a(a),.b(b));
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_ysf022cd_func i0sysf022cd1d00x5_inst(.a(a),.b(b),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_ysf022cd_func i0sysf022cd1d00x5_inst(.a(a),.b(b));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ad1n04x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n04x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n04x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n04x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n04x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ad1n08x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n08x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n08x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n08x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n08x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ad1n16x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n16x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n16x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n16x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n16x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ad1n32x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n32x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n32x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n32x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n32x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ad1n64x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n64x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n64x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n64x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ad_func i0szdcf22ad1n64x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ud1n04x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n04x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n04x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n04x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n04x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ud1n08x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n08x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n08x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n08x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n08x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ud1n16x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n16x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n16x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n16x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n16x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ud1n32x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n32x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n32x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n32x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n32x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf22ud1n64x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n64x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n64x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n64x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf22ud_func i0szdcf22ud1n64x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ad1n04x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n04x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n04x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n04x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n04x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ad1n08x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n08x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n08x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n08x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n08x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ad1n16x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n16x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n16x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n16x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n16x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ad1n32x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n32x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n32x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n32x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n32x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ad1n64x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n64x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n64x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n64x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ad_func i0szdcf33ad1n64x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ud1n04x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n04x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n04x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n04x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n04x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ud1n08x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n08x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n08x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n08x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n08x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ud1n16x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n16x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n16x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n16x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n16x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ud1n32x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n32x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n32x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n32x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n32x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdcf33ud1n64x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n64x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n64x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n64x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdcf33ud_func i0szdcf33ud1n64x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdp022ad1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ad_func i0szdp022ad1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ad_func i0szdp022ad1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ad_func i0szdp022ad1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ad_func i0szdp022ad1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szdp022ud1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Diffusion density decap cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ud_func i0szdp022ud1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ud_func i0szdp022ud1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ud_func i0szdp022ud1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zdp022ud_func i0szdp022ud1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szvcc00ad1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Filler cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zvcc00ad_func i0szvcc00ad1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zvcc00ad_func i0szvcc00ad1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zvcc00ad_func i0szvcc00ad1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zvcc00ad_func i0szvcc00ad1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0szvss00ad1n00x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// Filler cell
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zvss00ad_func i0szvss00ad1n00x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zvss00ad_func i0szvss00ad1n00x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_spcl_zvss00ad_func i0szvss00ad1n00x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_spcl_zvss00ad_func i0szvss00ad1n00x5_inst();
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




