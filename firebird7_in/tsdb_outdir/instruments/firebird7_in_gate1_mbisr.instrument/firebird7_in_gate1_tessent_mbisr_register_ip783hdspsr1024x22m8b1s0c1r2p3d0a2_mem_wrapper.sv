//--------------------------------------------------------------------------
//
//  Unpublished work. Copyright 2022 Siemens
//
//  This material contains trade secrets or otherwise confidential 
//  information owned by Siemens Industry Software Inc. or its affiliates 
//  (collectively, SISW), or its licensors. Access to and use of this 
//  information is strictly limited as set forth in the Customer's 
//  applicable agreements with SISW.
//
//--------------------------------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Sun Oct 29 14:14:53 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_mbisr_register_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper (
  input wire CLK,
  input wire RSTB,
  input wire SI,
  output wire SO,
  input wire SE,
  input wire [21:0] D,
  input wire MSO,
  input wire MSEL,
  output wire [21:0] Q
);
reg [21:0] ShiftReg;
reg       retime;
// synopsys async_set_reset "RSTB"
always_ff @ ( posedge CLK or negedge RSTB) begin
 if (~RSTB) begin
   ShiftReg <= 0;
 end else begin
   if (SE) begin
     ShiftReg <= {SI,ShiftReg[21:1]};
   end else begin
     ShiftReg <= D;
   end
 end
end
// synopsys async_set_reset "RSTB"
always_ff @ (negedge CLK or negedge RSTB) begin
 if (~RSTB) begin
   retime <= 0;
 end else begin
   if (MSEL) 
      retime <= MSO;
   else
      retime <= ShiftReg[0];
 end
end
assign SO = retime;
assign Q  = ShiftReg[21:0];
 
 
endmodule
