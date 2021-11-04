


create_project billiard_game ./billiard_game -part xc7a100tcsg324-1
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]

update_ip_catalog
add_files -fileset constrs_1 -norecurse "./constraints/game.xdc"
add_files -norecurse "./verilog_srcs/game_top.v"
add_files -norecurse "./verilog_srcs/vga_out.v"

create_bd_design "game"
create_bd_cell -type module -reference game_top game_top_0
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0
set_property -dict [list CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {83.46} CONFIG.USE_LOCKED {false} \
					CONFIG.USE_RESET {false} CONFIG.MMCM_DIVCLK_DIVIDE {4} CONFIG.MMCM_CLKFBOUT_MULT_F {28.375} \
					CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.500} CONFIG.CLKOUT1_JITTER {299.155} \
					CONFIG.CLKOUT1_PHASE_ERROR {297.220}] [get_bd_cells clk_wiz_0]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins game_top_0/clk]

startgroup
make_bd_pins_external  [get_bd_pins clk_wiz_0/clk_in1]
make_bd_pins_external  [get_bd_pins game_top_0/rst]
make_bd_pins_external  [get_bd_pins game_top_0/sw]
make_bd_pins_external  [get_bd_pins game_top_0/pix_r]
make_bd_pins_external  [get_bd_pins game_top_0/pix_g]
make_bd_pins_external  [get_bd_pins game_top_0/pix_b]
make_bd_pins_external  [get_bd_pins game_top_0/hsync]
make_bd_pins_external  [get_bd_pins game_top_0/vsync]
make_bd_pins_external  [get_bd_pins game_top_0/col_sw]
endgroup

save_bd_design

regenerate_bd_layout
validate_bd_design
save_bd_design



# create HDL wrapper
make_wrapper -files [get_files ./billiard_game/billiard_game.srcs/sources_1/bd/game/game.bd] -top
add_files -norecurse billiard_game/billiard_game.srcs/sources_1/bd/game/hdl/game_wrapper.v
update_compile_order -fileset sources_1
set_property top game_wrapper [current_fileset]

