-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 20:56:53 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_main_bus_0_1/tdp11_main_bus_0_1_stub.vhdl
-- Design      : tdp11_main_bus_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdp11_main_bus_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reg_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_sel_l : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_sel_m : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_sel : in STD_LOGIC;
    alu_sel : in STD_LOGIC;
    control_sel : in STD_LOGIC;
    r0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    alu : in STD_LOGIC_VECTOR ( 15 downto 0 );
    control : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mem : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end tdp11_main_bus_0_1;

architecture stub of tdp11_main_bus_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reg_sel[2:0],reg_sel_l[2:0],reg_sel_m[2:0],mem_sel,alu_sel,control_sel,r0[15:0],r1[15:0],r2[15:0],r3[15:0],r4[15:0],r5[15:0],r6[15:0],r7[15:0],alu[15:0],control[15:0],mem[7:0],output[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "main_bus,Vivado 2022.1";
begin
end;
