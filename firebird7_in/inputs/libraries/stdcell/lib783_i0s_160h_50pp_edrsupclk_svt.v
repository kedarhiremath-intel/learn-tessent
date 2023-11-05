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
     `ifndef cbf014ac_delay
        `define cbf014ac_delay `clkcell_delay_value
     `endif
     `ifndef cbf026ac_delay
        `define cbf026ac_delay `clkcell_delay_value
     `endif
     `ifndef cbf036ac_delay
        `define cbf036ac_delay `clkcell_delay_value
     `endif
     `ifndef cbf102ac_delay
        `define cbf102ac_delay `clkcell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0( clkout, clk `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_0 inst1( clkout, clk );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0scbf014ac1n15x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage clockbuffer with 1 stacked input stage
// 
// 
// buf `cbf014ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf014ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf014ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n15x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n15x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf014ac1n18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 stage clockbuffer with 1 stacked input stage
// 
// 
// buf `cbf014ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf014ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf014ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n18x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf014ac_func i0scbf014ac1n18x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf026ac1n15x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage clockbuffer with 2 stacked input stages
// 
// 
// buf `cbf026ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf026ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf026ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n15x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n15x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf026ac1n18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage clockbuffer with 2 stacked input stages
// 
// 
// buf `cbf026ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf026ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf026ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n18x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf026ac_func i0scbf026ac1n18x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf036ac1n15x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage clockbuffer with 3 stacked input stages
// 
// 
// buf `cbf036ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf036ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf036ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n15x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n15x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf036ac1n18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 6 stage clockbuffer with 3 stacked input stages
// 
// 
// buf `cbf036ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf036ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf036ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n18x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf036ac_func i0scbf036ac1n18x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf102ac1n15x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage clockbuffer with stacked input stage
// 
// 
// buf `cbf102ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf102ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n15x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf102ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n15x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n15x5_inst(.clk(clk),.clkout(clkout));
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


module i0scbf102ac1n18x5( clk, clkout `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage clockbuffer with stacked input stage
// 
// 
// buf `cbf102ac_delay (clkout, clk);
// 

   input clk;
   output clkout;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp),.vcc(vcc),.vssx(vssx));
      assign `cbf102ac_delay clkout = clkout_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n18x5_behav_inst(.clk(clk),.clkout(clkout_tmp));
      assign `cbf102ac_delay clkout = clkout_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n18x5_inst(.clk(clk),.clkout(clkout),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrsupclk_cbf102ac_func i0scbf102ac1n18x5_inst(.clk(clk),.clkout(clkout));
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




