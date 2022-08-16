--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Tue Aug 16 18:57:24 2022
--Host        : framework running 64-bit unknown
--Command     : generate_target tdp11_wrapper.bd
--Design      : tdp11_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_wrapper is
  port (
    address_bus_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    main_bus_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    memory_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_0_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_1_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_2_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_3_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_4_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_5_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_6_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_7_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    sp_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clock : in STD_LOGIC
  );
end tdp11_wrapper;

architecture STRUCTURE of tdp11_wrapper is
  component tdp11 is
  port (
    rst : in STD_LOGIC;
    main_bus_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    address_bus_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_0_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_1_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_2_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_3_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_4_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_5_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_6_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_7_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sp_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    memory_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    alu_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clock : in STD_LOGIC
  );
  end component tdp11;
begin
tdp11_i: component tdp11
     port map (
      address_bus_debug(15 downto 0) => address_bus_debug(15 downto 0),
      alu_debug(15 downto 0) => alu_debug(15 downto 0),
      main_bus_debug(15 downto 0) => main_bus_debug(15 downto 0),
      memory_debug(7 downto 0) => memory_debug(7 downto 0),
      pc_debug(15 downto 0) => pc_debug(15 downto 0),
      reg_0_debug(15 downto 0) => reg_0_debug(15 downto 0),
      reg_1_debug(15 downto 0) => reg_1_debug(15 downto 0),
      reg_2_debug(15 downto 0) => reg_2_debug(15 downto 0),
      reg_3_debug(15 downto 0) => reg_3_debug(15 downto 0),
      reg_4_debug(15 downto 0) => reg_4_debug(15 downto 0),
      reg_5_debug(15 downto 0) => reg_5_debug(15 downto 0),
      reg_6_debug(15 downto 0) => reg_6_debug(15 downto 0),
      reg_7_debug(15 downto 0) => reg_7_debug(15 downto 0),
      rst => rst,
      sp_debug(15 downto 0) => sp_debug(15 downto 0),
      sys_clock => sys_clock
    );
end STRUCTURE;
