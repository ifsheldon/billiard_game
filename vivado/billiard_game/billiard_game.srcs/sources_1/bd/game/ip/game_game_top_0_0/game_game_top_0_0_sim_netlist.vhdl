-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Nov  4 14:53:29 2021
-- Host        : uzahid-3542 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/uzahid/workspace/billiard_game/vivado/billiard_game/billiard_game.srcs/sources_1/bd/game/ip/game_game_top_0_0/game_game_top_0_0_sim_netlist.vhdl
-- Design      : game_game_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity game_game_top_0_0_drawcon is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \blkpos_y_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \blkpos_x_reg[6]\ : out STD_LOGIC;
    \blkpos_x_reg[10]\ : out STD_LOGIC;
    \blkpos_x_reg[3]\ : out STD_LOGIC;
    \blkpos_y_reg[6]\ : out STD_LOGIC;
    \blkpos_y_reg[5]\ : out STD_LOGIC;
    \blkpos_y_reg[3]\ : out STD_LOGIC;
    \blkpos_y_reg[1]\ : out STD_LOGIC;
    pix_b : out STD_LOGIC_VECTOR ( 1 downto 0 );
    r_output1 : out STD_LOGIC;
    \_inferred__0/i__carry__1_0\ : out STD_LOGIC;
    pix_r : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \blkpos_x_reg[7]\ : out STD_LOGIC;
    \blkpos_x_reg[9]\ : out STD_LOGIC;
    \blkpos_x_reg[8]\ : out STD_LOGIC;
    \blkpos_x_reg[3]_0\ : out STD_LOGIC;
    \blkpos_x_reg[0]\ : out STD_LOGIC;
    \blkpos_y_reg[3]_0\ : out STD_LOGIC;
    C : in STD_LOGIC_VECTOR ( 9 downto 0 );
    curr_y : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    r_output2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    r_output2_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    blkpos_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \_inferred__0/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pix_r[3]_INST_0_i_3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_output3_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_output3_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pix_b[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \pix_b[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_output2_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_output2_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pix_r[3]_INST_0_i_3_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \pix_r[3]_INST_0_i_3_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_output4_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_output4_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pix_b[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pix_b[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \pix_b[2]\ : in STD_LOGIC;
    col_sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pix_b[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of game_game_top_0_0_drawcon : entity is "drawcon";
end game_game_top_0_0_drawcon;

architecture STRUCTURE of game_game_top_0_0_drawcon is
  signal A : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \^_inferred__0/i__carry__1_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^blkpos_x_reg[3]\ : STD_LOGIC;
  signal \^blkpos_y_reg[1]\ : STD_LOGIC;
  signal \^blkpos_y_reg[5]\ : STD_LOGIC;
  signal \^blkpos_y_reg[8]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^r_output1\ : STD_LOGIC;
  signal \r_output2__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_output2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_output2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_output2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_output2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_output2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_output2_carry__0_n_0\ : STD_LOGIC;
  signal \r_output2_carry__0_n_1\ : STD_LOGIC;
  signal \r_output2_carry__0_n_2\ : STD_LOGIC;
  signal \r_output2_carry__0_n_3\ : STD_LOGIC;
  signal \r_output2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_output2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_output2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_output2_carry__1_n_3\ : STD_LOGIC;
  signal r_output2_carry_i_1_n_0 : STD_LOGIC;
  signal r_output2_carry_i_2_n_0 : STD_LOGIC;
  signal r_output2_carry_i_3_n_0 : STD_LOGIC;
  signal r_output2_carry_i_4_n_0 : STD_LOGIC;
  signal r_output2_carry_n_0 : STD_LOGIC;
  signal r_output2_carry_n_1 : STD_LOGIC;
  signal r_output2_carry_n_2 : STD_LOGIC;
  signal r_output2_carry_n_3 : STD_LOGIC;
  signal \r_output2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \r_output2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \r_output2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r_output2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r_output2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r_output2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal r_output2_n_100 : STD_LOGIC;
  signal r_output2_n_101 : STD_LOGIC;
  signal r_output2_n_102 : STD_LOGIC;
  signal r_output2_n_103 : STD_LOGIC;
  signal r_output2_n_104 : STD_LOGIC;
  signal r_output2_n_105 : STD_LOGIC;
  signal r_output2_n_96 : STD_LOGIC;
  signal r_output2_n_97 : STD_LOGIC;
  signal r_output2_n_98 : STD_LOGIC;
  signal r_output2_n_99 : STD_LOGIC;
  signal \r_output3_carry__0_n_3\ : STD_LOGIC;
  signal r_output3_carry_n_0 : STD_LOGIC;
  signal r_output3_carry_n_1 : STD_LOGIC;
  signal r_output3_carry_n_2 : STD_LOGIC;
  signal r_output3_carry_n_3 : STD_LOGIC;
  signal \r_output4_carry__0_n_0\ : STD_LOGIC;
  signal \r_output4_carry__0_n_1\ : STD_LOGIC;
  signal \r_output4_carry__0_n_2\ : STD_LOGIC;
  signal \r_output4_carry__0_n_3\ : STD_LOGIC;
  signal \r_output4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_output4_carry__1_n_3\ : STD_LOGIC;
  signal r_output4_carry_i_2_n_0 : STD_LOGIC;
  signal r_output4_carry_n_0 : STD_LOGIC;
  signal r_output4_carry_n_1 : STD_LOGIC;
  signal r_output4_carry_n_2 : STD_LOGIC;
  signal r_output4_carry_n_3 : STD_LOGIC;
  signal \r_output4_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r_output4_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r_output4_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r_output4_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_output2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_output2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_output2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_output2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_output2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r_output2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r_output2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_r_output2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_r_output2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_output2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 10 );
  signal NLW_r_output2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_r_output2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_output2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_output2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_output2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_output2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_output3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_output3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_output3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_output4_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_output4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_output4_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_output4_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_output4_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i__carry__0_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i__carry__0_i_7__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__carry_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i__carry_i_7__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__carry_i_9\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of r_output2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_output2_carry__0_i_5\ : label is "soft_lutpair0";
begin
  CO(0) <= \^co\(0);
  \_inferred__0/i__carry__1_0\ <= \^_inferred__0/i__carry__1_0\;
  \blkpos_x_reg[3]\ <= \^blkpos_x_reg[3]\;
  \blkpos_y_reg[1]\ <= \^blkpos_y_reg[1]\;
  \blkpos_y_reg[5]\ <= \^blkpos_y_reg[5]\;
  \blkpos_y_reg[8]\(0) <= \^blkpos_y_reg[8]\(0);
  r_output1 <= \^r_output1\;
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => curr_y(1),
      DI(2) => \i__carry_i_1__1_n_0\,
      DI(1) => curr_y(0),
      DI(0) => \_inferred__0/i__carry__0_0\(0),
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \_inferred__0/i__carry__0_1\(3 downto 0)
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => curr_y(5 downto 2),
      O(3 downto 0) => \NLW__inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \_inferred__0/i__carry__1_1\(3 downto 0)
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => curr_y(7 downto 6),
      O(3 downto 0) => \NLW__inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \pix_r[3]_INST_0_i_3_0\(1 downto 0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5955555555555555"
    )
        port map (
      I0 => blkpos_x(10),
      I1 => blkpos_x(9),
      I2 => \^blkpos_x_reg[3]\,
      I3 => blkpos_x(6),
      I4 => blkpos_x(7),
      I5 => blkpos_x(8),
      O => \blkpos_x_reg[10]\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => \^blkpos_y_reg[1]\,
      I2 => Q(2),
      I3 => Q(4),
      I4 => Q(5),
      I5 => Q(6),
      O => \blkpos_y_reg[3]\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => blkpos_x(9),
      I1 => blkpos_x(8),
      I2 => blkpos_x(7),
      I3 => blkpos_x(6),
      I4 => blkpos_x(5),
      I5 => \r_output2_carry__0_i_5_n_0\,
      O => \blkpos_x_reg[9]\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(3),
      O => \^blkpos_y_reg[5]\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => blkpos_x(8),
      I1 => \r_output2_carry__0_i_5_n_0\,
      I2 => blkpos_x(5),
      I3 => blkpos_x(6),
      I4 => blkpos_x(7),
      O => \blkpos_x_reg[8]\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(4),
      O => \blkpos_y_reg[3]_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(6),
      I1 => \^blkpos_y_reg[5]\,
      I2 => Q(7),
      O => \blkpos_y_reg[6]\
    );
\i__carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => blkpos_x(6),
      I1 => blkpos_x(5),
      I2 => \r_output2_carry__0_i_5_n_0\,
      O => \blkpos_x_reg[6]\
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => blkpos_x(2),
      O => \blkpos_x_reg[3]_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => blkpos_x(0),
      I1 => blkpos_x(1),
      O => \blkpos_x_reg[0]\
    );
\i__carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => blkpos_x(2),
      I4 => blkpos_x(4),
      I5 => blkpos_x(5),
      O => \^blkpos_x_reg[3]\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \^blkpos_y_reg[1]\
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => blkpos_x(7),
      I1 => \r_output2_carry__0_i_5_n_0\,
      I2 => blkpos_x(5),
      I3 => blkpos_x(6),
      O => \blkpos_x_reg[7]\
    );
\pix_b[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \pix_b[2]\,
      I1 => \^r_output1\,
      I2 => \^_inferred__0/i__carry__1_0\,
      I3 => \pix_r[3]_INST_0_i_4_n_0\,
      I4 => col_sw(0),
      I5 => \pix_b[2]_0\,
      O => pix_b(0)
    );
\pix_b[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \pix_b[2]\,
      I1 => \^r_output1\,
      I2 => \^_inferred__0/i__carry__1_0\,
      I3 => \pix_r[3]_INST_0_i_4_n_0\,
      I4 => col_sw(1),
      I5 => \pix_b[2]_0\,
      O => pix_b(1)
    );
\pix_r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \pix_b[2]\,
      I1 => \^r_output1\,
      I2 => \^_inferred__0/i__carry__1_0\,
      I3 => \pix_r[3]_INST_0_i_4_n_0\,
      I4 => col_sw(2),
      I5 => \pix_b[2]_0\,
      O => pix_r(0)
    );
\pix_r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \pix_b[2]\,
      I1 => \^r_output1\,
      I2 => \^_inferred__0/i__carry__1_0\,
      I3 => \pix_r[3]_INST_0_i_4_n_0\,
      I4 => col_sw(3),
      I5 => \pix_b[2]_0\,
      O => pix_r(1)
    );
\pix_r[3]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_25_n_0\,
      I1 => \r_output2__0\(8),
      I2 => \pix_r[3]_INST_0_i_26_n_0\,
      I3 => \r_output2__0\(9),
      I4 => \pix_r[3]_INST_0_i_27_n_0\,
      O => \pix_r[3]_INST_0_i_12_n_0\
    );
\pix_r[3]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAFCFC0"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_28_n_0\,
      I1 => \pix_r[3]_INST_0_i_29_n_0\,
      I2 => \r_output2__0\(8),
      I3 => \pix_r[3]_INST_0_i_30_n_0\,
      I4 => \r_output2__0\(9),
      O => \pix_r[3]_INST_0_i_13_n_0\
    );
\pix_r[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_12_n_0\,
      I1 => \pix_r[3]_INST_0_i_13_n_0\,
      O => \^r_output1\,
      S => \r_output2__0\(4)
    );
\pix_r[3]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_35_n_0\,
      I1 => \pix_r[3]_INST_0_i_36_n_0\,
      O => \pix_r[3]_INST_0_i_25_n_0\,
      S => \r_output2__0\(7)
    );
\pix_r[3]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_37_n_0\,
      I1 => \pix_r[3]_INST_0_i_38_n_0\,
      O => \pix_r[3]_INST_0_i_26_n_0\,
      S => \r_output2__0\(7)
    );
\pix_r[3]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_39_n_0\,
      I1 => \pix_r[3]_INST_0_i_40_n_0\,
      O => \pix_r[3]_INST_0_i_27_n_0\,
      S => \r_output2__0\(7)
    );
\pix_r[3]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_41_n_0\,
      I1 => \pix_r[3]_INST_0_i_42_n_0\,
      O => \pix_r[3]_INST_0_i_28_n_0\,
      S => \r_output2__0\(7)
    );
\pix_r[3]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_43_n_0\,
      I1 => \pix_r[3]_INST_0_i_44_n_0\,
      O => \pix_r[3]_INST_0_i_29_n_0\,
      S => \r_output2__0\(7)
    );
\pix_r[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_output2_inferred__0/i__carry__0_n_2\,
      I1 => \_inferred__0/i__carry__1_n_2\,
      O => \^_inferred__0/i__carry__1_0\
    );
\pix_r[3]_INST_0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pix_r[3]_INST_0_i_45_n_0\,
      I1 => \pix_r[3]_INST_0_i_46_n_0\,
      O => \pix_r[3]_INST_0_i_30_n_0\,
      S => \r_output2__0\(7)
    );
\pix_r[3]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C8C0C0C8CBC3C3"
    )
        port map (
      I0 => \r_output2__0\(0),
      I1 => \r_output2__0\(3),
      I2 => \r_output2__0\(2),
      I3 => \r_output2__0\(5),
      I4 => \r_output2__0\(1),
      I5 => \r_output2__0\(6),
      O => \pix_r[3]_INST_0_i_35_n_0\
    );
\pix_r[3]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000444000000000"
    )
        port map (
      I0 => \r_output2__0\(6),
      I1 => \r_output2__0\(2),
      I2 => \r_output2__0\(1),
      I3 => \r_output2__0\(0),
      I4 => \r_output2__0\(5),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_36_n_0\
    );
\pix_r[3]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBBBB777FFFFFFFF"
    )
        port map (
      I0 => \r_output2__0\(1),
      I1 => \r_output2__0\(2),
      I2 => \r_output2__0\(5),
      I3 => \r_output2__0\(0),
      I4 => \r_output2__0\(6),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_37_n_0\
    );
\pix_r[3]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ADB5B5F5F5F5F5DF"
    )
        port map (
      I0 => \r_output2__0\(3),
      I1 => \r_output2__0\(0),
      I2 => \r_output2__0\(2),
      I3 => \r_output2__0\(1),
      I4 => \r_output2__0\(5),
      I5 => \r_output2__0\(6),
      O => \pix_r[3]_INST_0_i_38_n_0\
    );
\pix_r[3]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEEEAAA80A800"
    )
        port map (
      I0 => \r_output2__0\(3),
      I1 => \r_output2__0\(2),
      I2 => \r_output2__0\(1),
      I3 => \r_output2__0\(5),
      I4 => \r_output2__0\(0),
      I5 => \r_output2__0\(6),
      O => \pix_r[3]_INST_0_i_39_n_0\
    );
\pix_r[3]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^blkpos_y_reg[8]\(0),
      O => \pix_r[3]_INST_0_i_4_n_0\
    );
\pix_r[3]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_output2__0\(6),
      I1 => \r_output2__0\(0),
      I2 => \r_output2__0\(1),
      I3 => \r_output2__0\(2),
      I4 => \r_output2__0\(5),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_40_n_0\
    );
\pix_r[3]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557F5FFFFFFFFFFF"
    )
        port map (
      I0 => \r_output2__0\(6),
      I1 => \r_output2__0\(0),
      I2 => \r_output2__0\(5),
      I3 => \r_output2__0\(2),
      I4 => \r_output2__0\(1),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_41_n_0\
    );
\pix_r[3]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000045555"
    )
        port map (
      I0 => \r_output2__0\(6),
      I1 => \r_output2__0\(0),
      I2 => \r_output2__0\(2),
      I3 => \r_output2__0\(1),
      I4 => \r_output2__0\(5),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_42_n_0\
    );
\pix_r[3]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEBFFFEAABFFFD"
    )
        port map (
      I0 => \r_output2__0\(3),
      I1 => \r_output2__0\(6),
      I2 => \r_output2__0\(5),
      I3 => \r_output2__0\(0),
      I4 => \r_output2__0\(2),
      I5 => \r_output2__0\(1),
      O => \pix_r[3]_INST_0_i_43_n_0\
    );
