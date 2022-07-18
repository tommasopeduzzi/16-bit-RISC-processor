--------------------------------------------------------------------------------
-- File: alu.vhd
--
-- Description: 
--
-- ALU for the CPU.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu is
port (
    clk : in std_logic; -- clock
    oe : in std_logic; -- output enable
    lhs : in std_logic_vector(15 downto 0); -- left hand side operand
    rhs : in std_logic_vector(15 downto 0); -- right hand side operand
    op : in std_logic_vector(3 downto 0); -- operation
    output : out std_logic_vector(15 downto 0); -- output
    z : out std_logic; -- z flag
    g : out std_logic; -- g flag
    l : out std_logic; -- n flag
    c : out std_logic -- c flag
);
end alu;
architecture architecture_alu of alu is
    signal result : signed;
begin
    process (clk) begin
        if rising_edge(clk) then
            case op is
                when "0000" => result <= signed(lhs) + signed(rhs);  -- add
                when "0001" => result <= signed(lhs) - signed(rhs);  -- subtract
                when "0010" => result <= signed(lhs) - signed(rhs);  -- compare 
                when "0011" => result <= signed(lhs and rhs);          -- and
                when "0100" => result <= signed(lhs or rhs);           -- or
                when "0101" => result <= signed(lhs xor rhs);          -- xor
                when "0110" => result <= signed(lhs sll 1);            -- shift left
                when "0111" => result <= signed(lhs srl 1);            -- shift right
                when "1000" => result <= signed(not lhs);              -- not
            end case;
            if result > 2**15-1 or result < -2**15-1 then
                c <= '1';
            else
                c <= '0';
            end if;
            if result = 0 then
                z <= '1';
            else
                z <= '0';
            end if;
            if result > 0 then
                g <= '1';
            else
                g <= '0';
            end if;
            if result < 0 then
                l <= '1';
            else
                l <= '0';
            end if;
            if oe = '1' and not op = "0010" then
                output <= std_logic_vector(result);
            else
                output <= "ZZZZZZZZZZZZZZZZ";
            end if;
        end if;
    end process;
end architecture_alu;
