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
     `ifndef crb4a2ac_delay
        `define crb4a2ac_delay `clkcell_delay_value
     `endif
     `ifndef crb4bfac_delay
        `define crb4bfac_delay `clkcell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_0( clkout, clk, en `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output clkout;
  input clk, en;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //clk, en vcc, vssx: clkout
    1  1  1  0: 1;
    0  ?  1  0: 0;
    ?  0  1  0: 0;
  `else
  //clk, en: clkout
    1  1: 1;
    0  ?: 0;
    ?  0: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_0 inst1( clkout, clk, en, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_0 inst1( clkout, clk, en );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_1( clkout, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_1 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_1 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n02x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n02x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n02x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n03x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n03x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n03x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n04x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n04x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n04x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n06x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n06x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n06x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n09x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n09x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n09x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n12x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n12x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n12x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4a2ac1n18x5( clk, clkout, en, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// high speed version of AND type clock RCB with debug pins
// 
// 
// assign `crb4a2ac_delay clkout =  clk&en;
// 

   input clk, en, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.en(en),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4a2ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n18x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4a2ac_func i0scrb4a2ac1n18x5_inst(.clk(clk_delay),.clkout(clkout),.en(en),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   not MGM_G12(MGM_W8,fd0_delay);
   not MGM_G13(MGM_W9,fd1_delay);
   and MGM_G14(MGM_W10,MGM_W9,MGM_W8);
   and MGM_G15(MGM_W11,rd0_delay,MGM_W10);
   and MGM_G16(ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1,rd1_delay,MGM_W11);
   buf MGM_G17(ENABLE_en,en);
   // spec_gates_end
   specify


   // specify_block_begin
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(en==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      if(clk==1'b1 && fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge en --> clkout
      (negedge en => (clkout:en)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge en --> clkout
      (posedge en => (clkout:en)) = (0.0,0.0);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,
      posedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,
      negedge en &&& (ENABLE_NOT_fd0_AND_NOT_fd1_AND_rd0_AND_rd1 == 1'b1),0.0,0.0, notifier);
      
      // nochange en-LH clk-LH
      $nochange(posedge clk,posedge en,0.0,0.0, notifier);
      
      // nochange en-HL clk-LH
      $nochange(posedge clk,negedge en,0.0,0.0, notifier);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      
      // setuphold fd0- clk-HL
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      negedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk &&& (ENABLE_en == 1'b1),
      posedge fd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      
      // setuphold fd1- clk-HL
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd0 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      
      // setuphold rd0- clk-LH
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      negedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk &&& (ENABLE_en == 1'b1),
      posedge rd1 &&& (ENABLE_en == 1'b1),
      0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      
      // setuphold rd1- clk-LH
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n02x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n02x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n02x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n02x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n03x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n03x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n03x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n03x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n04x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n04x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n04x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n04x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n06x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n06x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n06x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n06x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n09x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n09x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n09x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n09x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n12x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n12x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n12x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n12x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0scrb4bfac1n18x5( clk, clkout, fd0, fd1, rd0, rd1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// buffer RCB with debug pin
// 
// 
// buf `crb4bfac_delay (clkout, clk);
// 

   input clk, fd0, fd1, rd0, rd1;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1),.vcc(vcc),.vssx(vssx));
      assign `crb4bfac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.fd0(fd0),.fd1(fd1),.rd0(rd0),.rd1(rd1));
      assign `crb4bfac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   wire clk_delay ;
   wire fd0_delay ;
   wire fd1_delay ;
   wire rd0_delay ;
   wire rd1_delay ;
   reg notifier;
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n18x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi1_crb4bfac_func i0scrb4bfac1n18x5_inst(.clk(clk_delay),.clkout(clkout),.fd0(fd0_delay),.fd1(fd1_delay),.rd0(rd0_delay),.rd1(rd1_delay));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      if(fd0==1'b0 && fd1==1'b0 && rd0==1'b1 && rd1==1'b1)
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge clk --> clkout
      (negedge clk => (clkout:clk)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge clk --> clkout
      (posedge clk => (clkout:clk)) = (0.0,0.0);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,negedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd0- clk-HL
      $setuphold(negedge clk,posedge fd0,0.0,0.0,notifier,,,clk_delay,fd0_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,negedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold fd1- clk-HL
      $setuphold(negedge clk,posedge fd1,0.0,0.0,notifier,,,clk_delay,fd1_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,negedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd0- clk-LH
      $setuphold(posedge clk,posedge rd0,0.0,0.0,notifier,,,clk_delay,rd0_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,negedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      // setuphold rd1- clk-LH
      $setuphold(posedge clk,posedge rd1,0.0,0.0,notifier,,,clk_delay,rd1_delay);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




