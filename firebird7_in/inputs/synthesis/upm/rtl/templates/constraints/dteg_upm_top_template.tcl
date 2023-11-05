#
set partition_name upm1
#
set top_level $partition_name
#
set clock_slew_tck    1000;
set clock_slew_debug  75;
set clock_slew_hipclk 75;
#
#
set ifdebugclk 1;
#
[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 1 %]
set system 1;
[% END %]
[% IF upm_variables.DFX_UPM_SYS_CTRL_EN == 0 %]
set system 0;
[% END %]

[% IF upm_variables.DFX_UPM_DCM_OUT == 1 %]
set decen 1;
[% END %]
[% IF upm_variables.DFX_UPM_DCM_OUT == 0 %]
set decen 0;
[% END %]
#
#
#
########
[% IF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_6" %]
# thermal set to 1 by fragen
set thermal 1;
[% ELSIF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_5" %]
# thermal set to 1 by fragen
set thermal 1;
[% ELSIF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_4" %]
# thermal set to 1 by fragen
set thermal 1;
[% ELSIF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_3" %]
# thermal set to 1 by fragen
set thermal 1;
[% ELSIF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_2" %]
# thermal set to 1 by fragen
set thermal 1;
[% ELSIF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_THERMAL_1" %]
# thermal set to 1 by fragen
set thermal 1;
[% ELSE %]
# thermal set to 0 by fragen
set thermal 0;
[% END %]


[% IF upm_variables.DFX_UPM_CBB_HIP_TYPE != "UPM_APM" %]
# setting apm constraints to 0
set apm_en 0;
set non_apm 1;
[% END %]
[% IF upm_variables.DFX_UPM_CBB_HIP_TYPE == "UPM_APM" %]
# setting apm constraints to 1
set apm_en 1;
set non_apm 0;
[% END %]
#
#
set enableio 1;
set dfx_upm_tck_port dfx_upm_tck
set dfx_upm_clk_debug_port dfx_upm_clk_debug
set dfx_upm_func_clk dfx_upm_func_clk
#
#
# false path constraints , since these are async ports
set_false_path -from [get_object_name [get_ports dfx_upm_fdfx_powergood]]
set_false_path -from [get_object_name [get_ports dfx_upm_trstb]]
#
#
if {$apm_en} {
# apm module present inside ip
set hipclk_pins_0 [get_object_name [get_pins */apm_osc_out -hierarchical]]
create_clock $hipclk_pins_0  -name ${partition_name}_hipclk_apm  -period 400.0 -waveform {0  200}
#
set_clock_groups -asynchronous -group ${partition_name}_hipclk_apm
#
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_hipclk_apm
#
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_hipclk_apm
#
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_hipclk_apm
#
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_hipclk_apm
#
#
#
if {$decen} {
create_generated_clock [get_ports dfx_upm_dcm_out[0]] -name  ${partition_name}_dcm_out -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/fin]] -divide_by 1 -master_clock  ${partition_name}_hipclk_apm -add
}
#
#
#
set p0 [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/en_div_i[0]]]
#
#
#set_false_path -hold -rise_from   [get_clocks ${partition_name}_fin_0]  -fall_to [get_clocks ${partition_name}_fin_0]
#
set_case_analysis 1 $p0
#
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_2/clkout] ] -name   ${partition_name}_counter_div_2_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/fin]]              -divide_by 2 -master_clock ${partition_name}_hipclk_apm -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_4/clkout] ] -name   ${partition_name}_counter_div_4_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_2/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_2_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_8/clkout] ] -name   ${partition_name}_counter_div_8_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_4/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_4_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_16/clkout]] -name   ${partition_name}_counter_div_16_clk_0   -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_8/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_8_clk_0 -add
#
#set_false_path -hold -rise_from [get_clocks ${partition_name}_hipclk_apm] -fall_to [get_clocks ${partition_name}_hipclk_apm]
#
# apm module present OUTSIDE ip
#create_clock [get_object_name [get_ports apm_osc_out]] -name ${partition_name}_apm_osc_out  -period 500.0 -waveform {0  250}
#set_false_path -hold -rise_from [get_clocks ${partition_name}_apm_osc_out] -fall_to [get_clocks ${partition_name}_apm_osc_out]
#set_clock_groups -asynchronous -group ${partition_name}_apm_osc_out
#set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_apm_osc_out
#set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_apm_osc_out
#set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_apm_osc_out
#set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_apm_osc_out
}

if {$non_apm} {
# non apm module
set hipclk_pins_0 [get_object_name [get_pins */hfbankl -hierarchical]]

if {$thermal} {
set hipclk_pins_1 [get_object_name [get_pins */hfbanklvt -hierarchical]]
}

}



