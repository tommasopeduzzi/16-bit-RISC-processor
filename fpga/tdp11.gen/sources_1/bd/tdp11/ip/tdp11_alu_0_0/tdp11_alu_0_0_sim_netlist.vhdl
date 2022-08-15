-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 21:17:36 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_alu_0_0/tdp11_alu_0_0_sim_netlist.vhdl
-- Design      : tdp11_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_alu_0_0_alu is
  port (
    output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    g : out STD_LOGIC;
    l : out STD_LOGIC;
    c : out STD_LOGIC;
    z : out STD_LOGIC;
    clk : in STD_LOGIC;
    op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lhs : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rhs : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tdp11_alu_0_0_alu : entity is "alu";
end tdp11_alu_0_0_alu;

architecture STRUCTURE of tdp11_alu_0_0_alu is
  signal \_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \_carry__2_n_1\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry_i_2_n_0\ : STD_LOGIC;
  signal \_carry_i_3_n_0\ : STD_LOGIC;
  signal \_carry_i_4_n_0\ : STD_LOGIC;
  signal \_carry_i_5_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \c1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \c1_carry__0_n_0\ : STD_LOGIC;
  signal \c1_carry__0_n_1\ : STD_LOGIC;
  signal \c1_carry__0_n_2\ : STD_LOGIC;
  signal \c1_carry__0_n_3\ : STD_LOGIC;
  signal \c1_carry__1_n_3\ : STD_LOGIC;
  signal c1_carry_i_1_n_0 : STD_LOGIC;
  signal c1_carry_i_2_n_0 : STD_LOGIC;
  signal c1_carry_i_3_n_0 : STD_LOGIC;
  signal c1_carry_i_4_n_0 : STD_LOGIC;
  signal c1_carry_i_5_n_0 : STD_LOGIC;
  signal c1_carry_i_6_n_0 : STD_LOGIC;
  signal c1_carry_i_7_n_0 : STD_LOGIC;
  signal c1_carry_i_8_n_0 : STD_LOGIC;
  signal c1_carry_n_0 : STD_LOGIC;
  signal c1_carry_n_1 : STD_LOGIC;
  signal c1_carry_n_2 : STD_LOGIC;
  signal c1_carry_n_3 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \g0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \g0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \g0_carry__0_n_0\ : STD_LOGIC;
  signal \g0_carry__0_n_1\ : STD_LOGIC;
  signal \g0_carry__0_n_2\ : STD_LOGIC;
  signal \g0_carry__0_n_3\ : STD_LOGIC;
  signal g0_carry_i_1_n_0 : STD_LOGIC;
  signal g0_carry_i_2_n_0 : STD_LOGIC;
  signal g0_carry_i_3_n_0 : STD_LOGIC;
  signal g0_carry_i_4_n_0 : STD_LOGIC;
  signal g0_carry_i_5_n_0 : STD_LOGIC;
  signal g0_carry_i_6_n_0 : STD_LOGIC;
  signal g0_carry_i_7_n_0 : STD_LOGIC;
  signal g0_carry_i_8_n_0 : STD_LOGIC;
  signal g0_carry_n_0 : STD_LOGIC;
  signal g0_carry_n_1 : STD_LOGIC;
  signal g0_carry_n_2 : STD_LOGIC;
  signal g0_carry_n_3 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal result : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \result[0]_i_2_n_0\ : STD_LOGIC;
  signal \result[0]_i_3_n_0\ : STD_LOGIC;
  signal \result[0]_i_4_n_0\ : STD_LOGIC;
  signal \result[0]_i_5_n_0\ : STD_LOGIC;
  signal \result[10]_i_2_n_0\ : STD_LOGIC;
  signal \result[10]_i_3_n_0\ : STD_LOGIC;
  signal \result[10]_i_4_n_0\ : STD_LOGIC;
  signal \result[10]_i_5_n_0\ : STD_LOGIC;
  signal \result[11]_i_2_n_0\ : STD_LOGIC;
  signal \result[11]_i_3_n_0\ : STD_LOGIC;
  signal \result[11]_i_4_n_0\ : STD_LOGIC;
  signal \result[11]_i_5_n_0\ : STD_LOGIC;
  signal \result[12]_i_2_n_0\ : STD_LOGIC;
  signal \result[12]_i_3_n_0\ : STD_LOGIC;
  signal \result[12]_i_4_n_0\ : STD_LOGIC;
  signal \result[12]_i_5_n_0\ : STD_LOGIC;
  signal \result[13]_i_2_n_0\ : STD_LOGIC;
  signal \result[13]_i_3_n_0\ : STD_LOGIC;
  signal \result[13]_i_4_n_0\ : STD_LOGIC;
  signal \result[13]_i_5_n_0\ : STD_LOGIC;
  signal \result[14]_i_2_n_0\ : STD_LOGIC;
  signal \result[14]_i_3_n_0\ : STD_LOGIC;
  signal \result[14]_i_4_n_0\ : STD_LOGIC;
  signal \result[14]_i_5_n_0\ : STD_LOGIC;
  signal \result[15]_i_2_n_0\ : STD_LOGIC;
  signal \result[15]_i_3_n_0\ : STD_LOGIC;
  signal \result[15]_i_4_n_0\ : STD_LOGIC;
  signal \result[15]_i_5_n_0\ : STD_LOGIC;
  signal \result[1]_i_2_n_0\ : STD_LOGIC;
  signal \result[1]_i_3_n_0\ : STD_LOGIC;
  signal \result[1]_i_4_n_0\ : STD_LOGIC;
  signal \result[1]_i_5_n_0\ : STD_LOGIC;
  signal \result[2]_i_2_n_0\ : STD_LOGIC;
  signal \result[2]_i_3_n_0\ : STD_LOGIC;
  signal \result[2]_i_4_n_0\ : STD_LOGIC;
  signal \result[2]_i_5_n_0\ : STD_LOGIC;
  signal \result[3]_i_2_n_0\ : STD_LOGIC;
  signal \result[3]_i_3_n_0\ : STD_LOGIC;
  signal \result[3]_i_4_n_0\ : STD_LOGIC;
  signal \result[3]_i_5_n_0\ : STD_LOGIC;
  signal \result[4]_i_2_n_0\ : STD_LOGIC;
  signal \result[4]_i_3_n_0\ : STD_LOGIC;
  signal \result[4]_i_4_n_0\ : STD_LOGIC;
  signal \result[4]_i_5_n_0\ : STD_LOGIC;
  signal \result[5]_i_2_n_0\ : STD_LOGIC;
  signal \result[5]_i_3_n_0\ : STD_LOGIC;
  signal \result[5]_i_4_n_0\ : STD_LOGIC;
  signal \result[5]_i_5_n_0\ : STD_LOGIC;
  signal \result[6]_i_2_n_0\ : STD_LOGIC;
  signal \result[6]_i_3_n_0\ : STD_LOGIC;
  signal \result[6]_i_4_n_0\ : STD_LOGIC;
  signal \result[6]_i_5_n_0\ : STD_LOGIC;
  signal \result[7]_i_2_n_0\ : STD_LOGIC;
  signal \result[7]_i_3_n_0\ : STD_LOGIC;
  signal \result[7]_i_4_n_0\ : STD_LOGIC;
  signal \result[7]_i_5_n_0\ : STD_LOGIC;
  signal \result[8]_i_2_n_0\ : STD_LOGIC;
  signal \result[8]_i_3_n_0\ : STD_LOGIC;
  signal \result[8]_i_4_n_0\ : STD_LOGIC;
  signal \result[8]_i_5_n_0\ : STD_LOGIC;
  signal \result[9]_i_2_n_0\ : STD_LOGIC;
  signal \result[9]_i_3_n_0\ : STD_LOGIC;
  signal \result[9]_i_4_n_0\ : STD_LOGIC;
  signal \result[9]_i_5_n_0\ : STD_LOGIC;
  signal result_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal z_i_1_n_0 : STD_LOGIC;
  signal z_i_2_n_0 : STD_LOGIC;
  signal z_i_3_n_0 : STD_LOGIC;
  signal \NLW__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_c1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_c1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_c1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_c1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_g0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of c1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \c1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \c1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of g0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \g0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \result[0]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[0]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[15]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result[15]_i_5\ : label is "soft_lutpair0";
begin
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => lhs(0),
      DI(3 downto 1) => lhs(3 downto 1),
      DI(0) => p_0_out(0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \_carry_i_2_n_0\,
      S(2) => \_carry_i_3_n_0\,
      S(1) => \_carry_i_4_n_0\,
      S(0) => \_carry_i_5_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => lhs(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \_carry__0_i_1_n_0\,
      S(2) => \_carry__0_i_2_n_0\,
      S(1) => \_carry__0_i_3_n_0\,
      S(0) => \_carry__0_i_4_n_0\
    );
\_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(7),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(7),
      O => \_carry__0_i_1_n_0\
    );
\_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(6),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(6),
      O => \_carry__0_i_2_n_0\
    );
