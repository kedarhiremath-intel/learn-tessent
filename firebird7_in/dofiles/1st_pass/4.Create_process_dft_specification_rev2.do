// This script is a demonstration of how to insert MBIST using the Tessent DFT Specification.


// Step 1. Create the DFT specification.
set spec [create_dft_specification -replace]
report_config_data $spec

// Review the MBIST requirements in the DFT specification.


// Step 2. Edit the DFT Specification.


// Set the algorithms and operation sets for the MBIST controllers.
set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/algorithm "IntelLVPMOVIFastx"
set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/operation_set "SyncCustom"
//set_config_value $spec/MemoryBist/Controller(c1)/AdvancedOptions/extra_algorithms "IntelLVPMarchCExt, IntelLVFailinjFx, IntelLVAddrDecodeFx, IntelLVAddrDecodeRowFastx, IntelLVAddrDecodeRowOnlyFastx, IntelLVArrayIFastx, IntelLVArrayWriteFastx, IntelLVGalColumnFastx, IntelLVGalWRrecColFastx, IntelLVHammer10Fastx, IntelLVMarchCMinusFastx, IntelLVMarchGFastx, IntelLVMarchRAWFastx, IntelLVMarchSLFastx, IntelLVMatspDWOneFastx, IntelLVMatspDWThreeFastx, IntelLVMatspDWTwoFastx, IntelLVMatsppFastx, IntelLVScanFastx, IntelLVSegSelFastx, IntelLVButterflyFastx, IntelLVMarchSRFastx, IntelLVMarchSSFastx, IntelLVButterflyWriteFastx, IntelLVTowalk2Fastx, SMarch, IntelLVAddrDecodeColumnFastx, IntelLVCellStrFastx, IntelLVGalDiagFastx, IntelLVHammerFastx, IntelLVSlideDiagFx, IntelLVSlideDiagFastxDiagEven, IntelLVSlideDiagFastxRead, IntelLVWalkColFastx, IntelLVAddrDecodeFy, IntelLVButterflyWriteFasty, IntelLVGalWRrecRowFasty, IntelLVHammer10Fasty, IntelLVMarchCMinusFasty, IntelLVMarchGFasty, IntelLVMarchRAWFasty, IntelLVMarchSLFasty, IntelLVMatsppFasty, IntelLVPMOVIFasty, IntelLVScanFasty, IntelLVAddrDecodeColumnFasty, IntelLVAddrDecodeColumnOnlyFasty, IntelLVAddrDecodeRowFasty, IntelLVButterflyFasty, IntelLVMarchSRFasty, IntelLVMarchSSFasty, IntelLVGalRowFasty, IntelLVMatspFasty, IntelLVSlidDiagStressFasty, IntelLVTowalk2Fasty, IntelLVWalkDiagFasty, IntelLVWalkRowFasty, IntelFIFAReadRecoveryFx_FIFA, IntelFIFAWriteNOPTransitionFx_FIFA, IntelFIFAWriteRecoveryFx_FIFA, IntelFIFAWriteTransitionFx_FIFA, IntelLVArrayReadLoopFx_FIFA, IntelLVArrayWriteAndInverseLoopFx_FIFA, IntelLVArrayWriteLoopFx_FIFA, IntelLVArrayWriteReadLoopFx_FIFA, IntelLVArrayDAddressRasterFx, IntelLVPMOVIRasterFastx_NOCDP, IntelLVPMOVIRasterFx_SAR, IntelLVArrayRead10Fastx, IntelLVArrayRead11Fastx, IntelLVArrayReadFastx, IntelLVArrayWrite10Fastx, IntelLVArrayWrite11Fastx, IntelWriteOneAddress, IntelLVArrayWriteAddrRangeFx, IntelLVPMOVIFastx" // NOTE: THIS DOESN'T WORK. NEED TO DEBUG.
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

// DFT security ports for the ScanMux approach to SIB security.
read_config_data -in_wrapper $spec/IjtagNetwork ./inputs/dft_specs/dft_security.dft_spec

// Spare IJTAG Test Data Registers (TDRs).
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/spare_tdr.dft_spec

// DFT Overrides for Memory Controls (Power Management and Trim Fuse)
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/array_pwrmgmt_sib_tdr.dft_spec
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/array_trim_fuse_override_sib_tdr.dft_spec

// Change the access for every TDR to be Read-Write (RW). To do this, set the capture value of every TDR to "self".
set Tdrs [get_config_elements Tdr -hierarchical]
foreach_in_collection {Tdr} $Tdrs {
   set_config_value extra_bits_capture_value -in_wrapper [get_single_name $Tdr] self
}

// Here is a procedure I coded to create the ScanMuxes for SIB security. Can you figure out how this works?
dofile ./inputs/from_FlowAutomation/proc_add_sib_security.do

add_sib_security spare_red                 $SECURE_RED
add_sib_security spare_orange              $SECURE_ORANGE
add_sib_security spare_insysbist           $SECURE_INSYSBIST
add_sib_security array_pwrmgmt             $SECURE_INSYSBIST
add_sib_security array_trim_fuse_override  $SECURE_RED
add_sib_security sti                       $SECURE_INSYSBIST


// Step 3. Process the DFT Specification.
process_dft_specification -validate_only

process_dft_specification -transcript_insertion_commands

