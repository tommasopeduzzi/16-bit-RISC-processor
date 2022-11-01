-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 1.11.2022 10:14:00 UTC

library ieee;
use ieee.std_logic_1164.all;

entity cpu_testbench is
end cpu_testbench;

architecture tb of cpu_testbench is

    component cpu
        port (clk : in std_logic;
              rst : in std_logic);
    end component;

    signal clk : std_logic;
    signal rst : std_logic;

    constant period : time := 100 ns; -- EDIT Put right period here
    signal clock : std_logic := '1';
    signal TbSimEnded : std_logic := '0';

begin

    central_processing_unit : cpu
    port map (clk => clk,
              rst => rst);

    -- Clock generation
    clock <= not clock after period/2;

    clk <= clock;

    stimuli : process
    begin
        rst <= '1';
        wait for 50 ns;
        rst <= '0';
        wait;
    end process;

end tb;
