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
     `ifndef lun010aa_delay
        `define lun010aa_delay `seq_delay_value
     `endif
     `ifndef lun090aa_delay
        `define lun090aa_delay `seq_delay_value
     `endif
     `ifndef lun210aa_delay
        `define lun210aa_delay `seq_delay_value
     `endif
     `ifndef lun290aa_delay
        `define lun290aa_delay `seq_delay_value
     `endif
     `ifndef luz010aa_delay
        `define luz010aa_delay `seq_delay_value
     `endif
     `ifndef mxn004aa_delay
        `define mxn004aa_delay `cell_delay_value
     `endif
     `ifndef ru0023aa_delay
        `define ru0023aa_delay `cell_delay_value
     `endif
     `ifndef ru3023aa_delay
        `define ru3023aa_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0( MGM_EN0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1( MGM_D0, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func( clk, d, ob, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, notifier;
   output ob;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst4( ob, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst4( ob, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func( clkb, d, ob, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clkb, d, notifier;
   output ob;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst1( MGM_EN0, clkb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst4( ob, IQ1, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst1( MGM_EN0, clkb );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst4( ob, IQ1 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func( clk, d1, d2, ob1, ob2, notifier0, notifier1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d1, d2, notifier0, notifier1;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst5( MGM_D1, d2, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst7( ob1, IQ1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst8( ob2, IQ2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst5( MGM_D1, d2 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst7( ob1, IQ1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst8( ob2, IQ2 );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func( clkb, d1, d2, ob1, ob2, notifier0, notifier1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clkb, d1, d2, notifier0, notifier1;
   output ob1, ob2;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst1( MGM_EN0, clkb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst4( MGM_EN1, clkb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst5( MGM_D1, d2, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst7( ob1, IQ1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst8( ob2, IQ2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst1( MGM_EN0, clkb );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst2( MGM_D0, d1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier0 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst4( MGM_EN1, clkb );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_1 inst5( MGM_D1, d2 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_N_IQ_LATCH_UDP inst6( IQ2, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst7( ob1, IQ1 );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_0 inst8( ob2, IQ2 );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_0( MGM_EN0, clk, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_1( MGM_D0, si `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input si;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //si vcc, vssx: MGM_D0
    0  1  0: 1;
    1  1  0: 0;
  `else
  //si: MGM_D0
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3( MGM_EN1, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_EN1;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc, vssx: MGM_EN1
    1  1  0: 1;
    0  1  0: 0;
  `else
  //clk: MGM_EN1
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_4( MGM_D1, IQ1, d, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D1;
  input IQ1, d, ssb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ1, d, ssb vcc, vssx: MGM_D1
    1  0  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  0  1  1  0: 1;
    0  1  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //IQ1, d, ssb: MGM_D1
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


module INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func( clk, d, ob, si, so, ssb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, si, ssb, notifier;
   output ob, so;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_0 inst1( MGM_EN0, clk, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_1 inst2( MGM_D0, si, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3 inst4( MGM_EN1, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_4 inst5( MGM_D1, IQ1, d, ssb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3 inst7( ob, IQ, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3 inst8( so, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_0 inst1( MGM_EN0, clk, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_1 inst2( MGM_D0, si );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_2 inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3 inst4( MGM_EN1, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_4 inst5( MGM_D1, IQ1, d, ssb );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_2 inst6( IQ, 1'b0, 1'b0, MGM_EN1, MGM_D1, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3 inst7( ob, IQ );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_3 inst8( so, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_0( MGM_WB_0, sa, sb, sc, sd, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_WB_0;
  input sa, sb, sc, sd, a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //sa, sb, sc, sd, a, b, c, d vcc, vssx: MGM_WB_0
    1  0  0  0  0  ?  ?  ?  1  0: 0;
    0  1  0  0  ?  0  ?  ?  1  0: 0;
    0  0  1  0  ?  ?  0  ?  1  0: 0;
    0  0  0  1  ?  ?  ?  0  1  0: 0;
    1  0  0  0  1  ?  ?  ?  1  0: 1;
    0  1  0  0  ?  1  ?  ?  1  0: 1;
    0  0  1  0  ?  ?  1  ?  1  0: 1;
    0  0  0  1  ?  ?  ?  1  1  0: 1;
    1  1  ?  ?  ?  ?  ?  ?  1  0: x;
    1  ?  1  ?  ?  ?  ?  ?  1  0: x;
    1  ?  ?  1  ?  ?  ?  ?  1  0: x;
    ?  1  1  ?  ?  ?  ?  ?  1  0: x;
    ?  1  ?  1  ?  ?  ?  ?  1  0: x;
    ?  ?  1  1  ?  ?  ?  ?  1  0: x;
  `else
  //sa, sb, sc, sd, a, b, c, d: MGM_WB_0
    1  0  0  0  0  ?  ?  ?: 0;
    0  1  0  0  ?  0  ?  ?: 0;
    0  0  1  0  ?  ?  0  ?: 0;
    0  0  0  1  ?  ?  ?  0: 0;
    1  0  0  0  1  ?  ?  ?: 1;
    0  1  0  0  ?  1  ?  ?: 1;
    0  0  1  0  ?  ?  1  ?: 1;
    0  0  0  1  ?  ?  ?  1: 1;
    1  1  ?  ?  ?  ?  ?  ?: x;
    1  ?  1  ?  ?  ?  ?  ?: x;
    1  ?  ?  1  ?  ?  ?  ?: x;
    ?  1  1  ?  ?  ?  ?  ?: x;
    ?  1  ?  1  ?  ?  ?  ?: x;
    ?  ?  1  1  ?  ?  ?  ?: x;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_1( MGM_WB_1, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_WB_1;
  input sa, sb, sc, sd;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //sa, sb, sc, sd vcc, vssx: MGM_WB_1
    0  0  0  0  1  0: 1;
    1  0  0  0  1  0: 0;
    0  1  0  0  1  0: 0;
    0  0  1  0  1  0: 0;
    0  0  0  1  1  0: 0;
  `else
  //sa, sb, sc, sd: MGM_WB_1
    0  0  0  0: 1;
    1  0  0  0: 0;
    0  1  0  0: 0;
    0  0  1  0: 0;
    0  0  0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func( a, b, c, d, o1, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, sa, sb, sc, sd;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   wire MGM_WB_0;
   wire MGM_WB_1;
   wire o;
   INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_0 inst1( MGM_WB_0, sa, sb, sc, sd, a, b, c, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_1 inst2( MGM_WB_1, sa, sb, sc, sd, vcc, vssx );
   bufif0 MGM_BG_0( o, MGM_WB_0,MGM_WB_1 );
   not MGM_BG_1( o1, o);
`else
   wire MGM_WB_0;
   wire MGM_WB_1;
   wire o;
   INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_0 inst1( MGM_WB_0, sa, sb, sc, sd, a, b, c, d );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_1 inst2( MGM_WB_1, sa, sb, sc, sd );
   bufif0 MGM_BG_0( o, MGM_WB_0,MGM_WB_1 );
   not MGM_BG_1( o1, o);
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_2( carry, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output carry;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: carry
    1  1  ?  1  0: 1;
    1  ?  1  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  0  1  0: 0;
  `else
  //a, b, c: carry
    1  1  ?: 1;
    1  ?  1: 1;
    ?  1  1: 1;
    0  0  ?: 0;
    0  ?  0: 0;
    ?  0  0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_3( sum, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output sum;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: sum
    1  1  1  1  0: 1;
    1  0  0  1  0: 1;
    0  1  0  1  0: 1;
    0  0  1  1  0: 1;
    1  1  0  1  0: 0;
    1  0  1  1  0: 0;
    0  1  1  1  0: 0;
    0  0  0  1  0: 0;
  `else
  //a, b, c: sum
    1  1  1: 1;
    1  0  0: 1;
    0  1  0: 1;
    0  0  1: 1;
    1  1  0: 0;
    1  0  1: 0;
    0  1  1: 0;
    0  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_func( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_2 inst1( carry, a, b, c, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_3 inst2( sum, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_2 inst1( carry, a, b, c );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_3 inst2( sum, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_4( carryb, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output carryb;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: carryb
    0  0  ?  1  0: 1;
    0  ?  0  1  0: 1;
    ?  0  0  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  1  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //a, b, c: carryb
    0  0  ?: 1;
    0  ?  0: 1;
    ?  0  0: 1;
    1  1  ?: 0;
    1  ?  1: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_5( sumb, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output sumb;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: sumb
    1  1  0  1  0: 1;
    1  0  1  1  0: 1;
    0  1  1  1  0: 1;
    0  0  0  1  0: 1;
    1  1  1  1  0: 0;
    1  0  0  1  0: 0;
    0  1  0  1  0: 0;
    0  0  1  1  0: 0;
  `else
  //a, b, c: sumb
    1  1  0: 1;
    1  0  1: 1;
    0  1  1: 1;
    0  0  0: 1;
    1  1  1: 0;
    1  0  0: 0;
    0  1  0: 0;
    0  0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_func( a, b, c, carryb, sumb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carryb, sumb;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_4 inst1( carryb, a, b, c, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_5 inst2( sumb, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_4 inst1( carryb, a, b, c );
   INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_5 inst2( sumb, a, b, c );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0slun010aa1n01x1( clk, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// active-high inverting latch with unbuffered output
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
// assign `lun010aa_delay ob =  IQ;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n01x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun010aa_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n01x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lun010aa_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n01x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n01x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G74(ENABLE_NOT_d,d_delay);
   buf MGM_G75(ENABLE_d,d_delay);
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


module i0slun010aa1n02x1( clk, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// active-high inverting latch with unbuffered output
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
// assign `lun010aa_delay ob =  IQ;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n02x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun010aa_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n02x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lun010aa_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n02x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun010aa_func i0slun010aa1n02x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G74(ENABLE_NOT_d,d_delay);
   buf MGM_G75(ENABLE_d,d_delay);
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


module i0slun090aa1n01x1( clkb, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// active-low inverting latch with unbuffered output
// 
// 
// always @ (clkb or d)
// begin
// if (!clkb)
// begin
// IQ1 <= ~d;
// end
// end
// 
// assign `lun090aa_delay ob =  IQ1;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n01x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun090aa_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n01x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lun090aa_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clkb_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n01x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n01x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
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


module i0slun090aa1n02x1( clkb, d, ob `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// active-low inverting latch with unbuffered output
// 
// 
// always @ (clkb or d)
// begin
// if (!clkb)
// begin
// IQ1 <= ~d;
// end
// end
// 
// assign `lun090aa_delay ob =  IQ1;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n02x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun090aa_delay ob_random_init = ob_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n02x1_behav_inst(.clkb(clkb),.d(d),.ob(ob_tmp),.notifier(1'b0));
      assign `lun090aa_delay ob_random_init = ob_tmp ;
      
   `endif
   
`else
   wire clkb_delay ;
   wire d_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n02x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun090aa_func i0slun090aa1n02x1_inst(.clkb(clkb_delay),.d(d_delay),.ob(ob_random_init),.notifier(notifier));
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


module i0slun210aa1d01x1( clk, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

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
// assign `lun210aa_delay ob1 =  IQ1;
// assign `lun210aa_delay ob2 =  IQ2;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d01x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun210aa_delay ob1_random_init = ob1_tmp ;
      assign `lun210aa_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d01x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lun210aa_delay ob1_random_init = ob1_tmp ;
      assign `lun210aa_delay ob2_random_init = ob2_tmp ;
      
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d01x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d01x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
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


module i0slun210aa1d02x1( clk, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

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
// assign `lun210aa_delay ob1 =  IQ1;
// assign `lun210aa_delay ob2 =  IQ2;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d02x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun210aa_delay ob1_random_init = ob1_tmp ;
      assign `lun210aa_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d02x1_behav_inst(.clk(clk),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lun210aa_delay ob1_random_init = ob1_tmp ;
      assign `lun210aa_delay ob2_random_init = ob2_tmp ;
      
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d02x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun210aa_func i0slun210aa1d02x1_inst(.clk(clk_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
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


module i0slun290aa1d01x1( clkb, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// vector dual latch
// 
// 
// always @ (clkb or d1)
// begin
// if (!clkb)
// begin
// IQ1 <= ~d1;
// end
// end
// always @ (clkb or d2)
// begin
// if (!clkb)
// begin
// IQ2 <= ~d2;
// end
// end
// 
// assign `lun290aa_delay ob1 =  IQ1;
// assign `lun290aa_delay ob2 =  IQ2;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d01x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun290aa_delay ob1_random_init = ob1_tmp ;
      assign `lun290aa_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d01x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lun290aa_delay ob1_random_init = ob1_tmp ;
      assign `lun290aa_delay ob2_random_init = ob2_tmp ;
      
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d01x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d01x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
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
      (negedge clkb => (ob2 : d2))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d2))  = (0.0,0.0);
      
      if(d2==1'b1)
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d2))  = (0.0,0.0);
      
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


module i0slun290aa1d02x1( clkb, d1, d2, ob1, ob2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// vector dual latch
// 
// 
// always @ (clkb or d1)
// begin
// if (!clkb)
// begin
// IQ1 <= ~d1;
// end
// end
// always @ (clkb or d2)
// begin
// if (!clkb)
// begin
// IQ2 <= ~d2;
// end
// end
// 
// assign `lun290aa_delay ob1 =  IQ1;
// assign `lun290aa_delay ob2 =  IQ2;
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d02x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0),.vcc(vcc),.vssx(vssx));
      assign `lun290aa_delay ob1_random_init = ob1_tmp ;
      assign `lun290aa_delay ob2_random_init = ob2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d02x1_behav_inst(.clkb(clkb),.d1(d1),.d2(d2),.ob1(ob1_tmp),.ob2(ob2_tmp),.notifier0(1'b0),.notifier1(1'b0));
      assign `lun290aa_delay ob1_random_init = ob1_tmp ;
      assign `lun290aa_delay ob2_random_init = ob2_tmp ;
      
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
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d02x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_lun290aa_func i0slun290aa1d02x1_inst(.clkb(clkb_delay),.d1(d1_delay),.d2(d2_delay),.ob1(ob1_random_init),.ob2(ob2_random_init),.notifier0(notifier0),.notifier1(notifier1));
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
      (negedge clkb => (ob2 : d2))  = (0.0,0.0);
      
      ifnone
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d2))  = (0.0,0.0);
      
      if(d2==1'b1)
      // seq arc clkb --> ob2
      (negedge clkb => (ob2 : d2))  = (0.0,0.0);
      
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


module i0sluz010aa1d01x1( clk, d, ob, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan inverting latch with scanout and internal clock gating ob = {if clk then (!si*!ssb+!d*ssb)} so = {if clk then (!si*!ssb+!d*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= ~si;
// end
// end
// always @ (IQ1 or clk or d or ssb)
// begin
// if (clk)
// begin
// IQ <= ssb ? ~d : IQ1;
// end
// end
// 
// assign ob =  IQ;
// assign so =  IQ;
// 

   input clk, d, si, ssb;
   output ob, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif


wire ob_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(ob_random_init or so_random_init)
   if((ob_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign ob = ((random_init_ctrl_gls === 1'b1) && (ob_random_init === 1'bx)) ? init_val : ob_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign ob = ob_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d01x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `luz010aa_delay ob_random_init = ob_tmp ;
      assign `luz010aa_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d01x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `luz010aa_delay ob_random_init = ob_tmp ;
      assign `luz010aa_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d01x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d01x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_end

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
   if(d==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> ob
    (posedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> ob
    (negedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> ob
    (posedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> ob
    (negedge d => (ob:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> ob
    (posedge d => (ob:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> ob
    (negedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (ob:ssb)
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (ob:ssb)
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

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

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

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

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
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


module i0sluz010aa1d02x1( clk, d, ob, si, so, ssb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Positive level sensitive Mux-D scan inverting latch with scanout and internal clock gating ob = {if clk then (!si*!ssb+!d*ssb)} so = {if clk then (!si*!ssb+!d*ssb)}
// 
// 
// always @ (clk or si or ssb)
// begin
// if (!clk&!ssb)
// begin
// IQ1 <= ~si;
// end
// end
// always @ (IQ1 or clk or d or ssb)
// begin
// if (clk)
// begin
// IQ <= ssb ? ~d : IQ1;
// end
// end
// 
// assign ob =  IQ;
// assign so =  IQ;
// 

   input clk, d, si, ssb;
   output ob, so;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif


wire ob_random_init;
wire so_random_init;
`ifdef random_init_enable
   reg random_init_ctrl_gls;
   reg init_val;
   initial #1 init_val = $dist_uniform(`RINIT_GLS_SEED_PATH.rinit_gls_seed,0,1);
   always @(ob_random_init or so_random_init)
   if((ob_random_init !== 1'bx) && (so_random_init !== 1'bx)) random_init_ctrl_gls = 1'b0;
   assign ob = ((random_init_ctrl_gls === 1'b1) && (ob_random_init === 1'bx)) ? init_val : ob_random_init;
   assign so = ((random_init_ctrl_gls === 1'b1) && (so_random_init === 1'bx)) ? init_val : so_random_init;
`else
   assign ob = ob_random_init;
   assign so = so_random_init;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d02x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `luz010aa_delay ob_random_init = ob_tmp ;
      assign `luz010aa_delay so_random_init = so_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d02x1_behav_inst(.clk(clk),.d(d),.ob(ob_tmp),.si(si),.so(so_tmp),.ssb(ssb),.notifier(1'b0));
      assign `luz010aa_delay ob_random_init = ob_tmp ;
      assign `luz010aa_delay so_random_init = so_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire si_delay ;
   wire ssb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d02x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_luz010aa_func i0sluz010aa1d02x1_inst(.clk(clk_delay),.d(d_delay),.ob(ob_random_init),.si(si_delay),.so(so_random_init),.ssb(ssb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_end

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
   if(d==1'b0 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b0 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b0 && si==1'b1 && ssb==1'b1)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(d==1'b1 && si==1'b0 && ssb==1'b0)
   // seq arc clk --> ob
   (posedge clk => (ob : d))  = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> ob
    (posedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> ob
    (negedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> ob
    (posedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> ob
    (negedge d => (ob:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> ob
    (posedge d => (ob:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> ob
    (negedge d => (ob:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (ob:ssb)
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (ob:ssb)
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> ob
    (negedge ssb => (ob:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc posedge ssb --> ob
    (posedge ssb => (ob:ssb)) = (0.0,0.0);

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

   ifnone
   // seq arc clk --> so
   (posedge clk => (so : d))  = (0.0,0.0);

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

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b0 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && si==1'b1 && ssb==1'b1)
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> so
    (posedge d => (so:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> so
    (negedge d => (so:d)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b1 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc posedge ssb --> (so:ssb)
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   ifnone
   // comb arc negedge ssb --> (so:ssb)
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b0)
   // comb arc posedge ssb --> so
    (posedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
   // comb arc negedge ssb --> so
    (negedge ssb => (so:ssb)) = (0.0,0.0);

   if(clk==1'b1 && d==1'b0 && si==1'b1)
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


module i0smxn004aa1n01x1( a, b, c, d, o1, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// one-hot mux
// 
// 
// assign o1 =  !sa&!sb&!sc&!sd ? 1'bx : !a&sa&!sb&!sc&!sd | !b&!sa&sb&!sc&!sd | !c&!sa&!sb&sc&!sd | !d&!sa&!sb&!sc&sd ? 1'b1 : a&sa&!sb&!sc&!sd | b&!sa&sb&!sc&!sd | c&!sa&!sb&sc&!sd | d&!sa&!sb&!sc&sd ? 1'b0 : 1'bx;
// 

   input a, b, c, d, sa, sb, sc, sd;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
      assign `mxn004aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
      assign `mxn004aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   ifnone
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   ifnone
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   ifnone
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   ifnone
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   ifnone
   // comb arc posedge sa --> (o1:sa)
    (posedge sa => (o1:sa)) = (0.0,0.0);

   ifnone
   // comb arc negedge sa --> (o1:sa)
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   ifnone
   // comb arc posedge sb --> (o1:sb)
    (posedge sb => (o1:sb)) = (0.0,0.0);

   ifnone
   // comb arc negedge sb --> (o1:sb)
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   ifnone
   // comb arc posedge sc --> (o1:sc)
    (posedge sc => (o1:sc)) = (0.0,0.0);

   ifnone
   // comb arc negedge sc --> (o1:sc)
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   ifnone
   // comb arc posedge sd --> (o1:sd)
    (posedge sd => (o1:sd)) = (0.0,0.0);

   ifnone
   // comb arc negedge sd --> (o1:sd)
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0smxn004aa1n02x1( a, b, c, d, o1, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// one-hot mux
// 
// 
// assign o1 =  !sa&!sb&!sc&!sd ? 1'bx : !a&sa&!sb&!sc&!sd | !b&!sa&sb&!sc&!sd | !c&!sa&!sb&sc&!sd | !d&!sa&!sb&!sc&sd ? 1'b1 : a&sa&!sb&!sc&!sd | b&!sa&sb&!sc&!sd | c&!sa&!sb&sc&!sd | d&!sa&!sb&!sc&sd ? 1'b0 : 1'bx;
// 

   input a, b, c, d, sa, sb, sc, sd;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
      assign `mxn004aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
      assign `mxn004aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_mxn004aa_func i0smxn004aa1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o1
    (posedge a => (o1:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o1
    (negedge a => (o1:a)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   ifnone
   // comb arc posedge b --> o1
    (posedge b => (o1:b)) = (0.0,0.0);

   ifnone
   // comb arc negedge b --> o1
    (negedge b => (o1:b)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   ifnone
   // comb arc posedge c --> o1
    (posedge c => (o1:c)) = (0.0,0.0);

   ifnone
   // comb arc negedge c --> o1
    (negedge c => (o1:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o1
    (posedge d => (o1:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o1
    (negedge d => (o1:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   ifnone
   // comb arc posedge sa --> (o1:sa)
    (posedge sa => (o1:sa)) = (0.0,0.0);

   ifnone
   // comb arc negedge sa --> (o1:sa)
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sa --> o1
    (negedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sa --> o1
    (posedge sa => (o1:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   ifnone
   // comb arc posedge sb --> (o1:sb)
    (posedge sb => (o1:sb)) = (0.0,0.0);

   ifnone
   // comb arc negedge sb --> (o1:sb)
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sb --> o1
    (negedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sb --> o1
    (posedge sb => (o1:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   ifnone
   // comb arc posedge sc --> (o1:sc)
    (posedge sc => (o1:sc)) = (0.0,0.0);

   ifnone
   // comb arc negedge sc --> (o1:sc)
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sc --> o1
    (negedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sc --> o1
    (posedge sc => (o1:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   ifnone
   // comb arc posedge sd --> (o1:sd)
    (posedge sd => (o1:sd)) = (0.0,0.0);

   ifnone
   // comb arc negedge sd --> (o1:sd)
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc negedge sd --> o1
    (negedge sd => (o1:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
   // comb arc posedge sd --> o1
    (posedge sd => (o1:sd)) = (0.0,0.0);

   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sru0023aa1d01x1( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// full adder
// 
// 
// assign `ru0023aa_delay carry =  a&b | a&c | b&c;
// assign `ru0023aa_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_func i0sru0023aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `ru0023aa_delay carry = carry_tmp ;
      assign `ru0023aa_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_func i0sru0023aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `ru0023aa_delay carry = carry_tmp ;
      assign `ru0023aa_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_func i0sru0023aa1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru0023aa_func i0sru0023aa1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (sum:a)
      (posedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (sum:a)
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (sum:b)
      (posedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (sum:b)
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (sum:c)
      (posedge c => (sum:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (sum:c)
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sru3023aa1d01x1( a, b, c, carryb, sumb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// full adder
// 
// 
// assign `ru3023aa_delay carryb =  ~a&~b | ~a&~c | ~b&~c;
// assign `ru3023aa_delay sumb =  a&b&~c | a&~b&c | ~a&b&c | ~a&~b&~c;
// 

   input a, b, c;
   output carryb, sumb;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_func i0sru3023aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.carryb(carryb_tmp),.sumb(sumb_tmp),.vcc(vcc),.vssx(vssx));
      assign `ru3023aa_delay carryb = carryb_tmp ;
      assign `ru3023aa_delay sumb = sumb_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_func i0sru3023aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.carryb(carryb_tmp),.sumb(sumb_tmp));
      assign `ru3023aa_delay carryb = carryb_tmp ;
      assign `ru3023aa_delay sumb = sumb_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_func i0sru3023aa1d01x1_inst(.a(a),.b(b),.c(c),.carryb(carryb),.sumb(sumb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsicore_ru3023aa_func i0sru3023aa1d01x1_inst(.a(a),.b(b),.c(c),.carryb(carryb),.sumb(sumb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> carryb
      (posedge a => (carryb:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> carryb
      (negedge a => (carryb:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> carryb
      (posedge a => (carryb:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> carryb
      (negedge a => (carryb:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> carryb
      (posedge a => (carryb:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> carryb
      (negedge a => (carryb:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> carryb
      (posedge b => (carryb:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> carryb
      (negedge b => (carryb:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> carryb
      (posedge b => (carryb:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> carryb
      (negedge b => (carryb:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> carryb
      (posedge b => (carryb:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> carryb
      (negedge b => (carryb:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> carryb
      (posedge c => (carryb:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> carryb
      (negedge c => (carryb:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> carryb
      (posedge c => (carryb:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> carryb
      (negedge c => (carryb:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> carryb
      (posedge c => (carryb:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> carryb
      (negedge c => (carryb:c)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> sumb
      (posedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> sumb
      (negedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> sumb
      (posedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> sumb
      (negedge a => (sumb:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (sumb:a)
      (posedge a => (sumb:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (sumb:a)
      (negedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> sumb
      (negedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> sumb
      (posedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> sumb
      (negedge a => (sumb:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> sumb
      (posedge a => (sumb:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> sumb
      (posedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> sumb
      (negedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> sumb
      (posedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> sumb
      (negedge b => (sumb:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (sumb:b)
      (posedge b => (sumb:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (sumb:b)
      (negedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> sumb
      (negedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> sumb
      (posedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> sumb
      (negedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> sumb
      (posedge b => (sumb:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> sumb
      (posedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> sumb
      (negedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> sumb
      (posedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> sumb
      (negedge c => (sumb:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (sumb:c)
      (posedge c => (sumb:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (sumb:c)
      (negedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> sumb
      (negedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> sumb
      (posedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> sumb
      (negedge c => (sumb:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> sumb
      (posedge c => (sumb:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




