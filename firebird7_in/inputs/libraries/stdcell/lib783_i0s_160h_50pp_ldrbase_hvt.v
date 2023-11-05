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
     `ifndef aboi22ad_delay
        `define aboi22ad_delay `cell_delay_value
     `endif
     `ifndef and002ad_delay
        `define and002ad_delay `cell_delay_value
     `endif
     `ifndef and003ad_delay
        `define and003ad_delay `cell_delay_value
     `endif
     `ifndef ao0012ad_delay
        `define ao0012ad_delay `cell_delay_value
     `endif
     `ifndef ao0022ad_delay
        `define ao0022ad_delay `cell_delay_value
     `endif
     `ifndef aoai13ad_delay
        `define aoai13ad_delay `cell_delay_value
     `endif
     `ifndef aob012ad_delay
        `define aob012ad_delay `cell_delay_value
     `endif
     `ifndef aobi12ad_delay
        `define aobi12ad_delay `cell_delay_value
     `endif
     `ifndef aoi012ad_delay
        `define aoi012ad_delay `cell_delay_value
     `endif
     `ifndef aoi013ad_delay
        `define aoi013ad_delay `cell_delay_value
     `endif
     `ifndef aoi022ad_delay
        `define aoi022ad_delay `cell_delay_value
     `endif
     `ifndef aoi112ad_delay
        `define aoi112ad_delay `cell_delay_value
     `endif
     `ifndef aoi122ad_delay
        `define aoi122ad_delay `cell_delay_value
     `endif
     `ifndef aoi222ad_delay
        `define aoi222ad_delay `cell_delay_value
     `endif
     `ifndef aoib12ad_delay
        `define aoib12ad_delay `cell_delay_value
     `endif
     `ifndef bfm201ad_delay
        `define bfm201ad_delay `cell_delay_value
     `endif
     `ifndef bfm202ad_delay
        `define bfm202ad_delay `cell_delay_value
     `endif
     `ifndef bfm402ad_delay
        `define bfm402ad_delay `cell_delay_value
     `endif
     `ifndef bfm403ad_delay
        `define bfm403ad_delay `cell_delay_value
     `endif
     `ifndef bfm604ad_delay
        `define bfm604ad_delay `cell_delay_value
     `endif
     `ifndef bfm605ad_delay
        `define bfm605ad_delay `cell_delay_value
     `endif
     `ifndef bfm807ad_delay
        `define bfm807ad_delay `cell_delay_value
     `endif
     `ifndef bfn000ad_delay
        `define bfn000ad_delay `cell_delay_value
     `endif
     `ifndef inv000ad_delay
        `define inv000ad_delay `cell_delay_value
     `endif
     `ifndef mbc004ad_delay
        `define mbc004ad_delay `cell_delay_value
     `endif
     `ifndef mbn022ad_delay
        `define mbn022ad_delay `cell_delay_value
     `endif
     `ifndef mbn024ad_delay
        `define mbn024ad_delay `cell_delay_value
     `endif
     `ifndef mtn022ad_delay
        `define mtn022ad_delay `cell_delay_value
     `endif
     `ifndef nanb02ad_delay
        `define nanb02ad_delay `cell_delay_value
     `endif
     `ifndef nand22ad_delay
        `define nand22ad_delay `cell_delay_value
     `endif
     `ifndef nand23ad_delay
        `define nand23ad_delay `cell_delay_value
     `endif
     `ifndef nano22ad_delay
        `define nano22ad_delay `cell_delay_value
     `endif
     `ifndef nano23ad_delay
        `define nano23ad_delay `cell_delay_value
     `endif
     `ifndef nanp02ad_delay
        `define nanp02ad_delay `cell_delay_value
     `endif
     `ifndef nanp03ad_delay
        `define nanp03ad_delay `cell_delay_value
     `endif
     `ifndef nona22ad_delay
        `define nona22ad_delay `cell_delay_value
     `endif
     `ifndef nona23ad_delay
        `define nona23ad_delay `cell_delay_value
     `endif
     `ifndef nor042ad_delay
        `define nor042ad_delay `cell_delay_value
     `endif
     `ifndef nor043ad_delay
        `define nor043ad_delay `cell_delay_value
     `endif
     `ifndef norb02ad_delay
        `define norb02ad_delay `cell_delay_value
     `endif
     `ifndef norb03ad_delay
        `define norb03ad_delay `cell_delay_value
     `endif
     `ifndef norp02ad_delay
        `define norp02ad_delay `cell_delay_value
     `endif
     `ifndef norp03ad_delay
        `define norp03ad_delay `cell_delay_value
     `endif
     `ifndef oa0012ad_delay
        `define oa0012ad_delay `cell_delay_value
     `endif
     `ifndef oa0022ad_delay
        `define oa0022ad_delay `cell_delay_value
     `endif
     `ifndef oab012ad_delay
        `define oab012ad_delay `cell_delay_value
     `endif
     `ifndef oabi12ad_delay
        `define oabi12ad_delay `cell_delay_value
     `endif
     `ifndef oai012ad_delay
        `define oai012ad_delay `cell_delay_value
     `endif
     `ifndef oai013ad_delay
        `define oai013ad_delay `cell_delay_value
     `endif
     `ifndef oai022ad_delay
        `define oai022ad_delay `cell_delay_value
     `endif
     `ifndef oai112ad_delay
        `define oai112ad_delay `cell_delay_value
     `endif
     `ifndef oai122ad_delay
        `define oai122ad_delay `cell_delay_value
     `endif
     `ifndef oai222ad_delay
        `define oai222ad_delay `cell_delay_value
     `endif
     `ifndef oaib12ad_delay
        `define oaib12ad_delay `cell_delay_value
     `endif
     `ifndef oaih12ad_delay
        `define oaih12ad_delay `cell_delay_value
     `endif
     `ifndef oaih22ad_delay
        `define oaih22ad_delay `cell_delay_value
     `endif
     `ifndef oao003ad_delay
        `define oao003ad_delay `cell_delay_value
     `endif
     `ifndef oaoi03ad_delay
        `define oaoi03ad_delay `cell_delay_value
     `endif
     `ifndef oaoi13ad_delay
        `define oaoi13ad_delay `cell_delay_value
     `endif
     `ifndef obai22ad_delay
        `define obai22ad_delay `cell_delay_value
     `endif
     `ifndef orn002ad_delay
        `define orn002ad_delay `cell_delay_value
     `endif
     `ifndef orn003ad_delay
        `define orn003ad_delay `cell_delay_value
     `endif
     `ifndef rc0022ad_delay
        `define rc0022ad_delay `cell_delay_value
     `endif
     `ifndef rm0023ad_delay
        `define rm0023ad_delay `cell_delay_value
     `endif
     `ifndef rm0042ad_delay
        `define rm0042ad_delay `cell_delay_value
     `endif
     `ifndef xnrb03ad_delay
        `define xnrb03ad_delay `cell_delay_value
     `endif
     `ifndef xnrc02ad_delay
        `define xnrc02ad_delay `cell_delay_value
     `endif
     `ifndef xorb03ad_delay
        `define xorb03ad_delay `cell_delay_value
     `endif
     `ifndef xorc02ad_delay
        `define xorc02ad_delay `cell_delay_value
     `endif
     `ifndef xroi22ad_delay
        `define xroi22ad_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_0( out0, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_0 inst1( out0, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_0 inst1( out0, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_1( o, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_1 inst1( o, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_1 inst1( o, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_2( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_2 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_2 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_3( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_3 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_3 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_4( o, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_4 inst1( o, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_4 inst1( o, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_5( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_5 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_5 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_6( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_6 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_6 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_7( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_7 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_7 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_8( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_8 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_8 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_9( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_9 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_9 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_10( o1, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_10 inst1( o1, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_10 inst1( o1, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_11( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_11 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_11 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_12( o1, a, b, d, e, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_func( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_12 inst1( o1, a, b, d, e, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_12 inst1( o1, a, b, d, e, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_13( o1, a, c, e, f, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_func( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_13 inst1( o1, a, c, e, f, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_13 inst1( o1, a, c, e, f, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_14( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_14 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_14 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_15 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_16( o1, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_16 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_16 inst1( o1, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_0( o, a, sa, b, sb, c, sc, d, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_func( a, b, c, d, o, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, sa, sb, sc, sd;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_0 inst1( o, a, sa, b, sb, c, sc, d, sd, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_0 inst1( o, a, sa, b, sb, c, sc, d, sd );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_17( o, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_17 inst1( o, a, b, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_17 inst1( o, a, b, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18( int1, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18 inst1( int1, a, b, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18 inst2( int2, c, d, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18 inst3( o, int1, int2, sb, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18 inst1( int1, a, b, sa );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18 inst2( int2, c, d, sa );
   INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_18 inst3( o, int1, int2, sb );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_19( o1, a, b, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_func( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_19 inst1( o1, a, b, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_19 inst1( o1, a, b, sa );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_20( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_20 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_20 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_21( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_21 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_21 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_22( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_22 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_22 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_23( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_23 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_23 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_24( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_24 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_24 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ad_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_21 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_21 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_22 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_22 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_25( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_25 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_25 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_26( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_26 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_26 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_27( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_27 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_27 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_28( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_28 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_28 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_29( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_29 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_29 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_30( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_30 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_30 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_norp02ad_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_27 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_27 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_norp03ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_28 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_28 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_31( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_31 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_31 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_32( o, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_func( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_32 inst1( o, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_32 inst1( o, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_33( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_33 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_33 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_34( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_34 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_34 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_35( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_35 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_35 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_36( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_36 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_36 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_37( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_37 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_37 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_38( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_38 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_38 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_39( o1, a, b, c, d, e `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_func( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_39 inst1( o1, a, b, c, d, e, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_39 inst1( o1, a, b, c, d, e );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_40( o1, a, b, c, d, e, f `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_func( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_40 inst1( o1, a, b, c, d, e, f, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_40 inst1( o1, a, b, c, d, e, f );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_41( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_41 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_41 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_35 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_35 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_37 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_37 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42( carry, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_func( a, b, c, carry `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carry;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42 inst1( carry, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42 inst1( carry, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_43( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_43 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_43 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_44( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_44 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_44 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_45( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_45 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_45 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_46( o, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_46 inst1( o, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_46 inst1( o, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_47( o, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_47 inst1( o, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_47 inst1( o, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_48( sum, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_func( a, b, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_1 inst1( carry, a, b, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_48 inst2( sum, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_1 inst1( carry, a, b );
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_48 inst2( sum, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_49( sum, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42 inst1( carry, a, b, c, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_49 inst2( sum, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42 inst1( carry, a, b, c );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_49 inst2( sum, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_50( carry, a, b, c, carryin, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_51( sum, a, b, c, carryin, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func( a, b, c, carry, carryin, carryout, d, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, carryin, d;
   output carry, carryout, sum;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_50 inst1( carry, a, b, c, carryin, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42 inst2( carryout, b, c, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_51 inst3( sum, a, b, c, carryin, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_50 inst1( carry, a, b, c, carryin, d );
   INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_42 inst2( carryout, b, c, d );
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_51 inst3( sum, a, b, c, carryin, d );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_52( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_52 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_52 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_53( out0, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_53 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_53 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ad_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_49 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_49 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ad_func( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_48 inst1( out0, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_48 inst1( out0, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_54( out0, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_func( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_54 inst1( out0, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_54 inst1( out0, a, b, c, d );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0saboi22ad1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AND2-OR-INVERT with inverted pin:a o = !((d*c)+(b*(!a)))
// 
// 
// assign `aboi22ad_delay out0 =  a&~c | a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_func i0saboi22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aboi22ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_func i0saboi22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `aboi22ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_func i0saboi22ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aboi22ad_func i0saboi22ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
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


module i0sand002ad1n01x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input AND o = (a*b)
// 
// 
// assign `and002ad_delay o =  a&b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and002ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `and002ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n01x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n01x1_inst(.a(a),.b(b),.o(o));
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


module i0sand002ad1n02x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input AND o = (a*b)
// 
// 
// assign `and002ad_delay o =  a&b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and002ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `and002ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n02x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and002ad_func i0sand002ad1n02x1_inst(.a(a),.b(b),.o(o));
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


module i0sand003ad1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input AND o = (a*b*c)
// 
// 
// assign `and003ad_delay o =  a&b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and003ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `and003ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0sand003ad1n02x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input AND o = (a*b*c)
// 
// 
// assign `and003ad_delay o =  a&b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `and003ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `and003ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n02x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_and003ad_func i0sand003ad1n02x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0sao0012ad1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND2-OR2 with o = (a+(b*c))
// 
// 
// assign `ao0012ad_delay o =  a | b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0012ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `ao0012ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0sao0012ad1n02x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND2-OR2 with o = (a+(b*c))
// 
// 
// assign `ao0012ad_delay o =  a | b&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0012ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `ao0012ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n02x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0012ad_func i0sao0012ad1n02x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0sao0022ad1n01x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input Two AND2-OR2 o = ((c*d)+(a*b))
// 
// 
// assign `ao0022ad_delay o =  a&b | c&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0022ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `ao0022ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
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


module i0sao0022ad1n02x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input Two AND2-OR2 o = ((c*d)+(a*b))
// 
// 
// assign `ao0022ad_delay o =  a&b | c&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `ao0022ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `ao0022ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_ao0022ad_func i0sao0022ad1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
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


module i0saoai13ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AOI o1 = !(a(b+cd))
// 
// 
// assign `aoai13ad_delay o1 =  ~a | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_func i0saoai13ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoai13ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_func i0saoai13ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoai13ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_func i0saoai13ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoai13ad_func i0saoai13ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0saob012ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ad_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0saob012ad1n01x2( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ad_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aob012ad_func i0saob012ad1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0saobi12ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI with inverted input:a out0 = !((!a)+(b*c))
// 
// 
// assign `aobi12ad_delay out0 =  a&~b | a&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_func i0saobi12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aobi12ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_func i0saobi12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aobi12ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_func i0saobi12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aobi12ad_func i0saobi12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0saoi012ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012ad_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_func i0saoi012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_func i0saoi012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_func i0saoi012ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi012ad_func i0saoi012ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0saoi013ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AND3-OR2-INVERT o1 = !(a+(b*c*d))
// 
// 
// assign `aoi013ad_delay o1 =  ~a&~b | ~a&~c | ~a&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_func i0saoi013ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi013ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_func i0saoi013ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi013ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_func i0saoi013ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi013ad_func i0saoi013ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0saoi022ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022ad_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_func i0saoi022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_func i0saoi022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_func i0saoi022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi022ad_func i0saoi022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0saoi112ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input AND2-OR3-INVERT o1 = !{a+b+(c*d)}
// 
// 
// assign `aoi112ad_delay o1 =  ~a&~b&~c | ~a&~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_func i0saoi112ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi112ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_func i0saoi112ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi112ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_func i0saoi112ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi112ad_func i0saoi112ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0saoi122ad1n01x1( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 5-input Two AND2-OR3-INVERT o1 = !(a+ (b*c)+(d*e))
// 
// 
// assign `aoi122ad_delay o1 =  ~a&~b&~d | ~a&~b&~e | ~a&~c&~d | ~a&~c&~e;
// 

   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_func i0saoi122ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi122ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_func i0saoi122ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp));
      assign `aoi122ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_func i0saoi122ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi122ad_func i0saoi122ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1));
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


module i0saoi222ad1n01x1( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6-input Three AND2-OR3-INVERT o1 = !((a*b)+(c*d)+(e*f))
// 
// 
// assign `aoi222ad_delay o1 =  ~a&~c&~e | ~a&~c&~f | ~a&~d&~e | ~a&~d&~f | ~b&~c&~e | ~b&~c&~f | ~b&~d&~e | ~b&~d&~f;
// 

   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_func i0saoi222ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi222ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_func i0saoi222ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp));
      assign `aoi222ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_func i0saoi222ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoi222ad_func i0saoi222ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1));
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


module i0saoib12ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex AOI21 gate with 1 inverted input
// 
// 
// assign `aoib12ad_delay out0 =  ~a&~b | ~a&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_func i0saoib12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoib12ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_func i0saoib12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aoib12ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_func i0saoib12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_aoib12ad_func i0saoib12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0sbfm201ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage min delay buffer output o = !(!a)
// 
// 
// buf `bfm201ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm201ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm201ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm201ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage min delay buffer output o = !(!a)
// 
// 
// buf `bfm201ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm201ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm201ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm201ad_func i0sbfm201ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfm202ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm202ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm202ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm202ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm202ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm202ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm202ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm202ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm202ad_func i0sbfm202ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfm402ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm402ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm402ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm402ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm402ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 2 stacked stage
// 
// 
// buf `bfm402ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm402ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm402ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm402ad_func i0sbfm402ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfm403ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 3 stacked stage
// 
// 
// buf `bfm403ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm403ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm403ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm403ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage min-delay buffer with 3 stacked stage
// 
// 
// buf `bfm403ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm403ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm403ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm403ad_func i0sbfm403ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfm604ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min high delay buffer o = !(!a)
// 
// 
// buf `bfm604ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm604ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm604ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm604ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min high delay buffer o = !(!a)
// 
// 
// buf `bfm604ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm604ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm604ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm604ad_func i0sbfm604ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfm605ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min-delay buffer with 5 stacked stage
// 
// 
// buf `bfm605ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm605ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm605ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm605ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage min-delay buffer with 5 stacked stage
// 
// 
// buf `bfm605ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm605ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm605ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm605ad_func i0sbfm605ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfm807ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8 stage min-delay buffer with 7 stacked stage
// 
// 
// buf `bfm807ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm807ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm807ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfm807ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 8 stage min-delay buffer with 7 stacked stage
// 
// 
// buf `bfm807ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfm807ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfm807ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfm807ad_func i0sbfm807ad1n02x1_inst(.a(a),.o(o));
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


module i0sbfn000ad1n01x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n01x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n01x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n01x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n01x1_inst(.a(a),.o(o));
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


module i0sbfn000ad1n02x1( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000ad_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n02x1_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n02x1_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n02x1_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_bfn000ad_func i0sbfn000ad1n02x1_inst(.a(a),.o(o));
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


module i0sinv000ad1n01x1( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000ad_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_func i0sinv000ad1n01x1_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_func i0sinv000ad1n01x1_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_func i0sinv000ad1n01x1_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_inv000ad_func i0sinv000ad1n01x1_inst(.a(a),.o1(o1));
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


module i0smbc004ad1n01x1( a, b, c, d, o, sa, sb, sc, sd `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_func i0smbc004ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
      assign `mbc004ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_func i0smbc004ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
      assign `mbc004ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_func i0smbc004ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.sc(sc),.sd(sd),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbc004ad_func i0smbc004ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.sc(sc),.sd(sd));
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


module i0smbn022ad1n01x1( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 mux o = (a*sa)+(b*!sa)
// 
// 
// assign `mbn022ad_delay o =  sa ? a : b;
// 

   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mbn022ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa));
      assign `mbn022ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n01x1_inst(.a(a),.b(b),.o(o),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n01x1_inst(.a(a),.b(b),.o(o),.sa(sa));
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


module i0smbn022ad1n02x1( a, b, o, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 mux o = (a*sa)+(b*!sa)
// 
// 
// assign `mbn022ad_delay o =  sa ? a : b;
// 

   input a, b, sa;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mbn022ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.sa(sa));
      assign `mbn022ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n02x1_inst(.a(a),.b(b),.o(o),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn022ad_func i0smbn022ad1n02x1_inst(.a(a),.b(b),.o(o),.sa(sa));
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


module i0smbn024ad1n01x1( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded mux INV-PG-INV
// 
// 
// assign  int1 =  sa ? b : a;
// assign  int2 =  sa ? d : c;
// assign `mbn024ad_delay o =  sb ? int2 : int1;
// 

   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `mbn024ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb));
      assign `mbn024ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb));
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


module i0smbn024ad1n02x1( a, b, c, d, o, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded mux INV-PG-INV
// 
// 
// assign  int1 =  sa ? b : a;
// assign  int2 =  sa ? d : c;
// assign `mbn024ad_delay o =  sb ? int2 : int1;
// 

   input a, b, c, d, sa, sb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `mbn024ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.sa(sa),.sb(sb));
      assign `mbn024ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mbn024ad_func i0smbn024ad1n02x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.sa(sa),.sb(sb));
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


module i0smtn022ad1n01x1( a, b, o1, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2:1 inverting MUX (Tri-state implementation) o1 = (!a*sa)+(!b*!sa)
// 
// 
// assign `mtn022ad_delay o1 =  sa ? ~a : ~b;
// 

   input a, b, sa;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_func i0smtn022ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa),.vcc(vcc),.vssx(vssx));
      assign `mtn022ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_func i0smtn022ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.sa(sa));
      assign `mtn022ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_func i0smtn022ad1n01x1_inst(.a(a),.b(b),.o1(o1),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_mtn022ad_func i0smtn022ad1n01x1_inst(.a(a),.b(b),.o1(o1),.sa(sa));
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


module i0snanb02ad1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NAND with bubbled input: a out0 = !{!(a)*b}
// 
// 
// assign `nanb02ad_delay out0 =  a | ~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanb02ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `nanb02ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0snanb02ad1n02x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input NAND with bubbled input: a out0 = !{!(a)*b}
// 
// 
// assign `nanb02ad_delay out0 =  a | ~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanb02ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `nanb02ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n02x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanb02ad_func i0snanb02ad1n02x1_inst(.a(a),.b(b),.out0(out0));
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


module i0snand22ad1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input low skew NAND o1 = !(a*b)
// 
// 
// assign `nand22ad_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_func i0snand22ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nand22ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_func i0snand22ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nand22ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_func i0snand22ad1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand22ad_func i0snand22ad1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snand23ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input low skew NAND P/N=0.4 o1 = !(a*b*c)
// 
// 
// assign `nand23ad_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_func i0snand23ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nand23ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_func i0snand23ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nand23ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_func i0snand23ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nand23ad_func i0snand23ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0snano22ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// NAND2+NOR2 out0 = !(a+!b+!c)
// 
// 
// assign `nano22ad_delay out0 =  ~a&b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_func i0snano22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nano22ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_func i0snano22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `nano22ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_func i0snano22ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano22ad_func i0snano22ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0snano23ad1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// NAND2+NOR3 out0 = !(a+b+!c+!d)
// 
// 
// assign `nano23ad_delay out0 =  ~a&~b&c&d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_func i0snano23ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nano23ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_func i0snano23ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `nano23ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_func i0snano23ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nano23ad_func i0snano23ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
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


module i0snanp02ad1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// packed Z 2-input nand
// 
// 
// assign `nanp02ad_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ad_func i0snanp02ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp02ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ad_func i0snanp02ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nanp02ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ad_func i0snanp02ad1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp02ad_func i0snanp02ad1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snanp03ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand P/N=0.7
// 
// 
// assign `nanp03ad_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ad_func i0snanp03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp03ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ad_func i0snanp03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nanp03ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ad_func i0snanp03ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nanp03ad_func i0snanp03ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0snona22ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand with a bubble at b and c
// 
// 
// assign `nona22ad_delay out0 =  ~a | b | c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_func i0snona22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nona22ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_func i0snona22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `nona22ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_func i0snona22ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona22ad_func i0snona22ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0snona23ad1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4-input nand with a bubble at c and d
// 
// 
// assign `nona23ad_delay out0 =  ~a | ~b | c | d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_func i0snona23ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `nona23ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_func i0snona23ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `nona23ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_func i0snona23ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nona23ad_func i0snona23ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
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


module i0snor042ad1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input high skew NOR o1 = !(a+b)
// 
// 
// assign `nor042ad_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_func i0snor042ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nor042ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_func i0snor042ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nor042ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_func i0snor042ad1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor042ad_func i0snor042ad1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snor043ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input high skew NOR o1 = !(a+b+c)
// 
// 
// assign `nor043ad_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_func i0snor043ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nor043ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_func i0snor043ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nor043ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_func i0snor043ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_nor043ad_func i0snor043ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0snorb02ad1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input nor bubble gate
// 
// 
// assign `norb02ad_delay out0 =  a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `norb02ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `norb02ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0snorb02ad1n02x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input nor bubble gate
// 
// 
// assign `norb02ad_delay out0 =  a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `norb02ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n02x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `norb02ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n02x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb02ad_func i0snorb02ad1n02x1_inst(.a(a),.b(b),.out0(out0));
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


module i0snorb03ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nor with a bubble at a
// 
// 
// assign `norb03ad_delay out0 =  a&~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_func i0snorb03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `norb03ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_func i0snorb03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `norb03ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_func i0snorb03ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norb03ad_func i0snorb03ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0snorp02ad1n01x1( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input NOR packed Z
// 
// 
// assign `norp02ad_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ad_func i0snorp02ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp02ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ad_func i0snorp02ad1n01x1_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `norp02ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ad_func i0snorp02ad1n01x1_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp02ad_func i0snorp02ad1n01x1_inst(.a(a),.b(b),.o1(o1));
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


module i0snorp03ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input NOR packed Z
// 
// 
// assign `norp03ad_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ad_func i0snorp03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp03ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ad_func i0snorp03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `norp03ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ad_func i0snorp03ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_norp03ad_func i0snorp03ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0soa0012ad1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex non-inverting cell OAI21
// 
// 
// assign `oa0012ad_delay o =  a&b | a&c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_func i0soa0012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `oa0012ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_func i0soa0012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `oa0012ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_func i0soa0012ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0012ad_func i0soa0012ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0soa0022ad1n01x1( a, b, c, d, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex non-inverting cell OAI22
// 
// 
// assign `oa0022ad_delay o =  a&c | a&d | b&c | b&d;
// 

   input a, b, c, d;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_func i0soa0022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `oa0022ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_func i0soa0022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o(o_tmp));
      assign `oa0022ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_func i0soa0022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oa0022ad_func i0soa0022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o(o));
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


module i0soab012ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input NOR2-NOR2 out0 = !(a+!(b+c))
// 
// 
// assign `oab012ad_delay out0 =  ~a&b | ~a&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oab012ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oab012ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0soab012ad1n01x2( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input NOR2-NOR2 out0 = !(a+!(b+c))
// 
// 
// assign `oab012ad_delay out0 =  ~a&b | ~a&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oab012ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x2_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oab012ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oab012ad_func i0soab012ad1n01x2_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0soabi12ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input complex gate
// 
// 
// assign `oabi12ad_delay out0 =  a | ~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_func i0soabi12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oabi12ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_func i0soabi12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oabi12ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_func i0soabi12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oabi12ad_func i0soabi12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0soai012ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012ad_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_func i0soai012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_func i0soai012ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_func i0soai012ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai012ad_func i0soai012ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0soai013ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input OR3-AND2-INVERT o1 = !{a*(b+c+d)}
// 
// 
// assign `oai013ad_delay o1 =  ~a | ~b&~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_func i0soai013ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai013ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_func i0soai013ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai013ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_func i0soai013ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai013ad_func i0soai013ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0soai022ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022ad_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_func i0soai022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_func i0soai022ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_func i0soai022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai022ad_func i0soai022ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0soai112ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input OR2-AND3-INVERT o1 = !{b*a*(d+c)}
// 
// 
// assign `oai112ad_delay o1 =  ~a | ~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_func i0soai112ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai112ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_func i0soai112ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai112ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_func i0soai112ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai112ad_func i0soai112ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0soai122ad1n01x1( a, b, c, d, e, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex inverting cell OAI122
// 
// 
// assign `oai122ad_delay o1 =  ~a | ~b&~c | ~d&~e;
// 

   input a, b, c, d, e;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_func i0soai122ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai122ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_func i0soai122ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1_tmp));
      assign `oai122ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_func i0soai122ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai122ad_func i0soai122ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.o1(o1));
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


module i0soai222ad1n01x1( a, b, c, d, e, f, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 input Three OR2-AND3-INVERT o1 = !{(e+f)*(c+d)*(a+b)}
// 
// 
// assign `oai222ad_delay o1 =  ~a&~b | ~c&~d | ~e&~f;
// 

   input a, b, c, d, e, f;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_func i0soai222ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai222ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_func i0soai222ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1_tmp));
      assign `oai222ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_func i0soai222ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oai222ad_func i0soai222ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.o1(o1));
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


module i0soaib12ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex cell one bubbled version of cell OAI21
// 
// 
// assign `oaib12ad_delay out0 =  ~a | ~b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_func i0soaib12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaib12ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_func i0soaib12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `oaib12ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_func i0soaib12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaib12ad_func i0soaib12ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0soaih12ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high skew complex inverting cell OAI21
// 
// 
// assign `oaih12ad_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ad_func i0soaih12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaih12ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ad_func i0soaih12ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oaih12ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ad_func i0soaih12ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih12ad_func i0soaih12ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0soaih22ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high skew complex inverting cell OAIH22
// 
// 
// assign `oaih22ad_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ad_func i0soaih22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaih22ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ad_func i0soaih22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oaih22ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ad_func i0soaih22ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaih22ad_func i0soaih22ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0soao003ad1n01x1( a, b, c, carry `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input majority gate
// 
// 
// assign `oao003ad_delay carry =  a&b | a&c | b&c;
// 

   input a, b, c;
   output carry;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_func i0soao003ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.vcc(vcc),.vssx(vssx));
      assign `oao003ad_delay carry = carry_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_func i0soao003ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp));
      assign `oao003ad_delay carry = carry_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_func i0soao003ad1n01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oao003ad_func i0soao003ad1n01x1_inst(.a(a),.b(b),.c(c),.carry(carry));
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


module i0soaoi03ad1n01x1( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// complex inverting cell OAOI03
// 
// 
// assign `oaoi03ad_delay o1 =  ~a&~b | ~a&~c | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_func i0soaoi03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaoi03ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_func i0soaoi03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oaoi03ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_func i0soaoi03ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi03ad_func i0soaoi03ad1n01x1_inst(.a(a),.b(b),.c(c),.o1(o1));
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


module i0soaoi13ad1n01x1( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !a*!b+!a*!c*!d
// 
// 
// assign `oaoi13ad_delay o1 =  ~a&~b | ~a&~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_func i0soaoi13ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oaoi13ad_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_func i0soaoi13ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oaoi13ad_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_func i0soaoi13ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_oaoi13ad_func i0soaoi13ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
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


module i0sobai22ad1n01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT with inverted input: a out0 =  (!d*!c)+(a*!b))
// 
// 
// assign `obai22ad_delay out0 =  a&~b | ~c&~d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_func i0sobai22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `obai22ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_func i0sobai22ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `obai22ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_func i0sobai22ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_obai22ad_func i0sobai22ad1n01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
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


module i0sorn002ad1n01x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input OR o = (a+b)
// 
// 
// assign `orn002ad_delay o =  a | b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn002ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n01x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `orn002ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n01x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n01x1_inst(.a(a),.b(b),.o(o));
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


module i0sorn002ad1n02x1( a, b, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 input OR o = (a+b)
// 
// 
// assign `orn002ad_delay o =  a | b;
// 

   input a, b;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn002ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n02x1_behav_inst(.a(a),.b(b),.o(o_tmp));
      assign `orn002ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n02x1_inst(.a(a),.b(b),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn002ad_func i0sorn002ad1n02x1_inst(.a(a),.b(b),.o(o));
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


module i0sorn003ad1n01x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR o = (a+b+c)
// 
// 
// assign `orn003ad_delay o =  a | b | c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn003ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `orn003ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n01x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0sorn003ad1n02x1( a, b, c, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR o = (a+b+c)
// 
// 
// assign `orn003ad_delay o =  a | b | c;
// 

   input a, b, c;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `orn003ad_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n02x1_behav_inst(.a(a),.b(b),.c(c),.o(o_tmp));
      assign `orn003ad_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n02x1_inst(.a(a),.b(b),.c(c),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_orn003ad_func i0sorn003ad1n02x1_inst(.a(a),.b(b),.c(c),.o(o));
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


module i0src0022ad1n01x1( a, b, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Half Adder w/o BPG
// 
// 
// assign `rc0022ad_delay carry =  a&b;
// assign `rc0022ad_delay sum =  a&~b | ~a&b;
// 

   input a, b;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_func i0src0022ad1n01x1_behav_inst(.a(a),.b(b),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rc0022ad_delay carry = carry_tmp ;
      assign `rc0022ad_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_func i0src0022ad1n01x1_behav_inst(.a(a),.b(b),.carry(carry_tmp),.sum(sum_tmp));
      assign `rc0022ad_delay carry = carry_tmp ;
      assign `rc0022ad_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_func i0src0022ad1n01x1_inst(.a(a),.b(b),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rc0022ad_func i0src0022ad1n01x1_inst(.a(a),.b(b),.carry(carry),.sum(sum));
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


module i0srm0023ad1d01x1( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 1 bit full mirror adder carry = ((c*b)+(c*a)+(b*a)); sum = (!a*!b*c+!a*b*!c+a*!b*!c+a*b*c)
// 
// 
// assign `rm0023ad_delay carry =  a&b | a&c | b&c;
// assign `rm0023ad_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0023ad_delay carry = carry_tmp ;
      assign `rm0023ad_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `rm0023ad_delay carry = carry_tmp ;
      assign `rm0023ad_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
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


module i0srm0023ad1d02x1( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 1 bit full mirror adder carry = ((c*b)+(c*a)+(b*a)); sum = (!a*!b*c+!a*b*!c+a*!b*!c+a*b*c)
// 
// 
// assign `rm0023ad_delay carry =  a&b | a&c | b&c;
// assign `rm0023ad_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0023ad_delay carry = carry_tmp ;
      assign `rm0023ad_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `rm0023ad_delay carry = carry_tmp ;
      assign `rm0023ad_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x1_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
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


module i0srm0023ad1d02x2( a, b, c, carry, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 1 bit full mirror adder carry = ((c*b)+(c*a)+(b*a)); sum = (!a*!b*c+!a*b*!c+a*!b*!c+a*b*c)
// 
// 
// assign `rm0023ad_delay carry =  a&b | a&c | b&c;
// assign `rm0023ad_delay sum =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output carry, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0023ad_delay carry = carry_tmp ;
      assign `rm0023ad_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.sum(sum_tmp));
      assign `rm0023ad_delay carry = carry_tmp ;
      assign `rm0023ad_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x2_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0023ad_func i0srm0023ad1d02x2_inst(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));
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


module i0srm0042ad1d01x1( a, b, c, carry, carryin, carryout, d, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:2 compressor with 2 mirror adder 
// 
// 
// assign `rm0042ad_delay carry =  a&b&c&carryin | a&b&c&d | a&b&~c&carryin | a&b&~c&~d | a&~b&c&carryin | a&~b&c&~d | a&~b&~c&carryin | a&~b&~c&d | a&carryin | b&c&carryin&d | b&~c&carryin&~d | ~b&c&carryin&~d | ~b&~c&carryin&d;
// assign `rm0042ad_delay carryout =  b&c | b&d | c&d;
// assign `rm0042ad_delay sum =  a&b&c&carryin&d | a&b&c&~carryin&~d | a&b&~c&carryin&~d | a&b&~c&~carryin&d | a&~b&c&carryin&~d | a&~b&c&~carryin&d | a&~b&~c&carryin&d | a&~b&~c&~carryin&~d | ~a&b&c&carryin&~d | ~a&b&c&~carryin&d | ~a&b&~c&carryin&d | ~a&b&~c&~carryin&~d | ~a&~b&c&carryin&d | ~a&~b&c&~carryin&~d | ~a&~b&~c&carryin&~d | ~a&~b&~c&~carryin&d;
// 

   input a, b, c, carryin, d;
   output carry, carryout, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0042ad_delay carry = carry_tmp ;
      assign `rm0042ad_delay carryout = carryout_tmp ;
      assign `rm0042ad_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x1_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp));
      assign `rm0042ad_delay carry = carry_tmp ;
      assign `rm0042ad_delay carryout = carryout_tmp ;
      assign `rm0042ad_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x1_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum));
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


module i0srm0042ad1d01x2( a, b, c, carry, carryin, carryout, d, sum `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:2 compressor with 2 mirror adder 
// 
// 
// assign `rm0042ad_delay carry =  a&b&c&carryin | a&b&c&d | a&b&~c&carryin | a&b&~c&~d | a&~b&c&carryin | a&~b&c&~d | a&~b&~c&carryin | a&~b&~c&d | a&carryin | b&c&carryin&d | b&~c&carryin&~d | ~b&c&carryin&~d | ~b&~c&carryin&d;
// assign `rm0042ad_delay carryout =  b&c | b&d | c&d;
// assign `rm0042ad_delay sum =  a&b&c&carryin&d | a&b&c&~carryin&~d | a&b&~c&carryin&~d | a&b&~c&~carryin&d | a&~b&c&carryin&~d | a&~b&c&~carryin&d | a&~b&~c&carryin&d | a&~b&~c&~carryin&~d | ~a&b&c&carryin&~d | ~a&b&c&~carryin&d | ~a&b&~c&carryin&d | ~a&b&~c&~carryin&~d | ~a&~b&c&carryin&d | ~a&~b&c&~carryin&~d | ~a&~b&~c&carryin&~d | ~a&~b&~c&~carryin&d;
// 

   input a, b, c, carryin, d;
   output carry, carryout, sum;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp),.vcc(vcc),.vssx(vssx));
      assign `rm0042ad_delay carry = carry_tmp ;
      assign `rm0042ad_delay carryout = carryout_tmp ;
      assign `rm0042ad_delay sum = sum_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x2_behav_inst(.a(a),.b(b),.c(c),.carry(carry_tmp),.carryin(carryin),.carryout(carryout_tmp),.d(d),.sum(sum_tmp));
      assign `rm0042ad_delay carry = carry_tmp ;
      assign `rm0042ad_delay carryout = carryout_tmp ;
      assign `rm0042ad_delay sum = sum_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x2_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_rm0042ad_func i0srm0042ad1d01x2_inst(.a(a),.b(b),.c(c),.carry(carry),.carryin(carryin),.carryout(carryout),.d(d),.sum(sum));
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


module i0sxnrb03ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XNOR3 (no BPG)
// 
// 
// assign `xnrb03ad_delay out0 =  a&b&~c | a&~b&c | ~a&b&c | ~a&~b&~c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_func i0sxnrb03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnrb03ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_func i0sxnrb03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xnrb03ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_func i0sxnrb03ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrb03ad_func i0sxnrb03ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0sxnrc02ad1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XNOR2 (no BPG)
// 
// 
// assign `xnrc02ad_delay out0 =  a&b | ~a&~b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_func i0sxnrc02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xnrc02ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_func i0sxnrc02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xnrc02ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_func i0sxnrc02ad1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xnrc02ad_func i0sxnrc02ad1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0sxorb03ad1n01x1( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XOR3 (no BPG)
// 
// 
// assign `xorb03ad_delay out0 =  a&b&c | a&~b&~c | ~a&b&~c | ~a&~b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ad_func i0sxorb03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xorb03ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ad_func i0sxorb03ad1n01x1_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `xorb03ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ad_func i0sxorb03ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorb03ad_func i0sxorb03ad1n01x1_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0sxorc02ad1n01x1( a, b, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// XOR2 (no BPG)
// 
// 
// assign `xorc02ad_delay out0 =  a&~b | ~a&b;
// 

   input a, b;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ad_func i0sxorc02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xorc02ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ad_func i0sxorc02ad1n01x1_behav_inst(.a(a),.b(b),.out0(out0_tmp));
      assign `xorc02ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ad_func i0sxorc02ad1n01x1_inst(.a(a),.b(b),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xorc02ad_func i0sxorc02ad1n01x1_inst(.a(a),.b(b),.out0(out0));
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


module i0sxroi22ad1d01x1( a, b, c, d, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 Comparator
// 
// 
// assign `xroi22ad_delay out0 =  a&b&c&d | a&b&~c&~d | ~a&~b&c&d | ~a&~b&~c&~d;
// 

   input a, b, c, d;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_func i0sxroi22ad1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `xroi22ad_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_func i0sxroi22ad1d01x1_behav_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0_tmp));
      assign `xroi22ad_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_func i0sxroi22ad1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrbase_xroi22ad_func i0sxroi22ad1d01x1_inst(.a(a),.b(b),.c(c),.d(d),.out0(out0));
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




