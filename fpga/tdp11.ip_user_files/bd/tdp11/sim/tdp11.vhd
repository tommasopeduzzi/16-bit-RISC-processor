--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Tue Aug 16 16:53:46 2022
--Host        : framework running 64-bit unknown
--Command     : generate_target tdp11.bd
--Design      : tdp11
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- Debug Ports
  -- General Purpose 
  -- Registers
  -- Control Logic
  -- ALU
  entity tdp11 is
  port (
    address_bus_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clock : in STD_LOGIC;
    main_bus_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    memory_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_0_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_1_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_2_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_3_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_4_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_5_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_6_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_7_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    sp_debug : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of tdp11 : entity is "tdp11,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tdp11,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=22,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=20,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of tdp11 : entity is "tdp11.hwdef";
end tdp11;

architecture STRUCTURE of tdp11 is
  component tdp11_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_0;
  component tdp11_reg_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_1;
  component tdp11_reg_0_2 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_2;
  component tdp11_reg_0_3 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_3;
  component tdp11_reg_0_4 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_4;
  component tdp11_reg_0_5 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_5;
  component tdp11_reg_0_6 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_6;
  component tdp11_reg_0_7 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : in STD_LOGIC;
    we_m : in STD_LOGIC;
    we_l : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_reg_0_7;
  component tdp11_alu_bus_0_0 is
  port (
    clk : in STD_LOGIC;
    reg_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_alu_bus_0_0;
  component tdp11_alu_bus_1_0 is
  port (
    clk : in STD_LOGIC;
    reg_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_alu_bus_1_0;
  component tdp11_sp_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inc : in STD_LOGIC;
    decr : in STD_LOGIC;
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_sp_0_0;
  component tdp11_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component tdp11_memory_0_0;
  component tdp11_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component tdp11_xlslice_0_0;
  component tdp11_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component tdp11_clk_wiz_0_0;
  component tdp11_main_bus_0_1 is
  port (
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
  end component tdp11_main_bus_0_1;
  component tdp11_pc_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inc : in STD_LOGIC;
    load : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_pc_0_0;
  component tdp11_alu_0_0 is
  port (
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
  end component tdp11_alu_0_0;
  component tdp11_address_bus_0_0 is
  port (
    clk : in STD_LOGIC;
    pc_sel : in STD_LOGIC;
    sp_sel : in STD_LOGIC;
    control_sel : in STD_LOGIC;
    reg_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    control : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component tdp11_address_bus_0_0;
  component tdp11_control_0_0 is
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
  end component tdp11_control_0_0;
  component tdp11_demultiplexor_0_0 is
  port (
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
  end component tdp11_demultiplexor_0_0;
  component tdp11_demultiplexor_0_1 is
  port (
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
  end component tdp11_demultiplexor_0_1;
  component tdp11_demultiplexor_0_2 is
  port (
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
  end component tdp11_demultiplexor_0_2;
  signal address_bus_0_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal alu_0_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal alu_c : STD_LOGIC;
  signal alu_g : STD_LOGIC;
  signal alu_l : STD_LOGIC;
  signal alu_z : STD_LOGIC;
  signal clk_clk_out1 : STD_LOGIC;
  signal clock_1 : STD_LOGIC;
  signal control_addr_control_sel : STD_LOGIC;
  signal control_addr_pc_sel : STD_LOGIC;
  signal control_addr_reg_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_addr_sp_sel : STD_LOGIC;
  signal control_alu_lhs_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_alu_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_alu_rhs_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_main_alu_sel : STD_LOGIC;
  signal control_main_control_sel : STD_LOGIC;
  signal control_main_mem_sel : STD_LOGIC;
  signal control_main_reg_l_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_main_reg_m_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_main_reg_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_mem_we : STD_LOGIC;
  signal control_output_imm : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_pc_inc : STD_LOGIC;
  signal control_pc_load : STD_LOGIC;
  signal control_reg_we : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_reg_we_l : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_reg_we_m : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_sp_decr : STD_LOGIC;
  signal control_sp_inc : STD_LOGIC;
  signal lhs_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal main_bus_0_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal memory_0_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pc_0_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_0_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_1_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_2_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_3_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_4_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_5_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_6_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_7_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rhs_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rst_1 : STD_LOGIC;
  signal sp_0_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal we_l_r0 : STD_LOGIC;
  signal we_l_r1 : STD_LOGIC;
  signal we_l_r2 : STD_LOGIC;
  signal we_l_r3 : STD_LOGIC;
  signal we_l_r4 : STD_LOGIC;
  signal we_l_r5 : STD_LOGIC;
  signal we_l_r6 : STD_LOGIC;
  signal we_l_r7 : STD_LOGIC;
  signal we_m_r0 : STD_LOGIC;
  signal we_m_r1 : STD_LOGIC;
  signal we_m_r2 : STD_LOGIC;
  signal we_m_r3 : STD_LOGIC;
  signal we_m_r4 : STD_LOGIC;
  signal we_m_r5 : STD_LOGIC;
  signal we_m_r6 : STD_LOGIC;
  signal we_m_r7 : STD_LOGIC;
  signal we_r0 : STD_LOGIC;
  signal we_r1 : STD_LOGIC;
  signal we_r2 : STD_LOGIC;
  signal we_r3 : STD_LOGIC;
  signal we_r4 : STD_LOGIC;
  signal we_r5 : STD_LOGIC;
  signal we_r6 : STD_LOGIC;
  signal we_r7 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_control_current_opcode_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  address_bus_debug(15 downto 0) <= address_bus_0_output(15 downto 0);
  alu_debug(15 downto 0) <= alu_0_output(15 downto 0);
  clock_1 <= clock;
  main_bus_debug(15 downto 0) <= main_bus_0_output(15 downto 0);
  memory_debug(7 downto 0) <= memory_0_output(7 downto 0);
  pc_debug(15 downto 0) <= pc_0_output(15 downto 0);
  reg_0_debug(15 downto 0) <= reg_0_output(15 downto 0);
  reg_1_debug(15 downto 0) <= reg_1_output(15 downto 0);
  reg_2_debug(15 downto 0) <= reg_2_output(15 downto 0);
  reg_3_debug(15 downto 0) <= reg_3_output(15 downto 0);
  reg_4_debug(15 downto 0) <= reg_4_output(15 downto 0);
  reg_5_debug(15 downto 0) <= reg_5_output(15 downto 0);
  reg_6_debug(15 downto 0) <= reg_6_output(15 downto 0);
  reg_7_debug(15 downto 0) <= reg_7_output(15 downto 0);
  rst_1 <= rst;
  sp_debug(15 downto 0) <= sp_0_output(15 downto 0);
address_bus: component tdp11_address_bus_0_0
     port map (
      clk => clk_clk_out1,
      control(15 downto 0) => control_output_imm(15 downto 0),
      control_sel => control_addr_control_sel,
      output(15 downto 0) => address_bus_0_output(15 downto 0),
      pc(15 downto 0) => pc_0_output(15 downto 0),
      pc_sel => control_addr_pc_sel,
      r0(15 downto 0) => reg_0_output(15 downto 0),
      r1(15 downto 0) => reg_1_output(15 downto 0),
      r2(15 downto 0) => reg_2_output(15 downto 0),
      r3(15 downto 0) => reg_3_output(15 downto 0),
      r4(15 downto 0) => reg_4_output(15 downto 0),
      r5(15 downto 0) => reg_5_output(15 downto 0),
      r6(15 downto 0) => reg_6_output(15 downto 0),
      r7(15 downto 0) => reg_7_output(15 downto 0),
      reg_sel(2 downto 0) => control_addr_reg_sel(2 downto 0),
      sp(15 downto 0) => sp_0_output(15 downto 0),
      sp_sel => control_addr_sp_sel
    );
alu: component tdp11_alu_0_0
     port map (
      c => alu_c,
      clk => clk_clk_out1,
      g => alu_g,
      l => alu_l,
      lhs(15 downto 0) => lhs_output(15 downto 0),
      op(3 downto 0) => control_alu_op(3 downto 0),
      output(15 downto 0) => alu_0_output(15 downto 0),
      rhs(15 downto 0) => rhs_output(15 downto 0),
      z => alu_z
    );
clk: component tdp11_clk_wiz_0_0
     port map (
      clk_in1 => clock_1,
      clk_out1 => clk_clk_out1,
      reset => rst_1
    );
control: component tdp11_control_0_0
     port map (
      addr_control_sel => control_addr_control_sel,
      addr_pc_sel => control_addr_pc_sel,
      addr_reg_sel(2 downto 0) => control_addr_reg_sel(2 downto 0),
      addr_sp_sel => control_addr_sp_sel,
      alu_lhs_sel(2 downto 0) => control_alu_lhs_sel(2 downto 0),
      alu_op(3 downto 0) => control_alu_op(3 downto 0),
      alu_rhs_sel(2 downto 0) => control_alu_rhs_sel(2 downto 0),
      c => alu_c,
      clk => clk_clk_out1,
      current_opcode(5 downto 0) => NLW_control_current_opcode_UNCONNECTED(5 downto 0),
      g => alu_g,
      input(7 downto 0) => memory_0_output(7 downto 0),
      l => alu_l,
      main_alu_sel => control_main_alu_sel,
      main_control_sel => control_main_control_sel,
      main_mem_sel => control_main_mem_sel,
      main_reg_l_sel(2 downto 0) => control_main_reg_l_sel(2 downto 0),
      main_reg_m_sel(2 downto 0) => control_main_reg_m_sel(2 downto 0),
      main_reg_sel(2 downto 0) => control_main_reg_sel(2 downto 0),
      mem_we => control_mem_we,
      output_imm(15 downto 0) => control_output_imm(15 downto 0),
      pc_inc => control_pc_inc,
      pc_load => control_pc_load,
      reg_we(2 downto 0) => control_reg_we(2 downto 0),
      reg_we_l(2 downto 0) => control_reg_we_l(2 downto 0),
      reg_we_m(2 downto 0) => control_reg_we_m(2 downto 0),
      rst => rst_1,
      sp_decr => control_sp_decr,
      sp_inc => control_sp_inc,
      z => alu_z
    );
lhs: component tdp11_alu_bus_0_0
     port map (
      clk => clk_clk_out1,
      output(15 downto 0) => lhs_output(15 downto 0),
      r0(15 downto 0) => reg_0_output(15 downto 0),
      r1(15 downto 0) => reg_1_output(15 downto 0),
      r2(15 downto 0) => reg_2_output(15 downto 0),
      r3(15 downto 0) => reg_3_output(15 downto 0),
      r4(15 downto 0) => reg_4_output(15 downto 0),
      r5(15 downto 0) => reg_5_output(15 downto 0),
      r6(15 downto 0) => reg_6_output(15 downto 0),
      r7(15 downto 0) => reg_7_output(15 downto 0),
      reg_sel(2 downto 0) => control_alu_lhs_sel(2 downto 0)
    );
main_bus: component tdp11_main_bus_0_1
     port map (
      alu(15 downto 0) => alu_0_output(15 downto 0),
      alu_sel => control_main_alu_sel,
      clk => clk_clk_out1,
      control(15 downto 0) => control_output_imm(15 downto 0),
      control_sel => control_main_control_sel,
      mem(7 downto 0) => memory_0_output(7 downto 0),
      mem_sel => control_main_mem_sel,
      output(15 downto 0) => main_bus_0_output(15 downto 0),
      r0(15 downto 0) => reg_0_output(15 downto 0),
      r1(15 downto 0) => reg_1_output(15 downto 0),
      r2(15 downto 0) => reg_2_output(15 downto 0),
      r3(15 downto 0) => reg_3_output(15 downto 0),
      r4(15 downto 0) => reg_4_output(15 downto 0),
      r5(15 downto 0) => reg_5_output(15 downto 0),
      r6(15 downto 0) => reg_6_output(15 downto 0),
      r7(15 downto 0) => reg_7_output(15 downto 0),
      reg_sel(2 downto 0) => control_main_reg_sel(2 downto 0),
      reg_sel_l(2 downto 0) => control_main_reg_l_sel(2 downto 0),
      reg_sel_m(2 downto 0) => control_main_reg_m_sel(2 downto 0)
    );
memory: component tdp11_memory_0_0
     port map (
      addr(15 downto 0) => address_bus_0_output(15 downto 0),
      clk => clk_clk_out1,
      data(7 downto 0) => xlslice_0_Dout(7 downto 0),
      output(7 downto 0) => memory_0_output(7 downto 0),
      we => control_mem_we
    );
-- Program Counter
  -- Stack Pointer
  pc_0: component tdp11_pc_0_0
     port map (
      clk => clk_clk_out1,
      inc => control_pc_inc,
      input(15 downto 0) => address_bus_0_output(15 downto 0),
      load => control_pc_load,
      output(15 downto 0) => pc_0_output(15 downto 0),
      rst => rst_1
    );
reg_0: component tdp11_reg_0_0
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_0_output(15 downto 0),
      rst => rst_1,
      we => we_r0,
      we_l => we_l_r0,
      we_m => we_m_r0
    );
reg_1: component tdp11_reg_0_1
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_1_output(15 downto 0),
      rst => rst_1,
      we => we_r1,
      we_l => we_l_r1,
      we_m => we_m_r1
    );
reg_2: component tdp11_reg_0_2
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_2_output(15 downto 0),
      rst => rst_1,
      we => we_r2,
      we_l => we_l_r2,
      we_m => we_m_r2
    );
reg_3: component tdp11_reg_0_3
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_3_output(15 downto 0),
      rst => rst_1,
      we => we_r3,
      we_l => we_l_r3,
      we_m => we_m_r3
    );
reg_4: component tdp11_reg_0_4
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_4_output(15 downto 0),
      rst => rst_1,
      we => we_r4,
      we_l => we_l_r4,
      we_m => we_m_r4
    );
reg_5: component tdp11_reg_0_5
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_5_output(15 downto 0),
      rst => rst_1,
      we => we_r5,
      we_l => we_l_r5,
      we_m => we_m_r5
    );
reg_6: component tdp11_reg_0_6
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_6_output(15 downto 0),
      rst => rst_1,
      we => we_r6,
      we_l => we_l_r6,
      we_m => we_m_r6
    );
reg_7: component tdp11_reg_0_7
     port map (
      clk => clk_clk_out1,
      input(15 downto 0) => main_bus_0_output(15 downto 0),
      output(15 downto 0) => reg_7_output(15 downto 0),
      rst => rst_1,
      we => we_r7,
      we_l => we_l_r7,
      we_m => we_m_r7
    );
rhs: component tdp11_alu_bus_1_0
     port map (
      clk => clk_clk_out1,
      output(15 downto 0) => rhs_output(15 downto 0),
      r0(15 downto 0) => reg_0_output(15 downto 0),
      r1(15 downto 0) => reg_1_output(15 downto 0),
      r2(15 downto 0) => reg_2_output(15 downto 0),
      r3(15 downto 0) => reg_3_output(15 downto 0),
      r4(15 downto 0) => reg_4_output(15 downto 0),
      r5(15 downto 0) => reg_5_output(15 downto 0),
      r6(15 downto 0) => reg_6_output(15 downto 0),
      r7(15 downto 0) => reg_7_output(15 downto 0),
      reg_sel(2 downto 0) => control_alu_rhs_sel(2 downto 0)
    );
slice: component tdp11_xlslice_0_0
     port map (
      Din(15 downto 0) => main_bus_0_output(15 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
sp_0: component tdp11_sp_0_0
     port map (
      clk => clk_clk_out1,
      decr => control_sp_decr,
      inc => control_sp_inc,
      output(15 downto 0) => sp_0_output(15 downto 0),
      rst => rst_1
    );
we: component tdp11_demultiplexor_0_0
     port map (
      clk => clk_clk_out1,
      input(2 downto 0) => control_reg_we(2 downto 0),
      r0 => we_r0,
      r1 => we_r1,
      r2 => we_r2,
      r3 => we_r3,
      r4 => we_r4,
      r5 => we_r5,
      r6 => we_r6,
      r7 => we_r7
    );
we_l: component tdp11_demultiplexor_0_1
     port map (
      clk => clk_clk_out1,
      input(2 downto 0) => control_reg_we_l(2 downto 0),
      r0 => we_l_r0,
      r1 => we_l_r1,
      r2 => we_l_r2,
      r3 => we_l_r3,
      r4 => we_l_r4,
      r5 => we_l_r5,
      r6 => we_l_r6,
      r7 => we_l_r7
    );
we_m: component tdp11_demultiplexor_0_2
     port map (
      clk => clk_clk_out1,
      input(2 downto 0) => control_reg_we_m(2 downto 0),
      r0 => we_m_r0,
      r1 => we_m_r1,
      r2 => we_m_r2,
      r3 => we_m_r3,
      r4 => we_m_r4,
      r5 => we_m_r5,
      r6 => we_m_r6,
      r7 => we_m_r7
    );
end STRUCTURE;
