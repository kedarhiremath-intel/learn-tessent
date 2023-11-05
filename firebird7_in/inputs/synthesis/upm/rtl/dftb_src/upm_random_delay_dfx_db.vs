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
//  Module upm_random_delay_dfx_db
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_random_delay_dfx_db.vs
///
/// Unit Owner        : dftb
///
/// Copyright (c) 2013 Intel Corporation
/// Intel Proprietary and Top Secret Information
///
/// Generate random delay between d and q.
/// Random delay can be by clock or by pound.
///
///=====================================================================================================================
`ifndef MODULE_UPM_RANDOM_DELAY_DFX_DB
`define MODULE_UPM_RANDOM_DELAY_DFX_DB
module upm_random_delay_dfx_db #(
                        parameter integer   WIDTH           = 1,
                        parameter integer   USE_POUND_DELAY = 1,
                        parameter integer   MAX_DELAY       = 4,
                        parameter integer   MIN_DELAY       = 0
                   ) (
                            input  logic [WIDTH-1:0] d,
                            input  logic clock,
                            input  logic enable,
                            input  logic reset,
                            output logic [WIDTH-1:0] q                            
                     );

//-----------------------------------------------------------------------------------------------------------------------------
`ifdef INTEL_SIMONLY
    timeunit 1ps; //xecilum simulator doesn't support timeunit 1ps/1ps;
    timeprecision 1ps;

    integer seed;
    integer delay;
    logic [MAX_DELAY:0][WIDTH-1:0] delayed_input_by_max_delay;

    initial begin
        seed  = $random();
        delay = $dist_uniform(seed,MIN_DELAY,MAX_DELAY);
    end
    
    if(USE_POUND_DELAY==1) begin
        always @(d) begin
            delay <= $dist_uniform(seed,MIN_DELAY,MAX_DELAY);  
            q     <= #delay d;                             
        end 
    end
    else begin 
        always @(posedge d) begin 
              delay <= $dist_uniform(seed,MIN_DELAY,MAX_DELAY);
        end             

        `UPM_ASYNC_RST_MSFF(delayed_input_by_max_delay, {delayed_input_by_max_delay[MAX_DELAY-1:0],d}, clock, reset) //direct random doesn't work on shift
        assign q=delayed_input_by_max_delay[delay];
    end   
//-----------------------------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------------------------------
`else
    upm_dftb_buf #(.WIDTH(WIDTH))
    delay_buf (
        .a(d),
        .o(q)
    );
`endif
//-----------------------------------------------------------------------------------------------------------------------------

endmodule
`endif
