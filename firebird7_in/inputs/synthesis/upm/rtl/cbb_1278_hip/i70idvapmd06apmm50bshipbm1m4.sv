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
//  Module i70idvapmd06apmm50bshipbm1m4
//
//------------------------------------------------------------------------------
`timescale 1ps/100fs
// `default_nettype none
///=====================================================================================================================
/// Original Author   : prasadss
/// Original Date     : 11/25/2022
///
/// Copyright (c) 2019 Intel Corporation
/// Intel Proprietary
///
/// This is just a place holder for APM module for 1278.6 if released in future 
///
///=====================================================================================================================


`ifndef I70IDVAPMD06APMM50BSHIPBM1M4_SV
`define I70IDVAPMD06APMM50BSHIPBM1M4_SV

`celldefine
module i70idvapmd06apmm50bshipbm1m4 (
  
 // INPUT PORTS
  `ifndef INTEL_NO_PWR_PINS
     `ifdef INTC_UPF_FLOW

     `else
         inout wire vssx,
         inout wire vccx,
     `endif
  `endif

    input logic apm_en_cal,
    input logic apm_en_osc,
    input logic apm_en_sensor,
    input logic apm_en_step,
    input logic apm_osc_sel,

    input logic [1:0]  apm_xtor_sel,
    input logic [3:0]  apm_mux_sel,
    input logic [3:0]  apm_vdac_sel,

   // OUTPUT PORTS
    output  logic  apm_osc_out,  
    output  logic  apm_debug_out
);

assign apm_osc_out ='b0;
assign apm_debug_out ='b0;
endmodule   

`endif 
