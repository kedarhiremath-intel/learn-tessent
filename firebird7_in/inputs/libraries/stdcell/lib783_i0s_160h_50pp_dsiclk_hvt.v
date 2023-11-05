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
  `endif






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
`else
`endif

endmodule
`endcelldefine 






`celldefine 


module INTC_lib783_i0s_160h_50pp_dsiclk_cfloadad_func( a, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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




`celldefine 


module i0scdloadad1d04x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d04x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d04x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d04x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d04x5_inst(.a(a));
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


module i0scdloadad1d06x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d06x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d06x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d06x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d06x5_inst(.a(a));
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


module i0scdloadad1d09x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d09x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d09x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d09x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d09x5_inst(.a(a));
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


module i0scdloadad1d12x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d12x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d12x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d12x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d12x5_inst(.a(a));
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


module i0scdloadad1d15x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d15x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d15x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d15x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d15x5_inst(.a(a));
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


module i0scdloadad1d18x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d18x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d18x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d18x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d18x5_inst(.a(a));
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


module i0scdloadad1d21x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d21x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d21x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d21x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d21x5_inst(.a(a));
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


module i0scdloadad1d24x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d24x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d24x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d24x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d24x5_inst(.a(a));
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


module i0scdloadad1d30x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d30x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d30x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d30x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d30x5_inst(.a(a));
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


module i0scdloadad1d36x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d36x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d36x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d36x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d36x5_inst(.a(a));
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


module i0scdloadad1d42x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d42x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d42x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d42x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d42x5_inst(.a(a));
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


module i0scdloadad1d48x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d48x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d48x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d48x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d48x5_inst(.a(a));
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


module i0scdloadad1d60x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d60x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d60x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d60x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d60x5_inst(.a(a));
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


module i0scdloadad1d72x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d72x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d72x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d72x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1d72x5_inst(.a(a));
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


module i0scdloadad1n02x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n02x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n02x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n02x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n02x5_inst(.a(a));
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


module i0scdloadad1n03x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n03x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n03x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n03x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n03x5_inst(.a(a));
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


module i0scdloadad1n04x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n04x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n04x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n04x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n04x5_inst(.a(a));
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


module i0scdloadad1n06x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n06x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n06x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n06x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n06x5_inst(.a(a));
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


module i0scdloadad1n09x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n09x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n09x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n09x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n09x5_inst(.a(a));
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


module i0scdloadad1n12x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n12x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n12x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n12x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n12x5_inst(.a(a));
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


module i0scdloadad1n15x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n15x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n15x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n15x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n15x5_inst(.a(a));
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


module i0scdloadad1n18x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n18x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n18x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n18x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n18x5_inst(.a(a));
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


module i0scdloadad1n21x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n21x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n21x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n21x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n21x5_inst(.a(a));
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


module i0scdloadad1n24x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n24x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n24x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n24x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n24x5_inst(.a(a));
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


module i0scdloadad1n30x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n30x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n30x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n30x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n30x5_inst(.a(a));
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


module i0scdloadad1n36x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n36x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n36x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n36x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n36x5_inst(.a(a));
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


module i0scdloadad1n42x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n42x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n42x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n42x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n42x5_inst(.a(a));
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


module i0scdloadad1n48x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n48x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n48x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n48x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n48x5_inst(.a(a));
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


module i0scdloadad1n60x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n60x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n60x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n60x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n60x5_inst(.a(a));
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


module i0scdloadad1n72x5( a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// dload with enable control
// 
// 
// 

   input a;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n72x5_behav_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n72x5_behav_inst(.a(a));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n72x5_inst(.a(a),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cdloadad_func i0scdloadad1n72x5_inst(.a(a));
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


module i0scfloadad1n02x5( a, sa `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

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
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadad_func i0scfloadad1n02x5_behav_inst(.a(a),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadad_func i0scfloadad1n02x5_behav_inst(.a(a),.sa(sa));
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadad_func i0scfloadad1n02x5_inst(.a(a),.sa(sa),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_dsiclk_cfloadad_func i0scfloadad1n02x5_inst(.a(a),.sa(sa));
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




