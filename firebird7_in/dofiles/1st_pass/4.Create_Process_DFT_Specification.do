
/////////////////////////////////////////////
// Step 1. Invoke create_dft_specification //
/////////////////////////////////////////////

set spec [create_dft_specification -replace]
report_config_data $spec


/////////////////////////////////////////////////////////////////////////////////
// Step 2. Edit/Configure the DFT Specification According To Your Requirements //
/////////////////////////////////////////////////////////////////////////////////

// Add spare TDRs to the IJTAG network.
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) -from_string "
  Sib(spare) {
    Sib(spare_red) {
      Tdr(spare_red_tdr) {
        length : 8;
      }
    }
    Sib(spare_orange) {
      Tdr(spare_orange_tdr) {
        length : 8;
      }
    }
    Sib(spare_insysbist) {
      Tdr(spare_insysbist_tdr) {
        length : 8;
      }
    }
    Sib(spare_green) {
      Tdr(spare_green_tdr) {
        length : 8;
      }
    }
  }
"

// Add UPM instances to the IJTAG network.
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) -from_string "
  Sib(upm) {
    DesignInstance(u_upm_0) {
      scan_interface : c_ip;
    }
    DesignInstance(u_upm_1) {
      scan_interface : c_ip;
    }
    DesignInstance(u_upm_2) {
      scan_interface : c_ip;
    }
    DesignInstance(u_upm_3) {
      scan_interface : c_ip;
    }
  }
"

// Set the algorithms and operation sets for the MBIST controllers.
set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/algorithm "IntelLVPMOVIFastx"
set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/operation_set "SyncCustom"
set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/extra_algorithms "IntelLVPmarchCExt IntelLVFailinjFx IntelLVAddrDecodeFx IntelLVAddrDecodeRowFastx IntelLVAddrDecodeRowOnlyFastx IntelLVArrayIFastx IntelLVArrayWriteFastx IntelLVGalColumnFastx IntelLVGalWRrecColFastx IntelLVHammer10Fastx IntelLVMarchCMinusFastx IntelLVMarchGFastx IntelLVMarchRAWFastx IntelLVMarchSLFastx IntelLVMatspDWOneFastx IntelLVMatspDWThreeFastx IntelLVMatspDWTwoFastx IntelLVMatsppFastx IntelLVScanFastx IntelLVSegSelFastx IntelLVButterflyFastx IntelLVMarchSRFastx IntelLVMarchSSFastx IntelLVButterflyWriteFastx IntelLVTowalk2Fastx IntelLVAddrDecodeColumnFastx IntelLVCellStrFastx IntelLVGalDiagFastx IntelLVHammerFastx IntelLVSlideDiagFx IntelLVSlideDiagFastxDiagEven IntelLVSlideDiagFastxRead IntelLVWalkColFastx IntelLVAddrDecodeFy IntelLVButterflyWriteFasty IntelLVGalWRrecRowFasty IntelLVHammer10Fasty IntelLVMarchCMinusFasty IntelLVMarchGFasty IntelLVMarchRAWFasty IntelLVMarchSLFasty IntelLVMatsppFasty IntelLVPMOVIFasty IntelLVScanFasty IntelLVAddrDecodeColumnFasty IntelLVAddrDecodeColumnOnlyFasty IntelLVAddrDecodeRowFasty IntelLVButterflyFasty IntelLVMarchSRFasty IntelLVMarchSSFasty IntelLVGalRowFasty IntelLVMatspFasty IntelLVSlidDiagStressFasty IntelLVTowalk2Fasty IntelLVWalkDiagFasty IntelLVWalkRowFasty IntelFIFAReadRecoveryFx_FIFA IntelFIFAWriteNOPTransitionFx_FIFA IntelFIFAWriteRecoveryFx_FIFA IntelFIFAWriteTransitionFx_FIFA IntelLVArrayReadLoopFx_FIFA IntelLVArrayWriteAndInverseLoopFx_FIFA IntelLVArrayWriteLoopFx_FIFA IntelLVArrayWriteReadLoopFx_FIFA IntelLVArrayDAddressRasterFx IntelLVPMOVIRasterFastx_NOCDP IntelLVPMOVIRasterFx_SAR IntelLVArrayRead10Fastx IntelLVArrayRead11Fastx IntelLVArrayReadFastx IntelLVArrayWrite10Fastx IntelLVArrayWrite11Fastx IntelWriteOneAddress IntelLVArrayWriteAddrRangeFx IntelLVPMOVIFastx"
set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/extra_operation_sets "SyncCustom"

// Specify that memory select ports should not be intercepted by BISR chain repair access.
read_config_data -in_wrapper $spec/MemoryBisr -from_string "
  AdvancedOptions {
    Memory(*) {
      DisablePortDuringShifting(select) : off;
    }
  }
"

// Create an MBIST ready status output "diagnosis done".
read_config_data -in_wrapper $spec/MemoryBist -from_string "
  DiagnosisOptions {
    ReadyStatusModule {
      ready_status_output : firebird7_in_mbist_diag_done;
    }
  }
"

// DFT Overrides for Memory Controls (Power Management and Trim Fuse)
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_spec/array_pwrmgmt_sib_tdr.dft_spec
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_spec/array_trim_fuse_override_sib_tdr.dft_spec

// Add SIB security.
dofile ./dofiles/common/proc_add_sib_security.do

add_sib_security spare_red                 $SECURE_RED
add_sib_security spare_orange              $SECURE_ORANGE
add_sib_security spare_insysbist           $SECURE_INSYSBIST
add_sib_security upm                       $SECURE_RED
add_sib_security array_pwrmgmt             $SECURE_INSYSBIST
add_sib_security array_trim_fuse_override  $SECURE_RED
add_sib_security sti                       $SECURE_INSYSBIST

// Change every TDR to be Read-Write (RW).
set Tdrs [get_config_elements Tdr -hierarchical]
foreach_in_collection {Tdr} $Tdrs {
   set_config_value extra_bits_capture_value -in_wrapper [get_single_name $Tdr] self
}

// Report the final DFT Specification
report_config_data $spec


////////////////////////////////////////////
// Step 3. Validate the DFT Specification //
////////////////////////////////////////////

process_dft_specification -validate_only


////////////////////////////////////////////////////////////
// Step 4. Create DFT Hardware with the DFT Specification //
////////////////////////////////////////////////////////////

process_dft_specification -transcript_insertion_commands

