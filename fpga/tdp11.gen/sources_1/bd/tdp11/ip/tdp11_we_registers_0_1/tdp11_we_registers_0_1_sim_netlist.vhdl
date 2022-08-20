-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Aug 20 09:48:17 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_we_registers_0_1/tdp11_we_registers_0_1_sim_netlist.vhdl
-- Design      : tdp11_we_registers_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_we_registers_0_1_we_registers is
  port (
    r0 : out STD_LOGIC;
    r1 : out STD_LOGIC;
    r2 : out STD_LOGIC;
    r3 : out STD_LOGIC;
    r4 : out STD_LOGIC;
    r5 : out STD_LOGIC;
    r6 : out STD_LOGIC;
    r7 : out STD_LOGIC;
    we : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tdp11_we_registers_0_1_we_registers : entity is "we_registers";
end tdp11_we_registers_0_1_we_registers;

architecture STRUCTURE of tdp11_we_registers_0_1_we_registers is
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
      I0 => we(1),
      I1 => we(0),
      I2 => we(2),
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
      I0 => we(0),
      I1 => we(2),
      I2 => we(1),
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
      I0 => we(1),
      I1 => we(0),
      I2 => we(2),
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
      I0 => we(2),
      I1 => we(0),
      I2 => we(1),
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
      I0 => we(2),
      I1 => we(0),
      I2 => we(1),
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
      I0 => we(1),
      I1 => we(0),
      I2 => we(2),
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
      I0 => we(0),
      I1 => we(2),
      I2 => we(1),
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
      I0 => we(1),
      I1 => we(0),
      I2 => we(2),
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
entity tdp11_we_registers_0_1 is
  port (
    clk : in STD_LOGIC;
    we : in STD_LOGIC_VECTOR ( 2 downto 0 );
    we_l : in STD_LOGIC_VECTOR ( 2 downto 0 );
    we_m : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r0 : out STD_LOGIC;
    r0_m : out STD_LOGIC;
    r0_l : out STD_LOGIC;
    r1 : out STD_LOGIC;
    r1_m : out STD_LOGIC;
    r1_l : out STD_LOGIC;
    r2 : out STD_LOGIC;
    r2_m : out STD_LOGIC;
    r2_l : out STD_LOGIC;
    r3 : out STD_LOGIC;
    r3_m : out STD_LOGIC;
    r3_l : out STD_LOGIC;
    r4 : out STD_LOGIC;
    r4_m : out STD_LOGIC;
    r4_l : out STD_LOGIC;
    r5 : out STD_LOGIC;
    r5_m : out STD_LOGIC;
    r5_l : out STD_LOGIC;
    r6 : out STD_LOGIC;
    r6_m : out STD_LOGIC;
    r6_l : out STD_LOGIC;
    r7 : out STD_LOGIC;
    r7_m : out STD_LOGIC;
    r7_l : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tdp11_we_registers_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tdp11_we_registers_0_1 : entity is "tdp11_we_registers_0_1,we_registers,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tdp11_we_registers_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tdp11_we_registers_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of tdp11_we_registers_0_1 : entity is "we_registers,Vivado 2022.1";
end tdp11_we_registers_0_1;

architecture STRUCTURE of tdp11_we_registers_0_1 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
begin
  r0_l <= \<const1>\;
  r0_m <= \<const1>\;
  r1_l <= \<const1>\;
  r1_m <= \<const1>\;
  r2_l <= \<const1>\;
  r2_m <= \<const1>\;
  r3_l <= \<const1>\;
  r3_m <= \<const1>\;
  r4_l <= \<const1>\;
  r4_m <= \<const1>\;
  r5_l <= \<const1>\;
  r5_m <= \<const1>\;
  r6_l <= \<const1>\;
  r6_m <= \<const1>\;
  r7_l <= \<const1>\;
  r7_m <= \<const1>\;
U0: entity work.tdp11_we_registers_0_1_we_registers
     port map (
      clk => clk,
      r0 => r0,
      r1 => r1,
      r2 => r2,
      r3 => r3,
      r4 => r4,
      r5 => r5,
      r6 => r6,
      r7 => r7,
      we(2 downto 0) => we(2 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
