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
//  Module upm_metaflop_modeling 
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_metaflop_modeling.vs
///
/// Author   : tagha, yoz
///
/// Copyright (c) 2021 Intel Corporation
/// Intel Proprietary and Top Secret Information
///
///
///=====================================================================================================================
//adding ifdef simonly to avoid including/compiling the code within synthesis stage
//intel_simonly condition is being used on the metaflop_modeling instantiation as well.
`ifndef MODULE_UPM_METAFLOP_MODELING
`define MODULE_UPM_METAFLOP_MODELING
`ifdef INTEL_SIMONLY

module upm_metaflop_modeling 
            (
                input  logic d,
                input  logic clock,
                output logic real_clk,
                output logic real_d
            );

timeunit 1ps; //xecilum simulator doesn't support timeunit 1ps/1ps;
timeprecision 1ps;
//-------------------------------------------------------------------------------------------------------
//case 0: clk,          d 
//case 1: delayed clk,  d
//case 2: clk,          delayed d
//-------------------------------------------------------------------------------------------------------
typedef enum integer {  
   NO_DELAY      = 0, //00
   DELAYED_CLK   = 1, //01
   DELAYED_DATA  = 2  //10
} t_random;
t_random       state;

integer seed;
integer clk_delay;
integer data_delay;

initial begin
    seed       = $random();
    state      = t_random'($dist_uniform(seed,0,2));    
    clk_delay  = $dist_uniform(seed,1,2);    
    data_delay = $dist_uniform(seed,1,2);    

end

logic delayed_clk;
logic delayed_d;
logic sampled_1d;
//bit [4:0] counter;

//select random state, random clk delay
always @(posedge clock) begin  
    //counter    <= counter + 1
    //if (counter[0]==1) begin    
        state      <= t_random'($dist_uniform(seed,0,2)); 
    //end
    clk_delay  <= $dist_uniform(seed,1,2);       
end

//select random data delay
always @(posedge d) begin
    data_delay  <= $dist_uniform(seed,1,2);
end

//apply random clk delay
always @(clock) begin    
    #1; // added #1 to avoid X sampling when clock transaction is x->0.
    delayed_clk  = #clk_delay clock;
end

//apply random data delay
always @(d) begin    
    delayed_d <= #data_delay d;
end

//mux between delayed clk and delayed data
assign real_clk = (state==DELAYED_CLK)?  delayed_clk : clock;
assign real_d   = (state==DELAYED_DATA)? delayed_d   : d;


endmodule

`endif
`endif
