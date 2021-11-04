-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Nov  4 14:53:29 2021
-- Host        : uzahid-3542 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/uzahid/workspace/billiard_game/vivado/billiard_game/billiard_game.srcs/sources_1/bd/game/ip/game_game_top_0_0/game_game_top_0_0_stub.vhdl
-- Design      : game_game_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity game_game_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 4 downto 0 );
    col_sw : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pix_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC
  );

end game_game_top_0_0;

architecture stub of game_game_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,sw[4:0],col_sw[11:0],pix_r[3:0],pix_g[3:0],pix_b[3:0],hsync,vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "game_top,Vivado 2019.1";
begin
end;
