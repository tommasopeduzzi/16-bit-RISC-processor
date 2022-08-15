-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 21:17:36 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_alu_0_0/tdp11_alu_0_0_stub.vhdl
-- Design      : tdp11_alu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdp11_alu_0_0 is
  Port ( 
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

end tdp11_alu_0_0;

architecture stub of tdp11_alu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rhs[15:0],lhs[15:0],op[3:0],output[15:0],z,g,l,c";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "alu,Vivado 2022.1";
begin
end;
