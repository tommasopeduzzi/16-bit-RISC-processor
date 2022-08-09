--------------------------------------------------------------------------------
-- File: buffer.vhd
--
-- Description: 
--
-- 16-bit register.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity reg is
port (
    clk : in std_logic; -- clock
    rst : in std_logic; -- reset
    we : IN  std_logic; -- write enable
    we_m : IN  std_logic; -- write enable less significant byte of bus to most significant byte of register (for memdata)
    we_l : IN  std_logic; -- write enable less significant byte of bus to less significant byte of register (for memdata)
    input : IN  std_logic_vector(15 downto 0); -- input
    output : OUT std_logic_vector(15 downto 0)  -- output
);
end reg;
architecture architecture_reg of reg is
	signal value : std_logic_vector(input'range);
begin
    process (clk, rst) begin
        if rst = '1' then
            value <= (others => '0');
        elsif rising_edge(clk) then
            if we = '1' then
                value <= input;
            elsif we_m = '1' then
                value(7 downto 0) <= input(7 downto 0);
            elsif we_l = '1' then
                value(15 downto 8) <= input(15 downto 8);
            end if;
            output <= value;
        end if;
    end process;
end architecture_reg;
