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

-- IP VLNV: xilinx.com:module_ref:we_registers:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tdp11_we_registers_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    we_l : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    we_m : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    r0 : OUT STD_LOGIC;
    r0_m : OUT STD_LOGIC;
    r0_l : OUT STD_LOGIC;
    r1 : OUT STD_LOGIC;
    r1_m : OUT STD_LOGIC;
    r1_l : OUT STD_LOGIC;
    r2 : OUT STD_LOGIC;
    r2_m : OUT STD_LOGIC;
    r2_l : OUT STD_LOGIC;
    r3 : OUT STD_LOGIC;
    r3_m : OUT STD_LOGIC;
    r3_l : OUT STD_LOGIC;
    r4 : OUT STD_LOGIC;
    r4_m : OUT STD_LOGIC;
    r4_l : OUT STD_LOGIC;
    r5 : OUT STD_LOGIC;
    r5_m : OUT STD_LOGIC;
    r5_l : OUT STD_LOGIC;
    r6 : OUT STD_LOGIC;
    r6_m : OUT STD_LOGIC;
    r6_l : OUT STD_LOGIC;
    r7 : OUT STD_LOGIC;
    r7_m : OUT STD_LOGIC;
    r7_l : OUT STD_LOGIC
  );
END tdp11_we_registers_0_1;

ARCHITECTURE tdp11_we_registers_0_1_arch OF tdp11_we_registers_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF tdp11_we_registers_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT we_registers IS
    PORT (
      clk : IN STD_LOGIC;
      we : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      we_l : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      we_m : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      r0 : OUT STD_LOGIC;
      r0_m : OUT STD_LOGIC;
      r0_l : OUT STD_LOGIC;
      r1 : OUT STD_LOGIC;
      r1_m : OUT STD_LOGIC;
      r1_l : OUT STD_LOGIC;
      r2 : OUT STD_LOGIC;
      r2_m : OUT STD_LOGIC;
      r2_l : OUT STD_LOGIC;
      r3 : OUT STD_LOGIC;
      r3_m : OUT STD_LOGIC;
      r3_l : OUT STD_LOGIC;
      r4 : OUT STD_LOGIC;
      r4_m : OUT STD_LOGIC;
      r4_l : OUT STD_LOGIC;
      r5 : OUT STD_LOGIC;
      r5_m : OUT STD_LOGIC;
      r5_l : OUT STD_LOGIC;
      r6 : OUT STD_LOGIC;
      r6_m : OUT STD_LOGIC;
      r6_l : OUT STD_LOGIC;
      r7 : OUT STD_LOGIC;
      r7_m : OUT STD_LOGIC;
      r7_l : OUT STD_LOGIC
    );
  END COMPONENT we_registers;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF tdp11_we_registers_0_1_arch: ARCHITECTURE IS "we_registers,Vivado 2022.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF tdp11_we_registers_0_1_arch : ARCHITECTURE IS "tdp11_we_registers_0_1,we_registers,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF tdp11_we_registers_0_1_arch: ARCHITECTURE IS "tdp11_we_registers_0_1,we_registers,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=we_registers,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF tdp11_we_registers_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : we_registers
    PORT MAP (
      clk => clk,
      we => we,
      we_l => we_l,
      we_m => we_m,
      r0 => r0,
      r0_m => r0_m,
      r0_l => r0_l,
      r1 => r1,
      r1_m => r1_m,
      r1_l => r1_l,
      r2 => r2,
      r2_m => r2_m,
      r2_l => r2_l,
      r3 => r3,
      r3_m => r3_m,
      r3_l => r3_l,
      r4 => r4,
      r4_m => r4_m,
      r4_l => r4_l,
      r5 => r5,
      r5_m => r5_m,
      r5_l => r5_l,
      r6 => r6,
      r6_m => r6_m,
      r6_l => r6_l,
      r7 => r7,
      r7_m => r7_m,
      r7_l => r7_l
    );
END tdp11_we_registers_0_1_arch;
