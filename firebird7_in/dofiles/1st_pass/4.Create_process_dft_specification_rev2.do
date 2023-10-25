// This script is a demonstration of how to insert MBIST using the Tessent DFT Specification.
// We will build upon the previous revision of this script (config_spec_rev1.do). 


check_design_rules

set spec [create_dft_specification -replace]

// Step 1. Review the created DFT specification. See how the MBIST requirements are automatically plugged in.
// We need to massage the "read_config_data" commands, since the IjtagNetwork and HostScanInterface(ijtag) are already in the DFT Specification.

report_config_data $spec

read_config_data -in_wrapper $spec/IjtagNetwork -from_string "
  DataInPorts {
    port_naming : secure_red, secure_orange, secure_insysbist, secure_green;
  }
"

read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/spare_tdr.dft_spec
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/array_pwrmgmt_sib_tdr.dft_spec
read_config_data -in_wrapper $spec/IjtagNetwork/HostScanInterface(ijtag) ./inputs/dft_specs/array_trim_fuse_override_sib_tdr.dft_spec

process_dft_specification -validate_only

process_dft_specification -transcript_insertion_commands