\_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(5),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(5),
      O => \_carry__0_i_3_n_0\
    );
\_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(4),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(4),
      O => \_carry__0_i_4_n_0\
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => lhs(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \_carry__1_i_1_n_0\,
      S(2) => \_carry__1_i_2_n_0\,
      S(1) => \_carry__1_i_3_n_0\,
      S(0) => \_carry__1_i_4_n_0\
    );
\_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(11),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(11),
      O => \_carry__1_i_1_n_0\
    );
\_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(10),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(10),
      O => \_carry__1_i_2_n_0\
    );
\_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(9),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(9),
      O => \_carry__1_i_3_n_0\
    );
\_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(8),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(8),
      O => \_carry__1_i_4_n_0\
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \NLW__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_carry__2_n_1\,
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => lhs(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \_carry__2_i_1_n_0\,
      S(2) => \_carry__2_i_2_n_0\,
      S(1) => \_carry__2_i_3_n_0\,
      S(0) => \_carry__2_i_4_n_0\
    );
\_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => op(1),
      I1 => op(0),
      I2 => lhs(15),
      I3 => rhs(15),
      O => \_carry__2_i_1_n_0\
    );
\_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(14),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(14),
      O => \_carry__2_i_2_n_0\
    );
\_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(13),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(13),
      O => \_carry__2_i_3_n_0\
    );
