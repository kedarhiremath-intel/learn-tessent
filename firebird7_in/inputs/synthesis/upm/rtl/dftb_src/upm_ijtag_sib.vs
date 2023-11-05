//------------------------------------------------------------------------------
//  INTEL CONFIDENTIAL
//
//  Copyright 2023 Intel Corporation All Rights Reserved.
//
//  The source code contained or described herein and all documents related
//  to the source code (Material) are owned by Intel Corporation or its
//  suppliers or licensors. Title to the Material remains with Intel
//  Corporation or its suppliers and licensors. The Material contains trade
//  secrets and proprietary and confidential information of Intel or its
//  suppliers and licensors. The Material is protected by worldwide copyright
//  and trade secret laws and treaty provisions. No part of the Material may
//  be used, copied, reproduced, modified, published, uploaded, posted,
//  transmitted, distributed, or disclosed in any way without Intel's prior
//  express written permission.
//
//  No license under any patent, copyright, trade secret or other intellectual
//  property right is granted to or conferred upon you by disclosure or
//  delivery of the Materials, either expressly, by implication, inducement,
//  estoppel or otherwise. Any license under such intellectual property rights
//  must be express and approved by Intel in writing.
//
//  Collateral Description:
//  dteg-upm
//
//  Source organization:
//  DTEG Engineering Group (DTEG)
//
//  Support Information:
//  HSD: https://hsdes.intel.com/appstore/article/#/dft_services.bugeco/create
//
//  Revision:
//  DTEG_UPM_2023WW17_FV_1P1_18A
//
//  Module upm_ijtag_sib
//
//------------------------------------------------------------------------------
`ifndef UPM_IJTAG_SIB_VS
`define UPM_IJTAG_SIB_VS


module upm_ijtag_sib #(
                        parameter SO_FLOP_ENABLE = 1,
                        parameter SIB_REG_ENABLE = 1
                 )
                (
                //input controls
                input  logic sib_reg_intel_design_select,
                input  logic tck,
                input  logic capture,
                input  logic shift,                
                input  logic update,
                input  logic sel,
                input  logic trstb,

                //output controls for registers and for next SIB
                output logic tck_out,
                output logic update_out,                
                output logic next_update_out,
                output logic shift_out,
                output logic capture_out,
                output logic sel_out,
                output logic trstb_out,

                //SIB TDI/TDO
                input  logic si,
                output logic so,

                //Register TDI/TDO/SEL
                output logic reg_si,                
                input  logic reg_so,
                output logic reg_sel,

                //next SIB TDI/TDO
                output logic next_si,
                input  logic next_so

            );
                
//------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
`include "upm_dft_build_macros.vh"
//------------------------------------------------------------------------------------------------------


  
logic            sib;
logic            sib_latch;
logic            to_enable_int;

logic update_L;

`UPM_CLKBF(tck_out,tck)


assign so = next_so;
assign reg_sel 	  	= to_enable_int & sel;
assign reg_si      	= si;
assign next_si 		= sib;
assign next_update_out = update;
assign update_out = (sib_reg_intel_design_select)? update_L : update;
assign shift_out = shift;
assign capture_out = capture;
assign sel_out = sel;
assign trstb_out = trstb;
////////////////////////////////////////////////////////////////////////////////
always_ff @ (negedge tck or negedge trstb) begin
	if (~trstb) begin
      sib_latch     <= 1'b0;
	end else if (update & sel) begin
      sib_latch     <= sib;
	end
end
//
always_ff @ (negedge tck or negedge trstb) begin
   if (~trstb) begin
      to_enable_int <= 1'b0;
	  update_L		<= 1'b0;
   end else  begin
      to_enable_int <= sib_latch;
	   update_L		<= update;
   end
end
//
always_ff @ (posedge tck or negedge trstb) begin
   if (~trstb) begin
      sib <= 1'b0;
   end else if (shift & sel) begin
      if (sib_latch) begin
         sib <= reg_so;
      end else begin
         sib <= si;
      end
   end
end


endmodule

`endif
