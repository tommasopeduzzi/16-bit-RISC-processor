-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Aug 20 10:24:02 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top tdp11_control_0_0 -prefix
--               tdp11_control_0_0_ tdp11_control_0_0_sim_netlist.vhdl
-- Design      : tdp11_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_control_0_0_control is
  port (
    pc_inc : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end tdp11_control_0_0_control;

architecture STRUCTURE of tdp11_control_0_0_control is
  signal \^pc_inc\ : STD_LOGIC;
  signal pc_inc_0 : STD_LOGIC;
  signal pc_inc_i_1_n_0 : STD_LOGIC;
  signal pc_inc_i_3_n_0 : STD_LOGIC;
  signal pc_inc_i_4_n_0 : STD_LOGIC;
  signal pc_inc_i_5_n_0 : STD_LOGIC;
  signal pc_inc_i_6_n_0 : STD_LOGIC;
  signal pc_inc_i_7_n_0 : STD_LOGIC;
  signal \step[0]_i_2_n_0\ : STD_LOGIC;
  signal step_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \step_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \step_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_step_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_step_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \step_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \step_reg[8]_i_1\ : label is 11;
begin
  pc_inc <= \^pc_inc\;
pc_inc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_inc\,
      I1 => rst,
      I2 => pc_inc_0,
      O => pc_inc_i_1_n_0
    );
pc_inc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => pc_inc_i_3_n_0,
      I1 => pc_inc_i_4_n_0,
      I2 => pc_inc_i_5_n_0,
      I3 => pc_inc_i_6_n_0,
      I4 => step_reg(0),
      I5 => pc_inc_i_7_n_0,
      O => pc_inc_0
    );
pc_inc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => step_reg(27),
      I1 => step_reg(28),
      I2 => step_reg(25),
      I3 => step_reg(26),
      I4 => step_reg(30),
      I5 => step_reg(29),
      O => pc_inc_i_3_n_0
    );
pc_inc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => step_reg(9),
      I1 => step_reg(10),
      I2 => step_reg(7),
      I3 => step_reg(8),
      I4 => step_reg(12),
      I5 => step_reg(11),
      O => pc_inc_i_4_n_0
    );
pc_inc_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => step_reg(3),
      I1 => step_reg(4),
      I2 => step_reg(1),
      I3 => step_reg(2),
      I4 => step_reg(6),
      I5 => step_reg(5),
      O => pc_inc_i_5_n_0
    );
pc_inc_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => step_reg(21),
      I1 => step_reg(22),
      I2 => step_reg(19),
      I3 => step_reg(20),
      I4 => step_reg(24),
      I5 => step_reg(23),
      O => pc_inc_i_6_n_0
    );
pc_inc_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => step_reg(15),
      I1 => step_reg(16),
      I2 => step_reg(13),
      I3 => step_reg(14),
      I4 => step_reg(18),
      I5 => step_reg(17),
      O => pc_inc_i_7_n_0
    );
pc_inc_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => pc_inc_i_1_n_0,
      Q => \^pc_inc\,
      R => '0'
    );
\step[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => step_reg(0),
      O => \step[0]_i_2_n_0\
    );
\step_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[0]_i_1_n_7\,
      Q => step_reg(0)
    );
\step_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \step_reg[0]_i_1_n_0\,
      CO(2) => \step_reg[0]_i_1_n_1\,
      CO(1) => \step_reg[0]_i_1_n_2\,
      CO(0) => \step_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \step_reg[0]_i_1_n_4\,
      O(2) => \step_reg[0]_i_1_n_5\,
      O(1) => \step_reg[0]_i_1_n_6\,
      O(0) => \step_reg[0]_i_1_n_7\,
      S(3 downto 1) => step_reg(3 downto 1),
      S(0) => \step[0]_i_2_n_0\
    );
\step_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[8]_i_1_n_5\,
      Q => step_reg(10)
    );
\step_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[8]_i_1_n_4\,
      Q => step_reg(11)
    );
\step_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[12]_i_1_n_7\,
      Q => step_reg(12)
    );
\step_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[8]_i_1_n_0\,
      CO(3) => \step_reg[12]_i_1_n_0\,
      CO(2) => \step_reg[12]_i_1_n_1\,
      CO(1) => \step_reg[12]_i_1_n_2\,
      CO(0) => \step_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_reg[12]_i_1_n_4\,
      O(2) => \step_reg[12]_i_1_n_5\,
      O(1) => \step_reg[12]_i_1_n_6\,
      O(0) => \step_reg[12]_i_1_n_7\,
      S(3 downto 0) => step_reg(15 downto 12)
    );
\step_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[12]_i_1_n_6\,
      Q => step_reg(13)
    );
\step_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[12]_i_1_n_5\,
      Q => step_reg(14)
    );
