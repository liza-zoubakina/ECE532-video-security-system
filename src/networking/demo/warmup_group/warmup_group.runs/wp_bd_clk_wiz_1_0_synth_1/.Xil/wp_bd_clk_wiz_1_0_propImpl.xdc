set_property SRC_FILE_INFO {cfile:c:/warmup_group/warmup_group.srcs/sources_1/bd/wp_bd/ip/wp_bd_clk_wiz_1_0/wp_bd_clk_wiz_1_0.xdc rfile:../../../warmup_group.srcs/sources_1/bd/wp_bd/ip/wp_bd_clk_wiz_1_0/wp_bd_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
