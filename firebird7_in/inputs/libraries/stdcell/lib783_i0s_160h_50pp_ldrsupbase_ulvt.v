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
     `ifndef and004aa_delay
        `define and004aa_delay `cell_delay_value
     `endif
     `ifndef aoi302aa_delay
        `define aoi302aa_delay `cell_delay_value
     `endif
     `ifndef aoix22aa_delay
        `define aoix22aa_delay `cell_delay_value
     `endif
     `ifndef bfm201ta_delay
        `define bfm201ta_delay `cell_delay_value
     `endif
     `ifndef bfm202ta_delay
        `define bfm202ta_delay `cell_delay_value
     `endif
     `ifndef bfm402ta_delay
        `define bfm402ta_delay `cell_delay_value
     `endif
     `ifndef bfm403ta_delay
        `define bfm403ta_delay `cell_delay_value
     `endif
     `ifndef bfm604ta_delay
        `define bfm604ta_delay `cell_delay_value
     `endif
     `ifndef bfm605ta_delay
        `define bfm605ta_delay `cell_delay_value
     `endif
     `ifndef bfm807ta_delay
        `define bfm807ta_delay `cell_delay_value
     `endif
     `ifndef inv200aa_delay
        `define inv200aa_delay `cell_delay_value
     `endif
     `ifndef nand24aa_delay
        `define nand24aa_delay `cell_delay_value
     `endif
     `ifndef nanp04aa_delay
        `define nanp04aa_delay `cell_delay_value
     `endif
     `ifndef nor044aa_delay
        `define nor044aa_delay `cell_delay_value
     `endif
     `ifndef norp04aa_delay
        `define norp04aa_delay `cell_delay_value
     `endif
     `ifndef oai302aa_delay
        `define oai302aa_delay `cell_delay_value
     `endif
     `ifndef oaix22aa_delay
        `define oaix22aa_delay `cell_delay_value
     `endif
     `ifndef orn004aa_delay
        `define orn004aa_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_0( o, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o
    1  1  1  1  1  0: 1;
    0  ?  ?  ?  1  0: 0;
    ?  0  ?  ?  1  0: 0;
    ?  ?  0  ?  1  0: 0;
    ?  ?  ?  0  1  0: 0;
  `else
  //a, b, c, d: o
    1  1  1  1: 1;
    0  ?  ?  ?: 0;
    ?  0  ?  ?: 0;
    ?  ?  0  ?: 0;
    ?  ?  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_0 inst1( o, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_0 inst1( o, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_1( o1, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: o1
    0  0  0  0  ?  1  0: 1;
    0  0  0  ?  0  1  0: 1;
    1  ?  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  ?  1  0: 0;
    ?  ?  1  ?  ?  1  0: 0;
    ?  ?  ?  1  1  1  0: 0;
  `else
  //a, b, c, d, e: o1
    0  0  0  0  ?: 1;
    0  0  0  ?  0: 1;
    1  ?  ?  ?  ?: 0;
    ?  1  ?  ?  ?: 0;
    ?  ?  1  ?  ?: 0;
    ?  ?  ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_func( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_1 inst1( o1, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_1 inst1( o1, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_2( o1, a, c, e, g, h, f, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, c, e, g, h, f, d, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, e, g, h, f, d, b vcc, vssx: o1
    0  0  0  0  ?  ?  ?  ?  1  0: 1;
    0  0  0  ?  0  ?  ?  ?  1  0: 1;
    0  0  ?  0  ?  0  ?  ?  1  0: 1;
    0  0  ?  ?  0  0  ?  ?  1  0: 1;
    0  ?  0  0  ?  ?  0  ?  1  0: 1;
    0  ?  0  ?  0  ?  0  ?  1  0: 1;
    0  ?  ?  0  ?  0  0  ?  1  0: 1;
    0  ?  ?  ?  0  0  0  ?  1  0: 1;
    ?  0  0  0  ?  ?  ?  0  1  0: 1;
    ?  0  0  ?  0  ?  ?  0  1  0: 1;
    ?  0  ?  0  ?  0  ?  0  1  0: 1;
    ?  0  ?  ?  0  0  ?  0  1  0: 1;
    ?  ?  0  0  ?  ?  0  0  1  0: 1;
    ?  ?  0  ?  0  ?  0  0  1  0: 1;
    ?  ?  ?  0  ?  0  0  0  1  0: 1;
    ?  ?  ?  ?  0  0  0  0  1  0: 1;
    1  ?  ?  ?  ?  ?  ?  1  1  0: 0;
    ?  1  ?  ?  ?  ?  1  ?  1  0: 0;
    ?  ?  1  ?  ?  1  ?  ?  1  0: 0;
    ?  ?  ?  1  1  ?  ?  ?  1  0: 0;
  `else
  //a, c, e, g, h, f, d, b: o1
    0  0  0  0  ?  ?  ?  ?: 1;
    0  0  0  ?  0  ?  ?  ?: 1;
    0  0  ?  0  ?  0  ?  ?: 1;
    0  0  ?  ?  0  0  ?  ?: 1;
    0  ?  0  0  ?  ?  0  ?: 1;
    0  ?  0  ?  0  ?  0  ?: 1;
    0  ?  ?  0  ?  0  0  ?: 1;
    0  ?  ?  ?  0  0  0  ?: 1;
    ?  0  0  0  ?  ?  ?  0: 1;
    ?  0  0  ?  0  ?  ?  0: 1;
    ?  0  ?  0  ?  0  ?  0: 1;
    ?  0  ?  ?  0  0  ?  0: 1;
    ?  ?  0  0  ?  ?  0  0: 1;
    ?  ?  0  ?  0  ?  0  0: 1;
    ?  ?  ?  0  ?  0  0  0: 1;
    ?  ?  ?  ?  0  0  0  0: 1;
    1  ?  ?  ?  ?  ?  ?  1: 0;
    ?  1  ?  ?  ?  ?  1  ?: 0;
    ?  ?  1  ?  ?  1  ?  ?: 0;
    ?  ?  ?  1  1  ?  ?  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_func( a, b, c, d, e, f, g, h, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e, f, g, h;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_2 inst1( o1, a, c, e, g, h, f, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_2 inst1( o1, a, c, e, g, h, f, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_3 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_4( o1, a1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a1;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a1 vcc, vssx: o1
    0  1  0: 1;
    1  1  0: 0;
  `else
  //a1: o1
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_func( a1, a2, o1, o2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a1, a2;
   output o1, o2;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_4 inst1( o1, a1, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_4 inst2( o2, a2, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_4 inst1( o1, a1 );
   INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_4 inst2( o2, a2 );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_5( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  ?  ?  ?  1  0: 1;
    ?  0  ?  ?  1  0: 1;
    ?  ?  0  ?  1  0: 1;
    ?  ?  ?  0  1  0: 1;
    1  1  1  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  ?  ?  ?: 1;
    ?  0  ?  ?: 1;
    ?  ?  0  ?: 1;
    ?  ?  ?  0: 1;
    1  1  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_5 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_5 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_nanp04aa_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_5 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_5 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_6( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  0  0  0  1  0: 1;
    1  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  1  0: 0;
    ?  ?  1  ?  1  0: 0;
    ?  ?  ?  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  0  0  0: 1;
    1  ?  ?  ?: 0;
    ?  1  ?  ?: 0;
    ?  ?  1  ?: 0;
    ?  ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_6 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_6 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_norp04aa_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_6 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_6 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_7( o1, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: o1
    0  ?  ?  ?  ?  1  0: 1;
    ?  0  ?  ?  ?  1  0: 1;
    ?  ?  0  ?  ?  1  0: 1;
    ?  ?  ?  0  0  1  0: 1;
    1  1  1  1  ?  1  0: 0;
    1  1  1  ?  1  1  0: 0;
  `else
  //a, b, c, d, e: o1
    0  ?  ?  ?  ?: 1;
    ?  0  ?  ?  ?: 1;
    ?  ?  0  ?  ?: 1;
    ?  ?  ?  0  0: 1;
    1  1  1  1  ?: 0;
    1  1  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_func( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_7 inst1( o1, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_7 inst1( o1, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_8( o1, a, b, c, d, e, f, g, h `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d, e, f, g, h;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e, f, g, h vcc, vssx: o1
    0  0  ?  ?  ?  ?  ?  ?  1  0: 1;
    ?  ?  0  0  ?  ?  ?  ?  1  0: 1;
    ?  ?  ?  ?  0  0  ?  ?  1  0: 1;
    ?  ?  ?  ?  ?  ?  0  0  1  0: 1;
    1  ?  1  ?  1  ?  1  ?  1  0: 0;
    1  ?  1  ?  1  ?  ?  1  1  0: 0;
    1  ?  1  ?  ?  1  1  ?  1  0: 0;
    1  ?  1  ?  ?  1  ?  1  1  0: 0;
    1  ?  ?  1  1  ?  1  ?  1  0: 0;
    1  ?  ?  1  1  ?  ?  1  1  0: 0;
    1  ?  ?  1  ?  1  1  ?  1  0: 0;
    1  ?  ?  1  ?  1  ?  1  1  0: 0;
    ?  1  1  ?  1  ?  1  ?  1  0: 0;
    ?  1  1  ?  1  ?  ?  1  1  0: 0;
    ?  1  1  ?  ?  1  1  ?  1  0: 0;
    ?  1  1  ?  ?  1  ?  1  1  0: 0;
    ?  1  ?  1  1  ?  1  ?  1  0: 0;
    ?  1  ?  1  1  ?  ?  1  1  0: 0;
    ?  1  ?  1  ?  1  1  ?  1  0: 0;
    ?  1  ?  1  ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d, e, f, g, h: o1
    0  0  ?  ?  ?  ?  ?  ?: 1;
    ?  ?  0  0  ?  ?  ?  ?: 1;
    ?  ?  ?  ?  0  0  ?  ?: 1;
    ?  ?  ?  ?  ?  ?  0  0: 1;
    1  ?  1  ?  1  ?  1  ?: 0;
    1  ?  1  ?  1  ?  ?  1: 0;
    1  ?  1  ?  ?  1  1  ?: 0;
    1  ?  1  ?  ?  1  ?  1: 0;
    1  ?  ?  1  1  ?  1  ?: 0;
    1  ?  ?  1  1  ?  ?  1: 0;
    1  ?  ?  1  ?  1  1  ?: 0;
    1  ?  ?  1  ?  1  ?  1: 0;
    ?  1  1  ?  1  ?  1  ?: 0;
    ?  1  1  ?  1  ?  ?  1: 0;
    ?  1  1  ?  ?  1  1  ?: 0;
    ?  1  1  ?  ?  1  ?  1: 0;
    ?  1  ?  1  1  ?  1  ?: 0;
    ?  1  ?  1  1  ?  ?  1: 0;
    ?  1  ?  1  ?  1  1  ?: 0;
    ?  1  ?  1  ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_func( a, b, c, d, e, f, g, h, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e, f, g, h;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_8 inst1( o1, a, b, c, d, e, f, g, h, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_8 inst1( o1, a, b, c, d, e, f, g, h );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_9( o, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o
    1  ?  ?  ?  1  0: 1;
    ?  1  ?  ?  1  0: 1;
    ?  ?  1  ?  1  0: 1;
    ?  ?  ?  1  1  0: 1;
    0  0  0  0  1  0: 0;
  `else
  //a, b, c, d: o
    1  ?  ?  ?: 1;
    ?  1  ?  ?: 1;
    ?  ?  1  ?: 1;
    ?  ?  ?  1: 1;
    0  0  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_9 inst1( o, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_9 inst1( o, a, b, c, d );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0sand004aa1n01x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input andgate
// 
// 
// assign `and004aa_delay o =  a&b&c&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and004aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `and004aa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sand004aa1n02x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input andgate
// 
// 
// assign `and004aa_delay o =  a&b&c&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and004aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `and004aa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_and004aa_func i0sand004aa1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi302aa1n01x1( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 5-Input AND2-OR4-INVERT
// 
// 
// assign `aoi302aa_delay o1 =  ~a&~b&~c&~d | ~a&~b&~c&~e;
// 

   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_func i0saoi302aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi302aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_func i0saoi302aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp));
      assign `aoi302aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_func i0saoi302aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoi302aa_func i0saoi302aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && e==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && e==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && e==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && e==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && e==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && e==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoix22aa1d01x1( a, b, c, d, e, f, g, h, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8-input Four AND2-OR4-INVERT o1 = !((a*b)+(c*d)+(e*f)+(g*h))
// 
// 
// assign `aoix22aa_delay o1 =  ~a&~c&~e&~g | ~a&~c&~e&~h | ~a&~c&~f&~g | ~a&~c&~f&~h | ~a&~d&~e&~g | ~a&~d&~e&~h | ~a&~d&~f&~g | ~a&~d&~f&~h | ~b&~c&~e&~g | ~b&~c&~e&~h | ~b&~c&~f&~g | ~b&~c&~f&~h | ~b&~d&~e&~g | ~b&~d&~e&~h | ~b&~d&~f&~g | ~b&~d&~f&~h;
// 

   input a, b, c, d, e, f, g, h;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_func i0saoix22aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoix22aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_func i0saoix22aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1_tmp));
      assign `aoix22aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_func i0saoix22aa1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_aoix22aa_func i0saoix22aa1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b1)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sbfm201ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage min delay buffer output o = !(!a)
// 
// 
// buf `bfm201ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm201ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm201ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm201ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage min delay buffer output o = !(!a)
// 
// 
// buf `bfm201ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm201ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm201ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm201ta_func i0sbfm201ta1n02x1_inst(.a(a),.o(o));
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


module i0sbfm202ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm202ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm202ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm202ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm202ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm202ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm202ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm202ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm202ta_func i0sbfm202ta1n02x1_inst(.a(a),.o(o));
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


module i0sbfm402ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm402ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm402ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm402ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm402ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm402ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm402ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm402ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm402ta_func i0sbfm402ta1n02x1_inst(.a(a),.o(o));
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


module i0sbfm403ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 3 stacked stage
// 
// 
// buf `bfm403ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm403ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm403ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm403ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 3 stacked stage
// 
// 
// buf `bfm403ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm403ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm403ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm403ta_func i0sbfm403ta1n02x1_inst(.a(a),.o(o));
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


module i0sbfm604ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min high delay buffer o = !(!a)
// 
// 
// buf `bfm604ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm604ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm604ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm604ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min high delay buffer o = !(!a)
// 
// 
// buf `bfm604ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm604ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm604ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm604ta_func i0sbfm604ta1n02x1_inst(.a(a),.o(o));
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


module i0sbfm605ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min-delay buffer with 5 stacked stage
// 
// 
// buf `bfm605ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm605ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm605ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm605ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min-delay buffer with 5 stacked stage
// 
// 
// buf `bfm605ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm605ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm605ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm605ta_func i0sbfm605ta1n02x1_inst(.a(a),.o(o));
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


module i0sbfm807ta1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8 stage min-delay buffer with 7 stacked stage
// 
// 
// buf `bfm807ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm807ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm807ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n01x1_inst(.a(a),.o(o));
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


module i0sbfm807ta1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8 stage min-delay buffer with 7 stacked stage
// 
// 
// buf `bfm807ta_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm807ta_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm807ta_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_bfm807ta_func i0sbfm807ta1n02x1_inst(.a(a),.o(o));
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


module i0sinv200aa1n01x1( a1, a2, o1, o2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular dual bit inverter o1 = !(a1) o2 = !(a2)
// 
// 
// assign `inv200aa_delay o1 =  ~a1;
// assign `inv200aa_delay o2 =  ~a2;
// 

   input a1, a2;
   output o1, o2;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_func i0sinv200aa1n01x1_behav_inst(.a1(a1),.a2(a2),.o1(o1_tmp),.o2(o2_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv200aa_delay o1 = o1_tmp ;
      assign `inv200aa_delay o2 = o2_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_func i0sinv200aa1n01x1_behav_inst(.a1(a1),.a2(a2),.o1(o1_tmp),.o2(o2_tmp));
      assign `inv200aa_delay o1 = o1_tmp ;
      assign `inv200aa_delay o2 = o2_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_func i0sinv200aa1n01x1_inst(.a1(a1),.a2(a2),.o1(o1),.o2(o2),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_inv200aa_func i0sinv200aa1n01x1_inst(.a1(a1),.a2(a2),.o1(o1),.o2(o2));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(a2==1'b0)
      // comb arc posedge a1 --> o1
      (posedge a1 => (o1:a1)) = (0.0,0.0);
      
      if(a2==1'b0)
      // comb arc negedge a1 --> o1
      (negedge a1 => (o1:a1)) = (0.0,0.0);
      
      if(a2==1'b1)
      // comb arc posedge a1 --> o1
      (posedge a1 => (o1:a1)) = (0.0,0.0);
      
      if(a2==1'b1)
      // comb arc negedge a1 --> o1
      (negedge a1 => (o1:a1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a1 --> o1
      (posedge a1 => (o1:a1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a1 --> o1
      (negedge a1 => (o1:a1)) = (0.0,0.0);
      
      if(a1==1'b0)
      // comb arc posedge a2 --> o2
      (posedge a2 => (o2:a2)) = (0.0,0.0);
      
      if(a1==1'b0)
      // comb arc negedge a2 --> o2
      (negedge a2 => (o2:a2)) = (0.0,0.0);
      
      if(a1==1'b1)
      // comb arc posedge a2 --> o2
      (posedge a2 => (o2:a2)) = (0.0,0.0);
      
      if(a1==1'b1)
      // comb arc negedge a2 --> o2
      (negedge a2 => (o2:a2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a2 --> o2
      (posedge a2 => (o2:a2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a2 --> o2
      (negedge a2 => (o2:a2)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snand24aa1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input low skew NAND P/N=0.4 o1 = !(a*b*c*d)
// 
// 
// assign `nand24aa_delay o1 =  ~a | ~b | ~c | ~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_func i0snand24aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nand24aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_func i0snand24aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `nand24aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_func i0snand24aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nand24aa_func i0snand24aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
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


module i0snanp04aa1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input nand P/N=0.65
// 
// 
// assign `nanp04aa_delay o1 =  ~a | ~b | ~c | ~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nanp04aa_func i0snanp04aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp04aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nanp04aa_func i0snanp04aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `nanp04aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nanp04aa_func i0snanp04aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nanp04aa_func i0snanp04aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
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


module i0snor044aa1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input high skew NOR o1 = !(a+b+c+d)
// 
// 
// assign `nor044aa_delay o1 =  ~a&~b&~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_func i0snor044aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nor044aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_func i0snor044aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `nor044aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_func i0snor044aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_nor044aa_func i0snor044aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
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


module i0snorp04aa1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input nor packed Z
// 
// 
// assign `norp04aa_delay o1 =  ~a&~b&~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_norp04aa_func i0snorp04aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp04aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_norp04aa_func i0snorp04aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `norp04aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_norp04aa_func i0snorp04aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_norp04aa_func i0snorp04aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
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


module i0soai302aa1n01x1( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 5-Input AND2-OR4-INVERT
// 
// 
// assign `oai302aa_delay o1 =  ~a | ~b | ~c | ~d&~e;
// 

   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_func i0soai302aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai302aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_func i0soai302aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp));
      assign `oai302aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_func i0soai302aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oai302aa_func i0soai302aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && e==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1 && e==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && e==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1 && e==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && e==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && e==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soaix22aa1d01x1( a, b, c, d, e, f, g, h, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8-input Four OR2-AND4-INVERT o1 = !((a*b)+(c*d)+(e*f)+(g*h))
// 
// 
// assign `oaix22aa_delay o1 =  ~a&~b | ~c&~d | ~e&~f | ~g&~h;
// 

   input a, b, c, d, e, f, g, h;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_func i0soaix22aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaix22aa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_func i0soaix22aa1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1_tmp));
      assign `oaix22aa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_func i0soaix22aa1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_oaix22aa_func i0soaix22aa1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b0 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1 && g==1'b1 && h==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b0 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && g==1'b1 && h==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && h==1'b0)
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge g --> o1
      (posedge g => (o1:g)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge g --> o1
      (negedge g => (o1:g)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1 && g==1'b0)
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge h --> o1
      (posedge h => (o1:h)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge h --> o1
      (negedge h => (o1:h)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sorn004aa1n01x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input OR o = (a+b+c+d)
// 
// 
// assign `orn004aa_delay o =  a | b | c | d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn004aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `orn004aa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sorn004aa1n02x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input OR o = (a+b+c+d)
// 
// 
// assign `orn004aa_delay o =  a | b | c | d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn004aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `orn004aa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupbase_orn004aa_func i0sorn004aa1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