\step_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[12]_i_1_n_4\,
      Q => step_reg(15)
    );
\step_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[16]_i_1_n_7\,
      Q => step_reg(16)
    );
\step_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[12]_i_1_n_0\,
      CO(3) => \step_reg[16]_i_1_n_0\,
      CO(2) => \step_reg[16]_i_1_n_1\,
      CO(1) => \step_reg[16]_i_1_n_2\,
      CO(0) => \step_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_reg[16]_i_1_n_4\,
      O(2) => \step_reg[16]_i_1_n_5\,
      O(1) => \step_reg[16]_i_1_n_6\,
      O(0) => \step_reg[16]_i_1_n_7\,
      S(3 downto 0) => step_reg(19 downto 16)
    );
\step_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[16]_i_1_n_6\,
      Q => step_reg(17)
    );
\step_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[16]_i_1_n_5\,
      Q => step_reg(18)
    );
\step_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[16]_i_1_n_4\,
      Q => step_reg(19)
    );
\step_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[0]_i_1_n_6\,
      Q => step_reg(1)
    );
\step_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[20]_i_1_n_7\,
      Q => step_reg(20)
    );
\step_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[16]_i_1_n_0\,
      CO(3) => \step_reg[20]_i_1_n_0\,
      CO(2) => \step_reg[20]_i_1_n_1\,
      CO(1) => \step_reg[20]_i_1_n_2\,
      CO(0) => \step_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_reg[20]_i_1_n_4\,
      O(2) => \step_reg[20]_i_1_n_5\,
      O(1) => \step_reg[20]_i_1_n_6\,
      O(0) => \step_reg[20]_i_1_n_7\,
      S(3 downto 0) => step_reg(23 downto 20)
    );
\step_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[20]_i_1_n_6\,
      Q => step_reg(21)
    );
\step_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[20]_i_1_n_5\,
      Q => step_reg(22)
    );
\step_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[20]_i_1_n_4\,
      Q => step_reg(23)
    );
\step_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[24]_i_1_n_7\,
      Q => step_reg(24)
    );
\step_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[20]_i_1_n_0\,
      CO(3) => \step_reg[24]_i_1_n_0\,
      CO(2) => \step_reg[24]_i_1_n_1\,
      CO(1) => \step_reg[24]_i_1_n_2\,
      CO(0) => \step_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_reg[24]_i_1_n_4\,
      O(2) => \step_reg[24]_i_1_n_5\,
      O(1) => \step_reg[24]_i_1_n_6\,
      O(0) => \step_reg[24]_i_1_n_7\,
      S(3 downto 0) => step_reg(27 downto 24)
    );
\step_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[24]_i_1_n_6\,
      Q => step_reg(25)
    );
\step_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[24]_i_1_n_5\,
      Q => step_reg(26)
    );
\step_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[24]_i_1_n_4\,
      Q => step_reg(27)
    );
\step_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[28]_i_1_n_7\,
      Q => step_reg(28)
    );
\step_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_step_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \step_reg[28]_i_1_n_2\,
      CO(0) => \step_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_step_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \step_reg[28]_i_1_n_5\,
      O(1) => \step_reg[28]_i_1_n_6\,
      O(0) => \step_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => step_reg(30 downto 28)
    );
\step_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[28]_i_1_n_6\,
      Q => step_reg(29)
    );
\step_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[0]_i_1_n_5\,
      Q => step_reg(2)
    );
\step_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[28]_i_1_n_5\,
      Q => step_reg(30)
    );
\step_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[0]_i_1_n_4\,
      Q => step_reg(3)
    );
\step_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[4]_i_1_n_7\,
      Q => step_reg(4)
    );
\step_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[0]_i_1_n_0\,
      CO(3) => \step_reg[4]_i_1_n_0\,
      CO(2) => \step_reg[4]_i_1_n_1\,
      CO(1) => \step_reg[4]_i_1_n_2\,
      CO(0) => \step_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_reg[4]_i_1_n_4\,
      O(2) => \step_reg[4]_i_1_n_5\,
      O(1) => \step_reg[4]_i_1_n_6\,
      O(0) => \step_reg[4]_i_1_n_7\,
      S(3 downto 0) => step_reg(7 downto 4)
    );
\step_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[4]_i_1_n_6\,
      Q => step_reg(5)
    );
\step_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[4]_i_1_n_5\,
      Q => step_reg(6)
    );
\step_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[4]_i_1_n_4\,
      Q => step_reg(7)
    );
\step_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[8]_i_1_n_7\,
      Q => step_reg(8)
    );
