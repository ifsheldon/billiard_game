// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Nov  4 14:53:29 2021
// Host        : uzahid-3542 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/uzahid/workspace/billiard_game/vivado/billiard_game/billiard_game.srcs/sources_1/bd/game/ip/game_game_top_0_0/game_game_top_0_0_sim_netlist.v
// Design      : game_game_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "game_game_top_0_0,game_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "game_top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module game_game_top_0_0
   (clk,
    rst,
    sw,
    col_sw,
    pix_r,
    pix_g,
    pix_b,
    hsync,
    vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 83455882, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [4:0]sw;
  input [11:0]col_sw;
  output [3:0]pix_r;
  output [3:0]pix_g;
  output [3:0]pix_b;
  output hsync;
  output vsync;

  wire clk;
  wire [11:0]col_sw;
  wire hsync;
  wire [3:0]pix_b;
  wire [3:0]pix_g;
  wire [3:0]pix_r;
  wire [4:0]sw;
  wire vsync;

  game_game_top_0_0_game_top inst
       (.clk(clk),
        .col_sw(col_sw),
        .hsync(hsync),
        .pix_b(pix_b),
        .pix_g(pix_g),
        .pix_r(pix_r),
        .sw(sw),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "drawcon" *) 
module game_game_top_0_0_drawcon
   (CO,
    \blkpos_y_reg[8] ,
    \blkpos_x_reg[6] ,
    \blkpos_x_reg[10] ,
    \blkpos_x_reg[3] ,
    \blkpos_y_reg[6] ,
    \blkpos_y_reg[5] ,
    \blkpos_y_reg[3] ,
    \blkpos_y_reg[1] ,
    pix_b,
    r_output1,
    \_inferred__0/i__carry__1_0 ,
    pix_r,
    \blkpos_x_reg[7] ,
    \blkpos_x_reg[9] ,
    \blkpos_x_reg[8] ,
    \blkpos_x_reg[3]_0 ,
    \blkpos_x_reg[0] ,
    \blkpos_y_reg[3]_0 ,
    C,
    curr_y,
    DI,
    S,
    r_output2_0,
    r_output2_1,
    blkpos_x,
    \_inferred__0/i__carry__0_0 ,
    \_inferred__0/i__carry__0_1 ,
    \_inferred__0/i__carry__1_1 ,
    \pix_r[3]_INST_0_i_3_0 ,
    r_output3_carry__0_0,
    r_output3_carry__0_1,
    \pix_b[0] ,
    \pix_b[0]_0 ,
    \r_output2_inferred__0/i__carry__0_0 ,
    \r_output2_inferred__0/i__carry__0_1 ,
    \pix_r[3]_INST_0_i_3_1 ,
    \pix_r[3]_INST_0_i_3_2 ,
    \r_output4_inferred__0/i__carry__0_0 ,
    \r_output4_inferred__0/i__carry__0_1 ,
    \pix_b[0]_1 ,
    \pix_b[0]_2 ,
    Q,
    \pix_b[2] ,
    col_sw,
    \pix_b[2]_0 );
  output [0:0]CO;
  output [0:0]\blkpos_y_reg[8] ;
  output \blkpos_x_reg[6] ;
  output \blkpos_x_reg[10] ;
  output \blkpos_x_reg[3] ;
  output \blkpos_y_reg[6] ;
  output \blkpos_y_reg[5] ;
  output \blkpos_y_reg[3] ;
  output \blkpos_y_reg[1] ;
  output [1:0]pix_b;
  output r_output1;
  output \_inferred__0/i__carry__1_0 ;
  output [1:0]pix_r;
  output \blkpos_x_reg[7] ;
  output \blkpos_x_reg[9] ;
  output \blkpos_x_reg[8] ;
  output \blkpos_x_reg[3]_0 ;
  output \blkpos_x_reg[0] ;
  output \blkpos_y_reg[3]_0 ;
  input [9:0]C;
  input [7:0]curr_y;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]r_output2_0;
  input [1:0]r_output2_1;
  input [10:0]blkpos_x;
  input [0:0]\_inferred__0/i__carry__0_0 ;
  input [3:0]\_inferred__0/i__carry__0_1 ;
  input [3:0]\_inferred__0/i__carry__1_1 ;
  input [1:0]\pix_r[3]_INST_0_i_3_0 ;
  input [3:0]r_output3_carry__0_0;
  input [3:0]r_output3_carry__0_1;
  input [1:0]\pix_b[0] ;
  input [1:0]\pix_b[0]_0 ;
  input [3:0]\r_output2_inferred__0/i__carry__0_0 ;
  input [3:0]\r_output2_inferred__0/i__carry__0_1 ;
  input [1:0]\pix_r[3]_INST_0_i_3_1 ;
  input [1:0]\pix_r[3]_INST_0_i_3_2 ;
  input [3:0]\r_output4_inferred__0/i__carry__0_0 ;
  input [3:0]\r_output4_inferred__0/i__carry__0_1 ;
  input [0:0]\pix_b[0]_1 ;
  input [0:0]\pix_b[0]_2 ;
  input [8:0]Q;
  input \pix_b[2] ;
  input [3:0]col_sw;
  input \pix_b[2]_0 ;

  wire [9:0]A;
  wire [9:0]C;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [8:0]Q;
  wire [3:0]S;
  wire [0:0]\_inferred__0/i__carry__0_0 ;
  wire [3:0]\_inferred__0/i__carry__0_1 ;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_0 ;
  wire [3:0]\_inferred__0/i__carry__1_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [10:0]blkpos_x;
  wire \blkpos_x_reg[0] ;
  wire \blkpos_x_reg[10] ;
  wire \blkpos_x_reg[3] ;
  wire \blkpos_x_reg[3]_0 ;
  wire \blkpos_x_reg[6] ;
  wire \blkpos_x_reg[7] ;
  wire \blkpos_x_reg[8] ;
  wire \blkpos_x_reg[9] ;
  wire \blkpos_y_reg[1] ;
  wire \blkpos_y_reg[3] ;
  wire \blkpos_y_reg[3]_0 ;
  wire \blkpos_y_reg[5] ;
  wire \blkpos_y_reg[6] ;
  wire [0:0]\blkpos_y_reg[8] ;
  wire [3:0]col_sw;
  wire [7:0]curr_y;
  wire i__carry_i_1__1_n_0;
  wire [1:0]pix_b;
  wire [1:0]\pix_b[0] ;
  wire [1:0]\pix_b[0]_0 ;
  wire [0:0]\pix_b[0]_1 ;
  wire [0:0]\pix_b[0]_2 ;
  wire \pix_b[2] ;
  wire \pix_b[2]_0 ;
  wire [1:0]pix_r;
  wire \pix_r[3]_INST_0_i_12_n_0 ;
  wire \pix_r[3]_INST_0_i_13_n_0 ;
  wire \pix_r[3]_INST_0_i_25_n_0 ;
  wire \pix_r[3]_INST_0_i_26_n_0 ;
  wire \pix_r[3]_INST_0_i_27_n_0 ;
  wire \pix_r[3]_INST_0_i_28_n_0 ;
  wire \pix_r[3]_INST_0_i_29_n_0 ;
  wire \pix_r[3]_INST_0_i_30_n_0 ;
  wire \pix_r[3]_INST_0_i_35_n_0 ;
  wire \pix_r[3]_INST_0_i_36_n_0 ;
  wire \pix_r[3]_INST_0_i_37_n_0 ;
  wire \pix_r[3]_INST_0_i_38_n_0 ;
  wire \pix_r[3]_INST_0_i_39_n_0 ;
  wire [1:0]\pix_r[3]_INST_0_i_3_0 ;
  wire [1:0]\pix_r[3]_INST_0_i_3_1 ;
  wire [1:0]\pix_r[3]_INST_0_i_3_2 ;
  wire \pix_r[3]_INST_0_i_40_n_0 ;
  wire \pix_r[3]_INST_0_i_41_n_0 ;
  wire \pix_r[3]_INST_0_i_42_n_0 ;
  wire \pix_r[3]_INST_0_i_43_n_0 ;
  wire \pix_r[3]_INST_0_i_44_n_0 ;
  wire \pix_r[3]_INST_0_i_45_n_0 ;
  wire \pix_r[3]_INST_0_i_46_n_0 ;
  wire \pix_r[3]_INST_0_i_4_n_0 ;
  wire r_output1;
  wire [3:0]r_output2_0;
  wire [1:0]r_output2_1;
  wire [9:0]r_output2__0;
  wire r_output2_carry__0_i_1_n_0;
  wire r_output2_carry__0_i_2_n_0;
  wire r_output2_carry__0_i_3_n_0;
  wire r_output2_carry__0_i_4_n_0;
  wire r_output2_carry__0_i_5_n_0;
  wire r_output2_carry__0_n_0;
  wire r_output2_carry__0_n_1;
  wire r_output2_carry__0_n_2;
  wire r_output2_carry__0_n_3;
  wire r_output2_carry__1_i_1_n_0;
  wire r_output2_carry__1_i_2_n_0;
  wire r_output2_carry__1_i_3_n_0;
  wire r_output2_carry__1_n_3;
  wire r_output2_carry_i_1_n_0;
  wire r_output2_carry_i_2_n_0;
  wire r_output2_carry_i_3_n_0;
  wire r_output2_carry_i_4_n_0;
  wire r_output2_carry_n_0;
  wire r_output2_carry_n_1;
  wire r_output2_carry_n_2;
  wire r_output2_carry_n_3;
  wire [3:0]\r_output2_inferred__0/i__carry__0_0 ;
  wire [3:0]\r_output2_inferred__0/i__carry__0_1 ;
  wire \r_output2_inferred__0/i__carry__0_n_2 ;
  wire \r_output2_inferred__0/i__carry__0_n_3 ;
  wire \r_output2_inferred__0/i__carry_n_0 ;
  wire \r_output2_inferred__0/i__carry_n_1 ;
  wire \r_output2_inferred__0/i__carry_n_2 ;
  wire \r_output2_inferred__0/i__carry_n_3 ;
  wire r_output2_n_100;
  wire r_output2_n_101;
  wire r_output2_n_102;
  wire r_output2_n_103;
  wire r_output2_n_104;
  wire r_output2_n_105;
  wire r_output2_n_96;
  wire r_output2_n_97;
  wire r_output2_n_98;
  wire r_output2_n_99;
  wire [3:0]r_output3_carry__0_0;
  wire [3:0]r_output3_carry__0_1;
  wire r_output3_carry__0_n_3;
  wire r_output3_carry_n_0;
  wire r_output3_carry_n_1;
  wire r_output3_carry_n_2;
  wire r_output3_carry_n_3;
  wire r_output4_carry__0_n_0;
  wire r_output4_carry__0_n_1;
  wire r_output4_carry__0_n_2;
  wire r_output4_carry__0_n_3;
  wire r_output4_carry__1_i_1_n_0;
  wire r_output4_carry__1_n_3;
  wire r_output4_carry_i_2_n_0;
  wire r_output4_carry_n_0;
  wire r_output4_carry_n_1;
  wire r_output4_carry_n_2;
  wire r_output4_carry_n_3;
  wire [3:0]\r_output4_inferred__0/i__carry__0_0 ;
  wire [3:0]\r_output4_inferred__0/i__carry__0_1 ;
  wire \r_output4_inferred__0/i__carry_n_0 ;
  wire \r_output4_inferred__0/i__carry_n_1 ;
  wire \r_output4_inferred__0/i__carry_n_2 ;
  wire \r_output4_inferred__0/i__carry_n_3 ;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__1_O_UNCONNECTED ;
  wire NLW_r_output2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_output2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_output2_OVERFLOW_UNCONNECTED;
  wire NLW_r_output2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_output2_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_output2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_output2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_output2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_output2_CARRYOUT_UNCONNECTED;
  wire [47:10]NLW_r_output2_P_UNCONNECTED;
  wire [47:0]NLW_r_output2_PCOUT_UNCONNECTED;
  wire [3:1]NLW_r_output2_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_r_output2_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_r_output2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_r_output2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_output2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_r_output3_carry_O_UNCONNECTED;
  wire [3:2]NLW_r_output3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_output3_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_r_output4_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_r_output4_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_r_output4_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_r_output4_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_output4_inferred__0/i__carry__0_O_UNCONNECTED ;

  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({curr_y[1],i__carry_i_1__1_n_0,curr_y[0],\_inferred__0/i__carry__0_0 }),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\_inferred__0/i__carry__0_1 ));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(curr_y[5:2]),
        .O(\NLW__inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\_inferred__0/i__carry__1_1 ));
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,curr_y[7:6]}),
        .O(\NLW__inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\pix_r[3]_INST_0_i_3_0 }));
  LUT6 #(
    .INIT(64'h5955555555555555)) 
    i__carry__0_i_5
       (.I0(blkpos_x[10]),
        .I1(blkpos_x[9]),
        .I2(\blkpos_x_reg[3] ),
        .I3(blkpos_x[6]),
        .I4(blkpos_x[7]),
        .I5(blkpos_x[8]),
        .O(\blkpos_x_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFB000000000000)) 
    i__carry__0_i_5__0
       (.I0(Q[3]),
        .I1(\blkpos_y_reg[1] ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\blkpos_y_reg[3] ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    i__carry__0_i_6
       (.I0(blkpos_x[9]),
        .I1(blkpos_x[8]),
        .I2(blkpos_x[7]),
        .I3(blkpos_x[6]),
        .I4(blkpos_x[5]),
        .I5(r_output2_carry__0_i_5_n_0),
        .O(\blkpos_x_reg[9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    i__carry__0_i_6__0
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\blkpos_y_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    i__carry__0_i_7
       (.I0(blkpos_x[8]),
        .I1(r_output2_carry__0_i_5_n_0),
        .I2(blkpos_x[5]),
        .I3(blkpos_x[6]),
        .I4(blkpos_x[7]),
        .O(\blkpos_x_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry__0_i_7__0
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\blkpos_y_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry__1_i_7
       (.I0(Q[6]),
        .I1(\blkpos_y_reg[5] ),
        .I2(Q[7]),
        .O(\blkpos_y_reg[6] ));
  LUT3 #(
    .INIT(8'hA6)) 
    i__carry_i_10
       (.I0(blkpos_x[6]),
        .I1(blkpos_x[5]),
        .I2(r_output2_carry__0_i_5_n_0),
        .O(\blkpos_x_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_11
       (.I0(blkpos_x[3]),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[2]),
        .O(\blkpos_x_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_12
       (.I0(blkpos_x[0]),
        .I1(blkpos_x[1]),
        .O(\blkpos_x_reg[0] ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    i__carry_i_14
       (.I0(blkpos_x[3]),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[2]),
        .I4(blkpos_x[4]),
        .I5(blkpos_x[5]),
        .O(\blkpos_x_reg[3] ));
  LUT3 #(
    .INIT(8'h56)) 
    i__carry_i_1__1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(i__carry_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\blkpos_y_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    i__carry_i_9
       (.I0(blkpos_x[7]),
        .I1(r_output2_carry__0_i_5_n_0),
        .I2(blkpos_x[5]),
        .I3(blkpos_x[6]),
        .O(\blkpos_x_reg[7] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \pix_b[2]_INST_0 
       (.I0(\pix_b[2] ),
        .I1(r_output1),
        .I2(\_inferred__0/i__carry__1_0 ),
        .I3(\pix_r[3]_INST_0_i_4_n_0 ),
        .I4(col_sw[0]),
        .I5(\pix_b[2]_0 ),
        .O(pix_b[0]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \pix_b[3]_INST_0 
       (.I0(\pix_b[2] ),
        .I1(r_output1),
        .I2(\_inferred__0/i__carry__1_0 ),
        .I3(\pix_r[3]_INST_0_i_4_n_0 ),
        .I4(col_sw[1]),
        .I5(\pix_b[2]_0 ),
        .O(pix_b[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \pix_r[2]_INST_0 
       (.I0(\pix_b[2] ),
        .I1(r_output1),
        .I2(\_inferred__0/i__carry__1_0 ),
        .I3(\pix_r[3]_INST_0_i_4_n_0 ),
        .I4(col_sw[2]),
        .I5(\pix_b[2]_0 ),
        .O(pix_r[0]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \pix_r[3]_INST_0 
       (.I0(\pix_b[2] ),
        .I1(r_output1),
        .I2(\_inferred__0/i__carry__1_0 ),
        .I3(\pix_r[3]_INST_0_i_4_n_0 ),
        .I4(col_sw[3]),
        .I5(\pix_b[2]_0 ),
        .O(pix_r[1]));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \pix_r[3]_INST_0_i_12 
       (.I0(\pix_r[3]_INST_0_i_25_n_0 ),
        .I1(r_output2__0[8]),
        .I2(\pix_r[3]_INST_0_i_26_n_0 ),
        .I3(r_output2__0[9]),
        .I4(\pix_r[3]_INST_0_i_27_n_0 ),
        .O(\pix_r[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAFAFCFC0)) 
    \pix_r[3]_INST_0_i_13 
       (.I0(\pix_r[3]_INST_0_i_28_n_0 ),
        .I1(\pix_r[3]_INST_0_i_29_n_0 ),
        .I2(r_output2__0[8]),
        .I3(\pix_r[3]_INST_0_i_30_n_0 ),
        .I4(r_output2__0[9]),
        .O(\pix_r[3]_INST_0_i_13_n_0 ));
  MUXF7 \pix_r[3]_INST_0_i_2 
       (.I0(\pix_r[3]_INST_0_i_12_n_0 ),
        .I1(\pix_r[3]_INST_0_i_13_n_0 ),
        .O(r_output1),
        .S(r_output2__0[4]));
  MUXF7 \pix_r[3]_INST_0_i_25 
       (.I0(\pix_r[3]_INST_0_i_35_n_0 ),
        .I1(\pix_r[3]_INST_0_i_36_n_0 ),
        .O(\pix_r[3]_INST_0_i_25_n_0 ),
        .S(r_output2__0[7]));
  MUXF7 \pix_r[3]_INST_0_i_26 
       (.I0(\pix_r[3]_INST_0_i_37_n_0 ),
        .I1(\pix_r[3]_INST_0_i_38_n_0 ),
        .O(\pix_r[3]_INST_0_i_26_n_0 ),
        .S(r_output2__0[7]));
  MUXF7 \pix_r[3]_INST_0_i_27 
       (.I0(\pix_r[3]_INST_0_i_39_n_0 ),
        .I1(\pix_r[3]_INST_0_i_40_n_0 ),
        .O(\pix_r[3]_INST_0_i_27_n_0 ),
        .S(r_output2__0[7]));
  MUXF7 \pix_r[3]_INST_0_i_28 
       (.I0(\pix_r[3]_INST_0_i_41_n_0 ),
        .I1(\pix_r[3]_INST_0_i_42_n_0 ),
        .O(\pix_r[3]_INST_0_i_28_n_0 ),
        .S(r_output2__0[7]));
  MUXF7 \pix_r[3]_INST_0_i_29 
       (.I0(\pix_r[3]_INST_0_i_43_n_0 ),
        .I1(\pix_r[3]_INST_0_i_44_n_0 ),
        .O(\pix_r[3]_INST_0_i_29_n_0 ),
        .S(r_output2__0[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \pix_r[3]_INST_0_i_3 
       (.I0(\r_output2_inferred__0/i__carry__0_n_2 ),
        .I1(\_inferred__0/i__carry__1_n_2 ),
        .O(\_inferred__0/i__carry__1_0 ));
  MUXF7 \pix_r[3]_INST_0_i_30 
       (.I0(\pix_r[3]_INST_0_i_45_n_0 ),
        .I1(\pix_r[3]_INST_0_i_46_n_0 ),
        .O(\pix_r[3]_INST_0_i_30_n_0 ),
        .S(r_output2__0[7]));
  LUT6 #(
    .INIT(64'hC0C8C0C0C8CBC3C3)) 
    \pix_r[3]_INST_0_i_35 
       (.I0(r_output2__0[0]),
        .I1(r_output2__0[3]),
        .I2(r_output2__0[2]),
        .I3(r_output2__0[5]),
        .I4(r_output2__0[1]),
        .I5(r_output2__0[6]),
        .O(\pix_r[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000444000000000)) 
    \pix_r[3]_INST_0_i_36 
       (.I0(r_output2__0[6]),
        .I1(r_output2__0[2]),
        .I2(r_output2__0[1]),
        .I3(r_output2__0[0]),
        .I4(r_output2__0[5]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hDBBBB777FFFFFFFF)) 
    \pix_r[3]_INST_0_i_37 
       (.I0(r_output2__0[1]),
        .I1(r_output2__0[2]),
        .I2(r_output2__0[5]),
        .I3(r_output2__0[0]),
        .I4(r_output2__0[6]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hADB5B5F5F5F5F5DF)) 
    \pix_r[3]_INST_0_i_38 
       (.I0(r_output2__0[3]),
        .I1(r_output2__0[0]),
        .I2(r_output2__0[2]),
        .I3(r_output2__0[1]),
        .I4(r_output2__0[5]),
        .I5(r_output2__0[6]),
        .O(\pix_r[3]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAEEEAAA80A800)) 
    \pix_r[3]_INST_0_i_39 
       (.I0(r_output2__0[3]),
        .I1(r_output2__0[2]),
        .I2(r_output2__0[1]),
        .I3(r_output2__0[5]),
        .I4(r_output2__0[0]),
        .I5(r_output2__0[6]),
        .O(\pix_r[3]_INST_0_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_r[3]_INST_0_i_4 
       (.I0(CO),
        .I1(\blkpos_y_reg[8] ),
        .O(\pix_r[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pix_r[3]_INST_0_i_40 
       (.I0(r_output2__0[6]),
        .I1(r_output2__0[0]),
        .I2(r_output2__0[1]),
        .I3(r_output2__0[2]),
        .I4(r_output2__0[5]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h557F5FFFFFFFFFFF)) 
    \pix_r[3]_INST_0_i_41 
       (.I0(r_output2__0[6]),
        .I1(r_output2__0[0]),
        .I2(r_output2__0[5]),
        .I3(r_output2__0[2]),
        .I4(r_output2__0[1]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000045555)) 
    \pix_r[3]_INST_0_i_42 
       (.I0(r_output2__0[6]),
        .I1(r_output2__0[0]),
        .I2(r_output2__0[2]),
        .I3(r_output2__0[1]),
        .I4(r_output2__0[5]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEBFFFEAABFFFD)) 
    \pix_r[3]_INST_0_i_43 
       (.I0(r_output2__0[3]),
        .I1(r_output2__0[6]),
        .I2(r_output2__0[5]),
        .I3(r_output2__0[0]),
        .I4(r_output2__0[2]),
        .I5(r_output2__0[1]),
        .O(\pix_r[3]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEEEDDD)) 
    \pix_r[3]_INST_0_i_44 
       (.I0(r_output2__0[1]),
        .I1(r_output2__0[2]),
        .I2(r_output2__0[5]),
        .I3(r_output2__0[0]),
        .I4(r_output2__0[6]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054D454F4)) 
    \pix_r[3]_INST_0_i_45 
       (.I0(r_output2__0[2]),
        .I1(r_output2__0[5]),
        .I2(r_output2__0[6]),
        .I3(r_output2__0[1]),
        .I4(r_output2__0[0]),
        .I5(r_output2__0[3]),
        .O(\pix_r[3]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8F555BFD55555)) 
    \pix_r[3]_INST_0_i_46 
       (.I0(r_output2__0[3]),
        .I1(r_output2__0[0]),
        .I2(r_output2__0[5]),
        .I3(r_output2__0[6]),
        .I4(r_output2__0[2]),
        .I5(r_output2__0[1]),
        .O(\pix_r[3]_INST_0_i_46_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_output2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_output2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_output2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_output2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_output2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_output2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_output2_OVERFLOW_UNCONNECTED),
        .P({NLW_r_output2_P_UNCONNECTED[47:10],r_output2_n_96,r_output2_n_97,r_output2_n_98,r_output2_n_99,r_output2_n_100,r_output2_n_101,r_output2_n_102,r_output2_n_103,r_output2_n_104,r_output2_n_105}),
        .PATTERNBDETECT(NLW_r_output2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_output2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_output2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_output2_UNDERFLOW_UNCONNECTED));
  CARRY4 r_output2_carry
       (.CI(1'b0),
        .CO({r_output2_carry_n_0,r_output2_carry_n_1,r_output2_carry_n_2,r_output2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r_output2_n_102,r_output2_n_103,r_output2_n_104,blkpos_x[0]}),
        .O(r_output2__0[3:0]),
        .S({r_output2_carry_i_1_n_0,r_output2_carry_i_2_n_0,r_output2_carry_i_3_n_0,r_output2_carry_i_4_n_0}));
  CARRY4 r_output2_carry__0
       (.CI(r_output2_carry_n_0),
        .CO({r_output2_carry__0_n_0,r_output2_carry__0_n_1,r_output2_carry__0_n_2,r_output2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r_output2_n_98,r_output2_n_99,r_output2_n_100,r_output2_n_101}),
        .O(r_output2__0[7:4]),
        .S({r_output2_carry__0_i_1_n_0,r_output2_carry__0_i_2_n_0,r_output2_carry__0_i_3_n_0,r_output2_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'hAA9A5565)) 
    r_output2_carry__0_i_1
       (.I0(blkpos_x[7]),
        .I1(blkpos_x[5]),
        .I2(r_output2_carry__0_i_5_n_0),
        .I3(blkpos_x[6]),
        .I4(r_output2_n_98),
        .O(r_output2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hA659)) 
    r_output2_carry__0_i_2
       (.I0(blkpos_x[6]),
        .I1(r_output2_carry__0_i_5_n_0),
        .I2(blkpos_x[5]),
        .I3(r_output2_n_99),
        .O(r_output2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r_output2_carry__0_i_3
       (.I0(blkpos_x[5]),
        .I1(r_output2_carry__0_i_5_n_0),
        .I2(r_output2_n_100),
        .O(r_output2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    r_output2_carry__0_i_4
       (.I0(blkpos_x[4]),
        .I1(blkpos_x[3]),
        .I2(blkpos_x[0]),
        .I3(blkpos_x[1]),
        .I4(blkpos_x[2]),
        .I5(r_output2_n_101),
        .O(r_output2_carry__0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    r_output2_carry__0_i_5
       (.I0(blkpos_x[4]),
        .I1(blkpos_x[2]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[0]),
        .I4(blkpos_x[3]),
        .O(r_output2_carry__0_i_5_n_0));
  CARRY4 r_output2_carry__1
       (.CI(r_output2_carry__0_n_0),
        .CO({NLW_r_output2_carry__1_CO_UNCONNECTED[3:1],r_output2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r_output2_n_97}),
        .O({NLW_r_output2_carry__1_O_UNCONNECTED[3:2],r_output2__0[9:8]}),
        .S({1'b0,1'b0,r_output2_carry__1_i_1_n_0,r_output2_carry__1_i_2_n_0}));
  LUT6 #(
    .INIT(64'hFFFD00020002FFFD)) 
    r_output2_carry__1_i_1
       (.I0(r_output2_carry__1_i_3_n_0),
        .I1(blkpos_x[7]),
        .I2(blkpos_x[6]),
        .I3(blkpos_x[8]),
        .I4(blkpos_x[9]),
        .I5(r_output2_n_96),
        .O(r_output2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA9A55555565)) 
    r_output2_carry__1_i_2
       (.I0(blkpos_x[8]),
        .I1(blkpos_x[5]),
        .I2(r_output2_carry__0_i_5_n_0),
        .I3(blkpos_x[7]),
        .I4(blkpos_x[6]),
        .I5(r_output2_n_97),
        .O(r_output2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    r_output2_carry__1_i_3
       (.I0(blkpos_x[3]),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[2]),
        .I4(blkpos_x[4]),
        .I5(blkpos_x[5]),
        .O(r_output2_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    r_output2_carry_i_1
       (.I0(blkpos_x[3]),
        .I1(blkpos_x[2]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[0]),
        .I4(r_output2_n_102),
        .O(r_output2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    r_output2_carry_i_2
       (.I0(blkpos_x[2]),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(r_output2_n_103),
        .O(r_output2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r_output2_carry_i_3
       (.I0(blkpos_x[1]),
        .I1(blkpos_x[0]),
        .I2(r_output2_n_104),
        .O(r_output2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_output2_carry_i_4
       (.I0(blkpos_x[0]),
        .I1(r_output2_n_105),
        .O(r_output2_carry_i_4_n_0));
  CARRY4 \r_output2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\r_output2_inferred__0/i__carry_n_0 ,\r_output2_inferred__0/i__carry_n_1 ,\r_output2_inferred__0/i__carry_n_2 ,\r_output2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\r_output2_inferred__0/i__carry__0_0 ),
        .O(\NLW_r_output2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\r_output2_inferred__0/i__carry__0_1 ));
  CARRY4 \r_output2_inferred__0/i__carry__0 
       (.CI(\r_output2_inferred__0/i__carry_n_0 ),
        .CO({\NLW_r_output2_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\r_output2_inferred__0/i__carry__0_n_2 ,\r_output2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pix_r[3]_INST_0_i_3_1 }),
        .O(\NLW_r_output2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\pix_r[3]_INST_0_i_3_2 }));
  CARRY4 r_output3_carry
       (.CI(1'b0),
        .CO({r_output3_carry_n_0,r_output3_carry_n_1,r_output3_carry_n_2,r_output3_carry_n_3}),
        .CYINIT(1'b1),
        .DI(r_output3_carry__0_0),
        .O(NLW_r_output3_carry_O_UNCONNECTED[3:0]),
        .S(r_output3_carry__0_1));
  CARRY4 r_output3_carry__0
       (.CI(r_output3_carry_n_0),
        .CO({NLW_r_output3_carry__0_CO_UNCONNECTED[3:2],CO,r_output3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pix_b[0] }),
        .O(NLW_r_output3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\pix_b[0]_0 }));
  CARRY4 r_output4_carry
       (.CI(1'b0),
        .CO({r_output4_carry_n_0,r_output4_carry_n_1,r_output4_carry_n_2,r_output4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({curr_y[1],r_output4_carry_i_2_n_0,curr_y[0],DI}),
        .O(A[3:0]),
        .S(S));
  CARRY4 r_output4_carry__0
       (.CI(r_output4_carry_n_0),
        .CO({r_output4_carry__0_n_0,r_output4_carry__0_n_1,r_output4_carry__0_n_2,r_output4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(curr_y[5:2]),
        .O(A[7:4]),
        .S(r_output2_0));
  CARRY4 r_output4_carry__1
       (.CI(r_output4_carry__0_n_0),
        .CO({NLW_r_output4_carry__1_CO_UNCONNECTED[3:1],r_output4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r_output4_carry__1_i_1_n_0}),
        .O({NLW_r_output4_carry__1_O_UNCONNECTED[3:2],A[9:8]}),
        .S({1'b0,1'b0,r_output2_1}));
  LUT1 #(
    .INIT(2'h1)) 
    r_output4_carry__1_i_1
       (.I0(Q[8]),
        .O(r_output4_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_output4_carry_i_2
       (.I0(Q[2]),
        .O(r_output4_carry_i_2_n_0));
  CARRY4 \r_output4_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\r_output4_inferred__0/i__carry_n_0 ,\r_output4_inferred__0/i__carry_n_1 ,\r_output4_inferred__0/i__carry_n_2 ,\r_output4_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\r_output4_inferred__0/i__carry__0_0 ),
        .O(\NLW_r_output4_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\r_output4_inferred__0/i__carry__0_1 ));
  CARRY4 \r_output4_inferred__0/i__carry__0 
       (.CI(\r_output4_inferred__0/i__carry_n_0 ),
        .CO({\NLW_r_output4_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\blkpos_y_reg[8] }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pix_b[0]_1 }),
        .O(\NLW_r_output4_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\pix_b[0]_2 }));
endmodule

(* ORIG_REF_NAME = "game_top" *) 
module game_game_top_0_0_game_top
   (vsync,
    pix_b,
    pix_g,
    pix_r,
    hsync,
    sw,
    clk,
    col_sw);
  output vsync;
  output [3:0]pix_b;
  output [3:0]pix_g;
  output [3:0]pix_r;
  output hsync;
  input [4:0]sw;
  input clk;
  input [11:0]col_sw;

  wire [10:0]blkpos_x;
  wire \blkpos_x[0]_i_1_n_0 ;
  wire \blkpos_x[10]_i_10_n_0 ;
  wire \blkpos_x[10]_i_11_n_0 ;
  wire \blkpos_x[10]_i_2_n_0 ;
  wire \blkpos_x[10]_i_3_n_0 ;
  wire \blkpos_x[10]_i_4_n_0 ;
  wire \blkpos_x[10]_i_5_n_0 ;
  wire \blkpos_x[10]_i_6_n_0 ;
  wire \blkpos_x[10]_i_7_n_0 ;
  wire \blkpos_x[10]_i_8_n_0 ;
  wire \blkpos_x[10]_i_9_n_0 ;
  wire \blkpos_x[1]_i_1_n_0 ;
  wire \blkpos_x[1]_i_2_n_0 ;
  wire \blkpos_x[2]_i_1_n_0 ;
  wire \blkpos_x[2]_i_2_n_0 ;
  wire \blkpos_x[2]_i_3_n_0 ;
  wire \blkpos_x[3]_i_1_n_0 ;
  wire \blkpos_x[3]_i_2_n_0 ;
  wire \blkpos_x[3]_i_3_n_0 ;
  wire \blkpos_x[4]_i_1_n_0 ;
  wire \blkpos_x[4]_i_2_n_0 ;
  wire \blkpos_x[4]_i_3_n_0 ;
  wire \blkpos_x[4]_i_4_n_0 ;
  wire \blkpos_x[5]_i_1_n_0 ;
  wire \blkpos_x[5]_i_2_n_0 ;
  wire \blkpos_x[5]_i_3_n_0 ;
  wire \blkpos_x[6]_i_1_n_0 ;
  wire \blkpos_x[6]_i_2_n_0 ;
  wire \blkpos_x[6]_i_3_n_0 ;
  wire \blkpos_x[6]_i_4_n_0 ;
  wire \blkpos_x[7]_i_1_n_0 ;
  wire \blkpos_x[7]_i_2_n_0 ;
  wire \blkpos_x[8]_i_1_n_0 ;
  wire \blkpos_x[8]_i_2_n_0 ;
  wire \blkpos_x[8]_i_3_n_0 ;
  wire \blkpos_x[9]_i_1_n_0 ;
  wire \blkpos_x[9]_i_2_n_0 ;
  wire \blkpos_x[9]_i_3_n_0 ;
  wire blkpos_x_0;
  wire [9:0]blkpos_y;
  wire \blkpos_y[0]_i_1_n_0 ;
  wire \blkpos_y[1]_i_1_n_0 ;
  wire \blkpos_y[2]_i_1_n_0 ;
  wire \blkpos_y[3]_i_1_n_0 ;
  wire \blkpos_y[4]_i_1_n_0 ;
  wire \blkpos_y[4]_i_2_n_0 ;
  wire \blkpos_y[5]_i_1_n_0 ;
  wire \blkpos_y[5]_i_2_n_0 ;
  wire \blkpos_y[6]_i_1_n_0 ;
  wire \blkpos_y[6]_i_2_n_0 ;
  wire \blkpos_y[7]_i_1_n_0 ;
  wire \blkpos_y[7]_i_2_n_0 ;
  wire \blkpos_y[8]_i_1_n_0 ;
  wire \blkpos_y[8]_i_2_n_0 ;
  wire \blkpos_y[8]_i_3_n_0 ;
  wire \blkpos_y[9]_i_10_n_0 ;
  wire \blkpos_y[9]_i_2_n_0 ;
  wire \blkpos_y[9]_i_3_n_0 ;
  wire \blkpos_y[9]_i_4_n_0 ;
  wire \blkpos_y[9]_i_5_n_0 ;
  wire \blkpos_y[9]_i_6_n_0 ;
  wire \blkpos_y[9]_i_7_n_0 ;
  wire \blkpos_y[9]_i_8_n_0 ;
  wire \blkpos_y[9]_i_9_n_0 ;
  wire blkpos_y_1;
  wire clk;
  wire \clk_count[0]_i_2_n_0 ;
  wire \clk_count_reg[0]_i_1_n_0 ;
  wire \clk_count_reg[0]_i_1_n_1 ;
  wire \clk_count_reg[0]_i_1_n_2 ;
  wire \clk_count_reg[0]_i_1_n_3 ;
  wire \clk_count_reg[0]_i_1_n_4 ;
  wire \clk_count_reg[0]_i_1_n_5 ;
  wire \clk_count_reg[0]_i_1_n_6 ;
  wire \clk_count_reg[0]_i_1_n_7 ;
  wire \clk_count_reg[12]_i_1_n_0 ;
  wire \clk_count_reg[12]_i_1_n_1 ;
  wire \clk_count_reg[12]_i_1_n_2 ;
  wire \clk_count_reg[12]_i_1_n_3 ;
  wire \clk_count_reg[12]_i_1_n_4 ;
  wire \clk_count_reg[12]_i_1_n_5 ;
  wire \clk_count_reg[12]_i_1_n_6 ;
  wire \clk_count_reg[12]_i_1_n_7 ;
  wire \clk_count_reg[16]_i_1_n_1 ;
  wire \clk_count_reg[16]_i_1_n_2 ;
  wire \clk_count_reg[16]_i_1_n_3 ;
  wire \clk_count_reg[16]_i_1_n_4 ;
  wire \clk_count_reg[16]_i_1_n_5 ;
  wire \clk_count_reg[16]_i_1_n_6 ;
  wire \clk_count_reg[16]_i_1_n_7 ;
  wire \clk_count_reg[4]_i_1_n_0 ;
  wire \clk_count_reg[4]_i_1_n_1 ;
  wire \clk_count_reg[4]_i_1_n_2 ;
  wire \clk_count_reg[4]_i_1_n_3 ;
  wire \clk_count_reg[4]_i_1_n_4 ;
  wire \clk_count_reg[4]_i_1_n_5 ;
  wire \clk_count_reg[4]_i_1_n_6 ;
  wire \clk_count_reg[4]_i_1_n_7 ;
  wire \clk_count_reg[8]_i_1_n_0 ;
  wire \clk_count_reg[8]_i_1_n_1 ;
  wire \clk_count_reg[8]_i_1_n_2 ;
  wire \clk_count_reg[8]_i_1_n_3 ;
  wire \clk_count_reg[8]_i_1_n_4 ;
  wire \clk_count_reg[8]_i_1_n_5 ;
  wire \clk_count_reg[8]_i_1_n_6 ;
  wire \clk_count_reg[8]_i_1_n_7 ;
  wire \clk_count_reg_n_0_[0] ;
  wire \clk_count_reg_n_0_[10] ;
  wire \clk_count_reg_n_0_[11] ;
  wire \clk_count_reg_n_0_[12] ;
  wire \clk_count_reg_n_0_[13] ;
  wire \clk_count_reg_n_0_[14] ;
  wire \clk_count_reg_n_0_[15] ;
  wire \clk_count_reg_n_0_[16] ;
  wire \clk_count_reg_n_0_[17] ;
  wire \clk_count_reg_n_0_[18] ;
  wire \clk_count_reg_n_0_[1] ;
  wire \clk_count_reg_n_0_[2] ;
  wire \clk_count_reg_n_0_[3] ;
  wire \clk_count_reg_n_0_[4] ;
  wire \clk_count_reg_n_0_[5] ;
  wire \clk_count_reg_n_0_[6] ;
  wire \clk_count_reg_n_0_[7] ;
  wire \clk_count_reg_n_0_[8] ;
  wire \clk_count_reg_n_0_[9] ;
  wire [11:0]col_sw;
  wire [9:0]curr_x;
  wire [9:1]curr_y;
  wire draw_module_n_0;
  wire draw_module_n_1;
  wire draw_module_n_12;
  wire draw_module_n_15;
  wire draw_module_n_16;
  wire draw_module_n_17;
  wire draw_module_n_18;
  wire draw_module_n_19;
  wire draw_module_n_2;
  wire draw_module_n_20;
  wire draw_module_n_3;
  wire draw_module_n_4;
  wire draw_module_n_5;
  wire draw_module_n_6;
  wire draw_module_n_7;
  wire draw_module_n_8;
  wire hsync;
  wire [3:0]pix_b;
  wire [3:0]pix_g;
  wire [3:0]pix_r;
  wire r_output1;
  wire slow_clk;
  wire [4:0]sw;
  wire vga_controller_n_0;
  wire vga_controller_n_1;
  wire vga_controller_n_11;
  wire vga_controller_n_16;
  wire vga_controller_n_17;
  wire vga_controller_n_18;
  wire vga_controller_n_19;
  wire vga_controller_n_2;
  wire vga_controller_n_20;
  wire vga_controller_n_21;
  wire vga_controller_n_22;
  wire vga_controller_n_23;
  wire vga_controller_n_24;
  wire vga_controller_n_25;
  wire vga_controller_n_26;
  wire vga_controller_n_27;
  wire vga_controller_n_28;
  wire vga_controller_n_29;
  wire vga_controller_n_3;
  wire vga_controller_n_30;
  wire vga_controller_n_31;
  wire vga_controller_n_33;
  wire vga_controller_n_36;
  wire vga_controller_n_4;
  wire vga_controller_n_43;
  wire vga_controller_n_44;
  wire vga_controller_n_45;
  wire vga_controller_n_46;
  wire vga_controller_n_47;
  wire vga_controller_n_48;
  wire vga_controller_n_49;
  wire vga_controller_n_5;
  wire vga_controller_n_50;
  wire vga_controller_n_51;
  wire vga_controller_n_52;
  wire vga_controller_n_53;
  wire vga_controller_n_54;
  wire vga_controller_n_55;
  wire vga_controller_n_56;
  wire vga_controller_n_57;
  wire vga_controller_n_58;
  wire vga_controller_n_59;
  wire vga_controller_n_60;
  wire vga_controller_n_61;
  wire vga_controller_n_62;
  wire vga_controller_n_63;
  wire vga_controller_n_64;
  wire vga_controller_n_65;
  wire vga_controller_n_66;
  wire vga_controller_n_75;
  wire vga_controller_n_76;
  wire vga_controller_n_77;
  wire vga_controller_n_78;
  wire vga_controller_n_79;
  wire vga_controller_n_80;
  wire vga_controller_n_82;
  wire vga_controller_n_83;
  wire vga_controller_n_84;
  wire vga_controller_n_85;
  wire vsync;
  wire [3:3]\NLW_clk_count_reg[16]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFDFFFDFFFD)) 
    \blkpos_x[0]_i_1 
       (.I0(blkpos_x[0]),
        .I1(sw[4]),
        .I2(sw[0]),
        .I3(sw[2]),
        .I4(sw[3]),
        .I5(sw[1]),
        .O(\blkpos_x[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEAAFEFEFE)) 
    \blkpos_x[10]_i_1 
       (.I0(sw[0]),
        .I1(sw[1]),
        .I2(\blkpos_x[10]_i_3_n_0 ),
        .I3(\blkpos_x[10]_i_4_n_0 ),
        .I4(blkpos_x[10]),
        .I5(\blkpos_x[10]_i_5_n_0 ),
        .O(blkpos_x_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFA80000)) 
    \blkpos_x[10]_i_10 
       (.I0(blkpos_x[2]),
        .I1(blkpos_x[1]),
        .I2(blkpos_x[0]),
        .I3(blkpos_x[3]),
        .I4(blkpos_x[4]),
        .O(\blkpos_x[10]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \blkpos_x[10]_i_11 
       (.I0(blkpos_x[7]),
        .I1(blkpos_x[6]),
        .I2(blkpos_x[9]),
        .I3(blkpos_x[8]),
        .O(\blkpos_x[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h020202AA02AA0202)) 
    \blkpos_x[10]_i_2 
       (.I0(\blkpos_x[10]_i_6_n_0 ),
        .I1(sw[3]),
        .I2(\blkpos_x[10]_i_7_n_0 ),
        .I3(sw[1]),
        .I4(\blkpos_x[10]_i_8_n_0 ),
        .I5(blkpos_x[10]),
        .O(\blkpos_x[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEF00EFEF0000)) 
    \blkpos_x[10]_i_3 
       (.I0(\blkpos_x[10]_i_9_n_0 ),
        .I1(blkpos_x[4]),
        .I2(\blkpos_x[4]_i_2_n_0 ),
        .I3(sw[2]),
        .I4(sw[3]),
        .I5(sw[4]),
        .O(\blkpos_x[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \blkpos_x[10]_i_4 
       (.I0(sw[4]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\blkpos_x[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001111111111111)) 
    \blkpos_x[10]_i_5 
       (.I0(blkpos_x[9]),
        .I1(blkpos_x[8]),
        .I2(blkpos_x[5]),
        .I3(\blkpos_x[10]_i_10_n_0 ),
        .I4(blkpos_x[6]),
        .I5(blkpos_x[7]),
        .O(\blkpos_x[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \blkpos_x[10]_i_6 
       (.I0(sw[2]),
        .I1(sw[0]),
        .I2(sw[4]),
        .O(\blkpos_x[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5595555555555555)) 
    \blkpos_x[10]_i_7 
       (.I0(blkpos_x[10]),
        .I1(blkpos_x[6]),
        .I2(blkpos_x[7]),
        .I3(\blkpos_x[6]_i_2_n_0 ),
        .I4(blkpos_x[8]),
        .I5(blkpos_x[9]),
        .O(\blkpos_x[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \blkpos_x[10]_i_8 
       (.I0(blkpos_x[8]),
        .I1(blkpos_x[9]),
        .I2(blkpos_x[6]),
        .I3(blkpos_x[7]),
        .I4(\blkpos_x[6]_i_3_n_0 ),
        .O(\blkpos_x[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \blkpos_x[10]_i_9 
       (.I0(\blkpos_x[10]_i_11_n_0 ),
        .I1(blkpos_x[5]),
        .I2(blkpos_x[10]),
        .I3(sw[2]),
        .I4(sw[4]),
        .O(\blkpos_x[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE2)) 
    \blkpos_x[1]_i_1 
       (.I0(sw[3]),
        .I1(\blkpos_x[1]_i_2_n_0 ),
        .I2(sw[1]),
        .I3(sw[2]),
        .I4(sw[4]),
        .I5(sw[0]),
        .O(\blkpos_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \blkpos_x[1]_i_2 
       (.I0(blkpos_x[0]),
        .I1(blkpos_x[1]),
        .O(\blkpos_x[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h544CCFF5555FFFF5)) 
    \blkpos_x[2]_i_1 
       (.I0(\blkpos_x[2]_i_2_n_0 ),
        .I1(sw[4]),
        .I2(blkpos_x[0]),
        .I3(blkpos_x[1]),
        .I4(blkpos_x[2]),
        .I5(\blkpos_x[2]_i_3_n_0 ),
        .O(\blkpos_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \blkpos_x[2]_i_2 
       (.I0(sw[4]),
        .I1(sw[2]),
        .I2(sw[1]),
        .O(\blkpos_x[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blkpos_x[2]_i_3 
       (.I0(sw[2]),
        .I1(sw[3]),
        .O(\blkpos_x[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDD07077DDDD7777)) 
    \blkpos_x[3]_i_1 
       (.I0(\blkpos_x[10]_i_4_n_0 ),
        .I1(\blkpos_x[3]_i_2_n_0 ),
        .I2(sw[4]),
        .I3(\blkpos_x[3]_i_3_n_0 ),
        .I4(blkpos_x[3]),
        .I5(\blkpos_x[6]_i_4_n_0 ),
        .O(\blkpos_x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \blkpos_x[3]_i_2 
       (.I0(blkpos_x[2]),
        .I1(blkpos_x[1]),
        .I2(blkpos_x[0]),
        .O(\blkpos_x[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \blkpos_x[3]_i_3 
       (.I0(blkpos_x[2]),
        .I1(blkpos_x[1]),
        .I2(blkpos_x[0]),
        .O(\blkpos_x[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEBBE00BFFFFFFFF)) 
    \blkpos_x[4]_i_1 
       (.I0(sw[3]),
        .I1(\blkpos_x[4]_i_2_n_0 ),
        .I2(\blkpos_x[4]_i_3_n_0 ),
        .I3(blkpos_x[4]),
        .I4(sw[1]),
        .I5(\blkpos_x[4]_i_4_n_0 ),
        .O(\blkpos_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \blkpos_x[4]_i_2 
       (.I0(blkpos_x[0]),
        .I1(blkpos_x[1]),
        .I2(blkpos_x[2]),
        .I3(blkpos_x[3]),
        .O(\blkpos_x[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \blkpos_x[4]_i_3 
       (.I0(blkpos_x[3]),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[2]),
        .O(\blkpos_x[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blkpos_x[4]_i_4 
       (.I0(sw[2]),
        .I1(sw[4]),
        .O(\blkpos_x[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDDD07077DDDD7777)) 
    \blkpos_x[5]_i_1 
       (.I0(\blkpos_x[10]_i_4_n_0 ),
        .I1(\blkpos_x[5]_i_2_n_0 ),
        .I2(sw[4]),
        .I3(\blkpos_x[5]_i_3_n_0 ),
        .I4(blkpos_x[5]),
        .I5(\blkpos_x[6]_i_4_n_0 ),
        .O(\blkpos_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h5777FFFF)) 
    \blkpos_x[5]_i_2 
       (.I0(blkpos_x[3]),
        .I1(blkpos_x[2]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[0]),
        .I4(blkpos_x[4]),
        .O(\blkpos_x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEA)) 
    \blkpos_x[5]_i_3 
       (.I0(blkpos_x[4]),
        .I1(blkpos_x[2]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[0]),
        .I4(blkpos_x[3]),
        .O(\blkpos_x[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDD07077DDDD7777)) 
    \blkpos_x[6]_i_1 
       (.I0(\blkpos_x[10]_i_4_n_0 ),
        .I1(\blkpos_x[6]_i_2_n_0 ),
        .I2(sw[4]),
        .I3(\blkpos_x[6]_i_3_n_0 ),
        .I4(blkpos_x[6]),
        .I5(\blkpos_x[6]_i_4_n_0 ),
        .O(\blkpos_x[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h557FFFFFFFFFFFFF)) 
    \blkpos_x[6]_i_2 
       (.I0(blkpos_x[4]),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[2]),
        .I4(blkpos_x[3]),
        .I5(blkpos_x[5]),
        .O(\blkpos_x[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEEEE)) 
    \blkpos_x[6]_i_3 
       (.I0(blkpos_x[5]),
        .I1(blkpos_x[3]),
        .I2(blkpos_x[0]),
        .I3(blkpos_x[1]),
        .I4(blkpos_x[2]),
        .I5(blkpos_x[4]),
        .O(\blkpos_x[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \blkpos_x[6]_i_4 
       (.I0(sw[2]),
        .I1(sw[1]),
        .O(\blkpos_x[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \blkpos_x[7]_i_1 
       (.I0(sw[4]),
        .I1(sw[0]),
        .I2(sw[2]),
        .I3(\blkpos_x[7]_i_2_n_0 ),
        .O(\blkpos_x[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFDEDE0FC00E0E)) 
    \blkpos_x[7]_i_2 
       (.I0(\blkpos_x[6]_i_3_n_0 ),
        .I1(sw[1]),
        .I2(blkpos_x[7]),
        .I3(\blkpos_x[6]_i_2_n_0 ),
        .I4(blkpos_x[6]),
        .I5(sw[3]),
        .O(\blkpos_x[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2002AA02200220AA)) 
    \blkpos_x[8]_i_1 
       (.I0(\blkpos_x[10]_i_6_n_0 ),
        .I1(sw[3]),
        .I2(\blkpos_x[8]_i_2_n_0 ),
        .I3(blkpos_x[8]),
        .I4(sw[1]),
        .I5(\blkpos_x[8]_i_3_n_0 ),
        .O(\blkpos_x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \blkpos_x[8]_i_2 
       (.I0(\blkpos_x[6]_i_2_n_0 ),
        .I1(blkpos_x[7]),
        .I2(blkpos_x[6]),
        .O(\blkpos_x[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \blkpos_x[8]_i_3 
       (.I0(blkpos_x[7]),
        .I1(blkpos_x[6]),
        .I2(\blkpos_x[6]_i_3_n_0 ),
        .O(\blkpos_x[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEFEFF)) 
    \blkpos_x[9]_i_1 
       (.I0(sw[4]),
        .I1(sw[2]),
        .I2(sw[3]),
        .I3(blkpos_x[9]),
        .I4(\blkpos_x[9]_i_2_n_0 ),
        .I5(\blkpos_x[9]_i_3_n_0 ),
        .O(\blkpos_x[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \blkpos_x[9]_i_2 
       (.I0(blkpos_x[6]),
        .I1(blkpos_x[7]),
        .I2(\blkpos_x[6]_i_2_n_0 ),
        .I3(blkpos_x[8]),
        .O(\blkpos_x[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A28)) 
    \blkpos_x[9]_i_3 
       (.I0(\blkpos_x[2]_i_2_n_0 ),
        .I1(blkpos_x[8]),
        .I2(blkpos_x[9]),
        .I3(blkpos_x[6]),
        .I4(blkpos_x[7]),
        .I5(\blkpos_x[6]_i_3_n_0 ),
        .O(\blkpos_x[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[0] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[0]_i_1_n_0 ),
        .Q(blkpos_x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[10] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[10]_i_2_n_0 ),
        .Q(blkpos_x[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[1] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[1]_i_1_n_0 ),
        .Q(blkpos_x[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[2] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[2]_i_1_n_0 ),
        .Q(blkpos_x[2]),
        .S(sw[0]));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[3] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[3]_i_1_n_0 ),
        .Q(blkpos_x[3]),
        .S(sw[0]));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[4] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[4]_i_1_n_0 ),
        .Q(blkpos_x[4]),
        .S(sw[0]));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[5] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[5]_i_1_n_0 ),
        .Q(blkpos_x[5]),
        .S(sw[0]));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[6] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[6]_i_1_n_0 ),
        .Q(blkpos_x[6]),
        .S(sw[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[7] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[7]_i_1_n_0 ),
        .Q(blkpos_x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[8] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[8]_i_1_n_0 ),
        .Q(blkpos_x[8]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_x_reg[9] 
       (.C(slow_clk),
        .CE(blkpos_x_0),
        .D(\blkpos_x[9]_i_1_n_0 ),
        .Q(blkpos_x[9]),
        .S(sw[0]));
  LUT6 #(
    .INIT(64'hFFFFFEE8FFFFFFFF)) 
    \blkpos_y[0]_i_1 
       (.I0(sw[2]),
        .I1(sw[1]),
        .I2(sw[4]),
        .I3(sw[3]),
        .I4(sw[0]),
        .I5(blkpos_y[0]),
        .O(\blkpos_y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \blkpos_y[1]_i_1 
       (.I0(\blkpos_y[9]_i_5_n_0 ),
        .I1(blkpos_y[1]),
        .I2(blkpos_y[0]),
        .I3(\blkpos_y[8]_i_2_n_0 ),
        .O(\blkpos_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h4331777D)) 
    \blkpos_y[2]_i_1 
       (.I0(\blkpos_y[9]_i_5_n_0 ),
        .I1(blkpos_y[2]),
        .I2(blkpos_y[0]),
        .I3(blkpos_y[1]),
        .I4(\blkpos_y[8]_i_2_n_0 ),
        .O(\blkpos_y[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4443311177777DDD)) 
    \blkpos_y[3]_i_1 
       (.I0(\blkpos_y[8]_i_2_n_0 ),
        .I1(blkpos_y[3]),
        .I2(blkpos_y[1]),
        .I3(blkpos_y[0]),
        .I4(blkpos_y[2]),
        .I5(\blkpos_y[9]_i_5_n_0 ),
        .O(\blkpos_y[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4FF84848)) 
    \blkpos_y[4]_i_1 
       (.I0(\blkpos_y[4]_i_2_n_0 ),
        .I1(\blkpos_y[9]_i_5_n_0 ),
        .I2(blkpos_y[4]),
        .I3(\blkpos_y[5]_i_2_n_0 ),
        .I4(\blkpos_y[8]_i_2_n_0 ),
        .O(\blkpos_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \blkpos_y[4]_i_2 
       (.I0(blkpos_y[3]),
        .I1(blkpos_y[1]),
        .I2(blkpos_y[0]),
        .I3(blkpos_y[2]),
        .O(\blkpos_y[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FF8F8F848484848)) 
    \blkpos_y[5]_i_1 
       (.I0(\blkpos_y[6]_i_2_n_0 ),
        .I1(\blkpos_y[9]_i_5_n_0 ),
        .I2(blkpos_y[5]),
        .I3(blkpos_y[4]),
        .I4(\blkpos_y[5]_i_2_n_0 ),
        .I5(\blkpos_y[8]_i_2_n_0 ),
        .O(\blkpos_y[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \blkpos_y[5]_i_2 
       (.I0(blkpos_y[3]),
        .I1(blkpos_y[1]),
        .I2(blkpos_y[0]),
        .I3(blkpos_y[2]),
        .O(\blkpos_y[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0FFFF40B040B040)) 
    \blkpos_y[6]_i_1 
       (.I0(blkpos_y[5]),
        .I1(\blkpos_y[6]_i_2_n_0 ),
        .I2(\blkpos_y[9]_i_5_n_0 ),
        .I3(blkpos_y[6]),
        .I4(\blkpos_y[7]_i_2_n_0 ),
        .I5(\blkpos_y[8]_i_2_n_0 ),
        .O(\blkpos_y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000057)) 
    \blkpos_y[6]_i_2 
       (.I0(blkpos_y[2]),
        .I1(blkpos_y[0]),
        .I2(blkpos_y[1]),
        .I3(blkpos_y[3]),
        .I4(blkpos_y[4]),
        .O(\blkpos_y[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00D57F007FD57FD5)) 
    \blkpos_y[7]_i_1 
       (.I0(\blkpos_y[8]_i_2_n_0 ),
        .I1(blkpos_y[6]),
        .I2(\blkpos_y[7]_i_2_n_0 ),
        .I3(blkpos_y[7]),
        .I4(\blkpos_y[9]_i_4_n_0 ),
        .I5(\blkpos_y[9]_i_5_n_0 ),
        .O(\blkpos_y[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888800000000000)) 
    \blkpos_y[7]_i_2 
       (.I0(blkpos_y[4]),
        .I1(blkpos_y[3]),
        .I2(blkpos_y[1]),
        .I3(blkpos_y[0]),
        .I4(blkpos_y[2]),
        .I5(blkpos_y[5]),
        .O(\blkpos_y[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h700D70707D7D7D7D)) 
    \blkpos_y[8]_i_1 
       (.I0(\blkpos_y[8]_i_2_n_0 ),
        .I1(\blkpos_y[8]_i_3_n_0 ),
        .I2(blkpos_y[8]),
        .I3(blkpos_y[7]),
        .I4(\blkpos_y[9]_i_4_n_0 ),
        .I5(\blkpos_y[9]_i_5_n_0 ),
        .O(\blkpos_y[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000115)) 
    \blkpos_y[8]_i_2 
       (.I0(sw[2]),
        .I1(sw[1]),
        .I2(sw[4]),
        .I3(sw[3]),
        .I4(sw[0]),
        .O(\blkpos_y[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \blkpos_y[8]_i_3 
       (.I0(blkpos_y[6]),
        .I1(blkpos_y[4]),
        .I2(\blkpos_y[5]_i_2_n_0 ),
        .I3(blkpos_y[5]),
        .I4(blkpos_y[7]),
        .O(\blkpos_y[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBBA)) 
    \blkpos_y[9]_i_1 
       (.I0(sw[0]),
        .I1(\blkpos_y[9]_i_3_n_0 ),
        .I2(sw[4]),
        .I3(sw[2]),
        .I4(sw[3]),
        .O(blkpos_y_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blkpos_y[9]_i_10 
       (.I0(sw[3]),
        .I1(sw[4]),
        .O(\blkpos_y[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA9AA0000)) 
    \blkpos_y[9]_i_2 
       (.I0(blkpos_y[9]),
        .I1(blkpos_y[7]),
        .I2(blkpos_y[8]),
        .I3(\blkpos_y[9]_i_4_n_0 ),
        .I4(\blkpos_y[9]_i_5_n_0 ),
        .I5(\blkpos_y[9]_i_6_n_0 ),
        .O(\blkpos_y[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000020FF)) 
    \blkpos_y[9]_i_3 
       (.I0(blkpos_y[9]),
        .I1(sw[3]),
        .I2(\blkpos_y[9]_i_7_n_0 ),
        .I3(sw[4]),
        .I4(\blkpos_y[9]_i_8_n_0 ),
        .I5(sw[1]),
        .O(\blkpos_y[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \blkpos_y[9]_i_4 
       (.I0(blkpos_y[6]),
        .I1(blkpos_y[5]),
        .I2(\blkpos_y[6]_i_2_n_0 ),
        .O(\blkpos_y[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000017)) 
    \blkpos_y[9]_i_5 
       (.I0(sw[1]),
        .I1(sw[3]),
        .I2(sw[2]),
        .I3(sw[0]),
        .I4(sw[4]),
        .O(\blkpos_y[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \blkpos_y[9]_i_6 
       (.I0(\blkpos_y[8]_i_2_n_0 ),
        .I1(blkpos_y[7]),
        .I2(\blkpos_y[7]_i_2_n_0 ),
        .I3(blkpos_y[6]),
        .I4(blkpos_y[8]),
        .I5(blkpos_y[9]),
        .O(\blkpos_y[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \blkpos_y[9]_i_7 
       (.I0(blkpos_y[8]),
        .I1(\blkpos_y[4]_i_2_n_0 ),
        .I2(blkpos_y[7]),
        .I3(blkpos_y[6]),
        .I4(blkpos_y[5]),
        .I5(blkpos_y[4]),
        .O(\blkpos_y[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFE000000FE)) 
    \blkpos_y[9]_i_8 
       (.I0(\blkpos_y[9]_i_9_n_0 ),
        .I1(blkpos_y[4]),
        .I2(\blkpos_y[5]_i_2_n_0 ),
        .I3(sw[3]),
        .I4(sw[4]),
        .I5(sw[2]),
        .O(\blkpos_y[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \blkpos_y[9]_i_9 
       (.I0(blkpos_y[7]),
        .I1(blkpos_y[8]),
        .I2(blkpos_y[9]),
        .I3(blkpos_y[5]),
        .I4(blkpos_y[6]),
        .I5(\blkpos_y[9]_i_10_n_0 ),
        .O(\blkpos_y[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[0] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[0]_i_1_n_0 ),
        .Q(blkpos_y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[1] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[1]_i_1_n_0 ),
        .Q(blkpos_y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[2] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[2]_i_1_n_0 ),
        .Q(blkpos_y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[3] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[3]_i_1_n_0 ),
        .Q(blkpos_y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[4] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[4]_i_1_n_0 ),
        .Q(blkpos_y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[5] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[5]_i_1_n_0 ),
        .Q(blkpos_y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[6] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[6]_i_1_n_0 ),
        .Q(blkpos_y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[7] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[7]_i_1_n_0 ),
        .Q(blkpos_y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[8] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[8]_i_1_n_0 ),
        .Q(blkpos_y[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \blkpos_y_reg[9] 
       (.C(slow_clk),
        .CE(blkpos_y_1),
        .D(\blkpos_y[9]_i_2_n_0 ),
        .Q(blkpos_y[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_count[0]_i_2 
       (.I0(\clk_count_reg_n_0_[0] ),
        .O(\clk_count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[0]_i_1_n_7 ),
        .Q(\clk_count_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clk_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_count_reg[0]_i_1_n_0 ,\clk_count_reg[0]_i_1_n_1 ,\clk_count_reg[0]_i_1_n_2 ,\clk_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_count_reg[0]_i_1_n_4 ,\clk_count_reg[0]_i_1_n_5 ,\clk_count_reg[0]_i_1_n_6 ,\clk_count_reg[0]_i_1_n_7 }),
        .S({\clk_count_reg_n_0_[3] ,\clk_count_reg_n_0_[2] ,\clk_count_reg_n_0_[1] ,\clk_count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[8]_i_1_n_5 ),
        .Q(\clk_count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[8]_i_1_n_4 ),
        .Q(\clk_count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[12]_i_1_n_7 ),
        .Q(\clk_count_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \clk_count_reg[12]_i_1 
       (.CI(\clk_count_reg[8]_i_1_n_0 ),
        .CO({\clk_count_reg[12]_i_1_n_0 ,\clk_count_reg[12]_i_1_n_1 ,\clk_count_reg[12]_i_1_n_2 ,\clk_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_count_reg[12]_i_1_n_4 ,\clk_count_reg[12]_i_1_n_5 ,\clk_count_reg[12]_i_1_n_6 ,\clk_count_reg[12]_i_1_n_7 }),
        .S({\clk_count_reg_n_0_[15] ,\clk_count_reg_n_0_[14] ,\clk_count_reg_n_0_[13] ,\clk_count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[12]_i_1_n_6 ),
        .Q(\clk_count_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[12]_i_1_n_5 ),
        .Q(\clk_count_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[12]_i_1_n_4 ),
        .Q(\clk_count_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[16]_i_1_n_7 ),
        .Q(\clk_count_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \clk_count_reg[16]_i_1 
       (.CI(\clk_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_clk_count_reg[16]_i_1_CO_UNCONNECTED [3],\clk_count_reg[16]_i_1_n_1 ,\clk_count_reg[16]_i_1_n_2 ,\clk_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_count_reg[16]_i_1_n_4 ,\clk_count_reg[16]_i_1_n_5 ,\clk_count_reg[16]_i_1_n_6 ,\clk_count_reg[16]_i_1_n_7 }),
        .S({slow_clk,\clk_count_reg_n_0_[18] ,\clk_count_reg_n_0_[17] ,\clk_count_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[16]_i_1_n_6 ),
        .Q(\clk_count_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[16]_i_1_n_5 ),
        .Q(\clk_count_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[16]_i_1_n_4 ),
        .Q(slow_clk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[0]_i_1_n_6 ),
        .Q(\clk_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[0]_i_1_n_5 ),
        .Q(\clk_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[0]_i_1_n_4 ),
        .Q(\clk_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[4]_i_1_n_7 ),
        .Q(\clk_count_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \clk_count_reg[4]_i_1 
       (.CI(\clk_count_reg[0]_i_1_n_0 ),
        .CO({\clk_count_reg[4]_i_1_n_0 ,\clk_count_reg[4]_i_1_n_1 ,\clk_count_reg[4]_i_1_n_2 ,\clk_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_count_reg[4]_i_1_n_4 ,\clk_count_reg[4]_i_1_n_5 ,\clk_count_reg[4]_i_1_n_6 ,\clk_count_reg[4]_i_1_n_7 }),
        .S({\clk_count_reg_n_0_[7] ,\clk_count_reg_n_0_[6] ,\clk_count_reg_n_0_[5] ,\clk_count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[4]_i_1_n_6 ),
        .Q(\clk_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[4]_i_1_n_5 ),
        .Q(\clk_count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[4]_i_1_n_4 ),
        .Q(\clk_count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[8]_i_1_n_7 ),
        .Q(\clk_count_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \clk_count_reg[8]_i_1 
       (.CI(\clk_count_reg[4]_i_1_n_0 ),
        .CO({\clk_count_reg[8]_i_1_n_0 ,\clk_count_reg[8]_i_1_n_1 ,\clk_count_reg[8]_i_1_n_2 ,\clk_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_count_reg[8]_i_1_n_4 ,\clk_count_reg[8]_i_1_n_5 ,\clk_count_reg[8]_i_1_n_6 ,\clk_count_reg[8]_i_1_n_7 }),
        .S({\clk_count_reg_n_0_[11] ,\clk_count_reg_n_0_[10] ,\clk_count_reg_n_0_[9] ,\clk_count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count_reg[8]_i_1_n_6 ),
        .Q(\clk_count_reg_n_0_[9] ),
        .R(1'b0));
  game_game_top_0_0_drawcon draw_module
       (.C({curr_x[9:5],vga_controller_n_11,curr_x[3:0]}),
        .CO(draw_module_n_0),
        .DI(vga_controller_n_33),
        .Q(blkpos_y[8:0]),
        .S({vga_controller_n_0,vga_controller_n_1,vga_controller_n_2,vga_controller_n_3}),
        .\_inferred__0/i__carry__0_0 (vga_controller_n_5),
        .\_inferred__0/i__carry__0_1 ({vga_controller_n_16,vga_controller_n_17,vga_controller_n_18,vga_controller_n_19}),
        .\_inferred__0/i__carry__1_0 (draw_module_n_12),
        .\_inferred__0/i__carry__1_1 ({vga_controller_n_82,vga_controller_n_83,vga_controller_n_84,vga_controller_n_85}),
        .blkpos_x(blkpos_x),
        .\blkpos_x_reg[0] (draw_module_n_19),
        .\blkpos_x_reg[10] (draw_module_n_3),
        .\blkpos_x_reg[3] (draw_module_n_4),
        .\blkpos_x_reg[3]_0 (draw_module_n_18),
        .\blkpos_x_reg[6] (draw_module_n_2),
        .\blkpos_x_reg[7] (draw_module_n_15),
        .\blkpos_x_reg[8] (draw_module_n_17),
        .\blkpos_x_reg[9] (draw_module_n_16),
        .\blkpos_y_reg[1] (draw_module_n_8),
        .\blkpos_y_reg[3] (draw_module_n_7),
        .\blkpos_y_reg[3]_0 (draw_module_n_20),
        .\blkpos_y_reg[5] (draw_module_n_6),
        .\blkpos_y_reg[6] (draw_module_n_5),
        .\blkpos_y_reg[8] (draw_module_n_1),
        .col_sw({col_sw[11:10],col_sw[3:2]}),
        .curr_y({curr_y[9:3],curr_y[1]}),
        .pix_b(pix_b[3:2]),
        .\pix_b[0] ({vga_controller_n_77,vga_controller_n_78}),
        .\pix_b[0]_0 ({vga_controller_n_79,vga_controller_n_80}),
        .\pix_b[0]_1 (vga_controller_n_76),
        .\pix_b[0]_2 (vga_controller_n_75),
        .\pix_b[2] (vga_controller_n_36),
        .\pix_b[2]_0 (vga_controller_n_4),
        .pix_r(pix_r[3:2]),
        .\pix_r[3]_INST_0_i_3_0 ({vga_controller_n_26,vga_controller_n_27}),
        .\pix_r[3]_INST_0_i_3_1 ({vga_controller_n_30,vga_controller_n_31}),
        .\pix_r[3]_INST_0_i_3_2 ({vga_controller_n_28,vga_controller_n_29}),
        .r_output1(r_output1),
        .r_output2_0({vga_controller_n_20,vga_controller_n_21,vga_controller_n_22,vga_controller_n_23}),
        .r_output2_1({vga_controller_n_24,vga_controller_n_25}),
        .\r_output2_inferred__0/i__carry__0_0 ({vga_controller_n_55,vga_controller_n_56,vga_controller_n_57,vga_controller_n_58}),
        .\r_output2_inferred__0/i__carry__0_1 ({vga_controller_n_51,vga_controller_n_52,vga_controller_n_53,vga_controller_n_54}),
        .r_output3_carry__0_0({vga_controller_n_63,vga_controller_n_64,vga_controller_n_65,vga_controller_n_66}),
        .r_output3_carry__0_1({vga_controller_n_59,vga_controller_n_60,vga_controller_n_61,vga_controller_n_62}),
        .\r_output4_inferred__0/i__carry__0_0 ({vga_controller_n_47,vga_controller_n_48,vga_controller_n_49,vga_controller_n_50}),
        .\r_output4_inferred__0/i__carry__0_1 ({vga_controller_n_43,vga_controller_n_44,vga_controller_n_45,vga_controller_n_46}));
  game_game_top_0_0_vga_out vga_controller
       (.C({curr_x[9:5],vga_controller_n_11,curr_x[3:0]}),
        .CO(draw_module_n_0),
        .DI(vga_controller_n_33),
        .Q(blkpos_y),
        .S({vga_controller_n_0,vga_controller_n_1,vga_controller_n_2,vga_controller_n_3}),
        .\_inferred__0/i__carry (draw_module_n_8),
        .\_inferred__0/i__carry__0 (draw_module_n_20),
        .\_inferred__0/i__carry__0_0 (draw_module_n_6),
        .\_inferred__0/i__carry__1 (draw_module_n_7),
        .\_inferred__0/i__carry__1_0 (draw_module_n_5),
        .blkpos_x(blkpos_x),
        .\blkpos_x_reg[10] ({vga_controller_n_79,vga_controller_n_80}),
        .\blkpos_x_reg[6] ({vga_controller_n_51,vga_controller_n_52,vga_controller_n_53,vga_controller_n_54}),
        .\blkpos_x_reg[7] ({vga_controller_n_63,vga_controller_n_64,vga_controller_n_65,vga_controller_n_66}),
        .\blkpos_y_reg[7] ({vga_controller_n_47,vga_controller_n_48,vga_controller_n_49,vga_controller_n_50}),
        .\blkpos_y_reg[8] (vga_controller_n_76),
        .\blkpos_y_reg[9] ({vga_controller_n_24,vga_controller_n_25}),
        .clk(clk),
        .col_sw({col_sw[9:4],col_sw[1:0]}),
        .curr_y({curr_y[9:3],curr_y[1]}),
        .\hcount_reg[10]_0 (vga_controller_n_36),
        .\hcount_reg[7]_0 ({vga_controller_n_55,vga_controller_n_56,vga_controller_n_57,vga_controller_n_58}),
        .\hcount_reg[7]_1 ({vga_controller_n_59,vga_controller_n_60,vga_controller_n_61,vga_controller_n_62}),
        .\hcount_reg[8]_0 (vga_controller_n_4),
        .\hcount_reg[9]_0 ({vga_controller_n_28,vga_controller_n_29}),
        .\hcount_reg[9]_1 ({vga_controller_n_30,vga_controller_n_31}),
        .\hcount_reg[9]_2 ({vga_controller_n_77,vga_controller_n_78}),
        .hsync(hsync),
        .i__carry_i_5__0_0(draw_module_n_15),
        .pix_b(pix_b[1:0]),
        .\pix_b[0] (draw_module_n_1),
        .\pix_b[0]_0 (draw_module_n_12),
        .pix_g(pix_g),
        .pix_r(pix_r[1:0]),
        .r_output1(r_output1),
        .\r_output2_inferred__0/i__carry (draw_module_n_18),
        .\r_output2_inferred__0/i__carry_0 (draw_module_n_2),
        .\r_output2_inferred__0/i__carry_1 (draw_module_n_4),
        .\r_output2_inferred__0/i__carry_2 (draw_module_n_19),
        .\r_output2_inferred__0/i__carry__0 (draw_module_n_3),
        .\r_output2_inferred__0/i__carry__0_0 (draw_module_n_16),
        .\r_output2_inferred__0/i__carry__0_1 (draw_module_n_17),
        .\vcount_reg[0]_0 (vga_controller_n_5),
        .\vcount_reg[3]_0 ({vga_controller_n_16,vga_controller_n_17,vga_controller_n_18,vga_controller_n_19}),
        .\vcount_reg[7]_0 ({vga_controller_n_20,vga_controller_n_21,vga_controller_n_22,vga_controller_n_23}),
        .\vcount_reg[7]_1 ({vga_controller_n_43,vga_controller_n_44,vga_controller_n_45,vga_controller_n_46}),
        .\vcount_reg[7]_2 ({vga_controller_n_82,vga_controller_n_83,vga_controller_n_84,vga_controller_n_85}),
        .\vcount_reg[9]_0 ({vga_controller_n_26,vga_controller_n_27}),
        .\vcount_reg[9]_1 (vga_controller_n_75),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "vga_out" *) 
module game_game_top_0_0_vga_out
   (S,
    \hcount_reg[8]_0 ,
    \vcount_reg[0]_0 ,
    C,
    \vcount_reg[3]_0 ,
    \vcount_reg[7]_0 ,
    \blkpos_y_reg[9] ,
    \vcount_reg[9]_0 ,
    \hcount_reg[9]_0 ,
    \hcount_reg[9]_1 ,
    vsync,
    DI,
    pix_b,
    \hcount_reg[10]_0 ,
    pix_g,
    pix_r,
    \vcount_reg[7]_1 ,
    \blkpos_y_reg[7] ,
    \blkpos_x_reg[6] ,
    \hcount_reg[7]_0 ,
    \hcount_reg[7]_1 ,
    \blkpos_x_reg[7] ,
    curr_y,
    \vcount_reg[9]_1 ,
    \blkpos_y_reg[8] ,
    \hcount_reg[9]_2 ,
    \blkpos_x_reg[10] ,
    hsync,
    \vcount_reg[7]_2 ,
    Q,
    \_inferred__0/i__carry__1 ,
    \r_output2_inferred__0/i__carry__0 ,
    i__carry_i_5__0_0,
    col_sw,
    \pix_b[0] ,
    CO,
    \pix_b[0]_0 ,
    r_output1,
    blkpos_x,
    \r_output2_inferred__0/i__carry ,
    \r_output2_inferred__0/i__carry__0_0 ,
    \r_output2_inferred__0/i__carry__0_1 ,
    \r_output2_inferred__0/i__carry_0 ,
    \r_output2_inferred__0/i__carry_1 ,
    \r_output2_inferred__0/i__carry_2 ,
    \_inferred__0/i__carry ,
    \_inferred__0/i__carry__0 ,
    \_inferred__0/i__carry__0_0 ,
    \_inferred__0/i__carry__1_0 ,
    clk);
  output [3:0]S;
  output \hcount_reg[8]_0 ;
  output [0:0]\vcount_reg[0]_0 ;
  output [9:0]C;
  output [3:0]\vcount_reg[3]_0 ;
  output [3:0]\vcount_reg[7]_0 ;
  output [1:0]\blkpos_y_reg[9] ;
  output [1:0]\vcount_reg[9]_0 ;
  output [1:0]\hcount_reg[9]_0 ;
  output [1:0]\hcount_reg[9]_1 ;
  output vsync;
  output [0:0]DI;
  output [1:0]pix_b;
  output \hcount_reg[10]_0 ;
  output [3:0]pix_g;
  output [1:0]pix_r;
  output [3:0]\vcount_reg[7]_1 ;
  output [3:0]\blkpos_y_reg[7] ;
  output [3:0]\blkpos_x_reg[6] ;
  output [3:0]\hcount_reg[7]_0 ;
  output [3:0]\hcount_reg[7]_1 ;
  output [3:0]\blkpos_x_reg[7] ;
  output [7:0]curr_y;
  output [0:0]\vcount_reg[9]_1 ;
  output [0:0]\blkpos_y_reg[8] ;
  output [1:0]\hcount_reg[9]_2 ;
  output [1:0]\blkpos_x_reg[10] ;
  output hsync;
  output [3:0]\vcount_reg[7]_2 ;
  input [9:0]Q;
  input \_inferred__0/i__carry__1 ;
  input \r_output2_inferred__0/i__carry__0 ;
  input i__carry_i_5__0_0;
  input [7:0]col_sw;
  input [0:0]\pix_b[0] ;
  input [0:0]CO;
  input \pix_b[0]_0 ;
  input r_output1;
  input [10:0]blkpos_x;
  input \r_output2_inferred__0/i__carry ;
  input \r_output2_inferred__0/i__carry__0_0 ;
  input \r_output2_inferred__0/i__carry__0_1 ;
  input \r_output2_inferred__0/i__carry_0 ;
  input \r_output2_inferred__0/i__carry_1 ;
  input \r_output2_inferred__0/i__carry_2 ;
  input \_inferred__0/i__carry ;
  input \_inferred__0/i__carry__0 ;
  input \_inferred__0/i__carry__0_0 ;
  input \_inferred__0/i__carry__1_0 ;
  input clk;

  wire [9:0]C;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry ;
  wire \_inferred__0/i__carry__0 ;
  wire \_inferred__0/i__carry__0_0 ;
  wire \_inferred__0/i__carry__1 ;
  wire \_inferred__0/i__carry__1_0 ;
  wire [10:0]blkpos_x;
  wire [1:0]\blkpos_x_reg[10] ;
  wire [3:0]\blkpos_x_reg[6] ;
  wire [3:0]\blkpos_x_reg[7] ;
  wire [3:0]\blkpos_y_reg[7] ;
  wire [0:0]\blkpos_y_reg[8] ;
  wire [1:0]\blkpos_y_reg[9] ;
  wire clk;
  wire [7:0]col_sw;
  wire [10:10]curr_x__0;
  wire [7:0]curr_y;
  wire [10:0]hcount;
  wire \hcount[10]_i_2_n_0 ;
  wire \hcount[10]_i_3_n_0 ;
  wire \hcount[10]_i_4_n_0 ;
  wire \hcount[10]_i_5_n_0 ;
  wire \hcount[6]_i_1_n_0 ;
  wire \hcount[8]_i_2_n_0 ;
  wire \hcount[9]_i_2_n_0 ;
  wire \hcount_reg[10]_0 ;
  wire [3:0]\hcount_reg[7]_0 ;
  wire [3:0]\hcount_reg[7]_1 ;
  wire \hcount_reg[8]_0 ;
  wire [1:0]\hcount_reg[9]_0 ;
  wire [1:0]\hcount_reg[9]_1 ;
  wire [1:0]\hcount_reg[9]_2 ;
  wire \hcount_reg_n_0_[0] ;
  wire \hcount_reg_n_0_[10] ;
  wire \hcount_reg_n_0_[1] ;
  wire \hcount_reg_n_0_[2] ;
  wire \hcount_reg_n_0_[3] ;
  wire \hcount_reg_n_0_[4] ;
  wire \hcount_reg_n_0_[5] ;
  wire \hcount_reg_n_0_[6] ;
  wire \hcount_reg_n_0_[7] ;
  wire \hcount_reg_n_0_[8] ;
  wire \hcount_reg_n_0_[9] ;
  wire hsync;
  wire hsync_INST_0_i_1_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_5__0_0;
  wire [1:0]pix_b;
  wire [0:0]\pix_b[0] ;
  wire \pix_b[0]_0 ;
  wire [3:0]pix_g;
  wire [1:0]pix_r;
  wire \pix_r[3]_INST_0_i_10_n_0 ;
  wire \pix_r[3]_INST_0_i_11_n_0 ;
  wire \pix_r[3]_INST_0_i_14_n_0 ;
  wire \pix_r[3]_INST_0_i_15_n_0 ;
  wire \pix_r[3]_INST_0_i_16_n_0 ;
  wire \pix_r[3]_INST_0_i_17_n_0 ;
  wire \pix_r[3]_INST_0_i_18_n_0 ;
  wire \pix_r[3]_INST_0_i_19_n_0 ;
  wire \pix_r[3]_INST_0_i_20_n_0 ;
  wire \pix_r[3]_INST_0_i_21_n_0 ;
  wire \pix_r[3]_INST_0_i_22_n_0 ;
  wire \pix_r[3]_INST_0_i_23_n_0 ;
  wire \pix_r[3]_INST_0_i_24_n_0 ;
  wire \pix_r[3]_INST_0_i_31_n_0 ;
  wire \pix_r[3]_INST_0_i_32_n_0 ;
  wire \pix_r[3]_INST_0_i_33_n_0 ;
  wire \pix_r[3]_INST_0_i_34_n_0 ;
  wire \pix_r[3]_INST_0_i_7_n_0 ;
  wire \pix_r[3]_INST_0_i_8_n_0 ;
  wire \pix_r[3]_INST_0_i_9_n_0 ;
  wire r_output1;
  wire r_output2_i_11_n_0;
  wire r_output2_i_12_n_0;
  wire r_output2_i_13_n_0;
  wire r_output2_i_14_n_0;
  wire \r_output2_inferred__0/i__carry ;
  wire \r_output2_inferred__0/i__carry_0 ;
  wire \r_output2_inferred__0/i__carry_1 ;
  wire \r_output2_inferred__0/i__carry_2 ;
  wire \r_output2_inferred__0/i__carry__0 ;
  wire \r_output2_inferred__0/i__carry__0_0 ;
  wire \r_output2_inferred__0/i__carry__0_1 ;
  wire r_output3_carry_i_9_n_0;
  wire r_output4_carry__0_i_10_n_0;
  wire r_output4_carry__0_i_11_n_0;
  wire r_output4_carry__0_i_9_n_0;
  wire r_output4_carry__1_i_4_n_0;
  wire r_output4_carry_i_10_n_0;
  wire r_output4_carry_i_11_n_0;
  wire r_output4_carry_i_12_n_0;
  wire r_output4_carry_i_9_n_0;
  wire vcount;
  wire \vcount[0]_i_1_n_0 ;
  wire \vcount[1]_i_1_n_0 ;
  wire \vcount[2]_i_1_n_0 ;
  wire \vcount[3]_i_1_n_0 ;
  wire \vcount[4]_i_1_n_0 ;
  wire \vcount[5]_i_1_n_0 ;
  wire \vcount[6]_i_1_n_0 ;
  wire \vcount[6]_i_2_n_0 ;
  wire \vcount[7]_i_1_n_0 ;
  wire \vcount[7]_i_2_n_0 ;
  wire \vcount[8]_i_1_n_0 ;
  wire \vcount[9]_i_2_n_0 ;
  wire \vcount[9]_i_3_n_0 ;
  wire \vcount[9]_i_4_n_0 ;
  wire \vcount[9]_i_5_n_0 ;
  wire [0:0]\vcount_reg[0]_0 ;
  wire [3:0]\vcount_reg[3]_0 ;
  wire [3:0]\vcount_reg[7]_0 ;
  wire [3:0]\vcount_reg[7]_1 ;
  wire [3:0]\vcount_reg[7]_2 ;
  wire [1:0]\vcount_reg[9]_0 ;
  wire [0:0]\vcount_reg[9]_1 ;
  wire \vcount_reg_n_0_[0] ;
  wire \vcount_reg_n_0_[1] ;
  wire \vcount_reg_n_0_[2] ;
  wire \vcount_reg_n_0_[3] ;
  wire \vcount_reg_n_0_[4] ;
  wire \vcount_reg_n_0_[5] ;
  wire \vcount_reg_n_0_[6] ;
  wire \vcount_reg_n_0_[7] ;
  wire \vcount_reg_n_0_[8] ;
  wire \vcount_reg_n_0_[9] ;
  wire vsync;
  wire vsync_INST_0_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[0]_i_1 
       (.I0(\hcount_reg_n_0_[0] ),
        .O(hcount[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \hcount[10]_i_1 
       (.I0(\hcount[10]_i_2_n_0 ),
        .I1(\hcount[10]_i_3_n_0 ),
        .I2(\hcount_reg_n_0_[9] ),
        .I3(\hcount_reg_n_0_[10] ),
        .O(hcount[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \hcount[10]_i_2 
       (.I0(\hcount[10]_i_4_n_0 ),
        .I1(r_output3_carry_i_9_n_0),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\hcount_reg_n_0_[2] ),
        .I4(\hcount[10]_i_5_n_0 ),
        .I5(\hcount_reg_n_0_[6] ),
        .O(\hcount[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hcount[10]_i_3 
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount[8]_i_2_n_0 ),
        .I4(\hcount_reg_n_0_[4] ),
        .I5(\hcount_reg_n_0_[5] ),
        .O(\hcount[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hcount[10]_i_4 
       (.I0(\hcount_reg_n_0_[1] ),
        .I1(\hcount_reg_n_0_[0] ),
        .I2(\hcount_reg_n_0_[3] ),
        .I3(\hcount_reg_n_0_[7] ),
        .O(\hcount[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \hcount[10]_i_5 
       (.I0(\hcount_reg_n_0_[10] ),
        .I1(\hcount_reg_n_0_[9] ),
        .O(\hcount[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount[1]_i_1 
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(\hcount_reg_n_0_[1] ),
        .O(hcount[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount[2]_i_1 
       (.I0(\hcount_reg_n_0_[2] ),
        .I1(\hcount_reg_n_0_[1] ),
        .I2(\hcount_reg_n_0_[0] ),
        .O(hcount[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcount[3]_i_1 
       (.I0(\hcount_reg_n_0_[3] ),
        .I1(\hcount_reg_n_0_[0] ),
        .I2(\hcount_reg_n_0_[1] ),
        .I3(\hcount_reg_n_0_[2] ),
        .O(hcount[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \hcount[4]_i_1 
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(\hcount_reg_n_0_[1] ),
        .I2(\hcount_reg_n_0_[2] ),
        .I3(\hcount_reg_n_0_[3] ),
        .I4(\hcount_reg_n_0_[4] ),
        .I5(vcount),
        .O(hcount[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcount[5]_i_1 
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[0] ),
        .I3(\hcount_reg_n_0_[1] ),
        .I4(\hcount_reg_n_0_[2] ),
        .I5(\hcount_reg_n_0_[3] ),
        .O(hcount[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcount[6]_i_1 
       (.I0(\hcount_reg_n_0_[6] ),
        .I1(\hcount[8]_i_2_n_0 ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg_n_0_[5] ),
        .O(\hcount[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \hcount[7]_i_1 
       (.I0(\hcount[10]_i_2_n_0 ),
        .I1(\hcount_reg_n_0_[6] ),
        .I2(\hcount[8]_i_2_n_0 ),
        .I3(\hcount_reg_n_0_[4] ),
        .I4(\hcount_reg_n_0_[5] ),
        .I5(\hcount_reg_n_0_[7] ),
        .O(hcount[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcount[8]_i_1 
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount[8]_i_2_n_0 ),
        .I4(\hcount_reg_n_0_[4] ),
        .I5(\hcount_reg_n_0_[5] ),
        .O(hcount[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \hcount[8]_i_2 
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(\hcount_reg_n_0_[1] ),
        .I2(\hcount_reg_n_0_[2] ),
        .I3(\hcount_reg_n_0_[3] ),
        .O(\hcount[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2AAA00008000)) 
    \hcount[9]_i_1 
       (.I0(\hcount[10]_i_2_n_0 ),
        .I1(\hcount_reg_n_0_[8] ),
        .I2(\hcount_reg_n_0_[7] ),
        .I3(\hcount_reg_n_0_[6] ),
        .I4(\hcount[9]_i_2_n_0 ),
        .I5(\hcount_reg_n_0_[9] ),
        .O(hcount[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \hcount[9]_i_2 
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[0] ),
        .I3(\hcount_reg_n_0_[1] ),
        .I4(\hcount_reg_n_0_[2] ),
        .I5(\hcount_reg_n_0_[3] ),
        .O(\hcount[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[0]),
        .Q(\hcount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[10]),
        .Q(\hcount_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[1]),
        .Q(\hcount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[2]),
        .Q(\hcount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[3]),
        .Q(\hcount_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[4]),
        .Q(\hcount_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[5]),
        .Q(\hcount_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount[6]_i_1_n_0 ),
        .Q(\hcount_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[7]),
        .Q(\hcount_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[8]),
        .Q(\hcount_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \hcount_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(hcount[9]),
        .Q(\hcount_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    hsync_INST_0
       (.I0(\hcount_reg_n_0_[3] ),
        .I1(hsync_INST_0_i_1_n_0),
        .I2(\hcount_reg_n_0_[7] ),
        .I3(\hcount_reg_n_0_[10] ),
        .I4(\hcount_reg_n_0_[9] ),
        .I5(\hcount_reg_n_0_[8] ),
        .O(hsync));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    hsync_INST_0_i_1
       (.I0(\hcount_reg_n_0_[6] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[5] ),
        .O(hsync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h000400DF00000014)) 
    i__carry__0_i_1
       (.I0(Q[8]),
        .I1(\vcount_reg_n_0_[8] ),
        .I2(i__carry__1_i_8_n_0),
        .I3(\hcount_reg[8]_0 ),
        .I4(Q[9]),
        .I5(\vcount_reg_n_0_[9] ),
        .O(\blkpos_y_reg[8] ));
  LUT6 #(
    .INIT(64'hFF65009A009AFF65)) 
    i__carry__0_i_1__0
       (.I0(\vcount_reg_n_0_[7] ),
        .I1(\vcount_reg_n_0_[6] ),
        .I2(r_output4_carry__0_i_9_n_0),
        .I3(\hcount_reg[8]_0 ),
        .I4(\_inferred__0/i__carry__1 ),
        .I5(Q[7]),
        .O(\vcount_reg[7]_2 [3]));
  LUT5 #(
    .INIT(32'h0000FF1F)) 
    i__carry__0_i_1__1
       (.I0(r_output2_i_14_n_0),
        .I1(\hcount_reg_n_0_[9] ),
        .I2(\hcount_reg_n_0_[10] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(\r_output2_inferred__0/i__carry__0 ),
        .O(\hcount_reg[9]_1 [1]));
  LUT6 #(
    .INIT(64'h0009030039303039)) 
    i__carry__0_i_2
       (.I0(\vcount_reg_n_0_[9] ),
        .I1(Q[9]),
        .I2(\hcount_reg[8]_0 ),
        .I3(i__carry__1_i_8_n_0),
        .I4(\vcount_reg_n_0_[8] ),
        .I5(Q[8]),
        .O(\vcount_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hFFBEFF18FF9A0000)) 
    i__carry__0_i_2__0
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\pix_r[3]_INST_0_i_15_n_0 ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(\r_output2_inferred__0/i__carry__0_0 ),
        .I5(\r_output2_inferred__0/i__carry__0_1 ),
        .O(\hcount_reg[9]_1 [0]));
  LUT5 #(
    .INIT(32'hF90606F9)) 
    i__carry__0_i_2__1
       (.I0(\vcount_reg_n_0_[6] ),
        .I1(r_output4_carry__0_i_9_n_0),
        .I2(\hcount_reg[8]_0 ),
        .I3(\_inferred__0/i__carry__0_0 ),
        .I4(Q[6]),
        .O(\vcount_reg[7]_2 [2]));
  LUT5 #(
    .INIT(32'h09F6F609)) 
    i__carry__0_i_3
       (.I0(\vcount_reg_n_0_[5] ),
        .I1(r_output4_carry__0_i_10_n_0),
        .I2(\hcount_reg[8]_0 ),
        .I3(\_inferred__0/i__carry__0 ),
        .I4(Q[5]),
        .O(\vcount_reg[7]_2 [1]));
  LUT5 #(
    .INIT(32'hFF1F00E0)) 
    i__carry__0_i_3__0
       (.I0(r_output2_i_14_n_0),
        .I1(\hcount_reg_n_0_[9] ),
        .I2(\hcount_reg_n_0_[10] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(\r_output2_inferred__0/i__carry__0 ),
        .O(\hcount_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'h0560050905060560)) 
    i__carry__0_i_4
       (.I0(\r_output2_inferred__0/i__carry__0_0 ),
        .I1(\hcount_reg_n_0_[9] ),
        .I2(\r_output2_inferred__0/i__carry__0_1 ),
        .I3(\hcount_reg[8]_0 ),
        .I4(\pix_r[3]_INST_0_i_15_n_0 ),
        .I5(\hcount_reg_n_0_[8] ),
        .O(\hcount_reg[9]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    i__carry__0_i_4__0
       (.I0(curr_y[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\vcount_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h0000000000070000)) 
    i__carry__1_i_1
       (.I0(\vcount_reg_n_0_[8] ),
        .I1(i__carry__1_i_5_n_0),
        .I2(i__carry__1_i_6_n_0),
        .I3(r_output2_i_12_n_0),
        .I4(\vcount_reg_n_0_[9] ),
        .I5(r_output4_carry__1_i_4_n_0),
        .O(curr_y[7]));
  LUT5 #(
    .INIT(32'h0000A9AA)) 
    i__carry__1_i_2
       (.I0(\vcount_reg_n_0_[8] ),
        .I1(\vcount_reg_n_0_[7] ),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(r_output4_carry__0_i_9_n_0),
        .I4(\hcount_reg[8]_0 ),
        .O(curr_y[6]));
  LUT6 #(
    .INIT(64'hFB04040404FBFBFB)) 
    i__carry__1_i_3
       (.I0(r_output4_carry__1_i_4_n_0),
        .I1(\vcount_reg_n_0_[9] ),
        .I2(\hcount_reg[8]_0 ),
        .I3(\_inferred__0/i__carry__1_0 ),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\vcount_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'hF906060606F9F9F9)) 
    i__carry__1_i_4
       (.I0(\vcount_reg_n_0_[8] ),
        .I1(i__carry__1_i_8_n_0),
        .I2(\hcount_reg[8]_0 ),
        .I3(\_inferred__0/i__carry__1 ),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\vcount_reg[9]_0 [0]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    i__carry__1_i_5
       (.I0(\vcount_reg_n_0_[6] ),
        .I1(\vcount_reg_n_0_[7] ),
        .I2(\vcount_reg_n_0_[5] ),
        .I3(\vcount_reg_n_0_[4] ),
        .I4(\vcount_reg_n_0_[3] ),
        .I5(r_output4_carry_i_11_n_0),
        .O(i__carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000000045FF)) 
    i__carry__1_i_6
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(r_output3_carry_i_9_n_0),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount_reg_n_0_[8] ),
        .I4(\hcount_reg_n_0_[9] ),
        .I5(\hcount_reg_n_0_[10] ),
        .O(i__carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    i__carry__1_i_8
       (.I0(r_output4_carry__0_i_9_n_0),
        .I1(\vcount_reg_n_0_[6] ),
        .I2(\vcount_reg_n_0_[7] ),
        .O(i__carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h00004144000047D4)) 
    i__carry_i_1
       (.I0(Q[7]),
        .I1(\vcount_reg_n_0_[7] ),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(r_output4_carry__0_i_9_n_0),
        .I4(\hcount_reg[8]_0 ),
        .I5(Q[6]),
        .O(\blkpos_y_reg[7] [3]));
  LUT6 #(
    .INIT(64'h0000A955FFFF56AA)) 
    i__carry_i_13
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg_n_0_[6] ),
        .I4(\hcount_reg[8]_0 ),
        .I5(i__carry_i_5__0_0),
        .O(i__carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFBEFF18FF9A0000)) 
    i__carry_i_1__0
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(r_output3_carry_i_9_n_0),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(i__carry_i_5__0_0),
        .I5(\r_output2_inferred__0/i__carry_0 ),
        .O(\hcount_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hF40000FEFEF6F6F4)) 
    i__carry_i_2
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg[8]_0 ),
        .I3(blkpos_x[4]),
        .I4(\r_output2_inferred__0/i__carry ),
        .I5(blkpos_x[5]),
        .O(\hcount_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h0000141100007417)) 
    i__carry_i_2__0
       (.I0(Q[5]),
        .I1(\vcount_reg_n_0_[5] ),
        .I2(r_output4_carry__0_i_11_n_0),
        .I3(\vcount_reg_n_0_[4] ),
        .I4(\hcount_reg[8]_0 ),
        .I5(Q[4]),
        .O(\blkpos_y_reg[7] [2]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__1
       (.I0(\vcount_reg_n_0_[0] ),
        .I1(\hcount_reg[8]_0 ),
        .O(\vcount_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000011140000711D)) 
    i__carry_i_3
       (.I0(Q[3]),
        .I1(\vcount_reg_n_0_[3] ),
        .I2(\vcount_reg_n_0_[2] ),
        .I3(\vcount[6]_i_2_n_0 ),
        .I4(\hcount_reg[8]_0 ),
        .I5(Q[2]),
        .O(\blkpos_y_reg[7] [1]));
  LUT6 #(
    .INIT(64'hBABB0BA0BBFB0FB0)) 
    i__carry_i_3__0
       (.I0(\hcount_reg[8]_0 ),
        .I1(\hcount_reg_n_0_[3] ),
        .I2(blkpos_x[2]),
        .I3(\r_output2_inferred__0/i__carry_2 ),
        .I4(blkpos_x[3]),
        .I5(\hcount_reg_n_0_[2] ),
        .O(\hcount_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h0606F906F9F906F9)) 
    i__carry_i_3__1
       (.I0(\vcount_reg_n_0_[3] ),
        .I1(r_output4_carry_i_11_n_0),
        .I2(\hcount_reg[8]_0 ),
        .I3(\_inferred__0/i__carry ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\vcount_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'h01030031)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(\hcount_reg[8]_0 ),
        .I2(\vcount_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(\vcount_reg_n_0_[1] ),
        .O(\blkpos_y_reg[7] [0]));
  LUT5 #(
    .INIT(32'hB0ABB0BF)) 
    i__carry_i_4__0
       (.I0(\hcount_reg[8]_0 ),
        .I1(\hcount_reg_n_0_[1] ),
        .I2(blkpos_x[1]),
        .I3(blkpos_x[0]),
        .I4(\hcount_reg_n_0_[0] ),
        .O(\hcount_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h090909F6F6F6F609)) 
    i__carry_i_4__1
       (.I0(\vcount_reg_n_0_[2] ),
        .I1(\vcount[6]_i_2_n_0 ),
        .I2(\hcount_reg[8]_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\vcount_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h0009060039303039)) 
    i__carry_i_5
       (.I0(\vcount_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\hcount_reg[8]_0 ),
        .I3(r_output4_carry__0_i_9_n_0),
        .I4(\vcount_reg_n_0_[6] ),
        .I5(Q[6]),
        .O(\vcount_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h2882282828282882)) 
    i__carry_i_5__0
       (.I0(i__carry_i_13_n_0),
        .I1(blkpos_x[6]),
        .I2(\r_output2_inferred__0/i__carry_1 ),
        .I3(\hcount_reg[8]_0 ),
        .I4(r_output3_carry_i_9_n_0),
        .I5(\hcount_reg_n_0_[6] ),
        .O(\blkpos_x_reg[6] [3]));
  LUT5 #(
    .INIT(32'h14EBEB14)) 
    i__carry_i_5__1
       (.I0(\hcount_reg[8]_0 ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\vcount_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h0AA00AA006609006)) 
    i__carry_i_6
       (.I0(blkpos_x[5]),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(blkpos_x[4]),
        .I3(\r_output2_inferred__0/i__carry ),
        .I4(\hcount_reg_n_0_[4] ),
        .I5(\hcount_reg[8]_0 ),
        .O(\blkpos_x_reg[6] [2]));
  LUT6 #(
    .INIT(64'h0600000630393630)) 
    i__carry_i_6__0
       (.I0(\vcount_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\hcount_reg[8]_0 ),
        .I3(r_output4_carry__0_i_11_n_0),
        .I4(\vcount_reg_n_0_[4] ),
        .I5(Q[4]),
        .O(\vcount_reg[7]_1 [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    i__carry_i_6__1
       (.I0(\hcount_reg[8]_0 ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(Q[0]),
        .O(\vcount_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h0600000930363630)) 
    i__carry_i_7
       (.I0(\vcount_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\hcount_reg[8]_0 ),
        .I3(\vcount[6]_i_2_n_0 ),
        .I4(\vcount_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(\vcount_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h5005500506909009)) 
    i__carry_i_7__0
       (.I0(blkpos_x[3]),
        .I1(\hcount_reg_n_0_[3] ),
        .I2(blkpos_x[2]),
        .I3(\r_output2_inferred__0/i__carry_2 ),
        .I4(\hcount_reg_n_0_[2] ),
        .I5(\hcount_reg[8]_0 ),
        .O(\blkpos_x_reg[6] [1]));
  LUT5 #(
    .INIT(32'h03030690)) 
    i__carry_i_8
       (.I0(\vcount_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\vcount_reg_n_0_[0] ),
        .I4(\hcount_reg[8]_0 ),
        .O(\vcount_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'h0C0C4224)) 
    i__carry_i_8__0
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(blkpos_x[0]),
        .I2(blkpos_x[1]),
        .I3(\hcount_reg_n_0_[1] ),
        .I4(\hcount_reg[8]_0 ),
        .O(\blkpos_x_reg[6] [0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_b[0]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(col_sw[0]),
        .I2(\pix_b[0] ),
        .I3(CO),
        .I4(\pix_b[0]_0 ),
        .I5(r_output1),
        .O(pix_b[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_b[1]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(col_sw[1]),
        .I2(\pix_b[0] ),
        .I3(CO),
        .I4(\pix_b[0]_0 ),
        .I5(r_output1),
        .O(pix_b[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \pix_g[0]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(\pix_b[0] ),
        .I2(CO),
        .I3(\pix_b[0]_0 ),
        .I4(r_output1),
        .I5(col_sw[2]),
        .O(pix_g[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \pix_g[1]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(\pix_b[0] ),
        .I2(CO),
        .I3(\pix_b[0]_0 ),
        .I4(r_output1),
        .I5(col_sw[3]),
        .O(pix_g[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \pix_g[2]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(\pix_b[0] ),
        .I2(CO),
        .I3(\pix_b[0]_0 ),
        .I4(r_output1),
        .I5(col_sw[4]),
        .O(pix_g[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \pix_g[3]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(\pix_b[0] ),
        .I2(CO),
        .I3(\pix_b[0]_0 ),
        .I4(r_output1),
        .I5(col_sw[5]),
        .O(pix_g[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_r[0]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(col_sw[6]),
        .I2(\pix_b[0] ),
        .I3(CO),
        .I4(\pix_b[0]_0 ),
        .I5(r_output1),
        .O(pix_r[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_r[1]_INST_0 
       (.I0(\hcount_reg[10]_0 ),
        .I1(col_sw[7]),
        .I2(\pix_b[0] ),
        .I3(CO),
        .I4(\pix_b[0]_0 ),
        .I5(r_output1),
        .O(pix_r[1]));
  LUT6 #(
    .INIT(64'h000000000000005D)) 
    \pix_r[3]_INST_0_i_1 
       (.I0(curr_x__0),
        .I1(\pix_r[3]_INST_0_i_7_n_0 ),
        .I2(\pix_r[3]_INST_0_i_8_n_0 ),
        .I3(\pix_r[3]_INST_0_i_9_n_0 ),
        .I4(\pix_r[3]_INST_0_i_10_n_0 ),
        .I5(\pix_r[3]_INST_0_i_11_n_0 ),
        .O(\hcount_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF08)) 
    \pix_r[3]_INST_0_i_10 
       (.I0(\vcount_reg_n_0_[4] ),
        .I1(r_output4_carry__0_i_11_n_0),
        .I2(\hcount_reg[8]_0 ),
        .I3(\pix_r[3]_INST_0_i_21_n_0 ),
        .I4(\pix_r[3]_INST_0_i_20_n_0 ),
        .I5(\pix_r[3]_INST_0_i_23_n_0 ),
        .O(\pix_r[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F4F0)) 
    \pix_r[3]_INST_0_i_11 
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg[8]_0 ),
        .I3(\hcount_reg_n_0_[6] ),
        .I4(\pix_r[3]_INST_0_i_24_n_0 ),
        .I5(\pix_r[3]_INST_0_i_8_n_0 ),
        .O(\pix_r[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pix_r[3]_INST_0_i_14 
       (.I0(\vcount_reg_n_0_[8] ),
        .I1(\vcount_reg_n_0_[5] ),
        .I2(\vcount_reg_n_0_[9] ),
        .I3(\vcount_reg_n_0_[7] ),
        .I4(\vcount_reg_n_0_[6] ),
        .I5(r_output4_carry__0_i_10_n_0),
        .O(\pix_r[3]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \pix_r[3]_INST_0_i_15 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg_n_0_[6] ),
        .O(\pix_r[3]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \pix_r[3]_INST_0_i_16 
       (.I0(\pix_r[3]_INST_0_i_31_n_0 ),
        .I1(\vcount_reg_n_0_[7] ),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(\vcount_reg_n_0_[8] ),
        .I4(\vcount_reg_n_0_[9] ),
        .O(\pix_r[3]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pix_r[3]_INST_0_i_17 
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(\hcount_reg_n_0_[1] ),
        .O(\pix_r[3]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pix_r[3]_INST_0_i_18 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[5] ),
        .O(\pix_r[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFFFFFFFFFAB)) 
    \pix_r[3]_INST_0_i_19 
       (.I0(\pix_r[3]_INST_0_i_16_n_0 ),
        .I1(r_output2_i_11_n_0),
        .I2(r_output2_i_14_n_0),
        .I3(r_output2_i_12_n_0),
        .I4(r_output3_carry_i_9_n_0),
        .I5(\hcount_reg_n_0_[6] ),
        .O(\pix_r[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF0FFFF)) 
    \pix_r[3]_INST_0_i_20 
       (.I0(\vcount_reg_n_0_[9] ),
        .I1(i__carry__1_i_5_n_0),
        .I2(i__carry__1_i_6_n_0),
        .I3(r_output2_i_12_n_0),
        .I4(i__carry__1_i_8_n_0),
        .I5(\vcount_reg_n_0_[8] ),
        .O(\pix_r[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111001)) 
    \pix_r[3]_INST_0_i_21 
       (.I0(r_output4_carry_i_9_n_0),
        .I1(r_output2_i_12_n_0),
        .I2(\vcount_reg_n_0_[5] ),
        .I3(r_output4_carry__0_i_10_n_0),
        .I4(\vcount_reg_n_0_[6] ),
        .I5(\vcount_reg_n_0_[7] ),
        .O(\pix_r[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000540000002A)) 
    \pix_r[3]_INST_0_i_22 
       (.I0(\vcount_reg_n_0_[3] ),
        .I1(\vcount_reg_n_0_[1] ),
        .I2(\vcount_reg_n_0_[0] ),
        .I3(r_output4_carry_i_9_n_0),
        .I4(r_output2_i_12_n_0),
        .I5(\vcount_reg_n_0_[2] ),
        .O(\pix_r[3]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55555565)) 
    \pix_r[3]_INST_0_i_23 
       (.I0(\vcount_reg_n_0_[9] ),
        .I1(\vcount_reg_n_0_[8] ),
        .I2(r_output4_carry__0_i_9_n_0),
        .I3(\vcount_reg_n_0_[6] ),
        .I4(\vcount_reg_n_0_[7] ),
        .O(\pix_r[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0004000F000F000F)) 
    \pix_r[3]_INST_0_i_24 
       (.I0(\pix_r[3]_INST_0_i_32_n_0 ),
        .I1(\hcount_reg_n_0_[3] ),
        .I2(r_output4_carry_i_9_n_0),
        .I3(r_output2_i_12_n_0),
        .I4(\pix_r[3]_INST_0_i_33_n_0 ),
        .I5(\pix_r[3]_INST_0_i_34_n_0 ),
        .O(\pix_r[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hF800000000000000)) 
    \pix_r[3]_INST_0_i_31 
       (.I0(\vcount_reg_n_0_[0] ),
        .I1(\vcount_reg_n_0_[1] ),
        .I2(\vcount_reg_n_0_[2] ),
        .I3(\vcount_reg_n_0_[3] ),
        .I4(\vcount_reg_n_0_[4] ),
        .I5(\vcount_reg_n_0_[5] ),
        .O(\pix_r[3]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pix_r[3]_INST_0_i_32 
       (.I0(\hcount_reg_n_0_[1] ),
        .I1(\hcount_reg_n_0_[2] ),
        .O(\pix_r[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000055F7FFFFFFFF)) 
    \pix_r[3]_INST_0_i_33 
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[6] ),
        .I2(r_output3_carry_i_9_n_0),
        .I3(\hcount_reg_n_0_[7] ),
        .I4(\hcount_reg_n_0_[9] ),
        .I5(\hcount_reg_n_0_[10] ),
        .O(\pix_r[3]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \pix_r[3]_INST_0_i_34 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg_n_0_[6] ),
        .O(\pix_r[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBAAAAEF)) 
    \pix_r[3]_INST_0_i_5 
       (.I0(\pix_r[3]_INST_0_i_14_n_0 ),
        .I1(\pix_r[3]_INST_0_i_15_n_0 ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\hcount_reg_n_0_[9] ),
        .I4(\hcount_reg_n_0_[10] ),
        .I5(\pix_r[3]_INST_0_i_16_n_0 ),
        .O(\hcount_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000001010000000)) 
    \pix_r[3]_INST_0_i_6 
       (.I0(\pix_r[3]_INST_0_i_16_n_0 ),
        .I1(\pix_r[3]_INST_0_i_14_n_0 ),
        .I2(\hcount_reg_n_0_[10] ),
        .I3(\hcount_reg_n_0_[9] ),
        .I4(\pix_r[3]_INST_0_i_15_n_0 ),
        .I5(\hcount_reg_n_0_[8] ),
        .O(curr_x__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDCDD)) 
    \pix_r[3]_INST_0_i_7 
       (.I0(\hcount_reg_n_0_[3] ),
        .I1(\hcount_reg[8]_0 ),
        .I2(\pix_r[3]_INST_0_i_17_n_0 ),
        .I3(\hcount_reg_n_0_[2] ),
        .I4(\pix_r[3]_INST_0_i_18_n_0 ),
        .I5(\pix_r[3]_INST_0_i_19_n_0 ),
        .O(\pix_r[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004500A2)) 
    \pix_r[3]_INST_0_i_8 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\pix_r[3]_INST_0_i_15_n_0 ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\pix_r[3]_INST_0_i_14_n_0 ),
        .I4(\hcount_reg_n_0_[10] ),
        .I5(\pix_r[3]_INST_0_i_16_n_0 ),
        .O(\pix_r[3]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \pix_r[3]_INST_0_i_9 
       (.I0(curr_y[7]),
        .I1(curr_y[2]),
        .I2(\pix_r[3]_INST_0_i_20_n_0 ),
        .I3(\pix_r[3]_INST_0_i_21_n_0 ),
        .I4(\pix_r[3]_INST_0_i_22_n_0 ),
        .O(\pix_r[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000010004040004)) 
    r_output2_i_1
       (.I0(\pix_r[3]_INST_0_i_16_n_0 ),
        .I1(\hcount_reg_n_0_[10] ),
        .I2(\pix_r[3]_INST_0_i_14_n_0 ),
        .I3(\hcount_reg_n_0_[8] ),
        .I4(\pix_r[3]_INST_0_i_15_n_0 ),
        .I5(\hcount_reg_n_0_[9] ),
        .O(C[9]));
  LUT2 #(
    .INIT(4'h2)) 
    r_output2_i_10
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(\hcount_reg[8]_0 ),
        .O(C[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_output2_i_11
       (.I0(\hcount_reg_n_0_[10] ),
        .I1(\hcount_reg_n_0_[9] ),
        .O(r_output2_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF1F111111111111)) 
    r_output2_i_12
       (.I0(r_output4_carry__0_i_10_n_0),
        .I1(vsync_INST_0_i_1_n_0),
        .I2(\pix_r[3]_INST_0_i_15_n_0 ),
        .I3(\hcount_reg_n_0_[8] ),
        .I4(\hcount_reg_n_0_[10] ),
        .I5(\hcount_reg_n_0_[9] ),
        .O(r_output2_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    r_output2_i_13
       (.I0(\hcount_reg_n_0_[6] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[5] ),
        .O(r_output2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    r_output2_i_14
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[6] ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg_n_0_[5] ),
        .I4(\hcount_reg_n_0_[7] ),
        .O(r_output2_i_14_n_0));
  LUT6 #(
    .INIT(64'h0014000000000014)) 
    r_output2_i_2
       (.I0(\pix_r[3]_INST_0_i_16_n_0 ),
        .I1(\hcount_reg_n_0_[10] ),
        .I2(\hcount_reg_n_0_[9] ),
        .I3(\pix_r[3]_INST_0_i_14_n_0 ),
        .I4(\pix_r[3]_INST_0_i_15_n_0 ),
        .I5(\hcount_reg_n_0_[8] ),
        .O(C[8]));
  LUT6 #(
    .INIT(64'h0054000000000044)) 
    r_output2_i_3
       (.I0(\pix_r[3]_INST_0_i_16_n_0 ),
        .I1(r_output2_i_11_n_0),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(r_output2_i_12_n_0),
        .I4(r_output2_i_13_n_0),
        .I5(\hcount_reg_n_0_[7] ),
        .O(C[7]));
  LUT4 #(
    .INIT(16'h0056)) 
    r_output2_i_4
       (.I0(\hcount_reg_n_0_[6] ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[5] ),
        .I3(\hcount_reg[8]_0 ),
        .O(C[6]));
  LUT3 #(
    .INIT(8'h41)) 
    r_output2_i_5
       (.I0(\hcount_reg[8]_0 ),
        .I1(\hcount_reg_n_0_[4] ),
        .I2(\hcount_reg_n_0_[5] ),
        .O(C[5]));
  LUT2 #(
    .INIT(4'h1)) 
    r_output2_i_6
       (.I0(\hcount_reg_n_0_[4] ),
        .I1(\hcount_reg[8]_0 ),
        .O(C[4]));
  LUT6 #(
    .INIT(64'h0000000022222220)) 
    r_output2_i_7
       (.I0(\hcount_reg_n_0_[3] ),
        .I1(\pix_r[3]_INST_0_i_16_n_0 ),
        .I2(\hcount_reg_n_0_[10] ),
        .I3(\hcount_reg_n_0_[9] ),
        .I4(r_output2_i_14_n_0),
        .I5(r_output2_i_12_n_0),
        .O(C[3]));
  LUT2 #(
    .INIT(4'h2)) 
    r_output2_i_8
       (.I0(\hcount_reg_n_0_[2] ),
        .I1(\hcount_reg[8]_0 ),
        .O(C[2]));
  LUT2 #(
    .INIT(4'h2)) 
    r_output2_i_9
       (.I0(\hcount_reg_n_0_[1] ),
        .I1(\hcount_reg[8]_0 ),
        .O(C[1]));
  LUT5 #(
    .INIT(32'h000000E0)) 
    r_output3_carry__0_i_1
       (.I0(r_output2_i_14_n_0),
        .I1(\hcount_reg_n_0_[9] ),
        .I2(\hcount_reg_n_0_[10] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(blkpos_x[10]),
        .O(\hcount_reg[9]_2 [1]));
  LUT6 #(
    .INIT(64'h0000141100007417)) 
    r_output3_carry__0_i_2
       (.I0(blkpos_x[9]),
        .I1(\hcount_reg_n_0_[9] ),
        .I2(\pix_r[3]_INST_0_i_15_n_0 ),
        .I3(\hcount_reg_n_0_[8] ),
        .I4(\hcount_reg[8]_0 ),
        .I5(blkpos_x[8]),
        .O(\hcount_reg[9]_2 [0]));
  LUT5 #(
    .INIT(32'h5555A955)) 
    r_output3_carry__0_i_3
       (.I0(blkpos_x[10]),
        .I1(r_output2_i_14_n_0),
        .I2(\hcount_reg_n_0_[9] ),
        .I3(\hcount_reg_n_0_[10] ),
        .I4(\hcount_reg[8]_0 ),
        .O(\blkpos_x_reg[10] [1]));
  LUT6 #(
    .INIT(64'h0600000630393630)) 
    r_output3_carry__0_i_4
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(blkpos_x[9]),
        .I2(\hcount_reg[8]_0 ),
        .I3(\pix_r[3]_INST_0_i_15_n_0 ),
        .I4(\hcount_reg_n_0_[8] ),
        .I5(blkpos_x[8]),
        .O(\blkpos_x_reg[10] [0]));
  LUT6 #(
    .INIT(64'h0000141100007417)) 
    r_output3_carry_i_1
       (.I0(blkpos_x[7]),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(r_output3_carry_i_9_n_0),
        .I3(\hcount_reg_n_0_[6] ),
        .I4(\hcount_reg[8]_0 ),
        .I5(blkpos_x[6]),
        .O(\blkpos_x_reg[7] [3]));
  LUT5 #(
    .INIT(32'h00410047)) 
    r_output3_carry_i_2
       (.I0(blkpos_x[5]),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(blkpos_x[4]),
        .O(\blkpos_x_reg[7] [2]));
  LUT5 #(
    .INIT(32'h10103110)) 
    r_output3_carry_i_3
       (.I0(blkpos_x[3]),
        .I1(\hcount_reg[8]_0 ),
        .I2(\hcount_reg_n_0_[3] ),
        .I3(\hcount_reg_n_0_[2] ),
        .I4(blkpos_x[2]),
        .O(\blkpos_x_reg[7] [1]));
  LUT5 #(
    .INIT(32'h10103110)) 
    r_output3_carry_i_4
       (.I0(blkpos_x[1]),
        .I1(\hcount_reg[8]_0 ),
        .I2(\hcount_reg_n_0_[1] ),
        .I3(\hcount_reg_n_0_[0] ),
        .I4(blkpos_x[0]),
        .O(\blkpos_x_reg[7] [0]));
  LUT6 #(
    .INIT(64'h0600000630393630)) 
    r_output3_carry_i_5
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(blkpos_x[7]),
        .I2(\hcount_reg[8]_0 ),
        .I3(r_output3_carry_i_9_n_0),
        .I4(\hcount_reg_n_0_[6] ),
        .I5(blkpos_x[6]),
        .O(\hcount_reg[7]_1 [3]));
  LUT5 #(
    .INIT(32'h00063390)) 
    r_output3_carry_i_6
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(blkpos_x[5]),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(blkpos_x[4]),
        .O(\hcount_reg[7]_1 [2]));
  LUT5 #(
    .INIT(32'h00903309)) 
    r_output3_carry_i_7
       (.I0(\hcount_reg_n_0_[3] ),
        .I1(blkpos_x[3]),
        .I2(\hcount_reg_n_0_[2] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(blkpos_x[2]),
        .O(\hcount_reg[7]_1 [1]));
  LUT5 #(
    .INIT(32'h00903309)) 
    r_output3_carry_i_8
       (.I0(\hcount_reg_n_0_[1] ),
        .I1(blkpos_x[1]),
        .I2(\hcount_reg_n_0_[0] ),
        .I3(\hcount_reg[8]_0 ),
        .I4(blkpos_x[0]),
        .O(\hcount_reg[7]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    r_output3_carry_i_9
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(\hcount_reg_n_0_[4] ),
        .O(r_output3_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h11010010)) 
    r_output4_carry__0_i_1
       (.I0(r_output4_carry_i_9_n_0),
        .I1(r_output2_i_12_n_0),
        .I2(r_output4_carry__0_i_9_n_0),
        .I3(\vcount_reg_n_0_[6] ),
        .I4(\vcount_reg_n_0_[7] ),
        .O(curr_y[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h88888000)) 
    r_output4_carry__0_i_10
       (.I0(\vcount_reg_n_0_[4] ),
        .I1(\vcount_reg_n_0_[3] ),
        .I2(\vcount_reg_n_0_[0] ),
        .I3(\vcount_reg_n_0_[1] ),
        .I4(\vcount_reg_n_0_[2] ),
        .O(r_output4_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    r_output4_carry__0_i_11
       (.I0(\vcount_reg_n_0_[2] ),
        .I1(\vcount_reg_n_0_[1] ),
        .I2(\vcount_reg_n_0_[0] ),
        .I3(\vcount_reg_n_0_[3] ),
        .O(r_output4_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0505040000000004)) 
    r_output4_carry__0_i_2
       (.I0(r_output4_carry_i_9_n_0),
        .I1(vsync_INST_0_i_1_n_0),
        .I2(r_output4_carry_i_10_n_0),
        .I3(\vcount_reg_n_0_[5] ),
        .I4(r_output4_carry__0_i_10_n_0),
        .I5(\vcount_reg_n_0_[6] ),
        .O(curr_y[4]));
  LUT5 #(
    .INIT(32'h05000004)) 
    r_output4_carry__0_i_3
       (.I0(r_output4_carry_i_9_n_0),
        .I1(vsync_INST_0_i_1_n_0),
        .I2(r_output4_carry_i_10_n_0),
        .I3(r_output4_carry__0_i_10_n_0),
        .I4(\vcount_reg_n_0_[5] ),
        .O(curr_y[3]));
  LUT5 #(
    .INIT(32'h04000004)) 
    r_output4_carry__0_i_4
       (.I0(r_output4_carry_i_9_n_0),
        .I1(vsync_INST_0_i_1_n_0),
        .I2(r_output4_carry_i_10_n_0),
        .I3(r_output4_carry__0_i_11_n_0),
        .I4(\vcount_reg_n_0_[4] ),
        .O(curr_y[2]));
  LUT5 #(
    .INIT(32'h009AFF65)) 
    r_output4_carry__0_i_5
       (.I0(\vcount_reg_n_0_[7] ),
        .I1(\vcount_reg_n_0_[6] ),
        .I2(r_output4_carry__0_i_9_n_0),
        .I3(\hcount_reg[8]_0 ),
        .I4(Q[7]),
        .O(\vcount_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h14EB)) 
    r_output4_carry__0_i_6
       (.I0(\hcount_reg[8]_0 ),
        .I1(r_output4_carry__0_i_9_n_0),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(Q[6]),
        .O(\vcount_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h09F6)) 
    r_output4_carry__0_i_7
       (.I0(\vcount_reg_n_0_[5] ),
        .I1(r_output4_carry__0_i_10_n_0),
        .I2(\hcount_reg[8]_0 ),
        .I3(Q[5]),
        .O(\vcount_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h01555400FEAAABFF)) 
    r_output4_carry__0_i_8
       (.I0(\hcount_reg[8]_0 ),
        .I1(\vcount_reg_n_0_[2] ),
        .I2(\vcount[6]_i_2_n_0 ),
        .I3(\vcount_reg_n_0_[3] ),
        .I4(\vcount_reg_n_0_[4] ),
        .I5(Q[4]),
        .O(\vcount_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h0111555555555555)) 
    r_output4_carry__0_i_9
       (.I0(\vcount_reg_n_0_[5] ),
        .I1(\vcount_reg_n_0_[2] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(\vcount_reg_n_0_[0] ),
        .I4(\vcount_reg_n_0_[3] ),
        .I5(\vcount_reg_n_0_[4] ),
        .O(r_output4_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h5565)) 
    r_output4_carry__1_i_2
       (.I0(Q[9]),
        .I1(r_output4_carry__1_i_4_n_0),
        .I2(\vcount_reg_n_0_[9] ),
        .I3(\hcount_reg[8]_0 ),
        .O(\blkpos_y_reg[9] [1]));
  LUT6 #(
    .INIT(64'h55510004AAAEFFFB)) 
    r_output4_carry__1_i_3
       (.I0(\hcount_reg[8]_0 ),
        .I1(r_output4_carry__0_i_9_n_0),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(\vcount_reg_n_0_[7] ),
        .I4(\vcount_reg_n_0_[8] ),
        .I5(Q[8]),
        .O(\blkpos_y_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    r_output4_carry__1_i_4
       (.I0(\vcount_reg_n_0_[7] ),
        .I1(\vcount_reg_n_0_[6] ),
        .I2(r_output4_carry__0_i_9_n_0),
        .I3(\vcount_reg_n_0_[8] ),
        .O(r_output4_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h00040400)) 
    r_output4_carry_i_1
       (.I0(r_output4_carry_i_9_n_0),
        .I1(vsync_INST_0_i_1_n_0),
        .I2(r_output4_carry_i_10_n_0),
        .I3(r_output4_carry_i_11_n_0),
        .I4(\vcount_reg_n_0_[3] ),
        .O(curr_y[1]));
  LUT6 #(
    .INIT(64'h8880888888808880)) 
    r_output4_carry_i_10
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[10] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\hcount_reg_n_0_[7] ),
        .I4(r_output3_carry_i_9_n_0),
        .I5(\hcount_reg_n_0_[6] ),
        .O(r_output4_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    r_output4_carry_i_11
       (.I0(\vcount_reg_n_0_[2] ),
        .I1(\vcount_reg_n_0_[1] ),
        .I2(\vcount_reg_n_0_[0] ),
        .O(r_output4_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_output4_carry_i_12
       (.I0(\vcount_reg_n_0_[7] ),
        .I1(\vcount_reg_n_0_[6] ),
        .O(r_output4_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000006060600)) 
    r_output4_carry_i_3
       (.I0(\vcount_reg_n_0_[1] ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\pix_r[3]_INST_0_i_16_n_0 ),
        .I3(r_output2_i_11_n_0),
        .I4(r_output2_i_14_n_0),
        .I5(r_output2_i_12_n_0),
        .O(curr_y[0]));
  LUT2 #(
    .INIT(4'h1)) 
    r_output4_carry_i_4
       (.I0(\vcount_reg_n_0_[0] ),
        .I1(\hcount_reg[8]_0 ),
        .O(DI));
  LUT6 #(
    .INIT(64'h00005666FFFFA999)) 
    r_output4_carry_i_5
       (.I0(\vcount_reg_n_0_[3] ),
        .I1(\vcount_reg_n_0_[2] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(\vcount_reg_n_0_[0] ),
        .I4(\hcount_reg[8]_0 ),
        .I5(Q[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h4015BFEA)) 
    r_output4_carry_i_6
       (.I0(\hcount_reg[8]_0 ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(\vcount_reg_n_0_[2] ),
        .I4(Q[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h14EB)) 
    r_output4_carry_i_7
       (.I0(\hcount_reg[8]_0 ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h56)) 
    r_output4_carry_i_8
       (.I0(Q[0]),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\hcount_reg[8]_0 ),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h888088808880FFFF)) 
    r_output4_carry_i_9
       (.I0(\vcount_reg_n_0_[9] ),
        .I1(\vcount_reg_n_0_[8] ),
        .I2(r_output4_carry_i_12_n_0),
        .I3(\pix_r[3]_INST_0_i_31_n_0 ),
        .I4(r_output2_i_11_n_0),
        .I5(r_output2_i_14_n_0),
        .O(r_output4_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \vcount[0]_i_1 
       (.I0(\vcount_reg_n_0_[0] ),
        .O(\vcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount[1]_i_1 
       (.I0(\vcount_reg_n_0_[0] ),
        .I1(\vcount_reg_n_0_[1] ),
        .O(\vcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \vcount[2]_i_1 
       (.I0(\vcount_reg_n_0_[0] ),
        .I1(\vcount_reg_n_0_[1] ),
        .I2(\vcount_reg_n_0_[2] ),
        .I3(\vcount[7]_i_2_n_0 ),
        .O(\vcount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vcount[3]_i_1 
       (.I0(\vcount_reg_n_0_[3] ),
        .I1(\vcount_reg_n_0_[2] ),
        .I2(\vcount_reg_n_0_[0] ),
        .I3(\vcount_reg_n_0_[1] ),
        .O(\vcount[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcount[4]_i_1 
       (.I0(\vcount_reg_n_0_[4] ),
        .I1(\vcount_reg_n_0_[3] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(\vcount_reg_n_0_[0] ),
        .I4(\vcount_reg_n_0_[2] ),
        .O(\vcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444CCCC4444CCCC)) 
    \vcount[5]_i_1 
       (.I0(\vcount[7]_i_2_n_0 ),
        .I1(\vcount_reg_n_0_[5] ),
        .I2(\vcount_reg_n_0_[4] ),
        .I3(\vcount_reg_n_0_[3] ),
        .I4(\vcount[6]_i_2_n_0 ),
        .I5(\vcount_reg_n_0_[2] ),
        .O(\vcount[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcount[6]_i_1 
       (.I0(\vcount_reg_n_0_[6] ),
        .I1(\vcount_reg_n_0_[5] ),
        .I2(\vcount_reg_n_0_[4] ),
        .I3(\vcount_reg_n_0_[3] ),
        .I4(\vcount[6]_i_2_n_0 ),
        .I5(\vcount_reg_n_0_[2] ),
        .O(\vcount[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vcount[6]_i_2 
       (.I0(\vcount_reg_n_0_[0] ),
        .I1(\vcount_reg_n_0_[1] ),
        .O(\vcount[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h007F7F007F007F00)) 
    \vcount[7]_i_1 
       (.I0(\vcount_reg_n_0_[1] ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\vcount[7]_i_2_n_0 ),
        .I3(\vcount_reg_n_0_[7] ),
        .I4(\vcount[9]_i_3_n_0 ),
        .I5(\vcount_reg_n_0_[6] ),
        .O(\vcount[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \vcount[7]_i_2 
       (.I0(\vcount[9]_i_5_n_0 ),
        .I1(\vcount_reg_n_0_[6] ),
        .I2(\vcount_reg_n_0_[7] ),
        .I3(\vcount_reg_n_0_[9] ),
        .I4(\vcount_reg_n_0_[8] ),
        .O(\vcount[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0770707070707070)) 
    \vcount[8]_i_1 
       (.I0(\vcount[9]_i_4_n_0 ),
        .I1(\vcount_reg_n_0_[9] ),
        .I2(\vcount_reg_n_0_[8] ),
        .I3(\vcount_reg_n_0_[6] ),
        .I4(\vcount[9]_i_3_n_0 ),
        .I5(\vcount_reg_n_0_[7] ),
        .O(\vcount[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \vcount[9]_i_1 
       (.I0(\hcount[8]_i_2_n_0 ),
        .I1(\hcount_reg_n_0_[9] ),
        .I2(\hcount_reg_n_0_[10] ),
        .I3(\hcount_reg_n_0_[7] ),
        .I4(\hcount_reg_n_0_[8] ),
        .I5(hsync_INST_0_i_1_n_0),
        .O(vcount));
  LUT6 #(
    .INIT(64'h000080007FFF8000)) 
    \vcount[9]_i_2 
       (.I0(\vcount_reg_n_0_[7] ),
        .I1(\vcount[9]_i_3_n_0 ),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(\vcount_reg_n_0_[8] ),
        .I4(\vcount_reg_n_0_[9] ),
        .I5(\vcount[9]_i_4_n_0 ),
        .O(\vcount[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vcount[9]_i_3 
       (.I0(\vcount_reg_n_0_[2] ),
        .I1(\vcount_reg_n_0_[0] ),
        .I2(\vcount_reg_n_0_[1] ),
        .I3(\vcount_reg_n_0_[3] ),
        .I4(\vcount_reg_n_0_[4] ),
        .I5(\vcount_reg_n_0_[5] ),
        .O(\vcount[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \vcount[9]_i_4 
       (.I0(r_output4_carry_i_11_n_0),
        .I1(\vcount_reg_n_0_[7] ),
        .I2(\vcount_reg_n_0_[6] ),
        .I3(\vcount_reg_n_0_[8] ),
        .I4(\vcount_reg_n_0_[1] ),
        .I5(\vcount[9]_i_5_n_0 ),
        .O(\vcount[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \vcount[9]_i_5 
       (.I0(\vcount_reg_n_0_[5] ),
        .I1(\vcount_reg_n_0_[4] ),
        .I2(\vcount_reg_n_0_[3] ),
        .I3(\vcount_reg_n_0_[2] ),
        .O(\vcount[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[0] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[0]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[1] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[1]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[2] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[2]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[3] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[3]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[4] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[4]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[5] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[5]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[6] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[6]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[7] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[7]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[8] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[8]_i_1_n_0 ),
        .Q(\vcount_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \vcount_reg[9] 
       (.C(clk),
        .CE(vcount),
        .D(\vcount[9]_i_2_n_0 ),
        .Q(\vcount_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    vsync_INST_0
       (.I0(vsync_INST_0_i_1_n_0),
        .I1(\vcount_reg_n_0_[3] ),
        .I2(\vcount_reg_n_0_[0] ),
        .I3(\vcount_reg_n_0_[1] ),
        .I4(\vcount_reg_n_0_[2] ),
        .I5(\vcount_reg_n_0_[4] ),
        .O(vsync));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vsync_INST_0_i_1
       (.I0(\vcount_reg_n_0_[6] ),
        .I1(\vcount_reg_n_0_[7] ),
        .I2(\vcount_reg_n_0_[9] ),
        .I3(\vcount_reg_n_0_[5] ),
        .I4(\vcount_reg_n_0_[8] ),
        .O(vsync_INST_0_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
