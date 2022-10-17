--------------------------------------------------------------------------------
-- File: sp.vhd
--
-- Description: 
--
-- Stack pointer component for the CPU.
--

-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY SP IS
    PORT (
        i_clk : IN STD_LOGIC; -- clock
        i_rst : IN STD_LOGIC; -- reset
        i_inc : IN STD_LOGIC; -- increment
        i_decr : IN STD_LOGIC; -- decrement
        o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- output
    );
END SP;
ARCHITECTURE ARCHITECTURE_SP OF SP IS
    SIGNAL s_value : unsigned(15 DOWNTO 0);
BEGIN
    PROCESS (i_clk, i_rst) BEGIN
        IF i_rst = '1' THEN
            o_data <= (OTHERS => '0');
            s_value <= to_unsigned(0, 16);
        ELSIF rising_edge(i_clk) THEN
            IF i_inc = '1' THEN
                o_data <= STD_LOGIC_VECTOR(s_value + 1);
                s_value <= s_value + 1;
            ELSIF i_decr = '1' THEN
                o_data <= STD_LOGIC_VECTOR(s_value + 1);
                s_value <= s_value + 1;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE_SP;