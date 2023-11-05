
/////////////////////////////
// Step 1. Set the Context //
/////////////////////////////

set_context dft -no_rtl -design_identifier gate1


////////////////////////////////
// Step 2. Read the Libraries //
////////////////////////////////

// Read the standard cell library models.
dofile ./dofiles/common/read_standard_cell_libraries.do

// Read the IDV (Intra-Die Variation) cell library models.
dofile ./dofiles/common/read_idv_libraries.do

// Read the memory library models for MBIST.
set_design_source -format tcd_memory -y ./inputs/libraries/memory -extension lvlib

// Read the custom Intel MBIST algorithms.
dofile ./dofiles/common/read_intel_mbist_algorithms.do


/////////////////////////////
// Step 3. Read the Design //
/////////////////////////////

// Read the ICL and verilog for UPM (Universal Process Monitor).
read_icl ./inputs/design/icl/dteg_upm_4hip_top.icl
read_verilog ./inputs/design/verilog/firebird7_in_dteg_upm_top.vg

// Read the pre-DFT netlist.
read_verilog ./inputs/design/verilog/firebird7_in.v.gz

// Match the module names from the ICL and TCD with the module names in the verilog.
set_module_matching_options -prefix_pattern_list "firebird7_in_" -suffix_pattern_list "_(\[0-9\])+" -regexp


//////////////////////////////////
// Step 4. Elaborate the design //
//////////////////////////////////

set_current_design firebird7_in

// Add black boxes for modules that are intentionally undefined.
add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}


/////////////////////////////////////////////
// Step 5. Load and Report the Design Data //
/////////////////////////////////////////////

// Read physical layout information.
read_def ./inputs/design/def/firebird7_in.def.gz

// Read power domain information.
read_upf ./inputs/design/upf/firebird7_in.upf

// Useful report commands //

// Check to see that we read the memory design sources in correctly.
report_module_matching -format tcd_memory

// Show the memory library files that were loaded.
report_config_data -partition tcd -levels 1

// Report all loaded memories, visible in the current design.
report_memory_instances

