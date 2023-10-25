// Enable this script to take parameters, so that you can run the same script to run different scan modes and fault models.
// The default parameter values are for INTEST Stuck-At ATPG.
array set params {
  design_id "atpg_saf_trad"
  fault_type "stuck"
  mode_name "intest_saf_traditional"
  mode_type "internal"
  scan_mode "int_mode"
}
array set params $tessent_user_arg


// Step 1. Set the context to "patterns -scan".
set_context patterns -scan


// Step 2. Load the scan-inserted design (Design ID = gate3).
dofile ./dofiles/common/read_standard_cell_libraries.do
set_design_source -format tcd_memory -y ./inputs/from_IP/mbist_libraries -extension lvlib
set_module_matching_options -prefix_pattern_list "firebird7_in_" -suffix_pattern_list "_(\[0-9\])*" -regexp
read_design firebird7_in -design_identifier gate3
set_current_design firebird7_in
add_black_boxes -modules { \
  ip783hdspsr1024x22m8b1s0c1r2p3d0a2 \
  ip783hdspsr1024x72m2b2s0c1r2p3d0a2 \
  ip783hdspsr512x32m4b1s0c1r2p3d0a2 \
}
set_design_level physical_block


// Step 3. Set the current mode.
// Default = "set_current_mode intest_saf_traditional -type internal"
set_current_mode $params(mode_name) -type $params(mode_type)


// Step 4. Import the scan mode.
// Default = "import_scan_mode int_mode"
import_scan_mode $params(scan_mode)


// Step 5. Set static DFT values.
set_static_dft_signal_values tck_occ_en 1
set_static_dft_signal_values memory_bypass_en 1


// Step 6. Assert the DFT overrides for the power management settings for the memories.
//source inputs/from_FlowAutomation/mint_patgen_assertMbist.pdl
//set_test_setup_icall assertMbist -front


// Step. Nofault the instances that we want to remove from ATPG consideration.


// Step. Check the design rules.
check_design_rules


// Set up commands for distributed ATPG
set distributed scheduler_timeout 300
set_multiprocessing_options -generic_scheduler "nbjob run --class \"SLES12&&16G&&1C\"  %command"
set_multiprocessing_options -generic_delete "nbjob remove %job"
add processors generic:8


// Possibly detected faults get credit=0 per Intel policy
set_possible_credit 0


// Stop the pattern generation after the first 500 patterns to write out an early set of testbenches
set_atpg_limits -pattern_count 500


# Add faults and create patterns; will need to judiciously remove faults
add_fault -all
report_statistics -detail
system date


create_patterns
report_statistics -detail
system date