\pix_r[3]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEEEDDD"
    )
        port map (
      I0 => \r_output2__0\(1),
      I1 => \r_output2__0\(2),
      I2 => \r_output2__0\(5),
      I3 => \r_output2__0\(0),
      I4 => \r_output2__0\(6),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_44_n_0\
    );
\pix_r[3]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054D454F4"
    )
        port map (
      I0 => \r_output2__0\(2),
      I1 => \r_output2__0\(5),
      I2 => \r_output2__0\(6),
      I3 => \r_output2__0\(1),
      I4 => \r_output2__0\(0),
      I5 => \r_output2__0\(3),
      O => \pix_r[3]_INST_0_i_45_n_0\
    );
\pix_r[3]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8F555BFD55555"
    )
        port map (
      I0 => \r_output2__0\(3),
      I1 => \r_output2__0\(0),
      I2 => \r_output2__0\(5),
      I3 => \r_output2__0\(6),
      I4 => \r_output2__0\(2),
      I5 => \r_output2__0\(1),
      O => \pix_r[3]_INST_0_i_46_n_0\
    );
r_output2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9 downto 0) => A(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_r_output2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000011111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_r_output2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 10) => B"00000000000000000000000000000000000000",
      C(9 downto 0) => C(9 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_r_output2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_r_output2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_r_output2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_r_output2_OVERFLOW_UNCONNECTED,
      P(47 downto 10) => NLW_r_output2_P_UNCONNECTED(47 downto 10),
      P(9) => r_output2_n_96,
      P(8) => r_output2_n_97,
      P(7) => r_output2_n_98,
      P(6) => r_output2_n_99,
      P(5) => r_output2_n_100,
      P(4) => r_output2_n_101,
      P(3) => r_output2_n_102,
      P(2) => r_output2_n_103,
      P(1) => r_output2_n_104,
      P(0) => r_output2_n_105,
      PATTERNBDETECT => NLW_r_output2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_r_output2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_r_output2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_r_output2_UNDERFLOW_UNCONNECTED
    );
r_output2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_output2_carry_n_0,
      CO(2) => r_output2_carry_n_1,
      CO(1) => r_output2_carry_n_2,
      CO(0) => r_output2_carry_n_3,
      CYINIT => '0',
      DI(3) => r_output2_n_102,
      DI(2) => r_output2_n_103,
      DI(1) => r_output2_n_104,
      DI(0) => blkpos_x(0),
      O(3 downto 0) => \r_output2__0\(3 downto 0),
      S(3) => r_output2_carry_i_1_n_0,
      S(2) => r_output2_carry_i_2_n_0,
      S(1) => r_output2_carry_i_3_n_0,
      S(0) => r_output2_carry_i_4_n_0
    );
\r_output2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_output2_carry_n_0,
      CO(3) => \r_output2_carry__0_n_0\,
      CO(2) => \r_output2_carry__0_n_1\,
      CO(1) => \r_output2_carry__0_n_2\,
      CO(0) => \r_output2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => r_output2_n_98,
      DI(2) => r_output2_n_99,
      DI(1) => r_output2_n_100,
      DI(0) => r_output2_n_101,
      O(3 downto 0) => \r_output2__0\(7 downto 4),
      S(3) => \r_output2_carry__0_i_1_n_0\,
      S(2) => \r_output2_carry__0_i_2_n_0\,
      S(1) => \r_output2_carry__0_i_3_n_0\,
      S(0) => \r_output2_carry__0_i_4_n_0\
    );
\r_output2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9A5565"
    )
        port map (
      I0 => blkpos_x(7),
      I1 => blkpos_x(5),
      I2 => \r_output2_carry__0_i_5_n_0\,
      I3 => blkpos_x(6),
      I4 => r_output2_n_98,
      O => \r_output2_carry__0_i_1_n_0\
    );
\r_output2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => blkpos_x(6),
      I1 => \r_output2_carry__0_i_5_n_0\,
      I2 => blkpos_x(5),
      I3 => r_output2_n_99,
      O => \r_output2_carry__0_i_2_n_0\
    );
\r_output2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => blkpos_x(5),
      I1 => \r_output2_carry__0_i_5_n_0\,
      I2 => r_output2_n_100,
      O => \r_output2_carry__0_i_3_n_0\
    );
\r_output2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555556"
    )
        port map (
      I0 => blkpos_x(4),
      I1 => blkpos_x(3),
      I2 => blkpos_x(0),
      I3 => blkpos_x(1),
      I4 => blkpos_x(2),
      I5 => r_output2_n_101,
      O => \r_output2_carry__0_i_4_n_0\
    );
\r_output2_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => blkpos_x(4),
      I1 => blkpos_x(2),
      I2 => blkpos_x(1),
      I3 => blkpos_x(0),
      I4 => blkpos_x(3),
      O => \r_output2_carry__0_i_5_n_0\
    );
\r_output2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_output2_carry__0_n_0\,
      CO(3 downto 1) => \NLW_r_output2_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_output2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => r_output2_n_97,
      O(3 downto 2) => \NLW_r_output2_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \r_output2__0\(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \r_output2_carry__1_i_1_n_0\,
      S(0) => \r_output2_carry__1_i_2_n_0\
    );
\r_output2_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD00020002FFFD"
    )
        port map (
      I0 => \r_output2_carry__1_i_3_n_0\,
      I1 => blkpos_x(7),
      I2 => blkpos_x(6),
      I3 => blkpos_x(8),
      I4 => blkpos_x(9),
      I5 => r_output2_n_96,
      O => \r_output2_carry__1_i_1_n_0\
    );
\r_output2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA9A55555565"
    )
        port map (
      I0 => blkpos_x(8),
      I1 => blkpos_x(5),
      I2 => \r_output2_carry__0_i_5_n_0\,
      I3 => blkpos_x(7),
      I4 => blkpos_x(6),
      I5 => r_output2_n_97,
      O => \r_output2_carry__1_i_2_n_0\
    );
\r_output2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => blkpos_x(2),
      I4 => blkpos_x(4),
      I5 => blkpos_x(5),
      O => \r_output2_carry__1_i_3_n_0\
    );
r_output2_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => blkpos_x(2),
      I2 => blkpos_x(1),
      I3 => blkpos_x(0),
      I4 => r_output2_n_102,
      O => r_output2_carry_i_1_n_0
    );
r_output2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => blkpos_x(2),
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => r_output2_n_103,
      O => r_output2_carry_i_2_n_0
    );
r_output2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => blkpos_x(1),
      I1 => blkpos_x(0),
      I2 => r_output2_n_104,
      O => r_output2_carry_i_3_n_0
    );
r_output2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blkpos_x(0),
      I1 => r_output2_n_105,
      O => r_output2_carry_i_4_n_0
    );
\r_output2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_output2_inferred__0/i__carry_n_0\,
      CO(2) => \r_output2_inferred__0/i__carry_n_1\,
      CO(1) => \r_output2_inferred__0/i__carry_n_2\,
      CO(0) => \r_output2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \r_output2_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_r_output2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \r_output2_inferred__0/i__carry__0_1\(3 downto 0)
    );
\r_output2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_output2_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_r_output2_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_output2_inferred__0/i__carry__0_n_2\,
      CO(0) => \r_output2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \pix_r[3]_INST_0_i_3_1\(1 downto 0),
      O(3 downto 0) => \NLW_r_output2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \pix_r[3]_INST_0_i_3_2\(1 downto 0)
    );
r_output3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_output3_carry_n_0,
      CO(2) => r_output3_carry_n_1,
      CO(1) => r_output3_carry_n_2,
      CO(0) => r_output3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \r_output3_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_r_output3_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \r_output3_carry__0_1\(3 downto 0)
    );
\r_output3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_output3_carry_n_0,
      CO(3 downto 2) => \NLW_r_output3_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^co\(0),
      CO(0) => \r_output3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \pix_b[0]\(1 downto 0),
      O(3 downto 0) => \NLW_r_output3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \pix_b[0]_0\(1 downto 0)
    );
r_output4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_output4_carry_n_0,
      CO(2) => r_output4_carry_n_1,
      CO(1) => r_output4_carry_n_2,
      CO(0) => r_output4_carry_n_3,
      CYINIT => '1',
      DI(3) => curr_y(1),
      DI(2) => r_output4_carry_i_2_n_0,
      DI(1) => curr_y(0),
      DI(0) => DI(0),
      O(3 downto 0) => A(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\r_output4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_output4_carry_n_0,
      CO(3) => \r_output4_carry__0_n_0\,
      CO(2) => \r_output4_carry__0_n_1\,
      CO(1) => \r_output4_carry__0_n_2\,
      CO(0) => \r_output4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => curr_y(5 downto 2),
      O(3 downto 0) => A(7 downto 4),
      S(3 downto 0) => r_output2_0(3 downto 0)
    );
\r_output4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_output4_carry__0_n_0\,
      CO(3 downto 1) => \NLW_r_output4_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_output4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_output4_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_r_output4_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => A(9 downto 8),
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_output2_1(1 downto 0)
    );
\r_output4_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \r_output4_carry__1_i_1_n_0\
    );
r_output4_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => r_output4_carry_i_2_n_0
    );
\r_output4_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_output4_inferred__0/i__carry_n_0\,
      CO(2) => \r_output4_inferred__0/i__carry_n_1\,
      CO(1) => \r_output4_inferred__0/i__carry_n_2\,
      CO(0) => \r_output4_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \r_output4_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_r_output4_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \r_output4_inferred__0/i__carry__0_1\(3 downto 0)
    );
\r_output4_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_output4_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_r_output4_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^blkpos_y_reg[8]\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pix_b[0]_1\(0),
      O(3 downto 0) => \NLW_r_output4_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pix_b[0]_2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity game_game_top_0_0_vga_out is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hcount_reg[8]_0\ : out STD_LOGIC;
    \vcount_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    C : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \vcount_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \vcount_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \blkpos_y_reg[9]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \vcount_reg[9]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \hcount_reg[9]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \hcount_reg[9]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vsync : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    pix_b : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \hcount_reg[10]_0\ : out STD_LOGIC;
    pix_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_r : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \vcount_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \blkpos_y_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \blkpos_x_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hcount_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hcount_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \blkpos_x_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_y : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \vcount_reg[9]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \blkpos_y_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \hcount_reg[9]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \blkpos_x_reg[10]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hsync : out STD_LOGIC;
    \vcount_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \_inferred__0/i__carry__1\ : in STD_LOGIC;
    \r_output2_inferred__0/i__carry__0\ : in STD_LOGIC;
    \i__carry_i_5__0_0\ : in STD_LOGIC;
    col_sw : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pix_b[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pix_b[0]_0\ : in STD_LOGIC;
    r_output1 : in STD_LOGIC;
    blkpos_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \r_output2_inferred__0/i__carry\ : in STD_LOGIC;
    \r_output2_inferred__0/i__carry__0_0\ : in STD_LOGIC;
    \r_output2_inferred__0/i__carry__0_1\ : in STD_LOGIC;
    \r_output2_inferred__0/i__carry_0\ : in STD_LOGIC;
    \r_output2_inferred__0/i__carry_1\ : in STD_LOGIC;
    \r_output2_inferred__0/i__carry_2\ : in STD_LOGIC;
    \_inferred__0/i__carry\ : in STD_LOGIC;
    \_inferred__0/i__carry__0\ : in STD_LOGIC;
    \_inferred__0/i__carry__0_0\ : in STD_LOGIC;
    \_inferred__0/i__carry__1_0\ : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of game_game_top_0_0_vga_out : entity is "vga_out";
end game_game_top_0_0_vga_out;

architecture STRUCTURE of game_game_top_0_0_vga_out is
  signal \curr_x__0\ : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \^curr_y\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hcount : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \hcount[10]_i_2_n_0\ : STD_LOGIC;
  signal \hcount[10]_i_3_n_0\ : STD_LOGIC;
  signal \hcount[10]_i_4_n_0\ : STD_LOGIC;
  signal \hcount[10]_i_5_n_0\ : STD_LOGIC;
  signal \hcount[6]_i_1_n_0\ : STD_LOGIC;
  signal \hcount[8]_i_2_n_0\ : STD_LOGIC;
  signal \hcount[9]_i_2_n_0\ : STD_LOGIC;
  signal \^hcount_reg[10]_0\ : STD_LOGIC;
  signal \^hcount_reg[8]_0\ : STD_LOGIC;
  signal \hcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[10]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[4]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[5]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[6]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[7]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[8]\ : STD_LOGIC;
  signal \hcount_reg_n_0_[9]\ : STD_LOGIC;
  signal hsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal r_output2_i_11_n_0 : STD_LOGIC;
  signal r_output2_i_12_n_0 : STD_LOGIC;
  signal r_output2_i_13_n_0 : STD_LOGIC;
  signal r_output2_i_14_n_0 : STD_LOGIC;
  signal r_output3_carry_i_9_n_0 : STD_LOGIC;
  signal \r_output4_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \r_output4_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \r_output4_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \r_output4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal r_output4_carry_i_10_n_0 : STD_LOGIC;
  signal r_output4_carry_i_11_n_0 : STD_LOGIC;
  signal r_output4_carry_i_12_n_0 : STD_LOGIC;
  signal r_output4_carry_i_9_n_0 : STD_LOGIC;
  signal vcount : STD_LOGIC;
  signal \vcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[5]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[6]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[6]_i_2_n_0\ : STD_LOGIC;
  signal \vcount[7]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[7]_i_2_n_0\ : STD_LOGIC;
  signal \vcount[8]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_2_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_3_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_4_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_5_n_0\ : STD_LOGIC;
  signal \vcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[4]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[5]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[6]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[7]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[8]\ : STD_LOGIC;
  signal \vcount_reg_n_0_[9]\ : STD_LOGIC;
  signal vsync_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hcount[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \hcount[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hcount[10]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \hcount[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \hcount[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \hcount[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hcount[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hcount[8]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of hsync_INST_0_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_17\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_18\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_23\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_32\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_34\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of r_output2_i_11 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of r_output2_i_13 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of r_output2_i_14 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_output3_carry_i_9 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_output4_carry__0_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_output4_carry__0_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_output4_carry__1_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of r_output4_carry_i_11 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of r_output4_carry_i_12 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vcount[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \vcount[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vcount[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vcount[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vcount[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of vsync_INST_0_i_1 : label is "soft_lutpair4";
begin
  curr_y(7 downto 0) <= \^curr_y\(7 downto 0);
  \hcount_reg[10]_0\ <= \^hcount_reg[10]_0\;
  \hcount_reg[8]_0\ <= \^hcount_reg[8]_0\;
\hcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      O => hcount(0)
    );
\hcount[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \hcount[10]_i_2_n_0\,
      I1 => \hcount[10]_i_3_n_0\,
      I2 => \hcount_reg_n_0_[9]\,
      I3 => \hcount_reg_n_0_[10]\,
      O => hcount(10)
    );
\hcount[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \hcount[10]_i_4_n_0\,
      I1 => r_output3_carry_i_9_n_0,
      I2 => \hcount_reg_n_0_[8]\,
      I3 => \hcount_reg_n_0_[2]\,
      I4 => \hcount[10]_i_5_n_0\,
      I5 => \hcount_reg_n_0_[6]\,
      O => \hcount[10]_i_2_n_0\
    );
\hcount[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hcount_reg_n_0_[8]\,
      I1 => \hcount_reg_n_0_[7]\,
      I2 => \hcount_reg_n_0_[6]\,
      I3 => \hcount[8]_i_2_n_0\,
      I4 => \hcount_reg_n_0_[4]\,
      I5 => \hcount_reg_n_0_[5]\,
      O => \hcount[10]_i_3_n_0\
    );
\hcount[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \hcount_reg_n_0_[1]\,
      I1 => \hcount_reg_n_0_[0]\,
      I2 => \hcount_reg_n_0_[3]\,
      I3 => \hcount_reg_n_0_[7]\,
      O => \hcount[10]_i_4_n_0\
    );
\hcount[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \hcount_reg_n_0_[10]\,
      I1 => \hcount_reg_n_0_[9]\,
      O => \hcount[10]_i_5_n_0\
    );
\hcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      I1 => \hcount_reg_n_0_[1]\,
      O => hcount(1)
    );
\hcount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \hcount_reg_n_0_[2]\,
      I1 => \hcount_reg_n_0_[1]\,
      I2 => \hcount_reg_n_0_[0]\,
      O => hcount(2)
    );
\hcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \hcount_reg_n_0_[3]\,
      I1 => \hcount_reg_n_0_[0]\,
      I2 => \hcount_reg_n_0_[1]\,
      I3 => \hcount_reg_n_0_[2]\,
      O => hcount(3)
    );
\hcount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      I1 => \hcount_reg_n_0_[1]\,
      I2 => \hcount_reg_n_0_[2]\,
      I3 => \hcount_reg_n_0_[3]\,
      I4 => \hcount_reg_n_0_[4]\,
      I5 => vcount,
      O => hcount(4)
    );
\hcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hcount_reg_n_0_[5]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[0]\,
      I3 => \hcount_reg_n_0_[1]\,
      I4 => \hcount_reg_n_0_[2]\,
      I5 => \hcount_reg_n_0_[3]\,
      O => hcount(5)
    );
\hcount[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \hcount_reg_n_0_[6]\,
      I1 => \hcount[8]_i_2_n_0\,
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \hcount_reg_n_0_[5]\,
      O => \hcount[6]_i_1_n_0\
    );
\hcount[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \hcount[10]_i_2_n_0\,
      I1 => \hcount_reg_n_0_[6]\,
      I2 => \hcount[8]_i_2_n_0\,
      I3 => \hcount_reg_n_0_[4]\,
      I4 => \hcount_reg_n_0_[5]\,
      I5 => \hcount_reg_n_0_[7]\,
      O => hcount(7)
    );
\hcount[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hcount_reg_n_0_[8]\,
      I1 => \hcount_reg_n_0_[7]\,
      I2 => \hcount_reg_n_0_[6]\,
      I3 => \hcount[8]_i_2_n_0\,
      I4 => \hcount_reg_n_0_[4]\,
      I5 => \hcount_reg_n_0_[5]\,
      O => hcount(8)
    );
\hcount[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      I1 => \hcount_reg_n_0_[1]\,
      I2 => \hcount_reg_n_0_[2]\,
      I3 => \hcount_reg_n_0_[3]\,
      O => \hcount[8]_i_2_n_0\
    );
\hcount[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00008000"
    )
        port map (
      I0 => \hcount[10]_i_2_n_0\,
      I1 => \hcount_reg_n_0_[8]\,
      I2 => \hcount_reg_n_0_[7]\,
      I3 => \hcount_reg_n_0_[6]\,
      I4 => \hcount[9]_i_2_n_0\,
      I5 => \hcount_reg_n_0_[9]\,
      O => hcount(9)
    );
\hcount[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \hcount_reg_n_0_[5]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[0]\,
      I3 => \hcount_reg_n_0_[1]\,
      I4 => \hcount_reg_n_0_[2]\,
      I5 => \hcount_reg_n_0_[3]\,
      O => \hcount[9]_i_2_n_0\
    );
\hcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(0),
      Q => \hcount_reg_n_0_[0]\,
      R => '0'
    );
\hcount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(10),
      Q => \hcount_reg_n_0_[10]\,
      R => '0'
    );
\hcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(1),
      Q => \hcount_reg_n_0_[1]\,
      R => '0'
    );
\hcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(2),
      Q => \hcount_reg_n_0_[2]\,
      R => '0'
    );
\hcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(3),
      Q => \hcount_reg_n_0_[3]\,
      R => '0'
    );
\hcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(4),
      Q => \hcount_reg_n_0_[4]\,
      R => '0'
    );
\hcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(5),
      Q => \hcount_reg_n_0_[5]\,
      R => '0'
    );
\hcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount[6]_i_1_n_0\,
      Q => \hcount_reg_n_0_[6]\,
      R => '0'
    );
\hcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(7),
      Q => \hcount_reg_n_0_[7]\,
      R => '0'
    );
\hcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(8),
      Q => \hcount_reg_n_0_[8]\,
      R => '0'
    );
\hcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => hcount(9),
      Q => \hcount_reg_n_0_[9]\,
      R => '0'
    );
hsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => \hcount_reg_n_0_[3]\,
      I1 => hsync_INST_0_i_1_n_0,
      I2 => \hcount_reg_n_0_[7]\,
      I3 => \hcount_reg_n_0_[10]\,
      I4 => \hcount_reg_n_0_[9]\,
      I5 => \hcount_reg_n_0_[8]\,
      O => hsync
    );
hsync_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \hcount_reg_n_0_[6]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[5]\,
      O => hsync_INST_0_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400DF00000014"
    )
        port map (
      I0 => Q(8),
      I1 => \vcount_reg_n_0_[8]\,
      I2 => \i__carry__1_i_8_n_0\,
      I3 => \^hcount_reg[8]_0\,
      I4 => Q(9),
      I5 => \vcount_reg_n_0_[9]\,
      O => \blkpos_y_reg[8]\(0)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF65009A009AFF65"
    )
        port map (
      I0 => \vcount_reg_n_0_[7]\,
      I1 => \vcount_reg_n_0_[6]\,
      I2 => \r_output4_carry__0_i_9_n_0\,
      I3 => \^hcount_reg[8]_0\,
      I4 => \_inferred__0/i__carry__1\,
      I5 => Q(7),
      O => \vcount_reg[7]_2\(3)
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF1F"
    )
        port map (
      I0 => r_output2_i_14_n_0,
      I1 => \hcount_reg_n_0_[9]\,
      I2 => \hcount_reg_n_0_[10]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => \r_output2_inferred__0/i__carry__0\,
      O => \hcount_reg[9]_1\(1)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009030039303039"
    )
        port map (
      I0 => \vcount_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => \^hcount_reg[8]_0\,
      I3 => \i__carry__1_i_8_n_0\,
      I4 => \vcount_reg_n_0_[8]\,
      I5 => Q(8),
      O => \vcount_reg[9]_1\(0)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBEFF18FF9A0000"
    )
        port map (
      I0 => \hcount_reg_n_0_[9]\,
      I1 => \pix_r[3]_INST_0_i_15_n_0\,
      I2 => \hcount_reg_n_0_[8]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => \r_output2_inferred__0/i__carry__0_0\,
      I5 => \r_output2_inferred__0/i__carry__0_1\,
      O => \hcount_reg[9]_1\(0)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F90606F9"
    )
        port map (
      I0 => \vcount_reg_n_0_[6]\,
      I1 => \r_output4_carry__0_i_9_n_0\,
      I2 => \^hcount_reg[8]_0\,
      I3 => \_inferred__0/i__carry__0_0\,
      I4 => Q(6),
      O => \vcount_reg[7]_2\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09F6F609"
    )
        port map (
      I0 => \vcount_reg_n_0_[5]\,
      I1 => \r_output4_carry__0_i_10_n_0\,
      I2 => \^hcount_reg[8]_0\,
      I3 => \_inferred__0/i__carry__0\,
      I4 => Q(5),
      O => \vcount_reg[7]_2\(1)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F00E0"
    )
        port map (
      I0 => r_output2_i_14_n_0,
      I1 => \hcount_reg_n_0_[9]\,
      I2 => \hcount_reg_n_0_[10]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => \r_output2_inferred__0/i__carry__0\,
      O => \hcount_reg[9]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0560050905060560"
    )
        port map (
      I0 => \r_output2_inferred__0/i__carry__0_0\,
      I1 => \hcount_reg_n_0_[9]\,
      I2 => \r_output2_inferred__0/i__carry__0_1\,
      I3 => \^hcount_reg[8]_0\,
      I4 => \pix_r[3]_INST_0_i_15_n_0\,
      I5 => \hcount_reg_n_0_[8]\,
      O => \hcount_reg[9]_0\(0)
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555556"
    )
        port map (
      I0 => \^curr_y\(2),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => \vcount_reg[7]_2\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000070000"
    )
        port map (
      I0 => \vcount_reg_n_0_[8]\,
      I1 => \i__carry__1_i_5_n_0\,
      I2 => \i__carry__1_i_6_n_0\,
      I3 => r_output2_i_12_n_0,
      I4 => \vcount_reg_n_0_[9]\,
      I5 => \r_output4_carry__1_i_4_n_0\,
      O => \^curr_y\(7)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A9AA"
    )
        port map (
      I0 => \vcount_reg_n_0_[8]\,
      I1 => \vcount_reg_n_0_[7]\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => \r_output4_carry__0_i_9_n_0\,
      I4 => \^hcount_reg[8]_0\,
      O => \^curr_y\(6)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB04040404FBFBFB"
    )
        port map (
      I0 => \r_output4_carry__1_i_4_n_0\,
      I1 => \vcount_reg_n_0_[9]\,
      I2 => \^hcount_reg[8]_0\,
      I3 => \_inferred__0/i__carry__1_0\,
      I4 => Q(8),
      I5 => Q(9),
      O => \vcount_reg[9]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F906060606F9F9F9"
    )
        port map (
      I0 => \vcount_reg_n_0_[8]\,
      I1 => \i__carry__1_i_8_n_0\,
      I2 => \^hcount_reg[8]_0\,
      I3 => \_inferred__0/i__carry__1\,
      I4 => Q(7),
      I5 => Q(8),
      O => \vcount_reg[9]_0\(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \vcount_reg_n_0_[6]\,
      I1 => \vcount_reg_n_0_[7]\,
      I2 => \vcount_reg_n_0_[5]\,
      I3 => \vcount_reg_n_0_[4]\,
      I4 => \vcount_reg_n_0_[3]\,
      I5 => r_output4_carry_i_11_n_0,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000045FF"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => r_output3_carry_i_9_n_0,
      I2 => \hcount_reg_n_0_[6]\,
      I3 => \hcount_reg_n_0_[8]\,
      I4 => \hcount_reg_n_0_[9]\,
      I5 => \hcount_reg_n_0_[10]\,
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_output4_carry__0_i_9_n_0\,
      I1 => \vcount_reg_n_0_[6]\,
      I2 => \vcount_reg_n_0_[7]\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004144000047D4"
    )
        port map (
      I0 => Q(7),
      I1 => \vcount_reg_n_0_[7]\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => \r_output4_carry__0_i_9_n_0\,
      I4 => \^hcount_reg[8]_0\,
      I5 => Q(6),
      O => \blkpos_y_reg[7]\(3)
    );
\i__carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A955FFFF56AA"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => \hcount_reg_n_0_[5]\,
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \hcount_reg_n_0_[6]\,
      I4 => \^hcount_reg[8]_0\,
      I5 => \i__carry_i_5__0_0\,
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBEFF18FF9A0000"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => r_output3_carry_i_9_n_0,
      I2 => \hcount_reg_n_0_[6]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => \i__carry_i_5__0_0\,
      I5 => \r_output2_inferred__0/i__carry_0\,
      O => \hcount_reg[7]_0\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F40000FEFEF6F6F4"
    )
        port map (
      I0 => \hcount_reg_n_0_[5]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \^hcount_reg[8]_0\,
      I3 => blkpos_x(4),
      I4 => \r_output2_inferred__0/i__carry\,
      I5 => blkpos_x(5),
      O => \hcount_reg[7]_0\(2)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000141100007417"
    )
        port map (
      I0 => Q(5),
      I1 => \vcount_reg_n_0_[5]\,
      I2 => \r_output4_carry__0_i_11_n_0\,
      I3 => \vcount_reg_n_0_[4]\,
      I4 => \^hcount_reg[8]_0\,
      I5 => Q(4),
      O => \blkpos_y_reg[7]\(2)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      I1 => \^hcount_reg[8]_0\,
      O => \vcount_reg[0]_0\(0)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011140000711D"
    )
        port map (
      I0 => Q(3),
      I1 => \vcount_reg_n_0_[3]\,
      I2 => \vcount_reg_n_0_[2]\,
      I3 => \vcount[6]_i_2_n_0\,
      I4 => \^hcount_reg[8]_0\,
      I5 => Q(2),
      O => \blkpos_y_reg[7]\(1)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABB0BA0BBFB0FB0"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \hcount_reg_n_0_[3]\,
      I2 => blkpos_x(2),
      I3 => \r_output2_inferred__0/i__carry_2\,
      I4 => blkpos_x(3),
      I5 => \hcount_reg_n_0_[2]\,
      O => \hcount_reg[7]_0\(1)
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606F906F9F906F9"
    )
        port map (
      I0 => \vcount_reg_n_0_[3]\,
      I1 => r_output4_carry_i_11_n_0,
      I2 => \^hcount_reg[8]_0\,
      I3 => \_inferred__0/i__carry\,
      I4 => Q(2),
      I5 => Q(3),
      O => \vcount_reg[3]_0\(3)
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01030031"
    )
        port map (
      I0 => Q(0),
      I1 => \^hcount_reg[8]_0\,
      I2 => \vcount_reg_n_0_[0]\,
      I3 => Q(1),
      I4 => \vcount_reg_n_0_[1]\,
      O => \blkpos_y_reg[7]\(0)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0ABB0BF"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \hcount_reg_n_0_[1]\,
      I2 => blkpos_x(1),
      I3 => blkpos_x(0),
      I4 => \hcount_reg_n_0_[0]\,
      O => \hcount_reg[7]_0\(0)
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"090909F6F6F6F609"
    )
        port map (
      I0 => \vcount_reg_n_0_[2]\,
      I1 => \vcount[6]_i_2_n_0\,
      I2 => \^hcount_reg[8]_0\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \vcount_reg[3]_0\(2)
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009060039303039"
    )
        port map (
      I0 => \vcount_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \^hcount_reg[8]_0\,
      I3 => \r_output4_carry__0_i_9_n_0\,
      I4 => \vcount_reg_n_0_[6]\,
      I5 => Q(6),
      O => \vcount_reg[7]_1\(3)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882282828282882"
    )
        port map (
      I0 => \i__carry_i_13_n_0\,
      I1 => blkpos_x(6),
      I2 => \r_output2_inferred__0/i__carry_1\,
      I3 => \^hcount_reg[8]_0\,
      I4 => r_output3_carry_i_9_n_0,
      I5 => \hcount_reg_n_0_[6]\,
      O => \blkpos_x_reg[6]\(3)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14EBEB14"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => Q(1),
      O => \vcount_reg[3]_0\(1)
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AA00AA006609006"
    )
        port map (
      I0 => blkpos_x(5),
      I1 => \hcount_reg_n_0_[5]\,
      I2 => blkpos_x(4),
      I3 => \r_output2_inferred__0/i__carry\,
      I4 => \hcount_reg_n_0_[4]\,
      I5 => \^hcount_reg[8]_0\,
      O => \blkpos_x_reg[6]\(2)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000630393630"
    )
        port map (
      I0 => \vcount_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \^hcount_reg[8]_0\,
      I3 => \r_output4_carry__0_i_11_n_0\,
      I4 => \vcount_reg_n_0_[4]\,
      I5 => Q(4),
      O => \vcount_reg[7]_1\(2)
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => Q(0),
      O => \vcount_reg[3]_0\(0)
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000930363630"
    )
        port map (
      I0 => \vcount_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => \^hcount_reg[8]_0\,
      I3 => \vcount[6]_i_2_n_0\,
      I4 => \vcount_reg_n_0_[2]\,
      I5 => Q(2),
      O => \vcount_reg[7]_1\(1)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5005500506909009"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => \hcount_reg_n_0_[3]\,
      I2 => blkpos_x(2),
      I3 => \r_output2_inferred__0/i__carry_2\,
      I4 => \hcount_reg_n_0_[2]\,
      I5 => \^hcount_reg[8]_0\,
      O => \blkpos_x_reg[6]\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03030690"
    )
        port map (
      I0 => \vcount_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \vcount_reg_n_0_[0]\,
      I4 => \^hcount_reg[8]_0\,
      O => \vcount_reg[7]_1\(0)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C4224"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => \hcount_reg_n_0_[1]\,
      I4 => \^hcount_reg[8]_0\,
      O => \blkpos_x_reg[6]\(0)
    );
