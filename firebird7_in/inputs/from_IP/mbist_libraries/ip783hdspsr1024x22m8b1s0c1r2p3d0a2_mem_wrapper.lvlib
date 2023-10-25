//-------------------------------------------------
//  File created by: Tessent Shell
//          Version: 2022.4
//       Created on: Fri Jul 28 05:55:15 PDT 2023
//-------------------------------------------------


//##############################################################################
/////////////////////////////////////////////////////////////////////////////////////////////
// Intel Confidential                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////
// Copyright 2023 Intel Corporation. The information contained herein is the proprietary   //
// and confidential information of Intel or its licensors, and is supplied subject to, and //
// may be used only in accordance with, previously executed agreements with Intel.         //
// EXCEPT AS MAY OTHERWISE BE AGREED IN WRITING: (1) ALL MATERIALS FURNISHED BY INTEL      //
// HEREUNDER ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND; (2) INTEL SPECIFICALLY     //
// DISCLAIMS ANY WARRANTY OF NONINFRINGEMENT, FITNESS FOR A PARTICULAR PURPOSE OR          //
// MERCHANTABILITY; AND (3) INTEL WILL NOT BE LIABLE FOR ANY COSTS OF PROCUREMENT OF       //
// SUBSTITUTES, LOSS OF PROFITS, INTERRUPTION OF BUSINESS, OR FOR ANY OTHER SPECIAL,       //
// CONSEQUENTIAL OR INCIDENTAL DAMAGES, HOWEVER CAUSED, WHETHER FOR BREACH OF WARRANTY,    //
// CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE.                              //
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                         //
//  Vendor:                Intel Corporation                                               //
//  Product:               c78hdspsr                                                       //
//  Version:               r0.6.7                                                          //
//  Technology:            p1278.3                                                         //
//  Celltype:              MemoryIP                                                        //
//  IP Owner:              Intel CMO                                                       //
//  Creation Time:         Fri Mar 10 2023 06:15:13                                        //
//  Memory Name:           ip783hdspsr1024x22m8b1s0c1r2p3d0a2                              //
//  Memory Name Generated: ip783hdspsr1024x22m8b1s0c1r2p3d0a2                              //
//                                                                                         //
/////////////////////////////////////////////////////////////////////////////////////////////
//##############################################################################
//--------------------START OF LVLIB MODEL ---------------------------------
MemoryTemplate(ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper) {
  //ArrayRTLHier:  ip783hdspsr1024x22m8b1s0c1r2p3d0a2.ip783hdspsr1024x22m8b1s0c1r2p3d0a2_bmod.ip783hdspsr1024x22m8b1s0c1r2p3d0a2_array.array[Address][din]
  MemoryType : SRAM;
  CellName : ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper;
  LogicalPorts : 1RW;
  OperationSet : SyncCustom;
  // ATD                                  : Off;
  Algorithm : IntelLVMARCHCMINUSFX;
  BitGrouping : 1;
  // ConcurrentRead                       : Off;
  // ConcurrentWrite                      : Off;
  DataOutStage : None;
  // DataOutHoldWithInactiveReadEnable    : On;
  // PipelineDepth                        : 0;
  ObservationLogic : Off;
  InternalScanLogic : Off;
  // NumberofBits                         : 22;
  NumberOfWords : 1024;
  // MemoryHoldWithInactiveSelect         : On;
  // ReadOutofRangeOk                     : off;
  // SelectDuringWriteThru                : off;
  ShadowRead : Off;
  // ShadowWriteOK                        : Off;
  // WriteOutOfRange                      : off;
  TransparentMode : None;
  MinHold : 0.00;
  MilliWattsPerMegaHertz : 0.00279;
  //       MilliWattsPerMegaHertz   <default>   : 0.10208;
  AddressCounter {
    Function(Address) {
      LogicalAddressMap {
        ColumnAddress[2:0] : Address[2:0];
        RowAddress[2:0] : Address[5:3];
        RowAddress[6:3] : Address[9:6];
      }
    }
    Function(RowAddress) {
      CountRange [0:127];
    }
    Function(ColumnAddress) {
      CountRange [0:7];
    }
  }
  PhysicalAddressMap {
    ColumnAddress[0] : c[0];
    ColumnAddress[1] : c[1];
    ColumnAddress[2] : c[2];
    RowAddress[0] : r[0];
    RowAddress[1] : r[1];
    RowAddress[2] : r[2];
    RowAddress[3] : r[3];
    RowAddress[4] : r[4];
    RowAddress[5] : r[5];
    RowAddress[6] : r[6];
  }
  //----- Start of Logical Port wrapper definition -------------------
  Port(clk) {
    Direction : Input;
    Function : Clock;
    Polarity : ActiveHigh;
  }
  Port(wen) {
    Direction : Input;
    Function : WriteEnable;
    DisableDuringScan : On;
    Polarity : ActiveHigh;
  }
  Port(ren) {
    Direction : Input;
    Function : ReadEnable;
    DisableDuringScan : On;
    Polarity : ActiveHigh;
  }
  Port(adr[9:0]) {
    Direction : Input;
    Function : Address;
  }
  Port(din[21:0]) {
    Direction : Input;
    Function : Data;
  }
  Port(async_rst) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(fastsleep) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(deepsleep) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(sbc[1:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 2'b00;
  }
  Port(shutoff) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(mce) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(stbyp) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(rmce[3:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 4'b0000;
  }
  Port(wmce[1:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 2'b00;
  }
  Port(wpulse[1:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 2'b00;
  }
  Port(wa_disable) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(wa[2:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 3'b000;
  }
  Port(ra[1:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 2'b00;
  }
  Port(row_repair_in[25:0]) {
    Direction : Input;
    Function : BisrParallelData;
    Polarity : ActiveHigh;
  }
  Port(global_rrow_en_in[1:0]) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 2'b00;
  }
  Port(col_repair_in[12:0]) {
    Direction : Input;
    Function : BisrParallelData;
    Polarity : ActiveHigh;
  }
  Port(isolation_control_in) {
    Direction : Input;
    Function : None;
    Polarity : ActiveHigh;
    SafeValue : 0;
  }
  Port(dpslp_or_shutoffout) {
    Direction : Output;
    Function : None;
    Polarity : ActiveHigh;
  }
  Port(shutoffout) {
    Direction : Output;
    Function : None;
    Polarity : ActiveHigh;
  }
  Port(q[21:0]) {
    Direction : Output;
    Function : Data;
  }
  //----- Start of Redundancy Analysis Segment -------------
  RedundancyAnalysis {
    ColumnSegment(All) {
      NumberOfSpareElements : 1;
      ShiftedIORange : q[21:0];
      FuseSet {
        FuseMap[4:0] {
          ShiftedIO(q[0]) : 5'b00000;
          ShiftedIO(q[1]) : 5'b00001;
          ShiftedIO(q[2]) : 5'b00010;
          ShiftedIO(q[3]) : 5'b00011;
          ShiftedIO(q[4]) : 5'b00100;
          ShiftedIO(q[5]) : 5'b00101;
          ShiftedIO(q[6]) : 5'b00110;
          ShiftedIO(q[7]) : 5'b00111;
          ShiftedIO(q[8]) : 5'b01000;
          ShiftedIO(q[9]) : 5'b01001;
          ShiftedIO(q[10]) : 5'b01010;
          ShiftedIO(q[11]) : 5'b01011;
          ShiftedIO(q[12]) : 5'b01100;
          ShiftedIO(q[13]) : 5'b01101;
          ShiftedIO(q[14]) : 5'b01110;
          ShiftedIO(q[15]) : 5'b01111;
          ShiftedIO(q[16]) : 5'b10000;
          ShiftedIO(q[17]) : 5'b10001;
          ShiftedIO(q[18]) : 5'b10010;
          ShiftedIO(q[19]) : 5'b10011;
          ShiftedIO(q[20]) : 5'b10100;
          ShiftedIO(q[21]) : 5'b10101;
        }
      }
      PinMap {
        SpareElement {
          RepairEnable : col_repair_in[0];
          FuseMap[0] : col_repair_in[1];
          FuseMap[1] : col_repair_in[2];
          FuseMap[2] : col_repair_in[3];
          FuseMap[3] : col_repair_in[4];
          FuseMap[4] : col_repair_in[5];
        }
      }
    }
    RowSegment(ALL) {
      NumberOfSpareElements : 2;
      FuseSet {
        Fuse[0] : AddressPort(adr[3]);
        Fuse[1] : AddressPort(adr[4]);
        Fuse[2] : AddressPort(adr[5]);
        Fuse[3] : AddressPort(adr[6]);
        Fuse[4] : AddressPort(adr[7]);
        Fuse[5] : AddressPort(adr[8]);
        Fuse[6] : AddressPort(adr[9]);
      }
      PinMap {
        SpareElement {
          RepairEnable : row_repair_in[0];
          Fuse[0] : row_repair_in[1];
          Fuse[1] : row_repair_in[2];
          Fuse[2] : row_repair_in[3];
          Fuse[3] : row_repair_in[4];
          Fuse[4] : row_repair_in[5];
          Fuse[5] : row_repair_in[6];
          Fuse[6] : row_repair_in[7];
        }
        SpareElement {
          RepairEnable : row_repair_in[13];
          Fuse[0] : row_repair_in[14];
          Fuse[1] : row_repair_in[15];
          Fuse[2] : row_repair_in[16];
          Fuse[3] : row_repair_in[17];
          Fuse[4] : row_repair_in[18];
          Fuse[5] : row_repair_in[19];
          Fuse[6] : row_repair_in[20];
        }
      }
    }
  }
}
