----------------------------------------------------------------------
-- Created by SmartDesign Fri Jul 22 15:48:37 2022
-- Version: v11.9 SP6 11.9.6.7
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library fusion;
use fusion.all;
----------------------------------------------------------------------
-- cpu entity declaration
----------------------------------------------------------------------
entity cpu is
    -- Port list
    port(
        -- Inputs
        CLKA           : in  std_logic;
        rst            : in  std_logic;
        -- Outputs
        current_opcode : out std_logic_vector(5 downto 0)
        );
end cpu;
----------------------------------------------------------------------
-- cpu architecture body
----------------------------------------------------------------------
architecture RTL of cpu is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- address_bus
component address_bus
    -- Port list
    port(
        -- Inputs
        clk         : in  std_logic;
        control     : in  std_logic_vector(15 downto 0);
        control_sel : in  std_logic;
        pc          : in  std_logic_vector(15 downto 0);
        pc_sel      : in  std_logic;
        r0          : in  std_logic_vector(15 downto 0);
        r1          : in  std_logic_vector(15 downto 0);
        r2          : in  std_logic_vector(15 downto 0);
        r3          : in  std_logic_vector(15 downto 0);
        r4          : in  std_logic_vector(15 downto 0);
        r5          : in  std_logic_vector(15 downto 0);
        r6          : in  std_logic_vector(15 downto 0);
        r7          : in  std_logic_vector(15 downto 0);
        reg_sel     : in  std_logic_vector(2 downto 0);
        sp          : in  std_logic_vector(15 downto 0);
        sp_sel      : in  std_logic;
        -- Outputs
        output      : out std_logic_vector(15 downto 0)
        );
end component;
-- alu
component alu
    -- Port list
    port(
        -- Inputs
        clk    : in  std_logic;
        lhs    : in  std_logic_vector(15 downto 0);
        op     : in  std_logic_vector(3 downto 0);
        rhs    : in  std_logic_vector(15 downto 0);
        -- Outputs
        c      : out std_logic;
        g      : out std_logic;
        l      : out std_logic;
        output : out std_logic_vector(15 downto 0);
        z      : out std_logic
        );
end component;
-- AND2
component AND2
    -- Port list
    port(
        -- Inputs
        A : in  std_logic;
        B : in  std_logic;
        -- Outputs
        Y : out std_logic
        );
end component;
-- clock
component clock
    -- Port list
    port(
        -- Inputs
        CLKA      : in  std_logic;
        OADIVRST  : in  std_logic;
        POWERDOWN : in  std_logic;
        -- Outputs
        GLA       : out std_logic;
        LOCK      : out std_logic
        );
end component;
-- control
component control
    -- Port list
    port(
        -- Inputs
        c                : in  std_logic;
        clk              : in  std_logic;
        g                : in  std_logic;
        input            : in  std_logic_vector(7 downto 0);
        l                : in  std_logic;
        rst              : in  std_logic;
        z                : in  std_logic;
        -- Outputs
        addr_control_sel : out std_logic;
        addr_pc_sel      : out std_logic;
        addr_reg_sel     : out std_logic_vector(2 downto 0);
        addr_sp_sel      : out std_logic;
        alu_lhs_sel      : out std_logic_vector(2 downto 0);
        alu_op           : out std_logic_vector(3 downto 0);
        alu_rhs_sel      : out std_logic_vector(2 downto 0);
        current_opcode   : out std_logic_vector(5 downto 0);
        main_alu_sel     : out std_logic;
        main_control_sel : out std_logic;
        main_mem_sel     : out std_logic;
        main_reg_l_sel   : out std_logic_vector(2 downto 0);
        main_reg_m_sel   : out std_logic_vector(2 downto 0);
        main_reg_sel     : out std_logic_vector(2 downto 0);
        mem_we           : out std_logic;
        output_imm       : out std_logic_vector(15 downto 0);
        pc_inc           : out std_logic;
        pc_load          : out std_logic;
        reg_we           : out std_logic_vector(2 downto 0);
        reg_we_l         : out std_logic_vector(2 downto 0);
        reg_we_m         : out std_logic_vector(2 downto 0);
        sp_decr          : out std_logic;
        sp_inc           : out std_logic
        );
