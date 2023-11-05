
/////////////////////////////
// Step 1. Run Simulations //
/////////////////////////////

set_testbench_simulation_options -default_simulator vcs -parallel_simulations maxcpu
set_testbench_simulation_options vcs -simulator_options {-timescale=1ns/1ps +v2k_generate +no_timing_check}

// Use this command to generate VPD to open in DVE
set_testbench_simulation_options vcs -keep_simulation_data on -store_simulation_waveforms on

set_simulation_library_sources -f ./inputs/simulation/simulation.options

run_testbench_simulations


///////////////////////////
// Step 2. Check Results //
///////////////////////////

// Go to simulation_outdir and open waveform in DVE:
// nbjob run --mode interactive dve -vpd dump.VPD

