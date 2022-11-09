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
            i_rst : IN STD_LOGIC;
            i_interrupt_request : IN STD_LOGIC; -- interrupt request
            i_interrupt_bus : STD_LOGIC_VECTOR(3 DOWNTO 0); -- interrupt bus
            i_device_main_bus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            o_device_read : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            o_device_write : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            o_main_bus : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC;
    SIGNAL interrupt_request : STD_LOGIC := '0';
    SIGNAL interrupt_bus : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    CONSTANT period : TIME := 100 ns;
    SIGNAL device_bus : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => 'X');
BEGIN

    central_processing_unit : cpu
    PORT MAP(
        i_clk => clk,
        i_rst => rst,
        i_device_main_bus => device_bus,
        i_interrupt_request => interrupt_request,
        i_interrupt_bus => interrupt_bus
    );

    -- Clock generation
    clk <= NOT clk AFTER period/2;

    PROCESS BEGIN
        rst <= '1';
        WAIT FOR 50 ns;
        rst <= '0';
        WAIT;
    END PROCESS;

END tb;