\pix_b[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => col_sw(0),
      I2 => \pix_b[0]\(0),
      I3 => CO(0),
      I4 => \pix_b[0]_0\,
      I5 => r_output1,
      O => pix_b(0)
    );
\pix_b[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => col_sw(1),
      I2 => \pix_b[0]\(0),
      I3 => CO(0),
      I4 => \pix_b[0]_0\,
      I5 => r_output1,
      O => pix_b(1)
    );
\pix_g[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => \pix_b[0]\(0),
      I2 => CO(0),
      I3 => \pix_b[0]_0\,
      I4 => r_output1,
      I5 => col_sw(2),
      O => pix_g(0)
    );
\pix_g[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => \pix_b[0]\(0),
      I2 => CO(0),
      I3 => \pix_b[0]_0\,
      I4 => r_output1,
      I5 => col_sw(3),
      O => pix_g(1)
    );
\pix_g[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => \pix_b[0]\(0),
      I2 => CO(0),
      I3 => \pix_b[0]_0\,
      I4 => r_output1,
      I5 => col_sw(4),
      O => pix_g(2)
    );
\pix_g[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => \pix_b[0]\(0),
      I2 => CO(0),
      I3 => \pix_b[0]_0\,
      I4 => r_output1,
      I5 => col_sw(5),
      O => pix_g(3)
    );
\pix_r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => col_sw(6),
      I2 => \pix_b[0]\(0),
      I3 => CO(0),
      I4 => \pix_b[0]_0\,
      I5 => r_output1,
      O => pix_r(0)
    );
\pix_r[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^hcount_reg[10]_0\,
      I1 => col_sw(7),
      I2 => \pix_b[0]\(0),
      I3 => CO(0),
      I4 => \pix_b[0]_0\,
      I5 => r_output1,
      O => pix_r(1)
    );
\pix_r[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000005D"
    )
        port map (
      I0 => \curr_x__0\(10),
      I1 => \pix_r[3]_INST_0_i_7_n_0\,
      I2 => \pix_r[3]_INST_0_i_8_n_0\,
      I3 => \pix_r[3]_INST_0_i_9_n_0\,
      I4 => \pix_r[3]_INST_0_i_10_n_0\,
      I5 => \pix_r[3]_INST_0_i_11_n_0\,
      O => \^hcount_reg[10]_0\
    );
\pix_r[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF08"
    )
        port map (
      I0 => \vcount_reg_n_0_[4]\,
      I1 => \r_output4_carry__0_i_11_n_0\,
      I2 => \^hcount_reg[8]_0\,
      I3 => \pix_r[3]_INST_0_i_21_n_0\,
      I4 => \pix_r[3]_INST_0_i_20_n_0\,
      I5 => \pix_r[3]_INST_0_i_23_n_0\,
      O => \pix_r[3]_INST_0_i_10_n_0\
    );
\pix_r[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F4F0"
    )
        port map (
      I0 => \hcount_reg_n_0_[5]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \^hcount_reg[8]_0\,
      I3 => \hcount_reg_n_0_[6]\,
      I4 => \pix_r[3]_INST_0_i_24_n_0\,
      I5 => \pix_r[3]_INST_0_i_8_n_0\,
      O => \pix_r[3]_INST_0_i_11_n_0\
    );
\pix_r[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \vcount_reg_n_0_[8]\,
      I1 => \vcount_reg_n_0_[5]\,
      I2 => \vcount_reg_n_0_[9]\,
      I3 => \vcount_reg_n_0_[7]\,
      I4 => \vcount_reg_n_0_[6]\,
      I5 => \r_output4_carry__0_i_10_n_0\,
      O => \pix_r[3]_INST_0_i_14_n_0\
    );
\pix_r[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => \hcount_reg_n_0_[5]\,
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \hcount_reg_n_0_[6]\,
      O => \pix_r[3]_INST_0_i_15_n_0\
    );
\pix_r[3]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_31_n_0\,
      I1 => \vcount_reg_n_0_[7]\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => \vcount_reg_n_0_[8]\,
      I4 => \vcount_reg_n_0_[9]\,
      O => \pix_r[3]_INST_0_i_16_n_0\
    );
\pix_r[3]_INST_0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      I1 => \hcount_reg_n_0_[1]\,
      O => \pix_r[3]_INST_0_i_17_n_0\
    );
\pix_r[3]_INST_0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[5]\,
      O => \pix_r[3]_INST_0_i_18_n_0\
    );
\pix_r[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABFFFFFFFFFFAB"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_16_n_0\,
      I1 => r_output2_i_11_n_0,
      I2 => r_output2_i_14_n_0,
      I3 => r_output2_i_12_n_0,
      I4 => r_output3_carry_i_9_n_0,
      I5 => \hcount_reg_n_0_[6]\,
      O => \pix_r[3]_INST_0_i_19_n_0\
    );
\pix_r[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF0FFFF"
    )
        port map (
      I0 => \vcount_reg_n_0_[9]\,
      I1 => \i__carry__1_i_5_n_0\,
      I2 => \i__carry__1_i_6_n_0\,
      I3 => r_output2_i_12_n_0,
      I4 => \i__carry__1_i_8_n_0\,
      I5 => \vcount_reg_n_0_[8]\,
      O => \pix_r[3]_INST_0_i_20_n_0\
    );
\pix_r[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111001"
    )
        port map (
      I0 => r_output4_carry_i_9_n_0,
      I1 => r_output2_i_12_n_0,
      I2 => \vcount_reg_n_0_[5]\,
      I3 => \r_output4_carry__0_i_10_n_0\,
      I4 => \vcount_reg_n_0_[6]\,
      I5 => \vcount_reg_n_0_[7]\,
      O => \pix_r[3]_INST_0_i_21_n_0\
    );
\pix_r[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000540000002A"
    )
        port map (
      I0 => \vcount_reg_n_0_[3]\,
      I1 => \vcount_reg_n_0_[1]\,
      I2 => \vcount_reg_n_0_[0]\,
      I3 => r_output4_carry_i_9_n_0,
      I4 => r_output2_i_12_n_0,
      I5 => \vcount_reg_n_0_[2]\,
      O => \pix_r[3]_INST_0_i_22_n_0\
    );
\pix_r[3]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555565"
    )
        port map (
      I0 => \vcount_reg_n_0_[9]\,
      I1 => \vcount_reg_n_0_[8]\,
      I2 => \r_output4_carry__0_i_9_n_0\,
      I3 => \vcount_reg_n_0_[6]\,
      I4 => \vcount_reg_n_0_[7]\,
      O => \pix_r[3]_INST_0_i_23_n_0\
    );
\pix_r[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000F000F000F"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_32_n_0\,
      I1 => \hcount_reg_n_0_[3]\,
      I2 => r_output4_carry_i_9_n_0,
      I3 => r_output2_i_12_n_0,
      I4 => \pix_r[3]_INST_0_i_33_n_0\,
      I5 => \pix_r[3]_INST_0_i_34_n_0\,
      O => \pix_r[3]_INST_0_i_24_n_0\
    );
\pix_r[3]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      I1 => \vcount_reg_n_0_[1]\,
      I2 => \vcount_reg_n_0_[2]\,
      I3 => \vcount_reg_n_0_[3]\,
      I4 => \vcount_reg_n_0_[4]\,
      I5 => \vcount_reg_n_0_[5]\,
      O => \pix_r[3]_INST_0_i_31_n_0\
    );
\pix_r[3]_INST_0_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcount_reg_n_0_[1]\,
      I1 => \hcount_reg_n_0_[2]\,
      O => \pix_r[3]_INST_0_i_32_n_0\
    );
\pix_r[3]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000055F7FFFFFFFF"
    )
        port map (
      I0 => \hcount_reg_n_0_[8]\,
      I1 => \hcount_reg_n_0_[6]\,
      I2 => r_output3_carry_i_9_n_0,
      I3 => \hcount_reg_n_0_[7]\,
      I4 => \hcount_reg_n_0_[9]\,
      I5 => \hcount_reg_n_0_[10]\,
      O => \pix_r[3]_INST_0_i_33_n_0\
    );
\pix_r[3]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => \hcount_reg_n_0_[5]\,
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \hcount_reg_n_0_[6]\,
      O => \pix_r[3]_INST_0_i_34_n_0\
    );
\pix_r[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBAAAAEF"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_14_n_0\,
      I1 => \pix_r[3]_INST_0_i_15_n_0\,
      I2 => \hcount_reg_n_0_[8]\,
      I3 => \hcount_reg_n_0_[9]\,
      I4 => \hcount_reg_n_0_[10]\,
      I5 => \pix_r[3]_INST_0_i_16_n_0\,
      O => \^hcount_reg[8]_0\
    );
\pix_r[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001010000000"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_16_n_0\,
      I1 => \pix_r[3]_INST_0_i_14_n_0\,
      I2 => \hcount_reg_n_0_[10]\,
      I3 => \hcount_reg_n_0_[9]\,
      I4 => \pix_r[3]_INST_0_i_15_n_0\,
      I5 => \hcount_reg_n_0_[8]\,
      O => \curr_x__0\(10)
    );
\pix_r[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDCDD"
    )
        port map (
      I0 => \hcount_reg_n_0_[3]\,
      I1 => \^hcount_reg[8]_0\,
      I2 => \pix_r[3]_INST_0_i_17_n_0\,
      I3 => \hcount_reg_n_0_[2]\,
      I4 => \pix_r[3]_INST_0_i_18_n_0\,
      I5 => \pix_r[3]_INST_0_i_19_n_0\,
      O => \pix_r[3]_INST_0_i_7_n_0\
    );
\pix_r[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004500A2"
    )
        port map (
      I0 => \hcount_reg_n_0_[9]\,
      I1 => \pix_r[3]_INST_0_i_15_n_0\,
      I2 => \hcount_reg_n_0_[8]\,
      I3 => \pix_r[3]_INST_0_i_14_n_0\,
      I4 => \hcount_reg_n_0_[10]\,
      I5 => \pix_r[3]_INST_0_i_16_n_0\,
      O => \pix_r[3]_INST_0_i_8_n_0\
    );
\pix_r[3]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^curr_y\(7),
      I1 => \^curr_y\(2),
      I2 => \pix_r[3]_INST_0_i_20_n_0\,
      I3 => \pix_r[3]_INST_0_i_21_n_0\,
      I4 => \pix_r[3]_INST_0_i_22_n_0\,
      O => \pix_r[3]_INST_0_i_9_n_0\
    );
r_output2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010004040004"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_16_n_0\,
      I1 => \hcount_reg_n_0_[10]\,
      I2 => \pix_r[3]_INST_0_i_14_n_0\,
      I3 => \hcount_reg_n_0_[8]\,
      I4 => \pix_r[3]_INST_0_i_15_n_0\,
      I5 => \hcount_reg_n_0_[9]\,
      O => C(9)
    );
r_output2_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hcount_reg_n_0_[0]\,
      I1 => \^hcount_reg[8]_0\,
      O => C(0)
    );
r_output2_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hcount_reg_n_0_[10]\,
      I1 => \hcount_reg_n_0_[9]\,
      O => r_output2_i_11_n_0
    );
r_output2_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1F111111111111"
    )
        port map (
      I0 => \r_output4_carry__0_i_10_n_0\,
      I1 => vsync_INST_0_i_1_n_0,
      I2 => \pix_r[3]_INST_0_i_15_n_0\,
      I3 => \hcount_reg_n_0_[8]\,
      I4 => \hcount_reg_n_0_[10]\,
      I5 => \hcount_reg_n_0_[9]\,
      O => r_output2_i_12_n_0
    );
r_output2_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \hcount_reg_n_0_[6]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[5]\,
      O => r_output2_i_13_n_0
    );
r_output2_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \hcount_reg_n_0_[8]\,
      I1 => \hcount_reg_n_0_[6]\,
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \hcount_reg_n_0_[5]\,
      I4 => \hcount_reg_n_0_[7]\,
      O => r_output2_i_14_n_0
    );
r_output2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014000000000014"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_16_n_0\,
      I1 => \hcount_reg_n_0_[10]\,
      I2 => \hcount_reg_n_0_[9]\,
      I3 => \pix_r[3]_INST_0_i_14_n_0\,
      I4 => \pix_r[3]_INST_0_i_15_n_0\,
      I5 => \hcount_reg_n_0_[8]\,
      O => C(8)
    );
r_output2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054000000000044"
    )
        port map (
      I0 => \pix_r[3]_INST_0_i_16_n_0\,
      I1 => r_output2_i_11_n_0,
      I2 => \hcount_reg_n_0_[8]\,
      I3 => r_output2_i_12_n_0,
      I4 => r_output2_i_13_n_0,
      I5 => \hcount_reg_n_0_[7]\,
      O => C(7)
    );
r_output2_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0056"
    )
        port map (
      I0 => \hcount_reg_n_0_[6]\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[5]\,
      I3 => \^hcount_reg[8]_0\,
      O => C(6)
    );
r_output2_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \hcount_reg_n_0_[4]\,
      I2 => \hcount_reg_n_0_[5]\,
      O => C(5)
    );
r_output2_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcount_reg_n_0_[4]\,
      I1 => \^hcount_reg[8]_0\,
      O => C(4)
    );
r_output2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222220"
    )
        port map (
      I0 => \hcount_reg_n_0_[3]\,
      I1 => \pix_r[3]_INST_0_i_16_n_0\,
      I2 => \hcount_reg_n_0_[10]\,
      I3 => \hcount_reg_n_0_[9]\,
      I4 => r_output2_i_14_n_0,
      I5 => r_output2_i_12_n_0,
      O => C(3)
    );
r_output2_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hcount_reg_n_0_[2]\,
      I1 => \^hcount_reg[8]_0\,
      O => C(2)
    );
r_output2_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hcount_reg_n_0_[1]\,
      I1 => \^hcount_reg[8]_0\,
      O => C(1)
    );
\r_output3_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => r_output2_i_14_n_0,
      I1 => \hcount_reg_n_0_[9]\,
      I2 => \hcount_reg_n_0_[10]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => blkpos_x(10),
      O => \hcount_reg[9]_2\(1)
    );
\r_output3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000141100007417"
    )
        port map (
      I0 => blkpos_x(9),
      I1 => \hcount_reg_n_0_[9]\,
      I2 => \pix_r[3]_INST_0_i_15_n_0\,
      I3 => \hcount_reg_n_0_[8]\,
      I4 => \^hcount_reg[8]_0\,
      I5 => blkpos_x(8),
      O => \hcount_reg[9]_2\(0)
    );
\r_output3_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555A955"
    )
        port map (
      I0 => blkpos_x(10),
      I1 => r_output2_i_14_n_0,
      I2 => \hcount_reg_n_0_[9]\,
      I3 => \hcount_reg_n_0_[10]\,
      I4 => \^hcount_reg[8]_0\,
      O => \blkpos_x_reg[10]\(1)
    );
\r_output3_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000630393630"
    )
        port map (
      I0 => \hcount_reg_n_0_[9]\,
      I1 => blkpos_x(9),
      I2 => \^hcount_reg[8]_0\,
      I3 => \pix_r[3]_INST_0_i_15_n_0\,
      I4 => \hcount_reg_n_0_[8]\,
      I5 => blkpos_x(8),
      O => \blkpos_x_reg[10]\(0)
    );
r_output3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000141100007417"
    )
        port map (
      I0 => blkpos_x(7),
      I1 => \hcount_reg_n_0_[7]\,
      I2 => r_output3_carry_i_9_n_0,
      I3 => \hcount_reg_n_0_[6]\,
      I4 => \^hcount_reg[8]_0\,
      I5 => blkpos_x(6),
      O => \blkpos_x_reg[7]\(3)
    );
r_output3_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00410047"
    )
        port map (
      I0 => blkpos_x(5),
      I1 => \hcount_reg_n_0_[5]\,
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => blkpos_x(4),
      O => \blkpos_x_reg[7]\(2)
    );