\_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(12),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(12),
      O => \_carry__2_i_4_n_0\
    );
\_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => op(0),
      I1 => op(1),
      O => p_0_out(0)
    );
\_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(3),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(3),
      O => \_carry_i_2_n_0\
    );
\_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(2),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(2),
      O => \_carry_i_3_n_0\
    );
\_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => rhs(1),
      I1 => op(0),
      I2 => op(1),
      I3 => lhs(1),
      O => \_carry_i_4_n_0\
    );
\_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rhs(0),
      O => \_carry_i_5_n_0\
    );
c1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c1_carry_n_0,
      CO(2) => c1_carry_n_1,
      CO(1) => c1_carry_n_2,
      CO(0) => c1_carry_n_3,
      CYINIT => '0',
      DI(3) => c1_carry_i_1_n_0,
      DI(2) => c1_carry_i_2_n_0,
      DI(1) => c1_carry_i_3_n_0,
      DI(0) => c1_carry_i_4_n_0,
      O(3 downto 0) => NLW_c1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => c1_carry_i_5_n_0,
      S(2) => c1_carry_i_6_n_0,
      S(1) => c1_carry_i_7_n_0,
      S(0) => c1_carry_i_8_n_0
    );
\c1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => c1_carry_n_0,
      CO(3) => \c1_carry__0_n_0\,
      CO(2) => \c1_carry__0_n_1\,
      CO(1) => \c1_carry__0_n_2\,
      CO(0) => \c1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \c1_carry__0_i_1_n_0\,
      DI(2) => \c1_carry__0_i_2_n_0\,
      DI(1) => \c1_carry__0_i_3_n_0\,
      DI(0) => \c1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_c1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \c1_carry__0_i_5_n_0\,
      S(2) => \c1_carry__0_i_6_n_0\,
      S(1) => \c1_carry__0_i_7_n_0\,
      S(0) => \c1_carry__0_i_8_n_0\
    );
\c1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(14),
      I1 => result(15),
      O => \c1_carry__0_i_1_n_0\
    );
\c1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(12),
      I1 => result(13),
      O => \c1_carry__0_i_2_n_0\
    );
\c1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(10),
      I1 => result(11),
      O => \c1_carry__0_i_3_n_0\
    );
\c1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(8),
      I1 => result(9),
      O => \c1_carry__0_i_4_n_0\
    );
\c1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result(14),
      I1 => result(15),
      O => \c1_carry__0_i_5_n_0\
    );
\c1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(12),
      I1 => result(13),
      O => \c1_carry__0_i_6_n_0\
    );