end component;
-- alu_bus
component alu_bus
    -- Port list
    port(
        -- Inputs
        clk     : in  std_logic;
        r0      : in  std_logic_vector(15 downto 0);
        r1      : in  std_logic_vector(15 downto 0);
        r2      : in  std_logic_vector(15 downto 0);
        r3      : in  std_logic_vector(15 downto 0);
        r4      : in  std_logic_vector(15 downto 0);
        r5      : in  std_logic_vector(15 downto 0);
        r6      : in  std_logic_vector(15 downto 0);
        r7      : in  std_logic_vector(15 downto 0);
        reg_sel : in  std_logic_vector(2 downto 0);
        -- Outputs
        output  : out std_logic_vector(15 downto 0)
        );
end component;
-- main_bus
component main_bus
    -- Port list
    port(
        -- Inputs
        alu         : in  std_logic_vector(15 downto 0);
        alu_sel     : in  std_logic;
        clk         : in  std_logic;
        control     : in  std_logic_vector(15 downto 0);
        control_sel : in  std_logic;
        mem         : in  std_logic_vector(7 downto 0);
        mem_sel     : in  std_logic;
        r0          : in  std_logic_vector(15 downto 0);
        r1          : in  std_logic_vector(15 downto 0);
        r2          : in  std_logic_vector(15 downto 0);
        r3          : in  std_logic_vector(15 downto 0);
        r4          : in  std_logic_vector(15 downto 0);
        r5          : in  std_logic_vector(15 downto 0);
        r6          : in  std_logic_vector(15 downto 0);
        r7          : in  std_logic_vector(15 downto 0);
        reg_sel     : in  std_logic_vector(2 downto 0);
        reg_sel_l   : in  std_logic_vector(2 downto 0);
        reg_sel_m   : in  std_logic_vector(2 downto 0);
        -- Outputs
        output      : out std_logic_vector(15 downto 0)
        );
end component;
-- memory
component memory
    -- Port list
    port(
        -- Inputs
        addr   : in  std_logic_vector(15 downto 0);
        clk    : in  std_logic;
        data   : in  std_logic_vector(7 downto 0);
        we     : in  std_logic;
        -- Outputs
        output : out std_logic_vector(7 downto 0)
        );
end component;
-- pc
component pc
    -- Port list
    port(
        -- Inputs
        clk    : in  std_logic;
        inc    : in  std_logic;
        input  : in  std_logic_vector(15 downto 0);
        load   : in  std_logic;
        rst    : in  std_logic;
        -- Outputs
        output : out std_logic_vector(15 downto 0)
        );
end component;
-- reg
component reg
    -- Port list
    port(
        -- Inputs
        clk    : in  std_logic;
        input  : in  std_logic_vector(15 downto 0);
        rst    : in  std_logic;
        we     : in  std_logic;
        we_l   : in  std_logic;
        we_m   : in  std_logic;
        -- Outputs
        output : out std_logic_vector(15 downto 0)
        );
end component;
-- sp
component sp
    -- Port list
    port(
        -- Inputs
        clk    : in  std_logic;
        decr   : in  std_logic;
        inc    : in  std_logic;
        rst    : in  std_logic;
        -- Outputs
        output : out std_logic_vector(15 downto 0)
        );
