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
     `ifndef lsn010ab_delay
        `define lsn010ab_delay `seq_delay_value
     `endif
     `ifndef lsn090ab_delay
        `define lsn090ab_delay `seq_delay_value
     `endif
     `ifndef lsn210ab_delay
        `define lsn210ab_delay `seq_delay_value
     `endif
     `ifndef lsn290ab_delay
        `define lsn290ab_delay `seq_delay_value
     `endif
     `ifndef lsz000ab_delay
        `define lsz000ab_delay `seq_delay_value
     `endif
     `ifndef lsz003ab_delay
        `define lsz003ab_delay `seq_delay_value
     `endif
     `ifndef lsz008ab_delay
        `define lsz008ab_delay `seq_delay_value
     `endif
     `ifndef lsz200ab_delay
        `define lsz200ab_delay `seq_delay_value
     `endif
     `ifndef lsz400ab_delay
        `define lsz400ab_delay `seq_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0( MGM_EN0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_EN0;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc, vssx: MGM_EN0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //clk: MGM_EN0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1( MGM_D0, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func( clk, d, ob, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, notifier;
   output ob;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst2( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst4( ob, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst2( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst4( ob, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func( clkb, d, ob, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clkb, d, notifier;
   output ob;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst1( MGM_EN0, clkb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst2( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst4( ob, IQ1, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst1( MGM_EN0, clkb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst2( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst4( ob, IQ1 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func( clk, d1, d2, ob1, ob2, notifier0, notifier1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d1, d2, notifier0, notifier1;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst2( MGM_D0, d1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst5( MGM_D1, d2, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst7( ob1, IQ1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst8( ob2, IQ2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst2( MGM_D0, d1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst5( MGM_D1, d2 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst7( ob1, IQ1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst8( ob2, IQ2 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func( clkb, d1, d2, ob1, ob2, notifier0, notifier1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clkb, d1, d2, notifier0, notifier1;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst1( MGM_EN0, clkb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst2( MGM_D0, d1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst4( MGM_EN1, clkb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst5( MGM_D1, d2, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst7( ob1, IQ1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst8( ob2, IQ2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst1( MGM_EN0, clkb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst2( MGM_D0, d1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst4( MGM_EN1, clkb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_0 inst5( MGM_D1, d2 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst7( ob1, IQ1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_1 inst8( ob2, IQ2 );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_0( clkout, clk, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, enb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, enb vcc, vssx: clkout
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //clk, enb: clkout
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_3( clkout, int1, int2, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func( clk, d, o, si, so, ssb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, si, ssb, notifier;
   output o, so;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_0 inst1( MGM_EN0, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst2( MGM_D0, si, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_3 inst5( MGM_D1, IQ1, d, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst7( o, IQ, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst8( so, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_0 inst1( MGM_EN0, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst2( MGM_D0, si );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_3 inst5( MGM_D1, IQ1, d, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst7( o, IQ );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_1 inst8( so, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_0( MGM_EN0, clk, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_EN0;
  input clk, ssb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, ssb vcc, vssx: MGM_EN0
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //clk, ssb: MGM_EN0
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1( MGM_D0, si `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input si;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //si vcc, vssx: MGM_D0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //si: MGM_D0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_3( MGM_D1, IQ1, ssb, d, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D1;
  input IQ1, ssb, d, rb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ1, ssb, d, rb vcc, vssx: MGM_D1
    1  0  ?  ?  1  0: 1;
    ?  1  1  1  1  0: 1;
    0  ?  0  ?  1  0: 0;
    0  ?  ?  0  1  0: 0;
    0  0  ?  ?  1  0: 0;
    ?  1  0  ?  1  0: 0;
    ?  1  ?  0  1  0: 0;
  `else
  //IQ1, ssb, d, rb: MGM_D1
    1  0  ?  ?: 1;
    ?  1  1  1: 1;
    0  ?  0  ?: 0;
    0  ?  ?  0: 0;
    0  0  ?  ?: 0;
    ?  1  0  ?: 0;
    ?  1  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func( clk, d, o, rb, si, so, ssb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, si, ssb, notifier;
   output o, so;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_0 inst1( MGM_EN0, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst2( MGM_D0, si, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_3 inst5( MGM_D1, IQ1, ssb, d, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst7( o, IQ, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst8( so, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_0 inst1( MGM_EN0, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst2( MGM_D0, si );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_3 inst5( MGM_D1, IQ1, ssb, d, rb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst7( o, IQ );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_1 inst8( so, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_0( MGM_EN0, clk, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_EN0;
  input clk, ssb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, ssb vcc, vssx: MGM_EN0
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //clk, ssb: MGM_EN0
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1( MGM_D0, si `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input si;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //si vcc, vssx: MGM_D0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //si: MGM_D0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_3( MGM_D1, IQ1, d, s, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D1;
  input IQ1, d, s, ssb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ1, d, s, ssb vcc, vssx: MGM_D1
    1  1  ?  ?  1  0: 1;
    1  ?  1  ?  1  0: 1;
    1  ?  ?  0  1  0: 1;
    ?  1  ?  1  1  0: 1;
    ?  ?  1  1  1  0: 1;
    0  ?  ?  0  1  0: 0;
    ?  0  0  1  1  0: 0;
  `else
  //IQ1, d, s, ssb: MGM_D1
    1  1  ?  ?: 1;
    1  ?  1  ?: 1;
    1  ?  ?  0: 1;
    ?  1  ?  1: 1;
    ?  ?  1  1: 1;
    0  ?  ?  0: 0;
    ?  0  0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func( clk, d, o, s, si, so, ssb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, s, si, ssb, notifier;
   output o, so;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_0 inst1( MGM_EN0, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst2( MGM_D0, si, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_3 inst5( MGM_D1, IQ1, d, s, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst7( o, IQ, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst8( so, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_0 inst1( MGM_EN0, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst2( MGM_D0, si );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_3 inst5( MGM_D1, IQ1, d, s, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst7( o, IQ );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_1 inst8( so, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_0( clkout, clk, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, enb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, enb vcc, vssx: clkout
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //clk, enb: clkout
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1( clkout, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_4( MGM_D1, IQ1_master, d1, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D1;
  input IQ1_master, d1, ssb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ1_master, d1, ssb vcc, vssx: MGM_D1
    1  0  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  0  1  1  0: 1;
    0  1  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //IQ1_master, d1, ssb: MGM_D1
    1  0  ?: 1;
    1  ?  0: 1;
    ?  0  1: 1;
    0  1  ?: 0;
    0  ?  0: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func( clk, d1, d2, o1, o2, si, so, ssb, notifier, notifier0, notifier1, notifier2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d1, d2, si, ssb, notifier, notifier0, notifier1, notifier2;
   output o1, o2, so;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_0 inst1( MGM_EN0, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst2( MGM_D0, si, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst3( IQ1_master, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_4 inst5( MGM_D1, IQ1_master, d1, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst6( IQ1_slave, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_0 inst7( MGM_EN2, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3 inst8( MGM_D2, IQ1_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst9( IQ2_master, 1'b0, 1'b0, MGM_EN2, MGM_D2, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3 inst10( MGM_EN3, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_4 inst11( MGM_D3, IQ2_master, d2, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst12( IQ2_slave, 1'b0, 1'b0, MGM_EN3, MGM_D3, vcc, vssx, notifier2 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst13( o1, IQ1_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst14( o2, IQ2_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst15( so, IQ2_slave, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_0 inst1( MGM_EN0, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst2( MGM_D0, si );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst3( IQ1_master, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_4 inst5( MGM_D1, IQ1_master, d1, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst6( IQ1_slave, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_0 inst7( MGM_EN2, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3 inst8( MGM_D2, IQ1_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst9( IQ2_master, 1'b0, 1'b0, MGM_EN2, MGM_D2, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_3 inst10( MGM_EN3, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_4 inst11( MGM_D3, IQ2_master, d2, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_2 inst12( IQ2_slave, 1'b0, 1'b0, MGM_EN3, MGM_D3, notifier2 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst13( o1, IQ1_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst14( o2, IQ2_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_1 inst15( so, IQ2_slave );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0( clkout, clk, enb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, enb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, enb vcc, vssx: clkout
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //clk, enb: clkout
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1( clkout, clk `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
  output clkout;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc_in, vssx: clkout
    0  1  0: 1;
    1  1  0: 0;
  `else
  //clk: clkout
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4( MGM_D1, IQ1_master, d1, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D1;
  input IQ1_master, d1, ssb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ1_master, d1, ssb vcc, vssx: MGM_D1
    1  0  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  0  1  1  0: 1;
    0  1  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //IQ1_master, d1, ssb: MGM_D1
    1  0  ?: 1;
    1  ?  0: 1;
    ?  0  1: 1;
    0  1  ?: 0;
    0  ?  0: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func( clk, d1, d2, d3, d4, o1, o2, o3, o4, si, so, ssb, notifier, notifier0, notifier1, notifier2, notifier3, notifier4 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d1, d2, d3, d4, si, ssb, notifier, notifier0, notifier1, notifier2, notifier3, notifier4;
   output o1, o2, o3, o4, so;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst1( MGM_EN0, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst2( MGM_D0, si, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst3( IQ1_master, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst5( MGM_D1, IQ1_master, d1, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst6( IQ1_slave, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst7( MGM_EN2, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst8( MGM_D2, IQ1_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst9( IQ2_master, 1'b0, 1'b0, MGM_EN2, MGM_D2, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst10( MGM_EN3, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst11( MGM_D3, IQ2_master, d2, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst12( IQ2_slave, 1'b0, 1'b0, MGM_EN3, MGM_D3, vcc, vssx, notifier2 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst13( MGM_EN4, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst14( MGM_D4, IQ2_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst15( IQ3_master, 1'b0, 1'b0, MGM_EN4, MGM_D4, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst16( MGM_EN5, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst17( MGM_D5, IQ3_master, d3, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst18( IQ3_slave, 1'b0, 1'b0, MGM_EN5, MGM_D5, vcc, vssx, notifier3 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst19( MGM_EN6, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst20( MGM_D6, IQ3_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst21( IQ4_master, 1'b0, 1'b0, MGM_EN6, MGM_D6, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst22( MGM_EN7, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst23( MGM_D7, IQ4_master, d4, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst24( IQ4_slave, 1'b0, 1'b0, MGM_EN7, MGM_D7, vcc, vssx, notifier4 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst25( o1, IQ1_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst26( o2, IQ2_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst27( o3, IQ3_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst28( o4, IQ4_slave, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst29( so, IQ4_slave, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst1( MGM_EN0, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst2( MGM_D0, si );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst3( IQ1_master, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst5( MGM_D1, IQ1_master, d1, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst6( IQ1_slave, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst7( MGM_EN2, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst8( MGM_D2, IQ1_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst9( IQ2_master, 1'b0, 1'b0, MGM_EN2, MGM_D2, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst10( MGM_EN3, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst11( MGM_D3, IQ2_master, d2, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst12( IQ2_slave, 1'b0, 1'b0, MGM_EN3, MGM_D3, notifier2 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst13( MGM_EN4, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst14( MGM_D4, IQ2_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst15( IQ3_master, 1'b0, 1'b0, MGM_EN4, MGM_D4, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst16( MGM_EN5, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst17( MGM_D5, IQ3_master, d3, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst18( IQ3_slave, 1'b0, 1'b0, MGM_EN5, MGM_D5, notifier3 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_0 inst19( MGM_EN6, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst20( MGM_D6, IQ3_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst21( IQ4_master, 1'b0, 1'b0, MGM_EN6, MGM_D6, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_3 inst22( MGM_EN7, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_4 inst23( MGM_D7, IQ4_master, d4, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_2 inst24( IQ4_slave, 1'b0, 1'b0, MGM_EN7, MGM_D7, notifier4 );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst25( o1, IQ1_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst26( o2, IQ2_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst27( o3, IQ3_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst28( o4, IQ4_slave );
   INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_1 inst29( so, IQ4_slave );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0slsn010ab1n01x1( clk, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// active-high non-inverting latch
// 
// 
// always @ (clk or d)
// begin
// if (clk)
// begin
// IQ <= ~d;
// end
// end
// 
// assign `lsn010ab_delay ob =  IQ;
// 

   input clk, d;
   output ob;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob_random_init)
         if((ob_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob = ((random_init_ctrl_gls === 1'b1) && (ob_random_init === 1'bx)) ? init_val : ob_random_init;
      `else
         assign ob = ob_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n01x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn010ab_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n01x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lsn010ab_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n01x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n01x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G418(ENABLE_NOT_d,d_delay);
   buf MGM_G419(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1)
      // seq arc clk --> ob
      (posedge clk => (ob : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> ob
      (posedge clk => (ob : d))  = (0.0,0.0);
      
      if(d==1'b0)
      // seq arc clk --> ob
      (posedge clk => (ob : d))  = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk,negedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk,posedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn010ab1n02x1( clk, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// active-high non-inverting latch
// 
// 
// always @ (clk or d)
// begin
// if (clk)
// begin
// IQ <= ~d;
// end
// end
// 
// assign `lsn010ab_delay ob =  IQ;
// 

   input clk, d;
   output ob;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob_random_init)
         if((ob_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob = ((random_init_ctrl_gls === 1'b1) && (ob_random_init === 1'bx)) ? init_val : ob_random_init;
      `else
         assign ob = ob_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n02x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn010ab_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n02x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lsn010ab_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n02x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn010ab_func i0slsn010ab1n02x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G418(ENABLE_NOT_d,d_delay);
   buf MGM_G419(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b1)
      // seq arc clk --> ob
      (posedge clk => (ob : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> ob
      (posedge clk => (ob : d))  = (0.0,0.0);
      
      if(d==1'b0)
      // seq arc clk --> ob
      (posedge clk => (ob : d))  = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk,negedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk,posedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn090ab1n01x1( clkb, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// DFF with rising edge clock q output
// 
// 
// always @ (clkb or d)
// begin
// if (!clkb)
// begin
// IQ1 <= d;
// end
// end
// 
// assign `lsn090ab_delay ob =  ~IQ1;
// 

   input clkb, d;
   output ob;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob_random_init)
         if((ob_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob = ((random_init_ctrl_gls === 1'b1) && (ob_random_init === 1'bx)) ? init_val : ob_random_init;
      `else
         assign ob = ob_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n01x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn090ab_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n01x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lsn090ab_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clkb_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n01x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n01x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G2(ENABLE_NOT_d,d_delay);
   buf MGM_G3(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0)
      // seq arc clkb --> ob
      (negedge clkb => (ob : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob
      (negedge clkb => (ob : d))  = (0.0,0.0);
      
      if(d==1'b1)
      // seq arc clkb --> ob
      (negedge clkb => (ob : d))  = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      $width(negedge clkb &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb,0.0,0,notifier);
      
      // setuphold d- clkb-LH
      $setuphold(posedge clkb,negedge d,0.0,0.0,notifier,,,clkb_delay,d_delay);
      
      // setuphold d- clkb-LH
      $setuphold(posedge clkb,posedge d,0.0,0.0,notifier,,,clkb_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn090ab1n02x1( clkb, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// DFF with rising edge clock q output
// 
// 
// always @ (clkb or d)
// begin
// if (!clkb)
// begin
// IQ1 <= d;
// end
// end
// 
// assign `lsn090ab_delay ob =  ~IQ1;
// 

   input clkb, d;
   output ob;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob_random_init)
         if((ob_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob = ((random_init_ctrl_gls === 1'b1) && (ob_random_init === 1'bx)) ? init_val : ob_random_init;
      `else
         assign ob = ob_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n02x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn090ab_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n02x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lsn090ab_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clkb_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n02x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn090ab_func i0slsn090ab1n02x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G2(ENABLE_NOT_d,d_delay);
   buf MGM_G3(ENABLE_d,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0)
      // seq arc clkb --> ob
      (negedge clkb => (ob : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob
      (negedge clkb => (ob : d))  = (0.0,0.0);
      
      if(d==1'b1)
      // seq arc clkb --> ob
      (negedge clkb => (ob : d))  = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> ob
      (posedge d => (ob:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> ob
      (negedge d => (ob:d)) = (0.0,0.0);
      
      $width(negedge clkb &&& (ENABLE_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb,0.0,0,notifier);
      
      // setuphold d- clkb-LH
      $setuphold(posedge clkb,negedge d,0.0,0.0,notifier,,,clkb_delay,d_delay);
      
      // setuphold d- clkb-LH
      $setuphold(posedge clkb,posedge d,0.0,0.0,notifier,,,clkb_delay,d_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn210ab1d01x1( clk, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// latch
// 
// 
// always @ (clk or d1)
// begin
// if (clk)
// begin
// IQ1 <= ~d1;
// end
// end
// always @ (clk or d2)
// begin
// if (clk)
// begin
// IQ2 <= ~d2;
// end
// end
// 
// assign `lsn210ab_delay ob1 =  IQ1;
// assign `lsn210ab_delay ob2 =  IQ2;
// 

   input clk, d1, d2;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob1_random_init;
      wire ob2_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob1_random_init or ob2_random_init)
         if((ob1_random_init !== 1'bx) && (ob2_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob1 = ((random_init_ctrl_gls === 1'b1) && (ob1_random_init === 1'bx)) ? init_val : ob1_random_init;
         assign ob2 = ((random_init_ctrl_gls === 1'b1) && (ob2_random_init === 1'bx)) ? init_val : ob2_random_init;
      `else
         assign ob1 = ob1_random_init;
         assign ob2 = ob2_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d01x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn210ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn210ab_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d01x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lsn210ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn210ab_delay ob2_random_init = ob2_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d1_delay ;
   wire d2_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d01x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d01x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W4,d1_delay);
   not MGM_G13(MGM_W5,d2_delay);
   and MGM_G14(ENABLE_NOT_d1_AND_NOT_d2,MGM_W5,MGM_W4);
   not MGM_G15(MGM_W6,d1_delay);
   and MGM_G16(ENABLE_NOT_d1_AND_d2,d2_delay,MGM_W6);
   not MGM_G17(MGM_W7,d2_delay);
   and MGM_G18(ENABLE_d1_AND_NOT_d2,MGM_W7,d1_delay);
   and MGM_G19(ENABLE_d1_AND_d2,d2_delay,d1_delay);
   not MGM_G20(ENABLE_NOT_d2,d2_delay);
   buf MGM_G21(ENABLE_d2,d2_delay);
   not MGM_G22(ENABLE_NOT_d1,d1_delay);
   buf MGM_G23(ENABLE_d1,d1_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d1==1'b1)
      // seq arc clk --> ob1
      (posedge clk => (ob1 : d1))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> ob1
      (posedge clk => (ob1 : d1))  = (0.0,0.0);
      
      if(d1==1'b0)
      // seq arc clk --> ob1
      (posedge clk => (ob1 : d1))  = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(d2==1'b1)
      // seq arc clk --> ob2
      (posedge clk => (ob2 : d2))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> ob2
      (posedge clk => (ob2 : d2))  = (0.0,0.0);
      
      if(d2==1'b0)
      // seq arc clk --> ob2
      (posedge clk => (ob2 : d2))  = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d2 == 1'b1),
      negedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d2 == 1'b1),
      posedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d2 == 1'b1),
      negedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d2 == 1'b1),
      posedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      
      // setuphold d1- clk-HL
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d1 == 1'b1),
      negedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d1 == 1'b1),
      posedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d1 == 1'b1),
      negedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d1 == 1'b1),
      posedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      
      // setuphold d2- clk-HL
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn210ab1d02x1( clk, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// latch
// 
// 
// always @ (clk or d1)
// begin
// if (clk)
// begin
// IQ1 <= ~d1;
// end
// end
// always @ (clk or d2)
// begin
// if (clk)
// begin
// IQ2 <= ~d2;
// end
// end
// 
// assign `lsn210ab_delay ob1 =  IQ1;
// assign `lsn210ab_delay ob2 =  IQ2;
// 

   input clk, d1, d2;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob1_random_init;
      wire ob2_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob1_random_init or ob2_random_init)
         if((ob1_random_init !== 1'bx) && (ob2_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob1 = ((random_init_ctrl_gls === 1'b1) && (ob1_random_init === 1'bx)) ? init_val : ob1_random_init;
         assign ob2 = ((random_init_ctrl_gls === 1'b1) && (ob2_random_init === 1'bx)) ? init_val : ob2_random_init;
      `else
         assign ob1 = ob1_random_init;
         assign ob2 = ob2_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d02x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn210ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn210ab_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d02x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lsn210ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn210ab_delay ob2_random_init = ob2_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d1_delay ;
   wire d2_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d02x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn210ab_func i0slsn210ab1d02x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W4,d1_delay);
   not MGM_G13(MGM_W5,d2_delay);
   and MGM_G14(ENABLE_NOT_d1_AND_NOT_d2,MGM_W5,MGM_W4);
   not MGM_G15(MGM_W6,d1_delay);
   and MGM_G16(ENABLE_NOT_d1_AND_d2,d2_delay,MGM_W6);
   not MGM_G17(MGM_W7,d2_delay);
   and MGM_G18(ENABLE_d1_AND_NOT_d2,MGM_W7,d1_delay);
   and MGM_G19(ENABLE_d1_AND_d2,d2_delay,d1_delay);
   not MGM_G20(ENABLE_NOT_d2,d2_delay);
   buf MGM_G21(ENABLE_d2,d2_delay);
   not MGM_G22(ENABLE_NOT_d1,d1_delay);
   buf MGM_G23(ENABLE_d1,d1_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d1==1'b1)
      // seq arc clk --> ob1
      (posedge clk => (ob1 : d1))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> ob1
      (posedge clk => (ob1 : d1))  = (0.0,0.0);
      
      if(d1==1'b0)
      // seq arc clk --> ob1
      (posedge clk => (ob1 : d1))  = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(d2==1'b1)
      // seq arc clk --> ob2
      (posedge clk => (ob2 : d2))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> ob2
      (posedge clk => (ob2 : d2))  = (0.0,0.0);
      
      if(d2==1'b0)
      // seq arc clk --> ob2
      (posedge clk => (ob2 : d2))  = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d2 == 1'b1),
      negedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d2 == 1'b1),
      posedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d2 == 1'b1),
      negedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d2 == 1'b1),
      posedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clk_delay,d1_delay);
      
      // setuphold d1- clk-HL
      
      // setuphold d1- clk-HL
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d1 == 1'b1),
      negedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d1 == 1'b1),
      posedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d1 == 1'b1),
      negedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d1 == 1'b1),
      posedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clk_delay,d2_delay);
      
      // setuphold d2- clk-HL
      
      // setuphold d2- clk-HL
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn290ab1d01x1( clkb, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// DFF with rising edge clock q output
// 
// 
// always @ (clkb or d1)
// begin
// if (!clkb)
// begin
// IQ1 <= d1;
// end
// end
// always @ (clkb or d2)
// begin
// if (!clkb)
// begin
// IQ2 <= d2;
// end
// end
// 
// assign `lsn290ab_delay ob1 =  ~IQ1;
// assign `lsn290ab_delay ob2 =  ~IQ2;
// 

   input clkb, d1, d2;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob1_random_init;
      wire ob2_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob1_random_init or ob2_random_init)
         if((ob1_random_init !== 1'bx) && (ob2_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob1 = ((random_init_ctrl_gls === 1'b1) && (ob1_random_init === 1'bx)) ? init_val : ob1_random_init;
         assign ob2 = ((random_init_ctrl_gls === 1'b1) && (ob2_random_init === 1'bx)) ? init_val : ob2_random_init;
      `else
         assign ob1 = ob1_random_init;
         assign ob2 = ob2_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d01x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn290ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn290ab_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d01x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lsn290ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn290ab_delay ob2_random_init = ob2_tmp ;
      
   `endif
   
`else
   wire clkb_delay ;
   wire d1_delay ;
   wire d2_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d01x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d01x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W4,d1_delay);
   not MGM_G13(MGM_W5,d2_delay);
   and MGM_G14(ENABLE_NOT_d1_AND_NOT_d2,MGM_W5,MGM_W4);
   not MGM_G15(MGM_W6,d1_delay);
   and MGM_G16(ENABLE_NOT_d1_AND_d2,d2_delay,MGM_W6);
   not MGM_G17(MGM_W7,d2_delay);
   and MGM_G18(ENABLE_d1_AND_NOT_d2,MGM_W7,d1_delay);
   and MGM_G19(ENABLE_d1_AND_d2,d2_delay,d1_delay);
   not MGM_G20(ENABLE_NOT_d2,d2_delay);
   buf MGM_G21(ENABLE_d2,d2_delay);
   not MGM_G22(ENABLE_NOT_d1,d1_delay);
   buf MGM_G23(ENABLE_d1,d1_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d1==1'b0)
      // seq arc clkb --> ob1
      (negedge clkb => (ob1 : d1))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob1
      (negedge clkb => (ob1 : d1))  = (0.0,0.0);
      
      if(d1==1'b1)
      // seq arc clkb --> ob1
      (negedge clkb => (ob1 : d1))  = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(d2==1'b0)
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d1))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d1))  = (0.0,0.0);
      
      if(d2==1'b1)
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d1))  = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      $width(negedge clkb &&& (ENABLE_NOT_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_NOT_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb,0.0,0,notifier);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d2 == 1'b1),
      negedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d2 == 1'b1),
      posedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d2 == 1'b1),
      negedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d2 == 1'b1),
      posedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      
      // setuphold d1- clkb-LH
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d1 == 1'b1),
      negedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d1 == 1'b1),
      posedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d1 == 1'b1),
      negedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d1 == 1'b1),
      posedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      
      // setuphold d2- clkb-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsn290ab1d02x1( clkb, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// DFF with rising edge clock q output
// 
// 
// always @ (clkb or d1)
// begin
// if (!clkb)
// begin
// IQ1 <= d1;
// end
// end
// always @ (clkb or d2)
// begin
// if (!clkb)
// begin
// IQ2 <= d2;
// end
// end
// 
// assign `lsn290ab_delay ob1 =  ~IQ1;
// assign `lsn290ab_delay ob2 =  ~IQ2;
// 

   input clkb, d1, d2;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif
      wire ob1_random_init;
      wire ob2_random_init;
      `ifdef random_init_enable
         reg random_init_ctrl_gls;
         reg init_val;
         initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
         always @(ob1_random_init or ob2_random_init)
         if((ob1_random_init !== 1'bx) && (ob2_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
         assign ob1 = ((random_init_ctrl_gls === 1'b1) && (ob1_random_init === 1'bx)) ? init_val : ob1_random_init;
         assign ob2 = ((random_init_ctrl_gls === 1'b1) && (ob2_random_init === 1'bx)) ? init_val : ob2_random_init;
      `else
         assign ob1 = ob1_random_init;
         assign ob2 = ob2_random_init;
      `endif


`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d02x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsn290ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn290ab_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d02x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lsn290ab_delay ob1_random_init = ob1_tmp ;
      assign `lsn290ab_delay ob2_random_init = ob2_tmp ;
      
   `endif
   
`else
   wire clkb_delay ;
   wire d1_delay ;
   wire d2_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d02x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsn290ab_func i0slsn290ab1d02x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W4,d1_delay);
   not MGM_G13(MGM_W5,d2_delay);
   and MGM_G14(ENABLE_NOT_d1_AND_NOT_d2,MGM_W5,MGM_W4);
   not MGM_G15(MGM_W6,d1_delay);
   and MGM_G16(ENABLE_NOT_d1_AND_d2,d2_delay,MGM_W6);
   not MGM_G17(MGM_W7,d2_delay);
   and MGM_G18(ENABLE_d1_AND_NOT_d2,MGM_W7,d1_delay);
   and MGM_G19(ENABLE_d1_AND_d2,d2_delay,d1_delay);
   not MGM_G20(ENABLE_NOT_d2,d2_delay);
   buf MGM_G21(ENABLE_d2,d2_delay);
   not MGM_G22(ENABLE_NOT_d1,d1_delay);
   buf MGM_G23(ENABLE_d1,d1_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d1==1'b0)
      // seq arc clkb --> ob1
      (negedge clkb => (ob1 : d1))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob1
      (negedge clkb => (ob1 : d1))  = (0.0,0.0);
      
      if(d1==1'b1)
      // seq arc clkb --> ob1
      (negedge clkb => (ob1 : d1))  = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d1 --> ob1
      (posedge d1 => (ob1:d1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d1 --> ob1
      (negedge d1 => (ob1:d1)) = (0.0,0.0);
      
      if(d2==1'b0)
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d1))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d1))  = (0.0,0.0);
      
      if(d2==1'b1)
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d1))  = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      if(clkb==1'b0)
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d2 --> ob2
      (posedge d2 => (ob2:d2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d2 --> ob2
      (negedge d2 => (ob2:d2)) = (0.0,0.0);
      
      $width(negedge clkb &&& (ENABLE_NOT_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_NOT_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_d1_AND_NOT_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb &&& (ENABLE_d1_AND_d2 == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clkb,0.0,0,notifier);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d2 == 1'b1),
      negedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d2 == 1'b1),
      posedge d1 &&& (ENABLE_NOT_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d2 == 1'b1),
      negedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d2 == 1'b1),
      posedge d1 &&& (ENABLE_d2 == 1'b1),
      0.0,0.0,notifier0,,,clkb_delay,d1_delay);
      
      // setuphold d1- clkb-LH
      
      // setuphold d1- clkb-LH
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d1 == 1'b1),
      negedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_NOT_d1 == 1'b1),
      posedge d2 &&& (ENABLE_NOT_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d1 == 1'b1),
      negedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      $setuphold(posedge clkb &&& (ENABLE_d1 == 1'b1),
      posedge d2 &&& (ENABLE_d1 == 1'b1),
      0.0,0.0,notifier1,,,clkb_delay,d2_delay);
      
      // setuphold d2- clkb-LH
      
      // setuphold d2- clkb-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0slsz000ab1d01x1( clk, d, o, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan latch with scanout and internal clock gating o = {if clk then (si*!ssb+d*ssb)} so = {if clk then (si*!ssb+d*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= si;
// end
// end
// always @ (IQ1 or clk or d or ssb)
// begin
// if (clk)
// begin
// IQ <= ssb ? d : IQ1;
// end
// end
// 
// assign o =  IQ;
// assign so =  IQ;
// 

   input clk, d, si, ssb;
   output o, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire o_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(o_random_init or so_random_init)
   if((o_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign o = o_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d01x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz000ab_delay o_random_init = o_tmp ;
      assign `lsz000ab_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d01x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `lsz000ab_delay o_random_init = o_tmp ;
      assign `lsz000ab_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d01x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d01x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,si_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,ssb_delay);
   and MGM_G4(ENABLE_NOT_d_AND_NOT_si_AND_NOT_ssb,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W4,d_delay);
   and MGM_G6(MGM_W5,si_delay,MGM_W4);
   not MGM_G7(MGM_W6,ssb_delay);
   and MGM_G8(ENABLE_NOT_d_AND_si_AND_NOT_ssb,MGM_W6,MGM_W5);
   not MGM_G9(MGM_W7,si_delay);
   and MGM_G10(MGM_W8,MGM_W7,d_delay);
   not MGM_G11(MGM_W9,ssb_delay);
   and MGM_G12(ENABLE_d_AND_NOT_si_AND_NOT_ssb,MGM_W9,MGM_W8);
   and MGM_G13(MGM_W10,si_delay,d_delay);
   not MGM_G14(MGM_W11,ssb_delay);
   and MGM_G15(ENABLE_d_AND_si_AND_NOT_ssb,MGM_W11,MGM_W10);
   not MGM_G16(MGM_W12,d_delay);
   not MGM_G17(MGM_W13,si_delay);
   and MGM_G18(MGM_W14,MGM_W13,MGM_W12);
   and MGM_G19(ENABLE_NOT_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W14);
   not MGM_G20(MGM_W15,d_delay);
   and MGM_G21(MGM_W16,si_delay,MGM_W15);
   and MGM_G22(ENABLE_NOT_d_AND_si_AND_ssb,ssb_delay,MGM_W16);
   not MGM_G23(MGM_W17,si_delay);
   and MGM_G24(MGM_W18,MGM_W17,d_delay);
   and MGM_G25(ENABLE_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W18);
   and MGM_G26(MGM_W19,si_delay,d_delay);
   and MGM_G27(ENABLE_d_AND_si_AND_ssb,ssb_delay,MGM_W19);
   not MGM_G28(MGM_W20,si_delay);
   and MGM_G29(ENABLE_NOT_si_AND_ssb,ssb_delay,MGM_W20);
   and MGM_G30(ENABLE_si_AND_ssb,ssb_delay,si_delay);
   not MGM_G31(MGM_W21,d_delay);
   not MGM_G32(MGM_W22,ssb_delay);
   and MGM_G33(ENABLE_NOT_d_AND_NOT_ssb,MGM_W22,MGM_W21);
   not MGM_G34(MGM_W23,ssb_delay);
   and MGM_G35(ENABLE_d_AND_NOT_ssb,MGM_W23,d_delay);
   not MGM_G36(MGM_W24,d_delay);
   not MGM_G37(MGM_W25,si_delay);
   and MGM_G38(ENABLE_NOT_d_AND_NOT_si,MGM_W25,MGM_W24);
   not MGM_G39(MGM_W26,d_delay);
   and MGM_G40(ENABLE_NOT_d_AND_si,si_delay,MGM_W26);
   not MGM_G41(MGM_W27,si_delay);
   and MGM_G42(ENABLE_d_AND_NOT_si,MGM_W27,d_delay);
   and MGM_G43(ENABLE_d_AND_si,si_delay,d_delay);
   // spec_gates_end
  specify
   if(d==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o:ssb)
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o:ssb)
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL

   // setuphold d- clk-HL

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH

   // setuphold si- clk-LH

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz000ab1d02x1( clk, d, o, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan latch with scanout and internal clock gating o = {if clk then (si*!ssb+d*ssb)} so = {if clk then (si*!ssb+d*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= si;
// end
// end
// always @ (IQ1 or clk or d or ssb)
// begin
// if (clk)
// begin
// IQ <= ssb ? d : IQ1;
// end
// end
// 
// assign o =  IQ;
// assign so =  IQ;
// 

   input clk, d, si, ssb;
   output o, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire o_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(o_random_init or so_random_init)
   if((o_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign o = o_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d02x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz000ab_delay o_random_init = o_tmp ;
      assign `lsz000ab_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d02x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `lsz000ab_delay o_random_init = o_tmp ;
      assign `lsz000ab_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d02x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz000ab_func i0slsz000ab1d02x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,si_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,ssb_delay);
   and MGM_G4(ENABLE_NOT_d_AND_NOT_si_AND_NOT_ssb,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W4,d_delay);
   and MGM_G6(MGM_W5,si_delay,MGM_W4);
   not MGM_G7(MGM_W6,ssb_delay);
   and MGM_G8(ENABLE_NOT_d_AND_si_AND_NOT_ssb,MGM_W6,MGM_W5);
   not MGM_G9(MGM_W7,si_delay);
   and MGM_G10(MGM_W8,MGM_W7,d_delay);
   not MGM_G11(MGM_W9,ssb_delay);
   and MGM_G12(ENABLE_d_AND_NOT_si_AND_NOT_ssb,MGM_W9,MGM_W8);
   and MGM_G13(MGM_W10,si_delay,d_delay);
   not MGM_G14(MGM_W11,ssb_delay);
   and MGM_G15(ENABLE_d_AND_si_AND_NOT_ssb,MGM_W11,MGM_W10);
   not MGM_G16(MGM_W12,d_delay);
   not MGM_G17(MGM_W13,si_delay);
   and MGM_G18(MGM_W14,MGM_W13,MGM_W12);
   and MGM_G19(ENABLE_NOT_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W14);
   not MGM_G20(MGM_W15,d_delay);
   and MGM_G21(MGM_W16,si_delay,MGM_W15);
   and MGM_G22(ENABLE_NOT_d_AND_si_AND_ssb,ssb_delay,MGM_W16);
   not MGM_G23(MGM_W17,si_delay);
   and MGM_G24(MGM_W18,MGM_W17,d_delay);
   and MGM_G25(ENABLE_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W18);
   and MGM_G26(MGM_W19,si_delay,d_delay);
   and MGM_G27(ENABLE_d_AND_si_AND_ssb,ssb_delay,MGM_W19);
   not MGM_G28(MGM_W20,si_delay);
   and MGM_G29(ENABLE_NOT_si_AND_ssb,ssb_delay,MGM_W20);
   and MGM_G30(ENABLE_si_AND_ssb,ssb_delay,si_delay);
   not MGM_G31(MGM_W21,d_delay);
   not MGM_G32(MGM_W22,ssb_delay);
   and MGM_G33(ENABLE_NOT_d_AND_NOT_ssb,MGM_W22,MGM_W21);
   not MGM_G34(MGM_W23,ssb_delay);
   and MGM_G35(ENABLE_d_AND_NOT_ssb,MGM_W23,d_delay);
   not MGM_G36(MGM_W24,d_delay);
   not MGM_G37(MGM_W25,si_delay);
   and MGM_G38(ENABLE_NOT_d_AND_NOT_si,MGM_W25,MGM_W24);
   not MGM_G39(MGM_W26,d_delay);
   and MGM_G40(ENABLE_NOT_d_AND_si,si_delay,MGM_W26);
   not MGM_G41(MGM_W27,si_delay);
   and MGM_G42(ENABLE_d_AND_NOT_si,MGM_W27,d_delay);
   and MGM_G43(ENABLE_d_AND_si,si_delay,d_delay);
   // spec_gates_end
  specify
   if(d==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o:ssb)
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o:ssb)
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL

   // setuphold d- clk-HL

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH

   // setuphold si- clk-LH

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz003ab1d01x1( clk, d, o, rb, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan sync reset latch with scanout and internal clock gating o = {if clk then (si*!ssb+(d*rb)*ssb)} so = {if clk then (si*!ssb+(d*rb)*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= si;
// end
// end
// always @ (IQ1 or clk or d or rb or ssb)
// begin
// if (clk)
// begin
// IQ <= IQ1&~ssb | d&rb&ssb;
// end
// end
// 
// assign o =  IQ;
// assign so =  IQ;
// 

   input clk, d, rb, si, ssb;
   output o, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif


wire o_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(o_random_init or so_random_init)
   if((o_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign o = o_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d01x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz003ab_delay o_random_init = o_tmp ;
      assign `lsz003ab_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d01x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `lsz003ab_delay o_random_init = o_tmp ;
      assign `lsz003ab_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d01x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d01x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif

  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,rb_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,si_delay);
   and MGM_G4(MGM_W4,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W5,ssb_delay);
   and MGM_G6(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb,MGM_W5,MGM_W4);
   not MGM_G7(MGM_W6,d_delay);
   not MGM_G8(MGM_W7,rb_delay);
   and MGM_G9(MGM_W8,MGM_W7,MGM_W6);
   and MGM_G10(MGM_W9,si_delay,MGM_W8);
   not MGM_G11(MGM_W10,ssb_delay);
   and MGM_G12(ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_NOT_ssb,MGM_W10,MGM_W9);
   not MGM_G13(MGM_W11,d_delay);
   and MGM_G14(MGM_W12,rb_delay,MGM_W11);
   not MGM_G15(MGM_W13,si_delay);
   and MGM_G16(MGM_W14,MGM_W13,MGM_W12);
   not MGM_G17(MGM_W15,ssb_delay);
   and MGM_G18(ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_NOT_ssb,MGM_W15,MGM_W14);
   not MGM_G19(MGM_W16,d_delay);
   and MGM_G20(MGM_W17,rb_delay,MGM_W16);
   and MGM_G21(MGM_W18,si_delay,MGM_W17);
   not MGM_G22(MGM_W19,ssb_delay);
   and MGM_G23(ENABLE_NOT_d_AND_rb_AND_si_AND_NOT_ssb,MGM_W19,MGM_W18);
   not MGM_G24(MGM_W20,rb_delay);
   and MGM_G25(MGM_W21,MGM_W20,d_delay);
   not MGM_G26(MGM_W22,si_delay);
   and MGM_G27(MGM_W23,MGM_W22,MGM_W21);
   not MGM_G28(MGM_W24,ssb_delay);
   and MGM_G29(ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb,MGM_W24,MGM_W23);
   not MGM_G30(MGM_W25,rb_delay);
   and MGM_G31(MGM_W26,MGM_W25,d_delay);
   and MGM_G32(MGM_W27,si_delay,MGM_W26);
   not MGM_G33(MGM_W28,ssb_delay);
   and MGM_G34(ENABLE_d_AND_NOT_rb_AND_si_AND_NOT_ssb,MGM_W28,MGM_W27);
   and MGM_G35(MGM_W29,rb_delay,d_delay);
   not MGM_G36(MGM_W30,si_delay);
   and MGM_G37(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G38(MGM_W32,ssb_delay);
   and MGM_G39(ENABLE_d_AND_rb_AND_NOT_si_AND_NOT_ssb,MGM_W32,MGM_W31);
   and MGM_G40(MGM_W33,rb_delay,d_delay);
   and MGM_G41(MGM_W34,si_delay,MGM_W33);
   not MGM_G42(MGM_W35,ssb_delay);
   and MGM_G43(ENABLE_d_AND_rb_AND_si_AND_NOT_ssb,MGM_W35,MGM_W34);
   not MGM_G44(MGM_W36,d_delay);
   not MGM_G45(MGM_W37,rb_delay);
   and MGM_G46(MGM_W38,MGM_W37,MGM_W36);
   not MGM_G47(MGM_W39,si_delay);
   and MGM_G48(MGM_W40,MGM_W39,MGM_W38);
   and MGM_G49(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W40);
   not MGM_G50(MGM_W41,d_delay);
   not MGM_G51(MGM_W42,rb_delay);
   and MGM_G52(MGM_W43,MGM_W42,MGM_W41);
   and MGM_G53(MGM_W44,si_delay,MGM_W43);
   and MGM_G54(ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_ssb,ssb_delay,MGM_W44);
   not MGM_G55(MGM_W45,d_delay);
   and MGM_G56(MGM_W46,rb_delay,MGM_W45);
   not MGM_G57(MGM_W47,si_delay);
   and MGM_G58(MGM_W48,MGM_W47,MGM_W46);
   and MGM_G59(ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W48);
   not MGM_G60(MGM_W49,d_delay);
   and MGM_G61(MGM_W50,rb_delay,MGM_W49);
   and MGM_G62(MGM_W51,si_delay,MGM_W50);
   and MGM_G63(ENABLE_NOT_d_AND_rb_AND_si_AND_ssb,ssb_delay,MGM_W51);
   not MGM_G64(MGM_W52,rb_delay);
   and MGM_G65(MGM_W53,MGM_W52,d_delay);
   not MGM_G66(MGM_W54,si_delay);
   and MGM_G67(MGM_W55,MGM_W54,MGM_W53);
   and MGM_G68(ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W55);
   not MGM_G69(MGM_W56,rb_delay);
   and MGM_G70(MGM_W57,MGM_W56,d_delay);
   and MGM_G71(MGM_W58,si_delay,MGM_W57);
   and MGM_G72(ENABLE_d_AND_NOT_rb_AND_si_AND_ssb,ssb_delay,MGM_W58);
   and MGM_G73(MGM_W59,rb_delay,d_delay);
   not MGM_G74(MGM_W60,si_delay);
   and MGM_G75(MGM_W61,MGM_W60,MGM_W59);
   and MGM_G76(ENABLE_d_AND_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W61);
   and MGM_G77(MGM_W62,rb_delay,d_delay);
   and MGM_G78(MGM_W63,si_delay,MGM_W62);
   and MGM_G79(ENABLE_d_AND_rb_AND_si_AND_ssb,ssb_delay,MGM_W63);
   not MGM_G80(MGM_W64,si_delay);
   and MGM_G81(MGM_W65,MGM_W64,rb_delay);
   and MGM_G82(ENABLE_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W65);
   and MGM_G83(MGM_W66,si_delay,rb_delay);
   and MGM_G84(ENABLE_rb_AND_si_AND_ssb,ssb_delay,MGM_W66);
   not MGM_G85(MGM_W67,si_delay);
   and MGM_G86(MGM_W68,MGM_W67,d_delay);
   and MGM_G87(ENABLE_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W68);
   and MGM_G88(MGM_W69,si_delay,d_delay);
   and MGM_G89(ENABLE_d_AND_si_AND_ssb,ssb_delay,MGM_W69);
   not MGM_G90(MGM_W70,d_delay);
   not MGM_G91(MGM_W71,rb_delay);
   and MGM_G92(MGM_W72,MGM_W71,MGM_W70);
   not MGM_G93(MGM_W73,ssb_delay);
   and MGM_G94(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb,MGM_W73,MGM_W72);
   not MGM_G95(MGM_W74,d_delay);
   and MGM_G96(MGM_W75,rb_delay,MGM_W74);
   not MGM_G97(MGM_W76,ssb_delay);
   and MGM_G98(ENABLE_NOT_d_AND_rb_AND_NOT_ssb,MGM_W76,MGM_W75);
   not MGM_G99(MGM_W77,rb_delay);
   and MGM_G100(MGM_W78,MGM_W77,d_delay);
   not MGM_G101(MGM_W79,ssb_delay);
   and MGM_G102(ENABLE_d_AND_NOT_rb_AND_NOT_ssb,MGM_W79,MGM_W78);
   and MGM_G103(MGM_W80,rb_delay,d_delay);
   not MGM_G104(MGM_W81,ssb_delay);
   and MGM_G105(ENABLE_d_AND_rb_AND_NOT_ssb,MGM_W81,MGM_W80);
   not MGM_G106(MGM_W82,d_delay);
   not MGM_G107(MGM_W83,rb_delay);
   and MGM_G108(MGM_W84,MGM_W83,MGM_W82);
   not MGM_G109(MGM_W85,si_delay);
   and MGM_G110(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si,MGM_W85,MGM_W84);
   not MGM_G111(MGM_W86,d_delay);
   not MGM_G112(MGM_W87,rb_delay);
   and MGM_G113(MGM_W88,MGM_W87,MGM_W86);
   and MGM_G114(ENABLE_NOT_d_AND_NOT_rb_AND_si,si_delay,MGM_W88);
   not MGM_G115(MGM_W89,d_delay);
   and MGM_G116(MGM_W90,rb_delay,MGM_W89);
   not MGM_G117(MGM_W91,si_delay);
   and MGM_G118(ENABLE_NOT_d_AND_rb_AND_NOT_si,MGM_W91,MGM_W90);
   not MGM_G119(MGM_W92,d_delay);
   and MGM_G120(MGM_W93,rb_delay,MGM_W92);
   and MGM_G121(ENABLE_NOT_d_AND_rb_AND_si,si_delay,MGM_W93);
   not MGM_G122(MGM_W94,rb_delay);
   and MGM_G123(MGM_W95,MGM_W94,d_delay);
   not MGM_G124(MGM_W96,si_delay);
   and MGM_G125(ENABLE_d_AND_NOT_rb_AND_NOT_si,MGM_W96,MGM_W95);
   not MGM_G126(MGM_W97,rb_delay);
   and MGM_G127(MGM_W98,MGM_W97,d_delay);
   and MGM_G128(ENABLE_d_AND_NOT_rb_AND_si,si_delay,MGM_W98);
   and MGM_G129(MGM_W99,rb_delay,d_delay);
   not MGM_G130(MGM_W100,si_delay);
   and MGM_G131(ENABLE_d_AND_rb_AND_NOT_si,MGM_W100,MGM_W99);
   and MGM_G132(MGM_W101,rb_delay,d_delay);
   and MGM_G133(ENABLE_d_AND_rb_AND_si,si_delay,MGM_W101);
   // spec_gates_end
  specify
   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge rb --> o
    (negedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge rb --> o
    (posedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge rb --> o
    (negedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge rb --> o
    (posedge rb => (o:rb)) = (0.0,0.0);

   ifnone
   // comb arc negedge rb --> o
    (negedge rb => (o:rb)) = (0.0,0.0);

   ifnone
   // comb arc posedge rb --> o
    (posedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o:ssb)
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o:ssb)
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge rb --> so
    (negedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge rb --> so
    (posedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge rb --> so
    (negedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge rb --> so
    (posedge rb => (so:rb)) = (0.0,0.0);

   ifnone
   // comb arc negedge rb --> so
    (negedge rb => (so:rb)) = (0.0,0.0);

   ifnone
   // comb arc posedge rb --> so
    (posedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL

   // setuphold d- clk-HL

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		negedge rb &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		posedge rb &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		negedge rb &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		posedge rb &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL

   // setuphold rb- clk-HL

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH

   // setuphold si- clk-LH

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz003ab1d02x1( clk, d, o, rb, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan sync reset latch with scanout and internal clock gating o = {if clk then (si*!ssb+(d*rb)*ssb)} so = {if clk then (si*!ssb+(d*rb)*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= si;
// end
// end
// always @ (IQ1 or clk or d or rb or ssb)
// begin
// if (clk)
// begin
// IQ <= IQ1&~ssb | d&rb&ssb;
// end
// end
// 
// assign o =  IQ;
// assign so =  IQ;
// 

   input clk, d, rb, si, ssb;
   output o, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif


wire o_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(o_random_init or so_random_init)
   if((o_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign o = o_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d02x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz003ab_delay o_random_init = o_tmp ;
      assign `lsz003ab_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d02x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `lsz003ab_delay o_random_init = o_tmp ;
      assign `lsz003ab_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d02x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz003ab_func i0slsz003ab1d02x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif

  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,rb_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,si_delay);
   and MGM_G4(MGM_W4,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W5,ssb_delay);
   and MGM_G6(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb,MGM_W5,MGM_W4);
   not MGM_G7(MGM_W6,d_delay);
   not MGM_G8(MGM_W7,rb_delay);
   and MGM_G9(MGM_W8,MGM_W7,MGM_W6);
   and MGM_G10(MGM_W9,si_delay,MGM_W8);
   not MGM_G11(MGM_W10,ssb_delay);
   and MGM_G12(ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_NOT_ssb,MGM_W10,MGM_W9);
   not MGM_G13(MGM_W11,d_delay);
   and MGM_G14(MGM_W12,rb_delay,MGM_W11);
   not MGM_G15(MGM_W13,si_delay);
   and MGM_G16(MGM_W14,MGM_W13,MGM_W12);
   not MGM_G17(MGM_W15,ssb_delay);
   and MGM_G18(ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_NOT_ssb,MGM_W15,MGM_W14);
   not MGM_G19(MGM_W16,d_delay);
   and MGM_G20(MGM_W17,rb_delay,MGM_W16);
   and MGM_G21(MGM_W18,si_delay,MGM_W17);
   not MGM_G22(MGM_W19,ssb_delay);
   and MGM_G23(ENABLE_NOT_d_AND_rb_AND_si_AND_NOT_ssb,MGM_W19,MGM_W18);
   not MGM_G24(MGM_W20,rb_delay);
   and MGM_G25(MGM_W21,MGM_W20,d_delay);
   not MGM_G26(MGM_W22,si_delay);
   and MGM_G27(MGM_W23,MGM_W22,MGM_W21);
   not MGM_G28(MGM_W24,ssb_delay);
   and MGM_G29(ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb,MGM_W24,MGM_W23);
   not MGM_G30(MGM_W25,rb_delay);
   and MGM_G31(MGM_W26,MGM_W25,d_delay);
   and MGM_G32(MGM_W27,si_delay,MGM_W26);
   not MGM_G33(MGM_W28,ssb_delay);
   and MGM_G34(ENABLE_d_AND_NOT_rb_AND_si_AND_NOT_ssb,MGM_W28,MGM_W27);
   and MGM_G35(MGM_W29,rb_delay,d_delay);
   not MGM_G36(MGM_W30,si_delay);
   and MGM_G37(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G38(MGM_W32,ssb_delay);
   and MGM_G39(ENABLE_d_AND_rb_AND_NOT_si_AND_NOT_ssb,MGM_W32,MGM_W31);
   and MGM_G40(MGM_W33,rb_delay,d_delay);
   and MGM_G41(MGM_W34,si_delay,MGM_W33);
   not MGM_G42(MGM_W35,ssb_delay);
   and MGM_G43(ENABLE_d_AND_rb_AND_si_AND_NOT_ssb,MGM_W35,MGM_W34);
   not MGM_G44(MGM_W36,d_delay);
   not MGM_G45(MGM_W37,rb_delay);
   and MGM_G46(MGM_W38,MGM_W37,MGM_W36);
   not MGM_G47(MGM_W39,si_delay);
   and MGM_G48(MGM_W40,MGM_W39,MGM_W38);
   and MGM_G49(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W40);
   not MGM_G50(MGM_W41,d_delay);
   not MGM_G51(MGM_W42,rb_delay);
   and MGM_G52(MGM_W43,MGM_W42,MGM_W41);
   and MGM_G53(MGM_W44,si_delay,MGM_W43);
   and MGM_G54(ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_ssb,ssb_delay,MGM_W44);
   not MGM_G55(MGM_W45,d_delay);
   and MGM_G56(MGM_W46,rb_delay,MGM_W45);
   not MGM_G57(MGM_W47,si_delay);
   and MGM_G58(MGM_W48,MGM_W47,MGM_W46);
   and MGM_G59(ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W48);
   not MGM_G60(MGM_W49,d_delay);
   and MGM_G61(MGM_W50,rb_delay,MGM_W49);
   and MGM_G62(MGM_W51,si_delay,MGM_W50);
   and MGM_G63(ENABLE_NOT_d_AND_rb_AND_si_AND_ssb,ssb_delay,MGM_W51);
   not MGM_G64(MGM_W52,rb_delay);
   and MGM_G65(MGM_W53,MGM_W52,d_delay);
   not MGM_G66(MGM_W54,si_delay);
   and MGM_G67(MGM_W55,MGM_W54,MGM_W53);
   and MGM_G68(ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W55);
   not MGM_G69(MGM_W56,rb_delay);
   and MGM_G70(MGM_W57,MGM_W56,d_delay);
   and MGM_G71(MGM_W58,si_delay,MGM_W57);
   and MGM_G72(ENABLE_d_AND_NOT_rb_AND_si_AND_ssb,ssb_delay,MGM_W58);
   and MGM_G73(MGM_W59,rb_delay,d_delay);
   not MGM_G74(MGM_W60,si_delay);
   and MGM_G75(MGM_W61,MGM_W60,MGM_W59);
   and MGM_G76(ENABLE_d_AND_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W61);
   and MGM_G77(MGM_W62,rb_delay,d_delay);
   and MGM_G78(MGM_W63,si_delay,MGM_W62);
   and MGM_G79(ENABLE_d_AND_rb_AND_si_AND_ssb,ssb_delay,MGM_W63);
   not MGM_G80(MGM_W64,si_delay);
   and MGM_G81(MGM_W65,MGM_W64,rb_delay);
   and MGM_G82(ENABLE_rb_AND_NOT_si_AND_ssb,ssb_delay,MGM_W65);
   and MGM_G83(MGM_W66,si_delay,rb_delay);
   and MGM_G84(ENABLE_rb_AND_si_AND_ssb,ssb_delay,MGM_W66);
   not MGM_G85(MGM_W67,si_delay);
   and MGM_G86(MGM_W68,MGM_W67,d_delay);
   and MGM_G87(ENABLE_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W68);
   and MGM_G88(MGM_W69,si_delay,d_delay);
   and MGM_G89(ENABLE_d_AND_si_AND_ssb,ssb_delay,MGM_W69);
   not MGM_G90(MGM_W70,d_delay);
   not MGM_G91(MGM_W71,rb_delay);
   and MGM_G92(MGM_W72,MGM_W71,MGM_W70);
   not MGM_G93(MGM_W73,ssb_delay);
   and MGM_G94(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb,MGM_W73,MGM_W72);
   not MGM_G95(MGM_W74,d_delay);
   and MGM_G96(MGM_W75,rb_delay,MGM_W74);
   not MGM_G97(MGM_W76,ssb_delay);
   and MGM_G98(ENABLE_NOT_d_AND_rb_AND_NOT_ssb,MGM_W76,MGM_W75);
   not MGM_G99(MGM_W77,rb_delay);
   and MGM_G100(MGM_W78,MGM_W77,d_delay);
   not MGM_G101(MGM_W79,ssb_delay);
   and MGM_G102(ENABLE_d_AND_NOT_rb_AND_NOT_ssb,MGM_W79,MGM_W78);
   and MGM_G103(MGM_W80,rb_delay,d_delay);
   not MGM_G104(MGM_W81,ssb_delay);
   and MGM_G105(ENABLE_d_AND_rb_AND_NOT_ssb,MGM_W81,MGM_W80);
   not MGM_G106(MGM_W82,d_delay);
   not MGM_G107(MGM_W83,rb_delay);
   and MGM_G108(MGM_W84,MGM_W83,MGM_W82);
   not MGM_G109(MGM_W85,si_delay);
   and MGM_G110(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si,MGM_W85,MGM_W84);
   not MGM_G111(MGM_W86,d_delay);
   not MGM_G112(MGM_W87,rb_delay);
   and MGM_G113(MGM_W88,MGM_W87,MGM_W86);
   and MGM_G114(ENABLE_NOT_d_AND_NOT_rb_AND_si,si_delay,MGM_W88);
   not MGM_G115(MGM_W89,d_delay);
   and MGM_G116(MGM_W90,rb_delay,MGM_W89);
   not MGM_G117(MGM_W91,si_delay);
   and MGM_G118(ENABLE_NOT_d_AND_rb_AND_NOT_si,MGM_W91,MGM_W90);
   not MGM_G119(MGM_W92,d_delay);
   and MGM_G120(MGM_W93,rb_delay,MGM_W92);
   and MGM_G121(ENABLE_NOT_d_AND_rb_AND_si,si_delay,MGM_W93);
   not MGM_G122(MGM_W94,rb_delay);
   and MGM_G123(MGM_W95,MGM_W94,d_delay);
   not MGM_G124(MGM_W96,si_delay);
   and MGM_G125(ENABLE_d_AND_NOT_rb_AND_NOT_si,MGM_W96,MGM_W95);
   not MGM_G126(MGM_W97,rb_delay);
   and MGM_G127(MGM_W98,MGM_W97,d_delay);
   and MGM_G128(ENABLE_d_AND_NOT_rb_AND_si,si_delay,MGM_W98);
   and MGM_G129(MGM_W99,rb_delay,d_delay);
   not MGM_G130(MGM_W100,si_delay);
   and MGM_G131(ENABLE_d_AND_rb_AND_NOT_si,MGM_W100,MGM_W99);
   and MGM_G132(MGM_W101,rb_delay,d_delay);
   and MGM_G133(ENABLE_d_AND_rb_AND_si,si_delay,MGM_W101);
   // spec_gates_end
  specify
   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge rb --> o
    (negedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge rb --> o
    (posedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge rb --> o
    (negedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge rb --> o
    (posedge rb => (o:rb)) = (0.0,0.0);

   ifnone
   // comb arc negedge rb --> o
    (negedge rb => (o:rb)) = (0.0,0.0);

   ifnone
   // comb arc posedge rb --> o
    (posedge rb => (o:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o:ssb)
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o:ssb)
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && rb==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge rb --> so
    (negedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge rb --> so
    (posedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge rb --> so
    (negedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge rb --> so
    (posedge rb => (so:rb)) = (0.0,0.0);

   ifnone
   // comb arc negedge rb --> so
    (negedge rb => (so:rb)) = (0.0,0.0);

   ifnone
   // comb arc posedge rb --> so
    (posedge rb => (so:rb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && rb==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_rb_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_rb_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_rb_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL

   // setuphold d- clk-HL

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		negedge rb &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		posedge rb &&& (ENABLE_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		negedge rb &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		posedge rb &&& (ENABLE_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-HL

   // setuphold rb- clk-HL

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_NOT_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_rb_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH

   // setuphold si- clk-LH

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_rb_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_rb_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz008ab1d01x1( clk, d, o, s, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan sync preset latch with scanout and internal clock gating o = {if clk then (si*!ssb+(d+s)*ssb)} so = {if clk then (si*!ssb+(d+s)*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= si;
// end
// end
// always @ (IQ1 or clk or d or s or ssb)
// begin
// if (clk)
// begin
// IQ <= IQ1&d | IQ1&s | IQ1&~ssb | d&ssb | s&ssb;
// end
// end
// 
// assign o =  IQ;
// assign so =  IQ;
// 

   input clk, d, s, si, ssb;
   output o, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire o_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(o_random_init or so_random_init)
   if((o_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign o = o_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d01x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.s(s),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz008ab_delay o_random_init = o_tmp ;
      assign `lsz008ab_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d01x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.s(s),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `lsz008ab_delay o_random_init = o_tmp ;
      assign `lsz008ab_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire s_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d01x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.s(s_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d01x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.s(s_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif

  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,s_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,si_delay);
   and MGM_G4(MGM_W4,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W5,ssb_delay);
   and MGM_G6(ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb,MGM_W5,MGM_W4);
   not MGM_G7(MGM_W6,d_delay);
   not MGM_G8(MGM_W7,s_delay);
   and MGM_G9(MGM_W8,MGM_W7,MGM_W6);
   and MGM_G10(MGM_W9,si_delay,MGM_W8);
   not MGM_G11(MGM_W10,ssb_delay);
   and MGM_G12(ENABLE_NOT_d_AND_NOT_s_AND_si_AND_NOT_ssb,MGM_W10,MGM_W9);
   not MGM_G13(MGM_W11,d_delay);
   and MGM_G14(MGM_W12,s_delay,MGM_W11);
   not MGM_G15(MGM_W13,si_delay);
   and MGM_G16(MGM_W14,MGM_W13,MGM_W12);
   not MGM_G17(MGM_W15,ssb_delay);
   and MGM_G18(ENABLE_NOT_d_AND_s_AND_NOT_si_AND_NOT_ssb,MGM_W15,MGM_W14);
   not MGM_G19(MGM_W16,d_delay);
   and MGM_G20(MGM_W17,s_delay,MGM_W16);
   and MGM_G21(MGM_W18,si_delay,MGM_W17);
   not MGM_G22(MGM_W19,ssb_delay);
   and MGM_G23(ENABLE_NOT_d_AND_s_AND_si_AND_NOT_ssb,MGM_W19,MGM_W18);
   not MGM_G24(MGM_W20,s_delay);
   and MGM_G25(MGM_W21,MGM_W20,d_delay);
   not MGM_G26(MGM_W22,si_delay);
   and MGM_G27(MGM_W23,MGM_W22,MGM_W21);
   not MGM_G28(MGM_W24,ssb_delay);
   and MGM_G29(ENABLE_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb,MGM_W24,MGM_W23);
   not MGM_G30(MGM_W25,s_delay);
   and MGM_G31(MGM_W26,MGM_W25,d_delay);
   and MGM_G32(MGM_W27,si_delay,MGM_W26);
   not MGM_G33(MGM_W28,ssb_delay);
   and MGM_G34(ENABLE_d_AND_NOT_s_AND_si_AND_NOT_ssb,MGM_W28,MGM_W27);
   and MGM_G35(MGM_W29,s_delay,d_delay);
   not MGM_G36(MGM_W30,si_delay);
   and MGM_G37(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G38(MGM_W32,ssb_delay);
   and MGM_G39(ENABLE_d_AND_s_AND_NOT_si_AND_NOT_ssb,MGM_W32,MGM_W31);
   and MGM_G40(MGM_W33,s_delay,d_delay);
   and MGM_G41(MGM_W34,si_delay,MGM_W33);
   not MGM_G42(MGM_W35,ssb_delay);
   and MGM_G43(ENABLE_d_AND_s_AND_si_AND_NOT_ssb,MGM_W35,MGM_W34);
   not MGM_G44(MGM_W36,d_delay);
   not MGM_G45(MGM_W37,s_delay);
   and MGM_G46(MGM_W38,MGM_W37,MGM_W36);
   not MGM_G47(MGM_W39,si_delay);
   and MGM_G48(MGM_W40,MGM_W39,MGM_W38);
   and MGM_G49(ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W40);
   not MGM_G50(MGM_W41,d_delay);
   not MGM_G51(MGM_W42,s_delay);
   and MGM_G52(MGM_W43,MGM_W42,MGM_W41);
   and MGM_G53(MGM_W44,si_delay,MGM_W43);
   and MGM_G54(ENABLE_NOT_d_AND_NOT_s_AND_si_AND_ssb,ssb_delay,MGM_W44);
   not MGM_G55(MGM_W45,d_delay);
   and MGM_G56(MGM_W46,s_delay,MGM_W45);
   not MGM_G57(MGM_W47,si_delay);
   and MGM_G58(MGM_W48,MGM_W47,MGM_W46);
   and MGM_G59(ENABLE_NOT_d_AND_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W48);
   not MGM_G60(MGM_W49,d_delay);
   and MGM_G61(MGM_W50,s_delay,MGM_W49);
   and MGM_G62(MGM_W51,si_delay,MGM_W50);
   and MGM_G63(ENABLE_NOT_d_AND_s_AND_si_AND_ssb,ssb_delay,MGM_W51);
   not MGM_G64(MGM_W52,s_delay);
   and MGM_G65(MGM_W53,MGM_W52,d_delay);
   not MGM_G66(MGM_W54,si_delay);
   and MGM_G67(MGM_W55,MGM_W54,MGM_W53);
   and MGM_G68(ENABLE_d_AND_NOT_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W55);
   not MGM_G69(MGM_W56,s_delay);
   and MGM_G70(MGM_W57,MGM_W56,d_delay);
   and MGM_G71(MGM_W58,si_delay,MGM_W57);
   and MGM_G72(ENABLE_d_AND_NOT_s_AND_si_AND_ssb,ssb_delay,MGM_W58);
   and MGM_G73(MGM_W59,s_delay,d_delay);
   not MGM_G74(MGM_W60,si_delay);
   and MGM_G75(MGM_W61,MGM_W60,MGM_W59);
   and MGM_G76(ENABLE_d_AND_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W61);
   and MGM_G77(MGM_W62,s_delay,d_delay);
   and MGM_G78(MGM_W63,si_delay,MGM_W62);
   and MGM_G79(ENABLE_d_AND_s_AND_si_AND_ssb,ssb_delay,MGM_W63);
   not MGM_G80(MGM_W64,s_delay);
   not MGM_G81(MGM_W65,si_delay);
   and MGM_G82(MGM_W66,MGM_W65,MGM_W64);
   and MGM_G83(ENABLE_NOT_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W66);
   not MGM_G84(MGM_W67,s_delay);
   and MGM_G85(MGM_W68,si_delay,MGM_W67);
   and MGM_G86(ENABLE_NOT_s_AND_si_AND_ssb,ssb_delay,MGM_W68);
   not MGM_G87(MGM_W69,d_delay);
   not MGM_G88(MGM_W70,si_delay);
   and MGM_G89(MGM_W71,MGM_W70,MGM_W69);
   and MGM_G90(ENABLE_NOT_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W71);
   not MGM_G91(MGM_W72,d_delay);
   and MGM_G92(MGM_W73,si_delay,MGM_W72);
   and MGM_G93(ENABLE_NOT_d_AND_si_AND_ssb,ssb_delay,MGM_W73);
   not MGM_G94(MGM_W74,d_delay);
   not MGM_G95(MGM_W75,s_delay);
   and MGM_G96(MGM_W76,MGM_W75,MGM_W74);
   not MGM_G97(MGM_W77,ssb_delay);
   and MGM_G98(ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb,MGM_W77,MGM_W76);
   not MGM_G99(MGM_W78,d_delay);
   and MGM_G100(MGM_W79,s_delay,MGM_W78);
   not MGM_G101(MGM_W80,ssb_delay);
   and MGM_G102(ENABLE_NOT_d_AND_s_AND_NOT_ssb,MGM_W80,MGM_W79);
   not MGM_G103(MGM_W81,s_delay);
   and MGM_G104(MGM_W82,MGM_W81,d_delay);
   not MGM_G105(MGM_W83,ssb_delay);
   and MGM_G106(ENABLE_d_AND_NOT_s_AND_NOT_ssb,MGM_W83,MGM_W82);
   and MGM_G107(MGM_W84,s_delay,d_delay);
   not MGM_G108(MGM_W85,ssb_delay);
   and MGM_G109(ENABLE_d_AND_s_AND_NOT_ssb,MGM_W85,MGM_W84);
   not MGM_G110(MGM_W86,d_delay);
   not MGM_G111(MGM_W87,s_delay);
   and MGM_G112(MGM_W88,MGM_W87,MGM_W86);
   not MGM_G113(MGM_W89,si_delay);
   and MGM_G114(ENABLE_NOT_d_AND_NOT_s_AND_NOT_si,MGM_W89,MGM_W88);
   not MGM_G115(MGM_W90,d_delay);
   not MGM_G116(MGM_W91,s_delay);
   and MGM_G117(MGM_W92,MGM_W91,MGM_W90);
   and MGM_G118(ENABLE_NOT_d_AND_NOT_s_AND_si,si_delay,MGM_W92);
   not MGM_G119(MGM_W93,d_delay);
   and MGM_G120(MGM_W94,s_delay,MGM_W93);
   not MGM_G121(MGM_W95,si_delay);
   and MGM_G122(ENABLE_NOT_d_AND_s_AND_NOT_si,MGM_W95,MGM_W94);
   not MGM_G123(MGM_W96,d_delay);
   and MGM_G124(MGM_W97,s_delay,MGM_W96);
   and MGM_G125(ENABLE_NOT_d_AND_s_AND_si,si_delay,MGM_W97);
   not MGM_G126(MGM_W98,s_delay);
   and MGM_G127(MGM_W99,MGM_W98,d_delay);
   not MGM_G128(MGM_W100,si_delay);
   and MGM_G129(ENABLE_d_AND_NOT_s_AND_NOT_si,MGM_W100,MGM_W99);
   not MGM_G130(MGM_W101,s_delay);
   and MGM_G131(MGM_W102,MGM_W101,d_delay);
   and MGM_G132(ENABLE_d_AND_NOT_s_AND_si,si_delay,MGM_W102);
   and MGM_G133(MGM_W103,s_delay,d_delay);
   not MGM_G134(MGM_W104,si_delay);
   and MGM_G135(ENABLE_d_AND_s_AND_NOT_si,MGM_W104,MGM_W103);
   and MGM_G136(MGM_W105,s_delay,d_delay);
   and MGM_G137(ENABLE_d_AND_s_AND_si,si_delay,MGM_W105);
   // spec_gates_end
  specify
   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge s --> o
    (negedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge s --> o
    (posedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge s --> o
    (negedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge s --> o
    (posedge s => (o:s)) = (0.0,0.0);

   ifnone
   // comb arc negedge s --> o
    (negedge s => (o:s)) = (0.0,0.0);

   ifnone
   // comb arc posedge s --> o
    (posedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o:ssb)
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o:ssb)
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge s --> so
    (negedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge s --> so
    (posedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge s --> so
    (negedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge s --> so
    (posedge s => (so:s)) = (0.0,0.0);

   ifnone
   // comb arc negedge s --> so
    (negedge s => (so:s)) = (0.0,0.0);

   ifnone
   // comb arc posedge s --> so
    (posedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL

   // setuphold d- clk-HL

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		negedge s &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		posedge s &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		negedge s &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		posedge s &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL

   // setuphold s- clk-HL

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH

   // setuphold si- clk-LH

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz008ab1d02x1( clk, d, o, s, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan sync preset latch with scanout and internal clock gating o = {if clk then (si*!ssb+(d+s)*ssb)} so = {if clk then (si*!ssb+(d+s)*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= si;
// end
// end
// always @ (IQ1 or clk or d or s or ssb)
// begin
// if (clk)
// begin
// IQ <= IQ1&d | IQ1&s | IQ1&~ssb | d&ssb | s&ssb;
// end
// end
// 
// assign o =  IQ;
// assign so =  IQ;
// 

   input clk, d, s, si, ssb;
   output o, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire o_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(o_random_init or so_random_init)
   if((o_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign o = ((random_init_ctrl_gls === 1'b1) && (o_random_init === 1'bx)) ? init_val : o_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign o = o_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d02x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.s(s),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz008ab_delay o_random_init = o_tmp ;
      assign `lsz008ab_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d02x1_behav_inst(.clk(clk),.d(d),.o(o_tmp),.s(s),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `lsz008ab_delay o_random_init = o_tmp ;
      assign `lsz008ab_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire s_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d02x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.s(s_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz008ab_func i0slsz008ab1d02x1_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.s(s_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif

  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,s_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,si_delay);
   and MGM_G4(MGM_W4,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W5,ssb_delay);
   and MGM_G6(ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb,MGM_W5,MGM_W4);
   not MGM_G7(MGM_W6,d_delay);
   not MGM_G8(MGM_W7,s_delay);
   and MGM_G9(MGM_W8,MGM_W7,MGM_W6);
   and MGM_G10(MGM_W9,si_delay,MGM_W8);
   not MGM_G11(MGM_W10,ssb_delay);
   and MGM_G12(ENABLE_NOT_d_AND_NOT_s_AND_si_AND_NOT_ssb,MGM_W10,MGM_W9);
   not MGM_G13(MGM_W11,d_delay);
   and MGM_G14(MGM_W12,s_delay,MGM_W11);
   not MGM_G15(MGM_W13,si_delay);
   and MGM_G16(MGM_W14,MGM_W13,MGM_W12);
   not MGM_G17(MGM_W15,ssb_delay);
   and MGM_G18(ENABLE_NOT_d_AND_s_AND_NOT_si_AND_NOT_ssb,MGM_W15,MGM_W14);
   not MGM_G19(MGM_W16,d_delay);
   and MGM_G20(MGM_W17,s_delay,MGM_W16);
   and MGM_G21(MGM_W18,si_delay,MGM_W17);
   not MGM_G22(MGM_W19,ssb_delay);
   and MGM_G23(ENABLE_NOT_d_AND_s_AND_si_AND_NOT_ssb,MGM_W19,MGM_W18);
   not MGM_G24(MGM_W20,s_delay);
   and MGM_G25(MGM_W21,MGM_W20,d_delay);
   not MGM_G26(MGM_W22,si_delay);
   and MGM_G27(MGM_W23,MGM_W22,MGM_W21);
   not MGM_G28(MGM_W24,ssb_delay);
   and MGM_G29(ENABLE_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb,MGM_W24,MGM_W23);
   not MGM_G30(MGM_W25,s_delay);
   and MGM_G31(MGM_W26,MGM_W25,d_delay);
   and MGM_G32(MGM_W27,si_delay,MGM_W26);
   not MGM_G33(MGM_W28,ssb_delay);
   and MGM_G34(ENABLE_d_AND_NOT_s_AND_si_AND_NOT_ssb,MGM_W28,MGM_W27);
   and MGM_G35(MGM_W29,s_delay,d_delay);
   not MGM_G36(MGM_W30,si_delay);
   and MGM_G37(MGM_W31,MGM_W30,MGM_W29);
   not MGM_G38(MGM_W32,ssb_delay);
   and MGM_G39(ENABLE_d_AND_s_AND_NOT_si_AND_NOT_ssb,MGM_W32,MGM_W31);
   and MGM_G40(MGM_W33,s_delay,d_delay);
   and MGM_G41(MGM_W34,si_delay,MGM_W33);
   not MGM_G42(MGM_W35,ssb_delay);
   and MGM_G43(ENABLE_d_AND_s_AND_si_AND_NOT_ssb,MGM_W35,MGM_W34);
   not MGM_G44(MGM_W36,d_delay);
   not MGM_G45(MGM_W37,s_delay);
   and MGM_G46(MGM_W38,MGM_W37,MGM_W36);
   not MGM_G47(MGM_W39,si_delay);
   and MGM_G48(MGM_W40,MGM_W39,MGM_W38);
   and MGM_G49(ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W40);
   not MGM_G50(MGM_W41,d_delay);
   not MGM_G51(MGM_W42,s_delay);
   and MGM_G52(MGM_W43,MGM_W42,MGM_W41);
   and MGM_G53(MGM_W44,si_delay,MGM_W43);
   and MGM_G54(ENABLE_NOT_d_AND_NOT_s_AND_si_AND_ssb,ssb_delay,MGM_W44);
   not MGM_G55(MGM_W45,d_delay);
   and MGM_G56(MGM_W46,s_delay,MGM_W45);
   not MGM_G57(MGM_W47,si_delay);
   and MGM_G58(MGM_W48,MGM_W47,MGM_W46);
   and MGM_G59(ENABLE_NOT_d_AND_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W48);
   not MGM_G60(MGM_W49,d_delay);
   and MGM_G61(MGM_W50,s_delay,MGM_W49);
   and MGM_G62(MGM_W51,si_delay,MGM_W50);
   and MGM_G63(ENABLE_NOT_d_AND_s_AND_si_AND_ssb,ssb_delay,MGM_W51);
   not MGM_G64(MGM_W52,s_delay);
   and MGM_G65(MGM_W53,MGM_W52,d_delay);
   not MGM_G66(MGM_W54,si_delay);
   and MGM_G67(MGM_W55,MGM_W54,MGM_W53);
   and MGM_G68(ENABLE_d_AND_NOT_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W55);
   not MGM_G69(MGM_W56,s_delay);
   and MGM_G70(MGM_W57,MGM_W56,d_delay);
   and MGM_G71(MGM_W58,si_delay,MGM_W57);
   and MGM_G72(ENABLE_d_AND_NOT_s_AND_si_AND_ssb,ssb_delay,MGM_W58);
   and MGM_G73(MGM_W59,s_delay,d_delay);
   not MGM_G74(MGM_W60,si_delay);
   and MGM_G75(MGM_W61,MGM_W60,MGM_W59);
   and MGM_G76(ENABLE_d_AND_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W61);
   and MGM_G77(MGM_W62,s_delay,d_delay);
   and MGM_G78(MGM_W63,si_delay,MGM_W62);
   and MGM_G79(ENABLE_d_AND_s_AND_si_AND_ssb,ssb_delay,MGM_W63);
   not MGM_G80(MGM_W64,s_delay);
   not MGM_G81(MGM_W65,si_delay);
   and MGM_G82(MGM_W66,MGM_W65,MGM_W64);
   and MGM_G83(ENABLE_NOT_s_AND_NOT_si_AND_ssb,ssb_delay,MGM_W66);
   not MGM_G84(MGM_W67,s_delay);
   and MGM_G85(MGM_W68,si_delay,MGM_W67);
   and MGM_G86(ENABLE_NOT_s_AND_si_AND_ssb,ssb_delay,MGM_W68);
   not MGM_G87(MGM_W69,d_delay);
   not MGM_G88(MGM_W70,si_delay);
   and MGM_G89(MGM_W71,MGM_W70,MGM_W69);
   and MGM_G90(ENABLE_NOT_d_AND_NOT_si_AND_ssb,ssb_delay,MGM_W71);
   not MGM_G91(MGM_W72,d_delay);
   and MGM_G92(MGM_W73,si_delay,MGM_W72);
   and MGM_G93(ENABLE_NOT_d_AND_si_AND_ssb,ssb_delay,MGM_W73);
   not MGM_G94(MGM_W74,d_delay);
   not MGM_G95(MGM_W75,s_delay);
   and MGM_G96(MGM_W76,MGM_W75,MGM_W74);
   not MGM_G97(MGM_W77,ssb_delay);
   and MGM_G98(ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb,MGM_W77,MGM_W76);
   not MGM_G99(MGM_W78,d_delay);
   and MGM_G100(MGM_W79,s_delay,MGM_W78);
   not MGM_G101(MGM_W80,ssb_delay);
   and MGM_G102(ENABLE_NOT_d_AND_s_AND_NOT_ssb,MGM_W80,MGM_W79);
   not MGM_G103(MGM_W81,s_delay);
   and MGM_G104(MGM_W82,MGM_W81,d_delay);
   not MGM_G105(MGM_W83,ssb_delay);
   and MGM_G106(ENABLE_d_AND_NOT_s_AND_NOT_ssb,MGM_W83,MGM_W82);
   and MGM_G107(MGM_W84,s_delay,d_delay);
   not MGM_G108(MGM_W85,ssb_delay);
   and MGM_G109(ENABLE_d_AND_s_AND_NOT_ssb,MGM_W85,MGM_W84);
   not MGM_G110(MGM_W86,d_delay);
   not MGM_G111(MGM_W87,s_delay);
   and MGM_G112(MGM_W88,MGM_W87,MGM_W86);
   not MGM_G113(MGM_W89,si_delay);
   and MGM_G114(ENABLE_NOT_d_AND_NOT_s_AND_NOT_si,MGM_W89,MGM_W88);
   not MGM_G115(MGM_W90,d_delay);
   not MGM_G116(MGM_W91,s_delay);
   and MGM_G117(MGM_W92,MGM_W91,MGM_W90);
   and MGM_G118(ENABLE_NOT_d_AND_NOT_s_AND_si,si_delay,MGM_W92);
   not MGM_G119(MGM_W93,d_delay);
   and MGM_G120(MGM_W94,s_delay,MGM_W93);
   not MGM_G121(MGM_W95,si_delay);
   and MGM_G122(ENABLE_NOT_d_AND_s_AND_NOT_si,MGM_W95,MGM_W94);
   not MGM_G123(MGM_W96,d_delay);
   and MGM_G124(MGM_W97,s_delay,MGM_W96);
   and MGM_G125(ENABLE_NOT_d_AND_s_AND_si,si_delay,MGM_W97);
   not MGM_G126(MGM_W98,s_delay);
   and MGM_G127(MGM_W99,MGM_W98,d_delay);
   not MGM_G128(MGM_W100,si_delay);
   and MGM_G129(ENABLE_d_AND_NOT_s_AND_NOT_si,MGM_W100,MGM_W99);
   not MGM_G130(MGM_W101,s_delay);
   and MGM_G131(MGM_W102,MGM_W101,d_delay);
   and MGM_G132(ENABLE_d_AND_NOT_s_AND_si,si_delay,MGM_W102);
   and MGM_G133(MGM_W103,s_delay,d_delay);
   not MGM_G134(MGM_W104,si_delay);
   and MGM_G135(ENABLE_d_AND_s_AND_NOT_si,MGM_W104,MGM_W103);
   and MGM_G136(MGM_W105,s_delay,d_delay);
   and MGM_G137(ENABLE_d_AND_s_AND_si,si_delay,MGM_W105);
   // spec_gates_end
  specify
   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge s --> o
    (negedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge s --> o
    (posedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge s --> o
    (negedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge s --> o
    (posedge s => (o:s)) = (0.0,0.0);

   ifnone
   // comb arc negedge s --> o
    (negedge s => (o:s)) = (0.0,0.0);

   ifnone
   // comb arc posedge s --> o
    (posedge s => (o:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o:ssb)
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o:ssb)
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o
    (negedge ssb => (o:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o
    (posedge ssb => (o:ssb)) = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b0 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(d==1'b1 && s==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && s==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc negedge s --> so
    (negedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0 && ssb==1'b1)
   // comb arc posedge s --> so
    (posedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc negedge s --> so
    (negedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1 && ssb==1'b1)
   // comb arc posedge s --> so
    (posedge s => (so:s)) = (0.0,0.0);

   ifnone
   // comb arc negedge s --> so
    (negedge s => (so:s)) = (0.0,0.0);

   ifnone
   // comb arc posedge s --> so
    (posedge s => (so:s)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && s==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_s_AND_si_AND_ssb == 1'b1)
		,0.0,0,notifier);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_NOT_s_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		negedge d &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		posedge d &&& (ENABLE_NOT_s_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,d_delay);

   // setuphold d- clk-HL

   // setuphold d- clk-HL

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		negedge s &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		posedge s &&& (ENABLE_NOT_d_AND_NOT_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		negedge s &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		posedge s &&& (ENABLE_NOT_d_AND_si_AND_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,s_delay);

   // setuphold s- clk-HL

   // setuphold s- clk-HL

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_NOT_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_d_AND_s_AND_NOT_ssb == 1'b1),
		0.0,0.0,notifier,,,clk_delay,si_delay);

   // setuphold si- clk-LH

   // setuphold si- clk-LH

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_NOT_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_s_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d_AND_s_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz200ab1d01x1( clk, d1, d2, o1, o2, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan 2bit latch with internally stitched scanout and internal clock gating o1 = {if clk then (si*!ssb+d1*ssb)} o2 = {if clk then (o1*!ssb+d2*ssb)} so = {if clk then (o1*!ssb+d2*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1_master <= ~si;
// end
// end
// always @ (IQ1_master or clk or d1 or ssb)
// begin
// if (clk)
// begin
// IQ1_slave <= ssb ? ~d1 : IQ1_master;
// end
// end
// always @ (IQ1_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ2_master <= IQ1_slave;
// end
// end
// always @ (IQ2_master or clk or d2 or ssb)
// begin
// if (clk)
// begin
// IQ2_slave <= ssb ? ~d2 : IQ2_master;
// end
// end
// 
// assign o1 =  !IQ1_slave;
// assign o2 =  !IQ2_slave;
// assign so =  !IQ2_slave;
// 

   input clk, d1, d2, si, ssb;
   output o1, o2, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire so_random_init;
wire o1_random_init;
wire o2_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(so_random_init or o1_random_init or o2_random_init)
   if((so_random_init !== 1'bx) && (o1_random_init !== 1'bx) && (o2_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
   assign o1 = ((random_init_ctrl_gls === 1'b1) && (o1_random_init === 1'bx)) ? init_val : o1_random_init;
   assign o2 = ((random_init_ctrl_gls === 1'b1) && (o2_random_init === 1'bx)) ? init_val : o2_random_init;
`else
   assign so = so_random_init;
   assign o1 = o1_random_init;
   assign o2 = o2_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d01x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.d1(d1),.d2(d2),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz200ab_delay so_random_init = so_tmp ;
      assign `lsz200ab_delay o1_random_init = o1_tmp ;
      assign `lsz200ab_delay o2_random_init = o2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d01x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.d1(d1),.d2(d2),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0));
      assign `lsz200ab_delay so_random_init = so_tmp ;
      assign `lsz200ab_delay o1_random_init = o1_tmp ;
      assign `lsz200ab_delay o2_random_init = o2_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d1_delay ;
   wire d2_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   reg notifier2;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
     notifier2 = (notifier2 !== notifier) ? notifier : ~notifier2;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d01x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.d1(d1_delay),.d2(d2_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d01x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.d1(d1_delay),.d2(d2_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d1_delay);
   not MGM_G1(MGM_W1,d2_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   and MGM_G3(ENABLE_NOT_d1_AND_NOT_d2_AND_ssb,ssb_delay,MGM_W2);
   not MGM_G4(MGM_W3,si_delay);
   not MGM_G5(MGM_W4,ssb_delay);
   and MGM_G6(ENABLE_NOT_si_AND_NOT_ssb,MGM_W4,MGM_W3);
   and MGM_G7(MGM_W5,d2_delay,d1_delay);
   and MGM_G8(ENABLE_d1_AND_d2_AND_ssb,ssb_delay,MGM_W5);
   not MGM_G9(MGM_W6,ssb_delay);
   and MGM_G10(ENABLE_si_AND_NOT_ssb,MGM_W6,si_delay);
   not MGM_G11(ENABLE_NOT_ssb,ssb_delay);
   not MGM_G12(MGM_W7,d1_delay);
   not MGM_G13(MGM_W8,d2_delay);
   and MGM_G14(MGM_W9,MGM_W8,MGM_W7);
   not MGM_G15(MGM_W10,si_delay);
   and MGM_G16(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si,MGM_W10,MGM_W9);
   not MGM_G17(MGM_W11,d1_delay);
   not MGM_G18(MGM_W12,d2_delay);
   and MGM_G19(MGM_W13,MGM_W12,MGM_W11);
   and MGM_G20(ENABLE_NOT_d1_AND_NOT_d2_AND_si,si_delay,MGM_W13);
   and MGM_G21(MGM_W14,d2_delay,d1_delay);
   not MGM_G22(MGM_W15,si_delay);
   and MGM_G23(ENABLE_d1_AND_d2_AND_NOT_si,MGM_W15,MGM_W14);
   and MGM_G24(MGM_W16,d2_delay,d1_delay);
   and MGM_G25(ENABLE_d1_AND_d2_AND_si,si_delay,MGM_W16);
   buf MGM_G26(ENABLE_ssb,ssb_delay);
   // spec_gates_end
  specify
   if(d1==1'b0 && d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d2 --> so
    (negedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d2 --> so
    (posedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d2 --> so
    (negedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d2 --> so
    (posedge d2 => (so:d2)) = (0.0,0.0);

   ifnone
   // comb arc negedge d2 --> so
    (negedge d2 => (so:d2)) = (0.0,0.0);

   ifnone
   // comb arc posedge d2 --> so
    (posedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o1:ssb)
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o1:ssb)
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o2:ssb)
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o2:ssb)
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   $width(posedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d1_AND_d2_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz200ab1d02x1( clk, d1, d2, o1, o2, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan 2bit latch with internally stitched scanout and internal clock gating o1 = {if clk then (si*!ssb+d1*ssb)} o2 = {if clk then (o1*!ssb+d2*ssb)} so = {if clk then (o1*!ssb+d2*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1_master <= ~si;
// end
// end
// always @ (IQ1_master or clk or d1 or ssb)
// begin
// if (clk)
// begin
// IQ1_slave <= ssb ? ~d1 : IQ1_master;
// end
// end
// always @ (IQ1_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ2_master <= IQ1_slave;
// end
// end
// always @ (IQ2_master or clk or d2 or ssb)
// begin
// if (clk)
// begin
// IQ2_slave <= ssb ? ~d2 : IQ2_master;
// end
// end
// 
// assign o1 =  !IQ1_slave;
// assign o2 =  !IQ2_slave;
// assign so =  !IQ2_slave;
// 

   input clk, d1, d2, si, ssb;
   output o1, o2, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire so_random_init;
wire o1_random_init;
wire o2_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(so_random_init or o1_random_init or o2_random_init)
   if((so_random_init !== 1'bx) && (o1_random_init !== 1'bx) && (o2_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
   assign o1 = ((random_init_ctrl_gls === 1'b1) && (o1_random_init === 1'bx)) ? init_val : o1_random_init;
   assign o2 = ((random_init_ctrl_gls === 1'b1) && (o2_random_init === 1'bx)) ? init_val : o2_random_init;
`else
   assign so = so_random_init;
   assign o1 = o1_random_init;
   assign o2 = o2_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d02x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.d1(d1),.d2(d2),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz200ab_delay so_random_init = so_tmp ;
      assign `lsz200ab_delay o1_random_init = o1_tmp ;
      assign `lsz200ab_delay o2_random_init = o2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d02x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.d1(d1),.d2(d2),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0));
      assign `lsz200ab_delay so_random_init = so_tmp ;
      assign `lsz200ab_delay o1_random_init = o1_tmp ;
      assign `lsz200ab_delay o2_random_init = o2_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d1_delay ;
   wire d2_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   reg notifier2;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
     notifier2 = (notifier2 !== notifier) ? notifier : ~notifier2;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d02x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.d1(d1_delay),.d2(d2_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz200ab_func i0slsz200ab1d02x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.d1(d1_delay),.d2(d2_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d1_delay);
   not MGM_G1(MGM_W1,d2_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   and MGM_G3(ENABLE_NOT_d1_AND_NOT_d2_AND_ssb,ssb_delay,MGM_W2);
   not MGM_G4(MGM_W3,si_delay);
   not MGM_G5(MGM_W4,ssb_delay);
   and MGM_G6(ENABLE_NOT_si_AND_NOT_ssb,MGM_W4,MGM_W3);
   and MGM_G7(MGM_W5,d2_delay,d1_delay);
   and MGM_G8(ENABLE_d1_AND_d2_AND_ssb,ssb_delay,MGM_W5);
   not MGM_G9(MGM_W6,ssb_delay);
   and MGM_G10(ENABLE_si_AND_NOT_ssb,MGM_W6,si_delay);
   not MGM_G11(ENABLE_NOT_ssb,ssb_delay);
   not MGM_G12(MGM_W7,d1_delay);
   not MGM_G13(MGM_W8,d2_delay);
   and MGM_G14(MGM_W9,MGM_W8,MGM_W7);
   not MGM_G15(MGM_W10,si_delay);
   and MGM_G16(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si,MGM_W10,MGM_W9);
   not MGM_G17(MGM_W11,d1_delay);
   not MGM_G18(MGM_W12,d2_delay);
   and MGM_G19(MGM_W13,MGM_W12,MGM_W11);
   and MGM_G20(ENABLE_NOT_d1_AND_NOT_d2_AND_si,si_delay,MGM_W13);
   and MGM_G21(MGM_W14,d2_delay,d1_delay);
   not MGM_G22(MGM_W15,si_delay);
   and MGM_G23(ENABLE_d1_AND_d2_AND_NOT_si,MGM_W15,MGM_W14);
   and MGM_G24(MGM_W16,d2_delay,d1_delay);
   and MGM_G25(ENABLE_d1_AND_d2_AND_si,si_delay,MGM_W16);
   buf MGM_G26(ENABLE_ssb,ssb_delay);
   // spec_gates_end
  specify
   if(d1==1'b0 && d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d2 --> so
    (negedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d2 --> so
    (posedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d2 --> so
    (negedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d2 --> so
    (posedge d2 => (so:d2)) = (0.0,0.0);

   ifnone
   // comb arc negedge d2 --> so
    (negedge d2 => (so:d2)) = (0.0,0.0);

   ifnone
   // comb arc posedge d2 --> so
    (posedge d2 => (so:d2)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o1:ssb)
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o1:ssb)
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o2:ssb)
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o2:ssb)
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   $width(posedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d1_AND_d2_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz400ab1q01x1( clk, d1, d2, d3, d4, o1, o2, o3, o4, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan 4bit latch with internally stitched scanout and internal clock gating o1 = {if clk then (si*!ssb+d1*ssb)} o2 = {if clk then (o1*!ssb+d2*ssb)} o3 = {if clk then (o2*!ssb+d3*ssb)} o4 = {if clk then (o3*!ssb+d4*ssb)} so = {if clk then (o3*!ssb+d4*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1_master <= ~si;
// end
// end
// always @ (IQ1_master or clk or d1 or ssb)
// begin
// if (clk)
// begin
// IQ1_slave <= ssb ? ~d1 : IQ1_master;
// end
// end
// always @ (IQ1_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ2_master <= IQ1_slave;
// end
// end
// always @ (IQ2_master or clk or d2 or ssb)
// begin
// if (clk)
// begin
// IQ2_slave <= ssb ? ~d2 : IQ2_master;
// end
// end
// always @ (IQ2_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ3_master <= IQ2_slave;
// end
// end
// always @ (IQ3_master or clk or d3 or ssb)
// begin
// if (clk)
// begin
// IQ3_slave <= ssb ? ~d3 : IQ3_master;
// end
// end
// always @ (IQ3_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ4_master <= IQ3_slave;
// end
// end
// always @ (IQ4_master or clk or d4 or ssb)
// begin
// if (clk)
// begin
// IQ4_slave <= ssb ? ~d4 : IQ4_master;
// end
// end
// 
// assign o1 =  !IQ1_slave;
// assign o2 =  !IQ2_slave;
// assign o3 =  !IQ3_slave;
// assign o4 =  !IQ4_slave;
// assign so =  !IQ4_slave;
// 

   input clk, d1, d2, d3, d4, si, ssb;
   output o1, o2, o3, o4, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire so_random_init;
wire o1_random_init;
wire o2_random_init;
wire o3_random_init;
wire o4_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(so_random_init or o1_random_init or o2_random_init or o3_random_init or o4_random_init)
   if((so_random_init !== 1'bx) && (o1_random_init !== 1'bx) && (o2_random_init !== 1'bx) && (o3_random_init !== 1'bx) && (o4_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
   assign o1 = ((random_init_ctrl_gls === 1'b1) && (o1_random_init === 1'bx)) ? init_val : o1_random_init;
   assign o2 = ((random_init_ctrl_gls === 1'b1) && (o2_random_init === 1'bx)) ? init_val : o2_random_init;
   assign o3 = ((random_init_ctrl_gls === 1'b1) && (o3_random_init === 1'bx)) ? init_val : o3_random_init;
   assign o4 = ((random_init_ctrl_gls === 1'b1) && (o4_random_init === 1'bx)) ? init_val : o4_random_init;
`else
   assign so = so_random_init;
   assign o1 = o1_random_init;
   assign o2 = o2_random_init;
   assign o3 = o3_random_init;
   assign o4 = o4_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q01x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.o3(o3_tmp),.o4(o4_tmp),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0),.notifier3(1'b0),.notifier4(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz400ab_delay so_random_init = so_tmp ;
      assign `lsz400ab_delay o1_random_init = o1_tmp ;
      assign `lsz400ab_delay o2_random_init = o2_tmp ;
      assign `lsz400ab_delay o3_random_init = o3_tmp ;
      assign `lsz400ab_delay o4_random_init = o4_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q01x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.o3(o3_tmp),.o4(o4_tmp),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0),.notifier3(1'b0),.notifier4(1'b0));
      assign `lsz400ab_delay so_random_init = so_tmp ;
      assign `lsz400ab_delay o1_random_init = o1_tmp ;
      assign `lsz400ab_delay o2_random_init = o2_tmp ;
      assign `lsz400ab_delay o3_random_init = o3_tmp ;
      assign `lsz400ab_delay o4_random_init = o4_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d1_delay ;
   wire d2_delay ;
   wire d3_delay ;
   wire d4_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   reg notifier2;
   reg notifier3;
   reg notifier4;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
     notifier2 = (notifier2 !== notifier) ? notifier : ~notifier2;
     notifier3 = (notifier3 !== notifier) ? notifier : ~notifier3;
     notifier4 = (notifier4 !== notifier) ? notifier : ~notifier4;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q01x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.o3(o3_random_init),.o4(o4_random_init),.d1(d1_delay),.d2(d2_delay),.d3(d3_delay),.d4(d4_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2),.notifier3(notifier3),.notifier4(notifier4),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q01x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.o3(o3_random_init),.o4(o4_random_init),.d1(d1_delay),.d2(d2_delay),.d3(d3_delay),.d4(d4_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2),.notifier3(notifier3),.notifier4(notifier4));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d1_delay);
   not MGM_G1(MGM_W1,d2_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,d3_delay);
   and MGM_G4(MGM_W4,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W5,d4_delay);
   and MGM_G6(MGM_W6,MGM_W5,MGM_W4);
   and MGM_G7(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_ssb,ssb_delay,MGM_W6);
   not MGM_G8(MGM_W7,si_delay);
   not MGM_G9(MGM_W8,ssb_delay);
   and MGM_G10(ENABLE_NOT_si_AND_NOT_ssb,MGM_W8,MGM_W7);
   and MGM_G11(MGM_W9,d2_delay,d1_delay);
   and MGM_G12(MGM_W10,d3_delay,MGM_W9);
   and MGM_G13(MGM_W11,d4_delay,MGM_W10);
   and MGM_G14(ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_ssb,ssb_delay,MGM_W11);
   not MGM_G15(MGM_W12,ssb_delay);
   and MGM_G16(ENABLE_si_AND_NOT_ssb,MGM_W12,si_delay);
   not MGM_G17(ENABLE_NOT_ssb,ssb_delay);
   not MGM_G18(MGM_W13,d1_delay);
   not MGM_G19(MGM_W14,d2_delay);
   and MGM_G20(MGM_W15,MGM_W14,MGM_W13);
   not MGM_G21(MGM_W16,d3_delay);
   and MGM_G22(MGM_W17,MGM_W16,MGM_W15);
   not MGM_G23(MGM_W18,d4_delay);
   and MGM_G24(MGM_W19,MGM_W18,MGM_W17);
   not MGM_G25(MGM_W20,si_delay);
   and MGM_G26(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si,MGM_W20,MGM_W19);
   not MGM_G27(MGM_W21,d1_delay);
   not MGM_G28(MGM_W22,d2_delay);
   and MGM_G29(MGM_W23,MGM_W22,MGM_W21);
   not MGM_G30(MGM_W24,d3_delay);
   and MGM_G31(MGM_W25,MGM_W24,MGM_W23);
   not MGM_G32(MGM_W26,d4_delay);
   and MGM_G33(MGM_W27,MGM_W26,MGM_W25);
   and MGM_G34(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si,si_delay,MGM_W27);
   and MGM_G35(MGM_W28,d2_delay,d1_delay);
   and MGM_G36(MGM_W29,d3_delay,MGM_W28);
   and MGM_G37(MGM_W30,d4_delay,MGM_W29);
   not MGM_G38(MGM_W31,si_delay);
   and MGM_G39(ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si,MGM_W31,MGM_W30);
   and MGM_G40(MGM_W32,d2_delay,d1_delay);
   and MGM_G41(MGM_W33,d3_delay,MGM_W32);
   and MGM_G42(MGM_W34,d4_delay,MGM_W33);
   and MGM_G43(ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si,si_delay,MGM_W34);
   buf MGM_G44(ENABLE_ssb,ssb_delay);
   // spec_gates_end
  specify
   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d4 --> so
    (negedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d4 --> so
    (posedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d4 --> so
    (negedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d4 --> so
    (posedge d4 => (so:d4)) = (0.0,0.0);

   ifnone
   // comb arc negedge d4 --> so
    (negedge d4 => (so:d4)) = (0.0,0.0);

   ifnone
   // comb arc posedge d4 --> so
    (posedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o1:ssb)
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o1:ssb)
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o2:ssb)
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o2:ssb)
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(d3==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d3 --> o3
    (negedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d3 --> o3
    (posedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d3 --> o3
    (negedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d3 --> o3
    (posedge d3 => (o3:d3)) = (0.0,0.0);

   ifnone
   // comb arc negedge d3 --> o3
    (negedge d3 => (o3:d3)) = (0.0,0.0);

   ifnone
   // comb arc posedge d3 --> o3
    (posedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o3:ssb)
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o3:ssb)
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d4 --> o4
    (negedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d4 --> o4
    (posedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d4 --> o4
    (negedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d4 --> o4
    (posedge d4 => (o4:d4)) = (0.0,0.0);

   ifnone
   // comb arc negedge d4 --> o4
    (negedge d4 => (o4:d4)) = (0.0,0.0);

   ifnone
   // comb arc posedge d4 --> o4
    (posedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o4:ssb)
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o4:ssb)
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   $width(posedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

   // setuphold d3- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d3 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier2,,,clk_delay,d3_delay);

   // setuphold d3- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d3 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier2,,,clk_delay,d3_delay);

   // setuphold d4- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d4 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier3,,,clk_delay,d4_delay);

   // setuphold d4- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d4 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier3,,,clk_delay,d4_delay);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0slsz400ab1q02x1( clk, d1, d2, d3, d4, o1, o2, o3, o4, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan 4bit latch with internally stitched scanout and internal clock gating o1 = {if clk then (si*!ssb+d1*ssb)} o2 = {if clk then (o1*!ssb+d2*ssb)} o3 = {if clk then (o2*!ssb+d3*ssb)} o4 = {if clk then (o3*!ssb+d4*ssb)} so = {if clk then (o3*!ssb+d4*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1_master <= ~si;
// end
// end
// always @ (IQ1_master or clk or d1 or ssb)
// begin
// if (clk)
// begin
// IQ1_slave <= ssb ? ~d1 : IQ1_master;
// end
// end
// always @ (IQ1_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ2_master <= IQ1_slave;
// end
// end
// always @ (IQ2_master or clk or d2 or ssb)
// begin
// if (clk)
// begin
// IQ2_slave <= ssb ? ~d2 : IQ2_master;
// end
// end
// always @ (IQ2_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ3_master <= IQ2_slave;
// end
// end
// always @ (IQ3_master or clk or d3 or ssb)
// begin
// if (clk)
// begin
// IQ3_slave <= ssb ? ~d3 : IQ3_master;
// end
// end
// always @ (IQ3_slave or clk or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ4_master <= IQ3_slave;
// end
// end
// always @ (IQ4_master or clk or d4 or ssb)
// begin
// if (clk)
// begin
// IQ4_slave <= ssb ? ~d4 : IQ4_master;
// end
// end
// 
// assign o1 =  !IQ1_slave;
// assign o2 =  !IQ2_slave;
// assign o3 =  !IQ3_slave;
// assign o4 =  !IQ4_slave;
// assign so =  !IQ4_slave;
// 

   input clk, d1, d2, d3, d4, si, ssb;
   output o1, o2, o3, o4, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

wire so_random_init;
wire o1_random_init;
wire o2_random_init;
wire o3_random_init;
wire o4_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(so_random_init or o1_random_init or o2_random_init or o3_random_init or o4_random_init)
   if((so_random_init !== 1'bx) && (o1_random_init !== 1'bx) && (o2_random_init !== 1'bx) && (o3_random_init !== 1'bx) && (o4_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
   assign o1 = ((random_init_ctrl_gls === 1'b1) && (o1_random_init === 1'bx)) ? init_val : o1_random_init;
   assign o2 = ((random_init_ctrl_gls === 1'b1) && (o2_random_init === 1'bx)) ? init_val : o2_random_init;
   assign o3 = ((random_init_ctrl_gls === 1'b1) && (o3_random_init === 1'bx)) ? init_val : o3_random_init;
   assign o4 = ((random_init_ctrl_gls === 1'b1) && (o4_random_init === 1'bx)) ? init_val : o4_random_init;
`else
   assign so = so_random_init;
   assign o1 = o1_random_init;
   assign o2 = o2_random_init;
   assign o3 = o3_random_init;
   assign o4 = o4_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q02x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.o3(o3_tmp),.o4(o4_tmp),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0),.notifier3(1'b0),.notifier4(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lsz400ab_delay so_random_init = so_tmp ;
      assign `lsz400ab_delay o1_random_init = o1_tmp ;
      assign `lsz400ab_delay o2_random_init = o2_tmp ;
      assign `lsz400ab_delay o3_random_init = o3_tmp ;
      assign `lsz400ab_delay o4_random_init = o4_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q02x1_behav_inst(.clk(clk),.si(si),.so(so_tmp),.ssb(ssb),.o1(o1_tmp),.o2(o2_tmp),.o3(o3_tmp),.o4(o4_tmp),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.notifier(1'b0),.notifier0(1'b0),.notifier1(1'b0),.notifier2(1'b0),.notifier3(1'b0),.notifier4(1'b0));
      assign `lsz400ab_delay so_random_init = so_tmp ;
      assign `lsz400ab_delay o1_random_init = o1_tmp ;
      assign `lsz400ab_delay o2_random_init = o2_tmp ;
      assign `lsz400ab_delay o3_random_init = o3_tmp ;
      assign `lsz400ab_delay o4_random_init = o4_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d1_delay ;
   wire d2_delay ;
   wire d3_delay ;
   wire d4_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   reg notifier0;
   reg notifier1;
   reg notifier2;
   reg notifier3;
   reg notifier4;
   
   always@(notifier) begin
     notifier0 = (notifier0 !== notifier) ? notifier : ~notifier0;
     notifier1 = (notifier1 !== notifier) ? notifier : ~notifier1;
     notifier2 = (notifier2 !== notifier) ? notifier : ~notifier2;
     notifier3 = (notifier3 !== notifier) ? notifier : ~notifier3;
     notifier4 = (notifier4 !== notifier) ? notifier : ~notifier4;
   end
   
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q02x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.o3(o3_random_init),.o4(o4_random_init),.d1(d1_delay),.d2(d2_delay),.d3(d3_delay),.d4(d4_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2),.notifier3(notifier3),.notifier4(notifier4),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiseq_lsz400ab_func i0slsz400ab1q02x1_inst(.clk(clk_delay),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.o1(o1_random_init),.o2(o2_random_init),.o3(o3_random_init),.o4(o4_random_init),.d1(d1_delay),.d2(d2_delay),.d3(d3_delay),.d4(d4_delay),.notifier(notifier),.notifier0(notifier0),.notifier1(notifier1),.notifier2(notifier2),.notifier3(notifier3),.notifier4(notifier4));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d1_delay);
   not MGM_G1(MGM_W1,d2_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,d3_delay);
   and MGM_G4(MGM_W4,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W5,d4_delay);
   and MGM_G6(MGM_W6,MGM_W5,MGM_W4);
   and MGM_G7(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_ssb,ssb_delay,MGM_W6);
   not MGM_G8(MGM_W7,si_delay);
   not MGM_G9(MGM_W8,ssb_delay);
   and MGM_G10(ENABLE_NOT_si_AND_NOT_ssb,MGM_W8,MGM_W7);
   and MGM_G11(MGM_W9,d2_delay,d1_delay);
   and MGM_G12(MGM_W10,d3_delay,MGM_W9);
   and MGM_G13(MGM_W11,d4_delay,MGM_W10);
   and MGM_G14(ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_ssb,ssb_delay,MGM_W11);
   not MGM_G15(MGM_W12,ssb_delay);
   and MGM_G16(ENABLE_si_AND_NOT_ssb,MGM_W12,si_delay);
   not MGM_G17(ENABLE_NOT_ssb,ssb_delay);
   not MGM_G18(MGM_W13,d1_delay);
   not MGM_G19(MGM_W14,d2_delay);
   and MGM_G20(MGM_W15,MGM_W14,MGM_W13);
   not MGM_G21(MGM_W16,d3_delay);
   and MGM_G22(MGM_W17,MGM_W16,MGM_W15);
   not MGM_G23(MGM_W18,d4_delay);
   and MGM_G24(MGM_W19,MGM_W18,MGM_W17);
   not MGM_G25(MGM_W20,si_delay);
   and MGM_G26(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si,MGM_W20,MGM_W19);
   not MGM_G27(MGM_W21,d1_delay);
   not MGM_G28(MGM_W22,d2_delay);
   and MGM_G29(MGM_W23,MGM_W22,MGM_W21);
   not MGM_G30(MGM_W24,d3_delay);
   and MGM_G31(MGM_W25,MGM_W24,MGM_W23);
   not MGM_G32(MGM_W26,d4_delay);
   and MGM_G33(MGM_W27,MGM_W26,MGM_W25);
   and MGM_G34(ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si,si_delay,MGM_W27);
   and MGM_G35(MGM_W28,d2_delay,d1_delay);
   and MGM_G36(MGM_W29,d3_delay,MGM_W28);
   and MGM_G37(MGM_W30,d4_delay,MGM_W29);
   not MGM_G38(MGM_W31,si_delay);
   and MGM_G39(ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si,MGM_W31,MGM_W30);
   and MGM_G40(MGM_W32,d2_delay,d1_delay);
   and MGM_G41(MGM_W33,d3_delay,MGM_W32);
   and MGM_G42(MGM_W34,d4_delay,MGM_W33);
   and MGM_G43(ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si,si_delay,MGM_W34);
   buf MGM_G44(ENABLE_ssb,ssb_delay);
   // spec_gates_end
  specify
   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> so
   (posedge clk => (so : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d4 --> so
    (negedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d4 --> so
    (posedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d4 --> so
    (negedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d4 --> so
    (posedge d4 => (so:d4)) = (0.0,0.0);

   ifnone
   // comb arc negedge d4 --> so
    (negedge d4 => (so:d4)) = (0.0,0.0);

   ifnone
   // comb arc posedge d4 --> so
    (posedge d4 => (so:d4)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b0 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b0 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && d2==1'b1 && d3==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(d1==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o1
   (posedge clk => (o1 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc negedge d1 --> o1
    (negedge d1 => (o1:d1)) = (0.0,0.0);

   ifnone
   // comb arc posedge d1 --> o1
    (posedge d1 => (o1:d1)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o1:ssb)
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o1:ssb)
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o1
    (negedge ssb => (o1:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d1==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o1
    (posedge ssb => (o1:ssb)) = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(d2==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o2
   (posedge clk => (o2 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc negedge d2 --> o2
    (negedge d2 => (o2:d2)) = (0.0,0.0);

   ifnone
   // comb arc posedge d2 --> o2
    (posedge d2 => (o2:d2)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o2:ssb)
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o2:ssb)
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o2
    (negedge ssb => (o2:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d2==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o2
    (posedge ssb => (o2:ssb)) = (0.0,0.0);

   if(d3==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(d3==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o3
   (posedge clk => (o3 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d3 --> o3
    (negedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d3 --> o3
    (posedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d3 --> o3
    (negedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d3 --> o3
    (posedge d3 => (o3:d3)) = (0.0,0.0);

   ifnone
   // comb arc negedge d3 --> o3
    (negedge d3 => (o3:d3)) = (0.0,0.0);

   ifnone
   // comb arc posedge d3 --> o3
    (posedge d3 => (o3:d3)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o3:ssb)
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o3:ssb)
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o3
    (negedge ssb => (o3:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d3==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o3
    (posedge ssb => (o3:ssb)) = (0.0,0.0);

   if(d4==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(d4==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> o4
   (posedge clk => (o4 : si))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d4 --> o4
    (negedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d4 --> o4
    (posedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d4 --> o4
    (negedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d4 --> o4
    (posedge d4 => (o4:d4)) = (0.0,0.0);

   ifnone
   // comb arc negedge d4 --> o4
    (negedge d4 => (o4:d4)) = (0.0,0.0);

   ifnone
   // comb arc posedge d4 --> o4
    (posedge d4 => (o4:d4)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b0)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b0 && si==1'b1)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (o4:ssb)
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (o4:ssb)
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b0)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc negedge ssb --> o4
    (negedge ssb => (o4:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d4==1'b1 && si==1'b1)
   // comb arc posedge ssb --> o4
    (posedge ssb => (o4:ssb)) = (0.0,0.0);

   $width(posedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_si_AND_NOT_ssb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk,0.0,0,notifier);

   $width(negedge clk,0.0,0,notifier);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		negedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold si- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_ssb == 1'b1),
		posedge si &&& (ENABLE_NOT_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,si_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_NOT_d1_AND_NOT_d2_AND_NOT_d3_AND_NOT_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_NOT_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		negedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL
   $setuphold(negedge clk &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		posedge ssb &&& (ENABLE_d1_AND_d2_AND_d3_AND_d4_AND_si == 1'b1),
		0.0,0.0,notifier,,,clk_delay,ssb_delay);

   // setuphold ssb- clk-HL

   // setuphold ssb- clk-HL

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d1- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d1 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier0,,,clk_delay,d1_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

   // setuphold d2- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d2 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier1,,,clk_delay,d2_delay);

   // setuphold d3- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d3 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier2,,,clk_delay,d3_delay);

   // setuphold d3- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d3 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier2,,,clk_delay,d3_delay);

   // setuphold d4- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		negedge d4 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier3,,,clk_delay,d4_delay);

   // setuphold d4- clk-HL
   $setuphold(negedge clk &&& (ENABLE_ssb == 1'b1),
		posedge d4 &&& (ENABLE_ssb == 1'b1),
		0.0,0.0,notifier3,,,clk_delay,d4_delay);

  endspecify
`endif
endmodule
`endcelldefine 




