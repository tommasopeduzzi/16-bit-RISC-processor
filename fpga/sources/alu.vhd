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
        o_l : OUT STD_LOGIC; -- o_l flag
        o_c : OUT STD_LOGIC -- o_c flag
    );
END ALU;
ARCHITECTURE ARCHITECTURE_ALU OF ALU IS
    SIGNAL result : STD_LOGIC_VECTOR (15 DOWNTO 0);
BEGIN
    o_c <= '1' WHEN signed(result) > 2 ** 15 - 1 OR signed(result) <- 2 ** 15 - 1 ELSE
        '0';
    o_z <= '1' WHEN signed(result) = 0 ELSE
        '0';
    o_l <= '1' WHEN signed(result) < 0 ELSE
        '0';
    o_result <= result WHEN i_latch_result = '1' ELSE
        (OTHERS => '0');

    PROCESS (i_clk) BEGIN
        IF rising_edge(i_clk) and i_latch_result = '1' THEN
            CASE i_op IS
                WHEN "0000" => result <= STD_LOGIC_VECTOR(signed(i_lhs) + signed(i_rhs)); -- add
                WHEN "0001" => result <= STD_LOGIC_VECTOR(signed(i_lhs) - signed(i_rhs)); -- subtract
                WHEN "0010" => result <= STD_LOGIC_VECTOR(i_lhs AND i_rhs); -- and
                WHEN "0011" => result <= STD_LOGIC_VECTOR(i_lhs OR i_rhs); -- or
                WHEN "0100" => result <= STD_LOGIC_VECTOR(i_lhs XOR i_rhs); -- xor
                WHEN "0101" => result <= i_lhs(14 DOWNTO 0) & '0'; -- shift left
                WHEN "0110" => result <= '0' & i_lhs(15 DOWNTO 1); -- shift right
                WHEN "0111" => result <= STD_LOGIC_VECTOR(NOT i_lhs); -- not
                WHEN OTHERS => result <= (OTHERS => 'X');
            END CASE;
        END IF;
    END PROCESS;
    o_result <= result;
END ARCHITECTURE_ALU;