\c1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(10),
      I1 => result(11),
      O => \c1_carry__0_i_7_n_0\
    );
\c1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(8),
      I1 => result(9),
      O => \c1_carry__0_i_8_n_0\
    );
\c1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_c1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \c1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_c1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => result(15)
    );
c1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(6),
      I1 => result(7),
      O => c1_carry_i_1_n_0
    );
c1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(4),
      I1 => result(5),
      O => c1_carry_i_2_n_0
    );
c1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(2),
      I1 => result(3),
      O => c1_carry_i_3_n_0
    );
c1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result(0),
      I1 => result(1),
      O => c1_carry_i_4_n_0
    );
c1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(6),
      I1 => result(7),
      O => c1_carry_i_5_n_0
    );
c1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(4),
      I1 => result(5),
      O => c1_carry_i_6_n_0
    );
c1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(2),
      I1 => result(3),
      O => c1_carry_i_7_n_0
    );
c1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => result(0),
      I1 => result(1),
      O => c1_carry_i_8_n_0
    );
c_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \c1_carry__1_n_3\,
      Q => c,
      R => '0'
    );
g0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => g0_carry_n_0,
      CO(2) => g0_carry_n_1,
      CO(1) => g0_carry_n_2,
      CO(0) => g0_carry_n_3,
      CYINIT => '0',
      DI(3) => g0_carry_i_1_n_0,
      DI(2) => g0_carry_i_2_n_0,
      DI(1) => g0_carry_i_3_n_0,
      DI(0) => g0_carry_i_4_n_0,
      O(3 downto 0) => NLW_g0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => g0_carry_i_5_n_0,
      S(2) => g0_carry_i_6_n_0,
      S(1) => g0_carry_i_7_n_0,
      S(0) => g0_carry_i_8_n_0
    );
\g0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => g0_carry_n_0,
      CO(3) => \g0_carry__0_n_0\,
      CO(2) => \g0_carry__0_n_1\,
      CO(1) => \g0_carry__0_n_2\,
      CO(0) => \g0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \g0_carry__0_i_1_n_0\,
      DI(2) => \g0_carry__0_i_2_n_0\,
      DI(1) => \g0_carry__0_i_3_n_0\,
      DI(0) => \g0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_g0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \g0_carry__0_i_5_n_0\,
      S(2) => \g0_carry__0_i_6_n_0\,
      S(1) => \g0_carry__0_i_7_n_0\,
      S(0) => \g0_carry__0_i_8_n_0\
    );
\g0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result(14),
      I1 => result(15),
      O => \g0_carry__0_i_1_n_0\
    );
\g0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(12),
      I1 => result(13),
      O => \g0_carry__0_i_2_n_0\
    );
\g0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(10),
      I1 => result(11),
      O => \g0_carry__0_i_3_n_0\
    );
\g0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(8),
      I1 => result(9),
      O => \g0_carry__0_i_4_n_0\
    );
\g0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(14),
      I1 => result(15),
      O => \g0_carry__0_i_5_n_0\
    );
\g0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(13),
      I1 => result(12),
      O => \g0_carry__0_i_6_n_0\
    );
\g0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(11),
      I1 => result(10),
      O => \g0_carry__0_i_7_n_0\
    );
\g0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(9),
      I1 => result(8),
      O => \g0_carry__0_i_8_n_0\
    );
g0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(6),
      I1 => result(7),
      O => g0_carry_i_1_n_0
    );
g0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(4),
      I1 => result(5),
      O => g0_carry_i_2_n_0
    );
g0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(2),
      I1 => result(3),
      O => g0_carry_i_3_n_0
    );
g0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result(0),
      I1 => result(1),
      O => g0_carry_i_4_n_0
    );
g0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(7),
      I1 => result(6),
      O => g0_carry_i_5_n_0
    );
g0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(5),
      I1 => result(4),
      O => g0_carry_i_6_n_0
    );
g0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(3),
      I1 => result(2),
      O => g0_carry_i_7_n_0
    );
g0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result(1),
      I1 => result(0),
      O => g0_carry_i_8_n_0
    );
g_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \g0_carry__0_n_0\,
      Q => g,
      R => '0'
    );
l_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(15),
      Q => l,
      R => '0'
    );
\output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(0),
      Q => output(0),
      R => '0'
    );
