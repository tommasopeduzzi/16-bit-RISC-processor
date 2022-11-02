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

LIBRARY IEEE;
LIBRARY work;

USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.instructions.ALL;

ENTITY CONTROL IS
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

        -- alu operand bus
        o_alu_rhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- rhs select
        o_alu_lhs_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- lhs select

        -- immediate output
        o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- immediate output
    );
END CONTROL;
ARCHITECTURE ARCHITECTURE_CONTROL OF CONTROL IS
    SIGNAL s_step : NATURAL := 0;
    SIGNAL s_opcode : STD_LOGIC_VECTOR(5 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_op1 : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_op2 : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_imm : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

    FUNCTION OP_TO_REG(op : IN STD_LOGIC_VECTOR(3 DOWNTO 0))
        RETURN STD_LOGIC_VECTOR IS
        VARIABLE value : STD_LOGIC_VECTOR(7 DOWNTO 0);
    BEGIN
        value := (OTHERS => '0');
        value(to_integer(unsigned(op(2 DOWNTO 0)))) := '1';
        RETURN value;
    END FUNCTION;
BEGIN
    PROCESS (i_clk, i_rst) BEGIN
        IF i_rst = '1' THEN
            s_step <= 0;
            s_opcode <= (OTHERS => '0');
            s_op1 <= (OTHERS => '0');
            s_op2 <= (OTHERS => '0');
            s_imm <= (OTHERS => '0');
        ELSIF falling_edge(i_clk) THEN
            -- reset control lines
            o_mem_we <= '0';
            o_pc_inc <= '0';
            o_pc_load <= '0';
            o_sp_inc <= '0';
            o_sp_decr <= '0';
            o_alu_op <= (OTHERS => '0');
            o_reg_we <= (OTHERS => 'X');
            o_reg_we_l <= (OTHERS => 'X');
            o_reg_we_m <= (OTHERS => 'X');
            o_main_alu_sel <= '0';
            o_main_mem_sel <= '0';
            o_main_control_sel <= '0';
            o_main_reg_sel <= (OTHERS => 'X');
            o_main_reg_l_sel <= (OTHERS => 'X');
            o_main_reg_m_sel <= (OTHERS => 'X');
            o_addr_pc_sel <= '0';
            o_addr_sp_sel <= '0';
            o_addr_control_sel <= '0';
            o_addr_reg_sel <= (OTHERS => 'X');
            o_alu_rhs_sel <= (OTHERS => 'X');
            o_alu_lhs_sel <= (OTHERS => 'X');
            o_alu_latch_result <= '0';

            -- set appropriate control lines
            IF s_opcode = "111111" THEN -- halt
                CASE s_step IS
                    WHEN 0 =>
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = nop THEN -- nop
                CASE s_step IS
                    WHEN OTHERS => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';

                END CASE;
            ELSIF s_opcode = loadimm_reg_imm THEN -- load-imm/load-addr reg imm
                CASE s_step IS
                    WHEN 1 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                    WHEN 2 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                        o_main_mem_sel <= '1';
                        o_reg_we_l <= OP_TO_REG(s_op1);
                    WHEN 3 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                        o_main_mem_sel <= '1';
                        o_reg_we_m <= OP_TO_REG(s_op1);
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = add_reg_reg THEN
                CASE s_step IS
                    WHEN 1 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                    WHEN 2 => o_alu_lhs_sel <= s_op1(2 DOWNTO 0);
                        o_alu_rhs_sel <= s_op2(2 DOWNTO 0);
                        o_alu_latch_result <= '1';
                        o_alu_op <= "0000";
                    WHEN 3 => o_main_alu_sel <= '1';
                        o_reg_we <= OP_TO_REG(s_op1);
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = sub_reg_reg THEN
                CASE s_step IS
                    WHEN 1 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                    WHEN 2 => o_alu_lhs_sel <= s_op1(2 DOWNTO 0);
                        o_alu_rhs_sel <= s_op2(2 DOWNTO 0);
                        o_alu_latch_result <= '1';
                        o_alu_op <= "0001";
                    WHEN 3 => o_main_alu_sel <= '1';
                        o_reg_we <= OP_TO_REG(s_op1);
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = cmp_reg_reg THEN
                CASE s_step IS
                    WHEN 1 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                    WHEN 2 => o_alu_lhs_sel <= s_op1(2 DOWNTO 0);
                        o_alu_rhs_sel <= s_op2(2 DOWNTO 0);
                        o_alu_latch_result <= '1';
                        o_alu_op <= "0001";
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = jump_addr THEN
                CASE s_step IS
                    WHEN 1 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                    WHEN 2 => o_addr_pc_sel <= '1';
                        o_pc_inc <= '1';
                    WHEN 3 => o_main_control_sel <= '1';
                        o_pc_load <= '1';
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = jumpeq_addr THEN
                IF i_z = '1' THEN
                    CASE s_step IS
                        WHEN 1 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 2 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 3 => o_main_control_sel <= '1';
                            o_pc_load <= '1';
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 1 => o_pc_inc <= '1';
                        WHEN 2 => o_pc_inc <= '1';
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            ELSIF s_opcode = jumpg_addr THEN
                IF i_z = '0' AND i_l = '0' THEN
                    CASE s_step IS
                        WHEN 1 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 2 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 3 => o_main_control_sel <= '1';
                            o_pc_load <= '1';
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 1 => o_pc_inc <= '1';
                        WHEN 2 => o_pc_inc <= '1';
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            ELSIF s_opcode = jumpl_addr THEN
                IF i_l = '1' THEN
                    CASE s_step IS
                        WHEN 1 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 2 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 3 => o_main_control_sel <= '1';
                            o_pc_load <= '1';
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 1 => o_pc_inc <= '1';
                        WHEN 2 => o_pc_inc <= '1';
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            ELSIF s_opcode = jumpc_addr THEN
                IF i_c = '1' THEN
                    CASE s_step IS
                        WHEN 1 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 2 => o_addr_pc_sel <= '1';
                            o_pc_inc <= '1';
                        WHEN 3 => o_main_control_sel <= '1';
                            o_pc_load <= '1';
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 1 => o_pc_inc <= '1';
                        WHEN 2 => o_pc_inc <= '1';
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            END IF;
        ELSIF rising_edge(i_clk) THEN
            -- set internal signals
            s_step <= s_step + 1;
            IF s_opcode = nop THEN
                s_opcode <= i_memdata(5 DOWNTO 0);
                s_step <= 1;
            ELSIF s_opcode = loadimm_reg_imm THEN
                CASE s_step IS
                    WHEN 1 => s_op1 <= i_memdata(7 DOWNTO 4);
                        s_op2 <= i_memdata(3 DOWNTO 0);
                    WHEN 3 => s_opcode <= "000000";
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = add_reg_reg THEN
                CASE s_step IS
                    WHEN 1 => s_op1 <= i_memdata(7 DOWNTO 4);
                        s_op2 <= i_memdata(3 DOWNTO 0);
                    WHEN 3 => s_opcode <= "000000";
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = sub_reg_reg THEN
                CASE s_step IS
                    WHEN 1 => s_op1 <= i_memdata(7 DOWNTO 4);
                        s_op2 <= i_memdata(3 DOWNTO 0);
                    WHEN 3 => s_opcode <= "000000";
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = cmp_reg_reg THEN
                CASE s_step IS
                    WHEN 1 => s_op1 <= i_memdata(7 DOWNTO 4);
                        s_op2 <= i_memdata(3 DOWNTO 0);
                    WHEN 2 => s_opcode <= "000000";
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = jump_addr THEN
                CASE s_step IS
                    WHEN 1 => o_data(7 DOWNTO 0) <= i_memdata;
                    WHEN 2 => o_data(15 DOWNTO 8) <= i_memdata;
                    WHEN 3 => s_opcode <= "000000";
                    WHEN OTHERS =>
                END CASE;
            ELSIF s_opcode = jumpeq_addr THEN
                IF i_z = '1' THEN
                    CASE s_step IS
                        WHEN 1 => o_data(7 DOWNTO 0) <= i_memdata;
                        WHEN 2 => o_data(15 DOWNTO 8) <= i_memdata;
                        WHEN 3 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 2 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            ELSIF s_opcode = jumpg_addr THEN
                IF i_z = '0' AND i_l = '0' THEN
                    CASE s_step IS
                        WHEN 1 => o_data(7 DOWNTO 0) <= i_memdata;
                        WHEN 2 => o_data(15 DOWNTO 8) <= i_memdata;
                        WHEN 3 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 2 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            ELSIF s_opcode = jumpl_addr THEN
                IF i_l = '1' THEN
                    CASE s_step IS
                        WHEN 1 => o_data(7 DOWNTO 0) <= i_memdata;
                        WHEN 2 => o_data(15 DOWNTO 8) <= i_memdata;
                        WHEN 3 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 2 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            ELSIF s_opcode = jumpc_addr THEN
                IF i_c = '1' THEN
                    CASE s_step IS
                        WHEN 1 => o_data(7 DOWNTO 0) <= i_memdata;
                        WHEN 2 => o_data(15 DOWNTO 8) <= i_memdata;
                        WHEN 3 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                ELSE
                    CASE s_step IS
                        WHEN 2 => s_opcode <= "000000";
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE_CONTROL;