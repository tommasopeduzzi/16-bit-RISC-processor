--------------------------------------------------------------------------------
-- File: control.vhd
--
-- Description: 
--
-- Control unit driving the control lines in the CPU.
--

-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

library IEEE;
library work;

use IEEE.std_logic_1164.all;
use work.instructions.all;

entity control is
port (
	clk : IN std_logic;
    rst : IN std_logic;
    input : IN std_logic_vector(7 downto 0);    -- input data from memory
    z : IN std_logic; -- z flag
    g : IN std_logic; -- g flag
    l : IN std_logic; -- n flag
    c : IN std_logic; -- c flag

    mem_we : OUT std_logic; -- write enable memory

    pc_inc : OUT std_logic; -- increment PC
    pc_load : OUT std_logic; -- load PC from memory bus

    sp_inc : OUT std_logic; -- increment SP
    sp_decr : OUT std_logic; -- decrement SP

    alu_op : OUT std_logic_vector(3 downto 0); -- ALU operation

    reg_we : OUT std_logic_vector(2 downto 0); -- write enable registers
    reg_we_l : OUT std_logic_vector(2 downto 0); -- write enable LSB registers
    reg_we_m : OUT std_logic_vector(2 downto 0); -- write enable MSB registers

    -- main bus
    main_alu_sel : OUT std_logic; -- ALU select
    main_mem_sel : OUT std_logic; -- memory select
    main_control_sel : OUT std_logic; -- control select
    main_reg_sel : OUT std_logic_vector(2 downto 0); -- register select
    main_reg_l_sel : OUT std_logic_vector(2 downto 0); -- register LSB select
    main_reg_m_sel : OUT std_logic_vector(2 downto 0); -- register MSB select

    -- address bus
    addr_pc_sel : OUT std_logic; -- PC select
    addr_sp_sel : OUT std_logic; -- SP select
    addr_reg_sel : OUT std_logic_vector(2 downto 0); -- register select
    addr_control_sel : OUT std_logic; -- control select

    -- alu operand bus
    alu_rhs_sel : OUT std_logic_vector(2 downto 0); -- rhs select
    alu_lhs_sel : OUT std_logic_vector(2 downto 0);  -- lhs select

    -- immediate output
    output_imm : OUT std_logic_vector(15 downto 0); -- immediate output
    current_opcode : OUT std_logic_vector(5 downto 0) -- current opcode for debugging
);
end control;
architecture architecture_control of control is
    signal step : natural := 0;
	signal opcode : std_logic_vector(5 downto 0) := (others => '0');	
    signal op1 : std_logic_vector(2 downto 0)    := (others => '0');
    signal op2 : std_logic_vector(7 downto 0)    := (others => '0');
    signal imm : std_logic_vector(15 downto 0)    := (others => '0');
begin
    process (clk, rst) begin
        if rst = '1' then
            step <= 0;
            opcode <= (others => '0');
            op1 <= (others => '0');
            op2 <= (others => '0');
            imm <= (others => '0');
        elsif falling_edge(clk) then
            -- reset control lines
            mem_we <= '0';
            pc_inc <= '0';
            pc_load <= '0';
            sp_inc <= '0';
            sp_decr <= '0';
            alu_op <= (others => '0');
            reg_we <= (others => '0');
            reg_we_l <= (others => '0');
            reg_we_m <= (others => '0');
            main_alu_sel <= '0';
            main_mem_sel <= '0';
            main_control_sel <= '0';
            main_reg_sel <= (others => '0');
            main_reg_l_sel <= (others => '0');
            main_reg_m_sel <= (others => '0');
            addr_pc_sel <= '0';
            addr_sp_sel <= '0';
            addr_control_sel <= '0';
            addr_reg_sel <= (others => '0');
            alu_rhs_sel <= (others => '0');
            alu_lhs_sel <= (others => '0');
            output_imm <= (others => '0');
            
            -- set appropriate control lines
            if opcode = "111111" then        -- halt
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = nop then     -- nop
                case step is
                    when 0 =>   pc_inc <= '1';
                    when others =>   
                end case;
            elsif opcode = load_reg_reg then     -- load reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = load8_reg_reg then     -- load8 reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = load_reg_addr then     -- load reg addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = load8_reg_addr then     -- load8 reg addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = loadaddr_reg_addr then     -- load-imm/load-addr reg imm
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = loadimm_reg_imm then     -- load-imm/load-addr reg imm
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = store_reg_reg then     -- store reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = storel_reg_reg then     -- store< reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = storeg_reg_reg then     -- store> reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = store_reg_addr then     -- store reg addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = storel_reg_addr then     -- store< reg addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = storeg_reg_addr then     -- store> reg addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = push_reg then     -- push reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = pop_reg then     -- pop reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = add_reg_reg then     -- add reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = sub_reg_reg then     -- sub reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = cmp_reg_reg then     -- cmp reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = not_reg then     -- not reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = shiftl_reg then     -- shiftl reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = shiftr_reg then     -- shiftr reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = and_reg_reg then     -- and reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = or_reg_reg then     -- or reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = xor_reg_reg then     -- xor reg reg
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = jump_addr then     -- jump addr 
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = jumpeq_addr then     -- jump== addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = jumpl_addr then     -- jump< addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = jumpg_addr then     -- jump> addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = jumpc_addr then     -- jumpc addr
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = in_reg_dev then     -- in reg dev
                case step is
                    when 0 => 
                    when others => 
                end case;
            elsif opcode = out_reg_dev  then     -- out reg dev
                case step is
                    when 0 => 
                    when others => 
                end case;
            end if;
            current_opcode <= opcode;
            step <= step + 1;
        end if;
    end process;
end architecture_control;