\output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(10),
      Q => output(10),
      R => '0'
    );
\output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(11),
      Q => output(11),
      R => '0'
    );
\output_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(12),
      Q => output(12),
      R => '0'
    );
\output_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(13),
      Q => output(13),
      R => '0'
    );
\output_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(14),
      Q => output(14),
      R => '0'
    );
\output_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(15),
      Q => output(15),
      R => '0'
    );
\output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(1),
      Q => output(1),
      R => '0'
    );
\output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(2),
      Q => output(2),
      R => '0'
    );
\output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(3),
      Q => output(3),
      R => '0'
    );
\output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(4),
      Q => output(4),
      R => '0'
    );
\output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(5),
      Q => output(5),
      R => '0'
    );
\output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(6),
      Q => output(6),
      R => '0'
    );
\output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(7),
      Q => output(7),
      R => '0'
    );
\output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(8),
      Q => output(8),
      R => '0'
    );
\output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result(9),
      Q => output(9),
      R => '0'
    );
\result[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[0]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[0]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(0),
      O => \result[0]_i_2_n_0\
    );
\result[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(0),
      O => \result[0]_i_3_n_0\
    );
\result[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B3B380"
    )
        port map (
      I0 => lhs(1),
      I1 => op(1),
      I2 => op(0),
      I3 => rhs(0),
      I4 => lhs(0),
      O => \result[0]_i_4_n_0\
    );
\result[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(0),
      I1 => lhs(0),
      O => \result[0]_i_5_n_0\
    );
\result[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[10]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[10]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(10),
      O => \result[10]_i_2_n_0\
    );
\result[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(10),
      O => \result[10]_i_3_n_0\
    );
\result[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(11),
      I1 => lhs(9),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(10),
      I5 => lhs(10),
      O => \result[10]_i_4_n_0\
    );
\result[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(10),
      I1 => lhs(10),
      O => \result[10]_i_5_n_0\
    );
\result[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[11]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[11]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(11),
      O => \result[11]_i_2_n_0\
    );
\result[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(11),
      O => \result[11]_i_3_n_0\
    );
\result[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(12),
      I1 => lhs(10),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(11),
      I5 => lhs(11),
      O => \result[11]_i_4_n_0\
    );
\result[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(11),
      I1 => lhs(11),
      O => \result[11]_i_5_n_0\
    );
\result[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[12]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[12]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(12),
      O => \result[12]_i_2_n_0\
    );
\result[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(12),
      O => \result[12]_i_3_n_0\
    );
\result[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(13),
      I1 => lhs(11),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(12),
      I5 => lhs(12),
      O => \result[12]_i_4_n_0\
    );
\result[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(12),
      I1 => lhs(12),
      O => \result[12]_i_5_n_0\
    );
\result[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[13]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[13]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(13),
      O => \result[13]_i_2_n_0\
    );
\result[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(13),
      O => \result[13]_i_3_n_0\
    );
\result[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(14),
      I1 => lhs(12),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(13),
      I5 => lhs(13),
      O => \result[13]_i_4_n_0\
    );
\result[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(13),
      I1 => lhs(13),
      O => \result[13]_i_5_n_0\
    );
\result[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[14]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[14]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(14),
      O => \result[14]_i_2_n_0\
    );
\result[14]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(14),
      O => \result[14]_i_3_n_0\
    );
\result[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(15),
      I1 => lhs(13),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(14),
      I5 => lhs(14),
      O => \result[14]_i_4_n_0\
    );
\result[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(14),
      I1 => lhs(14),
      O => \result[14]_i_5_n_0\
    );
\result[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[15]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[15]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(15),
      O => \result[15]_i_2_n_0\
    );
\result[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(15),
      O => \result[15]_i_3_n_0\
    );
\result[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B3B3B08"
    )
        port map (
      I0 => lhs(14),
      I1 => op(1),
      I2 => op(0),
      I3 => rhs(15),
      I4 => lhs(15),
      O => \result[15]_i_4_n_0\
    );
\result[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(15),
      I1 => lhs(15),
      O => \result[15]_i_5_n_0\
    );
\result[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[1]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[1]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(1),
      O => \result[1]_i_2_n_0\
    );
\result[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(1),
      O => \result[1]_i_3_n_0\
    );
\result[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(2),
      I1 => lhs(0),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(1),
      I5 => lhs(1),
      O => \result[1]_i_4_n_0\
    );
