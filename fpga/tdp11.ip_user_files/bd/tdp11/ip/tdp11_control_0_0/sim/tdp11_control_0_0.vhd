-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:control:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tdp11_control_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    z : IN STD_LOGIC;
    g : IN STD_LOGIC;
    l : IN STD_LOGIC;
    c : IN STD_LOGIC;
    mem_we : OUT STD_LOGIC;
    pc_inc : OUT STD_LOGIC;
    pc_load : OUT STD_LOGIC;
    sp_inc : OUT STD_LOGIC;
    sp_decr : OUT STD_LOGIC;
    alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    reg_we : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    reg_we_l : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    reg_we_m : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    main_alu_sel : OUT STD_LOGIC;
    main_mem_sel : OUT STD_LOGIC;
    main_control_sel : OUT STD_LOGIC;
    main_reg_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    main_reg_l_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    main_reg_m_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    addr_pc_sel : OUT STD_LOGIC;
    addr_sp_sel : OUT STD_LOGIC;
    addr_reg_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    addr_control_sel : OUT STD_LOGIC;
    alu_rhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    alu_lhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    output_imm : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    current_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END tdp11_control_0_0;

ARCHITECTURE tdp11_control_0_0_arch OF tdp11_control_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF tdp11_control_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT control IS
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      z : IN STD_LOGIC;
      g : IN STD_LOGIC;
      l : IN STD_LOGIC;
      c : IN STD_LOGIC;
      mem_we : OUT STD_LOGIC;
      pc_inc : OUT STD_LOGIC;
      pc_load : OUT STD_LOGIC;
      sp_inc : OUT STD_LOGIC;
      sp_decr : OUT STD_LOGIC;
      alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      reg_we : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      reg_we_l : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      reg_we_m : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      main_alu_sel : OUT STD_LOGIC;
      main_mem_sel : OUT STD_LOGIC;
      main_control_sel : OUT STD_LOGIC;
      main_reg_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      main_reg_l_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      main_reg_m_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      addr_pc_sel : OUT STD_LOGIC;
      addr_sp_sel : OUT STD_LOGIC;
      addr_reg_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      addr_control_sel : OUT STD_LOGIC;
      alu_rhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      alu_lhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      output_imm : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      current_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
    );
  END COMPONENT control;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : control
    PORT MAP (
      clk => clk,
      rst => rst,
      input => input,
      z => z,
      g => g,
      l => l,
      c => c,
      mem_we => mem_we,
      pc_inc => pc_inc,
      pc_load => pc_load,
      sp_inc => sp_inc,
      sp_decr => sp_decr,
      alu_op => alu_op,
      reg_we => reg_we,
      reg_we_l => reg_we_l,
      reg_we_m => reg_we_m,
      main_alu_sel => main_alu_sel,
      main_mem_sel => main_mem_sel,
      main_control_sel => main_control_sel,
      main_reg_sel => main_reg_sel,
      main_reg_l_sel => main_reg_l_sel,
      main_reg_m_sel => main_reg_m_sel,
      addr_pc_sel => addr_pc_sel,
      addr_sp_sel => addr_sp_sel,
      addr_reg_sel => addr_reg_sel,
      addr_control_sel => addr_control_sel,
      alu_rhs_sel => alu_rhs_sel,
      alu_lhs_sel => alu_lhs_sel,
      output_imm => output_imm,
      current_opcode => current_opcode
    );
END tdp11_control_0_0_arch;
