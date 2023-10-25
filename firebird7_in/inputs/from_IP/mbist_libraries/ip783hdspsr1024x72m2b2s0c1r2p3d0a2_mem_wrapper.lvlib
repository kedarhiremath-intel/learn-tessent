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
//  Creation Time:         Fri Mar 10 2023 06:16:43                                        //
//  Memory Name:           ip783hdspsr1024x72m2b2s0c1r2p3d0a2                              //
//  Memory Name Generated: ip783hdspsr1024x72m2b2s0c1r2p3d0a2                              //
//                                                                                         //
/////////////////////////////////////////////////////////////////////////////////////////////
//##############################################################################
//--------------------START OF LVLIB MODEL ---------------------------------
MemoryTemplate(ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper) {
  //ArrayRTLHier:  ip783hdspsr1024x72m2b2s0c1r2p3d0a2.ip783hdspsr1024x72m2b2s0c1r2p3d0a2_bmod.ip783hdspsr1024x72m2b2s0c1r2p3d0a2_array.array[Address][din]
  MemoryType : SRAM;
  CellName : ip783hdspsr1024x72m2b2s0c1r2p3d0a2_mem_wrapper;
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
  // NumberofBits                         : 72;
  NumberOfWords : 1024;
  // MemoryHoldWithInactiveSelect         : On;
  // ReadOutofRangeOk                     : off;
  // SelectDuringWriteThru                : off;
  ShadowRead : Off;
  // ShadowWriteOK                        : Off;
  // WriteOutOfRange                      : off;
  TransparentMode : None;
  MinHold : 0.00;
  MilliWattsPerMegaHertz : 0.00700;
  //       MilliWattsPerMegaHertz   <default>   : 0.31104;
  AddressCounter {
    Function(Address) {
      LogicalAddressMap {
        ColumnAddress[1:0] : Address[1:0];
        RowAddress[2:0] : Address[4:2];
        RowAddress[7:3] : Address[9:5];
      }
    }
    Function(RowAddress) {
      CountRange [0:255];
    }
    Function(ColumnAddress) {
      CountRange [0:3];
    }
  }
  PhysicalAddressMap {
    ColumnAddress[0] : c[0];
    ColumnAddress[1] : c[1];
    RowAddress[0] : r[0];
    RowAddress[1] : r[1];
    RowAddress[2] : r[2];
    RowAddress[3] : r[3];
    RowAddress[4] : r[4];
    RowAddress[5] : r[5];
    RowAddress[6] : r[6];
    RowAddress[7] : r[7];
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
  Port(din[71:0]) {
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
  Port(q[71:0]) {
    Direction : Output;
    Function : Data;
  }
  //----- Start of Redundancy Analysis Segment -------------
  RedundancyAnalysis {
    ColumnSegment(All) {
      NumberOfSpareElements : 1;
      ShiftedIORange : q[71:0];
      FuseSet {
        FuseMap[6:0] {
          ShiftedIO(q[0]) : 7'b0000000;
          ShiftedIO(q[1]) : 7'b0000001;
          ShiftedIO(q[2]) : 7'b0000010;
          ShiftedIO(q[3]) : 7'b0000011;
          ShiftedIO(q[4]) : 7'b0000100;
          ShiftedIO(q[5]) : 7'b0000101;
          ShiftedIO(q[6]) : 7'b0000110;
          ShiftedIO(q[7]) : 7'b0000111;
          ShiftedIO(q[8]) : 7'b0001000;
          ShiftedIO(q[9]) : 7'b0001001;
          ShiftedIO(q[10]) : 7'b0001010;
          ShiftedIO(q[11]) : 7'b0001011;
          ShiftedIO(q[12]) : 7'b0001100;
          ShiftedIO(q[13]) : 7'b0001101;
          ShiftedIO(q[14]) : 7'b0001110;
          ShiftedIO(q[15]) : 7'b0001111;
          ShiftedIO(q[16]) : 7'b0010000;
          ShiftedIO(q[17]) : 7'b0010001;
          ShiftedIO(q[18]) : 7'b0010010;
          ShiftedIO(q[19]) : 7'b0010011;
          ShiftedIO(q[20]) : 7'b0010100;
          ShiftedIO(q[21]) : 7'b0010101;
          ShiftedIO(q[22]) : 7'b0010110;
          ShiftedIO(q[23]) : 7'b0010111;
          ShiftedIO(q[24]) : 7'b0011000;
          ShiftedIO(q[25]) : 7'b0011001;
          ShiftedIO(q[26]) : 7'b0011010;
          ShiftedIO(q[27]) : 7'b0011011;
          ShiftedIO(q[28]) : 7'b0011100;
          ShiftedIO(q[29]) : 7'b0011101;
          ShiftedIO(q[30]) : 7'b0011110;
          ShiftedIO(q[31]) : 7'b0011111;
          ShiftedIO(q[32]) : 7'b0100000;
          ShiftedIO(q[33]) : 7'b0100001;
          ShiftedIO(q[34]) : 7'b0100010;
          ShiftedIO(q[35]) : 7'b0100011;
          ShiftedIO(q[36]) : 7'b0100100;
          ShiftedIO(q[37]) : 7'b0100101;
          ShiftedIO(q[38]) : 7'b0100110;
          ShiftedIO(q[39]) : 7'b0100111;
          ShiftedIO(q[40]) : 7'b0101000;
          ShiftedIO(q[41]) : 7'b0101001;
          ShiftedIO(q[42]) : 7'b0101010;
          ShiftedIO(q[43]) : 7'b0101011;
          ShiftedIO(q[44]) : 7'b0101100;
          ShiftedIO(q[45]) : 7'b0101101;
          ShiftedIO(q[46]) : 7'b0101110;
          ShiftedIO(q[47]) : 7'b0101111;
          ShiftedIO(q[48]) : 7'b0110000;
          ShiftedIO(q[49]) : 7'b0110001;
          ShiftedIO(q[50]) : 7'b0110010;
          ShiftedIO(q[51]) : 7'b0110011;
          ShiftedIO(q[52]) : 7'b0110100;
          ShiftedIO(q[53]) : 7'b0110101;
          ShiftedIO(q[54]) : 7'b0110110;
          ShiftedIO(q[55]) : 7'b0110111;
          ShiftedIO(q[56]) : 7'b0111000;
          ShiftedIO(q[57]) : 7'b0111001;
          ShiftedIO(q[58]) : 7'b0111010;
          ShiftedIO(q[59]) : 7'b0111011;
          ShiftedIO(q[60]) : 7'b0111100;
          ShiftedIO(q[61]) : 7'b0111101;
          ShiftedIO(q[62]) : 7'b0111110;
          ShiftedIO(q[63]) : 7'b0111111;
          ShiftedIO(q[64]) : 7'b1000000;
          ShiftedIO(q[65]) : 7'b1000001;
          ShiftedIO(q[66]) : 7'b1000010;
          ShiftedIO(q[67]) : 7'b1000011;
          ShiftedIO(q[68]) : 7'b1000100;
          ShiftedIO(q[69]) : 7'b1000101;
          ShiftedIO(q[70]) : 7'b1000110;
          ShiftedIO(q[71]) : 7'b1000111;
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
          FuseMap[5] : col_repair_in[6];
          FuseMap[6] : col_repair_in[7];
        }
      }
    }
    RowSegment(ALL) {
      NumberOfSpareElements : 2;
      FuseSet {
        Fuse[0] : AddressPort(adr[2]);
        Fuse[1] : AddressPort(adr[3]);
        Fuse[2] : AddressPort(adr[4]);
        Fuse[3] : AddressPort(adr[5]);
        Fuse[4] : AddressPort(adr[6]);
        Fuse[5] : AddressPort(adr[7]);
        Fuse[6] : AddressPort(adr[8]);
        Fuse[7] : AddressPort(adr[9]);
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
          Fuse[7] : row_repair_in[8];
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
          Fuse[7] : row_repair_in[21];
        }
      }
    }
  }
}
