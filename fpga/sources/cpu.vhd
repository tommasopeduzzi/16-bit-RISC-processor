--------------------------------------------------------------------------------
-- File: cpu.vhd
--
-- Description: 
--
-- Top level module for CPU
--
-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY cpu IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC
    );
END cpu;

ARCHITECTURE architecture_cpu OF cpu IS
    SIGNAL control_mem_we : STD_LOGIC;
    SIGNAL control_pc_inc : STD_LOGIC;
    SIGNAL control_pc_load : STD_LOGIC;
    SIGNAL control_sp_inc : STD_LOGIC;
    SIGNAL control_sp_decr : STD_LOGIC;
    SIGNAL control_alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL control_alu_latch_result : STD_LOGIC;
    SIGNAL control_reg_we : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL control_reg_we_l : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL control_reg_we_m : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL control_main_alu_sel : STD_LOGIC;
    SIGNAL control_main_mem_sel : STD_LOGIC;
    SIGNAL control_main_control_sel : STD_LOGIC;
    SIGNAL control_main_reg_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL control_main_reg_l_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL control_main_reg_m_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL control_addr_pc_sel : STD_LOGIC;
    SIGNAL control_addr_sp_sel : STD_LOGIC;
    SIGNAL control_addr_reg_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL control_addr_control_sel : STD_LOGIC;
    SIGNAL control_addr_alu_sel : STD_LOGIC; -- ALU select
    SIGNAL control_alu_rhs_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL control_alu_rhs_control_sel : STD_LOGIC;
    SIGNAL control_alu_lhs_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL control_alu_lhs_control_sel : STD_LOGIC;
    SIGNAL control_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL control_rhs_data : STD_LOGIC_VECTOR(15 downto 0);
    SIGNAL control_lhs_data : STD_LOGIC_VECTOR(15 downto 0);

    SIGNAL alu_flags_c : STD_LOGIC;
    SIGNAL alu_flags_l : STD_LOGIC;
    SIGNAL alu_flags_z : STD_LOGIC;

    SIGNAL main_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL addr_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL alu_rhs_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL alu_lhs_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);

    COMPONENT CONTROL IS
        PORT (
            i_clk : IN STD_LOGIC;
            i_rst : IN STD_LOGIC;
            i_memdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- i_memdata data from memory
            i_z : IN STD_LOGIC; -- i_z flag
            i_l : IN STD_LOGIC; -- n flag
            i_c : IN STD_LOGIC; -- c flag

            o_mem_we : OUT STD_LOGIC; -- write enable memory

            o_pc_inc : OUT STD_LOGIC; -- increment PC
            o_pc_load : OUT STD_LOGIC; -- load PC from memory bus

            o_sp_inc : OUT STD_LOGIC; -- increment SP
            o_sp_decr : OUT STD_LOGIC; -- decrement SP

            o_alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- ALU operation
            o_alu_latch_result : OUT STD_LOGIC; -- ALU latch result 

            o_reg_we : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- write enable registers
            o_reg_we_l : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- write enable LSB registers
            o_reg_we_m : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- write enable MSB registers

            -- main bus
            o_main_alu_sel : OUT STD_LOGIC; -- ALU select
            o_main_mem_sel : OUT STD_LOGIC; -- memory select
            o_main_control_sel : OUT STD_LOGIC; -- control select
            o_main_reg_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- register select
            o_main_reg_l_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- register LSB select
            o_main_reg_m_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- register MSB select

            -- address bus
            o_addr_pc_sel : OUT STD_LOGIC; -- PC select
            o_addr_sp_sel : OUT STD_LOGIC; -- SP select
            o_addr_reg_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- register select
            o_addr_control_sel : OUT STD_LOGIC; -- control select
            o_addr_alu_sel : OUT STD_LOGIC; -- ALU select

            -- alu operand bus
            o_alu_rhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- rhs select
            o_alu_rhs_control_sel : OUT STD_LOGIC; -- rhs control
            o_alu_lhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- lhs select
            o_alu_lhs_control_sel : OUT STD_LOGIC; -- rhs control

            -- immediate output
            o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- immediate output
            o_rhs_alu_imm : OUT STD_LOGIC_VECTOR(15 downto 0); -- rhs output
            o_lhs_alu_imm : OUT STD_LOGIC_VECTOR(15 downto 0) -- rhs output
        );
    END COMPONENT;

    SIGNAL pc_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
    COMPONENT PC IS
        PORT (
            i_clk : IN STD_LOGIC; -- clock
            i_rst : IN STD_LOGIC; -- reset
            i_inc : IN STD_LOGIC; -- increase program counter
            i_load : IN STD_LOGIC; -- i_load program counter
            i_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- i_data address
            o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- o_data
        );
    END COMPONENT;

    SIGNAL sp_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
    COMPONENT SP IS
        PORT (
            i_clk : IN STD_LOGIC; -- clock
            i_rst : IN STD_LOGIC; -- reset
            i_inc : IN STD_LOGIC; -- increment
            i_decr : IN STD_LOGIC; -- decrement
            o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- output
        );
    END COMPONENT;

    TYPE reg_bus_type IS ARRAY (0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL reg_bus : reg_bus_type;
    COMPONENT REG IS
        PORT (
            i_clk : IN STD_LOGIC; -- clock
            i_rst : IN STD_LOGIC; -- reset
            i_we : IN STD_LOGIC; -- write enable
            i_we_m : IN STD_LOGIC; -- write enable less significant byte of bus to most significant byte of register (for memdata)
            i_we_l : IN STD_LOGIC; -- write enable less significant byte of bus to less significant byte of register (for memdata)
            i_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- input data
            o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- output data 
        );
    END COMPONENT;

    SIGNAL alu_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
    COMPONENT ALU IS
        PORT (
            i_clk : IN STD_LOGIC; -- clock
            i_rhs : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- left hand side operand
            i_lhs : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- right hand side operand
            i_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- operation
            i_latch_result : IN STD_LOGIC; -- latch result
            o_result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- o_result
            o_z : OUT STD_LOGIC; -- o_z flag
            o_l : OUT STD_LOGIC; -- o_l flag
            o_c : OUT STD_LOGIC -- o_c flag
        );
    END COMPONENT;

    SIGNAL memdata_bus : STD_LOGIC_VECTOR(7 DOWNTO 0);
    COMPONENT MEMORY IS
        PORT (
            i_clk : IN STD_LOGIC; -- clock
            i_we : IN STD_LOGIC; -- write enable 
            i_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- address
            i_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- i_data to write
            o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- output 
        );
    END COMPONENT;
BEGIN

    main_bus <= alu_bus WHEN control_main_alu_sel = '1' ELSE
        (7 DOWNTO 0 => '0') & memdata_bus WHEN control_main_mem_sel = '1' ELSE
        control_data WHEN control_main_control_sel = '1' ELSE
        reg_bus(to_integer(unsigned(control_main_reg_sel))) WHEN NOT (control_main_reg_sel = "XXX") ELSE
        (7 DOWNTO 0 => '0') & reg_bus(to_integer(unsigned(control_main_reg_l_sel)))(7 DOWNTO 0) WHEN NOT (control_main_reg_l_sel = "XXX") ELSE
        (7 DOWNTO 0 => '0') & reg_bus(to_integer(unsigned(control_main_reg_m_sel)))(15 DOWNTO 8) WHEN NOT (control_main_reg_m_sel = "XXX") ELSE
        (15 DOWNTO 0 => 'X');

    addr_bus <= sp_bus WHEN control_addr_sp_sel = '1' ELSE
        pc_bus WHEN control_addr_pc_sel = '1' ELSE
        control_data WHEN control_addr_control_sel = '1' else
        alu_bus WHEN control_addr_alu_sel = '1' ELSE
        reg_bus(to_integer(unsigned(control_addr_reg_sel))) WHEN NOT (control_addr_reg_sel = "XXX") ELSE
        (15 DOWNTO 0 => 'X');

    alu_rhs_bus <= control_rhs_data WHEN control_alu_rhs_control_sel ='1' ELSE 
        reg_bus(to_integer(unsigned(control_alu_rhs_sel))) WHEN (control_alu_rhs_sel = "XXX") ELSE
        (15 DOWNTO 0 => 'X');
    alu_lhs_bus <= control_lhs_data WHEN control_alu_lhs_control_sel ='1' ELSE
        reg_bus(to_integer(unsigned(control_alu_lhs_sel))) WHEN NOT (control_alu_lhs_sel = "XXX") ELSE
        (15 DOWNTO 0 => 'X');
        
    prog_counter : PC PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_inc => control_pc_inc,
        i_load => control_pc_load,
        i_data => main_bus,
        o_data => pc_bus
    );

    stack_pointer : SP PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_inc => control_sp_inc,
        i_decr => control_sp_decr,
        o_data => sp_bus
    );

    -- TODO: Clean this code up (macro maybe?)
    register0 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(0),
        i_we_m => control_reg_we_m(0),
        i_we_l => control_reg_we_l(0),
        i_data => main_bus,
        o_data => reg_bus(0)
    );
    register1 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(1),
        i_we_m => control_reg_we_m(1),
        i_we_l => control_reg_we_l(1),
        i_data => main_bus,
        o_data => reg_bus(1)
    );
    register2 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(2),
        i_we_m => control_reg_we_m(2),
        i_we_l => control_reg_we_l(2),
        i_data => main_bus,
        o_data => reg_bus(2)
    );
    register3 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(3),
        i_we_m => control_reg_we_m(3),
        i_we_l => control_reg_we_l(3),
        i_data => main_bus,
        o_data => reg_bus(3)
    );
    register4 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(4),
        i_we_m => control_reg_we_m(4),
        i_we_l => control_reg_we_l(4),
        i_data => main_bus,
        o_data => reg_bus(4)
    );
    register5 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(5),
        i_we_m => control_reg_we_m(5),
        i_we_l => control_reg_we_l(5),
        i_data => main_bus,
        o_data => reg_bus(5)
    );
    register6 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(6),
        i_we_m => control_reg_we_m(6),
        i_we_l => control_reg_we_l(6),
        i_data => main_bus,
        o_data => reg_bus(6)
    );
    register7 : REG PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_we => control_reg_we(7),
        i_we_m => control_reg_we_m(7),
        i_we_l => control_reg_we_l(7),
        i_data => main_bus,
        o_data => reg_bus(7)
    );

    algorithmic_logic_unit : ALU PORT MAP(
        i_clk => clk,
        i_rhs => alu_rhs_bus,
        i_lhs => alu_lhs_bus,
        i_op => control_alu_op,
        i_latch_result => control_alu_latch_result,
        o_result => alu_bus,
        o_z => alu_flags_z,
        o_l => alu_flags_l,
        o_c => alu_flags_c
    );

    main_memory : MEMORY PORT MAP(
        i_clk => clk,
        i_we => control_mem_we,
        i_addr => addr_bus,
        i_data => main_bus(7 DOWNTO 0),
        o_data => memdata_bus
    );

    control_unit : CONTROL PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_memdata => memdata_bus,
        i_z => alu_flags_z,
        i_l => alu_flags_l,
        i_c => alu_flags_c,
        o_mem_we => control_mem_we,
        o_pc_inc => control_pc_inc,
        o_pc_load => control_pc_load,
        o_sp_inc => control_sp_inc,
        o_sp_decr => control_sp_decr,
        o_alu_op => control_alu_op,
        o_alu_latch_result => control_alu_latch_result,
        o_reg_we => control_reg_we,
        o_reg_we_l => control_reg_we_l,
        o_reg_we_m => control_reg_we_m,
        o_main_alu_sel => control_main_alu_sel,
        o_main_mem_sel => control_main_mem_sel,
        o_main_control_sel => control_main_control_sel,
        o_main_reg_sel => control_main_reg_sel,
        o_main_reg_l_sel => control_main_reg_l_sel,
        o_main_reg_m_sel => control_main_reg_m_sel,
        o_addr_pc_sel => control_addr_pc_sel,
        o_addr_sp_sel => control_addr_sp_sel,
        o_addr_reg_sel => control_addr_reg_sel,
        o_addr_control_sel => control_addr_control_sel,
        o_addr_alu_sel => control_addr_alu_sel,
        o_alu_rhs_sel => control_alu_rhs_sel,
        o_alu_rhs_control_sel => control_alu_rhs_control_sel,
        o_alu_lhs_sel => control_alu_lhs_sel,
        o_alu_lhs_control_sel => control_alu_lhs_control_sel,
        o_data => control_data,
        o_rhs_alu_imm => control_rhs_data,
        o_lhs_alu_imm => control_lhs_data
    );
END architecture_cpu;