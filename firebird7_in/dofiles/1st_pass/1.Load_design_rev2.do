// This script will demonstrate how to read in the designs and design sources necessary for MBIST insertion.
// This script builds upon the previous revision (load_design_rev2.do).


set_context dft -no_rtl -design_identifier gate1

dofile ./dofiles/common/read_standard_cell_libraries.do


// Step 1. Use the "set_design_sources" command to reference MBIST libraries.
set_design_source -format tcd_memory -y ./inputs/from_IP/mbist_libraries -extension lvlib


// Step 2. Use the "set_module_matching_options" command to match the names from the MBIST library models with the names in the Netlist.
set_module_matching_options -prefix_pattern_list "firebird7_in_" -suffix_pattern_list "_(\[0-9\])*" -regexp

// Memory wrapper name in LVLIB:   "ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper"
// Memory wrapper name in netlist: "firebird7_in_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper_0"...
// The synthesis tool added a prefix "firebird7_in_" and a suffix "_0" (underscore number).


// Step 3. The MemoryBIST controllers must be built with custom Intel-defined MBIST algorithms, in addition to the industry-standard MBIST algorithms.
// You must read in the necessary Intel-defined MBIST algorithms. These are also in the LVLIB format.
dofile ./dofiles/common/read_intel_mbist_algorithms.do


read_verilog ./inputs/from_Customer/firebird7_in.v.gz

set_current_design firebird7_in

add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}

set_design_level physical_block


// Step 4. Check to see that we read the memory design sources in correctly.

report_module_matching -format tcd_memory

