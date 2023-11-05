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
     `ifndef cilb81aa_delay
        `define cilb81aa_delay `clkseq_delay_value
     `endif
     `ifndef cmbc24aa_delay
        `define cmbc24aa_delay `clkcell_delay_value
     `endif
  `endif






`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiclk_cfloadaa_func( a, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, sa;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_0( MGM_EN0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_1( MGM_D0, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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
primitive INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_2( clkout, IQ, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input IQ, clk;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ, clk vcc, vssx: clkout
    0  ?  1  0: 1;
    ?  1  1  0: 1;
    1  0  1  0: 0;
  `else
  //IQ, clk: clkout
    0  ?: 1;
    ?  1: 1;
    1  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_func( clk, clkout, en, te, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, te, notifier;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_1 inst2( MGM_D0, en, te, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_2 inst4( clkout, IQ, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_1 inst2( MGM_D0, en, te );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_N_IQ_LATCH_UDP inst3( IQ, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_2 inst4( clkout, IQ, clk );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3( clkout, int1, int2, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_func( clk1, clk2, clk3, clk4, clkout, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk1, clk2, clk3, clk4, sa, sb;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3 inst1( clkout, int1, int2, sb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3 inst2( int1, clk1, clk2, sa, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3 inst3( int2, clk3, clk4, sa, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3 inst1( clkout, int1, int2, sb );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3 inst2( int1, clk1, clk2, sa );
   INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_3 inst3( int2, clk3, clk4, sa );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scfloadaa1n01x1( a, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// fine dload with enable control
// 
// 
// 

   input a, sa;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cfloadaa_func i0scfloadaa1n01x1_behav_inst(.a(a),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cfloadaa_func i0scfloadaa1n01x1_behav_inst(.a(a),.sa(sa));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cfloadaa_func i0scfloadaa1n01x1_inst(.a(a),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cfloadaa_func i0scfloadaa1n01x1_inst(.a(a),.sa(sa));
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


module i0scilb81aa1n02x1( clk, clkout, en, te `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// ICG OR with test signal
// 
// 
// always @ (clk or en or te)
// begin
// if (clk)
// begin
// IQ <= en | te;
// end
// end
// 
// assign `cilb81aa_delay clkout =  ~IQ | clk;
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
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_func i0scilb81aa1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `cilb81aa_delay clkout_random_init = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_func i0scilb81aa1n02x1_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.te(te),.notifier(1'b0));
      assign `cilb81aa_delay clkout_random_init = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire en_delay ;
   wire te_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_func i0scilb81aa1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cilb81aa_func i0scilb81aa1n02x1_inst(.clk(clk_delay),.clkout(clkout_random_init),.en(en_delay),.te(te_delay),.notifier(notifier));
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
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_NOT_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_en_AND_te == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk,0.0,0,notifier);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,negedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold en- clk-HL
      $setuphold(negedge clk,posedge en,0.0,0.0,notifier,,,clk_delay,en_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,negedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      // setuphold te- clk-HL
      $setuphold(negedge clk,posedge te,0.0,0.0,notifier,,,clk_delay,te_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scmbc24aa1d02x1( clk1, clk2, clk3, clk4, clkout, sa, sb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4:1 n-1st encoded clock mux INV-PG-INV
// 
// 
// assign `cmbc24aa_delay clkout =  sb ? int2 : int1;
// assign  int1 =  sa ? clk2 : clk1;
// assign  int2 =  sa ? clk4 : clk3;
// 

   input clk1, clk2, clk3, clk4, sa, sb;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_func i0scmbc24aa1d02x1_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
      assign `cmbc24aa_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_func i0scmbc24aa1d02x1_behav_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout_tmp),.sa(sa),.sb(sb));
      assign `cmbc24aa_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_func i0scmbc24aa1d02x1_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ldrdsiclk_cmbc24aa_func i0scmbc24aa1d02x1_inst(.clk1(clk1),.clk2(clk2),.clk3(clk3),.clk4(clk4),.clkout(clkout),.sa(sa),.sb(sb));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b0)
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk1 --> clkout
      (negedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk1 --> clkout
      (posedge clk1 => (clkout:clk1)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b1 && sb==1'b0)
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk2 --> clkout
      (negedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk2 --> clkout
      (posedge clk2 => (clkout:clk2)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b0 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk4==1'b1 && sa==1'b0 && sb==1'b1)
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk3 --> clkout
      (negedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk3 --> clkout
      (posedge clk3 => (clkout:clk3)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && sa==1'b1 && sb==1'b1)
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk4 --> clkout
      (negedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk4 --> clkout
      (posedge clk4 => (clkout:clk4)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sa --> (clkout:sa)
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sa --> (clkout:sa)
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sb==1'b0)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc negedge sa --> clkout
      (negedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sb==1'b1)
      // comb arc posedge sa --> clkout
      (posedge sa => (clkout:sa)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b0 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge sb --> (clkout:sb)
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge sb --> (clkout:sb)
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b0 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b0 && clk2==1'b1 && clk3==1'b1 && clk4==1'b1 && sa==1'b0)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b0 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc negedge sb --> clkout
      (negedge sb => (clkout:sb)) = (0.0,0.0);
      
      if(clk1==1'b1 && clk2==1'b0 && clk3==1'b1 && clk4==1'b1 && sa==1'b1)
      // comb arc posedge sb --> clkout
      (posedge sb => (clkout:sb)) = (0.0,0.0);
      
      // nochange sa-LH clk1-LH
      $nochange(posedge clk1,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk1-LH
      $nochange(posedge clk1,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk2-LH
      $nochange(posedge clk2,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk2-LH
      $nochange(posedge clk2,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk3-LH
      $nochange(posedge clk3,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk3-LH
      $nochange(posedge clk3,negedge sa,0.0,0.0, notifier);
      
      // nochange sa-LH clk4-LH
      $nochange(posedge clk4,posedge sa,0.0,0.0, notifier);
      
      // nochange sa-HL clk4-LH
      $nochange(posedge clk4,negedge sa,0.0,0.0, notifier);
      
      // nochange sb-LH clk1-LH
      $nochange(posedge clk1,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk1-LH
      $nochange(posedge clk1,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk2-LH
      $nochange(posedge clk2,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk2-LH
      $nochange(posedge clk2,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk3-LH
      $nochange(posedge clk3,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk3-LH
      $nochange(posedge clk3,negedge sb,0.0,0.0, notifier);
      
      // nochange sb-LH clk4-LH
      $nochange(posedge clk4,posedge sb,0.0,0.0, notifier);
      
      // nochange sb-HL clk4-LH
      $nochange(posedge clk4,negedge sb,0.0,0.0, notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




