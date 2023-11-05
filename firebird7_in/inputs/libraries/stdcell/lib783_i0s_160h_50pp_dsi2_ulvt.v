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
     `ifndef bfrf30qa_delay
        `define bfrf30qa_delay `cell_delay_value
     `endif
     `ifndef inrf00qa_delay
        `define inrf00qa_delay `cell_delay_value
     `endif
     `ifndef inrf20qa_delay
        `define inrf20qa_delay `cell_delay_value
     `endif
     `ifndef inrf30qa_delay
        `define inrf30qa_delay `cell_delay_value
     `endif
     `ifndef inrf40qa_delay
        `define inrf40qa_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_0( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_0 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_0 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1( o1, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a );
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_1 inst1( o1, a );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0sbfrf30qa1d12x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d12x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d12x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d12x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d12x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d18x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d18x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d18x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d18x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d18x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d24x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d24x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d24x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d24x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d24x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d30x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d30x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d30x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d30x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d30x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d36x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d36x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d36x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d36x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d36x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d42x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d42x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d42x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d42x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d42x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d48x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d48x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d48x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d48x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d48x5_inst(.a(a),.o(o));
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


module i0sbfrf30qa1d72x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced repeater buffer
// 
// 
// buf `bfrf30qa_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d72x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfrf30qa_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d72x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfrf30qa_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d72x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_bfrf30qa_func i0sbfrf30qa1d72x5_inst(.a(a),.o(o));
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


module i0sinrf00qa1d12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d12x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d18x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d18x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d18x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d18x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d18x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d24x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d24x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d24x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d24x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d24x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d30x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d30x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d30x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d30x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d30x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d36x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d36x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d36x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d36x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d36x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d42x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d42x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d42x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d42x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d42x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d48x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d48x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d48x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d48x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d48x5_inst(.a(a),.o1(o1));
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


module i0sinrf00qa1d90x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf00qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d90x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf00qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d90x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf00qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d90x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf00qa_func i0sinrf00qa1d90x5_inst(.a(a),.o1(o1));
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


module i0sinrf20qa1d08x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf20qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d08x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf20qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d08x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf20qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d08x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d08x5_inst(.a(a),.o1(o1));
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


module i0sinrf20qa1d10x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf20qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d10x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf20qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d10x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf20qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d10x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d10x5_inst(.a(a),.o1(o1));
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


module i0sinrf20qa1d12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf20qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf20qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf20qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d12x5_inst(.a(a),.o1(o1));
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


module i0sinrf20qa1d16x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf20qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d16x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf20qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d16x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf20qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d16x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf20qa_func i0sinrf20qa1d16x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d12x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d18x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d18x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d18x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d18x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d18x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d24x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d24x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d24x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d24x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d24x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d30x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d30x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d30x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d30x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d30x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d36x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d36x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d36x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d36x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d36x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d42x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d42x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d42x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d42x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d42x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d48x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d48x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d48x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d48x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d48x5_inst(.a(a),.o1(o1));
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


module i0sinrf30qa1d72x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// balanced rise and fall inverter repeater
// 
// 
// assign `inrf30qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d72x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf30qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d72x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf30qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d72x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf30qa_func i0sinrf30qa1d72x5_inst(.a(a),.o1(o1));
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


module i0sinrf40qa1d12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf40qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf40qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf40qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d12x5_inst(.a(a),.o1(o1));
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


module i0sinrf40qa1d18x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf40qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d18x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf40qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d18x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf40qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d18x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d18x5_inst(.a(a),.o1(o1));
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


module i0sinrf40qa1d24x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf40qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d24x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf40qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d24x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf40qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d24x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d24x5_inst(.a(a),.o1(o1));
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


module i0sinrf40qa1d30x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// normal skew inverter P/N=1.1
// 
// 
// assign `inrf40qa_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d30x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inrf40qa_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d30x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inrf40qa_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d30x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsi2_inrf40qa_func i0sinrf40qa1d30x5_inst(.a(a),.o1(o1));
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




