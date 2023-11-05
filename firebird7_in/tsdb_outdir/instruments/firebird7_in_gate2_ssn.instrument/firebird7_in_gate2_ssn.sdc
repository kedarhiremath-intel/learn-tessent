#--------------------------------------------------------------------------
#
#  Unpublished work. Copyright 2022 Siemens
#
#  This material contains trade secrets or otherwise confidential 
#  information owned by Siemens Industry Software Inc. or its affiliates 
#  (collectively, SISW), or its licensors. Access to and use of this 
#  information is strictly limited as set forth in the Customer's 
#  applicable agreements with SISW.
#
#--------------------------------------------------------------------------
#  File created by: Tessent Shell
#          Version: 2022.4
#       Created on: Sun Nov  5 08:58:05 PST 2023
#--------------------------------------------------------------------------

proc firebird7_in_gate2_tessent_ssn_pipe_ssn_output_pipe {args} {
 
  set bus_clock_period 5
  set bus_clock_port [get_ports bus_clock]
  # Bus_clock operated at bus clock rate
  create_clock $bus_clock_port -name BusClockFast -period $bus_clock_period -add
 
 
}
 
proc firebird7_in_gate2_tessent_ssn_receiver_1x_pipe_ssn_input_pipe {args} {
 
  set bus_clock_period 5
  set bus_clock_port [get_ports bus_clock]
  # Bus_clock operated at bus clock rate
  create_clock $bus_clock_port -name BusClockFast -period $bus_clock_period -add
 
 
}
 
proc firebird7_in_gate2_tessent_ssn_scan_host_ssh {args} {
 
  set bus_clock_period 5
  set bus_clock_port [get_ports bus_clock]
  set shift_clock_period 10
  # Bus_clock operated at bus clock rate
  create_clock $bus_clock_port -name BusClockFast -period $bus_clock_period -add
 
  # Bus_clock operated at shift_clock rate
  create_clock $bus_clock_port -name BusClockSlow -period $shift_clock_period -add
 
  set_clock_groups -physically_exclusive -group BusClockFast -group BusClockSlow
 
  set_false_path -from [get_clocks BusClockFast] \
                 -to   [get_cells { clock_gen/edt_update_ret* \
                                    datapath/last_in_bits_in_current_bus_word_ret* \
                                    datapath/from_scan_out_ret_n* \
                                    datapath/to_scan_in0_ret_not_for_div* \
                                    datapath/to_scan_in1_ret_not_for_div* \
                                    datapath/to_scan_in2_ret_not_for_div* \
                                    datapath/to_scan_in3_ret_not_for_div* }]
 
  set_false_path -to   [get_clocks BusClockFast] \
                 -from [get_cells { clock_gen/edt_update_ret* \
                                    datapath/last_in_bits_in_current_bus_word_ret* \
                                    datapath/from_scan_out_ret_n* \
                                    datapath/to_scan_in0_ret_not_for_div* \
                                    datapath/to_scan_in1_ret_not_for_div* \
                                    datapath/to_scan_in2_ret_not_for_div* \
                                    datapath/to_scan_in3_ret_not_for_div* }]
 
  set tck_period 100
  set tck_port [get_ports ijtag_tck]
 
  # TCK clock
  create_clock $tck_port -name IjtagClock -period $tck_period
        
  set_clock_groups -asynchronous -group IjtagClock -group {BusClockFast BusClockSlow}
 
}
 
