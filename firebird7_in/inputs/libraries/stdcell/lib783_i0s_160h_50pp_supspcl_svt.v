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
     `ifndef qgbfs4ac_delay
        `define qgbfs4ac_delay `seq_delay_value
     `endif
     `ifndef qgbls4ac_delay
        `define qgbls4ac_delay `seq_delay_value
     `endif
     `ifndef qsffs4mc_delay
        `define qsffs4mc_delay `seq_delay_value
     `endif
     `ifndef qsfls3mc_delay
        `define qsfls3mc_delay `seq_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0( MGM_CLK0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_1( MGM_D0, d, rb, s `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input d, rb, s;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //d, rb, s vcc, vssx: MGM_D0
    1  1  ?  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  ?  1  0: 0;
  `else
  //d, rb, s: MGM_D0
    1  1  ?: 1;
    ?  1  1: 1;
    0  0  ?: 0;
    0  ?  0: 0;
    ?  0  ?: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_N_IQ_FF_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_func( clk, d, o, rb, s, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, s, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_1 inst2( MGM_D0, d, rb, s, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_N_IQ_FF_UDP inst3( IQ, 1'b0, 1'b0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst4( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_1 inst2( MGM_D0, d, rb, s );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_N_IQ_FF_UDP inst3( IQ, 1'b0, 1'b0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst4( o, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_func( clk, d, o, rb, s, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, s, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_1 inst2( MGM_D0, d, rb, s, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst4( o, IQ1, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_1 inst2( MGM_D0, d, rb, s );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_N_IQ_LATCH_UDP inst3( IQ1, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst4( o, IQ1 );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_1( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_2( int1, d, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output int1;
  input d, rb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //d, rb vcc, vssx: int1
    1  1  1  0: 1;
    0  ?  1  0: 0;
    ?  0  1  0: 0;
  `else
  //d, rb: int1
    1  1: 1;
    0  ?: 0;
    ?  0: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_3( int3, den, int1, int2 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output int3;
  input den, int1, int2;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //den, int1, int2 vcc, vssx: int3
    1  1  ?  1  0: 1;
    0  ?  1  1  0: 1;
    ?  1  1  1  0: 1;
    1  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  0  1  0: 0;
  `else
  //den, int1, int2: int3
    1  1  ?: 1;
    0  ?  1: 1;
    ?  1  1: 1;
    1  0  ?: 0;
    0  ?  0: 0;
    ?  0  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_func( clk, d, den, o, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, den, rb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0 inst2( MGM_D0, int3, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_1 inst3( IQ, 1'b0, 1'b0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_2 inst4( int1, d, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_2 inst5( int2, IQ, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_3 inst6( int3, den, int1, int2, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0 inst7( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0 inst2( MGM_D0, int3 );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_1 inst3( IQ, 1'b0, 1'b0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_2 inst4( int1, d, rb );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_2 inst5( int2, IQ, rb );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_3 inst6( int3, den, int1, int2 );
   INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_0 inst7( o, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_2( MGM_D0, d, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input d, rb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //d, rb vcc, vssx: MGM_D0
    1  1  1  0: 1;
    0  ?  1  0: 0;
    ?  0  1  0: 0;
  `else
  //d, rb: MGM_D0
    1  1: 1;
    0  ?: 0;
    ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_func( clk, d, o, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_2 inst2( MGM_D0, d, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst4( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_2 inst2( MGM_D0, d, rb );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_0 inst4( o, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_supspcl_qsnfs4mc_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_supspcl_qsnls3mc_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 




`celldefine 


module i0sqgbfs4ac1d03x5( clk, d, o, rb, s `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Gate Array Bonus sync non-scan FF
// 
// 
// always @ (posedge clk)
// begin
// IQ <= d&rb | rb&s ;
// end
// 
// assign `qgbfs4ac_delay o =  IQ;
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
      INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_func i0sqgbfs4ac1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qgbfs4ac_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_func i0sqgbfs4ac1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0));
      assign `qgbfs4ac_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   wire s_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_func i0sqgbfs4ac1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qgbfs4ac_func i0sqgbfs4ac1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G141(MGM_W89,d_delay);
   not MGM_G142(MGM_W90,rb_delay);
   and MGM_G143(MGM_W91,MGM_W90,MGM_W89);
   not MGM_G144(MGM_W92,s_delay);
   and MGM_G145(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_s,MGM_W92,MGM_W91);
   not MGM_G146(MGM_W93,d_delay);
   not MGM_G147(MGM_W94,rb_delay);
   and MGM_G148(MGM_W95,MGM_W94,MGM_W93);
   and MGM_G149(ENABLE_NOT_d_AND_NOT_rb_AND_s,s_delay,MGM_W95);
   not MGM_G150(MGM_W96,d_delay);
   and MGM_G151(MGM_W97,rb_delay,MGM_W96);
   not MGM_G152(MGM_W98,s_delay);
   and MGM_G153(ENABLE_NOT_d_AND_rb_AND_NOT_s,MGM_W98,MGM_W97);
   not MGM_G154(MGM_W99,d_delay);
   and MGM_G155(MGM_W100,rb_delay,MGM_W99);
   and MGM_G156(ENABLE_NOT_d_AND_rb_AND_s,s_delay,MGM_W100);
   not MGM_G157(MGM_W101,rb_delay);
   and MGM_G158(MGM_W102,MGM_W101,d_delay);
   not MGM_G159(MGM_W103,s_delay);
   and MGM_G160(ENABLE_d_AND_NOT_rb_AND_NOT_s,MGM_W103,MGM_W102);
   not MGM_G161(MGM_W104,rb_delay);
   and MGM_G162(MGM_W105,MGM_W104,d_delay);
   and MGM_G163(ENABLE_d_AND_NOT_rb_AND_s,s_delay,MGM_W105);
   and MGM_G164(MGM_W106,rb_delay,d_delay);
   not MGM_G165(MGM_W107,s_delay);
   and MGM_G166(ENABLE_d_AND_rb_AND_NOT_s,MGM_W107,MGM_W106);
   and MGM_G167(MGM_W108,rb_delay,d_delay);
   and MGM_G168(ENABLE_d_AND_rb_AND_s,s_delay,MGM_W108);
   buf MGM_G169(ENABLE_rb,rb_delay);
   not MGM_G170(MGM_W109,d_delay);
   and MGM_G171(ENABLE_NOT_d_AND_s,s_delay,MGM_W109);
   not MGM_G172(MGM_W110,s_delay);
   and MGM_G173(ENABLE_d_AND_NOT_s,MGM_W110,d_delay);
   and MGM_G174(ENABLE_d_AND_s,s_delay,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b0 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b0 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b0 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b0 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_NOT_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge clk &&& (ENABLE_d_AND_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb_AND_s == 1'b1)
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
      
      // setuphold rb- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_s == 1'b1),
      negedge rb &&& (ENABLE_NOT_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-LH
      $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_s == 1'b1),
      posedge rb &&& (ENABLE_NOT_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-LH
      $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_s == 1'b1),
      negedge rb &&& (ENABLE_d_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-LH
      $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_s == 1'b1),
      posedge rb &&& (ENABLE_d_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-LH
      $setuphold(posedge clk &&& (ENABLE_d_AND_s == 1'b1),
      negedge rb &&& (ENABLE_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-LH
      $setuphold(posedge clk &&& (ENABLE_d_AND_s == 1'b1),
      posedge rb &&& (ENABLE_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-LH
      
      // setuphold rb- clk-LH
      
      // setuphold s- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      negedge s &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,s_delay);
      
      // setuphold s- clk-LH
      $setuphold(posedge clk &&& (ENABLE_rb == 1'b1),
      posedge s &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,s_delay);
      
      // setuphold s- clk-LH
      
      // setuphold s- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqgbls4ac1d03x5( clk, d, o, rb, s `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// BAR latch
// 
// 
// always @ (clk or d or rb or s)
// begin
// if (clk)
// begin
// IQ1 <= d&rb | rb&s;
// end
// end
// 
// assign `qgbls4ac_delay o =  IQ1;
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
      INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_func i0sqgbls4ac1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qgbls4ac_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_func i0sqgbls4ac1d03x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.s(s),.notifier(1'b0));
      assign `qgbls4ac_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   wire s_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_func i0sqgbls4ac1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qgbls4ac_func i0sqgbls4ac1d03x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.s(s_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G34(MGM_W22,d_delay);
   not MGM_G35(MGM_W23,rb_delay);
   and MGM_G36(MGM_W24,MGM_W23,MGM_W22);
   not MGM_G37(MGM_W25,s_delay);
   and MGM_G38(ENABLE_NOT_d_AND_NOT_rb_AND_NOT_s,MGM_W25,MGM_W24);
   not MGM_G39(MGM_W26,d_delay);
   not MGM_G40(MGM_W27,rb_delay);
   and MGM_G41(MGM_W28,MGM_W27,MGM_W26);
   and MGM_G42(ENABLE_NOT_d_AND_NOT_rb_AND_s,s_delay,MGM_W28);
   not MGM_G43(MGM_W29,d_delay);
   and MGM_G44(MGM_W30,rb_delay,MGM_W29);
   not MGM_G45(MGM_W31,s_delay);
   and MGM_G46(ENABLE_NOT_d_AND_rb_AND_NOT_s,MGM_W31,MGM_W30);
   not MGM_G47(MGM_W32,d_delay);
   and MGM_G48(MGM_W33,rb_delay,MGM_W32);
   and MGM_G49(ENABLE_NOT_d_AND_rb_AND_s,s_delay,MGM_W33);
   not MGM_G50(MGM_W34,rb_delay);
   and MGM_G51(MGM_W35,MGM_W34,d_delay);
   not MGM_G52(MGM_W36,s_delay);
   and MGM_G53(ENABLE_d_AND_NOT_rb_AND_NOT_s,MGM_W36,MGM_W35);
   not MGM_G54(MGM_W37,rb_delay);
   and MGM_G55(MGM_W38,MGM_W37,d_delay);
   and MGM_G56(ENABLE_d_AND_NOT_rb_AND_s,s_delay,MGM_W38);
   and MGM_G57(MGM_W39,rb_delay,d_delay);
   not MGM_G58(MGM_W40,s_delay);
   and MGM_G59(ENABLE_d_AND_rb_AND_NOT_s,MGM_W40,MGM_W39);
   and MGM_G60(MGM_W41,rb_delay,d_delay);
   and MGM_G61(ENABLE_d_AND_rb_AND_s,s_delay,MGM_W41);
   buf MGM_G62(ENABLE_rb,rb_delay);
   not MGM_G63(MGM_W42,d_delay);
   and MGM_G64(ENABLE_NOT_d_AND_s,s_delay,MGM_W42);
   not MGM_G65(MGM_W43,s_delay);
   and MGM_G66(ENABLE_d_AND_NOT_s,MGM_W43,d_delay);
   and MGM_G67(ENABLE_d_AND_s,s_delay,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b0 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b0 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b0 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b0 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1 && s==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1 && s==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b1 && s==1'b1)
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
      
      if(clk==1'b1 && d==1'b0 && s==1'b1)
      // comb arc negedge rb --> o
      (negedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && s==1'b1)
      // comb arc posedge rb --> o
      (posedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b0)
      // comb arc negedge rb --> o
      (negedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b0)
      // comb arc posedge rb --> o
      (posedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b1)
      // comb arc negedge rb --> o
      (negedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && s==1'b1)
      // comb arc posedge rb --> o
      (posedge rb => (o:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge rb --> o
      (negedge rb => (o:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge rb --> o
      (posedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && rb==1'b1)
      // comb arc negedge s --> o
      (negedge s => (o:s)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && rb==1'b1)
      // comb arc posedge s --> o
      (posedge s => (o:s)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge s --> o
      (negedge s => (o:s)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge s --> o
      (posedge s => (o:s)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_NOT_rb_AND_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb_AND_NOT_s == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb_AND_s == 1'b1)
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
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s == 1'b1),
      negedge rb &&& (ENABLE_NOT_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk &&& (ENABLE_NOT_d_AND_s == 1'b1),
      posedge rb &&& (ENABLE_NOT_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s == 1'b1),
      negedge rb &&& (ENABLE_d_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d_AND_NOT_s == 1'b1),
      posedge rb &&& (ENABLE_d_AND_NOT_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d_AND_s == 1'b1),
      negedge rb &&& (ENABLE_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk &&& (ENABLE_d_AND_s == 1'b1),
      posedge rb &&& (ENABLE_d_AND_s == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      
      // setuphold rb- clk-HL
      
      // setuphold s- clk-HL
      $setuphold(negedge clk &&& (ENABLE_rb == 1'b1),
      negedge s &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,s_delay);
      
      // setuphold s- clk-HL
      $setuphold(negedge clk &&& (ENABLE_rb == 1'b1),
      posedge s &&& (ENABLE_rb == 1'b1),
      0.0,0.0,notifier,,,clk_delay,s_delay);
      
      // setuphold s- clk-HL
      
      // setuphold s- clk-HL
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsffs4mc1d06x5( clk, d, den, o, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// RedCap non-scan DFF with Re-circulating den and sync reset o = {(rb*((den*d)+(!den*o))) on rising clk}
// 
// 
// 
// assign  int1 =  d&rb;
// assign  int2 =  IQ&rb;
// assign  int3 =  den ? int1 : int2;
// 
// always @ (posedge clk)
// begin
// IQ <= int3 ;
// end
// 
// assign o =  IQ;
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
      INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_func i0sqsffs4mc1d06x5_behav_inst(.clk(clk),.d(d),.den(den),.o(o_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qsffs4mc_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_func i0sqsffs4mc1d06x5_behav_inst(.clk(clk),.d(d),.den(den),.o(o_tmp),.rb(rb),.notifier(1'b0));
      assign `qsffs4mc_delay o_random_init = o_tmp ;
      
   `endif
   
`else

   wire clk_delay ;
   wire d_delay ;
   wire den_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_func i0sqsffs4mc1d06x5_inst(.clk(clk_delay),.d(d_delay),.den(den_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsffs4mc_func i0sqsffs4mc1d06x5_inst(.clk(clk_delay),.d(d_delay),.den(den_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
  //this is needed for SiS to generate arcs

   // spec_gates_begin
   not MGM_G0(MGM_W0,d_delay);
   not MGM_G1(MGM_W1,den_delay);
   and MGM_G2(MGM_W2,MGM_W1,MGM_W0);
   not MGM_G3(MGM_W3,rb_delay);
   and MGM_G4(ENABLE_NOT_d_AND_NOT_den_AND_NOT_rb,MGM_W3,MGM_W2);
   not MGM_G5(MGM_W4,d_delay);
   and MGM_G6(MGM_W5,den_delay,MGM_W4);
   not MGM_G7(MGM_W6,rb_delay);
   and MGM_G8(ENABLE_NOT_d_AND_den_AND_NOT_rb,MGM_W6,MGM_W5);
   not MGM_G9(MGM_W7,d_delay);
   and MGM_G10(MGM_W8,den_delay,MGM_W7);
   and MGM_G11(ENABLE_NOT_d_AND_den_AND_rb,rb_delay,MGM_W8);
   not MGM_G12(MGM_W9,den_delay);
   and MGM_G13(MGM_W10,MGM_W9,d_delay);
   not MGM_G14(MGM_W11,rb_delay);
   and MGM_G15(ENABLE_d_AND_NOT_den_AND_NOT_rb,MGM_W11,MGM_W10);
   and MGM_G16(MGM_W12,den_delay,d_delay);
   not MGM_G17(MGM_W13,rb_delay);
   and MGM_G18(ENABLE_d_AND_den_AND_NOT_rb,MGM_W13,MGM_W12);
   and MGM_G19(MGM_W14,den_delay,d_delay);
   and MGM_G20(ENABLE_d_AND_den_AND_rb,rb_delay,MGM_W14);
   and MGM_G21(ENABLE_den_AND_rb,rb_delay,den_delay);
   not MGM_G22(MGM_W15,d_delay);
   and MGM_G23(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W15);
   and MGM_G24(ENABLE_d_AND_rb,rb_delay,d_delay);
   not MGM_G25(MGM_W16,d_delay);
   not MGM_G26(MGM_W17,den_delay);
   and MGM_G27(ENABLE_NOT_d_AND_NOT_den,MGM_W17,MGM_W16);
   not MGM_G28(MGM_W18,den_delay);
   and MGM_G29(ENABLE_d_AND_NOT_den,MGM_W18,d_delay);
   and MGM_G30(ENABLE_d_AND_den,den_delay,d_delay);
   // spec_gates_end
  specify
   if(d==1'b0 && den==1'b0 && rb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && den==1'b1 && rb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b0 && den==1'b1 && rb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && den==1'b0 && rb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && den==1'b1 && rb==1'b0)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   ifnone
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   if(d==1'b1 && den==1'b1 && rb==1'b1)
   // seq arc clk --> o
   (posedge clk => (o : d))  = (0.0,0.0);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_NOT_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_NOT_d_AND_den_AND_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_NOT_d_AND_den_AND_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_NOT_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_NOT_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(negedge clk &&& (ENABLE_d_AND_den_AND_NOT_rb == 1'b1)
		,0.0,0,notifier);

   $width(posedge clk &&& (ENABLE_d_AND_den_AND_NOT_rb == 1'b1)
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

   // setuphold rb- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_den == 1'b1),
		negedge rb &&& (ENABLE_NOT_d_AND_NOT_den == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-LH
   $setuphold(posedge clk &&& (ENABLE_NOT_d_AND_NOT_den == 1'b1),
		posedge rb &&& (ENABLE_NOT_d_AND_NOT_den == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_den == 1'b1),
		negedge rb &&& (ENABLE_d_AND_NOT_den == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_NOT_den == 1'b1),
		posedge rb &&& (ENABLE_d_AND_NOT_den == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_den == 1'b1),
		negedge rb &&& (ENABLE_d_AND_den == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-LH
   $setuphold(posedge clk &&& (ENABLE_d_AND_den == 1'b1),
		posedge rb &&& (ENABLE_d_AND_den == 1'b1),
		0.0,0.0,notifier,,,clk_delay,rb_delay);

   // setuphold rb- clk-LH

   // setuphold rb- clk-LH

  endspecify
`endif
endmodule
`endcelldefine 




`celldefine 


module i0sqsfls3mc1d06x5( clk, d, o, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// spare latch functional
// 
// 
// always @ (clk or d or rb)
// begin
// if (clk)
// begin
// IQ <= d&rb;
// end
// end
// 
// assign `qsfls3mc_delay o =  IQ;
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
      INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_func i0sqsfls3mc1d06x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qsfls3mc_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_func i0sqsfls3mc1d06x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.notifier(1'b0));
      assign `qsfls3mc_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_func i0sqsfls3mc1d06x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsfls3mc_func i0sqsfls3mc1d06x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G8(MGM_W4,d_delay);
   not MGM_G9(MGM_W5,rb_delay);
   and MGM_G10(ENABLE_NOT_d_AND_NOT_rb,MGM_W5,MGM_W4);
   not MGM_G11(MGM_W6,d_delay);
   and MGM_G12(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W6);
   not MGM_G13(MGM_W7,rb_delay);
   and MGM_G14(ENABLE_d_AND_NOT_rb,MGM_W7,d_delay);
   and MGM_G15(ENABLE_d_AND_rb,rb_delay,d_delay);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b0)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b0 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && rb==1'b0)
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
      
      if(clk==1'b1 && d==1'b1)
      // comb arc negedge rb --> o
      (negedge rb => (o:rb)) = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // comb arc posedge rb --> o
      (posedge rb => (o:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge rb --> o
      (negedge rb => (o:rb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge rb --> o
      (posedge rb => (o:rb)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_NOT_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_NOT_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk,negedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold d- clk-HL
      $setuphold(negedge clk,posedge d,0.0,0.0,notifier,,,clk_delay,d_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk,negedge rb,0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      // setuphold rb- clk-HL
      $setuphold(negedge clk,posedge rb,0.0,0.0,notifier,,,clk_delay,rb_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnfs4mc1d06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// non_functional spare FF
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qsnfs4mc_func i0sqsnfs4mc1d06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsnfs4mc_func i0sqsnfs4mc1d06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qsnfs4mc_func i0sqsnfs4mc1d06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsnfs4mc_func i0sqsnfs4mc1d06x5_inst();
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


module i0sqsnls3mc1d06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// spare latch non functional
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qsnls3mc_func i0sqsnls3mc1d06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsnls3mc_func i0sqsnls3mc1d06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_supspcl_qsnls3mc_func i0sqsnls3mc1d06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_supspcl_qsnls3mc_func i0sqsnls3mc1d06x5_inst();
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




