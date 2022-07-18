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
	oe : IN  std_logic; -- output enable
    oe_m : IN  std_logic; -- output enable only most significant byte to less significant byte of bus (for memdata)
    oe_l : IN  std_logic; -- output enable only less significant byte on less significant byte of bus (for memdata)
    we : IN  std_logic; -- write enable
    we_m : IN  std_logic; -- write enable less significant byte of bus to most significant byte of register (for memdata)
    we_l : IN  std_logic; -- write enable less significant byte of bus to less significant byte of register (for memdata)
    we_rhs : IN  std_logic; -- write enable to rhs bus to ALU
    we_lhs : IN  std_logic; -- write enable to lhs bus to ALU
    input : IN  std_logic_vector(15 downto 0); -- input
    output : OUT std_logic_vector(15 downto 0);  -- output
    rhs : OUT std_logic_vector(15 downto 0);  -- rhs output to ALU
    lhs : OUT std_logic_vector(15 downto 0)  -- lhs output to ALU
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
            if oe = '1' then
                output <= value;
            elsif oe_m = '1' then
                output <= (7 downto 0 => value(15 downto 8), others => 'Z');
            elsif oe_l = '1' then
                output <= (7 downto 0 => value(7 downto 0), others => 'Z');
            else 
                output <= (others => 'Z');
            end if;
            if we_rhs = '1' then
                rhs <= value;
            end if;
            if we_lhs = '1' then
                lhs <= value;
            end if;
        end if;
    end process;
end architecture_reg;
