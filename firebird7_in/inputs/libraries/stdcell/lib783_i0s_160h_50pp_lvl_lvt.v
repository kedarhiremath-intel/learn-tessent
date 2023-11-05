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
     `ifndef csbtd0ab_delay
        `define csbtd0ab_delay `clkcell_delay_value
     `endif
     `ifndef csbtd0bb_delay
        `define csbtd0bb_delay `clkcell_delay_value
     `endif
     `ifndef csbtd1ab_delay
        `define csbtd1ab_delay `clkcell_delay_value
     `endif
     `ifndef csbtd1bb_delay
        `define csbtd1bb_delay `clkcell_delay_value
     `endif
     `ifndef csbtl2ab_delay
        `define csbtl2ab_delay `clkseq_delay_value
     `endif
     `ifndef csbtl2bb_delay
        `define csbtl2bb_delay `clkseq_delay_value
     `endif
     `ifndef csbtndab_delay
        `define csbtndab_delay `clkcell_delay_value
     `endif
     `ifndef csbtndbb_delay
        `define csbtndbb_delay `clkcell_delay_value
     `endif
     `ifndef sgt0d0ab_delay
        `define sgt0d0ab_delay `cell_delay_value
     `endif
     `ifndef sgt0d0bb_delay
        `define sgt0d0bb_delay `cell_delay_value
     `endif
     `ifndef sgt0d1ab_delay
        `define sgt0d1ab_delay `cell_delay_value
     `endif
     `ifndef sgt0d1bb_delay
        `define sgt0d1bb_delay `cell_delay_value
     `endif
     `ifndef sgt0ndab_delay
        `define sgt0ndab_delay `cell_delay_value
     `endif
     `ifndef sgt0ndbb_delay
        `define sgt0ndbb_delay `cell_delay_value
     `endif
     `ifndef sgtl02ab_delay
        `define sgtl02ab_delay `seq_delay_value
     `endif
     `ifndef sgtl02bb_delay
        `define sgtl02bb_delay `seq_delay_value
     `endif
  `endif

primitive INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_0( clkout, clk, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_0 inst0( clkout, clk, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_0 inst0( clkout, clk, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_0( clkout, clk, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_0 inst0( clkout, clk, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_0 inst0( clkout, clk, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_0( clkout, clk, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output clkout;
  input clk, force1b;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, force1b,  vcc_in, vcc_out, vssx: clkout 
    ?  0  ?  1  0: 1; //force is ON, irrelevant of vcc_in
    1  ?  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  1  1  1  0: 0; //normal mode
  `else
  //clk, force1b: clkout 
    ?  0: 1;
    1  ?: 1;
    0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func( clk, clkout, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force1b, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_0 inst0( clkout, clk, force1b, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_0 inst0( clkout, clk, force1b );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_0( clkout, clk, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output clkout;
  input clk, force1b;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, force1b,  vcc_in, vcc_out, vssx: clkout 
    ?  0  ?  1  0: 1; //force is ON, irrelevant of vcc_in
    1  ?  1  1  0: 1; //normal mode, vcc_in needs to be '1
    0  1  1  1  0: 0; //normal mode
  `else
  //clk, force1b: clkout 
    ?  0: 1;
    1  ?: 1;
    0  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func( clk, clkout, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force1b, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_0 inst0( clkout, clk, force1b, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_0 inst0( clkout, clk, force1b );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_0( MGM_EN0, enb `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_1( MGM_D0, clk `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
  output MGM_D0;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc_in, vssx: MGM_D0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //clk: MGM_D0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_func( clk, clkout, enb, notifier `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input clk, enb, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_0 inst1( MGM_EN0, enb, vcc_out, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_1 inst2( MGM_D0, clk, vcc_in, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc_out, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_1 inst4( clkout, IQ, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_0 inst1( MGM_EN0, enb );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_1 inst2( MGM_D0, clk );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_1 inst4( clkout, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_0( MGM_EN0, enb `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_1( MGM_D0, clk `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
  output MGM_D0;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc_in, vssx: MGM_D0
    1  1  0: 1;
    0  1  0: 0;
  `else
  //clk: MGM_D0
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_func( clk, clkout, enb, notifier `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input clk, enb, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_0 inst1( MGM_EN0, enb, vcc_out, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_1 inst2( MGM_D0, clk, vcc_in, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc_out, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_1 inst4( clkout, IQ, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_0 inst1( MGM_EN0, enb );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_1 inst2( MGM_D0, clk );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_1 inst4( clkout, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtndab_0( clkout, clk `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output clkout;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc_in, vcc_out, vssx: clkout
    1  1  1  0: 1;
    0  1  1  0: 0;
  `else
  //clk: clkout
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtndab_0 inst1( clkout, clk, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtndab_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_0( clkout, clk `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output clkout;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc_in, vcc_out, vssx: clkout
    1  1  1  0: 1;
    0  1  1  0: 0;
  `else
  //clk: clkout
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_0 inst1( clkout, clk, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_0( o, a, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_0 inst0( o, a, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_0 inst0( o, a, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_0( o, a, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force0, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_0 inst0( o, a, force0, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_0 inst0( o, a, force0 );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_0( o, a, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_0 inst0( o, a, force1b, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_0 inst0( o, a, force1b );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_0( o, a, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input force1b, a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_0 inst0( o, a, force1b, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_0 inst0( o, a, force1b );
`endif
endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_0( o, a `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in, vcc_out, vssx: o
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


module INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_0 inst1( o, a, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_0 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_0( o, a `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
  output o;
  input a;
  `ifdef POWER_AWARE_MODE
  input vcc_in, vcc_out, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a vcc_in, vcc_out, vssx: o
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


module INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_0 inst1( o, a, vcc_in, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_0 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_0( MGM_EN0, enb `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_1( MGM_D0, a `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_func( a, enb, o, notifier `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a, enb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_0 inst1( MGM_EN0, enb, vcc_out, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_1 inst2( MGM_D0, a, vcc_in, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc_out, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_1 inst4( o, IQ, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_0 inst1( MGM_EN0, enb );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_1 inst2( MGM_D0, a );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_1 inst4( o, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_0( MGM_EN0, enb `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_1( MGM_D0, a `ifdef POWER_AWARE_MODE , vcc_in, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_2( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc_out, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_func( a, enb, o, notifier `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );
   input a, enb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc_in;
   inout  vcc_out;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_0 inst1( MGM_EN0, enb, vcc_out, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_1 inst2( MGM_D0, a, vcc_in, vssx );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc_out, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_1 inst4( o, IQ, vcc_out, vssx );
`else
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_0 inst1( MGM_EN0, enb );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_1 inst2( MGM_D0, a );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_2 inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_1 inst4( o, IQ );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scsbtd0ab1d18x5( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd0ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0));
      assign `csbtd0ab_delay clkout = clkout_tmp ;
   `endif
   
`else
   reg notifier;

   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0));
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


module i0scsbtd0ab1d36x5( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd0ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0));
      assign `csbtd0ab_delay clkout = clkout_tmp ;
   `endif
   
`else
   reg notifier;

   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d36x5_inst(.clk(clk),.clkout(clkout),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0ab_func i0scsbtd0ab1d36x5_inst(.clk(clk),.clkout(clkout),.force0(force0));
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


module i0scsbtd0bb1d18x5( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd0bb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0));
      assign `csbtd0bb_delay clkout = clkout_tmp ;
   `endif
   
`else
   reg notifier;

   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d18x5_inst(.clk(clk),.clkout(clkout),.force0(force0));
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


module i0scsbtd0bb1d36x5( clk, clkout, force0 `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd0bb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force0(force0));
      assign `csbtd0bb_delay clkout = clkout_tmp ;
   `endif
   
`else
   reg notifier;

   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d36x5_inst(.clk(clk),.clkout(clkout),.force0(force0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd0bb_func i0scsbtd0bb1d36x5_inst(.clk(clk),.clkout(clkout),.force0(force0));
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


module i0scsbtd1ab1d18x5( clk, clkout, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b));
      assign `csbtd1ab_delay clkout = clkout_tmp ;
   `endif
   
`else
 reg notifier;
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d18x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d18x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   // nochange force1b-LH clk-HL
   $nochange(negedge clk,posedge force1b,0.0,0.0, notifier);

   // nochange force1b-HL clk-HL
   $nochange(negedge clk,negedge force1b,0.0,0.0, notifier);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0scsbtd1ab1d36x5( clk, clkout, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd1ab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b));
      assign `csbtd1ab_delay clkout = clkout_tmp ;
   `endif
   
`else
 reg notifier;
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d36x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1ab_func i0scsbtd1ab1d36x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   // nochange force1b-LH clk-HL
   $nochange(negedge clk,posedge force1b,0.0,0.0, notifier);

   // nochange force1b-HL clk-HL
   $nochange(negedge clk,negedge force1b,0.0,0.0, notifier);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0scsbtd1bb1d18x5( clk, clkout, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd1bb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b));
      assign `csbtd1bb_delay clkout = clkout_tmp ;
   `endif
   
`else
 reg notifier;
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d18x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d18x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   // nochange force1b-LH clk-HL
   $nochange(negedge clk,posedge force1b,0.0,0.0, notifier);

   // nochange force1b-HL clk-HL
   $nochange(negedge clk,negedge force1b,0.0,0.0, notifier);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0scsbtd1bb1d36x5( clk, clkout, force1b `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

//deterministic 1 levelshifter

   input force1b, clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtd1bb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.force1b(force1b));
      assign `csbtd1bb_delay clkout = clkout_tmp ;
   `endif
   
`else
 reg notifier;
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d36x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtd1bb_func i0scsbtd1bb1d36x5_inst(.clk(clk),.clkout(clkout),.force1b(force1b));
   `endif
   
   //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
   specify
   if(force1b==1'b1)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(force1b==1'b1)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   if(clk==1'b0)
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc posedge force1b --> clkout
    (posedge force1b => (clkout:force1b)) = (0.0,0.0);

   ifnone
   // comb arc negedge force1b --> clkout
    (negedge force1b => (clkout:force1b)) = (0.0,0.0);

   // nochange force1b-LH clk-HL
   $nochange(negedge clk,posedge force1b,0.0,0.0, notifier);

   // nochange force1b-HL clk-HL
   $nochange(negedge clk,negedge force1b,0.0,0.0, notifier);

   endspecify

`endif 

endmodule
`endcelldefine 




`celldefine 


module i0scsbtl2ab1d18x5( clk, clkout, enb `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Clock Level Shifter: latching state when enb=1 in vcc_out domain (glitch free design)
// 
// 
// always @ (clk or enb)
// begin
// if (!enb)
// begin
// IQ <= clk;
// end
// end
// 
// assign  clkout =  IQ;
// 

   input clk, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
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
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_func i0scsbtl2ab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.notifier(1'b0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtl2ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_func i0scsbtl2ab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.notifier(1'b0));
      assign `csbtl2ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_func i0scsbtl2ab1d18x5_inst(.clk(clk),.clkout(clkout_random_init),.enb(enb),.notifier(notifier),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2ab_func i0scsbtl2ab1d18x5_inst(.clk(clk),.clkout(clkout_random_init),.enb(enb),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(ENABLE_NOT_clk,clk);
   buf MGM_G1(ENABLE_clk,clk);
   // spec_gates_end
  specify
   if(enb==1'b0)
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   if(enb==1'b0)
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   ifnone
   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

   if(clk==1'b1)
   // seq arc enb --> clkout
   (negedge enb => (clkout : clk))  = (0.0,0.0);

   ifnone
   // seq arc enb --> clkout
   (negedge enb => (clkout : clk))  = (0.0,0.0);

   if(clk==1'b0)
   // seq arc enb --> clkout
   (negedge enb => (clkout : clk))  = (0.0,0.0);

   $width(negedge enb &&& (ENABLE_NOT_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge enb &&& (ENABLE_clk == 1'b1)
		,0.0,0,notifier);

   $width(negedge enb,0.0,0,notifier);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scsbtl2bb1d18x5( clk, clkout, enb `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Clock Level Shifter: latching state when enb=1 in vcc_out domain (glitch free design)
// 
// 
// always @ (clk or enb)
// begin
// if (!enb)
// begin
// IQ <= clk;
// end
// end
// 
// assign `csbtl2bb_delay clkout =  IQ;
// 

   input clk, enb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
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
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_func i0scsbtl2bb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.notifier(1'b0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtl2bb_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_func i0scsbtl2bb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.enb(enb),.notifier(1'b0));
      assign `csbtl2bb_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_func i0scsbtl2bb1d18x5_inst(.clk(clk),.clkout(clkout_random_init),.enb(enb),.notifier(notifier),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtl2bb_func i0scsbtl2bb1d18x5_inst(.clk(clk),.clkout(clkout_random_init),.enb(enb),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G2(ENABLE_NOT_clk,clk);
   buf MGM_G3(ENABLE_clk,clk);
   // spec_gates_end
   specify


   // specify_block_begin
      if(enb==1'b0)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(enb==1'b0)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1)
      // seq arc enb --> clkout
      (negedge enb => (clkout : clk))  = (0.0,0.0);
      
      ifnone
      // seq arc enb --> clkout
      (negedge enb => (clkout : clk))  = (0.0,0.0);
      
      if(clk==1'b0)
      // seq arc enb --> clkout
      (negedge enb => (clkout : clk))  = (0.0,0.0);
      
      $width(negedge enb &&& (ENABLE_NOT_clk == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge enb &&& (ENABLE_clk == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge enb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scsbtndab1d18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic Clock LS
// 
// 
// buf (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtndab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `csbtndab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d18x5_inst(.clk(clk),.clkout(clkout),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d18x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scsbtndab1d36x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic Clock LS
// 
// 
// buf (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtndab_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `csbtndab_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d36x5_inst(.clk(clk),.clkout(clkout),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndab_func i0scsbtndab1d36x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scsbtndbb1d18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic Clock LS
// 
// 
// buf (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtndbb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `csbtndbb_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d18x5_inst(.clk(clk),.clkout(clkout),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d18x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0scsbtndbb1d36x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// Non-deterministic Clock LS
// 
// 
// buf (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc_in;
   (* pg_type = "primary_power" *) inout vcc_out;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `csbtndbb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d36x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `csbtndbb_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d36x5_inst(.clk(clk),.clkout(clkout),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_csbtndbb_func i0scsbtndbb1d36x5_inst(.clk(clk),.clkout(clkout));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   // spec_gates_end
  specify
   // comb arc negedge clk --> clkout
    (negedge clk => (clkout:clk)) = (0.0,0.0);

   // comb arc posedge clk --> clkout
    (posedge clk => (clkout:clk)) = (0.0,0.0);

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0ssgt0d0ab1d06x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d0ab_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgt0d0ab_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d06x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d06x5_inst(.a(a),.force0(force0),.o(o));
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


module i0ssgt0d0ab1d12x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d0ab_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgt0d0ab_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d12x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0ab_func i0ssgt0d0ab1d12x5_inst(.a(a),.force0(force0),.o(o));
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


module i0ssgt0d0bb1d06x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d0bb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d06x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgt0d0bb_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d06x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d06x5_inst(.a(a),.force0(force0),.o(o));
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


module i0ssgt0d0bb1d12x5( a, force0, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d0bb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d12x5_behav_inst(.a(a),.force0(force0),.o(o_tmp));
      assign `sgt0d0bb_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d12x5_inst(.a(a),.force0(force0),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d0bb_func i0ssgt0d0bb1d12x5_inst(.a(a),.force0(force0),.o(o));
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


module i0ssgt0d1ab1d06x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d1ab_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgt0d1ab_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d06x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d06x5_inst(.a(a),.force1b(force1b),.o(o));
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


module i0ssgt0d1ab1d12x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d1ab_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgt0d1ab_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d12x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1ab_func i0ssgt0d1ab1d12x5_inst(.a(a),.force1b(force1b),.o(o));
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


module i0ssgt0d1bb1d06x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d1bb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d06x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgt0d1bb_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d06x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d06x5_inst(.a(a),.force1b(force1b),.o(o));
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


module i0ssgt0d1bb1d12x5( a, force1b, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0d1bb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d12x5_behav_inst(.a(a),.force1b(force1b),.o(o_tmp));
      assign `sgt0d1bb_delay o = o_tmp ;
   `endif
   
`else
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d12x5_inst(.a(a),.force1b(force1b),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0d1bb_func i0ssgt0d1bb1d12x5_inst(.a(a),.force1b(force1b),.o(o));
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


module i0ssgt0ndab1d06x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// non deterministic levelshifter
// 
// 
// buf (o, a);
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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d06x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0ndab_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d06x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgt0ndab_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d06x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d06x5_inst(.a(a),.o(o));
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


module i0ssgt0ndab1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// non deterministic levelshifter
// 
// 
// buf (o, a);
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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0ndab_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgt0ndab_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d12x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndab_func i0ssgt0ndab1d12x5_inst(.a(a),.o(o));
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


module i0ssgt0ndbb1d06x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// non deterministic levelshifter
// 
// 
// buf (o, a);
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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d06x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0ndbb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d06x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgt0ndbb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d06x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d06x5_inst(.a(a),.o(o));
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


module i0ssgt0ndbb1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

// 
// non deterministic levelshifter
// 
// 
// buf (o, a);
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
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgt0ndbb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `sgt0ndbb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d12x5_inst(.a(a),.o(o),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgt0ndbb_func i0ssgt0ndbb1d12x5_inst(.a(a),.o(o));
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


module i0ssgtl02ab1d06x5( a, enb, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_func i0ssgtl02ab1d06x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgtl02ab_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_func i0ssgtl02ab1d06x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0));
      assign `sgtl02ab_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_func i0ssgtl02ab1d06x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02ab_func i0ssgtl02ab1d06x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier));
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


module i0ssgtl02bb1d06x5( a, enb, o `ifdef POWER_AWARE_MODE , vcc_in, vcc_out, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_func i0ssgtl02bb1d06x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
      assign `sgtl02bb_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_func i0ssgtl02bb1d06x5_behav_inst(.a(a),.enb(enb),.o(o_tmp),.notifier(1'b0));
      assign `sgtl02bb_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_func i0ssgtl02bb1d06x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier),.vcc_in(vcc_in),.vcc_out(vcc_out),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_lvl_sgtl02bb_func i0ssgtl02bb1d06x5_inst(.a(a),.enb(enb),.o(o_random_init),.notifier(notifier));
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




