
/////////////////////////////////////////
// Set Up Circuit and Tool Information //
/////////////////////////////////////////

// Set the context. Design ID = gate3
set_context dft -scan -design_identifier gate3

// Read the standard cell library models.
dofile ./dofiles/common/read_standard_cell_libraries.do

// Read the IDV (Intra-Die Variation) cell library models.
dofile ./dofiles/common/read_idv_libraries.do

// Read the memory library models for MBIST.
set_design_source -format tcd_memory -y ./inputs/libraries/memory -extension lvlib

// Read the design after the insertion of EDT, OCC and SSN (Design ID = gate2)
read_design firebird7_in -design_identifier gate2

// Elaborate the design.
set_current_design firebird7_in

// Add black boxes for modules that are intentionally undefined.
add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}

// Set the design level.
set_design_level physical_block

// Specify non-scan instances.
// The BISOLs and the EDT pipeline flops.
add_nonscan_instance u_extest_edt_scan_bi_sol_0
add_nonscan_instance u_intest_edt_scan_bi_sol_0
add_nonscan_instance extest_edt_pipe_in_0
add_nonscan_instance extest_edt_pipe_out_0
add_nonscan_instance intest_edt_pipe_in_0
add_nonscan_instance intest_edt_pipe_in_0_1
add_nonscan_instance intest_edt_pipe_in_0_2
add_nonscan_instance intest_edt_pipe_in_0_3
add_nonscan_instance intest_edt_pipe_out_0
add_nonscan_instance intest_edt_pipe_out_0_1

// Specify the output of the OR gate for the FSCAN_UNGATE as the clock gate enable pin.
// This will go to the TE pin of every clock gater in the design.
set_clock_gating_enable u_teamaker_fscan_clk_ungate_or2/o

