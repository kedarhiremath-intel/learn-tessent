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
//       Created on: Sun Oct 29 14:37:19 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe (
  // Stream bus signals
  input wire          bus_clock,
  input wire  [19:0]  bus_data_in,
  output wire [19:0]  bus_data_out,
  // IJTAG signals
  input wire          ijtag_reset 
);
 
wire                  bus_sync_reset_pulse;
wire                  bus_enable_sync_reset;
 
assign bus_enable_sync_reset = ~ijtag_reset;
 
firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_fsm fsm (
  .clock                      ( bus_clock               ),
  .bus_enable_sync_reset      ( bus_enable_sync_reset   ),
  .bus_sync_reset_pulse       ( bus_sync_reset_pulse    ) 
);
 
firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_datapath datapath (
  .clock                      ( bus_clock               ),
  .bus_data_in                ( bus_data_in             ),
  .bus_sync_reset_pulse       ( bus_sync_reset_pulse    ),
  .bus_data_out               ( bus_data_out            )
);
 
endmodule
 
module firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_fsm (
  input wire          clock,
  input wire bus_enable_sync_reset,
  output wire bus_sync_reset_pulse 
);
 
reg bus_sync_reset_ff;
 
always @ (posedge clock or posedge bus_enable_sync_reset) begin
  if (bus_enable_sync_reset) begin
    bus_sync_reset_ff       <= 1'b1;
  end else begin
    bus_sync_reset_ff       <= 1'b0;
  end
end
 
assign bus_sync_reset_pulse    = bus_sync_reset_ff;
 
endmodule
 
module firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe_datapath (
  input wire          clock,
  input wire  [19:0]  bus_data_in,
  input wire bus_sync_reset_pulse,
  output wire [19:0]  bus_data_out
);
 
reg    [19:0]         r0_n;
reg    [19:0]         r0;
 
 
// synopsys sync_set_reset "bus_sync_reset_pulse"
// Negedge clock is intended, this is retiming cell.
// spyglass disable_block W391
always @ (negedge clock) begin
  if (bus_sync_reset_pulse) begin
    r0_n <= 20'b0;
  end else begin
    r0_n <= bus_data_in;
  end
end
// spyglass enable_block W391
 
// synopsys sync_set_reset "bus_sync_reset_pulse"
always @ (posedge clock) begin
  if (bus_sync_reset_pulse) begin
    r0 <= 20'b0;
  end else begin
    r0 <= r0_n;
  end
end
 
assign bus_data_out = r0;
 
endmodule
