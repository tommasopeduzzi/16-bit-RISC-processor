-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Aug 20 09:48:17 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_we_registers_0_1/tdp11_we_registers_0_1_stub.vhdl
-- Design      : tdp11_we_registers_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdp11_we_registers_0_1 is
  Port ( 
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

end tdp11_we_registers_0_1;

architecture stub of tdp11_we_registers_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,we[2:0],we_l[2:0],we_m[2:0],r0,r0_m,r0_l,r1,r1_m,r1_l,r2,r2_m,r2_l,r3,r3_m,r3_l,r4,r4_m,r4_l,r5,r5_m,r5_l,r6,r6_m,r6_l,r7,r7_m,r7_l";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "we_registers,Vivado 2022.1";
begin
end;