\result[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(1),
      I1 => lhs(1),
      O => \result[1]_i_5_n_0\
    );
\result[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[2]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[2]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(2),
      O => \result[2]_i_2_n_0\
    );
\result[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(2),
      O => \result[2]_i_3_n_0\
    );
\result[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(3),
      I1 => lhs(1),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(2),
      I5 => lhs(2),
      O => \result[2]_i_4_n_0\
    );
\result[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(2),
      I1 => lhs(2),
      O => \result[2]_i_5_n_0\
    );
\result[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[3]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[3]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(3),
      O => \result[3]_i_2_n_0\
    );
\result[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(3),
      O => \result[3]_i_3_n_0\
    );
\result[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(4),
      I1 => lhs(2),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(3),
      I5 => lhs(3),
      O => \result[3]_i_4_n_0\
    );
\result[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(3),
      I1 => lhs(3),
      O => \result[3]_i_5_n_0\
    );
\result[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[4]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[4]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(4),
      O => \result[4]_i_2_n_0\
    );
\result[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(4),
      O => \result[4]_i_3_n_0\
    );
\result[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(5),
      I1 => lhs(3),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(4),
      I5 => lhs(4),
      O => \result[4]_i_4_n_0\
    );
\result[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(4),
      I1 => lhs(4),
      O => \result[4]_i_5_n_0\
    );
\result[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[5]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[5]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(5),
      O => \result[5]_i_2_n_0\
    );
\result[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(5),
      O => \result[5]_i_3_n_0\
    );
\result[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(6),
      I1 => lhs(4),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(5),
      I5 => lhs(5),
      O => \result[5]_i_4_n_0\
    );
\result[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(5),
      I1 => lhs(5),
      O => \result[5]_i_5_n_0\
    );
\result[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[6]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[6]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(6),
      O => \result[6]_i_2_n_0\
    );
\result[6]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(6),
      O => \result[6]_i_3_n_0\
    );
\result[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(7),
      I1 => lhs(5),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(6),
      I5 => lhs(6),
      O => \result[6]_i_4_n_0\
    );
\result[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(6),
      I1 => lhs(6),
      O => \result[6]_i_5_n_0\
    );
\result[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[7]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[7]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(7),
      O => \result[7]_i_2_n_0\
    );
\result[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(7),
      O => \result[7]_i_3_n_0\
    );
\result[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(8),
      I1 => lhs(6),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(7),
      I5 => lhs(7),
      O => \result[7]_i_4_n_0\
    );
\result[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(7),
      I1 => lhs(7),
      O => \result[7]_i_5_n_0\
    );
\result[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[8]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[8]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(8),
      O => \result[8]_i_2_n_0\
    );
\result[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(8),
      O => \result[8]_i_3_n_0\
    );
\result[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(9),
      I1 => lhs(7),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(8),
      I5 => lhs(8),
      O => \result[8]_i_4_n_0\
    );
\result[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(8),
      I1 => lhs(8),
      O => \result[8]_i_5_n_0\
    );
\result[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \result[9]_i_4_n_0\,
      I1 => op(2),
      I2 => \result[9]_i_5_n_0\,
      I3 => op(0),
      I4 => op(1),
      I5 => data0(9),
      O => \result[9]_i_2_n_0\
    );
\result[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lhs(9),
      O => \result[9]_i_3_n_0\
    );
\result[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFAFCFAFCFA0C0"
    )
        port map (
      I0 => lhs(10),
      I1 => lhs(8),
      I2 => op(1),
      I3 => op(0),
      I4 => rhs(9),
      I5 => lhs(9),
      O => \result[9]_i_4_n_0\
    );
\result[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rhs(9),
      I1 => lhs(9),
      O => \result[9]_i_5_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(0),
      Q => result(0),
      R => '0'
    );
\result_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[0]_i_2_n_0\,
      I1 => \result[0]_i_3_n_0\,
      O => result_0(0),
      S => op(3)
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(10),
      Q => result(10),
      R => '0'
    );
\result_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[10]_i_2_n_0\,
      I1 => \result[10]_i_3_n_0\,
      O => result_0(10),
      S => op(3)
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(11),
      Q => result(11),
      R => '0'
    );
