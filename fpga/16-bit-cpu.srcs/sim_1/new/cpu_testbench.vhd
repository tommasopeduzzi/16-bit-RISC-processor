-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 1.11.2022 10:14:00 UTC

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY cpu_testbench IS
END cpu_testbench;

ARCHITECTURE tb OF cpu_testbench IS

    COMPONENT cpu
        PORT (
            i_clk : IN STD_LOGIC;
            i_rst : IN STD_LOGIC);
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC;
    CONSTANT period : TIME := 100 ns;
BEGIN

    central_processing_unit : cpu
    PORT MAP(
        i_clk => clk,
        i_rst => rst
    );

    -- Clock generation
    clk <=  NOT clk AFTER period/2;

    PROCESS BEGIN
        rst <= '1';
        WAIT FOR 50 ns;
        rst <= '0';
        WAIT;
    END PROCESS;

END tb;