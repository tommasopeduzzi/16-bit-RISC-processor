-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 20:54:10 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top tdp11_reg_0_7 -prefix
--               tdp11_reg_0_7_ tdp11_reg_0_0_sim_netlist.vhdl
-- Design      : tdp11_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_reg_0_7_reg is
  port (
    output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end tdp11_reg_0_7_reg;

architecture STRUCTURE of tdp11_reg_0_7_reg is
  signal \output[15]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal value : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
\output[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \output[15]_i_1_n_0\
    );
\output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(0),
      Q => output(0),
      R => '0'
    );
\output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(10),
      Q => output(10),
      R => '0'
    );
\output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(11),
      Q => output(11),
      R => '0'
    );
\output_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(12),
      Q => output(12),
      R => '0'
    );
\output_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(13),
      Q => output(13),
      R => '0'
    );
\output_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(14),
      Q => output(14),
      R => '0'
    );
\output_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(15),
      Q => output(15),
      R => '0'
    );
\output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(1),
      Q => output(1),
      R => '0'
    );
\output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(2),
      Q => output(2),
      R => '0'
    );
\output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(3),
      Q => output(3),
      R => '0'
    );
\output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(4),
      Q => output(4),
      R => '0'
    );
\output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(5),
      Q => output(5),
      R => '0'
    );
\output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(6),
      Q => output(6),
      R => '0'
    );
\output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(7),
      Q => output(7),
      R => '0'
    );
\output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(8),
      Q => output(8),
      R => '0'
    );
\output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \output[15]_i_1_n_0\,
      D => value(9),
      Q => output(9),
      R => '0'
    );
\value[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => we,
      I1 => we_m,
      I2 => we_l,
      O => p_0_in(15)
    );
\value[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => we,
      I1 => we_m,
      O => p_0_in(7)
    );
\value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(0),
      Q => value(0)
    );
\value_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(10),
      Q => value(10)
    );
\value_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(11),
      Q => value(11)
    );
\value_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(12),
      Q => value(12)
    );
\value_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(13),
      Q => value(13)
    );
\value_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(14),
      Q => value(14)
    );
\value_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(15),
      Q => value(15)
    );
\value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(1),
      Q => value(1)
    );
\value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(2),
      Q => value(2)
    );
\value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(3),
      Q => value(3)
    );
\value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(4),
      Q => value(4)
    );
\value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(5),
      Q => value(5)
    );
\value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(6),
      Q => value(6)
    );
\value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(7),
      CLR => rst,
      D => input(7),
      Q => value(7)
    );
\value_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(8),
      Q => value(8)
    );
\value_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in(15),
      CLR => rst,
      D => input(9),
      Q => value(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_reg_0_7 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tdp11_reg_0_7 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tdp11_reg_0_7 : entity is "tdp11_reg_0_0,reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tdp11_reg_0_7 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tdp11_reg_0_7 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of tdp11_reg_0_7 : entity is "reg,Vivado 2022.1";
end tdp11_reg_0_7;

architecture STRUCTURE of tdp11_reg_0_7 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.tdp11_reg_0_7_reg
     port map (
      clk => clk,
      input(15 downto 0) => input(15 downto 0),
      output(15 downto 0) => output(15 downto 0),
      rst => rst,
      we => we,
      we_l => we_l,
      we_m => we_m
    );
end STRUCTURE;
