#set_false_path -from [get_clocks $JTAG_CLK]    -to [get_clocks $TX_CLK]
#set_false_path -from [get_clocks $JTAG_CLK]    -to [get_clocks $RX_CLK]
#set_false_path -from [get_clocks $TX_CLK]      -to [get_clocks $JTAG_CLK]
#set_false_path -from [get_clocks $RX_CLK]      -to [get_clocks $JTAG_CLK]
#set_false_path -from [get_clocks $JTAG_CLK]    -to [get_clocks $TX_HVM_CLK]
#set_false_path -from [get_clocks $JTAG_CLK]    -to [get_clocks $RX_HVM_CLK]
#set_false_path -from [get_clocks $TX_HVM_CLK]  -to [get_clocks $JTAG_CLK]
#set_false_path -from [get_clocks $RX_HVM_CLK]  -to [get_clocks $JTAG_CLK]
#set_false_path -from [get_clocks $RX_SORT_CLK] -to [get_clocks $JTAG_CLK]
#set_false_path -from [get_clocks $RX_CLK]      -to [get_clocks $RX_HVM_CLK]