set i 0;
#
if {$non_apm} {
foreach x $hipclk_pins_0 {
#
create_clock $x  -name ${partition_name}_hipclk_0_${i} -period 400.0 -waveform {0  200}
#
set_clock_groups -asynchronous -group ${partition_name}_hipclk_0_${i}
#
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_hipclk_0_${i}
#
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_hipclk_0_${i}
#
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_hipclk_0_${i}
#
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_hipclk_0_${i}
#
#set_false_path -hold -rise_from [get_clocks ${partition_name}_hipclk_0_${i}] -fall_to [get_clocks ${partition_name}_hipclk_0_${i}]
#
incr i;
#
}
#
#
#
if {$thermal} {
set i 0;
foreach x $hipclk_pins_1 {
#
create_clock $x  -name ${partition_name}_hipclk_1_${i} -period 400.0 -waveform {0  200}
#
set_clock_groups -asynchronous -group ${partition_name}_hipclk_1_${i}
#
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_hipclk_1_${i}
#
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_hipclk_1_${i}
#
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_hipclk_1_${i}
#
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_hipclk_1_${i}
#
#set_false_path -hold -rise_from [get_clocks ${partition_name}_hipclk_1_${i}] -fall_to [get_clocks ${partition_name}_hipclk_1_${i}]
#
incr i;
#
}
# forloop thermal
}
# thermal
}
# non apm
#
if {$system} {
create_clock [get_object_name [get_ports $dfx_upm_func_clk]] -name ${partition_name}_dfx_upm_func_clk -period 1250.0 -waveform {0  625}
#set_false_path -hold -rise_from [get_clocks ${partition_name}_dfx_upm_func_clk] -fall_to [get_clocks ${partition_name}_dfx_upm_func_clk]
set_clock_groups -asynchronous -group ${partition_name}_dfx_upm_func_clk
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_dfx_upm_func_clk
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_dfx_upm_func_clk
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_dfx_upm_func_clk
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_dfx_upm_func_clk
set_false_path -from [get_object_name [get_ports dfx_upm_sys_rstn]]
}
#
#
create_clock [get_object_name [get_ports $dfx_upm_tck_port]] -name dfx_upm_tck -period 5000.0 -waveform {0  2500}
set_clock_transition -min -fall $clock_slew_tck  {dfx_upm_tck}
set_clock_transition -min -rise $clock_slew_tck  {dfx_upm_tck}
set_clock_transition -max -fall $clock_slew_tck  {dfx_upm_tck}
set_clock_transition -max -rise $clock_slew_tck  {dfx_upm_tck}
set_clock_groups -asynchronous -group {dfx_upm_tck}
#
#
#
if {$ifdebugclk} {
create_clock [get_object_name [get_ports dfx_upm_clk_debug]] -name dfx_upm_clk_debug -period 400.0 -waveform {0  200}
set_clock_transition -min -fall $clock_slew_debug  {dfx_upm_clk_debug}
set_clock_transition -min -rise $clock_slew_debug  {dfx_upm_clk_debug}
set_clock_transition -max -fall $clock_slew_debug  {dfx_upm_clk_debug}
set_clock_transition -max -rise $clock_slew_debug  {dfx_upm_clk_debug}
set_clock_groups -asynchronous -group {dfx_upm_clk_debug}
}
#
if {$non_apm} {
#

if {$thermal} {
#
set x0 [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/fin]] 
create_clock $x0 -name ${partition_name}_fin_0 -period 400.0 -waveform {0 200}
#
set x0 [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/fin]] 
create_clock $x0 -name ${partition_name}_fin_1 -period 400.0 -waveform {0 200}
#
#
set p0 [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/en_div_i[0]]]
#
set p1 [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/en_div_i[0]]]
#
set_case_analysis 1 $p0
#
set_case_analysis 1 $p1
#
if {$decen} {
create_generated_clock [get_ports dfx_upm_dcm_out[0]] -name  ${partition_name}_dcm_out_0 -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/fin]]  -divide_by 1 -master_clock  ${partition_name}_fin_0 -add
create_generated_clock [get_ports dfx_upm_dcm_out[1]] -name  ${partition_name}_dcm_out_1 -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/fin]]  -divide_by 1 -master_clock  ${partition_name}_fin_1 -add
}
#
#
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_fin_0
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_fin_0
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_fin_0
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_fin_0
#
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_fin_1
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_fin_1
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_fin_1
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_fin_1
#
#
#set_false_path -hold -rise_from   [get_clocks ${partition_name}_fin_0]  -fall_to [get_clocks ${partition_name}_fin_0]
#
#
#set_false_path -hold -rise_from   [get_clocks ${partition_name}_fin_1]  -fall_to [get_clocks ${partition_name}_fin_1]
#
#
#
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_2/clkout] ] -name   ${partition_name}_counter_div_2_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/fin]]              -divide_by 2 -master_clock ${partition_name}_fin_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_4/clkout] ] -name   ${partition_name}_counter_div_4_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_2/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_2_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_8/clkout] ] -name   ${partition_name}_counter_div_8_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_4/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_4_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_16/clkout]] -name   ${partition_name}_counter_div_16_clk_0   -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs/u_upm_dftb_clk_divider_by_8/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_8_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_2/clkout] ] -name   ${partition_name}_counter_div_2_clk_1   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/fin]]              -divide_by 2 -master_clock ${partition_name}_fin_1 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_4/clkout] ] -name   ${partition_name}_counter_div_4_clk_1   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_2/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_2_clk_1 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_8/clkout] ] -name   ${partition_name}_counter_div_8_clk_1   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_4/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_4_clk_1 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_16/clkout]] -name   ${partition_name}_counter_div_16_clk_1   -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric_2_cntrs_1/u_upm_dftb_clk_divider_by_8/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_8_clk_1 -add
#
} else {
set x0 [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/fin]] 
create_clock $x0 -name ${partition_name}_fin_0 -period 400.0 -waveform {0 200}
#
if {$decen} {
create_generated_clock [get_ports dfx_upm_dcm_out[0]] -name  ${partition_name}_dcm_out -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/fin]] -divide_by 1 -master_clock  ${partition_name}_fin_0 -add
}
#
#
#
set p0 [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/en_div_i[0]]]
#
#
#set_false_path -hold -rise_from   [get_clocks ${partition_name}_fin_0]  -fall_to [get_clocks ${partition_name}_fin_0]
#
set_case_analysis 1 $p0
#
set_clock_transition -min -fall $clock_slew_hipclk  ${partition_name}_fin_0
#
set_clock_transition -min -rise $clock_slew_hipclk  ${partition_name}_fin_0
#
set_clock_transition -max -fall $clock_slew_hipclk  ${partition_name}_fin_0
#
set_clock_transition -max -rise $clock_slew_hipclk  ${partition_name}_fin_0
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_2/clkout] ] -name   ${partition_name}_counter_div_2_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/fin]]              -divide_by 2 -master_clock ${partition_name}_fin_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_4/clkout] ] -name   ${partition_name}_counter_div_4_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_2/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_2_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_8/clkout] ] -name   ${partition_name}_counter_div_8_clk_0   -source  [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_4/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_4_clk_0 -add
#
create_generated_clock [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_16/clkout]] -name   ${partition_name}_counter_div_16_clk_0   -source [get_object_name [get_pins $top_level/UPM_REGS.UPM_NON_THERMAL.u_upm_reg/upm_clk_divider_upm_fabric/u_upm_dftb_clk_divider_by_8/clkout]]  -divide_by 2 -master_clock ${partition_name}_counter_div_8_clk_0 -add
#
#
}



}

