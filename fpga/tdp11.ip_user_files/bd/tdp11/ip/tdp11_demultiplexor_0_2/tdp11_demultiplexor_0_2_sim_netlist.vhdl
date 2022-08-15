-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 21:12:22 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_demultiplexor_0_2/tdp11_demultiplexor_0_2_sim_netlist.vhdl
-- Design      : tdp11_demultiplexor_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_demultiplexor_0_2_demultiplexor is
  port (
    r0 : out STD_LOGIC;
    r1 : out STD_LOGIC;
    r2 : out STD_LOGIC;
    r3 : out STD_LOGIC;
    r4 : out STD_LOGIC;
    r5 : out STD_LOGIC;
    r6 : out STD_LOGIC;
    r7 : out STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tdp11_demultiplexor_0_2_demultiplexor : entity is "demultiplexor";
end tdp11_demultiplexor_0_2_demultiplexor;

architecture STRUCTURE of tdp11_demultiplexor_0_2_demultiplexor is
  signal \r0__0_n_0\ : STD_LOGIC;
  signal \r1__0_n_0\ : STD_LOGIC;
  signal r2_i_1_n_0 : STD_LOGIC;
  signal \r3__0_n_0\ : STD_LOGIC;
  signal \r4__0_n_0\ : STD_LOGIC;
  signal \r5__0_n_0\ : STD_LOGIC;
  signal \r6__0_n_0\ : STD_LOGIC;
  signal r7_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r2_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r3__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r4__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r5__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r6__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r7_i_1 : label is "soft_lutpair0";
begin
\r0__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => input(1),
      I1 => input(0),
      I2 => input(2),
      O => \r0__0_n_0\
    );
r0_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r0__0_n_0\,
      Q => r0,
      R => '0'
    );
\r1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => input(0),
      I1 => input(2),
      I2 => input(1),
      O => \r1__0_n_0\
    );
r1_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r1__0_n_0\,
      Q => r1,
      R => '0'
    );
r2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => input(1),
      I1 => input(0),
      I2 => input(2),
      O => r2_i_1_n_0
    );
r2_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => r2_i_1_n_0,
      Q => r2,
      R => '0'
    );
\r3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => input(2),
      I1 => input(0),
      I2 => input(1),
      O => \r3__0_n_0\
    );
r3_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r3__0_n_0\,
      Q => r3,
      R => '0'
    );
\r4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => input(2),
      I1 => input(0),
      I2 => input(1),
      O => \r4__0_n_0\
    );
r4_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r4__0_n_0\,
      Q => r4,
      R => '0'
    );
\r5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => input(1),
      I1 => input(0),
      I2 => input(2),
      O => \r5__0_n_0\
    );
r5_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r5__0_n_0\,
      Q => r5,
      R => '0'
    );
\r6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => input(0),
      I1 => input(2),
      I2 => input(1),
      O => \r6__0_n_0\
    );
r6_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r6__0_n_0\,
      Q => r6,
      R => '0'
    );
r7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => input(1),
      I1 => input(0),
      I2 => input(2),
      O => r7_i_1_n_0
    );
r7_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => r7_i_1_n_0,
      Q => r7,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_demultiplexor_0_2 is
  port (
    clk : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r0 : out STD_LOGIC;
    r1 : out STD_LOGIC;
    r2 : out STD_LOGIC;
    r3 : out STD_LOGIC;
    r4 : out STD_LOGIC;
    r5 : out STD_LOGIC;
    r6 : out STD_LOGIC;
    r7 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tdp11_demultiplexor_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tdp11_demultiplexor_0_2 : entity is "tdp11_demultiplexor_0_2,demultiplexor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tdp11_demultiplexor_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tdp11_demultiplexor_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of tdp11_demultiplexor_0_2 : entity is "demultiplexor,Vivado 2022.1";
end tdp11_demultiplexor_0_2;

architecture STRUCTURE of tdp11_demultiplexor_0_2 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
begin
U0: entity work.tdp11_demultiplexor_0_2_demultiplexor
     port map (
      clk => clk,
      input(2 downto 0) => input(2 downto 0),
      r0 => r0,
      r1 => r1,
      r2 => r2,
      r3 => r3,
      r4 => r4,
      r5 => r5,
      r6 => r6,
      r7 => r7
    );
end STRUCTURE;
