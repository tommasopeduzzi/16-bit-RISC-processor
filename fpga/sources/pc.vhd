--------------------------------------------------------------------------------
-- File: pc.vhd
-- File history:
--      26.06.2022: Initial version
--
-- Description: 
--
-- Program counter module with ability to i_load arbitrary address, o_data 
--

-- Author: Tommaso Peduzzi (@tommasopeduzzi)
--
--------------------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY PC IS
    PORT (
        i_clk : IN STD_LOGIC; -- clock
        i_rst : IN STD_LOGIC; -- reset
        i_inc : IN STD_LOGIC; -- increase program counter
        i_load : IN STD_LOGIC; -- i_load program counter
        i_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- input data
        o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- o_data
    );
END PC;
ARCHITECTURE ARCHITECTURE_PC OF PC IS
    SIGNAL s_value : unsigned(15 DOWNTO 0);
BEGIN
    PROCESS (i_clk, i_rst) BEGIN
        IF i_rst = '1' THEN
            s_value <= (OTHERS => '0');
            o_data <= (OTHERS => '0');
        ELSIF rising_edge(i_clk) THEN
            IF i_inc = '1' THEN
                o_data <= STD_LOGIC_VECTOR(s_value + 1);
                s_value <= s_value + 1;
            ELSIF i_load = '1' THEN
                s_value <= unsigned(i_data);
                o_data <= STD_LOGIC_VECTOR(s_value);
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE_PC;