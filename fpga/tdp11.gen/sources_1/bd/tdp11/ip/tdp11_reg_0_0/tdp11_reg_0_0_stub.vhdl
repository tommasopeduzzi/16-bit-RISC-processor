-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun Aug 28 19:58:28 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top tdp11_reg_0_0 -prefix
--               tdp11_reg_0_0_ tdp11_reg_0_2_stub.vhdl
-- Design      : tdp11_reg_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdp11_reg_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end tdp11_reg_0_0;

architecture stub of tdp11_reg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,we,we_m,we_l,input[15:0],output[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "reg,Vivado 2022.1";
begin
end;
