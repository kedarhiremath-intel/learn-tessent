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
//       Created on: Sun Oct 29 14:14:48 PDT 2023
//--------------------------------------------------------------------------

module firebird7_in_gate1_tessent_mbist_diagnosis_ready (
  input wire ijtag_reset,
  input wire ijtag_sel,
  input wire ijtag_si,
  input wire ijtag_ce,
  input wire ijtag_se,
  input wire ijtag_ue,
  input wire ijtag_tck,
  output wire ijtag_so,
  input wire  DiagnosisReady_ctl_in,
  input wire DiagnosisReady_aux_in,
  output wire StableBlock
);
 
reg             tdr,tdr_nr;
reg             retiming_so ;
wire  DiagnosisReady_ctl_int;
assign DiagnosisReady_ctl_int = ~tdr_nr | DiagnosisReady_ctl_in;
 
wire DiagnosisReady_int;
assign DiagnosisReady_int = DiagnosisReady_aux_in & (&DiagnosisReady_ctl_int);
assign StableBlock = DiagnosisReady_int;
 
reg sib,sib_latch;
 
wire tdr_select;
assign tdr_select = ijtag_sel & sib_latch;
always_ff @ (posedge ijtag_tck) begin
  if (ijtag_ce & tdr_select ) begin
    tdr <= 1'b0;
  end else if (ijtag_se & tdr_select ) begin
    tdr <= ijtag_si;
  end
end
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    tdr_nr <= 1'b0;
  end else begin
    if (ijtag_ue & tdr_select ) begin
      tdr_nr <= tdr;
    end
  end
end
// Sib / Observation flop {{{
always_ff @ (posedge ijtag_tck) begin
  if (ijtag_ce & ijtag_sel) begin
    sib <= DiagnosisReady_int;
  end else begin 
    if (ijtag_se & ijtag_sel ) begin
      if ( sib_latch ) begin
        sib <= tdr;
      end else begin
        sib <= ijtag_si;
      end
    end
  end
end
always_ff @ (negedge ijtag_tck or negedge ijtag_reset) begin
  if (~ijtag_reset) begin
    sib_latch <= 1'b0;
  end else begin
    if (ijtag_ue & ijtag_sel) begin
      sib_latch <= sib;
    end
  end
end
// Observation flop }}}
always_latch begin
  if ( ~ijtag_tck ) begin
    retiming_so <= sib;
  end
end
assign ijtag_so = retiming_so;
 
 
endmodule
