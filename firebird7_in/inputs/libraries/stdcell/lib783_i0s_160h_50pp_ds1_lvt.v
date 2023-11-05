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
     `ifndef aoi012qb_delay
        `define aoi012qb_delay `cell_delay_value
     `endif
     `ifndef aoi022qb_delay
        `define aoi022qb_delay `cell_delay_value
     `endif
     `ifndef bfn000qb_delay
        `define bfn000qb_delay `cell_delay_value
     `endif
     `ifndef inv000qb_delay
        `define inv000qb_delay `cell_delay_value
     `endif
     `ifndef nanp02qb_delay
        `define nanp02qb_delay `cell_delay_value
     `endif
     `ifndef nanp03qb_delay
        `define nanp03qb_delay `cell_delay_value
     `endif
     `ifndef norp02qb_delay
        `define norp02qb_delay `cell_delay_value
     `endif
     `ifndef norp03qb_delay
        `define norp03qb_delay `cell_delay_value
     `endif
     `ifndef oai012qb_delay
        `define oai012qb_delay `cell_delay_value
     `endif
     `ifndef oai022qb_delay
        `define oai022qb_delay `cell_delay_value
     `endif
  `endif



primitive INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_0( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  0  ?  1  0: 1;
    0  ?  0  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  1  1  0: 0;
  `else
  //a, b, c: o1
    0  0  ?: 1;
    0  ?  0: 1;
    1  ?  ?: 0;
    ?  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_0 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_0 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_1( o1, a, c, d, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, c, d, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, c, d, b vcc, vssx: o1
    0  0  ?  ?  1  0: 1;
    0  ?  0  ?  1  0: 1;
    ?  0  ?  0  1  0: 1;
    ?  ?  0  0  1  0: 1;
    1  ?  ?  1  1  0: 0;
    ?  1  1  ?  1  0: 0;
  `else
  //a, c, d, b: o1
    0  0  ?  ?: 1;
    0  ?  0  ?: 1;
    ?  0  ?  0: 1;
    ?  ?  0  0: 1;
    1  ?  ?  1: 0;
    ?  1  1  ?: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_1 inst1( o1, a, c, d, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_1 inst1( o1, a, c, d, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_2( o, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_2 inst1( o, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_2 inst1( o, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_inv000qb_3( o1, a `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
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


module INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_inv000qb_3 inst1( o1, a, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_inv000qb_3 inst1( o1, a );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_4( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: o1
    0  ?  1  0: 1;
    ?  0  1  0: 1;
    1  1  1  0: 0;
  `else
  //a, b: o1
    0  ?: 1;
    ?  0: 1;
    1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_4 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_4 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_5( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  ?  ?  1  0: 1;
    ?  0  ?  1  0: 1;
    ?  ?  0  1  0: 1;
    1  1  1  1  0: 0;
  `else
  //a, b, c: o1
    0  ?  ?: 1;
    ?  0  ?: 1;
    ?  ?  0: 1;
    1  1  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_5 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_5 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_norp02qb_6( o1, a, b `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b vcc, vssx: o1
    0  0  1  0: 1;
    1  ?  1  0: 0;
    ?  1  1  0: 0;
  `else
  //a, b: o1
    0  0: 1;
    1  ?: 0;
    ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_norp02qb_6 inst1( o1, a, b, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_norp02qb_6 inst1( o1, a, b );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_norp03qb_7( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  0  0  1  0: 1;
    1  ?  ?  1  0: 0;
    ?  1  ?  1  0: 0;
    ?  ?  1  1  0: 0;
  `else
  //a, b, c: o1
    0  0  0: 1;
    1  ?  ?: 0;
    ?  1  ?: 0;
    ?  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_norp03qb_7 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_norp03qb_7 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_oai012qb_8( o1, a, b, c `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c vcc, vssx: o1
    0  ?  ?  1  0: 1;
    ?  0  0  1  0: 1;
    1  1  ?  1  0: 0;
    1  ?  1  1  0: 0;
  `else
  //a, b, c: o1
    0  ?  ?: 1;
    ?  0  0: 1;
    1  1  ?: 0;
    1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_oai012qb_8 inst1( o1, a, b, c, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_oai012qb_8 inst1( o1, a, b, c );
`endif

endmodule
`endcelldefine 




primitive INTC_lib783_i0s_160h_50pp_ds1_oai022qb_9( o1, a, b, c, d `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
  output o1;
  input a, b, c, d;
  `ifdef POWER_AWARE_MODE
  input vcc, vssx;
  `endif

  table
  `ifdef POWER_AWARE_MODE
  //a, b, c, d vcc, vssx: o1
    0  0  ?  ?  1  0: 1;
    ?  ?  0  0  1  0: 1;
    1  ?  1  ?  1  0: 0;
    1  ?  ?  1  1  0: 0;
    ?  1  1  ?  1  0: 0;
    ?  1  ?  1  1  0: 0;
  `else
  //a, b, c, d: o1
    0  0  ?  ?: 1;
    ?  ?  0  0: 1;
    1  ?  1  ?: 0;
    1  ?  ?  1: 0;
    ?  1  1  ?: 0;
    ?  1  ?  1: 0;
  `endif
  endtable

endprimitive


`celldefine 


module INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );
   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   inout  vcc;
   inout  vssx;
`endif

`ifdef POWER_AWARE_MODE
   INTC_lib783_i0s_160h_50pp_ds1_oai022qb_9 inst1( o1, a, b, c, d, vcc, vssx );
`else
   INTC_lib783_i0s_160h_50pp_ds1_oai022qb_9 inst1( o1, a, b, c, d );
`endif

endmodule
`endcelldefine 




`celldefine 


module i0saoi012qb1d18x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012qb_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d18x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d18x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d18x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d18x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi012qb1d24x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012qb_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi012qb1n06x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012qb_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi012qb1n09x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012qb_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi012qb1n12x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input AOI o1 = !(bc+a)
// 
// 
// assign `aoi012qb_delay o1 =  ~a&~b | ~a&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `aoi012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n12x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi012qb_func i0saoi012qb1n12x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi022qb1d18x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022qb_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d18x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d18x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d18x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d18x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi022qb1d24x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022qb_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d24x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1d24x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi022qb1n06x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022qb_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi022qb1n09x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022qb_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n09x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n09x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0saoi022qb1n12x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two AND2-OR-INVERT o1 = !((a*b)+(c*d))
// 
// 
// assign `aoi022qb_delay o1 =  ~a&~c | ~a&~d | ~b&~c | ~b&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `aoi022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `aoi022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n12x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_aoi022qb_func i0saoi022qb1n12x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b1)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0sbfn000qb1d42x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d42x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d42x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d42x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d42x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1d48x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d48x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d48x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d48x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1d48x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n09x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n09x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n09x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n09x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n09x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n12x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n12x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n12x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n12x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n12x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n18x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n18x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n18x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n18x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n18x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n21x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n21x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n21x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n21x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n21x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n24x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n24x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n24x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n24x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n24x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n30x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n30x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n30x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n30x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n30x5_inst(.a(a),.o(o));
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


module i0sbfn000qb1n36x5( a, o `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2 stage balanced regular internal fanout buffer o = !(!a)
// 
// 
// buf `bfn000qb_delay (o, a);
// 

   input a;
   output o;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n36x5_behav_inst(.a(a),.o(o_tmp),.vcc(vcc),.vssx(vssx));
      assign `bfn000qb_delay o = o_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n36x5_behav_inst(.a(a),.o(o_tmp));
      assign `bfn000qb_delay o = o_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n36x5_inst(.a(a),.o(o),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_bfn000qb_func i0sbfn000qb1n36x5_inst(.a(a),.o(o));
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


module i0sinv000qb1d42x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d42x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d42x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d42x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d42x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1d48x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d48x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d48x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d48x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1d48x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n09x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n09x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n09x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n09x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n09x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n12x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n12x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n12x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n12x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n12x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n15x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n15x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n15x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n15x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n15x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n18x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n18x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n18x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n18x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n18x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n21x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n21x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n21x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n21x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n21x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n24x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n24x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n24x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n24x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n24x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n30x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n30x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n30x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n30x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n30x5_inst(.a(a),.o1(o1));
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


module i0sinv000qb1n36x5( a, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// Regular inverter o1 = !(a)
// 
// 
// assign `inv000qb_delay o1 =  ~a;
// 

   input a;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n36x5_behav_inst(.a(a),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `inv000qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n36x5_behav_inst(.a(a),.o1(o1_tmp));
      assign `inv000qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n36x5_inst(.a(a),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_inv000qb_func i0sinv000qb1n36x5_inst(.a(a),.o1(o1));
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


module i0snanp02qb1n06x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// packed Z 2-input nand
// 
// 
// assign `nanp02qb_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nanp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n06x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n06x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp02qb1n09x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// packed Z 2-input nand
// 
// 
// assign `nanp02qb_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n09x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n09x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nanp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n09x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n09x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp02qb1n12x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// packed Z 2-input nand
// 
// 
// assign `nanp02qb_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n12x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n12x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nanp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n12x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n12x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp02qb1n24x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// packed Z 2-input nand
// 
// 
// assign `nanp02qb_delay o1 =  ~a | ~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n24x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n24x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `nanp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n24x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp02qb_func i0snanp02qb1n24x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp03qb1d12x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand P/N=0.7
// 
// 
// assign `nanp03qb_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nanp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d12x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d12x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp03qb1d24x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand P/N=0.7
// 
// 
// assign `nanp03qb_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nanp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp03qb1n06x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand P/N=0.7
// 
// 
// assign `nanp03qb_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nanp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snanp03qb1n09x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input nand P/N=0.7
// 
// 
// assign `nanp03qb_delay o1 =  ~a | ~b | ~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `nanp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `nanp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_nanp03qb_func i0snanp03qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp02qb1n06x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input NOR packed Z
// 
// 
// assign `norp02qb_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n06x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `norp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n06x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n06x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp02qb1n09x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input NOR packed Z
// 
// 
// assign `norp02qb_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n09x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n09x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `norp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n09x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n09x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp02qb1n12x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input NOR packed Z
// 
// 
// assign `norp02qb_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n12x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n12x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `norp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n12x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n12x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp02qb1n24x5( a, b, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 2-input NOR packed Z
// 
// 
// assign `norp02qb_delay o1 =  ~a&~b;
// 

   input a, b;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n24x5_behav_inst(.a(a),.b(b),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp02qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n24x5_behav_inst(.a(a),.b(b),.o1(o1_tmp));
      assign `norp02qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n24x5_inst(.a(a),.b(b),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp02qb_func i0snorp02qb1n24x5_inst(.a(a),.b(b),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp03qb1d12x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input NOR packed Z
// 
// 
// assign `norp03qb_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `norp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d12x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d12x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp03qb1d24x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input NOR packed Z
// 
// 
// assign `norp03qb_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `norp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp03qb1n06x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input NOR packed Z
// 
// 
// assign `norp03qb_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `norp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0snorp03qb1n09x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3-input NOR packed Z
// 
// 
// assign `norp03qb_delay o1 =  ~a&~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `norp03qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `norp03qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_norp03qb_func i0snorp03qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai012qb1d24x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012qb_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1d24x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai012qb1n06x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012qb_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n06x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai012qb1n09x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012qb_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n09x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai012qb1n12x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012qb_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n12x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n12x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai012qb1n18x5( a, b, c, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 3 input OR2-AND2-INVERT o1 = !{a*(b+c)}
// 
// 
// assign `oai012qb_delay o1 =  ~a | ~b&~c;
// 

   input a, b, c;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n18x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai012qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n18x5_behav_inst(.a(a),.b(b),.c(c),.o1(o1_tmp));
      assign `oai012qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n18x5_inst(.a(a),.b(b),.c(c),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai012qb_func i0soai012qb1n18x5_inst(.a(a),.b(b),.c(c),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b1 && c==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && c==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai022qb1d18x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022qb_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d18x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d18x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d18x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d18x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai022qb1d24x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022qb_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d24x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d24x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1d24x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai022qb1n06x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022qb_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n06x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n06x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai022qb1n09x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022qb_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n09x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n09x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n09x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




`celldefine 


module i0soai022qb1n12x5( a, b, c, d, o1 `ifdef POWER_AWARE_MODE , vcc, vssx `endif );

// 
// 4 input Two OR2-AND2-INVERT o1 = !{(d+c)*(b+a)}
// 
// 
// assign `oai022qb_delay o1 =  ~a&~b | ~c&~d;
// 

   input a, b, c, d;
   output o1;
`ifdef POWER_AWARE_MODE
   (* pg_type = "primary_power" *) inout vcc;
   (* pg_type = "primary_ground" *) inout vssx;
`endif

`ifdef FUNCTIONAL  //  functional //
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp),.vcc(vcc),.vssx(vssx));
      assign `oai022qb_delay o1 = o1_tmp ;
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n12x5_behav_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1_tmp));
      assign `oai022qb_delay o1 = o1_tmp ;
      
   `endif
   
`else
   
   `ifdef POWER_AWARE_MODE
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n12x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1),.vcc(vcc),.vssx(vssx));
   `else
      INTC_lib783_i0s_160h_50pp_ds1_oai022qb_func i0soai022qb1n12x5_inst(.a(a),.b(b),.c(c),.d(d),.o1(o1));
   `endif
   
   // spec_gates_begin
   // spec_gates_end
   specify


   // specify_block_begin
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      if(b==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge a --> o1
      (posedge a => (o1:a)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge a --> o1
      (negedge a => (o1:a)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b0 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b0)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && c==1'b1 && d==1'b1)
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge b --> o1
      (posedge b => (o1:b)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge b --> o1
      (negedge b => (o1:b)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && d==1'b0)
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge c --> o1
      (posedge c => (o1:c)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge c --> o1
      (negedge c => (o1:c)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b0 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b0 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      if(a==1'b1 && b==1'b1 && c==1'b0)
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc posedge d --> o1
      (posedge d => (o1:d)) = (0.0,0.0);
      
      ifnone
      // comb arc negedge d --> o1
      (negedge d => (o1:d)) = (0.0,0.0);
      
      
   // specify_block_end 
   endspecify

`endif 


endmodule
`endcelldefine 




