// This script is a basic introduction to DFT signals, and a demonstration of how to specify the Logic Test requirements in Tessent.


// Step 1. You must be in "setup" mode to perform the operations in this script.
set_system_mode setup


// Step 2. You must add DFT signals with the "add_dft_signals" command.
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


// Step 3. You can create your own custom DFT signals with "register_static_dft_signal_names" command.
// For example, you must register and add a custom DFT signal for fscan_clkungate.
register_static_dft_signal_names fscan_clkungate -default_value_in_all_test 0 -reset_value 0
add_dft_signals fscan_clkungate -create_with_tdr


// Step 4. You can add DFT control points with the "add_dft_control_points" command.
// For example, you must add DFT control points onto the OR gate for FSCAN CLKUNGATE = fscan_clkungate | scan_en.
add_dft_control_points u_teamaker_fscan_clk_ungate_or2/a -type static_dft_control -dft_signal_source_name fscan_clkungate -ignore_existing_sources
add_dft_control_points u_teamaker_fscan_clk_ungate_or2/b -type dynamic_dft_control -dft_signal_source_name scan_en -ignore_existing_sources


// Step 5. You must set the DFT Specification requirements to "-logic_test on".
set_dft_specification_requirements -logic_test on


// Step 6. You must specify all the design instances that are nonscannable with the "add_nonscan_instances" command.
// For example, the BISOLs are non-scan logic - to function correctly, you must keep them active during scan.
add_nonscan_instances -instances u_intest_edt_scan_bi_sol_0
add_nonscan_instances -instances u_extest_edt_scan_bi_sol_0


// Step 7. Review the list of DFT signals and DFT control points from Steps 2-4.
report_dft_signals
report_dft_control_points

