--------------------------------------------------------------------------------
-- File: alu_bus.vhd
-- 
-- Description: 
--
-- ALU operand bus controller.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: Tommaso Peduzzi  
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu_bus is
port (
    clk : in std_logic; -- clock

    -- control lines
    reg_sel : IN std_logic_vector(2 downto 0);
    
    -- inputs
    r0 : IN std_logic_vector(15 downto 0);
    r1 : IN std_logic_vector(15 downto 0);
    r2 : IN std_logic_vector(15 downto 0);
    r3 : IN std_logic_vector(15 downto 0);
    r4 : IN std_logic_vector(15 downto 0);
    r5 : IN std_logic_vector(15 downto 0);
    r6 : IN std_logic_vector(15 downto 0);
    r7 : IN std_logic_vector(15 downto 0);
    
    -- output
    output : OUT std_logic_vector(15 downto 0)
);
end alu_bus;
architecture architecture_alu_bus of alu_bus is
begin
    process (clk) begin
        if rising_edge(clk) then
            if not reg_sel = "XXX" then 
                case to_integer(unsigned(reg_sel)) is
                    when 0 => output <= r0;
                    when 1 => output <= r1;
                    when 2 => output <= r2;
                    when 3 => output <= r3;
                    when 4 => output <= r4;
                    when 5 => output <= r5;
                    when 6 => output <= r6;
                    when 7 => output <= r7;
                    when others => output <= (others => 'X');
                end case;
            end if;
        end if;
    end process;
end architecture_alu_bus;
