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
     `ifndef aob012ab_delay
        `define aob012ab_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_0( out0, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_0 inst1( out0, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_0 inst1( out0, a, b, c );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0saob012ab1d30x5( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ab_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d30x5_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ab_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d30x5_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ab_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d30x5_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d30x5_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0saob012ab1d36x5( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ab_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d36x5_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ab_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d36x5_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ab_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d36x5_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1d36x5_inst(.a(a),.b(b),.c(c),.out0(out0));
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


module i0saob012ab1n04x5( a, b, c, out0 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AND-OR realized using two NAND2 out0 = !a + b*c
// 
// 
// assign `aob012ab_delay out0 =  ~a | b&c;
// 

   input a, b, c;
   output out0;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1n04x5_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp),.vcc(vcc),.vssx(vssx));
      assign `aob012ab_delay out0 = out0_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1n04x5_behav_inst(.a(a),.b(b),.c(c),.out0(out0_tmp));
      assign `aob012ab_delay out0 = out0_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1n04x5_inst(.a(a),.b(b),.c(c),.out0(out0),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_edrbase_aob012ab_func i0saob012ab1n04x5_inst(.a(a),.b(b),.c(c),.out0(out0));
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




