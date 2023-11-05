set scale 1

set tck_period [expr $scale * 26]
set hipck_period [expr $scale * 0.30]


## -----------------------------------------------------------------------------
## Create clocks and related information.
## -----------------------------------------------------------------------------

set_fanout_load 20 [get_ports {dfx_upm_so}]


create_clock [get_ports dfx_upm_tck] -name tck -period 26 -waveform {0  13}


create_clock [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fin] -name hipck -period 0.300 -waveform {0 0.150}

#create_generated_clock [get_pins dteg_upm_top/upm1/upm_reg/upm_clk_divider_upm_fabric/div_2_clk]  -name divtck2  -source [get_pins inst_prog_divider/fin] -edges {1 3   5} 
create_generated_clock [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fout]  -name divtck2  -source [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fin] -edges {1 3   5}  -add
create_generated_clock [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fout]  -name divtck4  -source [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fin] -edges {1 5   9}  -add
create_generated_clock [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fout]  -name divtck8  -source [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fin] -edges {1 9  17}  -add
create_generated_clock [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fout]  -name divtck16 -source [get_pins upm1/upm_reg/upm_clk_divider_upm_fabric/fin] -edges {1 17 33}  -add

set_clock_transition -min -fall [expr $scale * 0.040] 	[get_clocks {tck hipck}]
set_clock_transition -min -rise [expr $scale * 0.040] 	[get_clocks {tck hipck}]
set_clock_transition -max -fall [expr $scale * 0.080] 	[get_clocks {tck hipck}]
set_clock_transition -max -rise [expr $scale * 0.080] 	[get_clocks {tck hipck}]

set_max_transition [expr $scale * 0.150] -data_path   	[get_clocks {tck hipck}]
set_max_transition [expr $scale * 0.100] -clock_path  	[get_clocks {tck hipck}]



## -----------------------------------------------------------------------------
## End Of File
## ------------------------------------





