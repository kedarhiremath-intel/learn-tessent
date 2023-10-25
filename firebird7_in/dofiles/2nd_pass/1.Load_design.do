// This script will demonstrate the revised steps to load the design from the first insertion pass in preparation for insertion of EDT, OCC and SSN.


// Step 1. Set the context. Design ID = gate2
set_context dft -no_rtl -design_identifier gate2


dofile ./dofiles/common/read_standard_cell_libraries.do

set_design_source -format tcd_memory -y ./inputs/from_IP/mbist_libraries -extension lvlib

set_module_matching_options -prefix_pattern_list "firebird7_in_" -suffix_pattern_list "_(\[0-9\])*" -regexp

// Step 2. Read in the netlists for the Burn-in Signs-of-Life Monitors (BISOL).
read_verilog ./inputs/from_FlowAutomation/firebird7_in_intest_edt_scan_bi_sol.vg
read_verilog ./inputs/from_FlowAutomation/firebird7_in_extest_edt_scan_bi_sol.vg


// Step 3. Read the design from the previous insertion pass. Design ID = gate1
read_design firebird7_in -design_identifier gate1


set_current_design firebird7_in


add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}


set_design_level physical_block