end component;
-- demultiplexor
component demultiplexor
    -- Port list
    port(
        -- Inputs
        clk    : in  std_logic;
        input  : in  std_logic_vector(2 downto 0);
        -- Outputs
        output : out std_logic_vector(7 downto 0)
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal address_bus_0_output     : std_logic_vector(15 downto 0);
signal alu_c                    : std_logic;
signal alu_g                    : std_logic;
signal alu_l                    : std_logic;
signal alu_output               : std_logic_vector(15 downto 0);
signal alu_z                    : std_logic;
signal AND2_0_Y                 : std_logic;
signal clock_0_GLA              : std_logic;
signal clock_0_LOCK             : std_logic;
signal control_addr_control_sel : std_logic;
signal control_addr_pc_sel      : std_logic;
signal control_addr_reg_sel     : std_logic_vector(2 downto 0);
signal control_addr_sp_sel      : std_logic;
signal control_alu_lhs_sel      : std_logic_vector(2 downto 0);
signal control_alu_op           : std_logic_vector(3 downto 0);
signal control_alu_rhs_sel      : std_logic_vector(2 downto 0);
signal control_main_alu_sel     : std_logic;
signal control_main_control_sel : std_logic;
signal control_main_mem_sel     : std_logic;
signal control_main_reg_l_sel   : std_logic_vector(2 downto 0);
signal control_main_reg_m_sel   : std_logic_vector(2 downto 0);
signal control_main_reg_sel     : std_logic_vector(2 downto 0);
signal control_mem_we           : std_logic;
signal control_output_imm       : std_logic_vector(15 downto 0);
signal control_pc_inc           : std_logic;
signal control_pc_load          : std_logic;
signal control_reg_we           : std_logic_vector(2 downto 0);
signal control_reg_we_l         : std_logic_vector(2 downto 0);
signal control_reg_we_m         : std_logic_vector(2 downto 0);
signal control_sp_decr          : std_logic;
signal control_sp_inc           : std_logic;
signal current_opcode_net_0     : std_logic_vector(5 downto 0);
signal lhs_output               : std_logic_vector(15 downto 0);
signal main_bus_output          : std_logic_vector(15 downto 0);
signal main_bus_output7to0      : std_logic_vector(7 downto 0);
signal memory_output            : std_logic_vector(7 downto 0);
signal pc_output                : std_logic_vector(15 downto 0);
signal register_0_output_1      : std_logic_vector(15 downto 0);
signal register_1_output_2      : std_logic_vector(15 downto 0);
signal register_2_output_2      : std_logic_vector(15 downto 0);
signal register_3_output_2      : std_logic_vector(15 downto 0);
signal register_4_output_2      : std_logic_vector(15 downto 0);
signal register_5_output_2      : std_logic_vector(15 downto 0);
signal register_6_output_2      : std_logic_vector(15 downto 0);
signal register_7_output_2      : std_logic_vector(15 downto 0);
signal rhs_output               : std_logic_vector(15 downto 0);
signal sp_output                : std_logic_vector(15 downto 0);
signal we_l_output0to0          : std_logic_vector(0 to 0);
signal we_l_output1to1          : std_logic_vector(1 to 1);
signal we_l_output2to2          : std_logic_vector(2 to 2);
signal we_l_output3to3          : std_logic_vector(3 to 3);
signal we_l_output4to4          : std_logic_vector(4 to 4);
signal we_l_output5to5          : std_logic_vector(5 to 5);
signal we_l_output6to6          : std_logic_vector(6 to 6);
signal we_l_output7to7          : std_logic_vector(7 to 7);
signal we_m_output0to0          : std_logic_vector(0 to 0);
signal we_m_output1to1          : std_logic_vector(1 to 1);
signal we_m_output2to2          : std_logic_vector(2 to 2);
signal we_m_output3to3          : std_logic_vector(3 to 3);
signal we_m_output4to4          : std_logic_vector(4 to 4);
signal we_m_output5to5          : std_logic_vector(5 to 5);
signal we_m_output6to6          : std_logic_vector(6 to 6);
signal we_m_output7to7          : std_logic_vector(7 to 7);
signal we_output0to0            : std_logic_vector(0 to 0);
signal we_output1to1            : std_logic_vector(1 to 1);
signal we_output2to2            : std_logic_vector(2 to 2);
signal we_output3to3            : std_logic_vector(3 to 3);
signal we_output4to4            : std_logic_vector(4 to 4);
signal we_output5to5            : std_logic_vector(5 to 5);
signal we_output6to6            : std_logic_vector(6 to 6);
signal we_output7to7            : std_logic_vector(7 to 7);
signal current_opcode_net_1     : std_logic_vector(5 downto 0);
signal output_net_0             : std_logic_vector(7 downto 0);
signal output_net_1             : std_logic_vector(7 downto 0);
signal output_net_2             : std_logic_vector(7 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net                  : std_logic;
signal GND_net                  : std_logic;

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net <= '1';
 GND_net <= '0';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 current_opcode_net_1       <= current_opcode_net_0;
 current_opcode(5 downto 0) <= current_opcode_net_1;
----------------------------------------------------------------------
-- Slices assignments
----------------------------------------------------------------------
 main_bus_output7to0 <= main_bus_output(7 downto 0);
 we_l_output0to0(0)  <= output_net_1(0);
 we_l_output1to1(1)  <= output_net_1(1);
 we_l_output2to2(2)  <= output_net_1(2);
 we_l_output3to3(3)  <= output_net_1(3);
 we_l_output4to4(4)  <= output_net_1(4);
 we_l_output5to5(5)  <= output_net_1(5);
 we_l_output6to6(6)  <= output_net_1(6);
 we_l_output7to7(7)  <= output_net_1(7);
 we_m_output0to0(0)  <= output_net_2(0);
 we_m_output1to1(1)  <= output_net_2(1);
 we_m_output2to2(2)  <= output_net_2(2);
 we_m_output3to3(3)  <= output_net_2(3);
 we_m_output4to4(4)  <= output_net_2(4);
 we_m_output5to5(5)  <= output_net_2(5);
 we_m_output6to6(6)  <= output_net_2(6);
 we_m_output7to7(7)  <= output_net_2(7);
 we_output0to0(0)    <= output_net_0(0);
 we_output1to1(1)    <= output_net_0(1);
 we_output2to2(2)    <= output_net_0(2);
 we_output3to3(3)    <= output_net_0(3);
 we_output4to4(4)    <= output_net_0(4);
 we_output5to5(5)    <= output_net_0(5);
 we_output6to6(6)    <= output_net_0(6);
 we_output7to7(7)    <= output_net_0(7);
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- address_bus_inst_0
address_bus_inst_0 : address_bus
    port map( 
        -- Inputs
        clk         => clock_0_GLA,
        pc_sel      => control_addr_pc_sel,
        sp_sel      => control_addr_sp_sel,
        control_sel => control_addr_control_sel,
        reg_sel     => control_addr_reg_sel,
        pc          => pc_output,
        sp          => sp_output,
        control     => control_output_imm,
        r0          => register_0_output_1,
        r1          => register_1_output_2,
        r2          => register_2_output_2,
        r3          => register_3_output_2,
        r4          => register_4_output_2,
        r5          => register_5_output_2,
        r6          => register_6_output_2,
        r7          => register_7_output_2,
        -- Outputs
        output      => address_bus_0_output 
        );
-- alu_inst_0
alu_inst_0 : alu
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        lhs    => lhs_output,
        rhs    => rhs_output,
        op     => control_alu_op,
        -- Outputs
        z      => alu_z,
        g      => alu_g,
        l      => alu_l,
        c      => alu_c,
        output => alu_output 
        );
-- AND2_0
AND2_0 : AND2
    port map( 
        -- Inputs
        A => clock_0_LOCK,
        B => rst,
        -- Outputs
        Y => AND2_0_Y 
        );
-- clock_0
clock_0 : clock
    port map( 
        -- Inputs
        POWERDOWN => VCC_net,
        CLKA      => CLKA,
        OADIVRST  => GND_net,
        -- Outputs
        LOCK      => clock_0_LOCK,
        GLA       => clock_0_GLA 
        );
-- control_inst_0
control_inst_0 : control
    port map( 
        -- Inputs
        clk              => clock_0_GLA,
        rst              => AND2_0_Y,
        input            => main_bus_output7to0,
        z                => alu_z,
        g                => alu_g,
        l                => alu_l,
        c                => alu_c,
        -- Outputs
        mem_we           => control_mem_we,
        pc_inc           => control_pc_inc,
        pc_load          => control_pc_load,
        sp_inc           => control_sp_inc,
        sp_decr          => control_sp_decr,
        alu_op           => control_alu_op,
        reg_we           => control_reg_we,
        reg_we_l         => control_reg_we_l,
        reg_we_m         => control_reg_we_m,
        main_alu_sel     => control_main_alu_sel,
        main_mem_sel     => control_main_mem_sel,
        main_control_sel => control_main_control_sel,
        main_reg_sel     => control_main_reg_sel,
        main_reg_l_sel   => control_main_reg_l_sel,
        main_reg_m_sel   => control_main_reg_m_sel,
        addr_pc_sel      => control_addr_pc_sel,
        addr_sp_sel      => control_addr_sp_sel,
        addr_reg_sel     => control_addr_reg_sel,
        addr_control_sel => control_addr_control_sel,
        alu_rhs_sel      => control_alu_rhs_sel,
        alu_lhs_sel      => control_alu_lhs_sel,
        output_imm       => control_output_imm,
        current_opcode   => current_opcode_net_0 
        );
-- lhs
lhs : alu_bus
    port map( 
        -- Inputs
        clk     => clock_0_GLA,
        reg_sel => control_alu_lhs_sel,
        r0      => register_0_output_1,
        r1      => register_1_output_2,
        r2      => register_2_output_2,
        r3      => register_3_output_2,
        r4      => register_4_output_2,
        r5      => register_5_output_2,
        r6      => register_6_output_2,
        r7      => register_7_output_2,
        -- Outputs
        output  => lhs_output 
        );
-- main_bus_inst_0
main_bus_inst_0 : main_bus
    port map( 
        -- Inputs
        clk         => clock_0_GLA,
        reg_sel     => control_main_reg_sel,
        reg_sel_l   => control_main_reg_l_sel,
        reg_sel_m   => control_main_reg_m_sel,
        mem_sel     => control_main_mem_sel,
        alu_sel     => control_main_alu_sel,
        control_sel => control_main_control_sel,
        r0          => register_0_output_1,
        r1          => register_1_output_2,
        r2          => register_2_output_2,
        r3          => register_3_output_2,
        r4          => register_4_output_2,
        r5          => register_5_output_2,
        r6          => register_6_output_2,
        r7          => register_7_output_2,
        alu         => alu_output,
        control     => control_output_imm,
        mem         => memory_output,
        -- Outputs
        output      => main_bus_output 
        );
-- memory_inst_0
memory_inst_0 : memory
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        we     => control_mem_we,
        addr   => address_bus_0_output,
        data   => main_bus_output7to0,
        -- Outputs
        output => memory_output 
        );
