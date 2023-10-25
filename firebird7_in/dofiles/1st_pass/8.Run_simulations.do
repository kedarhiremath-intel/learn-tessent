set_testbench_simulation_options -default_simulator vcs
set_testbench_simulation_options vcs -simulator_options {-timescale=1ns/1ps +v2k_generate +no_timing_check}

set_simulation_library_sources -f ./inputs/simulation.options

run_testbench_simulations