r_output3_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10103110"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => \^hcount_reg[8]_0\,
      I2 => \hcount_reg_n_0_[3]\,
      I3 => \hcount_reg_n_0_[2]\,
      I4 => blkpos_x(2),
      O => \blkpos_x_reg[7]\(1)
    );
r_output3_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10103110"
    )
        port map (
      I0 => blkpos_x(1),
      I1 => \^hcount_reg[8]_0\,
      I2 => \hcount_reg_n_0_[1]\,
      I3 => \hcount_reg_n_0_[0]\,
      I4 => blkpos_x(0),
      O => \blkpos_x_reg[7]\(0)
    );
r_output3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000630393630"
    )
        port map (
      I0 => \hcount_reg_n_0_[7]\,
      I1 => blkpos_x(7),
      I2 => \^hcount_reg[8]_0\,
      I3 => r_output3_carry_i_9_n_0,
      I4 => \hcount_reg_n_0_[6]\,
      I5 => blkpos_x(6),
      O => \hcount_reg[7]_1\(3)
    );
r_output3_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00063390"
    )
        port map (
      I0 => \hcount_reg_n_0_[5]\,
      I1 => blkpos_x(5),
      I2 => \hcount_reg_n_0_[4]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => blkpos_x(4),
      O => \hcount_reg[7]_1\(2)
    );
r_output3_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00903309"
    )
        port map (
      I0 => \hcount_reg_n_0_[3]\,
      I1 => blkpos_x(3),
      I2 => \hcount_reg_n_0_[2]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => blkpos_x(2),
      O => \hcount_reg[7]_1\(1)
    );
r_output3_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00903309"
    )
        port map (
      I0 => \hcount_reg_n_0_[1]\,
      I1 => blkpos_x(1),
      I2 => \hcount_reg_n_0_[0]\,
      I3 => \^hcount_reg[8]_0\,
      I4 => blkpos_x(0),
      O => \hcount_reg[7]_1\(0)
    );
r_output3_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcount_reg_n_0_[5]\,
      I1 => \hcount_reg_n_0_[4]\,
      O => r_output3_carry_i_9_n_0
    );
\r_output4_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010010"
    )
        port map (
      I0 => r_output4_carry_i_9_n_0,
      I1 => r_output2_i_12_n_0,
      I2 => \r_output4_carry__0_i_9_n_0\,
      I3 => \vcount_reg_n_0_[6]\,
      I4 => \vcount_reg_n_0_[7]\,
      O => \^curr_y\(5)
    );
\r_output4_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => \vcount_reg_n_0_[4]\,
      I1 => \vcount_reg_n_0_[3]\,
      I2 => \vcount_reg_n_0_[0]\,
      I3 => \vcount_reg_n_0_[1]\,
      I4 => \vcount_reg_n_0_[2]\,
      O => \r_output4_carry__0_i_10_n_0\
    );
\r_output4_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => \vcount_reg_n_0_[2]\,
      I1 => \vcount_reg_n_0_[1]\,
      I2 => \vcount_reg_n_0_[0]\,
      I3 => \vcount_reg_n_0_[3]\,
      O => \r_output4_carry__0_i_11_n_0\
    );
\r_output4_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505040000000004"
    )
        port map (
      I0 => r_output4_carry_i_9_n_0,
      I1 => vsync_INST_0_i_1_n_0,
      I2 => r_output4_carry_i_10_n_0,
      I3 => \vcount_reg_n_0_[5]\,
      I4 => \r_output4_carry__0_i_10_n_0\,
      I5 => \vcount_reg_n_0_[6]\,
      O => \^curr_y\(4)
    );
\r_output4_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05000004"
    )
        port map (
      I0 => r_output4_carry_i_9_n_0,
      I1 => vsync_INST_0_i_1_n_0,
      I2 => r_output4_carry_i_10_n_0,
      I3 => \r_output4_carry__0_i_10_n_0\,
      I4 => \vcount_reg_n_0_[5]\,
      O => \^curr_y\(3)
    );
\r_output4_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000004"
    )
        port map (
      I0 => r_output4_carry_i_9_n_0,
      I1 => vsync_INST_0_i_1_n_0,
      I2 => r_output4_carry_i_10_n_0,
      I3 => \r_output4_carry__0_i_11_n_0\,
      I4 => \vcount_reg_n_0_[4]\,
      O => \^curr_y\(2)
    );
\r_output4_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"009AFF65"
    )
        port map (
      I0 => \vcount_reg_n_0_[7]\,
      I1 => \vcount_reg_n_0_[6]\,
      I2 => \r_output4_carry__0_i_9_n_0\,
      I3 => \^hcount_reg[8]_0\,
      I4 => Q(7),
      O => \vcount_reg[7]_0\(3)
    );
\r_output4_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14EB"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \r_output4_carry__0_i_9_n_0\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => Q(6),
      O => \vcount_reg[7]_0\(2)
    );
\r_output4_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09F6"
    )
        port map (
      I0 => \vcount_reg_n_0_[5]\,
      I1 => \r_output4_carry__0_i_10_n_0\,
      I2 => \^hcount_reg[8]_0\,
      I3 => Q(5),
      O => \vcount_reg[7]_0\(1)
    );
\r_output4_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01555400FEAAABFF"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \vcount_reg_n_0_[2]\,
      I2 => \vcount[6]_i_2_n_0\,
      I3 => \vcount_reg_n_0_[3]\,
      I4 => \vcount_reg_n_0_[4]\,
      I5 => Q(4),
      O => \vcount_reg[7]_0\(0)
    );
\r_output4_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111555555555555"
    )
        port map (
      I0 => \vcount_reg_n_0_[5]\,
      I1 => \vcount_reg_n_0_[2]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => \vcount_reg_n_0_[0]\,
      I4 => \vcount_reg_n_0_[3]\,
      I5 => \vcount_reg_n_0_[4]\,
      O => \r_output4_carry__0_i_9_n_0\
    );
\r_output4_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => Q(9),
      I1 => \r_output4_carry__1_i_4_n_0\,
      I2 => \vcount_reg_n_0_[9]\,
      I3 => \^hcount_reg[8]_0\,
      O => \blkpos_y_reg[9]\(1)
    );
\r_output4_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55510004AAAEFFFB"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \r_output4_carry__0_i_9_n_0\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => \vcount_reg_n_0_[7]\,
      I4 => \vcount_reg_n_0_[8]\,
      I5 => Q(8),
      O => \blkpos_y_reg[9]\(0)
    );
\r_output4_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \vcount_reg_n_0_[7]\,
      I1 => \vcount_reg_n_0_[6]\,
      I2 => \r_output4_carry__0_i_9_n_0\,
      I3 => \vcount_reg_n_0_[8]\,
      O => \r_output4_carry__1_i_4_n_0\
    );
r_output4_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => r_output4_carry_i_9_n_0,
      I1 => vsync_INST_0_i_1_n_0,
      I2 => r_output4_carry_i_10_n_0,
      I3 => r_output4_carry_i_11_n_0,
      I4 => \vcount_reg_n_0_[3]\,
      O => \^curr_y\(1)
    );
r_output4_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888888808880"
    )
        port map (
      I0 => \hcount_reg_n_0_[9]\,
      I1 => \hcount_reg_n_0_[10]\,
      I2 => \hcount_reg_n_0_[8]\,
      I3 => \hcount_reg_n_0_[7]\,
      I4 => r_output3_carry_i_9_n_0,
      I5 => \hcount_reg_n_0_[6]\,
      O => r_output4_carry_i_10_n_0
    );
r_output4_carry_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \vcount_reg_n_0_[2]\,
      I1 => \vcount_reg_n_0_[1]\,
      I2 => \vcount_reg_n_0_[0]\,
      O => r_output4_carry_i_11_n_0
    );
r_output4_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \vcount_reg_n_0_[7]\,
      I1 => \vcount_reg_n_0_[6]\,
      O => r_output4_carry_i_12_n_0
    );
r_output4_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000006060600"
    )
        port map (
      I0 => \vcount_reg_n_0_[1]\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \pix_r[3]_INST_0_i_16_n_0\,
      I3 => r_output2_i_11_n_0,
      I4 => r_output2_i_14_n_0,
      I5 => r_output2_i_12_n_0,
      O => \^curr_y\(0)
    );
r_output4_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      I1 => \^hcount_reg[8]_0\,
      O => DI(0)
    );
r_output4_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005666FFFFA999"
    )
        port map (
      I0 => \vcount_reg_n_0_[3]\,
      I1 => \vcount_reg_n_0_[2]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => \vcount_reg_n_0_[0]\,
      I4 => \^hcount_reg[8]_0\,
      I5 => Q(3),
      O => S(3)
    );
r_output4_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4015BFEA"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => \vcount_reg_n_0_[2]\,
      I4 => Q(2),
      O => S(2)
    );
r_output4_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14EB"
    )
        port map (
      I0 => \^hcount_reg[8]_0\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => Q(1),
      O => S(1)
    );
r_output4_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(0),
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \^hcount_reg[8]_0\,
      O => S(0)
    );
r_output4_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888088808880FFFF"
    )
        port map (
      I0 => \vcount_reg_n_0_[9]\,
      I1 => \vcount_reg_n_0_[8]\,
      I2 => r_output4_carry_i_12_n_0,
      I3 => \pix_r[3]_INST_0_i_31_n_0\,
      I4 => r_output2_i_11_n_0,
      I5 => r_output2_i_14_n_0,
      O => r_output4_carry_i_9_n_0
    );
\vcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      O => \vcount[0]_i_1_n_0\
    );
\vcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      I1 => \vcount_reg_n_0_[1]\,
      O => \vcount[1]_i_1_n_0\
    );
\vcount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      I1 => \vcount_reg_n_0_[1]\,
      I2 => \vcount_reg_n_0_[2]\,
      I3 => \vcount[7]_i_2_n_0\,
      O => \vcount[2]_i_1_n_0\
    );
\vcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \vcount_reg_n_0_[3]\,
      I1 => \vcount_reg_n_0_[2]\,
      I2 => \vcount_reg_n_0_[0]\,
      I3 => \vcount_reg_n_0_[1]\,
      O => \vcount[3]_i_1_n_0\
    );
\vcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \vcount_reg_n_0_[4]\,
      I1 => \vcount_reg_n_0_[3]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => \vcount_reg_n_0_[0]\,
      I4 => \vcount_reg_n_0_[2]\,
      O => \vcount[4]_i_1_n_0\
    );
\vcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1444CCCC4444CCCC"
    )
        port map (
      I0 => \vcount[7]_i_2_n_0\,
      I1 => \vcount_reg_n_0_[5]\,
      I2 => \vcount_reg_n_0_[4]\,
      I3 => \vcount_reg_n_0_[3]\,
      I4 => \vcount[6]_i_2_n_0\,
      I5 => \vcount_reg_n_0_[2]\,
      O => \vcount[5]_i_1_n_0\
    );
\vcount[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \vcount_reg_n_0_[6]\,
      I1 => \vcount_reg_n_0_[5]\,
      I2 => \vcount_reg_n_0_[4]\,
      I3 => \vcount_reg_n_0_[3]\,
      I4 => \vcount[6]_i_2_n_0\,
      I5 => \vcount_reg_n_0_[2]\,
      O => \vcount[6]_i_1_n_0\
    );
\vcount[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vcount_reg_n_0_[0]\,
      I1 => \vcount_reg_n_0_[1]\,
      O => \vcount[6]_i_2_n_0\
    );
\vcount[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F007F007F00"
    )
        port map (
      I0 => \vcount_reg_n_0_[1]\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \vcount[7]_i_2_n_0\,
      I3 => \vcount_reg_n_0_[7]\,
      I4 => \vcount[9]_i_3_n_0\,
      I5 => \vcount_reg_n_0_[6]\,
      O => \vcount[7]_i_1_n_0\
    );
\vcount[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \vcount[9]_i_5_n_0\,
      I1 => \vcount_reg_n_0_[6]\,
      I2 => \vcount_reg_n_0_[7]\,
      I3 => \vcount_reg_n_0_[9]\,
      I4 => \vcount_reg_n_0_[8]\,
      O => \vcount[7]_i_2_n_0\
    );
\vcount[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0770707070707070"
    )
        port map (
      I0 => \vcount[9]_i_4_n_0\,
      I1 => \vcount_reg_n_0_[9]\,
      I2 => \vcount_reg_n_0_[8]\,
      I3 => \vcount_reg_n_0_[6]\,
      I4 => \vcount[9]_i_3_n_0\,
      I5 => \vcount_reg_n_0_[7]\,
      O => \vcount[8]_i_1_n_0\
    );
\vcount[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \hcount[8]_i_2_n_0\,
      I1 => \hcount_reg_n_0_[9]\,
      I2 => \hcount_reg_n_0_[10]\,
      I3 => \hcount_reg_n_0_[7]\,
      I4 => \hcount_reg_n_0_[8]\,
      I5 => hsync_INST_0_i_1_n_0,
      O => vcount
    );
\vcount[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080007FFF8000"
    )
        port map (
      I0 => \vcount_reg_n_0_[7]\,
      I1 => \vcount[9]_i_3_n_0\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => \vcount_reg_n_0_[8]\,
      I4 => \vcount_reg_n_0_[9]\,
      I5 => \vcount[9]_i_4_n_0\,
      O => \vcount[9]_i_2_n_0\
    );
\vcount[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \vcount_reg_n_0_[2]\,
      I1 => \vcount_reg_n_0_[0]\,
      I2 => \vcount_reg_n_0_[1]\,
      I3 => \vcount_reg_n_0_[3]\,
      I4 => \vcount_reg_n_0_[4]\,
      I5 => \vcount_reg_n_0_[5]\,
      O => \vcount[9]_i_3_n_0\
    );
\vcount[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => r_output4_carry_i_11_n_0,
      I1 => \vcount_reg_n_0_[7]\,
      I2 => \vcount_reg_n_0_[6]\,
      I3 => \vcount_reg_n_0_[8]\,
      I4 => \vcount_reg_n_0_[1]\,
      I5 => \vcount[9]_i_5_n_0\,
      O => \vcount[9]_i_4_n_0\
    );
\vcount[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \vcount_reg_n_0_[5]\,
      I1 => \vcount_reg_n_0_[4]\,
      I2 => \vcount_reg_n_0_[3]\,
      I3 => \vcount_reg_n_0_[2]\,
      O => \vcount[9]_i_5_n_0\
    );
\vcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[0]_i_1_n_0\,
      Q => \vcount_reg_n_0_[0]\,
      R => '0'
    );
\vcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[1]_i_1_n_0\,
      Q => \vcount_reg_n_0_[1]\,
      R => '0'
    );
\vcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[2]_i_1_n_0\,
      Q => \vcount_reg_n_0_[2]\,
      R => '0'
    );
\vcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[3]_i_1_n_0\,
      Q => \vcount_reg_n_0_[3]\,
      R => '0'
    );
\vcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[4]_i_1_n_0\,
      Q => \vcount_reg_n_0_[4]\,
      R => '0'
    );
\vcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[5]_i_1_n_0\,
      Q => \vcount_reg_n_0_[5]\,
      R => '0'
    );
\vcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[6]_i_1_n_0\,
      Q => \vcount_reg_n_0_[6]\,
      R => '0'
    );
\vcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[7]_i_1_n_0\,
      Q => \vcount_reg_n_0_[7]\,
      R => '0'
    );
\vcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[8]_i_1_n_0\,
      Q => \vcount_reg_n_0_[8]\,
      R => '0'
    );
\vcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => vcount,
      D => \vcount[9]_i_2_n_0\,
      Q => \vcount_reg_n_0_[9]\,
      R => '0'
    );
vsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000111"
    )
        port map (
      I0 => vsync_INST_0_i_1_n_0,
      I1 => \vcount_reg_n_0_[3]\,
      I2 => \vcount_reg_n_0_[0]\,
      I3 => \vcount_reg_n_0_[1]\,
      I4 => \vcount_reg_n_0_[2]\,
      I5 => \vcount_reg_n_0_[4]\,
      O => vsync
    );
