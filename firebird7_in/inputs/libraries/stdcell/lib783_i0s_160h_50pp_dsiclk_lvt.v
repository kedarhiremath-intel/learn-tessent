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
     `ifndef caoi12ab_delay
        `define caoi12ab_delay `clkcell_delay_value
     `endif
     `ifndef cdvar2ab_delay
        `define cdvar2ab_delay `clkseq_delay_value
     `endif
     `ifndef cfun10ab_delay
        `define cfun10ab_delay `clkseq_delay_value
     `endif
     `ifndef cfvn13ab_delay
        `define cfvn13ab_delay `clkseq_delay_value
     `endif
     `ifndef chp0f1ab_delay
        `define chp0f1ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0f2ab_delay
        `define chp0f2ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0f3ab_delay
        `define chp0f3ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0f4ab_delay
        `define chp0f4ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0f5ab_delay
        `define chp0f5ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0r1ab_delay
        `define chp0r1ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0r2ab_delay
        `define chp0r2ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0r3ab_delay
        `define chp0r3ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0r4ab_delay
        `define chp0r4ab_delay `clkcell_delay_value
     `endif
     `ifndef chp0r5ab_delay
        `define chp0r5ab_delay `clkcell_delay_value
     `endif
     `ifndef cilao5ab_delay
        `define cilao5ab_delay `clkseq_delay_value
     `endif
     `ifndef cilb16ab_delay
        `define cilb16ab_delay `clkseq_delay_value
     `endif
     `ifndef cilb81ab_delay
        `define cilb81ab_delay `clkseq_delay_value
     `endif
     `ifndef cilb85ab_delay
        `define cilb85ab_delay `clkseq_delay_value
     `endif
     `ifndef cilba5ab_delay
        `define cilba5ab_delay `clkseq_delay_value
     `endif
     `ifndef clbna3ab_delay
        `define clbna3ab_delay `clkcell_delay_value
     `endif
     `ifndef clbno3ab_delay
        `define clbno3ab_delay `clkcell_delay_value
     `endif
     `ifndef clcp15ab_delay
        `define clcp15ab_delay `clkcell_delay_value
     `endif
     `ifndef cmbc02ab_delay
        `define cmbc02ab_delay `clkcell_delay_value
     `endif
     `ifndef cmbc24ab_delay
        `define cmbc24ab_delay `clkcell_delay_value
     `endif
     `ifndef coai12ab_delay
        `define coai12ab_delay `clkcell_delay_value
     `endif
     `ifndef cor0c2ab_delay
        `define cor0c2ab_delay `clkcell_delay_value
     `endif
     `ifndef crb0a2ab_delay
        `define crb0a2ab_delay `clkcell_delay_value
     `endif
     `ifndef crb0bfab_delay
        `define crb0bfab_delay `clkcell_delay_value
     `endif
     `ifndef crb0o2ab_delay
        `define crb0o2ab_delay `clkcell_delay_value
     `endif
     `ifndef crb1a2ab_delay
        `define crb1a2ab_delay `clkcell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_0( clkout, clk, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, en1, en2;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, en1, en2 vcc, vssx: clkout
    0  0  ?  1  0: 1;
    0  ?  0  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //clk, en1, en2: clkout
    0  0  ?: 1;
    0  ?  0: 1;
    1  ?  ?: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_0 inst1( clkout, clk, en1, en2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_0 inst1( clkout, clk, en1, en2 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0( MGM_EN0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_EN0;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc, vssx: MGM_EN0
    0  1  0: 1;
    1  1  0: 0;
  `else
  //clk: MGM_EN0
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_1( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func( clk, clkout, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, rb, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst2( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst3( MGM_D0, IQ, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_1 inst4( IQ1, MGM_C0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2 inst5( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst6( MGM_C1, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2 inst7( MGM_D1, IQ1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_1 inst8( IQ, MGM_C1, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2 inst9( clkout, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst2( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst3( MGM_D0, IQ );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_1 inst4( IQ1, MGM_C0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2 inst5( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_0 inst6( MGM_C1, rb );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2 inst7( MGM_D1, IQ1 );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_1 inst8( IQ, MGM_C1, 1'b0, MGM_EN1, MGM_D1, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_2 inst9( clkout, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cfloadab_func( a, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, sa;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1( MGM_CLK0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_CLK0;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc, vssx: MGM_CLK0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //clk: MGM_CLK0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2( MGM_D0, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //d vcc, vssx: MGM_D0
    0  1  0: 1;
    1  1  0: 0;
  `else
  //d: MGM_D0
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_N_IQ_FF_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func( clk, clkout, d, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst2( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_N_IQ_FF_UDP inst3( IQ, 1'b0, 1'b0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst4( clkout, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst2( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_N_IQ_FF_UDP inst3( IQ, 1'b0, 1'b0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst4( clkout, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_N_IQN_FF_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
     ?  0  n  ?  1  0  ?  :  1  :  1;
     0  ?  n  ?  1  0  ?  :  0  :  0;
     ?  0  r  0  1  0  ?  :  ?  :  1;
     1  0  ?  ?  1  0  ?  :  ?  :  1;
     0  ?  r  1  1  0  ?  :  ?  :  0;
     0  1  ?  ?  1  0  ?  :  ?  :  0;
     0  0  ?  *  1  0  ?  :  ?  :  -;
     0  ?  ?  *  1  0  ?  :  0  :  0;
     ?  0  ?  *  1  0  ?  :  1  :  1;
     0  *  ?  ?  1  0  ?  :  0  :  0;
     *  0  ?  ?  1  0  ?  :  1  :  1;
     ?  0  *  0  1  0  ?  :  1  :  1;
     0  ?  *  1  1  0  ?  :  0  :  0;
     ?  ?  ?  ?  1  0  *  :  ?  :  x;
  `else
   //C  P  CK D  N  :  Q  :  Q 
     0  0  n  ?  ?  :  ?  :  -;
     ?  0  n  ?  ?  :  1  :  1;
     0  ?  n  ?  ?  :  0  :  0;
     ?  0  r  0  ?  :  ?  :  1;
     1  0  ?  ?  ?  :  ?  :  1;
     0  ?  r  1  ?  :  ?  :  0;
     0  1  ?  ?  ?  :  ?  :  0;
     0  0  ?  *  ?  :  ?  :  -;
     0  ?  ?  *  ?  :  0  :  0;
     ?  0  ?  *  ?  :  1  :  1;
     0  *  ?  ?  ?  :  0  :  0;
     *  0  ?  ?  ?  :  1  :  1;
     ?  0  *  0  ?  :  1  :  1;
     0  ?  *  1  ?  :  0  :  0;
     ?  ?  ?  ?  *  :  ?  :  x;
  `endif

endtable
endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func( clk, clkout, d, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst2( MGM_P0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst3( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_N_IQN_FF_UDP inst4( IQN, 1'b0, MGM_P0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst5( clkout, IQN, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst2( MGM_P0, rb );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst3( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_N_IQN_FF_UDP inst4( IQN, 1'b0, MGM_P0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst5( clkout, IQN );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3( MGM_D0, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input en, te;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //en, te vcc, vssx: MGM_D0
    1  ?  1  0: 1;
    ?  1  1  0: 1;
    0  0  1  0: 0;
  `else
  //en, te: MGM_D0
    1  ?: 1;
    ?  1: 1;
    0  0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4( clkout, IQ, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input IQ, clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ, clk vcc, vssx: clkout
    1  1  1  0: 1;
    0  ?  1  0: 0;
    ?  0  1  0: 0;
  `else
  //IQ, clk: clkout
    1  1: 1;
    0  ?: 0;
    ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_5( clkout, IQ1, clk, rb, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input IQ1, clk, rb, te;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ1, clk, rb, te vcc, vssx: clkout
    0  1  1  ?  1  0: 1;
    ?  1  1  1  1  0: 1;
    1  0  ?  ?  1  0: 0;
    1  ?  0  ?  1  0: 0;
    1  ?  ?  0  1  0: 0;
    ?  0  ?  ?  1  0: 0;
    ?  ?  0  ?  1  0: 0;
  `else
  //IQ1, clk, rb, te: clkout
    0  1  1  ?: 1;
    ?  1  1  1: 1;
    1  0  ?  ?: 0;
    1  ?  0  ?: 0;
    1  ?  ?  0: 0;
    ?  0  ?  ?: 0;
    ?  ?  0  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func( clk, clkout, en, rb, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, rb, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst2( MGM_D0, en, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_5 inst4( clkout, IQ1, clk, rb, te, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst2( MGM_D0, en );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_5 inst4( clkout, IQ1, clk, rb, te );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_6( clkout, IQ, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input IQ, clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ, clk vcc, vssx: clkout
    0  ?  1  0: 1;
    ?  1  1  0: 1;
    1  0  1  0: 0;
  `else
  //IQ, clk: clkout
    0  ?: 1;
    ?  1: 1;
    1  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_6 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_6 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_6 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_6 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_7( MGM_D0, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input enb, teb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //enb, teb vcc, vssx: MGM_D0
    0  ?  1  0: 1;
    ?  0  1  0: 1;
    1  1  1  0: 0;
  `else
  //enb, teb: MGM_D0
    0  ?: 1;
    ?  0: 1;
    1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func( clk, clkout, enb, teb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, enb, teb, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_7 inst2( MGM_D0, enb, teb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQL, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst4( clkout, IQL, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_2 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_7 inst2( MGM_D0, enb, teb );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_N_IQ_LATCH_UDP inst3( IQL, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst4( clkout, IQL, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_8( clkout, clk, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, en1, en2;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, en1, en2 vcc, vssx: clkout
    0  ?  ?  1  0: 1;
    ?  0  ?  1  0: 1;
    ?  ?  0  1  0: 1;
    1  1  1  1  0: 0;
  `else
  //clk, en1, en2: clkout
    0  ?  ?: 1;
    ?  0  ?: 1;
    ?  ?  0: 1;
    1  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_8 inst1( clkout, clk, en1, en2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_8 inst1( clkout, clk, en1, en2 );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_9( clkout, clk, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, enb1, enb2;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, enb1, enb2 vcc, vssx: clkout
    0  0  0  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  ?  1  0: 0;
    ?  ?  1  1  0: 0;
  `else
  //clk, enb1, enb2: clkout
    0  0  0: 1;
    1  ?  ?: 0;
    ?  1  ?: 0;
    ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func( clk, clkout, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, enb1, enb2;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_9 inst1( clkout, clk, enb1, enb2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_9 inst1( clkout, clk, enb1, enb2 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func( clk, clkout, rsel0, rsel1, rsel10, rsel11, rsel12, rsel13, rsel14, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, rsel0, rsel1, rsel10, rsel11, rsel12, rsel13, rsel14, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_10( clkout, clka, ena, clkb, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clka, ena, clkb, enb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clka, ena, clkb, enb vcc, vssx: clkout
    1  1  ?  ?  1  0: 1;
    ?  ?  1  1  1  0: 1;
    0  ?  0  ?  1  0: 0;
    0  ?  ?  0  1  0: 0;
    ?  0  0  ?  1  0: 0;
    ?  0  ?  0  1  0: 0;
  `else
  //clka, ena, clkb, enb: clkout
    1  1  ?  ?: 1;
    ?  ?  1  1: 1;
    0  ?  0  ?: 0;
    0  ?  ?  0: 0;
    ?  0  0  ?: 0;
    ?  0  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func( clka, clkb, clkout, ena, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clka, clkb, ena, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_10 inst1( clkout, clka, ena, clkb, enb, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_10 inst1( clkout, clka, ena, clkb, enb );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11( clkout, int1, int2, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input int1, int2, sb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //int1, int2, sb vcc, vssx: clkout
    1  1  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  1  1  0: 0;
  `else
  //int1, int2, sb: clkout
    1  1  ?: 1;
    1  ?  0: 1;
    ?  1  1: 1;
    0  0  ?: 0;
    0  ?  0: 0;
    ?  0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func( clk1, clk2, clk3, clk4, clkout, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk1, clk2, clk3, clk4, sa, sb;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11 inst1( clkout, int1, int2, sb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11 inst2( int1, clk1, clk2, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11 inst3( int2, clk3, clk4, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11 inst1( clkout, int1, int2, sb );
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11 inst2( int1, clk1, clk2, sa );
   INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_11 inst3( int2, clk3, clk4, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_12( clkout, clk, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, en1, en2;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, en1, en2 vcc, vssx: clkout
    0  ?  ?  1  0: 1;
    ?  0  0  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  1  1  0: 0;
  `else
  //clk, en1, en2: clkout
    0  ?  ?: 1;
    ?  0  0: 1;
    1  1  ?: 0;
    1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_12 inst1( clkout, clk, en1, en2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_12 inst1( clkout, clk, en1, en2 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst1( clkout, clk1, clk2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst1( clkout, clk1, clk2 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst1( clkout, clk, en, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst1( clkout, clk, en );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_1 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst1( clkout, clk, enb, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_3 inst1( clkout, clk, enb );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst1( clkout, clk, en, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_4 inst1( clkout, clk, en );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scaoi12ab1n02x4( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clockbuffer
// 
// 
// assign `caoi12ab_delay clkout =  ~clk&~en1 | ~clk&~en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `caoi12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `caoi12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x4_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x4_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-HL
      $nochange(negedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-HL
      $nochange(negedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-HL
      $nochange(negedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-HL
      $nochange(negedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scaoi12ab1n02x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clockbuffer
// 
// 
// assign `caoi12ab_delay clkout =  ~clk&~en1 | ~clk&~en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `caoi12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `caoi12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n02x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-HL
      $nochange(negedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-HL
      $nochange(negedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-HL
      $nochange(negedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-HL
      $nochange(negedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scaoi12ab1n03x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clockbuffer
// 
// 
// assign `caoi12ab_delay clkout =  ~clk&~en1 | ~clk&~en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `caoi12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `caoi12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n03x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n03x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-HL
      $nochange(negedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-HL
      $nochange(negedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-HL
      $nochange(negedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-HL
      $nochange(negedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scaoi12ab1n04x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clockbuffer
// 
// 
// assign `caoi12ab_delay clkout =  ~clk&~en1 | ~clk&~en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `caoi12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `caoi12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n04x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n04x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-HL
      $nochange(negedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-HL
      $nochange(negedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-HL
      $nochange(negedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-HL
      $nochange(negedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scaoi12ab1n06x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clockbuffer
// 
// 
// assign `caoi12ab_delay clkout =  ~clk&~en1 | ~clk&~en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `caoi12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `caoi12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n06x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n06x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-HL
      $nochange(negedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-HL
      $nochange(negedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-HL
      $nochange(negedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-HL
      $nochange(negedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scaoi12ab1n09x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clockbuffer
// 
// 
// assign `caoi12ab_delay clkout =  ~clk&~en1 | ~clk&~en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `caoi12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `caoi12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n09x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_caoi12ab_func i0scaoi12ab1n09x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b0 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-HL
      $nochange(negedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-HL
      $nochange(negedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-HL
      $nochange(negedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-HL
      $nochange(negedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scdloadab1d04x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d04x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d04x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d04x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d04x5_inst(.a(a));
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


module i0scdloadab1d06x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d06x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d06x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d06x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d06x5_inst(.a(a));
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


module i0scdloadab1d09x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d09x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d09x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d09x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d09x5_inst(.a(a));
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


module i0scdloadab1d12x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d12x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d12x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d12x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d12x5_inst(.a(a));
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


module i0scdloadab1d15x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d15x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d15x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d15x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d15x5_inst(.a(a));
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


module i0scdloadab1d18x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d18x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d18x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d18x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d18x5_inst(.a(a));
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


module i0scdloadab1d21x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d21x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d21x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d21x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d21x5_inst(.a(a));
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


module i0scdloadab1d24x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d24x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d24x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d24x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d24x5_inst(.a(a));
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


module i0scdloadab1d30x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d30x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d30x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d30x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d30x5_inst(.a(a));
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


module i0scdloadab1d36x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d36x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d36x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d36x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d36x5_inst(.a(a));
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


module i0scdloadab1d42x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d42x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d42x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d42x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d42x5_inst(.a(a));
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


module i0scdloadab1d48x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d48x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d48x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d48x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d48x5_inst(.a(a));
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


module i0scdloadab1d60x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d60x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d60x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d60x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d60x5_inst(.a(a));
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


module i0scdloadab1d72x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d72x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d72x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d72x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1d72x5_inst(.a(a));
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


module i0scdloadab1n02x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n02x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n02x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n02x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n02x5_inst(.a(a));
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


module i0scdloadab1n03x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n03x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n03x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n03x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n03x5_inst(.a(a));
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


module i0scdloadab1n04x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n04x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n04x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n04x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n04x5_inst(.a(a));
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


module i0scdloadab1n06x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n06x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n06x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n06x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n06x5_inst(.a(a));
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


module i0scdloadab1n09x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n09x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n09x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n09x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n09x5_inst(.a(a));
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


module i0scdloadab1n12x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n12x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n12x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n12x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n12x5_inst(.a(a));
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


module i0scdloadab1n15x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n15x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n15x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n15x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n15x5_inst(.a(a));
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


module i0scdloadab1n18x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n18x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n18x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n18x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n18x5_inst(.a(a));
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


module i0scdloadab1n21x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n21x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n21x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n21x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n21x5_inst(.a(a));
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


module i0scdloadab1n24x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n24x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n24x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n24x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n24x5_inst(.a(a));
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


module i0scdloadab1n30x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n30x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n30x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n30x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n30x5_inst(.a(a));
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


module i0scdloadab1n36x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n36x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n36x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n36x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n36x5_inst(.a(a));
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


module i0scdloadab1n42x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n42x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n42x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n42x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n42x5_inst(.a(a));
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


module i0scdloadab1n48x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n48x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n48x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n48x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n48x5_inst(.a(a));
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


module i0scdloadab1n60x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n60x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n60x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n60x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n60x5_inst(.a(a));
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


module i0scdloadab1n72x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n72x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n72x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n72x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadab_func i0scdloadab1n72x5_inst(.a(a));
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


module i0scdvar2ab1n03x5( clk, clkout, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clock posedge inverting FF with async active low reset
// 
// 
// always @ (IQ or clk or rb)
// begin
// if (!rb)
// begin
// IQ1 <= 1'b0 ;
// end
// else if (!clk)
// begin
// IQ1 <= ~IQ;
// end
// end
// always @ (IQ1 or clk or rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else if (clk)
// begin
// IQ <= IQ1;
// end
// end
// 
// assign clkout =  IQ;
// 

   input clk, rb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire clkout_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(clkout_random_init)
   if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
`else
   assign clkout = clkout_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cdvar2ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rb(rb),.notifier(1'b0));
      assign `cdvar2ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   buf MGM_G0(ENABLE_rb,rb_delay);
   not MGM_G1(ENABLE_NOT_clk,clk_delay);
   buf MGM_G2(ENABLE_clk,clk_delay);
   // spec_gates_end
  specify
   if(rb==1'b1)
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b0))  = (0.0,0.0);

   if(rb==1'b1)
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b1))  = (0.0,0.0);

   ifnone
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b0))  = (0.0,0.0);

   ifnone
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b1))  = (0.0,0.0);

   if(clk==1'b0)
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   if(clk==1'b1)
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   ifnone
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   // recrem rb-clk-posedge
   $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);

   $width(negedge rb &&& (ENABLE_NOT_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge rb &&& (ENABLE_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge rb,0.0,0,notifier);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scdvar2ab1n06x5( clk, clkout, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clock posedge inverting FF with async active low reset
// 
// 
// always @ (IQ or clk or rb)
// begin
// if (!rb)
// begin
// IQ1 <= 1'b0 ;
// end
// else if (!clk)
// begin
// IQ1 <= ~IQ;
// end
// end
// always @ (IQ1 or clk or rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else if (clk)
// begin
// IQ <= IQ1;
// end
// end
// 
// assign clkout =  IQ;
// 

   input clk, rb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire clkout_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(clkout_random_init)
   if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
`else
   assign clkout = clkout_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cdvar2ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rb(rb),.notifier(1'b0));
      assign `cdvar2ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   buf MGM_G0(ENABLE_rb,rb_delay);
   not MGM_G1(ENABLE_NOT_clk,clk_delay);
   buf MGM_G2(ENABLE_clk,clk_delay);
   // spec_gates_end
  specify
   if(rb==1'b1)
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b0))  = (0.0,0.0);

   if(rb==1'b1)
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b1))  = (0.0,0.0);

   ifnone
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b0))  = (0.0,0.0);

   ifnone
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b1))  = (0.0,0.0);

   if(clk==1'b0)
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   if(clk==1'b1)
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   ifnone
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   // recrem rb-clk-posedge
   $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);

   $width(negedge rb &&& (ENABLE_NOT_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge rb &&& (ENABLE_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge rb,0.0,0,notifier);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scdvar2ab1n12x5( clk, clkout, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clock posedge inverting FF with async active low reset
// 
// 
// always @ (IQ or clk or rb)
// begin
// if (!rb)
// begin
// IQ1 <= 1'b0 ;
// end
// else if (!clk)
// begin
// IQ1 <= ~IQ;
// end
// end
// always @ (IQ1 or clk or rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else if (clk)
// begin
// IQ <= IQ1;
// end
// end
// 
// assign clkout =  IQ;
// 

   input clk, rb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire clkout_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(clkout_random_init)
   if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
`else
   assign clkout = clkout_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cdvar2ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rb(rb),.notifier(1'b0));
      assign `cdvar2ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdvar2ab_func i0scdvar2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   buf MGM_G0(ENABLE_rb,rb_delay);
   not MGM_G1(ENABLE_NOT_clk,clk_delay);
   buf MGM_G2(ENABLE_clk,clk_delay);
   // spec_gates_end
  specify
   if(rb==1'b1)
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b0))  = (0.0,0.0);

   if(rb==1'b1)
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b1))  = (0.0,0.0);

   ifnone
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b0))  = (0.0,0.0);

   ifnone
   // seq arc clk --> clkout
   (posedge clk => (clkout +: 1'b1))  = (0.0,0.0);

   if(clk==1'b0)
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   if(clk==1'b1)
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   ifnone
   // seq arc rb --> clkout
   (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   // recrem rb-clk-posedge
   $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);

   $width(negedge rb &&& (ENABLE_NOT_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge rb &&& (ENABLE_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge rb,0.0,0,notifier);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scfloadab1n02x5( a, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// fine dload with enable control
// 
// 
// 

   input a, sa;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadab_func i0scfloadab1n02x5_behav_inst(.a(a),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadab_func i0scfloadab1n02x5_behav_inst(.a(a),.sa(sa));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadab_func i0scfloadab1n02x5_inst(.a(a),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadab_func i0scfloadab1n02x5_inst(.a(a),.sa(sa));
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


module i0scfun10ab1n03x5( clk, clkout, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clock posedge inverting FF
// 
// 
// always @ (posedge clk)
// begin
// IQ <= ~d ;
// end
// 
// assign `cfun10ab_delay clkout =  IQ;
// 

   input clk, d;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cfun10ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.notifier(1'b0));
      assign `cfun10ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G2(ENABLE_NOT_d,d_delay);
   buf MGM_G3(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(d==1'b0)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk,negedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk,posedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scfun10ab1n06x5( clk, clkout, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clock posedge inverting FF
// 
// 
// always @ (posedge clk)
// begin
// IQ <= ~d ;
// end
// 
// assign `cfun10ab_delay clkout =  IQ;
// 

   input clk, d;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cfun10ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.notifier(1'b0));
      assign `cfun10ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G2(ENABLE_NOT_d,d_delay);
   buf MGM_G3(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(d==1'b0)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk,negedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk,posedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scfun10ab1n12x5( clk, clkout, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// clock posedge inverting FF
// 
// 
// always @ (posedge clk)
// begin
// IQ <= ~d ;
// end
// 
// assign `cfun10ab_delay clkout =  IQ;
// 

   input clk, d;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cfun10ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.notifier(1'b0));
      assign `cfun10ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfun10ab_func i0scfun10ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G2(ENABLE_NOT_d,d_delay);
   buf MGM_G3(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(d==1'b0)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk,negedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk,posedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scfvn13ab1n03x5( clk, clkout, d, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Clock frequency 1/2 divider (low power implementation) clkout = if !rb then val0 else not(d) on rising clk
// 
// 
// always @ (posedge clk or negedge rb)
// begin
// if (!rb)
// begin
// IQN <= 1'b1 ;
// end
// else
// begin
// IQN <= d ;
// end
// end
// 
// assign `cfvn13ab_delay clkout =  !IQN;
// 

   input clk, d, rb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cfvn13ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.rb(rb),.notifier(1'b0));
      assign `cfvn13ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W5,d_delay);
   and MGM_G13(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W5);
   and MGM_G14(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G15(ENABLE_rb,rb_delay);
   not MGM_G16(MGM_W6,clk_delay);
   not MGM_G17(MGM_W7,d_delay);
   and MGM_G18(ENABLE_NOT_clk_AND_NOT_d,MGM_W7,MGM_W6);
   not MGM_G19(MGM_W8,clk_delay);
   and MGM_G20(ENABLE_NOT_clk_AND_d,d_delay,MGM_W8);
   not MGM_G21(MGM_W9,d_delay);
   and MGM_G22(ENABLE_clk_AND_NOT_d,MGM_W9,clk_delay);
   and MGM_G23(ENABLE_clk_AND_d,d_delay,clk_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1 && rb==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      negedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      posedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      
      // setuphold d- clk-LH
      
      // recrem rb-clk-posedge
      $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scfvn13ab1n06x5( clk, clkout, d, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Clock frequency 1/2 divider (low power implementation) clkout = if !rb then val0 else not(d) on rising clk
// 
// 
// always @ (posedge clk or negedge rb)
// begin
// if (!rb)
// begin
// IQN <= 1'b1 ;
// end
// else
// begin
// IQN <= d ;
// end
// end
// 
// assign `cfvn13ab_delay clkout =  !IQN;
// 

   input clk, d, rb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cfvn13ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.rb(rb),.notifier(1'b0));
      assign `cfvn13ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W5,d_delay);
   and MGM_G13(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W5);
   and MGM_G14(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G15(ENABLE_rb,rb_delay);
   not MGM_G16(MGM_W6,clk_delay);
   not MGM_G17(MGM_W7,d_delay);
   and MGM_G18(ENABLE_NOT_clk_AND_NOT_d,MGM_W7,MGM_W6);
   not MGM_G19(MGM_W8,clk_delay);
   and MGM_G20(ENABLE_NOT_clk_AND_d,d_delay,MGM_W8);
   not MGM_G21(MGM_W9,d_delay);
   and MGM_G22(ENABLE_clk_AND_NOT_d,MGM_W9,clk_delay);
   and MGM_G23(ENABLE_clk_AND_d,d_delay,clk_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1 && rb==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      negedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      posedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      
      // setuphold d- clk-LH
      
      // recrem rb-clk-posedge
      $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scfvn13ab1n12x5( clk, clkout, d, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Clock frequency 1/2 divider (low power implementation) clkout = if !rb then val0 else not(d) on rising clk
// 
// 
// always @ (posedge clk or negedge rb)
// begin
// if (!rb)
// begin
// IQN <= 1'b1 ;
// end
// else
// begin
// IQN <= d ;
// end
// end
// 
// assign `cfvn13ab_delay clkout =  !IQN;
// 

   input clk, d, rb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cfvn13ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.d(d),.rb(rb),.notifier(1'b0));
      assign `cfvn13ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfvn13ab_func i0scfvn13ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.d(d_delay),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W5,d_delay);
   and MGM_G13(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W5);
   and MGM_G14(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G15(ENABLE_rb,rb_delay);
   not MGM_G16(MGM_W6,clk_delay);
   not MGM_G17(MGM_W7,d_delay);
   and MGM_G18(ENABLE_NOT_clk_AND_NOT_d,MGM_W7,MGM_W6);
   not MGM_G19(MGM_W8,clk_delay);
   and MGM_G20(ENABLE_NOT_clk_AND_d,d_delay,MGM_W8);
   not MGM_G21(MGM_W9,d_delay);
   and MGM_G22(ENABLE_clk_AND_NOT_d,MGM_W9,clk_delay);
   and MGM_G23(ENABLE_clk_AND_d,d_delay,clk_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1 && rb==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1)
      // seq arc clk --> clkout
      (posedge clk => (clkout : d))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> clkout
      (negedge rb => (clkout +: 1'b0))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      negedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      posedge d &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-LH
      
      // setuphold d- clk-LH
      
      // recrem rb-clk-posedge
      $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0schp0f1ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stack
// 
// 
// assign `chp0f1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f1ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stack
// 
// 
// assign `chp0f1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f1ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stack
// 
// 
// assign `chp0f1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f1ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stack
// 
// 
// assign `chp0f1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f1ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stack
// 
// 
// assign `chp0f1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f1ab_func i0schp0f1ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f2ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0f2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f2ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0f2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f2ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0f2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f2ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0f2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f2ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0f2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f2ab_func i0schp0f2ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f3ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f3ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f3ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f3ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f3ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f3ab_func i0schp0f3ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f4ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f4ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f4ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f4ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f4ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0f4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f4ab_func i0schp0f4ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f5ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0f5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f5ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0f5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f5ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0f5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f5ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0f5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0f5ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nand clock chopperwith 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0f5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0f5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0f5ab_func i0schp0f5ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r1ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stack
// 
// 
// assign `chp0r1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r1ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stack
// 
// 
// assign `chp0r1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r1ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stack
// 
// 
// assign `chp0r1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r1ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stack
// 
// 
// assign `chp0r1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r1ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stack
// 
// 
// assign `chp0r1ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r1ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r1ab_func i0schp0r1ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r2ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0r2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r2ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0r2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r2ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0r2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r2ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0r2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r2ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 2 stage buffer with 1 stacked stage and side load
// 
// 
// assign `chp0r2ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r2ab_func i0schp0r2ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r3ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r3ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r3ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r3ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r3ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r3ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r3ab_func i0schp0r3ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r4ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0r4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r4ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0r4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r4ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0r4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r4ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0r4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r4ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 4 stage buffer with 1 stacked stage
// 
// 
// assign `chp0r4ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r4ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r4ab_func i0schp0r4ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r5ab1n02x4( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x4_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x4_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r5ab1n02x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n02x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r5ab1n04x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n04x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n04x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r5ab1n08x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n08x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n08x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n08x5_inst(.clk(clk),.clkout(clkout));
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


module i0schp0r5ab1n16x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// nor clock chopper with 6 stage buffer with 2 stacked stages
// 
// 
// assign `chp0r5ab_delay clkout =  ~clk;
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n16x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `chp0r5ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n16x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_chp0r5ab_func i0schp0r5ab1n16x5_inst(.clk(clk),.clkout(clkout));
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


module i0scilao5ab1n02x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n03x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n04x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n06x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n09x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n12x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n18x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n24x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilao5ab1n30x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk *(en + te) during low phase
// 
// 
// always @ (clk or en or te)
// begin
// if (!clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilao5ab_delay clkout =  IQ&clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n30x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n30x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilao5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n30x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilao5ab_func i0scilao5ab1n30x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-LH
      $setuphold(posedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb16ab1n03x5( clk, clkout, en, rb, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG AND with test enable and reset bar
// 
// 
// wire te_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign te_temp = 1'b0;
// `else
// assign te_temp = te;
// `endif
// always @ (clk or en)
// begin
// if (!clk)
// begin
// IQ <= ~en;
// end
// end
// 
// //Conformal complains inverted-equivalent on original SiS
// //assign clkout =  !IQ&clk&rb | clk&rb&te_temp;
// assign `cilb16ab_delay clkout =  (clk&!((!te_temp&IQ)|!rb));
// 

   input clk, en, rb, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.rb(rb),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb16ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.rb(rb),.te(te),.notifier(1'b0));
      assign `cilb16ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.rb(rb),.te(te),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.rb(rb),.te(te),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G47(MGM_W29,en_delay);
   not MGM_G48(MGM_W30,rb);
   and MGM_G49(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G50(MGM_W32,te);
   and MGM_G51(ENABLE_NOT_en_AND_NOT_rb_AND_NOT_te,MGM_W32,MGM_W31);
   not MGM_G52(MGM_W33,en_delay);
   not MGM_G53(MGM_W34,rb);
   and MGM_G54(MGM_W35,MGM_W34,MGM_W33);
   and MGM_G55(ENABLE_NOT_en_AND_NOT_rb_AND_te,te,MGM_W35);
   not MGM_G56(MGM_W36,en_delay);
   and MGM_G57(MGM_W37,rb,MGM_W36);
   not MGM_G58(MGM_W38,te);
   and MGM_G59(ENABLE_NOT_en_AND_rb_AND_NOT_te,MGM_W38,MGM_W37);
   not MGM_G60(MGM_W39,en_delay);
   and MGM_G61(MGM_W40,rb,MGM_W39);
   and MGM_G62(ENABLE_NOT_en_AND_rb_AND_te,te,MGM_W40);
   not MGM_G63(MGM_W41,rb);
   and MGM_G64(MGM_W42,MGM_W41,en_delay);
   not MGM_G65(MGM_W43,te);
   and MGM_G66(ENABLE_en_AND_NOT_rb_AND_NOT_te,MGM_W43,MGM_W42);
   not MGM_G67(MGM_W44,rb);
   and MGM_G68(MGM_W45,MGM_W44,en_delay);
   and MGM_G69(ENABLE_en_AND_NOT_rb_AND_te,te,MGM_W45);
   and MGM_G70(MGM_W46,rb,en_delay);
   not MGM_G71(MGM_W47,te);
   and MGM_G72(ENABLE_en_AND_rb_AND_NOT_te,MGM_W47,MGM_W46);
   and MGM_G73(MGM_W48,rb,en_delay);
   and MGM_G74(ENABLE_en_AND_rb_AND_te,te,MGM_W48);
   not MGM_G75(MGM_W49,rb);
   not MGM_G76(MGM_W50,te);
   and MGM_G77(ENABLE_NOT_rb_AND_NOT_te,MGM_W50,MGM_W49);
   not MGM_G78(MGM_W51,rb);
   and MGM_G79(ENABLE_NOT_rb_AND_te,te,MGM_W51);
   not MGM_G80(MGM_W52,te);
   and MGM_G81(ENABLE_rb_AND_NOT_te,MGM_W52,rb);
   and MGM_G82(ENABLE_rb_AND_te,te,rb);
   not MGM_G83(MGM_W53,en_delay);
   not MGM_G84(MGM_W54,te);
   and MGM_G85(ENABLE_NOT_en_AND_NOT_te,MGM_W54,MGM_W53);
   not MGM_G86(MGM_W55,en_delay);
   and MGM_G87(ENABLE_NOT_en_AND_te,te,MGM_W55);
   not MGM_G88(MGM_W56,te);
   and MGM_G89(ENABLE_en_AND_NOT_te,MGM_W56,en_delay);
   and MGM_G90(ENABLE_en_AND_te,te,en_delay);
   not MGM_G91(MGM_W57,en_delay);
   and MGM_G92(ENABLE_NOT_en_AND_rb,rb,MGM_W57);
   and MGM_G93(ENABLE_en_AND_rb,rb,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && rb==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && rb==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && rb==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b0)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b0)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b1)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b1)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b0)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b0)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b1)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b1)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && rb==1'b1)
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && rb==1'b1)
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && rb==1'b1)
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && rb==1'b1)
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      negedge en &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      posedge en &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      negedge en &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      posedge en &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      negedge en &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      posedge en &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_te == 1'b1),
      negedge en &&& (ENABLE_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_te == 1'b1),
      posedge en &&& (ENABLE_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      
      // setuphold en- clk-LH
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_NOT_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_NOT_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,posedge rb,0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,negedge rb,0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,
      posedge te &&& (ENABLE_NOT_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,
      negedge te &&& (ENABLE_NOT_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,
      posedge te &&& (ENABLE_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,
      negedge te &&& (ENABLE_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,posedge te,0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,negedge te,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb16ab1n06x5( clk, clkout, en, rb, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG AND with test enable and reset bar
// 
// 
// wire te_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign te_temp = 1'b0;
// `else
// assign te_temp = te;
// `endif
// always @ (clk or en)
// begin
// if (!clk)
// begin
// IQ <= ~en;
// end
// end
// 
// //Conformal complains inverted-equivalent on original SiS
// //assign clkout =  !IQ&clk&rb | clk&rb&te_temp;
// assign `cilb16ab_delay clkout =  (clk&!((!te_temp&IQ)|!rb));
// 

   input clk, en, rb, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.rb(rb),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb16ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.rb(rb),.te(te),.notifier(1'b0));
      assign `cilb16ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.rb(rb),.te(te),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.rb(rb),.te(te),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G47(MGM_W29,en_delay);
   not MGM_G48(MGM_W30,rb);
   and MGM_G49(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G50(MGM_W32,te);
   and MGM_G51(ENABLE_NOT_en_AND_NOT_rb_AND_NOT_te,MGM_W32,MGM_W31);
   not MGM_G52(MGM_W33,en_delay);
   not MGM_G53(MGM_W34,rb);
   and MGM_G54(MGM_W35,MGM_W34,MGM_W33);
   and MGM_G55(ENABLE_NOT_en_AND_NOT_rb_AND_te,te,MGM_W35);
   not MGM_G56(MGM_W36,en_delay);
   and MGM_G57(MGM_W37,rb,MGM_W36);
   not MGM_G58(MGM_W38,te);
   and MGM_G59(ENABLE_NOT_en_AND_rb_AND_NOT_te,MGM_W38,MGM_W37);
   not MGM_G60(MGM_W39,en_delay);
   and MGM_G61(MGM_W40,rb,MGM_W39);
   and MGM_G62(ENABLE_NOT_en_AND_rb_AND_te,te,MGM_W40);
   not MGM_G63(MGM_W41,rb);
   and MGM_G64(MGM_W42,MGM_W41,en_delay);
   not MGM_G65(MGM_W43,te);
   and MGM_G66(ENABLE_en_AND_NOT_rb_AND_NOT_te,MGM_W43,MGM_W42);
   not MGM_G67(MGM_W44,rb);
   and MGM_G68(MGM_W45,MGM_W44,en_delay);
   and MGM_G69(ENABLE_en_AND_NOT_rb_AND_te,te,MGM_W45);
   and MGM_G70(MGM_W46,rb,en_delay);
   not MGM_G71(MGM_W47,te);
   and MGM_G72(ENABLE_en_AND_rb_AND_NOT_te,MGM_W47,MGM_W46);
   and MGM_G73(MGM_W48,rb,en_delay);
   and MGM_G74(ENABLE_en_AND_rb_AND_te,te,MGM_W48);
   not MGM_G75(MGM_W49,rb);
   not MGM_G76(MGM_W50,te);
   and MGM_G77(ENABLE_NOT_rb_AND_NOT_te,MGM_W50,MGM_W49);
   not MGM_G78(MGM_W51,rb);
   and MGM_G79(ENABLE_NOT_rb_AND_te,te,MGM_W51);
   not MGM_G80(MGM_W52,te);
   and MGM_G81(ENABLE_rb_AND_NOT_te,MGM_W52,rb);
   and MGM_G82(ENABLE_rb_AND_te,te,rb);
   not MGM_G83(MGM_W53,en_delay);
   not MGM_G84(MGM_W54,te);
   and MGM_G85(ENABLE_NOT_en_AND_NOT_te,MGM_W54,MGM_W53);
   not MGM_G86(MGM_W55,en_delay);
   and MGM_G87(ENABLE_NOT_en_AND_te,te,MGM_W55);
   not MGM_G88(MGM_W56,te);
   and MGM_G89(ENABLE_en_AND_NOT_te,MGM_W56,en_delay);
   and MGM_G90(ENABLE_en_AND_te,te,en_delay);
   not MGM_G91(MGM_W57,en_delay);
   and MGM_G92(ENABLE_NOT_en_AND_rb,rb,MGM_W57);
   and MGM_G93(ENABLE_en_AND_rb,rb,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && rb==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && rb==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && rb==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b0)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b0)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b1)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b1)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b0)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b0)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b1)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b1)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && rb==1'b1)
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && rb==1'b1)
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && rb==1'b1)
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && rb==1'b1)
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      negedge en &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      posedge en &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      negedge en &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      posedge en &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      negedge en &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      posedge en &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_te == 1'b1),
      negedge en &&& (ENABLE_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_te == 1'b1),
      posedge en &&& (ENABLE_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      
      // setuphold en- clk-LH
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_NOT_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_NOT_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,posedge rb,0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,negedge rb,0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,
      posedge te &&& (ENABLE_NOT_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,
      negedge te &&& (ENABLE_NOT_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,
      posedge te &&& (ENABLE_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,
      negedge te &&& (ENABLE_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,posedge te,0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,negedge te,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb16ab1n09x5( clk, clkout, en, rb, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG AND with test enable and reset bar
// 
// 
// wire te_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign te_temp = 1'b0;
// `else
// assign te_temp = te;
// `endif
// always @ (clk or en)
// begin
// if (!clk)
// begin
// IQ <= ~en;
// end
// end
// 
// //Conformal complains inverted-equivalent on original SiS
// //assign clkout =  !IQ&clk&rb | clk&rb&te_temp;
// assign `cilb16ab_delay clkout =  (clk&!((!te_temp&IQ)|!rb));
// 

   input clk, en, rb, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.rb(rb),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb16ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.rb(rb),.te(te),.notifier(1'b0));
      assign `cilb16ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.rb(rb),.te(te),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb16ab_func i0scilb16ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.rb(rb),.te(te),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G47(MGM_W29,en_delay);
   not MGM_G48(MGM_W30,rb);
   and MGM_G49(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G50(MGM_W32,te);
   and MGM_G51(ENABLE_NOT_en_AND_NOT_rb_AND_NOT_te,MGM_W32,MGM_W31);
   not MGM_G52(MGM_W33,en_delay);
   not MGM_G53(MGM_W34,rb);
   and MGM_G54(MGM_W35,MGM_W34,MGM_W33);
   and MGM_G55(ENABLE_NOT_en_AND_NOT_rb_AND_te,te,MGM_W35);
   not MGM_G56(MGM_W36,en_delay);
   and MGM_G57(MGM_W37,rb,MGM_W36);
   not MGM_G58(MGM_W38,te);
   and MGM_G59(ENABLE_NOT_en_AND_rb_AND_NOT_te,MGM_W38,MGM_W37);
   not MGM_G60(MGM_W39,en_delay);
   and MGM_G61(MGM_W40,rb,MGM_W39);
   and MGM_G62(ENABLE_NOT_en_AND_rb_AND_te,te,MGM_W40);
   not MGM_G63(MGM_W41,rb);
   and MGM_G64(MGM_W42,MGM_W41,en_delay);
   not MGM_G65(MGM_W43,te);
   and MGM_G66(ENABLE_en_AND_NOT_rb_AND_NOT_te,MGM_W43,MGM_W42);
   not MGM_G67(MGM_W44,rb);
   and MGM_G68(MGM_W45,MGM_W44,en_delay);
   and MGM_G69(ENABLE_en_AND_NOT_rb_AND_te,te,MGM_W45);
   and MGM_G70(MGM_W46,rb,en_delay);
   not MGM_G71(MGM_W47,te);
   and MGM_G72(ENABLE_en_AND_rb_AND_NOT_te,MGM_W47,MGM_W46);
   and MGM_G73(MGM_W48,rb,en_delay);
   and MGM_G74(ENABLE_en_AND_rb_AND_te,te,MGM_W48);
   not MGM_G75(MGM_W49,rb);
   not MGM_G76(MGM_W50,te);
   and MGM_G77(ENABLE_NOT_rb_AND_NOT_te,MGM_W50,MGM_W49);
   not MGM_G78(MGM_W51,rb);
   and MGM_G79(ENABLE_NOT_rb_AND_te,te,MGM_W51);
   not MGM_G80(MGM_W52,te);
   and MGM_G81(ENABLE_rb_AND_NOT_te,MGM_W52,rb);
   and MGM_G82(ENABLE_rb_AND_te,te,rb);
   not MGM_G83(MGM_W53,en_delay);
   not MGM_G84(MGM_W54,te);
   and MGM_G85(ENABLE_NOT_en_AND_NOT_te,MGM_W54,MGM_W53);
   not MGM_G86(MGM_W55,en_delay);
   and MGM_G87(ENABLE_NOT_en_AND_te,te,MGM_W55);
   not MGM_G88(MGM_W56,te);
   and MGM_G89(ENABLE_en_AND_NOT_te,MGM_W56,en_delay);
   and MGM_G90(ENABLE_en_AND_te,te,en_delay);
   not MGM_G91(MGM_W57,en_delay);
   and MGM_G92(ENABLE_NOT_en_AND_rb,rb,MGM_W57);
   and MGM_G93(ENABLE_en_AND_rb,rb,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && rb==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && rb==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && rb==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && rb==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b0)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b0)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b1)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && te==1'b1)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b0)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b0)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b1)
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && te==1'b1)
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge rb --> clkout
      (negedge rb => (clkout:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge rb --> clkout
      (posedge rb => (clkout:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && rb==1'b1)
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b0 && rb==1'b1)
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && rb==1'b1)
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      if(clk==1'b1 && en==1'b1 && rb==1'b1)
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge te --> clkout
      (negedge te => (clkout:te)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge te --> clkout
      (posedge te => (clkout:te)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_NOT_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_en_AND_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_NOT_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_rb_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_en_AND_rb_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      negedge en &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      posedge en &&& (ENABLE_NOT_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      negedge en &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      posedge en &&& (ENABLE_NOT_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      negedge en &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      posedge en &&& (ENABLE_rb_AND_NOT_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_te == 1'b1),
      negedge en &&& (ENABLE_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb_AND_te == 1'b1),
      posedge en &&& (ENABLE_rb_AND_te == 1'b1),
      0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-LH
      
      // setuphold en- clk-LH
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_NOT_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_NOT_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_en_AND_NOT_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,
      posedge rb &&& (ENABLE_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,
      negedge rb &&& (ENABLE_en_AND_te == 1'b1),0.0,0.0, notifier);
      
      // nochange rb-LH clk-LH
      $nochange(posedge clk,posedge rb,0.0,0.0, notifier);
      
      // nochange rb-HL clk-LH
      $nochange(posedge clk,negedge rb,0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,
      posedge te &&& (ENABLE_NOT_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,
      negedge te &&& (ENABLE_NOT_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,
      posedge te &&& (ENABLE_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,
      negedge te &&& (ENABLE_en_AND_rb == 1'b1),0.0,0.0, notifier);
      
      // nochange te-LH clk-LH
      $nochange(posedge clk,posedge te,0.0,0.0, notifier);
      
      // nochange te-HL clk-LH
      $nochange(posedge clk,negedge te,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n02x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n03x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n04x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n06x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n09x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n12x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n18x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb81ab1n24x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb81ab_func i0scilb81ab1n24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n02x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n03x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n04x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n06x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n09x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n12x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n18x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb85ab1n24x5( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb85ab_delay clkout =  ~IQ | clk;
// 

   input clk, en, te;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb85ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilb85ab_func i0scilb85ab1n24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,en_delay);
   not MGM_G9(MGM_W5,te_delay);
   and MGM_G10(ENABLE_NOT_en_AND_NOT_te,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,en_delay);
   and MGM_G12(ENABLE_NOT_en_AND_te,te_delay,MGM_W6);
   not MGM_G13(MGM_W7,te_delay);
   and MGM_G14(ENABLE_en_AND_NOT_te,MGM_W7,en_delay);
   and MGM_G15(ENABLE_en_AND_te,te_delay,en_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b0 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && te==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b0 && te==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1d24x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d24x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1d30x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d30x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d30x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d30x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1d30x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n02x4( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x4_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x4_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n02x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n02x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n03x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n03x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n04x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n04x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n06x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n06x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n09x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n09x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n12x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n12x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilba5ab1n18x5( clk, clkout, enb, teb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (AOI latch implementation for low power) clkout = clk * !(enb & teb) during low phase
// 
// 
// wire teb_temp;
// `ifdef REMOVE_TEST_ENABLE
// assign teb_temp = 1'b1;
// `else
// assign teb_temp = teb;
// `endif
// always @ (clk or enb or teb_temp)
// begin
// if (!clk)
// begin
// IQ <= ~enb | ~teb_temp;
// end
// end
// 
// assign `cilba5ab_delay clkout =  IQ&clk;
// 

   input clk, enb, teb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire clkout_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(clkout_random_init)
         if((clkout_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign clkout = ((random_init_ctrl_gls === 1'b1) && (clkout_random_init === 1'bx)) ? init_val : clkout_random_init;
      `else
         assign clkout = clkout_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.teb(teb),.notifier(1'b0));
      assign `cilba5ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire enb_delay ;
   wire teb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cilba5ab_func i0scilba5ab1n18x5_inst(.clk(clk_delay),.clkout(clkout_random_init),.enb(enb_delay),.teb(teb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,enb_delay);
   not MGM_G9(MGM_W5,teb_delay);
   and MGM_G10(ENABLE_NOT_enb_AND_NOT_teb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,enb_delay);
   and MGM_G12(ENABLE_NOT_enb_AND_teb,teb_delay,MGM_W6);
   not MGM_G13(MGM_W7,teb_delay);
   and MGM_G14(ENABLE_enb_AND_NOT_teb,MGM_W7,enb_delay);
   and MGM_G15(ENABLE_enb_AND_teb,teb_delay,enb_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && teb==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b1 && teb==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_NOT_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_enb_AND_teb == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk,0.0,0,notifier);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,negedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold enb- clk-LH
      $setuphold(posedge clk,posedge enb,0.0,0.0,notifier,,,clk_delay,enb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,negedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      // setuphold teb- clk-LH
      $setuphold(posedge clk,posedge teb,0.0,0.0,notifier,,,clk_delay,teb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbna3ab1d12x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NAND3 with two enable signals
// 
// 
// assign `clbna3ab_delay clkout =  !clk | !en1 | !en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1d12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `clbna3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1d12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `clbna3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1d12x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1d12x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbna3ab1n02x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NAND3 with two enable signals
// 
// 
// assign `clbna3ab_delay clkout =  !clk | !en1 | !en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `clbna3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `clbna3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n02x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n02x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbna3ab1n03x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NAND3 with two enable signals
// 
// 
// assign `clbna3ab_delay clkout =  !clk | !en1 | !en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `clbna3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `clbna3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n03x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n03x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbna3ab1n04x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NAND3 with two enable signals
// 
// 
// assign `clbna3ab_delay clkout =  !clk | !en1 | !en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `clbna3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `clbna3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n04x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n04x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbna3ab1n06x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NAND3 with two enable signals
// 
// 
// assign `clbna3ab_delay clkout =  !clk | !en1 | !en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `clbna3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `clbna3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n06x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n06x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbna3ab1n09x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NAND3 with two enable signals
// 
// 
// assign `clbna3ab_delay clkout =  !clk | !en1 | !en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `clbna3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `clbna3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n09x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbna3ab_func i0sclbna3ab1n09x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b1)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b1)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbno3ab1d09x5( clk, clkout, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NOR3 with two enable signal
// 
// 
// assign `clbno3ab_delay clkout =  !clk&!enb1&!enb2;
// 

   input clk, enb1, enb2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1d09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
      assign `clbno3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1d09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2));
      assign `clbno3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1d09x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1d09x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      // nochange enb1-LH clk-HL
      $nochange(negedge clk,posedge enb1,0.0,0.0, notifier);
      
      // nochange enb1-HL clk-HL
      $nochange(negedge clk,negedge enb1,0.0,0.0, notifier);
      
      // nochange enb2-LH clk-HL
      $nochange(negedge clk,posedge enb2,0.0,0.0, notifier);
      
      // nochange enb2-HL clk-HL
      $nochange(negedge clk,negedge enb2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbno3ab1n02x5( clk, clkout, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NOR3 with two enable signal
// 
// 
// assign `clbno3ab_delay clkout =  !clk&!enb1&!enb2;
// 

   input clk, enb1, enb2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
      assign `clbno3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2));
      assign `clbno3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n02x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n02x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      // nochange enb1-LH clk-HL
      $nochange(negedge clk,posedge enb1,0.0,0.0, notifier);
      
      // nochange enb1-HL clk-HL
      $nochange(negedge clk,negedge enb1,0.0,0.0, notifier);
      
      // nochange enb2-LH clk-HL
      $nochange(negedge clk,posedge enb2,0.0,0.0, notifier);
      
      // nochange enb2-HL clk-HL
      $nochange(negedge clk,negedge enb2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbno3ab1n03x5( clk, clkout, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NOR3 with two enable signal
// 
// 
// assign `clbno3ab_delay clkout =  !clk&!enb1&!enb2;
// 

   input clk, enb1, enb2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
      assign `clbno3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2));
      assign `clbno3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n03x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n03x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      // nochange enb1-LH clk-HL
      $nochange(negedge clk,posedge enb1,0.0,0.0, notifier);
      
      // nochange enb1-HL clk-HL
      $nochange(negedge clk,negedge enb1,0.0,0.0, notifier);
      
      // nochange enb2-LH clk-HL
      $nochange(negedge clk,posedge enb2,0.0,0.0, notifier);
      
      // nochange enb2-HL clk-HL
      $nochange(negedge clk,negedge enb2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbno3ab1n04x5( clk, clkout, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NOR3 with two enable signal
// 
// 
// assign `clbno3ab_delay clkout =  !clk&!enb1&!enb2;
// 

   input clk, enb1, enb2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
      assign `clbno3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2));
      assign `clbno3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n04x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n04x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      // nochange enb1-LH clk-HL
      $nochange(negedge clk,posedge enb1,0.0,0.0, notifier);
      
      // nochange enb1-HL clk-HL
      $nochange(negedge clk,negedge enb1,0.0,0.0, notifier);
      
      // nochange enb2-LH clk-HL
      $nochange(negedge clk,posedge enb2,0.0,0.0, notifier);
      
      // nochange enb2-HL clk-HL
      $nochange(negedge clk,negedge enb2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclbno3ab1n06x5( clk, clkout, enb1, enb2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB NOR3 with two enable signal
// 
// 
// assign `clbno3ab_delay clkout =  !clk&!enb1&!enb2;
// 

   input clk, enb1, enb2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
      assign `clbno3ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb1(enb1),.enb2(enb2));
      assign `clbno3ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n06x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clbno3ab_func i0sclbno3ab1n06x5_inst(.clk(clk),.clkout(clkout),.enb1(enb1),.enb2(enb2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb1==1'b0 && enb2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb2==1'b0)
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb1 --> clkout
      (posedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb1 --> clkout
      (negedge enb1 => (clkout:enb1)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      if(clk==1'b0 && enb1==1'b0)
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb2 --> clkout
      (posedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb2 --> clkout
      (negedge enb2 => (clkout:enb2)) = (0.0,0.0);
      
      // nochange enb1-LH clk-HL
      $nochange(negedge clk,posedge enb1,0.0,0.0, notifier);
      
      // nochange enb1-HL clk-HL
      $nochange(negedge clk,negedge enb1,0.0,0.0, notifier);
      
      // nochange enb2-LH clk-HL
      $nochange(negedge clk,posedge enb2,0.0,0.0, notifier);
      
      // nochange enb2-HL clk-HL
      $nochange(negedge clk,negedge enb2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclcp15ab1d02x5( clk, clkout, rsel0, rsel1, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9, rsel10, rsel11, rsel12, rsel13, rsel14 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCP with 16 bit programmable delay
// 
// 
// buf `clcp15ab_delay (clkout, clk);
// 

   input clk, rsel0, rsel1, rsel10, rsel11, rsel12, rsel13, rsel14, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14),.vcc(vcc),.vssx(vssx));
      assign `clcp15ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14));
      assign `clcp15ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d02x5_inst(.clk(clk),.clkout(clkout),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d02x5_inst(.clk(clk),.clkout(clkout),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(rsel0==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclcp15ab1d06x5( clk, clkout, rsel0, rsel1, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9, rsel10, rsel11, rsel12, rsel13, rsel14 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCP with 16 bit programmable delay
// 
// 
// buf `clcp15ab_delay (clkout, clk);
// 

   input clk, rsel0, rsel1, rsel10, rsel11, rsel12, rsel13, rsel14, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14),.vcc(vcc),.vssx(vssx));
      assign `clcp15ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14));
      assign `clcp15ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d06x5_inst(.clk(clk),.clkout(clkout),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d06x5_inst(.clk(clk),.clkout(clkout),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(rsel0==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sclcp15ab1d24x5( clk, clkout, rsel0, rsel1, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9, rsel10, rsel11, rsel12, rsel13, rsel14 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCP with 16 bit programmable delay
// 
// 
// buf `clcp15ab_delay (clkout, clk);
// 

   input clk, rsel0, rsel1, rsel10, rsel11, rsel12, rsel13, rsel14, rsel2, rsel3, rsel4, rsel5, rsel6, rsel7, rsel8, rsel9;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14),.vcc(vcc),.vssx(vssx));
      assign `clcp15ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d24x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14));
      assign `clcp15ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d24x5_inst(.clk(clk),.clkout(clkout),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_clcp15ab_func i0sclcp15ab1d24x5_inst(.clk(clk),.clkout(clkout),.rsel0(rsel0),.rsel1(rsel1),.rsel2(rsel2),.rsel3(rsel3),.rsel4(rsel4),.rsel5(rsel5),.rsel6(rsel6),.rsel7(rsel7),.rsel8(rsel8),.rsel9(rsel9),.rsel10(rsel10),.rsel11(rsel11),.rsel12(rsel12),.rsel13(rsel13),.rsel14(rsel14));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(rsel0==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b0 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel10==1'b1 && rsel11==1'b1 && rsel12==1'b1 && rsel13==1'b1 && rsel14==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(rsel0==1'b1 && rsel1==1'b1 && rsel2==1'b1 && rsel3==1'b1 && rsel4==1'b1 && rsel5==1'b1 && rsel6==1'b1 && rsel7==1'b1 && rsel8==1'b1 && rsel9==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc02ab1d16x5( clka, clkb, clkout, ena, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 decoded clock mux
// 
// 
// assign `cmbc02ab_delay clkout =  clka&ena | clkb&enb;
// 

   input clka, clkb, ena, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d16x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d16x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d16x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d16x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb));
   `endif
   
   // spec_gates_begin
   not MGM_G16(MGM_W8,clkb);
   not MGM_G17(MGM_W9,enb);
   and MGM_G18(ENABLE_NOT_clkb_AND_NOT_enb,MGM_W9,MGM_W8);
   not MGM_G19(MGM_W10,clkb);
   and MGM_G20(ENABLE_NOT_clkb_AND_enb,enb,MGM_W10);
   not MGM_G21(MGM_W11,enb);
   and MGM_G22(ENABLE_clkb_AND_NOT_enb,MGM_W11,clkb);
   and MGM_G23(ENABLE_clkb_AND_enb,enb,clkb);
   not MGM_G24(MGM_W12,clka);
   not MGM_G25(MGM_W13,ena);
   and MGM_G26(ENABLE_NOT_clka_AND_NOT_ena,MGM_W13,MGM_W12);
   not MGM_G27(MGM_W14,clka);
   and MGM_G28(ENABLE_NOT_clka_AND_ena,ena,MGM_W14);
   not MGM_G29(MGM_W15,ena);
   and MGM_G30(ENABLE_clka_AND_NOT_ena,MGM_W15,clka);
   and MGM_G31(ENABLE_clka_AND_ena,ena,clka);
   // spec_gates_end
   specify


   // specify_block_begin
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,posedge ena,0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,negedge ena,0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,negedge enb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc02ab1d24x5( clka, clkb, clkout, ena, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 decoded clock mux
// 
// 
// assign `cmbc02ab_delay clkout =  clka&ena | clkb&enb;
// 

   input clka, clkb, ena, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d24x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d24x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d24x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1d24x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb));
   `endif
   
   // spec_gates_begin
   not MGM_G16(MGM_W8,clkb);
   not MGM_G17(MGM_W9,enb);
   and MGM_G18(ENABLE_NOT_clkb_AND_NOT_enb,MGM_W9,MGM_W8);
   not MGM_G19(MGM_W10,clkb);
   and MGM_G20(ENABLE_NOT_clkb_AND_enb,enb,MGM_W10);
   not MGM_G21(MGM_W11,enb);
   and MGM_G22(ENABLE_clkb_AND_NOT_enb,MGM_W11,clkb);
   and MGM_G23(ENABLE_clkb_AND_enb,enb,clkb);
   not MGM_G24(MGM_W12,clka);
   not MGM_G25(MGM_W13,ena);
   and MGM_G26(ENABLE_NOT_clka_AND_NOT_ena,MGM_W13,MGM_W12);
   not MGM_G27(MGM_W14,clka);
   and MGM_G28(ENABLE_NOT_clka_AND_ena,ena,MGM_W14);
   not MGM_G29(MGM_W15,ena);
   and MGM_G30(ENABLE_clka_AND_NOT_ena,MGM_W15,clka);
   and MGM_G31(ENABLE_clka_AND_ena,ena,clka);
   // spec_gates_end
   specify


   // specify_block_begin
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,posedge ena,0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,negedge ena,0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,negedge enb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc02ab1n02x5( clka, clkb, clkout, ena, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 decoded clock mux
// 
// 
// assign `cmbc02ab_delay clkout =  clka&ena | clkb&enb;
// 

   input clka, clkb, ena, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n02x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n02x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n02x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n02x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb));
   `endif
   
   // spec_gates_begin
   not MGM_G16(MGM_W8,clkb);
   not MGM_G17(MGM_W9,enb);
   and MGM_G18(ENABLE_NOT_clkb_AND_NOT_enb,MGM_W9,MGM_W8);
   not MGM_G19(MGM_W10,clkb);
   and MGM_G20(ENABLE_NOT_clkb_AND_enb,enb,MGM_W10);
   not MGM_G21(MGM_W11,enb);
   and MGM_G22(ENABLE_clkb_AND_NOT_enb,MGM_W11,clkb);
   and MGM_G23(ENABLE_clkb_AND_enb,enb,clkb);
   not MGM_G24(MGM_W12,clka);
   not MGM_G25(MGM_W13,ena);
   and MGM_G26(ENABLE_NOT_clka_AND_NOT_ena,MGM_W13,MGM_W12);
   not MGM_G27(MGM_W14,clka);
   and MGM_G28(ENABLE_NOT_clka_AND_ena,ena,MGM_W14);
   not MGM_G29(MGM_W15,ena);
   and MGM_G30(ENABLE_clka_AND_NOT_ena,MGM_W15,clka);
   and MGM_G31(ENABLE_clka_AND_ena,ena,clka);
   // spec_gates_end
   specify


   // specify_block_begin
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,posedge ena,0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,negedge ena,0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,negedge enb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc02ab1n04x5( clka, clkb, clkout, ena, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 decoded clock mux
// 
// 
// assign `cmbc02ab_delay clkout =  clka&ena | clkb&enb;
// 

   input clka, clkb, ena, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n04x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n04x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n04x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n04x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb));
   `endif
   
   // spec_gates_begin
   not MGM_G16(MGM_W8,clkb);
   not MGM_G17(MGM_W9,enb);
   and MGM_G18(ENABLE_NOT_clkb_AND_NOT_enb,MGM_W9,MGM_W8);
   not MGM_G19(MGM_W10,clkb);
   and MGM_G20(ENABLE_NOT_clkb_AND_enb,enb,MGM_W10);
   not MGM_G21(MGM_W11,enb);
   and MGM_G22(ENABLE_clkb_AND_NOT_enb,MGM_W11,clkb);
   and MGM_G23(ENABLE_clkb_AND_enb,enb,clkb);
   not MGM_G24(MGM_W12,clka);
   not MGM_G25(MGM_W13,ena);
   and MGM_G26(ENABLE_NOT_clka_AND_NOT_ena,MGM_W13,MGM_W12);
   not MGM_G27(MGM_W14,clka);
   and MGM_G28(ENABLE_NOT_clka_AND_ena,ena,MGM_W14);
   not MGM_G29(MGM_W15,ena);
   and MGM_G30(ENABLE_clka_AND_NOT_ena,MGM_W15,clka);
   and MGM_G31(ENABLE_clka_AND_ena,ena,clka);
   // spec_gates_end
   specify


   // specify_block_begin
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,posedge ena,0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,negedge ena,0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,negedge enb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc02ab1n08x5( clka, clkb, clkout, ena, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 decoded clock mux
// 
// 
// assign `cmbc02ab_delay clkout =  clka&ena | clkb&enb;
// 

   input clka, clkb, ena, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n08x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n08x5_behav_inst(.clka(clka),.clkb(clkb),.clkout(clkout_tmp),.ena(ena),.enb(enb));
      assign `cmbc02ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n08x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc02ab_func i0scmbc02ab1n08x5_inst(.clka(clka),.clkb(clkb),.clkout(clkout),.ena(ena),.enb(enb));
   `endif
   
   // spec_gates_begin
   not MGM_G16(MGM_W8,clkb);
   not MGM_G17(MGM_W9,enb);
   and MGM_G18(ENABLE_NOT_clkb_AND_NOT_enb,MGM_W9,MGM_W8);
   not MGM_G19(MGM_W10,clkb);
   and MGM_G20(ENABLE_NOT_clkb_AND_enb,enb,MGM_W10);
   not MGM_G21(MGM_W11,enb);
   and MGM_G22(ENABLE_clkb_AND_NOT_enb,MGM_W11,clkb);
   and MGM_G23(ENABLE_clkb_AND_enb,enb,clkb);
   not MGM_G24(MGM_W12,clka);
   not MGM_G25(MGM_W13,ena);
   and MGM_G26(ENABLE_NOT_clka_AND_NOT_ena,MGM_W13,MGM_W12);
   not MGM_G27(MGM_W14,clka);
   and MGM_G28(ENABLE_NOT_clka_AND_ena,ena,MGM_W14);
   not MGM_G29(MGM_W15,ena);
   and MGM_G30(ENABLE_clka_AND_NOT_ena,MGM_W15,clka);
   and MGM_G31(ENABLE_clka_AND_ena,ena,clka);
   // spec_gates_end
   specify


   // specify_block_begin
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clkb==1'b1 && ena==1'b1 && enb==1'b0)
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clka --> clkout
      (negedge clka => (clkout:clka)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clka --> clkout
      (posedge clka => (clkout:clka)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b0 && ena==1'b1 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && ena==1'b0 && enb==1'b1)
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clkb --> clkout
      (negedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clkb --> clkout
      (posedge clkb => (clkout:clkb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b0 && enb==1'b1)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && enb==1'b0)
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge ena --> clkout
      (negedge ena => (clkout:ena)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge ena --> clkout
      (posedge ena => (clkout:ena)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b0 && clkb==1'b1 && ena==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clka==1'b1 && clkb==1'b1 && ena==1'b0)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_NOT_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_NOT_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,
      posedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,
      negedge ena &&& (ENABLE_clkb_AND_enb == 1'b1),0.0,0.0, notifier);
      
      // nochange ena-LH clka-LH
      $nochange(posedge clka,posedge ena,0.0,0.0, notifier);
      
      // nochange ena-HL clka-LH
      $nochange(posedge clka,negedge ena,0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_NOT_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_NOT_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,
      posedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,
      negedge enb &&& (ENABLE_clka_AND_ena == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clkb-LH
      $nochange(posedge clkb,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clkb-LH
      $nochange(posedge clkb,negedge enb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc24ab1d03x5( clk1, clk2, clk3, clk4, clkout, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded clock mux INV-PG-INV
// 
// 
// assign `cmbc24ab_delay clkout =  sb ? int2 : int1;
// assign  int1 =  sa ? clk2 : clk1;
// assign  int2 =  sa ? clk4 : clk3;
// 

   input clk1, clk2, clk3, clk4, sa, sb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d03x5_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `cmbc24ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d03x5_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb));
      assign `cmbc24ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d03x5_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d03x5_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (clkout:sa)
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (clkout:sa)
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sb --> (clkout:sb)
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sb --> (clkout:sb)
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      // nochange sa-LH clk1-LH
      $nochange(posedge clk1,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk1-LH
      $nochange(posedge clk1,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk2-LH
      $nochange(posedge clk2,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk2-LH
      $nochange(posedge clk2,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk3-LH
      $nochange(posedge clk3,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk3-LH
      $nochange(posedge clk3,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk4-LH
      $nochange(posedge clk4,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk4-LH
      $nochange(posedge clk4,negedge sa,0.0,0.0, notifier);
      
      // nochange sb-LH clk1-LH
      $nochange(posedge clk1,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk1-LH
      $nochange(posedge clk1,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk2-LH
      $nochange(posedge clk2,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk2-LH
      $nochange(posedge clk2,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk3-LH
      $nochange(posedge clk3,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk3-LH
      $nochange(posedge clk3,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk4-LH
      $nochange(posedge clk4,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk4-LH
      $nochange(posedge clk4,negedge sb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc24ab1d06x5( clk1, clk2, clk3, clk4, clkout, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded clock mux INV-PG-INV
// 
// 
// assign `cmbc24ab_delay clkout =  sb ? int2 : int1;
// assign  int1 =  sa ? clk2 : clk1;
// assign  int2 =  sa ? clk4 : clk3;
// 

   input clk1, clk2, clk3, clk4, sa, sb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d06x5_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `cmbc24ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d06x5_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb));
      assign `cmbc24ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d06x5_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d06x5_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (clkout:sa)
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (clkout:sa)
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sb --> (clkout:sb)
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sb --> (clkout:sb)
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      // nochange sa-LH clk1-LH
      $nochange(posedge clk1,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk1-LH
      $nochange(posedge clk1,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk2-LH
      $nochange(posedge clk2,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk2-LH
      $nochange(posedge clk2,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk3-LH
      $nochange(posedge clk3,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk3-LH
      $nochange(posedge clk3,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk4-LH
      $nochange(posedge clk4,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk4-LH
      $nochange(posedge clk4,negedge sa,0.0,0.0, notifier);
      
      // nochange sb-LH clk1-LH
      $nochange(posedge clk1,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk1-LH
      $nochange(posedge clk1,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk2-LH
      $nochange(posedge clk2,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk2-LH
      $nochange(posedge clk2,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk3-LH
      $nochange(posedge clk3,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk3-LH
      $nochange(posedge clk3,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk4-LH
      $nochange(posedge clk4,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk4-LH
      $nochange(posedge clk4,negedge sb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc24ab1d12x5( clk1, clk2, clk3, clk4, clkout, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded clock mux INV-PG-INV
// 
// 
// assign `cmbc24ab_delay clkout =  sb ? int2 : int1;
// assign  int1 =  sa ? clk2 : clk1;
// assign  int2 =  sa ? clk4 : clk3;
// 

   input clk1, clk2, clk3, clk4, sa, sb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d12x5_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `cmbc24ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d12x5_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb));
      assign `cmbc24ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d12x5_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cmbc24ab_func i0scmbc24ab1d12x5_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (clkout:sa)
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (clkout:sa)
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sb --> (clkout:sb)
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sb --> (clkout:sb)
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      // nochange sa-LH clk1-LH
      $nochange(posedge clk1,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk1-LH
      $nochange(posedge clk1,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk2-LH
      $nochange(posedge clk2,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk2-LH
      $nochange(posedge clk2,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk3-LH
      $nochange(posedge clk3,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk3-LH
      $nochange(posedge clk3,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk4-LH
      $nochange(posedge clk4,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk4-LH
      $nochange(posedge clk4,negedge sa,0.0,0.0, notifier);
      
      // nochange sb-LH clk1-LH
      $nochange(posedge clk1,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk1-LH
      $nochange(posedge clk1,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk2-LH
      $nochange(posedge clk2,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk2-LH
      $nochange(posedge clk2,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk3-LH
      $nochange(posedge clk3,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk3-LH
      $nochange(posedge clk3,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk4-LH
      $nochange(posedge clk4,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk4-LH
      $nochange(posedge clk4,negedge sb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scoai12ab1n02x4( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OAI clockgate with two enable signal
// 
// 
// assign `coai12ab_delay clkout =  !clk | !en1&!en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `coai12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x4_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `coai12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x4_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x4_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scoai12ab1n02x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OAI clockgate with two enable signal
// 
// 
// assign `coai12ab_delay clkout =  !clk | !en1&!en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `coai12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `coai12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n02x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scoai12ab1n03x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OAI clockgate with two enable signal
// 
// 
// assign `coai12ab_delay clkout =  !clk | !en1&!en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `coai12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `coai12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n03x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n03x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scoai12ab1n04x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OAI clockgate with two enable signal
// 
// 
// assign `coai12ab_delay clkout =  !clk | !en1&!en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `coai12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `coai12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n04x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n04x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scoai12ab1n06x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OAI clockgate with two enable signal
// 
// 
// assign `coai12ab_delay clkout =  !clk | !en1&!en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `coai12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `coai12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n06x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n06x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scoai12ab1n09x5( clk, clkout, en1, en2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OAI clockgate with two enable signal
// 
// 
// assign `coai12ab_delay clkout =  !clk | !en1&!en2;
// 

   input clk, en1, en2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
      assign `coai12ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en1(en1),.en2(en2));
      assign `coai12ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n09x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_coai12ab_func i0scoai12ab1n09x5_inst(.clk(clk),.clkout(clkout),.en1(en1),.en2(en2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en1==1'b0 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b0 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en1==1'b1 && en2==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en2==1'b0)
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en1 --> clkout
      (posedge en1 => (clkout:en1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en1 --> clkout
      (negedge en1 => (clkout:en1)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      if(clk==1'b1 && en1==1'b0)
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en2 --> clkout
      (posedge en2 => (clkout:en2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en2 --> clkout
      (negedge en2 => (clkout:en2)) = (0.0,0.0);
      
      // nochange en1-LH clk-LH
      $nochange(posedge clk,posedge en1,0.0,0.0, notifier);
      
      // nochange en1-HL clk-LH
      $nochange(posedge clk,negedge en1,0.0,0.0, notifier);
      
      // nochange en2-LH clk-LH
      $nochange(posedge clk,posedge en2,0.0,0.0, notifier);
      
      // nochange en2-HL clk-LH
      $nochange(posedge clk,negedge en2,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n02x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n02x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n02x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n02x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n02x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n03x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n03x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n03x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n03x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n03x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n04x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n04x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n04x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n04x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n04x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n06x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n06x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n06x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n06x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n06x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n09x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n09x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n09x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n09x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n09x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n12x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n12x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n12x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n12x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n12x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n15x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n15x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n15x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n15x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n15x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n18x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n18x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n18x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n18x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n18x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n24x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n24x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n24x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n24x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n24x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scor0c2ab1n30x5( clk1, clk2, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Dual clock OR2
// 
// 
// assign `cor0c2ab_delay clkout =  clk1 | clk2;
// 

   input clk1, clk2;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n30x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n30x5_behav_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout_tmp));
      assign `cor0c2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n30x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cor0c2ab_func i0scor0c2ab1n30x5_inst(.clk1(clk1),.clk2(clk2),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n02x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n02x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n02x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n03x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n04x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n06x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n09x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n12x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0a2ab1n18x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// AND type clock RCB with debug pins
// 
// 
// assign `crb0a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb0a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0a2ab_func i0scrb0a2ab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n02x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n02x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n02x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n03x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n04x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n06x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n09x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n12x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0bfab1n18x5( clk, clkout, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb0bfab_delay (clkout, clk);
// 

   input clk, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0bfab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd(fd),.rd(rd));
      assign `crb0bfab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0bfab_func i0scrb0bfab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,negedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk,posedge fd,0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,negedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk,posedge rd,0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n02x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n02x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n02x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n03x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n04x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n06x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n09x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n12x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb0o2ab1n18x5( clk, clkout, enb, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// OR type clock RCB with debug pin
// 
// 
// assign `crb0o2ab_delay clkout =  clk | enb;
// 

   input clk, enb, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.fd(fd),.rd(rd));
      assign `crb0o2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb0o2ab_func i0scrb0o2ab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.enb(enb),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   not MGM_G5(ENABLE_NOT_enb,enb);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      if(clk==1'b0 && fd==1'b0 && rd==1'b1)
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge enb --> clkout
      (negedge enb => (clkout:enb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge enb --> clkout
      (posedge enb => (clkout:enb)) = (0.0,0.0);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,
      posedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,
      negedge enb &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange enb-LH clk-HL
      $nochange(negedge clk,posedge enb,0.0,0.0, notifier);
      
      // nochange enb-HL clk-HL
      $nochange(negedge clk,negedge enb,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge fd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      negedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_enb == 1'b1),
      posedge rd &&& (ENABLE_NOT_enb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb1a2ab1n03x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb1a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n03x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb1a2ab1n04x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb1a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n04x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb1a2ab1n06x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb1a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n06x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb1a2ab1n09x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb1a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n09x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb1a2ab1n12x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb1a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n12x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb1a2ab1n18x5( clk, clkout, en, fd, rd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb1a2ab_delay clkout =  clk&en;
// 

   input clk, en, fd, rd;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd),.vcc(vcc),.vssx(vssx));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd(fd),.rd(rd));
      assign `crb1a2ab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd_delay ;
   wire rd_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_crb1a2ab_func i0scrb1a2ab1n18x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd(fd_delay),.rd(rd_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G3(MGM_W1,fd_delay);
   and MGM_G4(ENABLE_NOT_fd_AND_rd,rd_delay,MGM_W1);
   buf MGM_G5(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd==1'b0 && rd==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd_AND_rd == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd_delay);
      
      // setuphold fd- clk-HL
      
      // setuphold fd- clk-HL
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd_delay);
      
      // setuphold rd- clk-LH
      
      // setuphold rd- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




