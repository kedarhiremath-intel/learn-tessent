
/////////////////////////////
// Step 1. Set the Context //
/////////////////////////////

set_context dft -no_rtl -design_identifier gate2


////////////////////////////////
// Step 2. Read the Libraries //
////////////////////////////////

// Read the standard cell library models.
dofile ./dofiles/common/read_standard_cell_libraries.do

// Read the IDV (Intra-Die Variation) cell library models.
dofile ./dofiles/common/read_idv_libraries.do

// Read the memory library models for MBIST.
set_design_source -format tcd_memory -y ./inputs/libraries/memory -extension lvlib


/////////////////////////////
// Step 3. Read the Design //
/////////////////////////////

// Read the netlists for the Burn-in Signs-of-Life Monitors (BISOL).
read_verilog ./inputs/design/verilog/firebird7_in_intest_edt_scan_bi_sol.vg
read_verilog ./inputs/design/verilog/firebird7_in_extest_edt_scan_bi_sol.vg

// Read the design from the previous insertion pass.
read_design firebird7_in -design_identifier gate1

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

