--------------------------------------------------------------------------------
-- File: demultiplexor.vhd
--
-- Description: 
--
-- Demultiplexor for the control lines to the registers.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity demultiplexor is
port (
    clk : IN std_logic; -- Clock
	input : IN  std_logic_vector(2 downto 0); -- input
    output : OUT std_logic_vector(7 downto 0)  -- output
);
end demultiplexor;
architecture architecture_demultiplexor of demultiplexor is
begin
    process (clk)
    begin
        if falling_edge(clk) then
            case input is
                when "000" => output <= (0 => '1', others => '0');
                when "001" => output <= (1 => '1', others => '0');
                when "010" => output <= (2 => '1', others => '0');
                when "011" => output <= (3 => '1', others => '0');
                when "100" => output <= (4 => '1', others => '0');
                when "101" => output <= (5 => '1', others => '0');
                when "110" => output <= (6 => '1', others => '0');
                when "111" => output <= (7 => '1', others => '0');
                when others => output <= (others => 'X');
            end case;
        end if;
    end process;
end architecture_demultiplexor;
