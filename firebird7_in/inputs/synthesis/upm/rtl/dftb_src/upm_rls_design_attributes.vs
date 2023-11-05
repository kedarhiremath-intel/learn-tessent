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
//  Module rls_design_attribute
//
//------------------------------------------------------------------------------
///=====================================================================================================================
///
/// rls_design_attribute.vs
///
/// Primary Contact   : Kadan Haba
/// Secondary Contact : Orit Ben-Gera
///
///
/// Copyright (c) 2011 Intel Corporation
/// Intel Proprietary and Top Secret Information
///
/// This file contains RLS design constraint macro
///
/// IMPORTANT NOTES:
///   - 
///=====================================================================================================================
///=====================================================================================================================
/// General DESIGN_ATTR macro
///=====================================================================================================================
//
// Macro that pass to Synthesis tools all different type of timing constraints (MPC/FLASE/BUDGET)
//
// Contact: Kadan Haba.
// the macro fields are:
//  uniqueId - unique ID for the MCP (MCP RTL name) 
//  sourceSignal 
//  targetSignal  
//  sourceClock - MCO source generating clock
//  targetClock -  MCO endpoint sampling clock
//  moduleType - metaflop/mcp/paramCDC/bgf - the source macro of the command 
//  overrideType  - dc/mcp/block_transparancy/align ,define the command to establish (false_path / multicycle_path /time_borrow /align (for tapxover command)
//  pathDelay - specifies the duration of the MCO
//  pathType - setup/hold/any 
//  refClock - This is the reference clock for the MCO duration
//  shiftReference - start/end/default (ask Eyal input for macro /tango?)
//  sourceEdge /targetEdge 
//  sourceDataEdge/targetDataEdge 
//  sourceClockEdge/targetClockEdge
//  sourcePropagate - forward/backward/auto/ignore - define whether to propagate the mcp to the signals drivers /receivers. Needed for block transparency command, etc.
//  targetPropagate - forward/backward/auto/ignore - define whether to propagate the mcp to the signals drivers /receivers. Needed for block transparency command, etc.
//
//
//  Signals values:
//    uniqueId     - Must -     Unique value should be given if we want to trace the override, if the pattern is not unique then the code will automatic genereta a new pattern.
//    sourceSignal - Optional - Input signal that will be use as "from" for generating override.  (Synthesis will translate it as -throught) 
//    targetSignal - Optional - Input signal that will be use as "to" for generating override.  (Synthesis will translate it as -throught) 
//    sourceClock  - Optional - Input string that will be used as "-from_clk", while clock can be clock_domain.
//    targetClock  - Optional - Input string that will be used as "-to_clk", while clock can be clock_domain.
//       Note - sourcesignal field is must.
//              At least one of SourceClock, TargetClock, SourceSignal or TargetSignal must be given.
//    moduleType   - Must     - String that describe the module source of the override.
//    overrideType - Must     - Describe the overide command that will be created. 
//         (Currently supported commands: 
//             dc  -  set_false_path
//             mcp -  set_multicycle_path
//             block_transparency - set_max_time_borrow 0
//             align - ???  )
//    pathDelay    - Must only if OverrideType set to mcp or align - Number of total cycles (and not additional/extra) defined for the path (1 in MCP mode means - don't do nothing) 
//       Note - The clock that will be used is-
//           TargetClock in max delay
//           SourceClock in min delay
//           In case that shiftReference defined - it will define which one to use: source or target clock.
//    pathType     - Must     - Define whether the override is relevant to setup, hold or any.
//    refClock     - define different reference clock than the default. currently relevant for CDCparam module only.(TCL implementation note - set as shift reference clock).
//    shiftReference - Must   - Describe which clock event should be used (If default is given than uses TargetClock for setup and SourceClock for hold)
//    sourceDataEdge - Must   - Will be translate to "-rise_through", "-fall_through" or "-through" according to the given value
//    targetDataEdge - Must   - Will be translate to "-rise_through", "-fall_through" or "-through" according to the given value
//    sourceClockEdge - Must  - Will be translate to "-rise_from", "-fall_from" or "-from" according to the given value
//    targetClockEdge - Must  - Will be translate to "-rise_to", "-fall_to" or "-to" according to the given value
//          Edge value can be rise, fall or any.
//    sourcePropagate - Must  - If: 
//                                 forward - searching up to timing endpoint and setting the override on that point.
//                                 backward - searching up to timing starpoint and setting the override on that point.
//                                 ignore - Insert buffer and setting don't touch on it.
//                                 auto - If connected to sequentail than like backward, else like none.
//    targetPropagate - Must  - If: 
//                                 forward - searching up to timing endpoint and setting the override on that point.
//                                 backward - searching up to timing starpoint and setting the override on that point.
//                                 ignore - Insert buffer and setting don't touch on it.
//                                 auto - If connected to sequentail than like forward, else like none.
//
//

`ifndef MODULE_UPM_RLS_DESIGN_ATTRIBUTES
`define MODULE_UPM_RLS_DESIGN_ATTRIBUTES
module upm_rls_design_attributes #(
    parameter MODULETYPE      = "mcp",
    parameter OVERRIDETYPE    = "mcp",
    parameter PATHDELAY       = "2",
    parameter PATHTYPE        = "any",
    parameter REFCLOCK        = " ",
    parameter SHIFTREFERENCE  = "default",
    parameter SOURCEDATAEDGE  = "all",
    parameter TARGETDATAEDGE  = "all",
    parameter SOURCECLOCKEDGE = "all",
    parameter TARGETCLOCKEDGE = "all",
    parameter SOURCEPROPAGATE = "auto",
    parameter TARGETPROPAGATE = "auto"
) (
    input bit source,
    input bit target,
    input bit srcclock,
    input bit trgclock
);

endmodule
`endif
