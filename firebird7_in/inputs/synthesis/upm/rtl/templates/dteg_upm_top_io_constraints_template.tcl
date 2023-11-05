#
#set INPUT_DELAY_FACTOR  0.6
#set OUTPUT_DELAY_FACTOR 0.6
## Half cycle path
#set HALF_CYCLE_DELAY_FACTOR    0.5 
## for feed through
#set MAX_DELAY_FACTOR_FEEDTHROUGH 2.0
##  Feedthrough pins handled by set_max delay
#set FEEDTHROUGH_DELAYS 0.1
## RX input async is half cycle path from port
#set ASYNC_RX 0.5
#set OUT_CLK_DELAYS 0.001
#set RESET_DELAYS   0.001
#
#
###Congression of Ports
#set_case_analysis 0 [get_ports fbist_fscan*]  
#
#
#set ijtag_ports {
#	fbist_ijtag_*
#}
#
#set tx_hvm_ports {
#	fbist_tx_system_start
#	fbist_tx_system_done
#	fbist_tx_shift
#	fbist_tx_init
#	fbist_tx_err_clr
#	fbist_tx_cluster_shift_in
#	fbist_tx_cluster_shift_out
#}
#
#set rx_hvm_ports {
#	fbist_rx_system_start
#	fbist_rx_system_done
#	fbist_rx_system_pass
#	fbist_rx_sort_clock_en
#	fbist_rx_safe_value_en
#	fbist_rx_shift
#	fbist_rx_shift_buf_en
#	fbist_rx_init
#	fbist_rx_err_clr
#	fbist_rx_cluster_stim_shift_in
#	fbist_rx_cluster_stim_shift_out
#	fbist_rx_cluster_check_shift_in
#	fbist_rx_cluster_check_shift_out
#}
#
#set tx_func_ports {
#	fbist_tx_test_mode
#	fbist_tx_fsm_reset_b
#	fbist_tx_test_inp
#}
#
#set rx_func_ports {
#	fbist_rx_to_misr
#	fbist_rx_test_mode
#	fbist_rx_fsm_reset_b
#}
#
#set tx_async_ports {
#	fbist_fdfx_powergood
#	cluster_fbist_tx_reset_b
#	cluster_fbist_tx_set_b
#}
#
#set tx_out_clk_ports {
#	fbist_tx_clk
#	fbist_tx_clk_cgt1
#}
#
#set rx_async_ports {
#	fbist_fdfx_powergood
#	cluster_fbist_rx_reset_b
#	cluster_fbist_rx_set_b
#}
#
#set rx_out_clk_ports {
#	fbist_rx_clk
#	fbist_rx_clk_cgt1
#	fbist_rx_clk_cgt2
#}
#
#set_input_delay  [expr $INPUT_DELAY_FACTOR  * $HALF_CYCLE_DELAY_FACTOR * $fbist_ijtag_tck_period] [filter_collection [get_ports $ijtag_ports]       "direction == in"]  -clock $JTAG_CLK
#set_output_delay [expr $OUTPUT_DELAY_FACTOR * $HALF_CYCLE_DELAY_FACTOR * $fbist_ijtag_tck_period] [filter_collection [get_ports $ijtag_ports]       "direction == out"] -clock $JTAG_CLK
#
#set_input_delay  [expr $INPUT_DELAY_FACTOR  * $fbist_hvm_clk_tx_period]    [filter_collection [get_ports $tx_hvm_ports]             "direction == in"]  -clock $TX_HVM_CLK
#set_output_delay [expr $OUTPUT_DELAY_FACTOR * $fbist_hvm_clk_tx_period]    [filter_collection [get_ports $tx_hvm_ports]             "direction == out"] -clock $TX_HVM_CLK
#
#set_input_delay  [expr $INPUT_DELAY_FACTOR  * $fbist_hvm_clk_rx_period]    [filter_collection [get_ports $rx_hvm_ports]             "direction == in"]  -clock $RX_HVM_CLK
#set_output_delay [expr $OUTPUT_DELAY_FACTOR * $fbist_hvm_clk_rx_period]    [filter_collection [get_ports $rx_hvm_ports]             "direction == out"] -clock $RX_HVM_CLK
#
#
##set_input_delay  [expr $INPUT_DELAY_FACTOR  * $fbist_clk_tx_period]        [filter_collection [get_ports $tx_func_ports]            "direction == in"]  -clock $TX_CLK
#set_output_delay [expr $OUTPUT_DELAY_FACTOR * $fbist_clk_tx_period]        [filter_collection [get_ports $tx_func_ports]            "direction == out"] -clock $TX_CLK
#
##RX works on neg edge for MISR/compactor
#set_input_delay  [expr $INPUT_DELAY_FACTOR  * $HALF_CYCLE_DELAY_FACTOR * $fbist_clk_rx_period]        [filter_collection [get_ports $rx_func_ports]            "direction == in"]  -clock $RX_CLK  -clock_fall 
##set_output_delay [expr $OUTPUT_DELAY_FACTOR * $fbist_clk_rx_period]        [filter_collection [get_ports $rx_func_ports]            "direction == out"] -clock $RX_CLK
#
#
## output clk and Reset delay is negligible as it should be asynch
#set_input_delay  [expr $RESET_DELAYS]      [filter_collection [get_ports $tx_async_ports]   "direction == in" ] 
#set_output_delay [expr $OUT_CLK_DELAYS]    [filter_collection [get_ports $tx_out_clk_ports] "direction == out"] 
#
## output clk and Reset delay is negligible as it should be asynch
#set_input_delay  [expr $RESET_DELAYS]      [filter_collection [get_ports $rx_async_ports]   "direction == in" ] 
#set_output_delay [expr $OUT_CLK_DELAYS]    [filter_collection [get_ports $rx_out_clk_ports] "direction == out"] 