vsync_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \vcount_reg_n_0_[6]\,
      I1 => \vcount_reg_n_0_[7]\,
      I2 => \vcount_reg_n_0_[9]\,
      I3 => \vcount_reg_n_0_[5]\,
      I4 => \vcount_reg_n_0_[8]\,
      O => vsync_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity game_game_top_0_0_game_top is
  port (
    vsync : out STD_LOGIC;
    pix_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    col_sw : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of game_game_top_0_0_game_top : entity is "game_top";
end game_game_top_0_0_game_top;

architecture STRUCTURE of game_game_top_0_0_game_top is
  signal blkpos_x : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \blkpos_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_10_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_11_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_4_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_5_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_6_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_7_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_8_n_0\ : STD_LOGIC;
  signal \blkpos_x[10]_i_9_n_0\ : STD_LOGIC;
  signal \blkpos_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[1]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[2]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[2]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[3]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[3]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[4]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[4]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[4]_i_4_n_0\ : STD_LOGIC;
  signal \blkpos_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[5]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[6]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[6]_i_4_n_0\ : STD_LOGIC;
  signal \blkpos_x[7]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[7]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[8]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[8]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[8]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_x[9]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_x[9]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_x[9]_i_3_n_0\ : STD_LOGIC;
  signal blkpos_x_0 : STD_LOGIC;
  signal blkpos_y : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \blkpos_y[0]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[1]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[4]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[4]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_y[5]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_y[6]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[6]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_y[7]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[7]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_y[8]_i_1_n_0\ : STD_LOGIC;
  signal \blkpos_y[8]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_y[8]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_10_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_2_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_3_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_4_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_5_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_6_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_7_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_8_n_0\ : STD_LOGIC;
  signal \blkpos_y[9]_i_9_n_0\ : STD_LOGIC;
  signal blkpos_y_1 : STD_LOGIC;
  signal \clk_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clk_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[9]\ : STD_LOGIC;
  signal curr_x : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal curr_y : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal draw_module_n_0 : STD_LOGIC;
  signal draw_module_n_1 : STD_LOGIC;
  signal draw_module_n_12 : STD_LOGIC;
  signal draw_module_n_15 : STD_LOGIC;
  signal draw_module_n_16 : STD_LOGIC;
  signal draw_module_n_17 : STD_LOGIC;
  signal draw_module_n_18 : STD_LOGIC;
  signal draw_module_n_19 : STD_LOGIC;
  signal draw_module_n_2 : STD_LOGIC;
  signal draw_module_n_20 : STD_LOGIC;
  signal draw_module_n_3 : STD_LOGIC;
  signal draw_module_n_4 : STD_LOGIC;
  signal draw_module_n_5 : STD_LOGIC;
  signal draw_module_n_6 : STD_LOGIC;
  signal draw_module_n_7 : STD_LOGIC;
  signal draw_module_n_8 : STD_LOGIC;
  signal r_output1 : STD_LOGIC;
  signal slow_clk : STD_LOGIC;
  signal vga_controller_n_0 : STD_LOGIC;
  signal vga_controller_n_1 : STD_LOGIC;
  signal vga_controller_n_11 : STD_LOGIC;
  signal vga_controller_n_16 : STD_LOGIC;
  signal vga_controller_n_17 : STD_LOGIC;
  signal vga_controller_n_18 : STD_LOGIC;
  signal vga_controller_n_19 : STD_LOGIC;
  signal vga_controller_n_2 : STD_LOGIC;
  signal vga_controller_n_20 : STD_LOGIC;
  signal vga_controller_n_21 : STD_LOGIC;
  signal vga_controller_n_22 : STD_LOGIC;
  signal vga_controller_n_23 : STD_LOGIC;
  signal vga_controller_n_24 : STD_LOGIC;
  signal vga_controller_n_25 : STD_LOGIC;
  signal vga_controller_n_26 : STD_LOGIC;
  signal vga_controller_n_27 : STD_LOGIC;
  signal vga_controller_n_28 : STD_LOGIC;
  signal vga_controller_n_29 : STD_LOGIC;
  signal vga_controller_n_3 : STD_LOGIC;
  signal vga_controller_n_30 : STD_LOGIC;
  signal vga_controller_n_31 : STD_LOGIC;
  signal vga_controller_n_33 : STD_LOGIC;
  signal vga_controller_n_36 : STD_LOGIC;
  signal vga_controller_n_4 : STD_LOGIC;
  signal vga_controller_n_43 : STD_LOGIC;
  signal vga_controller_n_44 : STD_LOGIC;
  signal vga_controller_n_45 : STD_LOGIC;
  signal vga_controller_n_46 : STD_LOGIC;
  signal vga_controller_n_47 : STD_LOGIC;
  signal vga_controller_n_48 : STD_LOGIC;
  signal vga_controller_n_49 : STD_LOGIC;
  signal vga_controller_n_5 : STD_LOGIC;
  signal vga_controller_n_50 : STD_LOGIC;
  signal vga_controller_n_51 : STD_LOGIC;
  signal vga_controller_n_52 : STD_LOGIC;
  signal vga_controller_n_53 : STD_LOGIC;
  signal vga_controller_n_54 : STD_LOGIC;
  signal vga_controller_n_55 : STD_LOGIC;
  signal vga_controller_n_56 : STD_LOGIC;
  signal vga_controller_n_57 : STD_LOGIC;
  signal vga_controller_n_58 : STD_LOGIC;
  signal vga_controller_n_59 : STD_LOGIC;
  signal vga_controller_n_60 : STD_LOGIC;
  signal vga_controller_n_61 : STD_LOGIC;
  signal vga_controller_n_62 : STD_LOGIC;
  signal vga_controller_n_63 : STD_LOGIC;
  signal vga_controller_n_64 : STD_LOGIC;
  signal vga_controller_n_65 : STD_LOGIC;
  signal vga_controller_n_66 : STD_LOGIC;
  signal vga_controller_n_75 : STD_LOGIC;
  signal vga_controller_n_76 : STD_LOGIC;
  signal vga_controller_n_77 : STD_LOGIC;
  signal vga_controller_n_78 : STD_LOGIC;
  signal vga_controller_n_79 : STD_LOGIC;
  signal vga_controller_n_80 : STD_LOGIC;
  signal vga_controller_n_82 : STD_LOGIC;
  signal vga_controller_n_83 : STD_LOGIC;
  signal vga_controller_n_84 : STD_LOGIC;
  signal vga_controller_n_85 : STD_LOGIC;
  signal \NLW_clk_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \blkpos_x[10]_i_10\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \blkpos_x[10]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \blkpos_x[10]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \blkpos_x[10]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \blkpos_x[10]_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \blkpos_x[10]_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \blkpos_x[1]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \blkpos_x[2]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \blkpos_x[2]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \blkpos_x[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \blkpos_x[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \blkpos_x[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \blkpos_x[4]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \blkpos_x[4]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \blkpos_x[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \blkpos_x[5]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \blkpos_x[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \blkpos_x[8]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \blkpos_x[9]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \blkpos_y[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \blkpos_y[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \blkpos_y[4]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \blkpos_y[6]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \blkpos_y[8]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \blkpos_y[9]_i_10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \blkpos_y[9]_i_5\ : label is "soft_lutpair23";
begin
\blkpos_x[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFDFFFD"
    )
        port map (
      I0 => blkpos_x(0),
      I1 => sw(4),
      I2 => sw(0),
      I3 => sw(2),
      I4 => sw(3),
      I5 => sw(1),
      O => \blkpos_x[0]_i_1_n_0\
    );
\blkpos_x[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEAAFEFEFE"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      I2 => \blkpos_x[10]_i_3_n_0\,
      I3 => \blkpos_x[10]_i_4_n_0\,
      I4 => blkpos_x(10),
      I5 => \blkpos_x[10]_i_5_n_0\,
      O => blkpos_x_0
    );
\blkpos_x[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA80000"
    )
        port map (
      I0 => blkpos_x(2),
      I1 => blkpos_x(1),
      I2 => blkpos_x(0),
      I3 => blkpos_x(3),
      I4 => blkpos_x(4),
      O => \blkpos_x[10]_i_10_n_0\
    );
\blkpos_x[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => blkpos_x(7),
      I1 => blkpos_x(6),
      I2 => blkpos_x(9),
      I3 => blkpos_x(8),
      O => \blkpos_x[10]_i_11_n_0\
    );
\blkpos_x[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202AA02AA0202"
    )
        port map (
      I0 => \blkpos_x[10]_i_6_n_0\,
      I1 => sw(3),
      I2 => \blkpos_x[10]_i_7_n_0\,
      I3 => sw(1),
      I4 => \blkpos_x[10]_i_8_n_0\,
      I5 => blkpos_x(10),
      O => \blkpos_x[10]_i_2_n_0\
    );
\blkpos_x[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEF00EFEF0000"
    )
        port map (
      I0 => \blkpos_x[10]_i_9_n_0\,
      I1 => blkpos_x(4),
      I2 => \blkpos_x[4]_i_2_n_0\,
      I3 => sw(2),
      I4 => sw(3),
      I5 => sw(4),
      O => \blkpos_x[10]_i_3_n_0\
    );
\blkpos_x[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sw(4),
      I1 => sw(2),
      I2 => sw(3),
      O => \blkpos_x[10]_i_4_n_0\
    );
\blkpos_x[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001111111111111"
    )
        port map (
      I0 => blkpos_x(9),
      I1 => blkpos_x(8),
      I2 => blkpos_x(5),
      I3 => \blkpos_x[10]_i_10_n_0\,
      I4 => blkpos_x(6),
      I5 => blkpos_x(7),
      O => \blkpos_x[10]_i_5_n_0\
    );
\blkpos_x[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sw(2),
      I1 => sw(0),
      I2 => sw(4),
      O => \blkpos_x[10]_i_6_n_0\
    );
\blkpos_x[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5595555555555555"
    )
        port map (
      I0 => blkpos_x(10),
      I1 => blkpos_x(6),
      I2 => blkpos_x(7),
      I3 => \blkpos_x[6]_i_2_n_0\,
      I4 => blkpos_x(8),
      I5 => blkpos_x(9),
      O => \blkpos_x[10]_i_7_n_0\
    );
\blkpos_x[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => blkpos_x(8),
      I1 => blkpos_x(9),
      I2 => blkpos_x(6),
      I3 => blkpos_x(7),
      I4 => \blkpos_x[6]_i_3_n_0\,
      O => \blkpos_x[10]_i_8_n_0\
    );
\blkpos_x[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \blkpos_x[10]_i_11_n_0\,
      I1 => blkpos_x(5),
      I2 => blkpos_x(10),
      I3 => sw(2),
      I4 => sw(4),
      O => \blkpos_x[10]_i_9_n_0\
    );
\blkpos_x[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE2"
    )
        port map (
      I0 => sw(3),
      I1 => \blkpos_x[1]_i_2_n_0\,
      I2 => sw(1),
      I3 => sw(2),
      I4 => sw(4),
      I5 => sw(0),
      O => \blkpos_x[1]_i_1_n_0\
    );
\blkpos_x[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blkpos_x(0),
      I1 => blkpos_x(1),
      O => \blkpos_x[1]_i_2_n_0\
    );
\blkpos_x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"544CCFF5555FFFF5"
    )
        port map (
      I0 => \blkpos_x[2]_i_2_n_0\,
      I1 => sw(4),
      I2 => blkpos_x(0),
      I3 => blkpos_x(1),
      I4 => blkpos_x(2),
      I5 => \blkpos_x[2]_i_3_n_0\,
      O => \blkpos_x[2]_i_1_n_0\
    );
\blkpos_x[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sw(4),
      I1 => sw(2),
      I2 => sw(1),
      O => \blkpos_x[2]_i_2_n_0\
    );
\blkpos_x[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      O => \blkpos_x[2]_i_3_n_0\
    );
\blkpos_x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD07077DDDD7777"
    )
        port map (
      I0 => \blkpos_x[10]_i_4_n_0\,
      I1 => \blkpos_x[3]_i_2_n_0\,
      I2 => sw(4),
      I3 => \blkpos_x[3]_i_3_n_0\,
      I4 => blkpos_x(3),
      I5 => \blkpos_x[6]_i_4_n_0\,
      O => \blkpos_x[3]_i_1_n_0\
    );
\blkpos_x[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => blkpos_x(2),
      I1 => blkpos_x(1),
      I2 => blkpos_x(0),
      O => \blkpos_x[3]_i_2_n_0\
    );
\blkpos_x[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => blkpos_x(2),
      I1 => blkpos_x(1),
      I2 => blkpos_x(0),
      O => \blkpos_x[3]_i_3_n_0\
    );
\blkpos_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEBBE00BFFFFFFFF"
    )
        port map (
      I0 => sw(3),
      I1 => \blkpos_x[4]_i_2_n_0\,
      I2 => \blkpos_x[4]_i_3_n_0\,
      I3 => blkpos_x(4),
      I4 => sw(1),
      I5 => \blkpos_x[4]_i_4_n_0\,
      O => \blkpos_x[4]_i_1_n_0\
    );
\blkpos_x[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => blkpos_x(0),
      I1 => blkpos_x(1),
      I2 => blkpos_x(2),
      I3 => blkpos_x(3),
      O => \blkpos_x[4]_i_2_n_0\
    );
\blkpos_x[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => blkpos_x(2),
      O => \blkpos_x[4]_i_3_n_0\
    );
\blkpos_x[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(2),
      I1 => sw(4),
      O => \blkpos_x[4]_i_4_n_0\
    );
\blkpos_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD07077DDDD7777"
    )
        port map (
      I0 => \blkpos_x[10]_i_4_n_0\,
      I1 => \blkpos_x[5]_i_2_n_0\,
      I2 => sw(4),
      I3 => \blkpos_x[5]_i_3_n_0\,
      I4 => blkpos_x(5),
      I5 => \blkpos_x[6]_i_4_n_0\,
      O => \blkpos_x[5]_i_1_n_0\
    );
\blkpos_x[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5777FFFF"
    )
        port map (
      I0 => blkpos_x(3),
      I1 => blkpos_x(2),
      I2 => blkpos_x(1),
      I3 => blkpos_x(0),
      I4 => blkpos_x(4),
      O => \blkpos_x[5]_i_2_n_0\
    );
\blkpos_x[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
        port map (
      I0 => blkpos_x(4),
      I1 => blkpos_x(2),
      I2 => blkpos_x(1),
      I3 => blkpos_x(0),
      I4 => blkpos_x(3),
      O => \blkpos_x[5]_i_3_n_0\
    );
\blkpos_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD07077DDDD7777"
    )
        port map (
      I0 => \blkpos_x[10]_i_4_n_0\,
      I1 => \blkpos_x[6]_i_2_n_0\,
      I2 => sw(4),
      I3 => \blkpos_x[6]_i_3_n_0\,
      I4 => blkpos_x(6),
      I5 => \blkpos_x[6]_i_4_n_0\,
      O => \blkpos_x[6]_i_1_n_0\
    );
\blkpos_x[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557FFFFFFFFFFFFF"
    )
        port map (
      I0 => blkpos_x(4),
      I1 => blkpos_x(0),
      I2 => blkpos_x(1),
      I3 => blkpos_x(2),
      I4 => blkpos_x(3),
      I5 => blkpos_x(5),
      O => \blkpos_x[6]_i_2_n_0\
    );
\blkpos_x[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEEEEE"
    )
        port map (
      I0 => blkpos_x(5),
      I1 => blkpos_x(3),
      I2 => blkpos_x(0),
      I3 => blkpos_x(1),
      I4 => blkpos_x(2),
      I5 => blkpos_x(4),
      O => \blkpos_x[6]_i_3_n_0\
    );
\blkpos_x[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(2),
      I1 => sw(1),
      O => \blkpos_x[6]_i_4_n_0\
    );
\blkpos_x[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sw(4),
      I1 => sw(0),
      I2 => sw(2),
      I3 => \blkpos_x[7]_i_2_n_0\,
      O => \blkpos_x[7]_i_1_n_0\
    );
\blkpos_x[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFDEDE0FC00E0E"
    )
        port map (
      I0 => \blkpos_x[6]_i_3_n_0\,
      I1 => sw(1),
      I2 => blkpos_x(7),
      I3 => \blkpos_x[6]_i_2_n_0\,
      I4 => blkpos_x(6),
      I5 => sw(3),
      O => \blkpos_x[7]_i_2_n_0\
    );
\blkpos_x[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002AA02200220AA"
    )
        port map (
      I0 => \blkpos_x[10]_i_6_n_0\,
      I1 => sw(3),
      I2 => \blkpos_x[8]_i_2_n_0\,
      I3 => blkpos_x(8),
      I4 => sw(1),
      I5 => \blkpos_x[8]_i_3_n_0\,
      O => \blkpos_x[8]_i_1_n_0\
    );
\blkpos_x[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \blkpos_x[6]_i_2_n_0\,
      I1 => blkpos_x(7),
      I2 => blkpos_x(6),
      O => \blkpos_x[8]_i_2_n_0\
    );
\blkpos_x[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => blkpos_x(7),
      I1 => blkpos_x(6),
      I2 => \blkpos_x[6]_i_3_n_0\,
      O => \blkpos_x[8]_i_3_n_0\
    );
\blkpos_x[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFEFF"
    )
        port map (
      I0 => sw(4),
      I1 => sw(2),
      I2 => sw(3),
      I3 => blkpos_x(9),
      I4 => \blkpos_x[9]_i_2_n_0\,
      I5 => \blkpos_x[9]_i_3_n_0\,
      O => \blkpos_x[9]_i_1_n_0\
    );
\blkpos_x[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => blkpos_x(6),
      I1 => blkpos_x(7),
      I2 => \blkpos_x[6]_i_2_n_0\,
      I3 => blkpos_x(8),
      O => \blkpos_x[9]_i_2_n_0\
    );
\blkpos_x[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A28"
    )
        port map (
      I0 => \blkpos_x[2]_i_2_n_0\,
      I1 => blkpos_x(8),
      I2 => blkpos_x(9),
      I3 => blkpos_x(6),
      I4 => blkpos_x(7),
      I5 => \blkpos_x[6]_i_3_n_0\,
      O => \blkpos_x[9]_i_3_n_0\
    );
\blkpos_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[0]_i_1_n_0\,
      Q => blkpos_x(0),
      R => '0'
    );
\blkpos_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[10]_i_2_n_0\,
      Q => blkpos_x(10),
      R => '0'
    );
\blkpos_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[1]_i_1_n_0\,
      Q => blkpos_x(1),
      R => '0'
    );
\blkpos_x_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[2]_i_1_n_0\,
      Q => blkpos_x(2),
      S => sw(0)
    );
