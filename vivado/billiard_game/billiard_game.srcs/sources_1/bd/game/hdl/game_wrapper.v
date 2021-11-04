//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Nov  4 14:52:14 2021
//Host        : uzahid-3542 running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target game_wrapper.bd
//Design      : game_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module game_wrapper
   (clk_in1_0,
    col_sw_0,
    hsync_0,
    pix_b_0,
    pix_g_0,
    pix_r_0,
    rst_0,
    sw_0,
    vsync_0);
  input clk_in1_0;
  input [11:0]col_sw_0;
  output hsync_0;
  output [3:0]pix_b_0;
  output [3:0]pix_g_0;
  output [3:0]pix_r_0;
  input rst_0;
  input [4:0]sw_0;
  output vsync_0;

  wire clk_in1_0;
  wire [11:0]col_sw_0;
  wire hsync_0;
  wire [3:0]pix_b_0;
  wire [3:0]pix_g_0;
  wire [3:0]pix_r_0;
  wire rst_0;
  wire [4:0]sw_0;
  wire vsync_0;

  game game_i
       (.clk_in1_0(clk_in1_0),
        .col_sw_0(col_sw_0),
        .hsync_0(hsync_0),
        .pix_b_0(pix_b_0),
        .pix_g_0(pix_g_0),
        .pix_r_0(pix_r_0),
        .rst_0(rst_0),
        .sw_0(sw_0),
        .vsync_0(vsync_0));
endmodule