-- pc_inst_0
pc_inst_0 : pc
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        inc    => control_pc_inc,
        load   => control_pc_load,
        input  => address_bus_0_output,
        -- Outputs
        output => pc_output 
        );
-- register_0
register_0 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output0to0(0),
        we_m   => we_m_output0to0(0),
        we_l   => we_l_output0to0(0),
        input  => main_bus_output,
        -- Outputs
        output => register_0_output_1 
        );
-- register_1
register_1 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output1to1(1),
        we_m   => we_m_output1to1(1),
        we_l   => we_l_output1to1(1),
        input  => main_bus_output,
        -- Outputs
        output => register_1_output_2 
        );
-- register_2
register_2 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output2to2(2),
        we_m   => we_m_output2to2(2),
        we_l   => we_l_output2to2(2),
        input  => main_bus_output,
        -- Outputs
        output => register_2_output_2 
        );
-- register_3
register_3 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output3to3(3),
        we_m   => we_m_output3to3(3),
        we_l   => we_l_output3to3(3),
        input  => main_bus_output,
        -- Outputs
        output => register_3_output_2 
        );
-- register_4
register_4 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output4to4(4),
        we_m   => we_m_output4to4(4),
        we_l   => we_l_output4to4(4),
        input  => main_bus_output,
        -- Outputs
        output => register_4_output_2 
        );
