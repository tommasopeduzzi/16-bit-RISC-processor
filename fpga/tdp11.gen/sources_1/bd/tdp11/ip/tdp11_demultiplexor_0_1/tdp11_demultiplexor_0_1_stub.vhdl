-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 21:12:21 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_demultiplexor_0_1/tdp11_demultiplexor_0_1_stub.vhdl
-- Design      : tdp11_demultiplexor_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdp11_demultiplexor_0_1 is
  Port ( 
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

end tdp11_demultiplexor_0_1;

architecture stub of tdp11_demultiplexor_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,input[2:0],r0,r1,r2,r3,r4,r5,r6,r7";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "demultiplexor,Vivado 2022.1";
begin
end;
