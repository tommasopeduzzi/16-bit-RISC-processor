-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Aug 15 21:12:20 2022
-- Host        : framework running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/tommasopeduzzi/Documents/16-bit-RISC-processor/fpga/tdp11.gen/sources_1/bd/tdp11/ip/tdp11_control_0_0/tdp11_control_0_0_sim_netlist.vhdl
-- Design      : tdp11_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tdp11_control_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tdp11_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tdp11_control_0_0 : entity is "tdp11_control_0_0,control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tdp11_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tdp11_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of tdp11_control_0_0 : entity is "control,Vivado 2022.1";
end tdp11_control_0_0;

architecture STRUCTURE of tdp11_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addr_control_sel <= \<const0>\;
  addr_pc_sel <= \<const0>\;
  addr_reg_sel(2) <= \<const0>\;
  addr_reg_sel(1) <= \<const0>\;
  addr_reg_sel(0) <= \<const0>\;
  addr_sp_sel <= \<const0>\;
  alu_lhs_sel(2) <= \<const0>\;
  alu_lhs_sel(1) <= \<const0>\;
  alu_lhs_sel(0) <= \<const0>\;
  alu_op(3) <= \<const0>\;
  alu_op(2) <= \<const0>\;
  alu_op(1) <= \<const0>\;
  alu_op(0) <= \<const0>\;
  alu_rhs_sel(2) <= \<const0>\;
  alu_rhs_sel(1) <= \<const0>\;
  alu_rhs_sel(0) <= \<const0>\;
  current_opcode(5) <= \<const0>\;
  current_opcode(4) <= \<const0>\;
  current_opcode(3) <= \<const0>\;
  current_opcode(2) <= \<const0>\;
  current_opcode(1) <= \<const0>\;
  current_opcode(0) <= \<const0>\;
  main_alu_sel <= \<const0>\;
  main_control_sel <= \<const0>\;
  main_mem_sel <= \<const0>\;
  main_reg_l_sel(2) <= \<const0>\;
  main_reg_l_sel(1) <= \<const0>\;
  main_reg_l_sel(0) <= \<const0>\;
  main_reg_m_sel(2) <= \<const0>\;
  main_reg_m_sel(1) <= \<const0>\;
  main_reg_m_sel(0) <= \<const0>\;
  main_reg_sel(2) <= \<const0>\;
  main_reg_sel(1) <= \<const0>\;
  main_reg_sel(0) <= \<const0>\;
  mem_we <= \<const0>\;
  output_imm(15) <= \<const0>\;
  output_imm(14) <= \<const0>\;
  output_imm(13) <= \<const0>\;
  output_imm(12) <= \<const0>\;
  output_imm(11) <= \<const0>\;
  output_imm(10) <= \<const0>\;
  output_imm(9) <= \<const0>\;
  output_imm(8) <= \<const0>\;
  output_imm(7) <= \<const0>\;
  output_imm(6) <= \<const0>\;
  output_imm(5) <= \<const0>\;
  output_imm(4) <= \<const0>\;
  output_imm(3) <= \<const0>\;
  output_imm(2) <= \<const0>\;
  output_imm(1) <= \<const0>\;
  output_imm(0) <= \<const0>\;
  pc_inc <= \<const0>\;
  pc_load <= \<const0>\;
  reg_we(2) <= \<const0>\;
  reg_we(1) <= \<const0>\;
  reg_we(0) <= \<const0>\;
  reg_we_l(2) <= \<const0>\;
  reg_we_l(1) <= \<const0>\;
  reg_we_l(0) <= \<const0>\;
  reg_we_m(2) <= \<const0>\;
  reg_we_m(1) <= \<const0>\;
  reg_we_m(0) <= \<const0>\;
  sp_decr <= \<const0>\;
  sp_inc <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
