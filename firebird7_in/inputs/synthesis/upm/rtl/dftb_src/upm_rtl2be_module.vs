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
//  Module upm_rtl2be_module
//
//------------------------------------------------------------------------------
//===========================================================================================
//
// upm_rtl2be_module.vs
//
// Current Author    : Ishy Levin
// Secondary Contact :
//
// Original Author   : Ishy Levin 
// Original Date     : Nov 28, 2012
//
// Copyright (c) 2012 Intel Corporation
// Intel Proprietary and Top Secret Information
//
// This file contains RTL2BE module for RTL2BE tool
// There is no real content here, just hocks for the design to mark
// the places that RTL2BE needs to translate to BE
//
//===========================================================================================
`ifndef MODULE_UPM_RTL2BE_MODULE
`define MODULE_UPM_RTL2BE_MODULE
module upm_rtl2be_module #(
    // -------------------------
    // General info
    // Version of the module - don't use this parameter 
    // This is for internal usage only
    parameter MODULE_VERSION = 0,
    // -------------------------

    // -------------------------
    // Type info
    // Type of the module
    parameter TYPE = "",
    // Version number for specific type
    parameter TYPE_VERSION = 0,
    // -------------------------

    parameter SIZE0  = 1,
    parameter SIZE1  = 1,
    parameter SIZE2  = 1,
    parameter SIZE3  = 1,
    parameter SIZE4  = 1,
    parameter SIZE5  = 1,
    parameter SIZE6  = 1,
    parameter SIZE7  = 1,
    parameter SIZE8  = 1,
    parameter SIZE9  = 1,

    // Macro information, node specific
    parameter INFO0 = "",
    parameter INFO1 = "",
    parameter INFO2 = "",
    parameter INFO3 = "",
    parameter INFO4 = "",
    parameter INFO5 = "",
    parameter INFO6 = "",
    parameter INFO7 = "",
    parameter INFO8 = "",
    parameter INFO9 = "",
    // -------------------------

    // -------------------------
    // Extra info
    // Macro information, general info
    // may or may not be releated to a specific node
    parameter EXTRA0 = "",
    parameter EXTRA1 = "",
    parameter EXTRA2 = "",
    parameter EXTRA3 = "",
    parameter EXTRA4 = "",
    parameter EXTRA5 = "",
    parameter EXTRA6 = "",
    parameter EXTRA7 = "",
    parameter EXTRA8 = "",
    parameter EXTRA9 = ""
    // -------------------------
)
(
    input [SIZE0 - 1:0] s0,
    input [SIZE1 - 1:0] s1,
    input [SIZE2 - 1:0] s2,
    input [SIZE3 - 1:0] s3,
    input [SIZE4 - 1:0] s4,
    input [SIZE5 - 1:0] s5,
    input [SIZE6 - 1:0] s6,
    input [SIZE7 - 1:0] s7,
    input [SIZE8 - 1:0] s8,
    input [SIZE9 - 1:0] s9
);

// Single focal point for all the info
(* RTL2BE = 1 *)
(* RTL2BE_MODULE_VERSION = MODULE_VERSION *)
(* RTL2BE_TYPE_VERSION = TYPE_VERSION *)
(* RTL2BE_TYPE = TYPE *)
(* RTL2BE_INFO0 = INFO0 *)
(* RTL2BE_INFO1 = INFO1 *)
(* RTL2BE_INFO2 = INFO2 *)
(* RTL2BE_INFO3 = INFO3 *)
(* RTL2BE_INFO4 = INFO4 *)
(* RTL2BE_INFO5 = INFO5 *)
(* RTL2BE_INFO6 = INFO6 *)
(* RTL2BE_INFO7 = INFO7 *)
(* RTL2BE_INFO8 = INFO8 *)
(* RTL2BE_INFO9 = INFO9 *)
(* RTL2BE_EXTRA0 = EXTRA0 *)
(* RTL2BE_EXTRA1 = EXTRA1 *)
(* RTL2BE_EXTRA2 = EXTRA2 *)
(* RTL2BE_EXTRA3 = EXTRA3 *)
(* RTL2BE_EXTRA4 = EXTRA4 *)
(* RTL2BE_EXTRA5 = EXTRA5 *)
(* RTL2BE_EXTRA6 = EXTRA6 *)
(* RTL2BE_EXTRA7 = EXTRA7 *)
(* RTL2BE_EXTRA8 = EXTRA8 *)
(* RTL2BE_EXTRA9 = EXTRA9 *)
logic info;
// -------------------------

endmodule
`endif
