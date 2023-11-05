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
     `ifndef csbbd0aa_delay
        `define csbbd0aa_delay `clkcell_delay_value
     `endif
     `ifndef csbbd0ba_delay
        `define csbbd0ba_delay `clkcell_delay_value
     `endif
     `ifndef sgb0d0aa_delay
        `define sgb0d0aa_delay `cell_delay_value
     `endif
     `ifndef sgb0d0ba_delay
        `define sgb0d0ba_delay `cell_delay_value
     `endif
     `ifndef sgb0d1aa_delay
        `define sgb0d1aa_delay `cell_delay_value
     `endif
     `ifndef sgb0d1ba_delay
        `define sgb0d1ba_delay `cell_delay_value
     `endif
     `ifndef sgb0s0aa_delay
        `define sgb0s0aa_delay `cell_delay_value
     `endif
     `ifndef sgb0s0ba_delay
        `define sgb0s0ba_delay `cell_delay_value
     `endif
     `ifndef sgc0ndaa_delay
        `define sgc0ndaa_delay `cell_delay_value
     `endif
     `ifndef sgc0ndba_delay
        `define sgc0ndba_delay `cell_delay_value
     `endif
     `ifndef sl02ndaa_delay
        `define sl02ndaa_delay `seq_delay_value
     `endif
     `ifndef sl02ndba_delay
        `define sl02ndba_delay `seq_delay_value
     `endif
  `endif

primitive INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_0( clkout, clk, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output clkout;
  input clk, force0;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, force0, vcc_in, vcc_out, vssx: clkout
    1  0  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  ?  1  1  0: 0; //normal mode, vcc_in needs to be '1
    ?  1  ?  1  0: 0; //force0 is on, output is '0 even though vcc_in is 'x
  `else
  //clk, force0: clkout
    1  0: 1;
    0  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_func( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_0 inst0( clkout, clk, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_0 inst0( clkout, clk, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_0( clkout, clk, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output clkout;
  input clk, force0;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, force0, vcc_in, vcc_out, vssx: clkout
    1  0  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  ?  1  1  0: 0; //normal mode, vcc_in needs to be '1
    ?  1  ?  1  0: 0; //force0 is on, output is '0 even though vcc_in is 'x
  `else
  //clk, force0: clkout
    1  0: 1;
    0  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_func( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_0 inst0( clkout, clk, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_0 inst0( clkout, clk, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_0( o, a, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a, force0;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, force0, vcc_in, vcc_out, vssx: o
    1  0  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  ?  1  1  0: 0; //normal mode
    ?  1  ?  1  0: 0; //force is ON, irrelevant of vcc_in
  `else
  //a, force0: o
    1  0: 1;
    0  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_0 inst0( o, a, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_0 inst0( o, a, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_0( o, a, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a, force0;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, force0, vcc_in, vcc_out, vssx: o
    1  0  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  ?  1  1  0: 0; //normal mode
    ?  1  ?  1  0: 0; //force is ON, irrelevant of vcc_in
  `else
  //a, force0: o
    1  0: 1;
    0  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_0 inst0( o, a, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_0 inst0( o, a, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_0( o, a, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a, force1b;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, force1b, vcc_in, vcc_out, vssx: o
    ?  0  ?  1  0: 1; //force is ON, irrelevant of vcc_in
    1  ?  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  1  1  1  0: 0; //normal mode
  `else
  //a, force1b: o
    ?  0: 1;
    1  ?: 1;
    0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_0 inst0( o, a, force1b, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_0 inst0( o, a, force1b );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_0( o, a, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a, force1b;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, force1b, vcc_in, vcc_out, vssx: o
    ?  0  ?  1  0: 1; //force is ON, irrelevant of vcc_in
    1  ?  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  1  1  1  0: 0; //normal mode
  `else
  //a, force1b: o
    ?  0: 1;
    1  ?: 1;
    0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_0 inst0( o, a, force1b, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_0 inst0( o, a, force1b );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_0( o, a `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in, vcc_out, vssx: o
    1  1  1  0: 1; //vcc_in needs to be '1
    0  1  1  0: 0; //normal mode
    ?  0  1  0: 0; //self-det mode holds 0 when vcc_in=0
  `else
  //a: o
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_func( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_0 inst0( o, a, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_0 inst0( o, a );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_0( o, a `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in, vcc_out, vssx: o
    1  1  1  0: 1; //vcc_in needs to be '1
    0  1  1  0: 0; //normal mode
    ?  0  1  0: 0; //self-det mode holds 0 when vcc_in=0
  `else
  //a: o
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_func( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_0 inst0( o, a, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_0 inst0( o, a );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_0( o, a `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input  vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in vcc_out, vssx: o
    1  1  1  0: 1;
    0  1  1  0: 0;
  `else
  //a: o
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_0 inst1( o, a, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_0 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_0( o, a `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_out, vssx: o
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


module INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_0 inst1( o, a, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_0 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_0( MGM_EN0, enb `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
  output MGM_EN0;
  input enb;
  `ifdef POWER_AWARE_MODE
  input vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //enb vcc_out, vssx: MGM_EN0
    0  1  0: 1;
    1  1  0: 0;
  `else
  //enb: MGM_EN0
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_1( MGM_D0, a `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
  output MGM_D0;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in, vssx: MGM_D0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //a: MGM_D0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif , N );
   output Q;
   reg Q;
   input C, P, CK, D, N; 
   `ifdef POWER_AWARE_MODE
   input vcc_out, vssx;
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


module INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_func( a, enb, o, notifier `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a, enb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_0 inst1( MGM_EN0, enb, vcc_out, vssx );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_1 inst2( MGM_D0, a, vcc_in, vssx );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc_out, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_1 inst4( o, IQ, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_0 inst1( MGM_EN0, enb );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_1 inst2( MGM_D0, a );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_1 inst4( o, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_0( MGM_EN0, enb `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
  output MGM_EN0;
  input enb;
  `ifdef POWER_AWARE_MODE
  input vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //enb vcc_out, vssx: MGM_EN0
    0  1  0: 1;
    1  1  0: 0;
  `else
  //enb: MGM_EN0
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_1( MGM_D0, a `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
  output MGM_D0;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in, vssx: MGM_D0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //a: MGM_D0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif , N );
   output Q;
   reg Q;
   input C, P, CK, D, N; 
   `ifdef POWER_AWARE_MODE
   input vcc_out, vssx;
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


module INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_func( a, enb, o, notifier `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a, enb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_0 inst1( MGM_EN0, enb, vcc_out, vssx );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_1 inst2( MGM_D0, a, vcc_in, vssx );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc_out, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_1 inst4( o, IQ, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_0 inst1( MGM_EN0, enb );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_1 inst2( MGM_D0, a );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_1 inst4( o, IQ );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scsbbd0aa1d18x5( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//Deterministic 0 Clock LS

   input clk, force0;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_func i0scsbbd0aa1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbbd0aa_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_func i0scsbbd0aa1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0));
      assign `csbbd0aa_delay clkout = clkout_tmp ;
   `endif
   
`else
   reg notifier;

   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_func i0scsbbd0aa1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0aa_func i0scsbbd0aa1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0));
   `endif

   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force0==1'b0)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(force0==1'b0)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b1)
   // comb arc posedge force0 --> clkout
    (posedge force0 => (clkout:force0)) = (0.0,0.0);

   if(clk==1'b1)
   // comb arc negedge force0 --> clkout
    (negedge force0 => (clkout:force0)) = (0.0,0.0);

   ifnone
   // comb arc posedge force0 --> clkout
    (posedge force0 => (clkout:force0)) = (0.0,0.0);

   ifnone
   // comb arc negedge force0 --> clkout
    (negedge force0 => (clkout:force0)) = (0.0,0.0);

   // nochange force0-LH clk-LH
   $nochange(posedge clk,posedge force0,0.0,0.0, notifier);

   // nochange force0-HL clk-LH
   $nochange(posedge clk,negedge force0,0.0,0.0, notifier);

   endspecify
   
`endif 

endmodule
`endcelldefine 




`celldefine 


module i0scsbbd0ba1d18x5( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//Deterministic 0 Clock LS

   input clk, force0;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_func i0scsbbd0ba1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbbd0ba_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_func i0scsbbd0ba1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0));
      assign `csbbd0ba_delay clkout = clkout_tmp ;
   `endif
   
`else
   reg notifier;

   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_func i0scsbbd0ba1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_csbbd0ba_func i0scsbbd0ba1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0));
   `endif

   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force0==1'b0)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(force0==1'b0)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b1)
   // comb arc posedge force0 --> clkout
    (posedge force0 => (clkout:force0)) = (0.0,0.0);

   if(clk==1'b1)
   // comb arc negedge force0 --> clkout
    (negedge force0 => (clkout:force0)) = (0.0,0.0);

   ifnone
   // comb arc posedge force0 --> clkout
    (posedge force0 => (clkout:force0)) = (0.0,0.0);

   ifnone
   // comb arc negedge force0 --> clkout
    (negedge force0 => (clkout:force0)) = (0.0,0.0);

   // nochange force0-LH clk-LH
   $nochange(posedge clk,posedge force0,0.0,0.0, notifier);

   // nochange force0-HL clk-LH
   $nochange(posedge clk,negedge force0,0.0,0.0, notifier);

   endspecify
   
`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d0aa1d06x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 0 levelshifter

   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d0aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgb0d0aa_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d06x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d06x5_inst(.a(a),.force0(force0),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force0==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force0==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d0aa1d12x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 0 levelshifter

   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d0aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgb0d0aa_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d12x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0aa_func i0ssgb0d0aa1d12x5_inst(.a(a),.force0(force0),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force0==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force0==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d0ba1d06x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 0 levelshifter

   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d0ba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgb0d0ba_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d06x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d06x5_inst(.a(a),.force0(force0),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force0==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force0==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d0ba1d12x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 0 levelshifter

   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d0ba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgb0d0ba_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d12x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d0ba_func i0ssgb0d0ba1d12x5_inst(.a(a),.force0(force0),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force0==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force0==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   if(a==1'b1)
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc posedge force0 --> o
    (posedge force0 => (o:force0)) = (0.0,0.0);

   ifnone
   // comb arc negedge force0 --> o
    (negedge force0 => (o:force0)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d1aa1d06x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d1aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgb0d1aa_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d06x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d06x5_inst(.a(a),.force1b(force1b),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d1aa1d12x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d1aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgb0d1aa_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d12x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1aa_func i0ssgb0d1aa1d12x5_inst(.a(a),.force1b(force1b),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d1ba1d06x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d1ba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgb0d1ba_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d06x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d06x5_inst(.a(a),.force1b(force1b),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0d1ba1d12x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0d1ba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgb0d1ba_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d12x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0d1ba_func i0ssgb0d1ba1d12x5_inst(.a(a),.force1b(force1b),.o(o));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   if(a==1'b0)
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> o
    (posedge force1b => (o:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> o
    (negedge force1b => (o:force1b)) = (0.0,0.0);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0ssgb0s0aa1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//self-deterministic levelshifter

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_func i0ssgb0s0aa1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0s0aa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_func i0ssgb0s0aa1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgb0s0aa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_func i0ssgb0s0aa1d12x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0aa_func i0ssgb0s0aa1d12x5_inst(.a(a),.o(o));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   endspecify
`endif 
endmodule
`endcelldefine 




`celldefine 


module i0ssgb0s0ba1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//self-deterministic levelshifter

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_func i0ssgb0s0ba1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgb0s0ba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_func i0ssgb0s0ba1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgb0s0ba_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_func i0ssgb0s0ba1d12x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgb0s0ba_func i0ssgb0s0ba1d12x5_inst(.a(a),.o(o));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   endspecify
`endif 
endmodule
`endcelldefine 




`celldefine 


module i0ssgc0ndaa1d06x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic data level shifter that shifts from vcc_in -> vcc_out center rail: vcc_in out0 = (in) with dummy removal for speed improvement
// 
// 
// buf  (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d06x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgc0ndaa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d06x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgc0ndaa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d06x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d06x5_inst(.a(a),.o(o));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0ssgc0ndaa1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic data level shifter that shifts from vcc_in -> vcc_out center rail: vcc_in out0 = (in) with dummy removal for speed improvement
// 
// 
// buf  (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgc0ndaa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgc0ndaa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d12x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndaa_func i0ssgc0ndaa1d12x5_inst(.a(a),.o(o));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0ssgc0ndba1d06x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic data level shifter that shifts from vcc_in -> vcc_out center rail: vcc_in out0 = (in) with dummy removal for speed improvement
// 
// 
// buf `sgc0ndba_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d06x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgc0ndba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d06x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgc0ndba_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d06x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d06x5_inst(.a(a),.o(o));
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


module i0ssgc0ndba1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic data level shifter that shifts from vcc_in -> vcc_out center rail: vcc_in out0 = (in) with dummy removal for speed improvement
// 
// 
// buf `sgc0ndba_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgc0ndba_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgc0ndba_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d12x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sgc0ndba_func i0ssgc0ndba1d12x5_inst(.a(a),.o(o));
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


module i0ssl02ndaa1d03x5( a, enb, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// non deterministic levelshifter
// 
// 
// always @ (a or enb)
// begin
// if (!enb)
// begin
// IQ <= a;
// end
// end
// 
// assign o =  IQ;
// 

   input a, enb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
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
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_func i0ssl02ndaa1d03x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sl02ndaa_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_func i0ssl02ndaa1d03x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0));
      assign `sl02ndaa_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_func i0ssl02ndaa1d03x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndaa_func i0ssl02ndaa1d03x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(ENABLE_NOT_a,a);
   buf MGM_G1(ENABLE_a,a);
   // spec_gates_end
  specify
   if(enb==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(enb==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b1)
   // seq arc enb --> o
   (negedge enb => (o : a))  = (0.0,0.0);

   ifnone
   // seq arc enb --> o
   (negedge enb => (o : a))  = (0.0,0.0);

   if(a==1'b0)
   // seq arc enb --> o
   (negedge enb => (o : a))  = (0.0,0.0);

   $width(negedge enb &&& (ENABLE_NOT_a == 1'b1)
		,0.0,0,notifier);

   $width(negedge enb &&& (ENABLE_a == 1'b1)
		,0.0,0,notifier);

   $width(negedge enb,0.0,0,notifier);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0ssl02ndba1d03x5( a, enb, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// non deterministic levelshifter
// 
// 
// always @ (a or enb)
// begin
// if (!enb)
// begin
// IQ <= a;
// end
// end
// 
// assign o =  IQ;
// 

   input a, enb;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
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
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_func i0ssl02ndba1d03x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sl02ndba_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_func i0ssl02ndba1d03x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0));
      assign `sl02ndba_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_func i0ssl02ndba1d03x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsilvl_sl02ndba_func i0ssl02ndba1d03x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(ENABLE_NOT_a,a);
   buf MGM_G1(ENABLE_a,a);
   // spec_gates_end
  specify
   if(enb==1'b0)
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   if(enb==1'b0)
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc negedge a --> o
    (negedge a => (o:a)) = (0.0,0.0);

   ifnone
   // comb arc posedge a --> o
    (posedge a => (o:a)) = (0.0,0.0);

   if(a==1'b1)
   // seq arc enb --> o
   (negedge enb => (o : a))  = (0.0,0.0);

   ifnone
   // seq arc enb --> o
   (negedge enb => (o : a))  = (0.0,0.0);

   if(a==1'b0)
   // seq arc enb --> o
   (negedge enb => (o : a))  = (0.0,0.0);

   $width(negedge enb &&& (ENABLE_NOT_a == 1'b1)
		,0.0,0,notifier);

   $width(negedge enb &&& (ENABLE_a == 1'b1)
		,0.0,0,notifier);

   $width(negedge enb,0.0,0,notifier);

  endspecify
`endif
endmodule
`endcelldefine 