\blkpos_x_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[3]_i_1_n_0\,
      Q => blkpos_x(3),
      S => sw(0)
    );
\blkpos_x_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[4]_i_1_n_0\,
      Q => blkpos_x(4),
      S => sw(0)
    );
\blkpos_x_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[5]_i_1_n_0\,
      Q => blkpos_x(5),
      S => sw(0)
    );
\blkpos_x_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[6]_i_1_n_0\,
      Q => blkpos_x(6),
      S => sw(0)
    );
\blkpos_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[7]_i_1_n_0\,
      Q => blkpos_x(7),
      R => '0'
    );
\blkpos_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[8]_i_1_n_0\,
      Q => blkpos_x(8),
      R => '0'
    );
\blkpos_x_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_x_0,
      D => \blkpos_x[9]_i_1_n_0\,
      Q => blkpos_x(9),
      S => sw(0)
    );
\blkpos_y[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE8FFFFFFFF"
    )
        port map (
      I0 => sw(2),
      I1 => sw(1),
      I2 => sw(4),
      I3 => sw(3),
      I4 => sw(0),
      I5 => blkpos_y(0),
      O => \blkpos_y[0]_i_1_n_0\
    );
\blkpos_y[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => \blkpos_y[9]_i_5_n_0\,
      I1 => blkpos_y(1),
      I2 => blkpos_y(0),
      I3 => \blkpos_y[8]_i_2_n_0\,
      O => \blkpos_y[1]_i_1_n_0\
    );
\blkpos_y[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4331777D"
    )
        port map (
      I0 => \blkpos_y[9]_i_5_n_0\,
      I1 => blkpos_y(2),
      I2 => blkpos_y(0),
      I3 => blkpos_y(1),
      I4 => \blkpos_y[8]_i_2_n_0\,
      O => \blkpos_y[2]_i_1_n_0\
    );
\blkpos_y[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4443311177777DDD"
    )
        port map (
      I0 => \blkpos_y[8]_i_2_n_0\,
      I1 => blkpos_y(3),
      I2 => blkpos_y(1),
      I3 => blkpos_y(0),
      I4 => blkpos_y(2),
      I5 => \blkpos_y[9]_i_5_n_0\,
      O => \blkpos_y[3]_i_1_n_0\
    );
\blkpos_y[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF84848"
    )
        port map (
      I0 => \blkpos_y[4]_i_2_n_0\,
      I1 => \blkpos_y[9]_i_5_n_0\,
      I2 => blkpos_y(4),
      I3 => \blkpos_y[5]_i_2_n_0\,
      I4 => \blkpos_y[8]_i_2_n_0\,
      O => \blkpos_y[4]_i_1_n_0\
    );
\blkpos_y[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => blkpos_y(3),
      I1 => blkpos_y(1),
      I2 => blkpos_y(0),
      I3 => blkpos_y(2),
      O => \blkpos_y[4]_i_2_n_0\
    );
\blkpos_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF8F8F848484848"
    )
        port map (
      I0 => \blkpos_y[6]_i_2_n_0\,
      I1 => \blkpos_y[9]_i_5_n_0\,
      I2 => blkpos_y(5),
      I3 => blkpos_y(4),
      I4 => \blkpos_y[5]_i_2_n_0\,
      I5 => \blkpos_y[8]_i_2_n_0\,
      O => \blkpos_y[5]_i_1_n_0\
    );
\blkpos_y[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => blkpos_y(3),
      I1 => blkpos_y(1),
      I2 => blkpos_y(0),
      I3 => blkpos_y(2),
      O => \blkpos_y[5]_i_2_n_0\
    );
\blkpos_y[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FFFF40B040B040"
    )
        port map (
      I0 => blkpos_y(5),
      I1 => \blkpos_y[6]_i_2_n_0\,
      I2 => \blkpos_y[9]_i_5_n_0\,
      I3 => blkpos_y(6),
      I4 => \blkpos_y[7]_i_2_n_0\,
      I5 => \blkpos_y[8]_i_2_n_0\,
      O => \blkpos_y[6]_i_1_n_0\
    );
\blkpos_y[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000057"
    )
        port map (
      I0 => blkpos_y(2),
      I1 => blkpos_y(0),
      I2 => blkpos_y(1),
      I3 => blkpos_y(3),
      I4 => blkpos_y(4),
      O => \blkpos_y[6]_i_2_n_0\
    );
\blkpos_y[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D57F007FD57FD5"
    )
        port map (
      I0 => \blkpos_y[8]_i_2_n_0\,
      I1 => blkpos_y(6),
      I2 => \blkpos_y[7]_i_2_n_0\,
      I3 => blkpos_y(7),
      I4 => \blkpos_y[9]_i_4_n_0\,
      I5 => \blkpos_y[9]_i_5_n_0\,
      O => \blkpos_y[7]_i_1_n_0\
    );
\blkpos_y[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888800000000000"
    )
        port map (
      I0 => blkpos_y(4),
      I1 => blkpos_y(3),
      I2 => blkpos_y(1),
      I3 => blkpos_y(0),
      I4 => blkpos_y(2),
      I5 => blkpos_y(5),
      O => \blkpos_y[7]_i_2_n_0\
    );
\blkpos_y[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"700D70707D7D7D7D"
    )
        port map (
      I0 => \blkpos_y[8]_i_2_n_0\,
      I1 => \blkpos_y[8]_i_3_n_0\,
      I2 => blkpos_y(8),
      I3 => blkpos_y(7),
      I4 => \blkpos_y[9]_i_4_n_0\,
      I5 => \blkpos_y[9]_i_5_n_0\,
      O => \blkpos_y[8]_i_1_n_0\
    );
\blkpos_y[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000115"
    )
        port map (
      I0 => sw(2),
      I1 => sw(1),
      I2 => sw(4),
      I3 => sw(3),
      I4 => sw(0),
      O => \blkpos_y[8]_i_2_n_0\
    );
\blkpos_y[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => blkpos_y(6),
      I1 => blkpos_y(4),
      I2 => \blkpos_y[5]_i_2_n_0\,
      I3 => blkpos_y(5),
      I4 => blkpos_y(7),
      O => \blkpos_y[8]_i_3_n_0\
    );
\blkpos_y[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBA"
    )
        port map (
      I0 => sw(0),
      I1 => \blkpos_y[9]_i_3_n_0\,
      I2 => sw(4),
      I3 => sw(2),
      I4 => sw(3),
      O => blkpos_y_1
    );
\blkpos_y[9]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(3),
      I1 => sw(4),
      O => \blkpos_y[9]_i_10_n_0\
    );
\blkpos_y[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA9AA0000"
    )
        port map (
      I0 => blkpos_y(9),
      I1 => blkpos_y(7),
      I2 => blkpos_y(8),
      I3 => \blkpos_y[9]_i_4_n_0\,
      I4 => \blkpos_y[9]_i_5_n_0\,
      I5 => \blkpos_y[9]_i_6_n_0\,
      O => \blkpos_y[9]_i_2_n_0\
    );
\blkpos_y[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000020FF"
    )
        port map (
      I0 => blkpos_y(9),
      I1 => sw(3),
      I2 => \blkpos_y[9]_i_7_n_0\,
      I3 => sw(4),
      I4 => \blkpos_y[9]_i_8_n_0\,
      I5 => sw(1),
      O => \blkpos_y[9]_i_3_n_0\
    );
\blkpos_y[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => blkpos_y(6),
      I1 => blkpos_y(5),
      I2 => \blkpos_y[6]_i_2_n_0\,
      O => \blkpos_y[9]_i_4_n_0\
    );
\blkpos_y[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000017"
    )
        port map (
      I0 => sw(1),
      I1 => sw(3),
      I2 => sw(2),
      I3 => sw(0),
      I4 => sw(4),
      O => \blkpos_y[9]_i_5_n_0\
    );
\blkpos_y[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \blkpos_y[8]_i_2_n_0\,
      I1 => blkpos_y(7),
      I2 => \blkpos_y[7]_i_2_n_0\,
      I3 => blkpos_y(6),
      I4 => blkpos_y(8),
      I5 => blkpos_y(9),
      O => \blkpos_y[9]_i_6_n_0\
    );
\blkpos_y[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => blkpos_y(8),
      I1 => \blkpos_y[4]_i_2_n_0\,
      I2 => blkpos_y(7),
      I3 => blkpos_y(6),
      I4 => blkpos_y(5),
      I5 => blkpos_y(4),
      O => \blkpos_y[9]_i_7_n_0\
    );
\blkpos_y[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFE000000FE"
    )
        port map (
      I0 => \blkpos_y[9]_i_9_n_0\,
      I1 => blkpos_y(4),
      I2 => \blkpos_y[5]_i_2_n_0\,
      I3 => sw(3),
      I4 => sw(4),
      I5 => sw(2),
      O => \blkpos_y[9]_i_8_n_0\
    );
\blkpos_y[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => blkpos_y(7),
      I1 => blkpos_y(8),
      I2 => blkpos_y(9),
      I3 => blkpos_y(5),
      I4 => blkpos_y(6),
      I5 => \blkpos_y[9]_i_10_n_0\,
      O => \blkpos_y[9]_i_9_n_0\
    );
\blkpos_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[0]_i_1_n_0\,
      Q => blkpos_y(0),
      R => '0'
    );
\blkpos_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[1]_i_1_n_0\,
      Q => blkpos_y(1),
      R => '0'
    );
\blkpos_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[2]_i_1_n_0\,
      Q => blkpos_y(2),
      R => '0'
    );
\blkpos_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[3]_i_1_n_0\,
      Q => blkpos_y(3),
      R => '0'
    );
\blkpos_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[4]_i_1_n_0\,
      Q => blkpos_y(4),
      R => '0'
    );
\blkpos_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[5]_i_1_n_0\,
      Q => blkpos_y(5),
      R => '0'
    );
\blkpos_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[6]_i_1_n_0\,
      Q => blkpos_y(6),
      R => '0'
    );
\blkpos_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[7]_i_1_n_0\,
      Q => blkpos_y(7),
      R => '0'
    );
\blkpos_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[8]_i_1_n_0\,
      Q => blkpos_y(8),
      R => '0'
    );
\blkpos_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => blkpos_y_1,
      D => \blkpos_y[9]_i_2_n_0\,
      Q => blkpos_y(9),
      R => '0'
    );
\clk_count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      O => \clk_count[0]_i_2_n_0\
    );
\clk_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[0]_i_1_n_7\,
      Q => \clk_count_reg_n_0_[0]\,
      R => '0'
    );
\clk_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_count_reg[0]_i_1_n_0\,
      CO(2) => \clk_count_reg[0]_i_1_n_1\,
      CO(1) => \clk_count_reg[0]_i_1_n_2\,
      CO(0) => \clk_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_count_reg[0]_i_1_n_4\,
      O(2) => \clk_count_reg[0]_i_1_n_5\,
      O(1) => \clk_count_reg[0]_i_1_n_6\,
      O(0) => \clk_count_reg[0]_i_1_n_7\,
      S(3) => \clk_count_reg_n_0_[3]\,
      S(2) => \clk_count_reg_n_0_[2]\,
      S(1) => \clk_count_reg_n_0_[1]\,
      S(0) => \clk_count[0]_i_2_n_0\
    );
\clk_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[8]_i_1_n_5\,
      Q => \clk_count_reg_n_0_[10]\,
      R => '0'
    );
\clk_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[8]_i_1_n_4\,
      Q => \clk_count_reg_n_0_[11]\,
      R => '0'
    );
\clk_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[12]_i_1_n_7\,
      Q => \clk_count_reg_n_0_[12]\,
      R => '0'
    );
\clk_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_count_reg[8]_i_1_n_0\,
      CO(3) => \clk_count_reg[12]_i_1_n_0\,
      CO(2) => \clk_count_reg[12]_i_1_n_1\,
      CO(1) => \clk_count_reg[12]_i_1_n_2\,
      CO(0) => \clk_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_count_reg[12]_i_1_n_4\,
      O(2) => \clk_count_reg[12]_i_1_n_5\,
      O(1) => \clk_count_reg[12]_i_1_n_6\,
      O(0) => \clk_count_reg[12]_i_1_n_7\,
      S(3) => \clk_count_reg_n_0_[15]\,
      S(2) => \clk_count_reg_n_0_[14]\,
      S(1) => \clk_count_reg_n_0_[13]\,
      S(0) => \clk_count_reg_n_0_[12]\
    );
\clk_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[12]_i_1_n_6\,
      Q => \clk_count_reg_n_0_[13]\,
      R => '0'
    );
\clk_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[12]_i_1_n_5\,
      Q => \clk_count_reg_n_0_[14]\,
      R => '0'
    );
\clk_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[12]_i_1_n_4\,
      Q => \clk_count_reg_n_0_[15]\,
      R => '0'
    );
\clk_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[16]_i_1_n_7\,
      Q => \clk_count_reg_n_0_[16]\,
      R => '0'
    );
\clk_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_clk_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clk_count_reg[16]_i_1_n_1\,
      CO(1) => \clk_count_reg[16]_i_1_n_2\,
      CO(0) => \clk_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_count_reg[16]_i_1_n_4\,
      O(2) => \clk_count_reg[16]_i_1_n_5\,
      O(1) => \clk_count_reg[16]_i_1_n_6\,
      O(0) => \clk_count_reg[16]_i_1_n_7\,
      S(3) => slow_clk,
      S(2) => \clk_count_reg_n_0_[18]\,
      S(1) => \clk_count_reg_n_0_[17]\,
      S(0) => \clk_count_reg_n_0_[16]\
    );
