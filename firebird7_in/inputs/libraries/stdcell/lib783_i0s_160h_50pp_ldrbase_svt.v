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
     `ifndef aboi22ac_delay
        `define aboi22ac_delay `cell_delay_value
     `endif
     `ifndef and002ac_delay
        `define and002ac_delay `cell_delay_value
     `endif
     `ifndef and003ac_delay
        `define and003ac_delay `cell_delay_value
     `endif
     `ifndef ao0012ac_delay
        `define ao0012ac_delay `cell_delay_value
     `endif
     `ifndef ao0022ac_delay
        `define ao0022ac_delay `cell_delay_value
     `endif
     `ifndef aoai13ac_delay
        `define aoai13ac_delay `cell_delay_value
     `endif
     `ifndef aob012ac_delay
        `define aob012ac_delay `cell_delay_value
     `endif
     `ifndef aobi12ac_delay
        `define aobi12ac_delay `cell_delay_value
     `endif
     `ifndef aoi012ac_delay
        `define aoi012ac_delay `cell_delay_value
     `endif
     `ifndef aoi013ac_delay
        `define aoi013ac_delay `cell_delay_value
     `endif
     `ifndef aoi022ac_delay
        `define aoi022ac_delay `cell_delay_value
     `endif
     `ifndef aoi112ac_delay
        `define aoi112ac_delay `cell_delay_value
     `endif
     `ifndef aoi122ac_delay
        `define aoi122ac_delay `cell_delay_value
     `endif
     `ifndef aoi222ac_delay
        `define aoi222ac_delay `cell_delay_value
     `endif
     `ifndef aoib12ac_delay
        `define aoib12ac_delay `cell_delay_value
     `endif
     `ifndef bfm201ac_delay
        `define bfm201ac_delay `cell_delay_value
     `endif
     `ifndef bfm202ac_delay
        `define bfm202ac_delay `cell_delay_value
     `endif
     `ifndef bfm402ac_delay
        `define bfm402ac_delay `cell_delay_value
     `endif
     `ifndef bfm403ac_delay
        `define bfm403ac_delay `cell_delay_value
     `endif
     `ifndef bfm604ac_delay
        `define bfm604ac_delay `cell_delay_value
     `endif
     `ifndef bfm605ac_delay
        `define bfm605ac_delay `cell_delay_value
     `endif
     `ifndef bfm807ac_delay
        `define bfm807ac_delay `cell_delay_value
     `endif
     `ifndef bfn000ac_delay
        `define bfn000ac_delay `cell_delay_value
     `endif
     `ifndef inv000ac_delay
        `define inv000ac_delay `cell_delay_value
     `endif
     `ifndef mbc004ac_delay
        `define mbc004ac_delay `cell_delay_value
     `endif
     `ifndef mbn022ac_delay
        `define mbn022ac_delay `cell_delay_value
     `endif
     `ifndef mbn024ac_delay
        `define mbn024ac_delay `cell_delay_value
     `endif
     `ifndef mtn022ac_delay
        `define mtn022ac_delay `cell_delay_value
     `endif
     `ifndef nanb02ac_delay
        `define nanb02ac_delay `cell_delay_value
     `endif
     `ifndef nand22ac_delay
        `define nand22ac_delay `cell_delay_value
     `endif
     `ifndef nand23ac_delay
        `define nand23ac_delay `cell_delay_value
     `endif
     `ifndef nano22ac_delay
        `define nano22ac_delay `cell_delay_value
     `endif
     `ifndef nano23ac_delay
        `define nano23ac_delay `cell_delay_value
     `endif
     `ifndef nanp02ac_delay
        `define nanp02ac_delay `cell_delay_value
     `endif
     `ifndef nanp03ac_delay
        `define nanp03ac_delay `cell_delay_value
     `endif
     `ifndef nona22ac_delay
        `define nona22ac_delay `cell_delay_value
     `endif
     `ifndef nona23ac_delay
        `define nona23ac_delay `cell_delay_value
     `endif
     `ifndef nor042ac_delay
        `define nor042ac_delay `cell_delay_value
     `endif
     `ifndef nor043ac_delay
        `define nor043ac_delay `cell_delay_value
     `endif
     `ifndef norb02ac_delay
        `define norb02ac_delay `cell_delay_value
     `endif
     `ifndef norb03ac_delay
        `define norb03ac_delay `cell_delay_value
     `endif
     `ifndef norp02ac_delay
        `define norp02ac_delay `cell_delay_value
     `endif
     `ifndef norp03ac_delay
        `define norp03ac_delay `cell_delay_value
     `endif
     `ifndef oa0012ac_delay
        `define oa0012ac_delay `cell_delay_value
     `endif
     `ifndef oa0022ac_delay
        `define oa0022ac_delay `cell_delay_value
     `endif
     `ifndef oab012ac_delay
        `define oab012ac_delay `cell_delay_value
     `endif
     `ifndef oabi12ac_delay
        `define oabi12ac_delay `cell_delay_value
     `endif
     `ifndef oai012ac_delay
        `define oai012ac_delay `cell_delay_value
     `endif
     `ifndef oai013ac_delay
        `define oai013ac_delay `cell_delay_value
     `endif
     `ifndef oai022ac_delay
        `define oai022ac_delay `cell_delay_value
     `endif
     `ifndef oai112ac_delay
        `define oai112ac_delay `cell_delay_value
     `endif
     `ifndef oai122ac_delay
        `define oai122ac_delay `cell_delay_value
     `endif
     `ifndef oai222ac_delay
        `define oai222ac_delay `cell_delay_value
     `endif
     `ifndef oaib12ac_delay
        `define oaib12ac_delay `cell_delay_value
     `endif
     `ifndef oaih12ac_delay
        `define oaih12ac_delay `cell_delay_value
     `endif
     `ifndef oaih22ac_delay
        `define oaih22ac_delay `cell_delay_value
     `endif
     `ifndef oao003ac_delay
        `define oao003ac_delay `cell_delay_value
     `endif
     `ifndef oaoi03ac_delay
        `define oaoi03ac_delay `cell_delay_value
     `endif
     `ifndef oaoi13ac_delay
        `define oaoi13ac_delay `cell_delay_value
     `endif
     `ifndef obai22ac_delay
        `define obai22ac_delay `cell_delay_value
     `endif
     `ifndef orn002ac_delay
        `define orn002ac_delay `cell_delay_value
     `endif
     `ifndef orn003ac_delay
        `define orn003ac_delay `cell_delay_value
     `endif
     `ifndef rc0022ac_delay
        `define rc0022ac_delay `cell_delay_value
     `endif
     `ifndef rm0023ac_delay
        `define rm0023ac_delay `cell_delay_value
     `endif
     `ifndef rm0042ac_delay
        `define rm0042ac_delay `cell_delay_value
     `endif
     `ifndef xnrb03ac_delay
        `define xnrb03ac_delay `cell_delay_value
     `endif
     `ifndef xnrc02ac_delay
        `define xnrc02ac_delay `cell_delay_value
     `endif
     `ifndef xorb03ac_delay
        `define xorb03ac_delay `cell_delay_value
     `endif
     `ifndef xorc02ac_delay
        `define xorc02ac_delay `cell_delay_value
     `endif
     `ifndef xroi22ac_delay
        `define xroi22ac_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_0( out0, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, c, d, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, d, b vcc, vssx: out0
    1  0  ?  ?  1  0: 1;
    1  ?  0  ?  1  0: 1;
    ?  0  ?  0  1  0: 1;
    ?  ?  0  0  1  0: 1;
    0  ?  ?  1  1  0: 0;
    ?  1  1  ?  1  0: 0;
  `else
  //a, c, d, b: out0
    1  0  ?  ?: 1;
    1  ?  0  ?: 1;
    ?  0  ?  0: 1;
    ?  ?  0  0: 1;
    0  ?  ?  1: 0;
    ?  1  1  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_0 inst1( out0, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_0 inst1( out0, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_1( o, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: o
    1  1  1  0: 1;
    0  ?  1  0: 0;
    ?  0  1  0: 0;
  `else
  //a, b: o
    1  1: 1;
    0  ?: 0;
    ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_1 inst1( o, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_1 inst1( o, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_2( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o
    1  1  1  1  0: 1;
    0  ?  ?  1  0: 0;
    ?  0  ?  1  0: 0;
    ?  ?  0  1  0: 0;
  `else
  //a, b, c: o
    1  1  1: 1;
    0  ?  ?: 0;
    ?  0  ?: 0;
    ?  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_2 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_2 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_3( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o
    1  ?  ?  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
  `else
  //a, b, c: o
    1  ?  ?: 1;
    ?  1  1: 1;
    0  0  ?: 0;
    0  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_3 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_3 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_4( o, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o
    1  1  ?  ?  1  0: 1;
    ?  ?  1  1  1  0: 1;
    0  ?  0  ?  1  0: 0;
    0  ?  ?  0  1  0: 0;
    ?  0  0  ?  1  0: 0;
    ?  0  ?  0  1  0: 0;
  `else
  //a, b, c, d: o
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


module INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_4 inst1( o, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_4 inst1( o, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_5( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  ?  ?  ?  1  0: 1;
    ?  0  0  ?  1  0: 1;
    ?  0  ?  0  1  0: 1;
    1  1  ?  ?  1  0: 0;
    1  ?  1  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  ?  ?  ?: 1;
    ?  0  0  ?: 1;
    ?  0  ?  0: 1;
    1  1  ?  ?: 0;
    1  ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_5 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_5 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_6( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    0  ?  ?  1  0: 1;
    ?  1  1  1  0: 1;
    1  0  ?  1  0: 0;
    1  ?  0  1  0: 0;
  `else
  //a, b, c: out0
    0  ?  ?: 1;
    ?  1  1: 1;
    1  0  ?: 0;
    1  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_6 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_6 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_7( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  0  ?  1  0: 1;
    1  ?  0  1  0: 1;
    0  ?  ?  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //a, b, c: out0
    1  0  ?: 1;
    1  ?  0: 1;
    0  ?  ?: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_7 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_7 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_8( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  0  ?  1  0: 1;
    0  ?  0  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //a, b, c: o1
    0  0  ?: 1;
    0  ?  0: 1;
    1  ?  ?: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_8 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_8 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_9( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  0  ?  ?  1  0: 1;
    0  ?  0  ?  1  0: 1;
    0  ?  ?  0  1  0: 1;
    1  ?  ?  ?  1  0: 0;
    ?  1  1  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  0  ?  ?: 1;
    0  ?  0  ?: 1;
    0  ?  ?  0: 1;
    1  ?  ?  ?: 0;
    ?  1  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_9 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_9 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_10( o1, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_10 inst1( o1, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_10 inst1( o1, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_11( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  0  0  ?  1  0: 1;
    0  0  ?  0  1  0: 1;
    1  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  1  0: 0;
    ?  ?  1  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  0  0  ?: 1;
    0  0  ?  0: 1;
    1  ?  ?  ?: 0;
    ?  1  ?  ?: 0;
    ?  ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_11 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_11 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_12( o1, a, b, d, e, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, d, e, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, d, e, c vcc, vssx: o1
    0  0  0  ?  ?  1  0: 1;
    0  0  ?  0  ?  1  0: 1;
    0  ?  0  ?  0  1  0: 1;
    0  ?  ?  0  0  1  0: 1;
    1  ?  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  1  1  0: 0;
    ?  ?  1  1  ?  1  0: 0;
  `else
  //a, b, d, e, c: o1
    0  0  0  ?  ?: 1;
    0  0  ?  0  ?: 1;
    0  ?  0  ?  0: 1;
    0  ?  ?  0  0: 1;
    1  ?  ?  ?  ?: 0;
    ?  1  ?  ?  1: 0;
    ?  ?  1  1  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_func( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_12 inst1( o1, a, b, d, e, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_12 inst1( o1, a, b, d, e, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_13( o1, a, c, e, f, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, c, e, f, d, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, e, f, d, b vcc, vssx: o1
    0  0  0  ?  ?  ?  1  0: 1;
    0  0  ?  0  ?  ?  1  0: 1;
    0  ?  0  ?  0  ?  1  0: 1;
    0  ?  ?  0  0  ?  1  0: 1;
    ?  0  0  ?  ?  0  1  0: 1;
    ?  0  ?  0  ?  0  1  0: 1;
    ?  ?  0  ?  0  0  1  0: 1;
    ?  ?  ?  0  0  0  1  0: 1;
    1  ?  ?  ?  ?  1  1  0: 0;
    ?  1  ?  ?  1  ?  1  0: 0;
    ?  ?  1  1  ?  ?  1  0: 0;
  `else
  //a, c, e, f, d, b: o1
    0  0  0  ?  ?  ?: 1;
    0  0  ?  0  ?  ?: 1;
    0  ?  0  ?  0  ?: 1;
    0  ?  ?  0  0  ?: 1;
    ?  0  0  ?  ?  0: 1;
    ?  0  ?  0  ?  0: 1;
    ?  ?  0  ?  0  0: 1;
    ?  ?  ?  0  0  0: 1;
    1  ?  ?  ?  ?  1: 0;
    ?  1  ?  ?  1  ?: 0;
    ?  ?  1  1  ?  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_func( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_13 inst1( o1, a, c, e, f, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_13 inst1( o1, a, c, e, f, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_14( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    0  0  ?  1  0: 1;
    0  ?  1  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  0  1  0: 0;
  `else
  //a, b, c: out0
    0  0  ?: 1;
    0  ?  1: 1;
    1  ?  ?: 0;
    ?  1  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_14 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_14 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_15 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_16( o1, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc, vssx: o1
    0  1  0: 1;
    1  1  0: 0;
  `else
  //a: o1
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_16 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_16 inst1( o1, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_0( o, a, sa, b, sb, c, sc, d, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, sa, b, sb, c, sc, d, sd;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, sa, b, sb, c, sc, d, sd vcc, vssx: o
    1  1  ?  ?  ?  ?  ?  ?  1  0: 1;
    ?  ?  1  1  ?  ?  ?  ?  1  0: 1;
    ?  ?  ?  ?  1  1  ?  ?  1  0: 1;
    ?  ?  ?  ?  ?  ?  1  1  1  0: 1;
    0  ?  0  ?  0  ?  0  ?  1  0: 0;
    0  ?  0  ?  0  ?  ?  0  1  0: 0;
    0  ?  0  ?  ?  0  0  ?  1  0: 0;
    0  ?  0  ?  ?  0  ?  0  1  0: 0;
    0  ?  ?  0  0  ?  0  ?  1  0: 0;
    0  ?  ?  0  0  ?  ?  0  1  0: 0;
    0  ?  ?  0  ?  0  0  ?  1  0: 0;
    0  ?  ?  0  ?  0  ?  0  1  0: 0;
    ?  0  0  ?  0  ?  0  ?  1  0: 0;
    ?  0  0  ?  0  ?  ?  0  1  0: 0;
    ?  0  0  ?  ?  0  0  ?  1  0: 0;
    ?  0  0  ?  ?  0  ?  0  1  0: 0;
    ?  0  ?  0  0  ?  0  ?  1  0: 0;
    ?  0  ?  0  0  ?  ?  0  1  0: 0;
    ?  0  ?  0  ?  0  0  ?  1  0: 0;
    ?  0  ?  0  ?  0  ?  0  1  0: 0;
  `else
  //a, sa, b, sb, c, sc, d, sd: o
    1  1  ?  ?  ?  ?  ?  ?: 1;
    ?  ?  1  1  ?  ?  ?  ?: 1;
    ?  ?  ?  ?  1  1  ?  ?: 1;
    ?  ?  ?  ?  ?  ?  1  1: 1;
    0  ?  0  ?  0  ?  0  ?: 0;
    0  ?  0  ?  0  ?  ?  0: 0;
    0  ?  0  ?  ?  0  0  ?: 0;
    0  ?  0  ?  ?  0  ?  0: 0;
    0  ?  ?  0  0  ?  0  ?: 0;
    0  ?  ?  0  0  ?  ?  0: 0;
    0  ?  ?  0  ?  0  0  ?: 0;
    0  ?  ?  0  ?  0  ?  0: 0;
    ?  0  0  ?  0  ?  0  ?: 0;
    ?  0  0  ?  0  ?  ?  0: 0;
    ?  0  0  ?  ?  0  0  ?: 0;
    ?  0  0  ?  ?  0  ?  0: 0;
    ?  0  ?  0  0  ?  0  ?: 0;
    ?  0  ?  0  0  ?  ?  0: 0;
    ?  0  ?  0  ?  0  0  ?: 0;
    ?  0  ?  0  ?  0  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_func( a, b, c, d, o, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, sa, sb, sc, sd;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_0 inst1( o, a, sa, b, sb, c, sc, d, sd, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_0 inst1( o, a, sa, b, sb, c, sc, d, sd );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_17( o, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_17 inst1( o, a, b, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_17 inst1( o, a, b, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18( int1, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18 inst1( int1, a, b, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18 inst2( int2, c, d, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18 inst3( o, int1, int2, sb, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18 inst1( int1, a, b, sa );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18 inst2( int2, c, d, sa );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_18 inst3( o, int1, int2, sb );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_19( o1, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_func( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_19 inst1( o1, a, b, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_19 inst1( o1, a, b, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_20( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: out0
    1  ?  1  0: 1;
    ?  0  1  0: 1;
    0  1  1  0: 0;
  `else
  //a, b: out0
    1  ?: 1;
    ?  0: 1;
    0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_20 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_20 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_21( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_21 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_21 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_22( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_22 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_22 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_23( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    0  1  1  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  0  ?  1  0: 0;
    ?  ?  0  1  0: 0;
  `else
  //a, b, c: out0
    0  1  1: 1;
    1  ?  ?: 0;
    ?  0  ?: 0;
    ?  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_23 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_23 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_24( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: out0
    0  0  1  1  1  0: 1;
    1  ?  ?  ?  1  0: 0;
    ?  1  ?  ?  1  0: 0;
    ?  ?  0  ?  1  0: 0;
    ?  ?  ?  0  1  0: 0;
  `else
  //a, b, c, d: out0
    0  0  1  1: 1;
    1  ?  ?  ?: 0;
    ?  1  ?  ?: 0;
    ?  ?  0  ?: 0;
    ?  ?  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_24 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_24 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ac_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_21 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_21 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_22 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_22 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_25( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    0  ?  ?  1  0: 1;
    ?  1  ?  1  0: 1;
    ?  ?  1  1  0: 1;
    1  0  0  1  0: 0;
  `else
  //a, b, c: out0
    0  ?  ?: 1;
    ?  1  ?: 1;
    ?  ?  1: 1;
    1  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_25 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_25 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_26( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: out0
    0  ?  ?  ?  1  0: 1;
    ?  0  ?  ?  1  0: 1;
    ?  ?  1  ?  1  0: 1;
    ?  ?  ?  1  1  0: 1;
    1  1  0  0  1  0: 0;
  `else
  //a, b, c, d: out0
    0  ?  ?  ?: 1;
    ?  0  ?  ?: 1;
    ?  ?  1  ?: 1;
    ?  ?  ?  1: 1;
    1  1  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_26 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_26 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_27( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_27 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_27 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_28( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_28 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_28 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_29( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: out0
    1  0  1  0: 1;
    0  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //a, b: out0
    1  0: 1;
    0  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_29 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_29 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_30( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  0  0  1  0: 1;
    0  ?  ?  1  0: 0;
    ?  1  ?  1  0: 0;
    ?  ?  1  1  0: 0;
  `else
  //a, b, c: out0
    1  0  0: 1;
    0  ?  ?: 0;
    ?  1  ?: 0;
    ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_30 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_30 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_norp02ac_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_27 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_27 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_norp03ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_28 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_28 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_31( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o
    1  1  ?  1  0: 1;
    1  ?  1  1  0: 1;
    0  ?  ?  1  0: 0;
    ?  0  0  1  0: 0;
  `else
  //a, b, c: o
    1  1  ?: 1;
    1  ?  1: 1;
    0  ?  ?: 0;
    ?  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_31 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_31 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_32( o, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, c, d, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, d, b vcc, vssx: o
    1  1  ?  ?  1  0: 1;
    1  ?  1  ?  1  0: 1;
    ?  1  ?  1  1  0: 1;
    ?  ?  1  1  1  0: 1;
    0  ?  ?  0  1  0: 0;
    ?  0  0  ?  1  0: 0;
  `else
  //a, c, d, b: o
    1  1  ?  ?: 1;
    1  ?  1  ?: 1;
    ?  1  ?  1: 1;
    ?  ?  1  1: 1;
    0  ?  ?  0: 0;
    ?  0  0  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_func( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_32 inst1( o, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_32 inst1( o, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_33( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    0  1  ?  1  0: 1;
    0  ?  1  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  0  0  1  0: 0;
  `else
  //a, b, c: out0
    0  1  ?: 1;
    0  ?  1: 1;
    1  ?  ?: 0;
    ?  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_33 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_33 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_34( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  ?  ?  1  0: 1;
    ?  0  0  1  0: 1;
    0  1  ?  1  0: 0;
    0  ?  1  1  0: 0;
  `else
  //a, b, c: out0
    1  ?  ?: 1;
    ?  0  0: 1;
    0  1  ?: 0;
    0  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_34 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_34 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_35( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  ?  ?  1  0: 1;
    ?  0  0  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  1  1  0: 0;
  `else
  //a, b, c: o1
    0  ?  ?: 1;
    ?  0  0: 1;
    1  1  ?: 0;
    1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_35 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_35 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_36( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  ?  ?  ?  1  0: 1;
    ?  0  0  0  1  0: 1;
    1  1  ?  ?  1  0: 0;
    1  ?  1  ?  1  0: 0;
    1  ?  ?  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  ?  ?  ?: 1;
    ?  0  0  0: 1;
    1  1  ?  ?: 0;
    1  ?  1  ?: 0;
    1  ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_36 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_36 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_37( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_37 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_37 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_38( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
    ?  ?  0  0  1  0: 1;
    1  1  1  ?  1  0: 0;
    1  1  ?  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  ?  ?  ?: 1;
    ?  0  ?  ?: 1;
    ?  ?  0  0: 1;
    1  1  1  ?: 0;
    1  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_38 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_38 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_39( o1, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d, e;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e vcc, vssx: o1
    0  ?  ?  ?  ?  1  0: 1;
    ?  0  0  ?  ?  1  0: 1;
    ?  ?  ?  0  0  1  0: 1;
    1  1  ?  1  ?  1  0: 0;
    1  1  ?  ?  1  1  0: 0;
    1  ?  1  1  ?  1  0: 0;
    1  ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d, e: o1
    0  ?  ?  ?  ?: 1;
    ?  0  0  ?  ?: 1;
    ?  ?  ?  0  0: 1;
    1  1  ?  1  ?: 0;
    1  1  ?  ?  1: 0;
    1  ?  1  1  ?: 0;
    1  ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_func( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_39 inst1( o1, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_39 inst1( o1, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_40( o1, a, b, c, d, e, f `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d, e, f;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d, e, f vcc, vssx: o1
    0  0  ?  ?  ?  ?  1  0: 1;
    ?  ?  0  0  ?  ?  1  0: 1;
    ?  ?  ?  ?  0  0  1  0: 1;
    1  ?  1  ?  1  ?  1  0: 0;
    1  ?  1  ?  ?  1  1  0: 0;
    1  ?  ?  1  1  ?  1  0: 0;
    1  ?  ?  1  ?  1  1  0: 0;
    ?  1  1  ?  1  ?  1  0: 0;
    ?  1  1  ?  ?  1  1  0: 0;
    ?  1  ?  1  1  ?  1  0: 0;
    ?  1  ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d, e, f: o1
    0  0  ?  ?  ?  ?: 1;
    ?  ?  0  0  ?  ?: 1;
    ?  ?  ?  ?  0  0: 1;
    1  ?  1  ?  1  ?: 0;
    1  ?  1  ?  ?  1: 0;
    1  ?  ?  1  1  ?: 0;
    1  ?  ?  1  ?  1: 0;
    ?  1  1  ?  1  ?: 0;
    ?  1  1  ?  ?  1: 0;
    ?  1  ?  1  1  ?: 0;
    ?  1  ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_func( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_40 inst1( o1, a, b, c, d, e, f, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_40 inst1( o1, a, b, c, d, e, f );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_41( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    0  ?  ?  1  0: 1;
    ?  0  1  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  0  1  0: 0;
  `else
  //a, b, c: out0
    0  ?  ?: 1;
    ?  0  1: 1;
    1  1  ?: 0;
    1  ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_41 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_41 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_35 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_35 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_37 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_37 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42( carry, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_func( a, b, c, carry `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carry;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42 inst1( carry, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42 inst1( carry, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_43( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  0  ?  1  0: 1;
    0  ?  0  1  0: 1;
    ?  0  0  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  1  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //a, b, c: o1
    0  0  ?: 1;
    0  ?  0: 1;
    ?  0  0: 1;
    1  1  ?: 0;
    1  ?  1: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_43 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_43 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_44( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  0  ?  ?  1  0: 1;
    0  ?  0  0  1  0: 1;
    1  ?  ?  ?  1  0: 0;
    ?  1  1  ?  1  0: 0;
    ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  0  ?  ?: 1;
    0  ?  0  0: 1;
    1  ?  ?  ?: 0;
    ?  1  1  ?: 0;
    ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_44 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_44 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_45( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: out0
    1  0  ?  ?  1  0: 1;
    ?  ?  0  0  1  0: 1;
    0  ?  1  ?  1  0: 0;
    0  ?  ?  1  1  0: 0;
    ?  1  1  ?  1  0: 0;
    ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d: out0
    1  0  ?  ?: 1;
    ?  ?  0  0: 1;
    0  ?  1  ?: 0;
    0  ?  ?  1: 0;
    ?  1  1  ?: 0;
    ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_45 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_45 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_46( o, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: o
    1  ?  1  0: 1;
    ?  1  1  0: 1;
    0  0  1  0: 0;
  `else
  //a, b: o
    1  ?: 1;
    ?  1: 1;
    0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_46 inst1( o, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_46 inst1( o, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_47( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o
    1  ?  ?  1  0: 1;
    ?  1  ?  1  0: 1;
    ?  ?  1  1  0: 1;
    0  0  0  1  0: 0;
  `else
  //a, b, c: o
    1  ?  ?: 1;
    ?  1  ?: 1;
    ?  ?  1: 1;
    0  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_47 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_47 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_48( sum, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output sum;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: sum
    1  0  1  0: 1;
    0  1  1  0: 1;
    1  1  1  0: 0;
    0  0  1  0: 0;
  `else
  //a, b: sum
    1  0: 1;
    0  1: 1;
    1  1: 0;
    0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_func( a, b, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_1 inst1( carry, a, b, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_48 inst2( sum, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_1 inst1( carry, a, b );
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_48 inst2( sum, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_49( sum, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42 inst1( carry, a, b, c, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_49 inst2( sum, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42 inst1( carry, a, b, c );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_49 inst2( sum, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_50( carry, a, b, c, carryin, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output carry;
  input a, b, c, carryin, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, carryin, d vcc, vssx: carry
    1  1  1  1  ?  1  0: 1;
    1  1  1  ?  1  1  0: 1;
    1  1  0  1  ?  1  0: 1;
    1  1  0  ?  0  1  0: 1;
    1  0  1  1  ?  1  0: 1;
    1  0  1  ?  0  1  0: 1;
    1  0  0  1  ?  1  0: 1;
    1  0  0  ?  1  1  0: 1;
    1  ?  ?  1  ?  1  0: 1;
    ?  1  1  1  1  1  0: 1;
    ?  1  0  1  0  1  0: 1;
    ?  0  1  1  0  1  0: 1;
    ?  0  0  1  1  1  0: 1;
    0  1  1  0  ?  1  0: 0;
    0  1  1  ?  0  1  0: 0;
    0  1  0  0  ?  1  0: 0;
    0  1  0  ?  1  1  0: 0;
    0  0  1  0  ?  1  0: 0;
    0  0  1  ?  1  1  0: 0;
    0  0  0  0  ?  1  0: 0;
    0  0  0  ?  0  1  0: 0;
    0  ?  ?  0  ?  1  0: 0;
    ?  1  1  0  0  1  0: 0;
    ?  1  0  0  1  1  0: 0;
    ?  0  1  0  1  1  0: 0;
    ?  0  0  0  0  1  0: 0;
  `else
  //a, b, c, carryin, d: carry
    1  1  1  1  ?: 1;
    1  1  1  ?  1: 1;
    1  1  0  1  ?: 1;
    1  1  0  ?  0: 1;
    1  0  1  1  ?: 1;
    1  0  1  ?  0: 1;
    1  0  0  1  ?: 1;
    1  0  0  ?  1: 1;
    1  ?  ?  1  ?: 1;
    ?  1  1  1  1: 1;
    ?  1  0  1  0: 1;
    ?  0  1  1  0: 1;
    ?  0  0  1  1: 1;
    0  1  1  0  ?: 0;
    0  1  1  ?  0: 0;
    0  1  0  0  ?: 0;
    0  1  0  ?  1: 0;
    0  0  1  0  ?: 0;
    0  0  1  ?  1: 0;
    0  0  0  0  ?: 0;
    0  0  0  ?  0: 0;
    0  ?  ?  0  ?: 0;
    ?  1  1  0  0: 0;
    ?  1  0  0  1: 0;
    ?  0  1  0  1: 0;
    ?  0  0  0  0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_51( sum, a, b, c, carryin, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output sum;
  input a, b, c, carryin, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, carryin, d vcc, vssx: sum
    1  1  1  1  1  1  0: 1;
    1  1  1  0  0  1  0: 1;
    1  1  0  1  0  1  0: 1;
    1  1  0  0  1  1  0: 1;
    1  0  1  1  0  1  0: 1;
    1  0  1  0  1  1  0: 1;
    1  0  0  1  1  1  0: 1;
    1  0  0  0  0  1  0: 1;
    0  1  1  1  0  1  0: 1;
    0  1  1  0  1  1  0: 1;
    0  1  0  1  1  1  0: 1;
    0  1  0  0  0  1  0: 1;
    0  0  1  1  1  1  0: 1;
    0  0  1  0  0  1  0: 1;
    0  0  0  1  0  1  0: 1;
    0  0  0  0  1  1  0: 1;
    1  1  1  1  0  1  0: 0;
    1  1  1  0  1  1  0: 0;
    1  1  0  1  1  1  0: 0;
    1  1  0  0  0  1  0: 0;
    1  0  1  1  1  1  0: 0;
    1  0  1  0  0  1  0: 0;
    1  0  0  1  0  1  0: 0;
    1  0  0  0  1  1  0: 0;
    0  1  1  1  1  1  0: 0;
    0  1  1  0  0  1  0: 0;
    0  1  0  1  0  1  0: 0;
    0  1  0  0  1  1  0: 0;
    0  0  1  1  0  1  0: 0;
    0  0  1  0  1  1  0: 0;
    0  0  0  1  1  1  0: 0;
    0  0  0  0  0  1  0: 0;
  `else
  //a, b, c, carryin, d: sum
    1  1  1  1  1: 1;
    1  1  1  0  0: 1;
    1  1  0  1  0: 1;
    1  1  0  0  1: 1;
    1  0  1  1  0: 1;
    1  0  1  0  1: 1;
    1  0  0  1  1: 1;
    1  0  0  0  0: 1;
    0  1  1  1  0: 1;
    0  1  1  0  1: 1;
    0  1  0  1  1: 1;
    0  1  0  0  0: 1;
    0  0  1  1  1: 1;
    0  0  1  0  0: 1;
    0  0  0  1  0: 1;
    0  0  0  0  1: 1;
    1  1  1  1  0: 0;
    1  1  1  0  1: 0;
    1  1  0  1  1: 0;
    1  1  0  0  0: 0;
    1  0  1  1  1: 0;
    1  0  1  0  0: 0;
    1  0  0  1  0: 0;
    1  0  0  0  1: 0;
    0  1  1  1  1: 0;
    0  1  1  0  0: 0;
    0  1  0  1  0: 0;
    0  1  0  0  1: 0;
    0  0  1  1  0: 0;
    0  0  1  0  1: 0;
    0  0  0  1  1: 0;
    0  0  0  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func( a, b, c, carry, carryin, carryout, d, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, carryin, d;
   output carry, carryout, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_50 inst1( carry, a, b, c, carryin, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42 inst2( carryout, b, c, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_51 inst3( sum, a, b, c, carryin, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_50 inst1( carry, a, b, c, carryin, d );
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_42 inst2( carryout, b, c, d );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_51 inst3( sum, a, b, c, carryin, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_52( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: out0
    1  1  0  1  0: 1;
    1  0  1  1  0: 1;
    0  1  1  1  0: 1;
    0  0  0  1  0: 1;
    1  1  1  1  0: 0;
    1  0  0  1  0: 0;
    0  1  0  1  0: 0;
    0  0  1  1  0: 0;
  `else
  //a, b, c: out0
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


module INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_52 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_52 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_53( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_53 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_53 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ac_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_49 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_49 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ac_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_48 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_48 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_54( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output out0;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: out0
    1  1  1  1  1  0: 1;
    1  1  0  0  1  0: 1;
    0  0  1  1  1  0: 1;
    0  0  0  0  1  0: 1;
    1  0  ?  ?  1  0: 0;
    0  1  ?  ?  1  0: 0;
    ?  ?  1  0  1  0: 0;
    ?  ?  0  1  1  0: 0;
  `else
  //a, b, c, d: out0
    1  1  1  1: 1;
    1  1  0  0: 1;
    0  0  1  1: 1;
    0  0  0  0: 1;
    1  0  ?  ?: 0;
    0  1  ?  ?: 0;
    ?  ?  1  0: 0;
    ?  ?  0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_54 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_54 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0saboi22ac1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AND2-OR-INVERT with inverted pin:a o = !((d*c)+(b*(!a)))
// 
// 
// assign `aboi22ac_delay out0 =  a&~c | a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_func i0saboi22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aboi22ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_func i0saboi22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `aboi22ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_func i0saboi22ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ac_func i0saboi22ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sand002ac1n01x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input AND o = (a*b)
// 
// 
// assign `and002ac_delay o =  a&b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and002ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `and002ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n01x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n01x1_inst(.a(a),.b(b),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sand002ac1n02x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input AND o = (a*b)
// 
// 
// assign `and002ac_delay o =  a&b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and002ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `and002ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n02x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ac_func i0sand002ac1n02x1_inst(.a(a),.b(b),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sand003ac1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input AND o = (a*b*c)
// 
// 
// assign `and003ac_delay o =  a&b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and003ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `and003ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sand003ac1n02x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input AND o = (a*b*c)
// 
// 
// assign `and003ac_delay o =  a&b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and003ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `and003ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n02x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ac_func i0sand003ac1n02x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sao0012ac1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND2-OR2 with o = (a+(b*c))
// 
// 
// assign `ao0012ac_delay o =  a | b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0012ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `ao0012ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sao0012ac1n02x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND2-OR2 with o = (a+(b*c))
// 
// 
// assign `ao0012ac_delay o =  a | b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0012ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `ao0012ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n02x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ac_func i0sao0012ac1n02x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sao0022ac1n01x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input Two AND2-OR2 o = ((c*d)+(a*b))
// 
// 
// assign `ao0022ac_delay o =  a&b | c&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0022ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `ao0022ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
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


module i0sao0022ac1n02x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input Two AND2-OR2 o = ((c*d)+(a*b))
// 
// 
// assign `ao0022ac_delay o =  a&b | c&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0022ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `ao0022ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ac_func i0sao0022ac1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
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


module i0saoai13ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AOI o1 = !(a(b+cd))
// 
// 
// assign `aoai13ac_delay o1 =  ~a | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_func i0saoai13ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoai13ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_func i0saoai13ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoai13ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_func i0saoai13ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ac_func i0saoai13ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
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


module i0saob012ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ac_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saob012ac1n01x2( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ac_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ac_func i0saob012ac1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saobi12ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI with inverted input:a out0 = !((!a)+(b*c))
// 
// 
// assign `aobi12ac_delay out0 =  a&~b | a&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_func i0saobi12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aobi12ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_func i0saobi12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aobi12ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_func i0saobi12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ac_func i0saobi12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
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
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
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


module i0saoi012ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012ac_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_func i0saoi012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_func i0saoi012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_func i0saoi012ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ac_func i0saoi012ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
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


module i0saoi013ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AND3-OR2-INVERT o1 = !(a+(b*c*d))
// 
// 
// assign `aoi013ac_delay o1 =  ~a&~b | ~a&~c | ~a&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_func i0saoi013ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi013ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_func i0saoi013ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi013ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_func i0saoi013ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ac_func i0saoi013ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
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


module i0saoi022ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022ac_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_func i0saoi022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_func i0saoi022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_func i0saoi022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ac_func i0saoi022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0saoi112ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AND2-OR3-INVERT o1 = !{a+b+(c*d)}
// 
// 
// assign `aoi112ac_delay o1 =  ~a&~b&~c | ~a&~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_func i0saoi112ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi112ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_func i0saoi112ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi112ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_func i0saoi112ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ac_func i0saoi112ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0saoi122ac1n01x1( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 5-input Two AND2-OR3-INVERT o1 = !(a+ (b*c)+(d*e))
// 
// 
// assign `aoi122ac_delay o1 =  ~a&~b&~d | ~a&~b&~e | ~a&~c&~d | ~a&~c&~e;
// 

   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_func i0saoi122ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi122ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_func i0saoi122ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp));
      assign `aoi122ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_func i0saoi122ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ac_func i0saoi122ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1));
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
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0)
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
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1)
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
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
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


module i0saoi222ac1n01x1( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6-input Three AND2-OR3-INVERT o1 = !((a*b)+(c*d)+(e*f))
// 
// 
// assign `aoi222ac_delay o1 =  ~a&~c&~e | ~a&~c&~f | ~a&~d&~e | ~a&~d&~f | ~b&~c&~e | ~b&~c&~f | ~b&~d&~e | ~b&~d&~f;
// 

   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_func i0saoi222ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi222ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_func i0saoi222ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp));
      assign `aoi222ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_func i0saoi222ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ac_func i0saoi222ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b1)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoib12ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex AOI21 gate with 1 inverted input
// 
// 
// assign `aoib12ac_delay out0 =  ~a&~b | ~a&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_func i0saoib12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoib12ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_func i0saoib12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aoib12ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_func i0saoib12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ac_func i0saoib12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sbfm201ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage min delay buffer output o = !(!a)
// 
// 
// buf `bfm201ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm201ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm201ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm201ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage min delay buffer output o = !(!a)
// 
// 
// buf `bfm201ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm201ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm201ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ac_func i0sbfm201ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfm202ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm202ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm202ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm202ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm202ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm202ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm202ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm202ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ac_func i0sbfm202ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfm402ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm402ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm402ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm402ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm402ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm402ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm402ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm402ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ac_func i0sbfm402ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfm403ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 3 stacked stage
// 
// 
// buf `bfm403ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm403ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm403ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm403ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 3 stacked stage
// 
// 
// buf `bfm403ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm403ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm403ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ac_func i0sbfm403ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfm604ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min high delay buffer o = !(!a)
// 
// 
// buf `bfm604ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm604ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm604ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm604ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min high delay buffer o = !(!a)
// 
// 
// buf `bfm604ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm604ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm604ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ac_func i0sbfm604ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfm605ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min-delay buffer with 5 stacked stage
// 
// 
// buf `bfm605ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm605ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm605ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm605ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min-delay buffer with 5 stacked stage
// 
// 
// buf `bfm605ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm605ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm605ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ac_func i0sbfm605ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfm807ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8 stage min-delay buffer with 7 stacked stage
// 
// 
// buf `bfm807ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm807ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm807ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfm807ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8 stage min-delay buffer with 7 stacked stage
// 
// 
// buf `bfm807ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm807ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm807ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ac_func i0sbfm807ac1n02x1_inst(.a(a),.o(o));
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


module i0sbfn000ac1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n01x1_inst(.a(a),.o(o));
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


module i0sbfn000ac1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000ac_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ac_func i0sbfn000ac1n02x1_inst(.a(a),.o(o));
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


module i0sinv000ac1n01x1( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000ac_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_func i0sinv000ac1n01x1_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_func i0sinv000ac1n01x1_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_func i0sinv000ac1n01x1_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ac_func i0sinv000ac1n01x1_inst(.a(a),.o1(o1));
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


module i0smbc004ac1n01x1( a, b, c, d, o, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 decoded MUX o = ((a*sa)+(b*sb)+(c*sc)+(d*sd))
// 
// 
// assign o =  a&sa | b&sb | c&sc | d&sd;
// 

   input a, b, c, d, sa, sb, sc, sd;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_func i0smbc004ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
      assign `mbc004ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_func i0smbc004ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
      assign `mbc004ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_func i0smbc004ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ac_func i0smbc004ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   if(a==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   ifnone
   // comb arc negedge b --> o
    (negedge b => (o:b)) = (0.0,0.0);

   ifnone
   // comb arc posedge b --> o
    (posedge b => (o:b)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   ifnone
   // comb arc negedge c --> o
    (negedge c => (o:c)) = (0.0,0.0);

   ifnone
   // comb arc posedge c --> o
    (posedge c => (o:c)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && sa==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && sa==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && sa==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && sa==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc negedge d --> o
    (negedge d => (o:d)) = (0.0,0.0);

   ifnone
   // comb arc posedge d --> o
    (posedge d => (o:d)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0 && sb==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sb==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sb==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sb==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sb==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sb==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sb==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sb==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   ifnone
   // comb arc negedge sa --> o
    (negedge sa => (o:sa)) = (0.0,0.0);

   ifnone
   // comb arc posedge sa --> o
    (posedge sa => (o:sa)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b1 && sc==1'b1 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0 && sa==1'b0 && sc==1'b1 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sc==1'b1 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sc==1'b0 && sd==1'b1)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sc==1'b0 && sd==1'b0)
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   ifnone
   // comb arc negedge sb --> o
    (negedge sb => (o:sb)) = (0.0,0.0);

   ifnone
   // comb arc posedge sb --> o
    (posedge sb => (o:sb)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b1 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b1 && sb==1'b0 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b1 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && sa==1'b0 && sb==1'b0 && sd==1'b1)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sd==1'b0)
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   ifnone
   // comb arc negedge sc --> o
    (negedge sc => (o:sc)) = (0.0,0.0);

   ifnone
   // comb arc posedge sc --> o
    (posedge sc => (o:sc)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b1 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b1 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b1 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b1)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && sa==1'b0 && sb==1'b0 && sc==1'b0)
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

   ifnone
   // comb arc negedge sd --> o
    (negedge sd => (o:sd)) = (0.0,0.0);

   ifnone
   // comb arc posedge sd --> o
    (posedge sd => (o:sd)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0smbn022ac1n01x1( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 mux o = (a*sa)+(b*!sa)
// 
// 
// assign `mbn022ac_delay o =  sa ? a : b;
// 

   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mbn022ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa));
      assign `mbn022ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n01x1_inst(.a(a),.b(b),.o(o),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n01x1_inst(.a(a),.b(b),.o(o),.sa(sa));
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


module i0smbn022ac1n02x1( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 mux o = (a*sa)+(b*!sa)
// 
// 
// assign `mbn022ac_delay o =  sa ? a : b;
// 

   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mbn022ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa));
      assign `mbn022ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n02x1_inst(.a(a),.b(b),.o(o),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ac_func i0smbn022ac1n02x1_inst(.a(a),.b(b),.o(o),.sa(sa));
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


module i0smbn024ac1n01x1( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded mux INV-PG-INV
// 
// 
// assign  int1 =  sa ? b : a;
// assign  int2 =  sa ? d : c;
// assign `mbn024ac_delay o =  sb ? int2 : int1;
// 

   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `mbn024ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb));
      assign `mbn024ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb));
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


module i0smbn024ac1n02x1( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded mux INV-PG-INV
// 
// 
// assign  int1 =  sa ? b : a;
// assign  int2 =  sa ? d : c;
// assign `mbn024ac_delay o =  sb ? int2 : int1;
// 

   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `mbn024ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb));
      assign `mbn024ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ac_func i0smbn024ac1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb));
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


module i0smtn022ac1n01x1( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 inverting MUX (Tri-state implementation) o1 = (!a*sa)+(!b*!sa)
// 
// 
// assign `mtn022ac_delay o1 =  sa ? ~a : ~b;
// 

   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_func i0smtn022ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mtn022ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_func i0smtn022ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa));
      assign `mtn022ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_func i0smtn022ac1n01x1_inst(.a(a),.b(b),.o1(o1),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ac_func i0smtn022ac1n01x1_inst(.a(a),.b(b),.o1(o1),.sa(sa));
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


module i0snanb02ac1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NAND with bubbled input: a out0 = !{!(a)*b}
// 
// 
// assign `nanb02ac_delay out0 =  a | ~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanb02ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `nanb02ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n01x1_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanb02ac1n02x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NAND with bubbled input: a out0 = !{!(a)*b}
// 
// 
// assign `nanb02ac_delay out0 =  a | ~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanb02ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `nanb02ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n02x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ac_func i0snanb02ac1n02x1_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snand22ac1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input low skew NAND o1 = !(a*b)
// 
// 
// assign `nand22ac_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_func i0snand22ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nand22ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_func i0snand22ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nand22ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_func i0snand22ac1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ac_func i0snand22ac1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snand23ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input low skew NAND P/N=0.4 o1 = !(a*b*c)
// 
// 
// assign `nand23ac_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_func i0snand23ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nand23ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_func i0snand23ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nand23ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_func i0snand23ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ac_func i0snand23ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0snano22ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// NAND2+NOR2 out0 = !(a+!b+!c)
// 
// 
// assign `nano22ac_delay out0 =  ~a&b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_func i0snano22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nano22ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_func i0snano22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `nano22ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_func i0snano22ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ac_func i0snano22ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snano23ac1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// NAND2+NOR3 out0 = !(a+b+!c+!d)
// 
// 
// assign `nano23ac_delay out0 =  ~a&~b&c&d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_func i0snano23ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nano23ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_func i0snano23ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `nano23ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_func i0snano23ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ac_func i0snano23ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp02ac1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// packed Z 2-input nand
// 
// 
// assign `nanp02ac_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ac_func i0snanp02ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp02ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ac_func i0snanp02ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nanp02ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ac_func i0snanp02ac1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ac_func i0snanp02ac1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snanp03ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand P/N=0.7
// 
// 
// assign `nanp03ac_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ac_func i0snanp03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp03ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ac_func i0snanp03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nanp03ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ac_func i0snanp03ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ac_func i0snanp03ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0snona22ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand with a bubble at b and c
// 
// 
// assign `nona22ac_delay out0 =  ~a | b | c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_func i0snona22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nona22ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_func i0snona22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `nona22ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_func i0snona22ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ac_func i0snona22ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snona23ac1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input nand with a bubble at c and d
// 
// 
// assign `nona23ac_delay out0 =  ~a | ~b | c | d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_func i0snona23ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nona23ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_func i0snona23ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `nona23ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_func i0snona23ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ac_func i0snona23ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snor042ac1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input high skew NOR o1 = !(a+b)
// 
// 
// assign `nor042ac_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_func i0snor042ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nor042ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_func i0snor042ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nor042ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_func i0snor042ac1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ac_func i0snor042ac1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snor043ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input high skew NOR o1 = !(a+b+c)
// 
// 
// assign `nor043ac_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_func i0snor043ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nor043ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_func i0snor043ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nor043ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_func i0snor043ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ac_func i0snor043ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0snorb02ac1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input nor bubble gate
// 
// 
// assign `norb02ac_delay out0 =  a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `norb02ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `norb02ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n01x1_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorb02ac1n02x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input nor bubble gate
// 
// 
// assign `norb02ac_delay out0 =  a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `norb02ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `norb02ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n02x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ac_func i0snorb02ac1n02x1_inst(.a(a),.b(b),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorb03ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nor with a bubble at a
// 
// 
// assign `norb03ac_delay out0 =  a&~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_func i0snorb03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `norb03ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_func i0snorb03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `norb03ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_func i0snorb03ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ac_func i0snorb03ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
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


module i0snorp02ac1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input NOR packed Z
// 
// 
// assign `norp02ac_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ac_func i0snorp02ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp02ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ac_func i0snorp02ac1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `norp02ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ac_func i0snorp02ac1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ac_func i0snorp02ac1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snorp03ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input NOR packed Z
// 
// 
// assign `norp03ac_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ac_func i0snorp03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp03ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ac_func i0snorp03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `norp03ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ac_func i0snorp03ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ac_func i0snorp03ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0soa0012ac1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex non-inverting cell OAI21
// 
// 
// assign `oa0012ac_delay o =  a&b | a&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_func i0soa0012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `oa0012ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_func i0soa0012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `oa0012ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_func i0soa0012ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ac_func i0soa0012ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soa0022ac1n01x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex non-inverting cell OAI22
// 
// 
// assign `oa0022ac_delay o =  a&c | a&d | b&c | b&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_func i0soa0022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `oa0022ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_func i0soa0022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `oa0022ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_func i0soa0022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ac_func i0soa0022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o
      (posedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o
      (negedge d => (o:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
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


module i0soab012ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input NOR2-NOR2 out0 = !(a+!(b+c))
// 
// 
// assign `oab012ac_delay out0 =  ~a&b | ~a&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oab012ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oab012ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soab012ac1n01x2( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input NOR2-NOR2 out0 = !(a+!(b+c))
// 
// 
// assign `oab012ac_delay out0 =  ~a&b | ~a&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oab012ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oab012ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ac_func i0soab012ac1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soabi12ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input complex gate
// 
// 
// assign `oabi12ac_delay out0 =  a | ~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_func i0soabi12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oabi12ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_func i0soabi12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oabi12ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_func i0soabi12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ac_func i0soabi12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
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
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
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


module i0soai012ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012ac_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_func i0soai012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_func i0soai012ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_func i0soai012ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ac_func i0soai012ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
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
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
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


module i0soai013ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input OR3-AND2-INVERT o1 = !{a*(b+c+d)}
// 
// 
// assign `oai013ac_delay o1 =  ~a | ~b&~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_func i0soai013ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai013ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_func i0soai013ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai013ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_func i0soai013ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ac_func i0soai013ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
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


module i0soai022ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022ac_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_func i0soai022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_func i0soai022ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_func i0soai022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ac_func i0soai022ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0soai112ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input OR2-AND3-INVERT o1 = !{b*a*(d+c)}
// 
// 
// assign `oai112ac_delay o1 =  ~a | ~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_func i0soai112ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai112ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_func i0soai112ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai112ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_func i0soai112ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ac_func i0soai112ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
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


module i0soai122ac1n01x1( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex inverting cell OAI122
// 
// 
// assign `oai122ac_delay o1 =  ~a | ~b&~c | ~d&~e;
// 

   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_func i0soai122ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai122ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_func i0soai122ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp));
      assign `oai122ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_func i0soai122ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ac_func i0soai122ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
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
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1 && e==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && e==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
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
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
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


module i0soai222ac1n01x1( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 input Three OR2-AND3-INVERT o1 = !{(e+f)*(c+d)*(a+b)}
// 
// 
// assign `oai222ac_delay o1 =  ~a&~b | ~c&~d | ~e&~f;
// 

   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_func i0soai222ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai222ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_func i0soai222ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp));
      assign `oai222ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_func i0soai222ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ac_func i0soai222ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b0 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1 && e==1'b1 && f==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b0 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && e==1'b1 && f==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0)
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && f==1'b0)
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge e --> o1
      (posedge e => (o1:e)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge e --> o1
      (negedge e => (o1:e)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1 && e==1'b0)
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge f --> o1
      (posedge f => (o1:f)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge f --> o1
      (negedge f => (o1:f)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soaib12ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex cell one bubbled version of cell OAI21
// 
// 
// assign `oaib12ac_delay out0 =  ~a | ~b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_func i0soaib12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaib12ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_func i0soaib12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oaib12ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_func i0soaib12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ac_func i0soaib12ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soaih12ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high skew complex inverting cell OAI21
// 
// 
// assign `oaih12ac_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ac_func i0soaih12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaih12ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ac_func i0soaih12ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oaih12ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ac_func i0soaih12ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ac_func i0soaih12ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
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
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
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


module i0soaih22ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high skew complex inverting cell OAIH22
// 
// 
// assign `oaih22ac_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ac_func i0soaih22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaih22ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ac_func i0soaih22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oaih22ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ac_func i0soaih22ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ac_func i0soaih22ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0soao003ac1n01x1( a, b, c, carry `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input majority gate
// 
// 
// assign `oao003ac_delay carry =  a&b | a&c | b&c;
// 

   input a, b, c;
   output carry;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_func i0soao003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.vcc(vcc),.vssx(vssx));
      assign `oao003ac_delay carry = carry_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_func i0soao003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp));
      assign `oao003ac_delay carry = carry_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_func i0soao003ac1n01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ac_func i0soao003ac1n01x1_inst(.a(a),.b(b),.c(c),.carry(carry));
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
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soaoi03ac1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex inverting cell OAOI03
// 
// 
// assign `oaoi03ac_delay o1 =  ~a&~b | ~a&~c | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_func i0soaoi03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaoi03ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_func i0soaoi03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oaoi03ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_func i0soaoi03ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ac_func i0soaoi03ac1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
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


module i0soaoi13ac1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !a*!b+!a*!c*!d
// 
// 
// assign `oaoi13ac_delay o1 =  ~a&~b | ~a&~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_func i0soaoi13ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaoi13ac_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_func i0soaoi13ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oaoi13ac_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_func i0soaoi13ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ac_func i0soaoi13ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
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


module i0sobai22ac1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT with inverted input: a out0 =  (!d*!c)+(a*!b))
// 
// 
// assign `obai22ac_delay out0 =  a&~b | ~c&~d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_func i0sobai22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `obai22ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_func i0sobai22ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `obai22ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_func i0sobai22ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ac_func i0sobai22ac1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sorn002ac1n01x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input OR o = (a+b)
// 
// 
// assign `orn002ac_delay o =  a | b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn002ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `orn002ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n01x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n01x1_inst(.a(a),.b(b),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sorn002ac1n02x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input OR o = (a+b)
// 
// 
// assign `orn002ac_delay o =  a | b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn002ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `orn002ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n02x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ac_func i0sorn002ac1n02x1_inst(.a(a),.b(b),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sorn003ac1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR o = (a+b+c)
// 
// 
// assign `orn003ac_delay o =  a | b | c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn003ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `orn003ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sorn003ac1n02x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR o = (a+b+c)
// 
// 
// assign `orn003ac_delay o =  a | b | c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn003ac_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `orn003ac_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n02x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ac_func i0sorn003ac1n02x1_inst(.a(a),.b(b),.c(c),.o(o));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o
      (negedge a => (o:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o
      (posedge a => (o:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o
      (negedge b => (o:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o
      (posedge b => (o:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o
      (negedge c => (o:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o
      (posedge c => (o:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0src0022ac1n01x1( a, b, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Half Adder w/o BPG
// 
// 
// assign `rc0022ac_delay carry =  a&b;
// assign `rc0022ac_delay sum =  a&~b | ~a&b;
// 

   input a, b;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_func i0src0022ac1n01x1_behav_inst(.a(a),.b(b),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rc0022ac_delay carry = carry_tmp ;
      assign `rc0022ac_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_func i0src0022ac1n01x1_behav_inst(.a(a),.b(b),.carry(carry_tmp),.sum(sum_tmp));
      assign `rc0022ac_delay carry = carry_tmp ;
      assign `rc0022ac_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_func i0src0022ac1n01x1_inst(.a(a),.b(b),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ac_func i0src0022ac1n01x1_inst(.a(a),.b(b),.carry(carry),.sum(sum));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (sum:a)
      (posedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (sum:a)
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (sum:b)
      (posedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (sum:b)
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0srm0023ac1d01x1( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 1 bit full mirror adder carry = ((c*b)+(c*a)+(b*a)); sum = (!a*!b*c+!a*b*!c+a*!b*!c+a*b*c)
// 
// 
// assign `rm0023ac_delay carry =  a&b | a&c | b&c;
// assign `rm0023ac_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0023ac_delay carry = carry_tmp ;
      assign `rm0023ac_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `rm0023ac_delay carry = carry_tmp ;
      assign `rm0023ac_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
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


module i0srm0023ac1d02x1( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 1 bit full mirror adder carry = ((c*b)+(c*a)+(b*a)); sum = (!a*!b*c+!a*b*!c+a*!b*!c+a*b*c)
// 
// 
// assign `rm0023ac_delay carry =  a&b | a&c | b&c;
// assign `rm0023ac_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0023ac_delay carry = carry_tmp ;
      assign `rm0023ac_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `rm0023ac_delay carry = carry_tmp ;
      assign `rm0023ac_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
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


module i0srm0023ac1d02x2( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 1 bit full mirror adder carry = ((c*b)+(c*a)+(b*a)); sum = (!a*!b*c+!a*b*!c+a*!b*!c+a*b*c)
// 
// 
// assign `rm0023ac_delay carry =  a&b | a&c | b&c;
// assign `rm0023ac_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0023ac_delay carry = carry_tmp ;
      assign `rm0023ac_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `rm0023ac_delay carry = carry_tmp ;
      assign `rm0023ac_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x2_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ac_func i0srm0023ac1d02x2_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
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


module i0srm0042ac1d01x1( a, b, c, carry, carryin, carryout, d, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:2 compressor with 2 mirror adder 
// 
// 
// assign `rm0042ac_delay carry =  a&b&c&carryin | a&b&c&d | a&b&~c&carryin | a&b&~c&~d | a&~b&c&carryin | a&~b&c&~d | a&~b&~c&carryin | a&~b&~c&d | a&carryin | b&c&carryin&d | b&~c&carryin&~d | ~b&c&carryin&~d | ~b&~c&carryin&d;
// assign `rm0042ac_delay carryout =  b&c | b&d | c&d;
// assign `rm0042ac_delay sum =  a&b&c&carryin&d | a&b&c&~carryin&~d | a&b&~c&carryin&~d | a&b&~c&~carryin&d | a&~b&c&carryin&~d | a&~b&c&~carryin&d | a&~b&~c&carryin&d | a&~b&~c&~carryin&~d | ~a&b&c&carryin&~d | ~a&b&c&~carryin&d | ~a&b&~c&carryin&d | ~a&b&~c&~carryin&~d | ~a&~b&c&carryin&d | ~a&~b&c&~carryin&~d | ~a&~b&~c&carryin&~d | ~a&~b&~c&~carryin&d;
// 

   input a, b, c, carryin, d;
   output carry, carryout, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0042ac_delay carry = carry_tmp ;
      assign `rm0042ac_delay carryout = carryout_tmp ;
      assign `rm0042ac_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp));
      assign `rm0042ac_delay carry = carry_tmp ;
      assign `rm0042ac_delay carryout = carryout_tmp ;
      assign `rm0042ac_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (carry:b)
      (posedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (carry:b)
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (carry:c)
      (posedge c => (carry:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (carry:c)
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> (carry:d)
      (posedge d => (carry:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> (carry:d)
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (sum:a)
      (posedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (sum:a)
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (sum:b)
      (posedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (sum:b)
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (sum:c)
      (posedge c => (sum:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (sum:c)
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge carryin --> (sum:carryin)
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge carryin --> (sum:carryin)
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> (sum:d)
      (posedge d => (sum:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> (sum:d)
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0srm0042ac1d01x2( a, b, c, carry, carryin, carryout, d, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:2 compressor with 2 mirror adder 
// 
// 
// assign `rm0042ac_delay carry =  a&b&c&carryin | a&b&c&d | a&b&~c&carryin | a&b&~c&~d | a&~b&c&carryin | a&~b&c&~d | a&~b&~c&carryin | a&~b&~c&d | a&carryin | b&c&carryin&d | b&~c&carryin&~d | ~b&c&carryin&~d | ~b&~c&carryin&d;
// assign `rm0042ac_delay carryout =  b&c | b&d | c&d;
// assign `rm0042ac_delay sum =  a&b&c&carryin&d | a&b&c&~carryin&~d | a&b&~c&carryin&~d | a&b&~c&~carryin&d | a&~b&c&carryin&~d | a&~b&c&~carryin&d | a&~b&~c&carryin&d | a&~b&~c&~carryin&~d | ~a&b&c&carryin&~d | ~a&b&c&~carryin&d | ~a&b&~c&carryin&d | ~a&b&~c&~carryin&~d | ~a&~b&c&carryin&d | ~a&~b&c&~carryin&~d | ~a&~b&~c&carryin&~d | ~a&~b&~c&~carryin&d;
// 

   input a, b, c, carryin, d;
   output carry, carryout, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0042ac_delay carry = carry_tmp ;
      assign `rm0042ac_delay carryout = carryout_tmp ;
      assign `rm0042ac_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp));
      assign `rm0042ac_delay carry = carry_tmp ;
      assign `rm0042ac_delay carryout = carryout_tmp ;
      assign `rm0042ac_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x2_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ac_func i0srm0042ac1d01x2_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> carry
      (negedge a => (carry:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> carry
      (posedge a => (carry:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (carry:b)
      (posedge b => (carry:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (carry:b)
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carry
      (negedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carry
      (posedge b => (carry:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (carry:c)
      (posedge c => (carry:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (carry:c)
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carry
      (negedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carry
      (posedge c => (carry:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge carryin --> carry
      (negedge carryin => (carry:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge carryin --> carry
      (posedge carryin => (carry:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> (carry:d)
      (posedge d => (carry:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> (carry:d)
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carry
      (negedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carry
      (posedge d => (carry:d)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> carryout
      (negedge b => (carryout:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> carryout
      (posedge b => (carryout:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> carryout
      (negedge c => (carryout:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> carryout
      (posedge c => (carryout:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> carryout
      (negedge d => (carryout:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> carryout
      (posedge d => (carryout:d)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (sum:a)
      (posedge a => (sum:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (sum:a)
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge a --> sum
      (negedge a => (sum:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge a --> sum
      (posedge a => (sum:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (sum:b)
      (posedge b => (sum:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (sum:b)
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge b --> sum
      (negedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge b --> sum
      (posedge b => (sum:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (sum:c)
      (posedge c => (sum:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (sum:c)
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b0 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && carryin==1'b1 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b0 && d==1'b0)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc negedge c --> sum
      (negedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && carryin==1'b1 && d==1'b1)
      // comb arc posedge c --> sum
      (posedge c => (sum:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge carryin --> (sum:carryin)
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge carryin --> (sum:carryin)
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge carryin --> sum
      (negedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge carryin --> sum
      (posedge carryin => (sum:carryin)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> (sum:d)
      (posedge d => (sum:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> (sum:d)
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0 && carryin==1'b0)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc negedge d --> sum
      (negedge d => (sum:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1 && carryin==1'b1)
      // comb arc posedge d --> sum
      (posedge d => (sum:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sxnrb03ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XNOR3 (no BPG)
// 
// 
// assign `xnrb03ac_delay out0 =  a&b&~c | a&~b&c | ~a&b&c | ~a&~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_func i0sxnrb03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnrb03ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_func i0sxnrb03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xnrb03ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_func i0sxnrb03ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ac_func i0sxnrb03ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0sxnrc02ac1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XNOR2 (no BPG)
// 
// 
// assign `xnrc02ac_delay out0 =  a&b | ~a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_func i0sxnrc02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnrc02ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_func i0sxnrc02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xnrc02ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_func i0sxnrc02ac1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ac_func i0sxnrc02ac1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0sxorb03ac1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XOR3 (no BPG)
// 
// 
// assign `xorb03ac_delay out0 =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ac_func i0sxorb03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xorb03ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ac_func i0sxorb03ac1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xorb03ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ac_func i0sxorb03ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ac_func i0sxorb03ac1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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




`celldefine 


module i0sxorc02ac1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XOR2 (no BPG)
// 
// 
// assign `xorc02ac_delay out0 =  a&~b | ~a&b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ac_func i0sxorc02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xorc02ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ac_func i0sxorc02ac1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xorc02ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ac_func i0sxorc02ac1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ac_func i0sxorc02ac1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0sxroi22ac1d01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 Comparator
// 
// 
// assign `xroi22ac_delay out0 =  a&b&c&d | a&b&~c&~d | ~a&~b&c&d | ~a&~b&~c&~d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_func i0sxroi22ac1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xroi22ac_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_func i0sxroi22ac1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `xroi22ac_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_func i0sxroi22ac1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ac_func i0sxroi22ac1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> (out0:a)
      (posedge a => (out0:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> (out0:a)
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> out0
      (negedge a => (out0:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> out0
      (posedge a => (out0:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> (out0:b)
      (posedge b => (out0:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> (out0:b)
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> out0
      (negedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> out0
      (posedge b => (out0:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> (out0:c)
      (posedge c => (out0:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> (out0:c)
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> out0
      (negedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> out0
      (posedge c => (out0:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> (out0:d)
      (posedge d => (out0:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> (out0:d)
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> out0
      (negedge d => (out0:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> out0
      (posedge d => (out0:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 



