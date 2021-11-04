//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Nov  4 14:52:14 2021
//Host        : uzahid-3542 running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target game.bd
//Design      : game
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "game,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=game,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "game.hwdef" *) 
module game
   (clk_in1_0,
    col_sw_0,
    hsync_0,
    pix_b_0,
    pix_g_0,
    pix_r_0,
    rst_0,
    sw_0,
    vsync_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN game_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_0;
  input [11:0]col_sw_0;
  output hsync_0;
  output [3:0]pix_b_0;
  output [3:0]pix_g_0;
  output [3:0]pix_r_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;
  input [4:0]sw_0;
  output vsync_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire [11:0]col_sw_0_1;
  wire game_top_0_hsync;
  wire [3:0]game_top_0_pix_b;
  wire [3:0]game_top_0_pix_g;
  wire [3:0]game_top_0_pix_r;
  wire game_top_0_vsync;
  wire rst_0_1;
  wire [4:0]sw_0_1;

  assign clk_in1_0_1 = clk_in1_0;
  assign col_sw_0_1 = col_sw_0[11:0];
  assign hsync_0 = game_top_0_hsync;
  assign pix_b_0[3:0] = game_top_0_pix_b;
  assign pix_g_0[3:0] = game_top_0_pix_g;
  assign pix_r_0[3:0] = game_top_0_pix_r;
  assign rst_0_1 = rst_0;
  assign sw_0_1 = sw_0[4:0];
  assign vsync_0 = game_top_0_vsync;
  game_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
  game_game_top_0_0 game_top_0
       (.clk(clk_wiz_0_clk_out1),
        .col_sw(col_sw_0_1),
        .hsync(game_top_0_hsync),
        .pix_b(game_top_0_pix_b),
        .pix_g(game_top_0_pix_g),
        .pix_r(game_top_0_pix_r),
        .rst(rst_0_1),
        .sw(sw_0_1),
        .vsync(game_top_0_vsync));
endmodule
