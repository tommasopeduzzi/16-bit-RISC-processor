--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Mon Aug 15 21:16:39 2022
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
    clock : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end tdp11_wrapper;

architecture STRUCTURE of tdp11_wrapper is
  component tdp11 is
  port (
    rst : in STD_LOGIC;
    clock : in STD_LOGIC
  );
  end component tdp11;
begin
tdp11_i: component tdp11
     port map (
      clock => clock,
      rst => rst
    );
end STRUCTURE;
