set period 783
create_clock [get_ports clk] -name clk_bbm -period $period
create_clock -name clk_bbmVirtual          -period $period

set_clock_uncertainty -setup 35 [get_clocks ]
set_clock_uncertainty -hold  12 [get_clocks ]
set_clock_uncertainty -from clk_bbmVirtual -to clk_bbm 70
set_clock_uncertainty -from clk_bbm -to clk_bbmVirtual 70

set_false_path -hold -from [get_clock clk_bbmVirtual] -to [get_clock clk_bbm]
set_false_path -hold -from [get_clock clk_bbm] -to [get_clock clk_bbmVirtual]

set_clock_transition 40 [get_clocks]

set inPorts  [get_ports -filter "direction == in && full_name != clk" ]
set clkPorts [get_ports clk]
set outPorts [get_ports -filter "direction == out" ]

set_input_transition 40 $inPorts
set_input_transition 40 $clkPorts
set_load -pin_load 10 $outPorts

set_input_delay -clock clk_bbmVirtual -max [expr $period * 0.6] $inPorts
set_false_path -hold -from $inPorts

set_output_delay -clock clk_bbmVirtual -max [expr $period * 0.6] $outPorts
set_false_path -hold -to $outPorts

set_disable_timing [get_cells ewm_my_firebird7_in_rtl_rel_01_syn*] -from clk -to o

set_multicycle_path 10 -setup -from [get_ports identity[*]]
set_false_path -hold -from [get_ports identity[*]]

set memCntl [get_pins -hier -filter "lib_pin_name==deepsleep || lib_pin_name==shutoff" ]
set_multicycle_path 50 -setup -through $memCntl
set_multicycle_path 49 -hold  -through $memCntl
