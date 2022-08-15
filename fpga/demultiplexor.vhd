--------------------------------------------------------------------------------
-- File: demultiplexor.vhd
--
-- Description: 
--
-- Demultiplexor for the control lines to the registers.
--
-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity demultiplexor is
port (
    clk : IN std_logic; -- Clock
	input : IN  std_logic_vector(2 downto 0); -- input
    r0 : OUT std_logic; -- output
    r1 : OUT std_logic; -- output
    r2 : OUT std_logic; -- output
    r3 : OUT std_logic; -- output
    r4 : OUT std_logic; -- output
    r5 : OUT std_logic; -- output
    r6 : OUT std_logic; -- output
    r7 : OUT std_logic -- output
);
end demultiplexor;
architecture architecture_demultiplexor of demultiplexor is
begin
    process (clk)
    begin
        if falling_edge(clk) then
            r0 <= '0';
            r1 <= '0';
            r2 <= '0';
            r3 <= '0';
            r4 <= '0';
            r5 <= '0';
            r6 <= '0';
            r7 <= '0'; 
            case input is
                when "000" => r0 <= '1';
                when "001" => r1 <= '1';
                when "010" => r2 <= '1';
                when "011" => r3 <= '1';
                when "100" => r4 <= '1';
                when "101" => r5 <= '1';
                when "110" => r6 <= '1';
                when "111" => r7 <= '1';
            end case;
        end if;
    end process;
end architecture_demultiplexor;
