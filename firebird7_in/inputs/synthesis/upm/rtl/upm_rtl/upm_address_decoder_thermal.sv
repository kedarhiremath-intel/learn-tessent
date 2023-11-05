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
//  DTEG_UPM_2022WW32_FV_1P0_RTDR
//
//  Module upm_address_decoder
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// upm_address_decoder_thermal.vs
///
/// Author   : prasadss 
///
/// Copyright (c) 2021 Intel Corporation
/// Intel Proprietary
///
///A decoder with i inputs and fully-populated outputs has 2i
///Output is “one-hot”   One and only one output is high at a time
///=====================================================================================================================
`ifndef UPM_MODULE_UPM_ADDRESS_DECODER_THERMAL
`define UPM_MODULE_UPM_ADDRESS_DECODER_THERMAL
module upm_address_decoder_thermal #(
  parameter WIDTH  = 5,
  parameter OUTPUT_SIZE = 12
)
(
  input  logic  power_enable,
  input  logic  [WIDTH-1:0]          address,
  output logic  [(OUTPUT_SIZE)-1: 0] dec_address
);

assign dec_address[0] = (~power_enable || dec_address[11] )  ? 1'b0 :  address[0]  ;
assign dec_address[1] = (~power_enable || dec_address[11] )  ? 1'b0 :  ~address[0] ;


assign dec_address[11:2]   = 	(address[4:1] == 4'h0) ?  10'b0000000000 : 
								(address[4:1] == 4'h1) ?  10'b0000000001 :
								(address[4:1] == 4'h2) ?  10'b0000000010 :
								(address[4:1] == 4'h3) ?  10'b0000000100 :
								(address[4:1] == 4'h4) ?  10'b0000001000 :
								(address[4:1] == 4'h5) ?  10'b0000010000 :
								(address[4:1] == 4'h6) ?  10'b0000100000 :
								(address[4:1] == 4'h7) ?  10'b0001000000 :
								(address[4:1] == 4'h8) ?  10'b0010000000 :
								(address[4:1] == 4'h9) ?  10'b0100000000 :
								(address[4:1] == 4'hA) ?  10'b1000000000 : 'b0;
								
								 
								
								

endmodule
`endif