if {$enableio} {
#
if {0} {
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_en_sensor]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_en_cal]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_en_osc]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_en_step]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_osc_sel]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_xtor_sel]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_mux_sel]]
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports apm_vdac_sel]]
## these are not on any clock but for constarining using tck
set_output_delay 10 -clock dfx_upm_tck [get_object_name [get_ports apm_debug_out]]
set_input_delay 10 -clock dfx_upm_tck [get_object_name [get_ports apm_debug_in]]
}
#
if {$decen} {
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_dcm_out]]
}
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_iso_n]]
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_fdfx_powergood]]
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_update]]
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_shift]]
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_capture]]
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_si]]
#
set_input_delay  2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_sel]]
#
set_output_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_so]]
#
set_false_path -from [get_object_name [get_ports dfx_upm_trstb]]
#
set_input_delay 2000 -clock dfx_upm_tck [get_object_name [get_ports dfx_upm_trstb]]
#
#
if {$system} {
#
set_input_delay  400 -clock ${partition_name}_dfx_upm_func_clk [get_object_name [get_ports dfx_upm_sys_rstn]]
#
set_input_delay  400 -clock ${partition_name}_dfx_upm_func_clk [get_object_name [get_ports dfx_upm_sys_en]]
#
set_input_delay 400 -clock ${partition_name}_dfx_upm_func_clk   [get_object_name [get_ports dfx_upm_sys_cbb_ctrl]] 
#
set_input_delay 400 -clock ${partition_name}_dfx_upm_func_clk   [get_object_name [get_ports dfx_upm_sys_cbb_pwr]]
#
set_input_delay 400 -clock ${partition_name}_dfx_upm_func_clk   [get_object_name [get_ports dfx_upm_sys_ctl]]
#
set_output_delay 400 -clock ${partition_name}_dfx_upm_func_clk    [get_object_name [get_ports dfx_upm_result]]
#
set_output_delay 400 -clock ${partition_name}_dfx_upm_func_clk    [get_object_name [get_ports dfx_upm_status]]
#
}
#
#enableio
}

#close $fp;
