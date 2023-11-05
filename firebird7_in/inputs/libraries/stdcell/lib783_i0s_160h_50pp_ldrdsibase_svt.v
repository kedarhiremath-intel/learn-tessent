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
     `ifndef mbc024ac_delay
        `define mbc024ac_delay `cell_delay_value
     `endif
     `ifndef md2na2ac_delay
        `define md2na2ac_delay `cell_delay_value
     `endif
     `ifndef md2no2ac_delay
        `define md2no2ac_delay `cell_delay_value
     `endif
     `ifndef mdn022ac_delay
        `define mdn022ac_delay `cell_delay_value
     `endif
     `ifndef nana24ac_delay
        `define nana24ac_delay `cell_delay_value
     `endif
     `ifndef nano24ac_delay
        `define nano24ac_delay `cell_delay_value
     `endif
     `ifndef nona24ac_delay
        `define nona24ac_delay `cell_delay_value
     `endif
     `ifndef nono24ac_delay
        `define nono24ac_delay `cell_delay_value
     `endif
     `ifndef rm3023ac_delay
        `define rm3023ac_delay `cell_delay_value
     `endif
     `ifndef xnr002ac_delay
        `define xnr002ac_delay `cell_delay_value
     `endif
     `ifndef xnr003ac_delay
        `define xnr003ac_delay `cell_delay_value
     `endif
     `ifndef xo2na2ac_delay
        `define xo2na2ac_delay `cell_delay_value
     `endif
     `ifndef xo2no2ac_delay
        `define xo2no2ac_delay `cell_delay_value
     `endif
     `ifndef xor002ac_delay
        `define xor002ac_delay `cell_delay_value
     `endif
     `ifndef xor003ac_delay
        `define xor003ac_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0( int1, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output int1;
  input a, b, sa;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, sa vcc, vssx: int1
    1  1  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  1  1  0: 0;
  `else
  //a, b, sa: int1
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


module INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0 inst1( int1, a, b, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0 inst2( int2, c, d, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0 inst3( o, int1, int2, sb, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0 inst1( int1, a, b, sa );
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0 inst2( int2, c, d, sa );
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_0 inst3( o, int1, int2, sb );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_1( out0, a, b, c, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, sa;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, sa vcc, vssx: out0
    1  1  ?  ?  1  0: 1;
    1  ?  0  ?  1  0: 1;
    1  ?  ?  1  1  0: 1;
    ?  1  0  ?  1  0: 1;
    ?  1  ?  0  1  0: 1;
    ?  ?  0  ?  1  0: 1;
    0  ?  1  1  1  0: 0;
    ?  0  1  0  1  0: 0;
  `else
  //a, b, c, sa: out0
    1  1  ?  ?: 1;
    1  ?  0  ?: 1;
    1  ?  ?  1: 1;
    ?  1  0  ?: 1;
    ?  1  ?  0: 1;
    ?  ?  0  ?: 1;
    0  ?  1  1: 0;
    ?  0  1  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_func( a, b, c, out0, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, sa;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_1 inst1( out0, a, b, c, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_1 inst1( out0, a, b, c, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_2( out0, a, c, sa, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, c, sa, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, sa, b vcc, vssx: out0
    1  0  1  ?  1  0: 1;
    ?  0  0  1  1  0: 1;
    0  ?  ?  0  1  0: 0;
    0  1  ?  ?  1  0: 0;
    0  ?  1  ?  1  0: 0;
    ?  1  ?  0  1  0: 0;
    ?  ?  0  0  1  0: 0;
    ?  1  ?  ?  1  0: 0;
  `else
  //a, c, sa, b: out0
    1  0  1  ?: 1;
    ?  0  0  1: 1;
    0  ?  ?  0: 0;
    0  1  ?  ?: 0;
    0  ?  1  ?: 0;
    ?  1  ?  0: 0;
    ?  ?  0  0: 0;
    ?  1  ?  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_func( a, b, c, out0, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, sa;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_2 inst1( out0, a, c, sa, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_2 inst1( out0, a, c, sa, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_3( o1, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, sa;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, sa vcc, vssx: o1
    0  0  ?  1  0: 1;
    0  ?  1  1  0: 1;
    ?  0  0  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  1  1  0: 0;
    ?  1  0  1  0: 0;
  `else
  //a, b, sa: o1
    0  0  ?: 1;
    0  ?  1: 1;
    ?  0  0: 1;
    1  1  ?: 0;
    1  ?  1: 0;
    ?  1  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_3 inst1( o1, a, b, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_3 inst1( o1, a, b, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_4( out0, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: out0
    0  ?  ?  ?  ?  1  0: 1;
    ?  0  ?  ?  ?  1  0: 1;
    ?  ?  0  ?  ?  1  0: 1;
    ?  ?  ?  1  1  1  0: 1;
    1  1  1  0  ?  1  0: 0;
    1  1  1  ?  0  1  0: 0;
  `else
  //a, b, c, d, e: out0
    0  ?  ?  ?  ?: 1;
    ?  0  ?  ?  ?: 1;
    ?  ?  0  ?  ?: 1;
    ?  ?  ?  1  1: 1;
    1  1  1  0  ?: 0;
    1  1  1  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_func( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_4 inst1( out0, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_4 inst1( out0, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_5( out0, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: out0
    0  0  0  1  1  1  0: 1;
    1  ?  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  ?  1  0: 0;
    ?  ?  1  ?  ?  1  0: 0;
    ?  ?  ?  0  ?  1  0: 0;
    ?  ?  ?  ?  0  1  0: 0;
  `else
  //a, b, c, d, e: out0
    0  0  0  1  1: 1;
    1  ?  ?  ?  ?: 0;
    ?  1  ?  ?  ?: 0;
    ?  ?  1  ?  ?: 0;
    ?  ?  ?  0  ?: 0;
    ?  ?  ?  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_func( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_5 inst1( out0, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_5 inst1( out0, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_6( out0, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: out0
    0  ?  ?  ?  ?  1  0: 1;
    ?  0  ?  ?  ?  1  0: 1;
    ?  ?  0  ?  ?  1  0: 1;
    ?  ?  ?  1  ?  1  0: 1;
    ?  ?  ?  ?  1  1  0: 1;
    1  1  1  0  0  1  0: 0;
  `else
  //a, b, c, d, e: out0
    0  ?  ?  ?  ?: 1;
    ?  0  ?  ?  ?: 1;
    ?  ?  0  ?  ?: 1;
    ?  ?  ?  1  ?: 1;
    ?  ?  ?  ?  1: 1;
    1  1  1  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_func( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_6 inst1( out0, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_6 inst1( out0, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_7( out0, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: out0
    0  0  0  1  ?  1  0: 1;
    0  0  0  ?  1  1  0: 1;
    1  ?  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  ?  1  0: 0;
    ?  ?  1  ?  ?  1  0: 0;
    ?  ?  ?  0  0  1  0: 0;
  `else
  //a, b, c, d, e: out0
    0  0  0  1  ?: 1;
    0  0  0  ?  1: 1;
    1  ?  ?  ?  ?: 0;
    ?  1  ?  ?  ?: 0;
    ?  ?  1  ?  ?: 0;
    ?  ?  ?  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_func( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_7 inst1( out0, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_7 inst1( out0, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_8( carryb, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_9( sumb, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_func( a, b, c, carryb, sumb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carryb, sumb;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_8 inst1( carryb, a, b, c, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_9 inst2( sumb, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_8 inst1( carryb, a, b, c );
   INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_9 inst2( sumb, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_10( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: out0
    1  1  1  0: 1;
    0  0  1  0: 1;
    1  0  1  0: 0;
    0  1  1  0: 0;
  `else
  //a, b: out0
    1  1: 1;
    0  0: 1;
    1  0: 0;
    0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_10 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_10 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr003ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_9 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_9 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_11( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  1  ?  1  0: 1;
    0  0  ?  1  0: 1;
    ?  ?  0  1  0: 1;
    1  0  1  1  0: 0;
    0  1  1  1  0: 0;
  `else
  //a, b, c: out0
    1  1  ?: 1;
    0  0  ?: 1;
    ?  ?  0: 1;
    1  0  1: 0;
    0  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_11 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_11 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_12( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  1  0  1  0: 1;
    0  0  0  1  0: 1;
    1  0  ?  1  0: 0;
    0  1  ?  1  0: 0;
    ?  ?  1  1  0: 0;
  `else
  //a, b, c: out0
    1  1  0: 1;
    0  0  0: 1;
    1  0  ?: 0;
    0  1  ?: 0;
    ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_12 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_12 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_13( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_13 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_13 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_14( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  1  1  1  0: 1;
    1  0  0  1  0: 1;
    0  1  0  1  0: 1;
    0  0  1  1  0: 1;
    1  1  0  1  0: 0;
    1  0  1  1  0: 0;
    0  1  1  1  0: 0;
    0  0  0  1  0: 0;
  `else
  //a, b, c: out0
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


module INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_14 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_14 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0smbc024ac1n01x1( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded mux INV-PG-INV
// 
// 
// assign  int1 =  sa ? b : a;
// assign  int2 =  sa ? d : c;
// assign `mbc024ac_delay o =  sb ? int2 : int1;
// 

   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `mbc024ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb));
      assign `mbc024ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (o:sa)
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (o:sa)
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sb --> (o:sb)
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sb --> (o:sb)
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0smbc024ac1n02x1( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded mux INV-PG-INV
// 
// 
// assign  int1 =  sa ? b : a;
// assign  int2 =  sa ? d : c;
// assign `mbc024ac_delay o =  sb ? int2 : int1;
// 

   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `mbc024ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb));
      assign `mbc024ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mbc024ac_func i0smbc024ac1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (o:sa)
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (o:sa)
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sb==1'b0)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc negedge sa --> o
      (negedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b1)
      // comb arc posedge sa --> o
      (posedge sa => (o:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sb --> (o:sb)
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sb --> (o:sb)
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc negedge sb --> o
      (negedge sb => (o:sb)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1)
      // comb arc posedge sb --> o
      (posedge sb => (o:sb)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0smd2na2ac1n01x1( a, b, c, out0, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 Mux driving NA2 output (mdn022 + na2) (BPG Free)
// 
// 
// assign `md2na2ac_delay out0 =  a&b | a&~c | a&sa | b&~c | b&~sa | ~c;
// 

   input a, b, c, sa;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_func i0smd2na2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `md2na2ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_func i0smd2na2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.sa(sa));
      assign `md2na2ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_func i0smd2na2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2na2ac_func i0smd2na2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.sa(sa));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1 && sa==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && sa==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && sa==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && sa==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && sa==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && sa==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && sa==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && sa==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && sa==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && sa==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && sa==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && sa==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && sa==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && sa==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && sa==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && sa==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge sa --> out0
      (posedge sa => (out0:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge sa --> out0
      (negedge sa => (out0:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (out0:sa)
      (posedge sa => (out0:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (out0:sa)
      (negedge sa => (out0:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge sa --> out0
      (negedge sa => (out0:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge sa --> out0
      (posedge sa => (out0:sa)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0smd2no2ac1n01x1( a, b, c, out0, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 Mux driving NO2 output (mdn022 + no2) (BPG Free)
// 
// 
// assign `md2no2ac_delay out0 =  a&~c&sa | b&~c&~sa;
// 

   input a, b, c, sa;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_func i0smd2no2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `md2no2ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_func i0smd2no2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.sa(sa));
      assign `md2no2ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_func i0smd2no2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_md2no2ac_func i0smd2no2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.sa(sa));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && sa==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && sa==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && sa==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && sa==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && sa==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && sa==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && sa==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && sa==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && sa==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && sa==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && sa==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && sa==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && sa==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && sa==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && sa==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && sa==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge sa --> out0
      (posedge sa => (out0:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge sa --> out0
      (negedge sa => (out0:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (out0:sa)
      (posedge sa => (out0:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (out0:sa)
      (negedge sa => (out0:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge sa --> out0
      (negedge sa => (out0:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge sa --> out0
      (posedge sa => (out0:sa)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0smdn022ac1n01x1( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 n-1st encoded mux INV-PG
// 
// 
// assign `mdn022ac_delay o1 =  sa ? ~a : ~b;
// 

   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mdn022ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa));
      assign `mdn022ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x1_inst(.a(a),.b(b),.o1(o1),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x1_inst(.a(a),.b(b),.o1(o1),.sa(sa));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && sa==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && sa==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge sa --> o1
      (posedge sa => (o1:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge sa --> o1
      (negedge sa => (o1:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (o1:sa)
      (posedge sa => (o1:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (o1:sa)
      (negedge sa => (o1:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge sa --> o1
      (negedge sa => (o1:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge sa --> o1
      (posedge sa => (o1:sa)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0smdn022ac1n01x2( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 n-1st encoded mux INV-PG
// 
// 
// assign `mdn022ac_delay o1 =  sa ? ~a : ~b;
// 

   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x2_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mdn022ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x2_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa));
      assign `mdn022ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x2_inst(.a(a),.b(b),.o1(o1),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_mdn022ac_func i0smdn022ac1n01x2_inst(.a(a),.b(b),.o1(o1),.sa(sa));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && sa==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && sa==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && sa==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && sa==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && sa==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge sa --> o1
      (posedge sa => (o1:sa)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge sa --> o1
      (negedge sa => (o1:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (o1:sa)
      (posedge sa => (o1:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (o1:sa)
      (negedge sa => (o1:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge sa --> o1
      (negedge sa => (o1:sa)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge sa --> o1
      (posedge sa => (o1:sa)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snana24ac1n01x1( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NAND driving 4 input NAND
// 
// 
// assign `nana24ac_delay out0 =  ~a | ~b | ~c | d&e;
// 

   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_func i0snana24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nana24ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_func i0snana24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp));
      assign `nana24ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_func i0snana24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nana24ac_func i0snana24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && e==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && e==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snano24ac1n01x1( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NAND driving 4 input NOR
// 
// 
// assign `nano24ac_delay out0 =  ~a&~b&~c&d&e;
// 

   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_func i0snano24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nano24ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_func i0snano24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp));
      assign `nano24ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_func i0snano24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nano24ac_func i0snano24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && e==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && e==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snona24ac1n01x1( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NOR driving 4 input NAND
// 
// 
// assign `nona24ac_delay out0 =  ~a | ~b | ~c | d | e;
// 

   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_func i0snona24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nona24ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_func i0snona24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp));
      assign `nona24ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_func i0snona24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nona24ac_func i0snona24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && e==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && e==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snono24ac1n01x1( a, b, c, d, e, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NOR driving 4 input NOR
// 
// 
// assign `nono24ac_delay out0 =  ~a&~b&~c&d | ~a&~b&~c&e;
// 

   input a, b, c, d, e;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_func i0snono24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nono24ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_func i0snono24ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0_tmp));
      assign `nono24ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_func i0snono24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_nono24ac_func i0snono24ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && e==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && e==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> out0
      (negedge e => (out0:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> out0
      (posedge e => (out0:e)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0srm3023ac1n01x1( a, b, c, carryb, sumb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex gate inverting full adder
// 
// 
// assign `rm3023ac_delay carryb =  ~a&~b | ~a&~c | ~b&~c;
// assign `rm3023ac_delay sumb =  a&b&~c | a&~b&c | ~a&b&c | ~a&~b&~c;
// 

   input a, b, c;
   output carryb, sumb;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_func i0srm3023ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.carryb(carryb_tmp),.sumb(sumb_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm3023ac_delay carryb = carryb_tmp ;
      assign `rm3023ac_delay sumb = sumb_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_func i0srm3023ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.carryb(carryb_tmp),.sumb(sumb_tmp));
      assign `rm3023ac_delay carryb = carryb_tmp ;
      assign `rm3023ac_delay sumb = sumb_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_func i0srm3023ac1n01x1_inst(.a(a),.b(b),.c(c),.carryb(carryb),.sumb(sumb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_rm3023ac_func i0srm3023ac1n01x1_inst(.a(a),.b(b),.c(c),.carryb(carryb),.sumb(sumb));
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




`celldefine 


module i0sxnr002ac1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Two input XNOR out0 = !a*!b+a*b
// 
// 
// assign `xnr002ac_delay out0 =  a&b | ~a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnr002ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xnr002ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x1_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sxnr002ac1n01x2( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Two input XNOR out0 = !a*!b+a*b
// 
// 
// assign `xnr002ac_delay out0 =  a&b | ~a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x2_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnr002ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x2_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xnr002ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x2_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr002ac_func i0sxnr002ac1n01x2_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sxnr003ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input xnor with unbuffered output
// 
// 
// assign `xnr003ac_delay out0 =  a&b&~c | a&~b&c | ~a&b&c | ~a&~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr003ac_func i0sxnr003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnr003ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr003ac_func i0sxnr003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xnr003ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr003ac_func i0sxnr003ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xnr003ac_func i0sxnr003ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (out0:c)
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (out0:c)
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sxo2na2ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input XOR driving 2 input NAND (BPG Free)
// 
// 
// //PL native not coming out correctly
// //assign  out0 =  b ? a : ~a;
// assign `xo2na2ac_delay out0 = (a&b | ~a&~b) | ~c ;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_func i0sxo2na2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xo2na2ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_func i0sxo2na2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xo2na2ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_func i0sxo2na2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2na2ac_func i0sxo2na2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sxo2no2ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input XOR driving 2 input NOR (BPG Free)
// 
// 
// assign `xo2no2ac_delay out0 =  a&b&~c | ~a&~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_func i0sxo2no2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xo2no2ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_func i0sxo2no2ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xo2no2ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_func i0sxo2no2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xo2no2ac_func i0sxo2no2ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sxor002ac1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Two input XOR out0 = !a*b+a*!b
// 
// 
// assign `xor002ac_delay out0 =  a&~b | ~a&b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xor002ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xor002ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0sxor002ac1n01x2( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Two input XOR out0 = !a*b+a*!b
// 
// 
// assign `xor002ac_delay out0 =  a&~b | ~a&b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x2_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xor002ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x2_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xor002ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x2_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor002ac_func i0sxor002ac1n01x2_inst(.a(a),.b(b),.out0(out0));
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


module i0sxor003ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input xor with unbuffered output
// 
// 
// assign `xor003ac_delay out0 =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_func i0sxor003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xor003ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_func i0sxor003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xor003ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_func i0sxor003ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsibase_xor003ac_func i0sxor003ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (out0:c)
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (out0:c)
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