-- register_5
register_5 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output5to5(5),
        we_m   => we_m_output5to5(5),
        we_l   => we_l_output5to5(5),
        input  => main_bus_output,
        -- Outputs
        output => register_5_output_2 
        );
-- register_6
register_6 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output6to6(6),
        we_m   => we_m_output6to6(6),
        we_l   => we_l_output6to6(6),
        input  => main_bus_output,
        -- Outputs
        output => register_6_output_2 
        );
-- register_7
register_7 : reg
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        we     => we_output7to7(7),
        we_m   => we_m_output7to7(7),
        we_l   => we_l_output7to7(7),
        input  => main_bus_output,
        -- Outputs
        output => register_7_output_2 
        );
-- rhs
rhs : alu_bus
    port map( 
        -- Inputs
        clk     => clock_0_GLA,
        reg_sel => control_alu_rhs_sel,
        r0      => register_0_output_1,
        r1      => register_1_output_2,
        r2      => register_2_output_2,
        r3      => register_3_output_2,
        r4      => register_4_output_2,
        r5      => register_5_output_2,
        r6      => register_6_output_2,
        r7      => register_7_output_2,
        -- Outputs
        output  => rhs_output 
        );
-- sp_inst_0
sp_inst_0 : sp
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        rst    => AND2_0_Y,
        inc    => control_sp_inc,
        decr   => control_sp_decr,
        -- Outputs
        output => sp_output 
        );
-- we
we : demultiplexor
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        input  => control_reg_we,
        -- Outputs
        output => output_net_0 
        );
-- we_l
we_l : demultiplexor
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        input  => control_reg_we_l,
        -- Outputs
        output => output_net_1 
        );
-- we_m
we_m : demultiplexor
    port map( 
        -- Inputs
        clk    => clock_0_GLA,
        input  => control_reg_we_m,
        -- Outputs
        output => output_net_2 
        );

end RTL;
