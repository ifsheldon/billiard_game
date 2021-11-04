// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Nov  4 14:53:29 2021
// Host        : uzahid-3542 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/uzahid/workspace/billiard_game/vivado/billiard_game/billiard_game.srcs/sources_1/bd/game/ip/game_game_top_0_0/game_game_top_0_0_stub.v
// Design      : game_game_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "game_top,Vivado 2019.1" *)
module game_game_top_0_0(clk, rst, sw, col_sw, pix_r, pix_g, pix_b, hsync, vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,sw[4:0],col_sw[11:0],pix_r[3:0],pix_g[3:0],pix_b[3:0],hsync,vsync" */;
  input clk;
  input rst;
  input [4:0]sw;
  input [11:0]col_sw;
  output [3:0]pix_r;
  output [3:0]pix_g;
  output [3:0]pix_b;
  output hsync;
  output vsync;
endmodule
