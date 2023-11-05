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
     `ifndef qsffa4ac_delay
        `define qsffa4ac_delay `seq_delay_value
     `endif
     `ifndef qsfla3ac_delay
        `define qsfla3ac_delay `seq_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0( MGM_CLK0, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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
primitive INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_1( MGM_C0, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_C0;
  input rb;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //rb vcc, vssx: MGM_C0
    0  1  0: 1;
    1  1  0: 0;
  `else
  //rb: MGM_C0
    0: 1;
    1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_2( MGM_D0, IQ, d, den `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output MGM_D0;
  input IQ, d, den;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //IQ, d, den vcc, vssx: MGM_D0
    1  1  ?  1  0: 1;
    1  ?  0  1  0: 1;
    ?  1  1  1  0: 1;
    0  0  ?  1  0: 0;
    0  ?  0  1  0: 0;
    ?  0  1  1  0: 0;
  `else
  //IQ, d, den: MGM_D0
    1  1  ?: 1;
    1  ?  0: 1;
    ?  1  1: 1;
    0  0  ?: 0;
    0  ?  0: 0;
    ?  0  1: 0;
  `endif
  endtable

endprimitive
primitive INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_N_IQ_FF_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_func( clk, d, den, o, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, den, rb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst1( MGM_CLK0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_1 inst2( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_2 inst3( MGM_D0, IQ, d, den, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_N_IQ_FF_UDP inst4( IQ, MGM_C0, 1'b0, MGM_CLK0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst5( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst1( MGM_CLK0, clk );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_1 inst2( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_2 inst3( MGM_D0, IQ, d, den );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_N_IQ_FF_UDP inst4( IQ, MGM_C0, 1'b0, MGM_CLK0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst5( o, IQ );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_N_IQ_LATCH_UDP( Q, C, P, CK, D `ifdef POWER_AWARE_MODE , vcc, vssx `endif , N );
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


module INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_func( clk, d, o, rb, notifier `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, d, rb, notifier;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst1( MGM_EN0, clk, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_1 inst2( MGM_C0, rb, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst3( MGM_D0, d, vcc, vssx );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_N_IQ_LATCH_UDP inst4( IQ, MGM_C0, 1'b0, MGM_EN0, MGM_D0, vcc, vssx, notifier );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst5( o, IQ, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst1( MGM_EN0, clk );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_1 inst2( MGM_C0, rb );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst3( MGM_D0, d );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_N_IQ_LATCH_UDP inst4( IQ, MGM_C0, 1'b0, MGM_EN0, MGM_D0, notifier );
   INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_0 inst5( o, IQ );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsspcl_qsnfa4ac_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsspcl_qsnla3ac_func(  `ifdef POWER_AWARE_MODE  vcc, vssx `endif );
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif


endmodule
`endcelldefine 




`celldefine 


module i0sqsffa4ac1d06x5( clk, d, den, o, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// RedCap scan DFF with scanout and Re-circulating data-enable and asynch reset o = {((si*!ssb)+(ssb*(rb*((den*d)+(!den*o))))) on rising clk} so = {((si*!ssb)+(ssb*(rb*((den*d)+(!den*o))))) on rising clk}
// 
// 
// always @ (posedge clk or negedge rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else
// begin
// IQ <= den ? d : IQ ;
// end
// end
// 
// assign `qsffa4ac_delay o =  IQ;
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
      INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_func i0sqsffa4ac1d06x5_behav_inst(.clk(clk),.d(d),.den(den),.o(o_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qsffa4ac_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_func i0sqsffa4ac1d06x5_behav_inst(.clk(clk),.d(d),.den(den),.o(o_tmp),.rb(rb),.notifier(1'b0));
      assign `qsffa4ac_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire den_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_func i0sqsffa4ac1d06x5_inst(.clk(clk_delay),.d(d_delay),.den(den_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsffa4ac_func i0sqsffa4ac1d06x5_inst(.clk(clk_delay),.d(d_delay),.den(den_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G85(MGM_W52,d_delay);
   and MGM_G86(MGM_W53,den_delay,MGM_W52);
   and MGM_G87(ENABLE_NOT_d_AND_den_AND_rb,rb_delay,MGM_W53);
   and MGM_G88(MGM_W54,den_delay,d_delay);
   and MGM_G89(ENABLE_d_AND_den_AND_rb,rb_delay,MGM_W54);
   and MGM_G90(ENABLE_den_AND_rb,rb_delay,den_delay);
   not MGM_G91(MGM_W55,d_delay);
   and MGM_G92(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W55);
   and MGM_G93(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G94(ENABLE_den,den_delay);
   not MGM_G95(MGM_W56,clk_delay);
   not MGM_G96(MGM_W57,d_delay);
   and MGM_G97(MGM_W58,MGM_W57,MGM_W56);
   not MGM_G98(MGM_W59,den_delay);
   and MGM_G99(ENABLE_NOT_clk_AND_NOT_d_AND_NOT_den,MGM_W59,MGM_W58);
   not MGM_G100(MGM_W60,clk_delay);
   not MGM_G101(MGM_W61,d_delay);
   and MGM_G102(MGM_W62,MGM_W61,MGM_W60);
   and MGM_G103(ENABLE_NOT_clk_AND_NOT_d_AND_den,den_delay,MGM_W62);
   not MGM_G104(MGM_W63,clk_delay);
   and MGM_G105(MGM_W64,d_delay,MGM_W63);
   not MGM_G106(MGM_W65,den_delay);
   and MGM_G107(ENABLE_NOT_clk_AND_d_AND_NOT_den,MGM_W65,MGM_W64);
   not MGM_G108(MGM_W66,clk_delay);
   and MGM_G109(MGM_W67,d_delay,MGM_W66);
   and MGM_G110(ENABLE_NOT_clk_AND_d_AND_den,den_delay,MGM_W67);
   not MGM_G111(MGM_W68,d_delay);
   and MGM_G112(MGM_W69,MGM_W68,clk_delay);
   not MGM_G113(MGM_W70,den_delay);
   and MGM_G114(ENABLE_clk_AND_NOT_d_AND_NOT_den,MGM_W70,MGM_W69);
   not MGM_G115(MGM_W71,d_delay);
   and MGM_G116(MGM_W72,MGM_W71,clk_delay);
   and MGM_G117(ENABLE_clk_AND_NOT_d_AND_den,den_delay,MGM_W72);
   and MGM_G118(MGM_W73,d_delay,clk_delay);
   not MGM_G119(MGM_W74,den_delay);
   and MGM_G120(ENABLE_clk_AND_d_AND_NOT_den,MGM_W74,MGM_W73);
   and MGM_G121(MGM_W75,d_delay,clk_delay);
   and MGM_G122(ENABLE_clk_AND_d_AND_den,den_delay,MGM_W75);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && den==1'b1 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      ifnone
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(d==1'b1 && den==1'b1 && rb==1'b1)
      // seq arc clk --> o
      (posedge clk => (o : d))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b0 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b0 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && den==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1 && den==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      $width(negedge clk &&& (ENABLE_NOT_d_AND_den_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_den_AND_rb == 1'b1)
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
      
      // recrem rb-clk-posedge
      $recrem(posedge rb &&& (ENABLE_den == 1'b1),
      posedge clk &&& (ENABLE_den == 1'b1),
      0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      // recrem rb-clk-posedge
      $recrem(posedge rb,posedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_NOT_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d_AND_NOT_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_clk_AND_d_AND_den == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsfla3ac1d06x5( clk, d, o, rb `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// m1 ecoable functional spare async latch
// 
// 
// always @ (clk or d or rb)
// begin
// if (!rb)
// begin
// IQ <= 1'b0 ;
// end
// else if (clk)
// begin
// IQ <= d;
// end
// end
// 
// assign `qsfla3ac_delay o =  IQ;
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
      INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_func i0sqsfla3ac1d06x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.notifier(1'b0),.vcc(vcc),.vssx(vssx));
      assign `qsfla3ac_delay o_random_init = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_func i0sqsfla3ac1d06x5_behav_inst(.clk(clk),.d(d),.o(o_tmp),.rb(rb),.notifier(1'b0));
      assign `qsfla3ac_delay o_random_init = o_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire d_delay ;
   wire rb_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_func i0sqsfla3ac1d06x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsfla3ac_func i0sqsfla3ac1d06x5_inst(.clk(clk_delay),.d(d_delay),.o(o_random_init),.rb(rb_delay),.notifier(notifier));
   `endif
   
   // spec_gates_begin
   not MGM_G9(MGM_W4,d_delay);
   and MGM_G10(ENABLE_NOT_d_AND_rb,rb_delay,MGM_W4);
   and MGM_G11(ENABLE_d_AND_rb,rb_delay,d_delay);
   buf MGM_G12(ENABLE_rb,rb_delay);
   not MGM_G13(MGM_W5,clk_delay);
   not MGM_G14(MGM_W6,d_delay);
   and MGM_G15(ENABLE_NOT_clk_AND_NOT_d,MGM_W6,MGM_W5);
   not MGM_G16(MGM_W7,clk_delay);
   and MGM_G17(ENABLE_NOT_clk_AND_d,d_delay,MGM_W7);
   // spec_gates_end
   specify


   // specify_block_begin
      if(d==1'b0 && rb==1'b1)
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
      
      if(clk==1'b0 && d==1'b0)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b0 && d==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      if(clk==1'b1 && d==1'b1)
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (negedge rb => (o +: 1'b0))  = (0.0,0.0);
      
      ifnone
      // seq arc rb --> o
      (posedge rb => (o +: 1'b1))  = (0.0,0.0);
      
      $width(posedge clk &&& (ENABLE_NOT_d_AND_rb == 1'b1)
      ,0.0,0,notifier);
      
      $width(posedge clk &&& (ENABLE_d_AND_rb == 1'b1)
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
      
      // recrem rb-clk-negedge
      $recrem(posedge rb,negedge clk,0.0,0.0,notifier,,,rb_delay,clk_delay);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_NOT_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb &&& (ENABLE_NOT_clk_AND_d == 1'b1)
      ,0.0,0,notifier);
      
      $width(negedge rb,0.0,0,notifier);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sqsnfa4ac1d06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// m1 ecoable non-functional spare async FF
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnfa4ac_func i0sqsnfa4ac1d06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnfa4ac_func i0sqsnfa4ac1d06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnfa4ac_func i0sqsnfa4ac1d06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnfa4ac_func i0sqsnfa4ac1d06x5_inst();
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


module i0sqsnla3ac1d06x5(  `ifdef POWER_AWARE_MODE vcc, vssx `endif );

// 
// m1 ecoable non-functional spare async latch
// 
// 
// 

`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnla3ac_func i0sqsnla3ac1d06x5_behav_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnla3ac_func i0sqsnla3ac1d06x5_behav_inst();
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnla3ac_func i0sqsnla3ac1d06x5_inst(.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsspcl_qsnla3ac_func i0sqsnla3ac1d06x5_inst();
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




