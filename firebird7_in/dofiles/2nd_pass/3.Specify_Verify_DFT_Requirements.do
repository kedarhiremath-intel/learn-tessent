
////////////////////////////////////////////////
// Step 1. Set DFT Specification Requirements //
////////////////////////////////////////////////

// Set system mode to "setup".
set_system_mode setup

// You must set the DFT Specification requirements to "-logic_test on".
set_dft_specification_requirements -logic_test on

// Set the design level.
set_design_level physical_block


////////////////////////////////////
// Step 2. Define the DFT Signals //
////////////////////////////////////

help add_dft_signals

add_dft_signals ltest_en
add_dft_signals int_ltest_en
add_dft_signals ext_ltest_en
add_dft_signals int_edt_mode
add_dft_signals ext_edt_mode
add_dft_signals async_set_reset_static_disable
add_dft_signals async_set_reset_dynamic_disable -create_from_other_signals
add_dft_signals int_mode
add_dft_signals ext_mode
add_dft_signals se_pipeline_en
add_dft_signals occ_kill_clock_en
add_dft_signals tck_occ_en
add_dft_signals memory_bypass_en

// Register and add a custom DFT signal for fscan_clkungate.
register_static_dft_signal_names fscan_clkungate -default_value_in_all_test 0 -reset_value 0
add_dft_signals fscan_clkungate -create_with_tdr

// Add DFT control points onto the OR gate for FSCAN CLKUNGATE = fscan_clkungate | scan_en.
add_dft_control_points u_teamaker_fscan_clk_ungate_or2/a -type static_dft_control -dft_signal_source_name fscan_clkungate -ignore_existing_sources
add_dft_control_points u_teamaker_fscan_clk_ungate_or2/b -type dynamic_dft_control -dft_signal_source_name scan_en -ignore_existing_sources

// Review the list of DFT signals and DFT control points
report_dft_signals
report_dft_control_points


/////////////////////
// Step 3. Run DRC //
/////////////////////

// The BISOLs are non-scan logic - to function correctly, you must keep them active during scan.
add_nonscan_instances -instances u_intest_edt_scan_bi_sol_0
add_nonscan_instances -instances u_extest_edt_scan_bi_sol_0

check_design_rules

