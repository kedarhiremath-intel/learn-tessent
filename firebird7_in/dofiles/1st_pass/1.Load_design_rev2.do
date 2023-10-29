// This revision of the script will demonstrate the steps to load the design sources for MBIST.


// Step 1. Set the context.
set_context dft -no_rtl -design_identifier gate1

// "dft" is the context for DFT insertion.
// "-no_rtl" is for netlist-based insertion.


// Step 2. Read the standard cell libraries.
dofile ./dofiles/common/read_standard_cell_libraries.do


// Step 3. Reference the MBIST libraries to read the memory models.
// The memory models are in a legacy LVLIB (LogicVision Library) format.
set_design_source -format tcd_memory -y ./inputs/from_IP/mbist_libraries -extension lvlib


// Step 4. Read the custom Intel MBIST algorithms.
dofile ./dofiles/common/read_intel_mbist_algorithms.do


// Step 5. Read the pre-DFT netlist.
read_verilog ./inputs/from_Customer/firebird7_in.v.gz


// Step 6. Match the names from the memory models with the names in the netlist.
set_module_matching_options -prefix_pattern_list "firebird7_in_" -suffix_pattern_list "_(\[0-9\])+" -regexp

// Here is an example of how to form the "set_module_matching_options" command.

// Memory model: ./inputs/from_IP/mbist_libraries/ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper.lvlib
// Netlist: ./inputs/from_Customer/firebird7_in.v.gz

// MemoryTemplate name from memory model: "ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper"
// Module names from netlist: 
//  "module firebird7_in_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper_0"
//  "module firebird7_in_ip783hdspsr1024x22m8b1s0c1r2p3d0a2_mem_wrapper_1"
//  ..

// The synthesis tool added a prefix "firebird7_in_" and a suffix "underscore number".
// set_module_matching_options -prefix_pattern_list "firebird7_in_" -suffix_pattern_list "_(\[0-9\])+" -regexp


// Step 7. Elaborate the design.
set_current_design firebird7_in

// Review the warning message: "Undefined modules were found."


// Step 8. Add black boxes for modules that are intentionally undefined.
add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}


// Step 9. Set the design level.
set_design_level physical_block


// Useful report commands.

// Check to see that we read the memory design sources in correctly.
report_module_matching -format tcd_memory

// Show the memory library files that were loaded.
report_config_data -partition tcd -levels 1

// Report all loaded memories, visible in the current design.
report_memory_instances

