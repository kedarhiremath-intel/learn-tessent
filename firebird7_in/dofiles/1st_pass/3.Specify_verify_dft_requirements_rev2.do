// This script is a basic demonstration of how to specify the MBIST requirements before creating the DFT Specification.

set_system_mode setup

add_clocks clk -label clk_bbm -period 783


// Step 1. Use the "set_dft_specification_requirements" command to specify the design rules to check, and the instrument types to include in the DFT Specification.
// Use the "-memory_test on" option to implement MBIST.
set_dft_specification_requirements -memory_test on


// Step 2. Load the physical layout information through a standard DEF file.
// This file must contain the physical locations of the memories.
read_def ./inputs/from_SD/firebird7_in.def.gz


error ""


// Step 3. Specify the default values for MBIST used by the "create_dft_specification" command by reading in a DefaultsSpecification wrapper.
read_config_data ./inputs/from_MINT/intel_mbist_defaults.dft_spec


// Step 4. Designate MBIST partitioning groups to explicitly assign memory instances to MBIST controllers.
dofile ./inputs/from_SD/partition_memories.do

