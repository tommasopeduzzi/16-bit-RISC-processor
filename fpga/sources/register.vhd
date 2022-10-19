--------------------------------------------------------------------------------
-- File: buffer.vhd
--
-- Description: 
--
-- 16-bit register.
--

-- Author: <Name>
--
--------------------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;

ENTITY REG IS
    PORT (
        i_clk : IN STD_LOGIC; -- clock
        i_rst : IN STD_LOGIC; -- reset
        i_we : IN STD_LOGIC; -- write enable
        i_we_m : IN STD_LOGIC; -- write enable less significant byte of bus to most significant byte of register (for memdata)
        i_we_l : IN STD_LOGIC; -- write enable less significant byte of bus to less significant byte of register (for memdata)
        i_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- input data
        o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- output data 
    );
END REG;
ARCHITECTURE ARCHITECTURE_REG OF REG IS
BEGIN
    PROCESS (i_clk, i_rst) BEGIN
        IF i_rst = '1' THEN
            o_data <= (OTHERS => '0');
        ELSIF rising_edge(i_clk) THEN
            IF i_we = '1' THEN
                o_data <= i_data;
            ELSIF i_we_l = '1' THEN
                o_data(7 DOWNTO 0) <= i_data(7 DOWNTO 0);
            ELSIF i_we_m = '1' THEN
                o_data(15 DOWNTO 8) <= i_data(7 DOWNTO 0);
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE_REG;