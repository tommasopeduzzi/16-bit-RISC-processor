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

library IEEE;

use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity sp is
port (
    clk : in std_logic; -- clock
    rst : in std_logic; -- reset
	inc : IN  std_logic; -- increment
	decr : IN  std_logic; -- decrement
    output : OUT std_logic_vector(15 downto 0)  -- output
);
end sp;
architecture architecture_sp of sp is
	signal value : unsigned(15 downto 0);
begin
    process (clk, rst) begin
        if rst = '1' then
            value <= to_unsigned(0, 16);
        elsif rising_edge(clk) then
            output <=  std_logic_vector(value);
            if inc = '1' then
                value <= value + 1;
            elsif decr = '1' then
                value <= value - 1;
            end if;
        end if;    
    end process;
end architecture_sp;