\clk_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[16]_i_1_n_6\,
      Q => \clk_count_reg_n_0_[17]\,
      R => '0'
    );
\clk_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[16]_i_1_n_5\,
      Q => \clk_count_reg_n_0_[18]\,
      R => '0'
    );
\clk_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[16]_i_1_n_4\,
      Q => slow_clk,
      R => '0'
    );
\clk_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[0]_i_1_n_6\,
      Q => \clk_count_reg_n_0_[1]\,
      R => '0'
    );
\clk_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[0]_i_1_n_5\,
      Q => \clk_count_reg_n_0_[2]\,
      R => '0'
    );
\clk_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[0]_i_1_n_4\,
      Q => \clk_count_reg_n_0_[3]\,
      R => '0'
    );
\clk_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[4]_i_1_n_7\,
      Q => \clk_count_reg_n_0_[4]\,
      R => '0'
    );
\clk_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_count_reg[0]_i_1_n_0\,
      CO(3) => \clk_count_reg[4]_i_1_n_0\,
      CO(2) => \clk_count_reg[4]_i_1_n_1\,
      CO(1) => \clk_count_reg[4]_i_1_n_2\,
      CO(0) => \clk_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_count_reg[4]_i_1_n_4\,
      O(2) => \clk_count_reg[4]_i_1_n_5\,
      O(1) => \clk_count_reg[4]_i_1_n_6\,
      O(0) => \clk_count_reg[4]_i_1_n_7\,
      S(3) => \clk_count_reg_n_0_[7]\,
      S(2) => \clk_count_reg_n_0_[6]\,
      S(1) => \clk_count_reg_n_0_[5]\,
      S(0) => \clk_count_reg_n_0_[4]\
    );
\clk_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[4]_i_1_n_6\,
      Q => \clk_count_reg_n_0_[5]\,
      R => '0'
    );
\clk_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[4]_i_1_n_5\,
      Q => \clk_count_reg_n_0_[6]\,
      R => '0'
    );
\clk_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[4]_i_1_n_4\,
      Q => \clk_count_reg_n_0_[7]\,
      R => '0'
    );
\clk_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[8]_i_1_n_7\,
      Q => \clk_count_reg_n_0_[8]\,
      R => '0'
    );
\clk_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_count_reg[4]_i_1_n_0\,
      CO(3) => \clk_count_reg[8]_i_1_n_0\,
      CO(2) => \clk_count_reg[8]_i_1_n_1\,
      CO(1) => \clk_count_reg[8]_i_1_n_2\,
      CO(0) => \clk_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_count_reg[8]_i_1_n_4\,
      O(2) => \clk_count_reg[8]_i_1_n_5\,
      O(1) => \clk_count_reg[8]_i_1_n_6\,
      O(0) => \clk_count_reg[8]_i_1_n_7\,
      S(3) => \clk_count_reg_n_0_[11]\,
      S(2) => \clk_count_reg_n_0_[10]\,
      S(1) => \clk_count_reg_n_0_[9]\,
      S(0) => \clk_count_reg_n_0_[8]\
    );
\clk_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count_reg[8]_i_1_n_6\,
      Q => \clk_count_reg_n_0_[9]\,
      R => '0'
    );
draw_module: entity work.game_game_top_0_0_drawcon
     port map (
      C(9 downto 5) => curr_x(9 downto 5),
      C(4) => vga_controller_n_11,
      C(3 downto 0) => curr_x(3 downto 0),
      CO(0) => draw_module_n_0,
      DI(0) => vga_controller_n_33,
      Q(8 downto 0) => blkpos_y(8 downto 0),
      S(3) => vga_controller_n_0,
      S(2) => vga_controller_n_1,
      S(1) => vga_controller_n_2,
      S(0) => vga_controller_n_3,
      \_inferred__0/i__carry__0_0\(0) => vga_controller_n_5,
      \_inferred__0/i__carry__0_1\(3) => vga_controller_n_16,
      \_inferred__0/i__carry__0_1\(2) => vga_controller_n_17,
      \_inferred__0/i__carry__0_1\(1) => vga_controller_n_18,
      \_inferred__0/i__carry__0_1\(0) => vga_controller_n_19,
      \_inferred__0/i__carry__1_0\ => draw_module_n_12,
      \_inferred__0/i__carry__1_1\(3) => vga_controller_n_82,
      \_inferred__0/i__carry__1_1\(2) => vga_controller_n_83,
      \_inferred__0/i__carry__1_1\(1) => vga_controller_n_84,
      \_inferred__0/i__carry__1_1\(0) => vga_controller_n_85,
      blkpos_x(10 downto 0) => blkpos_x(10 downto 0),
      \blkpos_x_reg[0]\ => draw_module_n_19,
      \blkpos_x_reg[10]\ => draw_module_n_3,
      \blkpos_x_reg[3]\ => draw_module_n_4,
      \blkpos_x_reg[3]_0\ => draw_module_n_18,
      \blkpos_x_reg[6]\ => draw_module_n_2,
      \blkpos_x_reg[7]\ => draw_module_n_15,
      \blkpos_x_reg[8]\ => draw_module_n_17,
      \blkpos_x_reg[9]\ => draw_module_n_16,
      \blkpos_y_reg[1]\ => draw_module_n_8,
      \blkpos_y_reg[3]\ => draw_module_n_7,
      \blkpos_y_reg[3]_0\ => draw_module_n_20,
      \blkpos_y_reg[5]\ => draw_module_n_6,
      \blkpos_y_reg[6]\ => draw_module_n_5,
      \blkpos_y_reg[8]\(0) => draw_module_n_1,
      col_sw(3 downto 2) => col_sw(11 downto 10),
      col_sw(1 downto 0) => col_sw(3 downto 2),
      curr_y(7 downto 1) => curr_y(9 downto 3),
      curr_y(0) => curr_y(1),
      pix_b(1 downto 0) => pix_b(3 downto 2),
      \pix_b[0]\(1) => vga_controller_n_77,
      \pix_b[0]\(0) => vga_controller_n_78,
      \pix_b[0]_0\(1) => vga_controller_n_79,
      \pix_b[0]_0\(0) => vga_controller_n_80,
      \pix_b[0]_1\(0) => vga_controller_n_76,
      \pix_b[0]_2\(0) => vga_controller_n_75,
      \pix_b[2]\ => vga_controller_n_36,
      \pix_b[2]_0\ => vga_controller_n_4,
      pix_r(1 downto 0) => pix_r(3 downto 2),
      \pix_r[3]_INST_0_i_3_0\(1) => vga_controller_n_26,
      \pix_r[3]_INST_0_i_3_0\(0) => vga_controller_n_27,
      \pix_r[3]_INST_0_i_3_1\(1) => vga_controller_n_30,
      \pix_r[3]_INST_0_i_3_1\(0) => vga_controller_n_31,
      \pix_r[3]_INST_0_i_3_2\(1) => vga_controller_n_28,
      \pix_r[3]_INST_0_i_3_2\(0) => vga_controller_n_29,
      r_output1 => r_output1,
      r_output2_0(3) => vga_controller_n_20,
      r_output2_0(2) => vga_controller_n_21,
      r_output2_0(1) => vga_controller_n_22,
      r_output2_0(0) => vga_controller_n_23,
      r_output2_1(1) => vga_controller_n_24,
      r_output2_1(0) => vga_controller_n_25,
      \r_output2_inferred__0/i__carry__0_0\(3) => vga_controller_n_55,
      \r_output2_inferred__0/i__carry__0_0\(2) => vga_controller_n_56,
      \r_output2_inferred__0/i__carry__0_0\(1) => vga_controller_n_57,
      \r_output2_inferred__0/i__carry__0_0\(0) => vga_controller_n_58,
      \r_output2_inferred__0/i__carry__0_1\(3) => vga_controller_n_51,
      \r_output2_inferred__0/i__carry__0_1\(2) => vga_controller_n_52,
      \r_output2_inferred__0/i__carry__0_1\(1) => vga_controller_n_53,
      \r_output2_inferred__0/i__carry__0_1\(0) => vga_controller_n_54,
      \r_output3_carry__0_0\(3) => vga_controller_n_63,
      \r_output3_carry__0_0\(2) => vga_controller_n_64,
      \r_output3_carry__0_0\(1) => vga_controller_n_65,
      \r_output3_carry__0_0\(0) => vga_controller_n_66,
      \r_output3_carry__0_1\(3) => vga_controller_n_59,
      \r_output3_carry__0_1\(2) => vga_controller_n_60,
      \r_output3_carry__0_1\(1) => vga_controller_n_61,
      \r_output3_carry__0_1\(0) => vga_controller_n_62,
      \r_output4_inferred__0/i__carry__0_0\(3) => vga_controller_n_47,
      \r_output4_inferred__0/i__carry__0_0\(2) => vga_controller_n_48,
      \r_output4_inferred__0/i__carry__0_0\(1) => vga_controller_n_49,
      \r_output4_inferred__0/i__carry__0_0\(0) => vga_controller_n_50,
      \r_output4_inferred__0/i__carry__0_1\(3) => vga_controller_n_43,
      \r_output4_inferred__0/i__carry__0_1\(2) => vga_controller_n_44,
      \r_output4_inferred__0/i__carry__0_1\(1) => vga_controller_n_45,
      \r_output4_inferred__0/i__carry__0_1\(0) => vga_controller_n_46
    );
vga_controller: entity work.game_game_top_0_0_vga_out
     port map (
      C(9 downto 5) => curr_x(9 downto 5),
      C(4) => vga_controller_n_11,
      C(3 downto 0) => curr_x(3 downto 0),
      CO(0) => draw_module_n_0,
      DI(0) => vga_controller_n_33,
      Q(9 downto 0) => blkpos_y(9 downto 0),
      S(3) => vga_controller_n_0,
      S(2) => vga_controller_n_1,
      S(1) => vga_controller_n_2,
      S(0) => vga_controller_n_3,
      \_inferred__0/i__carry\ => draw_module_n_8,
      \_inferred__0/i__carry__0\ => draw_module_n_20,
      \_inferred__0/i__carry__0_0\ => draw_module_n_6,
      \_inferred__0/i__carry__1\ => draw_module_n_7,
      \_inferred__0/i__carry__1_0\ => draw_module_n_5,
      blkpos_x(10 downto 0) => blkpos_x(10 downto 0),
      \blkpos_x_reg[10]\(1) => vga_controller_n_79,
      \blkpos_x_reg[10]\(0) => vga_controller_n_80,
      \blkpos_x_reg[6]\(3) => vga_controller_n_51,
      \blkpos_x_reg[6]\(2) => vga_controller_n_52,
      \blkpos_x_reg[6]\(1) => vga_controller_n_53,
      \blkpos_x_reg[6]\(0) => vga_controller_n_54,
      \blkpos_x_reg[7]\(3) => vga_controller_n_63,
      \blkpos_x_reg[7]\(2) => vga_controller_n_64,
      \blkpos_x_reg[7]\(1) => vga_controller_n_65,
      \blkpos_x_reg[7]\(0) => vga_controller_n_66,
      \blkpos_y_reg[7]\(3) => vga_controller_n_47,
      \blkpos_y_reg[7]\(2) => vga_controller_n_48,
      \blkpos_y_reg[7]\(1) => vga_controller_n_49,
      \blkpos_y_reg[7]\(0) => vga_controller_n_50,
      \blkpos_y_reg[8]\(0) => vga_controller_n_76,
      \blkpos_y_reg[9]\(1) => vga_controller_n_24,
      \blkpos_y_reg[9]\(0) => vga_controller_n_25,
      clk => clk,
      col_sw(7 downto 2) => col_sw(9 downto 4),
      col_sw(1 downto 0) => col_sw(1 downto 0),
      curr_y(7 downto 1) => curr_y(9 downto 3),
      curr_y(0) => curr_y(1),
      \hcount_reg[10]_0\ => vga_controller_n_36,
      \hcount_reg[7]_0\(3) => vga_controller_n_55,
      \hcount_reg[7]_0\(2) => vga_controller_n_56,
      \hcount_reg[7]_0\(1) => vga_controller_n_57,
      \hcount_reg[7]_0\(0) => vga_controller_n_58,
      \hcount_reg[7]_1\(3) => vga_controller_n_59,
      \hcount_reg[7]_1\(2) => vga_controller_n_60,
      \hcount_reg[7]_1\(1) => vga_controller_n_61,
      \hcount_reg[7]_1\(0) => vga_controller_n_62,
      \hcount_reg[8]_0\ => vga_controller_n_4,
      \hcount_reg[9]_0\(1) => vga_controller_n_28,
      \hcount_reg[9]_0\(0) => vga_controller_n_29,
      \hcount_reg[9]_1\(1) => vga_controller_n_30,
      \hcount_reg[9]_1\(0) => vga_controller_n_31,
      \hcount_reg[9]_2\(1) => vga_controller_n_77,
      \hcount_reg[9]_2\(0) => vga_controller_n_78,
      hsync => hsync,
      \i__carry_i_5__0_0\ => draw_module_n_15,
      pix_b(1 downto 0) => pix_b(1 downto 0),
      \pix_b[0]\(0) => draw_module_n_1,
      \pix_b[0]_0\ => draw_module_n_12,
      pix_g(3 downto 0) => pix_g(3 downto 0),
      pix_r(1 downto 0) => pix_r(1 downto 0),
      r_output1 => r_output1,
      \r_output2_inferred__0/i__carry\ => draw_module_n_18,
      \r_output2_inferred__0/i__carry_0\ => draw_module_n_2,
      \r_output2_inferred__0/i__carry_1\ => draw_module_n_4,
      \r_output2_inferred__0/i__carry_2\ => draw_module_n_19,
      \r_output2_inferred__0/i__carry__0\ => draw_module_n_3,
      \r_output2_inferred__0/i__carry__0_0\ => draw_module_n_16,
      \r_output2_inferred__0/i__carry__0_1\ => draw_module_n_17,
      \vcount_reg[0]_0\(0) => vga_controller_n_5,
      \vcount_reg[3]_0\(3) => vga_controller_n_16,
      \vcount_reg[3]_0\(2) => vga_controller_n_17,
      \vcount_reg[3]_0\(1) => vga_controller_n_18,
      \vcount_reg[3]_0\(0) => vga_controller_n_19,
      \vcount_reg[7]_0\(3) => vga_controller_n_20,
      \vcount_reg[7]_0\(2) => vga_controller_n_21,
      \vcount_reg[7]_0\(1) => vga_controller_n_22,
      \vcount_reg[7]_0\(0) => vga_controller_n_23,
      \vcount_reg[7]_1\(3) => vga_controller_n_43,
      \vcount_reg[7]_1\(2) => vga_controller_n_44,
      \vcount_reg[7]_1\(1) => vga_controller_n_45,
      \vcount_reg[7]_1\(0) => vga_controller_n_46,
      \vcount_reg[7]_2\(3) => vga_controller_n_82,
      \vcount_reg[7]_2\(2) => vga_controller_n_83,
      \vcount_reg[7]_2\(1) => vga_controller_n_84,
      \vcount_reg[7]_2\(0) => vga_controller_n_85,
      \vcount_reg[9]_0\(1) => vga_controller_n_26,
      \vcount_reg[9]_0\(0) => vga_controller_n_27,
      \vcount_reg[9]_1\(0) => vga_controller_n_75,
      vsync => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity game_game_top_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of game_game_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of game_game_top_0_0 : entity is "game_game_top_0_0,game_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of game_game_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of game_game_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of game_game_top_0_0 : entity is "game_top,Vivado 2019.1";
end game_game_top_0_0;

architecture STRUCTURE of game_game_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 83455882, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.game_game_top_0_0_game_top
     port map (
      clk => clk,
      col_sw(11 downto 0) => col_sw(11 downto 0),
      hsync => hsync,
      pix_b(3 downto 0) => pix_b(3 downto 0),
      pix_g(3 downto 0) => pix_g(3 downto 0),
      pix_r(3 downto 0) => pix_r(3 downto 0),
      sw(4 downto 0) => sw(4 downto 0),
      vsync => vsync
    );
end STRUCTURE;
