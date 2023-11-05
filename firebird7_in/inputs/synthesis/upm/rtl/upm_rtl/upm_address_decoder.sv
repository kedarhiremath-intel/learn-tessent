//------------------------------------------------------------------------------
//
//  INTEL CONFIDENTIAL
//
//  Copyright 2020 Intel Corporation All Rights Reserved.
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
//  Module upm_address_decoder :  < put your functional description here in plain text >
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_address_decoder.vs
///
/// Author   : tagha 
///
/// Copyright (c) 2021 Intel Corporation
/// Intel Proprietary
///
///A decoder with i inputs and fully-populated outputs has 2i
///Output is “one-hot”   One and only one output is high at a time
///=====================================================================================================================
`ifndef UPM_MODULE_UPM_ADDRESS_DECODER
`define UPM_MODULE_UPM_ADDRESS_DECODER
module upm_address_decoder #(
  parameter WIDTH  = 4
)
(
  input  logic  [WIDTH-1:0]          address,
  output logic  [(2**WIDTH)-1: 0] dec_address
);
localparam OUTPUT_SIZE=2**WIDTH;
parameter tmp =  {{OUTPUT_SIZE-1{1'b0}}, 1'b1};
assign dec_address = (tmp<<address) & ({OUTPUT_SIZE{|address}});        
endmodule
`endif