\result_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[11]_i_2_n_0\,
      I1 => \result[11]_i_3_n_0\,
      O => result_0(11),
      S => op(3)
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(12),
      Q => result(12),
      R => '0'
    );
\result_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[12]_i_2_n_0\,
      I1 => \result[12]_i_3_n_0\,
      O => result_0(12),
      S => op(3)
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(13),
      Q => result(13),
      R => '0'
    );
\result_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[13]_i_2_n_0\,
      I1 => \result[13]_i_3_n_0\,
      O => result_0(13),
      S => op(3)
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(14),
      Q => result(14),
      R => '0'
    );
\result_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[14]_i_2_n_0\,
      I1 => \result[14]_i_3_n_0\,
      O => result_0(14),
      S => op(3)
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(15),
      Q => result(15),
      R => '0'
    );
\result_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[15]_i_2_n_0\,
      I1 => \result[15]_i_3_n_0\,
      O => result_0(15),
      S => op(3)
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(1),
      Q => result(1),
      R => '0'
    );
\result_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[1]_i_2_n_0\,
      I1 => \result[1]_i_3_n_0\,
      O => result_0(1),
      S => op(3)
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(2),
      Q => result(2),
      R => '0'
    );
\result_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[2]_i_2_n_0\,
      I1 => \result[2]_i_3_n_0\,
      O => result_0(2),
      S => op(3)
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(3),
      Q => result(3),
      R => '0'
    );
\result_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[3]_i_2_n_0\,
      I1 => \result[3]_i_3_n_0\,
      O => result_0(3),
      S => op(3)
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(4),
      Q => result(4),
      R => '0'
    );
\result_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[4]_i_2_n_0\,
      I1 => \result[4]_i_3_n_0\,
      O => result_0(4),
      S => op(3)
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(5),
      Q => result(5),
      R => '0'
    );
\result_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[5]_i_2_n_0\,
      I1 => \result[5]_i_3_n_0\,
      O => result_0(5),
      S => op(3)
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(6),
      Q => result(6),
      R => '0'
    );
\result_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[6]_i_2_n_0\,
      I1 => \result[6]_i_3_n_0\,
      O => result_0(6),
      S => op(3)
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(7),
      Q => result(7),
      R => '0'
    );
\result_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[7]_i_2_n_0\,
      I1 => \result[7]_i_3_n_0\,
      O => result_0(7),
      S => op(3)
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(8),
      Q => result(8),
      R => '0'
    );
\result_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[8]_i_2_n_0\,
      I1 => \result[8]_i_3_n_0\,
      O => result_0(8),
      S => op(3)
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_0(9),
      Q => result(9),
      R => '0'
    );
\result_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[9]_i_2_n_0\,
      I1 => \result[9]_i_3_n_0\,
      O => result_0(9),
      S => op(3)
    );
z_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => z_i_2_n_0,
      I1 => result(15),
      I2 => result(14),
      I3 => result(7),
      I4 => result(6),
      I5 => z_i_3_n_0,
      O => z_i_1_n_0
    );
z_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => result(0),
      I1 => result(1),
      I2 => result(2),
      I3 => result(3),
      I4 => result(5),
      I5 => result(4),
      O => z_i_2_n_0
    );
z_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => result(8),
      I1 => result(9),
      I2 => result(10),
      I3 => result(11),
      I4 => result(13),
      I5 => result(12),
      O => z_i_3_n_0
    );
z_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => z_i_1_n_0,
      Q => z,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_alu_0_0 is
  port (
    clk : in STD_LOGIC;
    rhs : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lhs : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    z : out STD_LOGIC;
    g : out STD_LOGIC;
    l : out STD_LOGIC;
    c : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tdp11_alu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tdp11_alu_0_0 : entity is "tdp11_alu_0_0,alu,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tdp11_alu_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tdp11_alu_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of tdp11_alu_0_0 : entity is "alu,Vivado 2022.1";
end tdp11_alu_0_0;

architecture STRUCTURE of tdp11_alu_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
begin
U0: entity work.tdp11_alu_0_0_alu
     port map (
      c => c,
      clk => clk,
      g => g,
      l => l,
      lhs(15 downto 0) => lhs(15 downto 0),
      op(3 downto 0) => op(3 downto 0),
      output(15 downto 0) => output(15 downto 0),
      rhs(15 downto 0) => rhs(15 downto 0),
      z => z
    );
end STRUCTURE;
