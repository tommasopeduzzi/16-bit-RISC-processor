-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Aug 20 10:24:02 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top tdp11_control_0_0 -prefix
--               tdp11_control_0_0_ tdp11_control_0_0_stub.vhdl
-- Design      : tdp11_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdp11_control_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    z : in STD_LOGIC;
    g : in STD_LOGIC;
    l : in STD_LOGIC;
    c : in STD_LOGIC;
    mem_we : out STD_LOGIC;
    pc_inc : out STD_LOGIC;
    pc_load : out STD_LOGIC;
    sp_inc : out STD_LOGIC;
    sp_decr : out STD_LOGIC;
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_we : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_we_l : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_we_m : out STD_LOGIC_VECTOR ( 2 downto 0 );
    main_alu_sel : out STD_LOGIC;
    main_mem_sel : out STD_LOGIC;
    main_control_sel : out STD_LOGIC;
    main_reg_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    main_reg_l_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    main_reg_m_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    addr_pc_sel : out STD_LOGIC;
    addr_sp_sel : out STD_LOGIC;
    addr_reg_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    addr_control_sel : out STD_LOGIC;
    alu_rhs_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    alu_lhs_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    output_imm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    current_opcode : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end tdp11_control_0_0;

architecture stub of tdp11_control_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,input[7:0],z,g,l,c,mem_we,pc_inc,pc_load,sp_inc,sp_decr,alu_op[3:0],reg_we[2:0],reg_we_l[2:0],reg_we_m[2:0],main_alu_sel,main_mem_sel,main_control_sel,main_reg_sel[2:0],main_reg_l_sel[2:0],main_reg_m_sel[2:0],addr_pc_sel,addr_sp_sel,addr_reg_sel[2:0],addr_control_sel,alu_rhs_sel[2:0],alu_lhs_sel[2:0],output_imm[15:0],current_opcode[5:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "control,Vivado 2022.1";
begin
end;
