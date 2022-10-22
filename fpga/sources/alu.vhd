--------------------------------------------------------------------------------
-- File: alu.vhd
--
-- Description: 
--
-- ALU for the CPU.
--

-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ALU IS
    PORT (
        i_clk : IN STD_LOGIC; -- clock
        i_rhs : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- left hand side operand
        i_lhs : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- right hand side operand
        i_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- operation
        i_latch_result : IN STD_LOGIC; -- latch result
        o_result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- o_result
        o_z : OUT STD_LOGIC; -- o_z flag
        o_g : OUT STD_LOGIC; -- o_g flag
        o_l : OUT STD_LOGIC; -- n flag
        o_c : OUT STD_LOGIC -- o_c flag
    );
END ALU;
ARCHITECTURE ARCHITECTURE_ALU OF ALU IS
    SIGNAL result : STD_LOGIC_VECTOR (15 DOWNTO 0);
BEGIN
    PROCESS (i_clk) BEGIN
        IF rising_edge(i_clk) THEN
            IF i_latch_result = '1' THEN
                CASE i_op IS
                    WHEN "0000" => result <= STD_LOGIC_VECTOR(signed(i_lhs) + signed(i_rhs)); -- add
                    WHEN "0001" => result <= STD_LOGIC_VECTOR(signed(i_lhs) - signed(i_rhs)); -- subtract
                    WHEN "0010" => result <= STD_LOGIC_VECTOR(signed(i_lhs) - signed(i_rhs)); -- compare 
                    WHEN "0011" => result <= STD_LOGIC_VECTOR(i_lhs AND i_rhs); -- and
                    WHEN "0100" => result <= STD_LOGIC_VECTOR(i_lhs OR i_rhs); -- or
                    WHEN "0101" => result <= STD_LOGIC_VECTOR(i_lhs XOR i_rhs); -- xor
                    WHEN "0110" => result <= i_lhs(14 DOWNTO 0) & '0'; -- shift left
                    WHEN "0111" => result <= '0' & i_lhs(15 DOWNTO 1); -- shift right
                    WHEN "1000" => result <= STD_LOGIC_VECTOR(NOT i_lhs); -- not
                    WHEN OTHERS => result <= (OTHERS => 'X');
                END CASE;
                IF signed(result) > 2 ** 15 - 1 OR signed(result) <- 2 ** 15 - 1 THEN
                    o_c <= '1';
                ELSE
                    o_c <= '0';
                END IF;
                IF signed(result) = 0 THEN
                    o_z <= '1';
                ELSE
                    o_z <= '0';
                END IF;
                IF signed(result) > 0 THEN
                    o_g <= '1';
                ELSE
                    o_g <= '0';
                END IF;
                IF signed(result) < 0 THEN
                    o_l <= '1';
                ELSE
                    o_l <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;
    o_result <= result;
END ARCHITECTURE_ALU;