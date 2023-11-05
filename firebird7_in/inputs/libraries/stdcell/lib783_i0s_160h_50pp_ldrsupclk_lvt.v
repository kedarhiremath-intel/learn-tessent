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
     `ifndef cbf000hb_delay
        `define cbf000hb_delay `clkcell_delay_value
     `endif
     `ifndef cilb01ab_delay
        `define cilb01ab_delay `clkseq_delay_value
     `endif
     `ifndef cilb05hb_delay
        `define cilb05hb_delay `clkseq_delay_value
     `endif
     `ifndef cilb25ab_delay
        `define cilb25ab_delay `clkseq_delay_value
     `endif
     `ifndef clb0a2hb_delay
        `define clb0a2hb_delay `clkcell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_0( clkout, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk vcc, vssx: clkout
    1  1  0: 1;
    0  1  0: 0;
  `else
  //clk: clkout
    1: 1;
    0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_0 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1( MGM_EN0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2( MGM_D0, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3( clkout, IQ, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb05hb_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb25ab_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_1 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_2 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrsupclk_clb0a2hb_func( clk, clkout, en `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst1( clkout, clk, en, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_3 inst1( clkout, clk, en );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scbf000hb1n02x1( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Balanced clock buffer (low CiC layout) clkout = !(!clk)
// 
// 
// buf `cbf000hb_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_func i0scbf000hb1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf000hb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_func i0scbf000hb1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf000hb_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_func i0scbf000hb1n02x1_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cbf000hb_func i0scbf000hb1n02x1_inst(.clk(clk),.clkout(clkout));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scilb01ab1n02x1( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG AND with test signal
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
// assign `cilb01ab_delay clkout =  IQ&clk;
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
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_func i0scilb01ab1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb01ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_func i0scilb01ab1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb01ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_func i0scilb01ab1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb01ab_func i0scilb01ab1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
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


module i0scilb05hb1n02x1( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

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
// assign `cilb05hb_delay clkout =  IQ&clk;
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
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb05hb_func i0scilb05hb1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb05hb_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb05hb_func i0scilb05hb1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb05hb_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb05hb_func i0scilb05hb1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb05hb_func i0scilb05hb1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
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


module i0scilb25ab1n02x1( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Integrated Clock Gating cell (NOR output driver implementation for low power) clkout = clk *(en + te) during low phase
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
// assign `cilb25ab_delay clkout =  IQ&clk;
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
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb25ab_func i0scilb25ab1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb25ab_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb25ab_func i0scilb25ab1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb25ab_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb25ab_func i0scilb25ab1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_cilb25ab_func i0scilb25ab1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
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


module i0sclb0a2hb1n02x1( clk, clkout, en `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// LCB AND2 with one enable signal
// 
// 
// assign `clb0a2hb_delay clkout =  clk&en;
// 

   input clk, en;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_clb0a2hb_func i0sclb0a2hb1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.vcc(vcc),.vssx(vssx));
      assign `clb0a2hb_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_clb0a2hb_func i0sclb0a2hb1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en));
      assign `clb0a2hb_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrsupclk_clb0a2hb_func i0sclb0a2hb1n02x1_inst(.clk(clk),.clkout(clkout),.en(en),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrsupclk_clb0a2hb_func i0sclb0a2hb1n02x1_inst(.clk(clk),.clkout(clkout),.en(en));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




