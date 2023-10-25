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
//       Created on: Tue Oct 24 19:28:51 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate2_tessent_tdr_intest_edt_scan_bi_sol_status (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  input wire sol_out,
  input wire [1:0] sol_tog_status,
  input wire [14:0] sol_cnt_status,
  output wire ijtag_so
);
reg    [17:0]       tdr;
reg                 retiming_so ;
 
 
 
// --------- ShiftRegister ---------
 
always @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    tdr <= { sol_out,
             sol_tog_status[1],
             sol_tog_status[0],
             sol_cnt_status[14],
             sol_cnt_status[13],
             sol_cnt_status[12],
             sol_cnt_status[11],
             sol_cnt_status[10],
             sol_cnt_status[9],
             sol_cnt_status[8],
             sol_cnt_status[7],
             sol_cnt_status[6],
             sol_cnt_status[5],
             sol_cnt_status[4],
             sol_cnt_status[3],
             sol_cnt_status[2],
             sol_cnt_status[1],
             sol_cnt_status[0]};
  end else if (ijtag_se & ijtag_sel) begin
    tdr <= {ijtag_si,tdr[17:1]};
  end
end
 
assign ijtag_so = retiming_so;
always @ (ijtag_tck or tdr[0]) begin
  if (~ijtag_tck) begin
    retiming_so <= tdr[0];
  end
end
 
endmodule