\step_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_reg[4]_i_1_n_0\,
      CO(3) => \step_reg[8]_i_1_n_0\,
      CO(2) => \step_reg[8]_i_1_n_1\,
      CO(1) => \step_reg[8]_i_1_n_2\,
      CO(0) => \step_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_reg[8]_i_1_n_4\,
      O(2) => \step_reg[8]_i_1_n_5\,
      O(1) => \step_reg[8]_i_1_n_6\,
      O(0) => \step_reg[8]_i_1_n_7\,
      S(3 downto 0) => step_reg(11 downto 8)
    );
\step_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \step_reg[8]_i_1_n_6\,
      Q => step_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_control_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    z : in STD_LOGIC;
    g : in STD_LOGIC;
    l : in STD_LOGIC;
    c : in STD_LOGIC;
    mem_we : out STD_LOGIC;
    pc_inc : out STD_LOGIC;
    pc_load : out STD_LOGIC;
    sp_inc : out STD_LOGIC;
    sp_decr : out STD_LOGIC;
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_we : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_we_l : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_we_m : out STD_LOGIC_VECTOR ( 2 downto 0 );
    main_alu_sel : out STD_LOGIC;
    main_mem_sel : out STD_LOGIC;
    main_control_sel : out STD_LOGIC;
    main_reg_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    main_reg_l_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    main_reg_m_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    addr_pc_sel : out STD_LOGIC;
    addr_sp_sel : out STD_LOGIC;
    addr_reg_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    addr_control_sel : out STD_LOGIC;
    alu_rhs_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    alu_lhs_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    output_imm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    current_opcode : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tdp11_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tdp11_control_0_0 : entity is "tdp11_control_0_0,control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tdp11_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tdp11_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of tdp11_control_0_0 : entity is "control,Vivado 2022.1";
end tdp11_control_0_0;

architecture STRUCTURE of tdp11_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addr_control_sel <= \<const0>\;
  addr_pc_sel <= \<const0>\;
  addr_reg_sel(2) <= \<const0>\;
  addr_reg_sel(1) <= \<const0>\;
  addr_reg_sel(0) <= \<const0>\;
  addr_sp_sel <= \<const0>\;
  alu_lhs_sel(2) <= \<const0>\;
  alu_lhs_sel(1) <= \<const0>\;
  alu_lhs_sel(0) <= \<const0>\;
  alu_op(3) <= \<const0>\;
  alu_op(2) <= \<const0>\;
  alu_op(1) <= \<const0>\;
  alu_op(0) <= \<const0>\;
  alu_rhs_sel(2) <= \<const0>\;
  alu_rhs_sel(1) <= \<const0>\;
  alu_rhs_sel(0) <= \<const0>\;
  current_opcode(5) <= \<const0>\;
  current_opcode(4) <= \<const0>\;
  current_opcode(3) <= \<const0>\;
  current_opcode(2) <= \<const0>\;
  current_opcode(1) <= \<const0>\;
  current_opcode(0) <= \<const0>\;
  main_alu_sel <= \<const0>\;
  main_control_sel <= \<const0>\;
  main_mem_sel <= \<const0>\;
  main_reg_l_sel(2) <= \<const0>\;
  main_reg_l_sel(1) <= \<const0>\;
  main_reg_l_sel(0) <= \<const0>\;
  main_reg_m_sel(2) <= \<const0>\;
  main_reg_m_sel(1) <= \<const0>\;
  main_reg_m_sel(0) <= \<const0>\;
  main_reg_sel(2) <= \<const0>\;
  main_reg_sel(1) <= \<const0>\;
  main_reg_sel(0) <= \<const0>\;
  mem_we <= \<const0>\;
  output_imm(15) <= \<const0>\;
  output_imm(14) <= \<const0>\;
  output_imm(13) <= \<const0>\;
  output_imm(12) <= \<const0>\;
  output_imm(11) <= \<const0>\;
  output_imm(10) <= \<const0>\;
  output_imm(9) <= \<const0>\;
  output_imm(8) <= \<const0>\;
  output_imm(7) <= \<const0>\;
  output_imm(6) <= \<const0>\;
  output_imm(5) <= \<const0>\;
  output_imm(4) <= \<const0>\;
  output_imm(3) <= \<const0>\;
  output_imm(2) <= \<const0>\;
  output_imm(1) <= \<const0>\;
  output_imm(0) <= \<const0>\;
  pc_load <= \<const0>\;
  reg_we(2) <= \<const0>\;
  reg_we(1) <= \<const0>\;
  reg_we(0) <= \<const0>\;
  reg_we_l(2) <= \<const0>\;
  reg_we_l(1) <= \<const0>\;
  reg_we_l(0) <= \<const0>\;
  reg_we_m(2) <= \<const0>\;
  reg_we_m(1) <= \<const0>\;
  reg_we_m(0) <= \<const0>\;
  sp_decr <= \<const0>\;
  sp_inc <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.tdp11_control_0_0_control
     port map (
      clk => clk,
      pc_inc => pc_inc,
      rst => rst
    );
end STRUCTURE;
