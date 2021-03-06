create_project billiard_game ./billiard_game -part xc7a100tcsg324-1
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
update_ip_catalog

# add verilog files
add_files -norecurse "./verilog_srcs/game.v"
add_files -norecurse "./verilog_srcs/sSeg.v"
add_files -norecurse "./verilog_srcs/vga_out.v"
add_files -norecurse "./verilog_srcs/game_cpu.v"
add_files -norecurse "./verilog_srcs/sevenseg.v"
add_files -norecurse "./verilog_srcs/render_engine.v"

# adding math files
add_files -norecurse "../pyverilog/sc_to_wc.v"
add_files -norecurse "../pyverilog/wc_to_sc.v"
add_files -norecurse "../pyverilog/rectify_p_v.v"
add_files -norecurse "../pyverilog/calc_next_p_and_v.v"
add_files -norecurse "../pyverilog/close_to_zero.v"
add_files -norecurse "../pyverilog/fix_point_multiply.v"
add_files -norecurse "../pyverilog/fix_point_division.v"
add_files -norecurse "../pyverilog/normalize.v"
add_files -norecurse "../pyverilog/sqr_sum.v"
add_files -norecurse "../pyverilog/sqrt.v"
add_files -norecurse "../pyverilog/square_root.v"
add_files -norecurse "../pyverilog/ball_collision_detect.v"
add_files -norecurse "../pyverilog/rectify_p_in_collision.v"
add_files -norecurse "../pyverilog/calc_after_collision_v.v"
add_files -norecurse "../pyverilog/cross_product.v"
add_files -norecurse "../pyverilog/mv.v"
add_files -norecurse "../pyverilog/dot_product.v"

# add vhdl files
add_files -norecurse "./vhdl_srcs/top.vhd"
add_files -norecurse "./vhdl_srcs/MouseCtl.vhd"
add_files -norecurse "./vhdl_srcs/Ps2Interface.vhd"

# add sprites
add_files -norecurse "./verilog_srcs/ballsprite.txt"

# adding constraints file
add_files -fileset constrs_1 -norecurse "./constraints/game.xdc"

# add test benches
import_files -fileset sim_1 -norecurse "./verilog_tb/testbench.v"
set_property top top_tb [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1

# set top level module
update_compile_order -fileset sources_1
set_property top GAME_TOP [current_fileset]
update_compile_order -fileset sources_1

# adding and synthesizing the clock
create_ip -name clk_wiz -vendor xilinx.com -library ip -version 6.0 -module_name clk_wiz_0
set_property -dict [list CONFIG.PRIMARY_PORT {clk_100MHz_i} \
						 CONFIG.CLK_OUT1_PORT {clk_83MHz_o} \
						 CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {83.46} \
						 CONFIG.USE_LOCKED {false} \
						 CONFIG.USE_RESET {false} \
						 CONFIG.MMCM_DIVCLK_DIVIDE {4} \
						 CONFIG.MMCM_CLKFBOUT_MULT_F {28.375} \
						 CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.500} \
						 CONFIG.CLKOUT1_JITTER {299.155} \
						 CONFIG.CLKOUT1_PHASE_ERROR {297.220}] [get_ips clk_wiz_0]

generate_target {instantiation_template} [get_files ./billiard_game/billiard_game.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]
update_compile_order -fileset sources_1
generate_target all [get_files  ./billiard_game/billiard_game.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]
catch { config_ip_cache -export [get_ips -all clk_wiz_0] }
export_ip_user_files -of_objects [get_files ./billiard_game/billiard_game.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] ./billiard_game/billiard_game.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]
launch_runs -jobs 4 clk_wiz_0_synth_1
wait_on_run clk_wiz_0_synth_1
export_simulation -of_objects [get_files ./billiard_game/billiard_game.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci] -directory ./billiard_game/billiard_game.ip_user_files/sim_scripts -ip_user_files_dir ./billiard_game/billiard_game.ip_user_files -ipstatic_source_dir ./billiard_game/billiard_game.ip_user_files/ipstatic -lib_map_path [list {modelsim=./billiard_game/billiard_game.cache/compile_simlib/modelsim} {questa=./billiard_game/billiard_game.cache/compile_simlib/questa} {ies=./billiard_game/billiard_game.cache/compile_simlib/ies} {xcelium=./billiard_game/billiard_game.cache/compile_simlib/xcelium} {vcs=./billiard_game/billiard_game.cache/compile_simlib/vcs} {riviera=./billiard_game/billiard_game.cache/compile_simlib/riviera}] -use_ip_compiled_libs -force -quiet



