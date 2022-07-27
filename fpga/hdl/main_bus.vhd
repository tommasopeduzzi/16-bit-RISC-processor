--------------------------------------------------------------------------------
-- File: main_bus.vhd
--
-- Description: 
--
-- Main Bus control logic for the CPU.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_bus is
port (
    clk : in std_logic; -- clock

    -- control lines
	reg_sel : IN std_logic_vector(2 downto 0);
    reg_sel_l : IN std_logic_vector(2 downto 0);
    reg_sel_m : IN std_logic_vector(2 downto 0);
    mem_sel : IN std_logic;
    alu_sel : IN std_logic;
    control_sel : IN std_logic;

    -- inputs
    r0 : IN std_logic_vector(15 downto 0);
    r1 : IN std_logic_vector(15 downto 0);
    r2 : IN std_logic_vector(15 downto 0);
    r3 : IN std_logic_vector(15 downto 0);
    r4 : IN std_logic_vector(15 downto 0);
    r5 : IN std_logic_vector(15 downto 0);
    r6 : IN std_logic_vector(15 downto 0);
    r7 : IN std_logic_vector(15 downto 0);
    alu : IN std_logic_vector(15 downto 0);
    control : IN std_logic_vector(15 downto 0);
    mem : IN std_logic_vector(7 downto 0);

    -- outputs
    output : OUT std_logic_vector(15 downto 0) 
);
end main_bus;
architecture architecture_main_bus of main_bus is
begin
    process (clk) begin
        if rising_edge(clk) then
            if mem_sel = '1' then
                output <= (7 downto 0 => mem, others => '0');
            elsif alu_sel = '1' then
                output <= alu;
            elsif control_sel = '1' then 
                output <= control;
            else
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
                elsif not reg_sel_l = "XXX" then
                    case to_integer(unsigned(reg_sel_l)) is
                        when 0 => output <= (7 downto 0 => r0(7 downto 0), others => '0');
                        when 1 => output <= (7 downto 0 => r1(7 downto 0), others => '0');
                        when 2 => output <= (7 downto 0 => r2(7 downto 0), others => '0');
                        when 3 => output <= (7 downto 0 => r3(7 downto 0), others => '0');
                        when 4 => output <= (7 downto 0 => r4(7 downto 0), others => '0');
                        when 5 => output <= (7 downto 0 => r5(7 downto 0), others => '0');
                        when 6 => output <= (7 downto 0 => r6(7 downto 0), others => '0');
                        when 7 => output <= (7 downto 0 => r7(7 downto 0), others => '0');
                        when others => output <= (others => 'X');
                    end case;
                elsif not reg_sel_m = "XXX" then
                    case to_integer(unsigned(reg_sel_l)) is
                        when 0 => output <= (7 downto 0 => r0(15 downto 8), others => '0');
                        when 1 => output <= (7 downto 0 => r1(15 downto 8), others => '0');
                        when 2 => output <= (7 downto 0 => r2(15 downto 8), others => '0');
                        when 3 => output <= (7 downto 0 => r3(15 downto 8), others => '0');
                        when 4 => output <= (7 downto 0 => r4(15 downto 8), others => '0');
                        when 5 => output <= (7 downto 0 => r5(15 downto 8), others => '0');
                        when 6 => output <= (7 downto 0 => r6(15 downto 8), others => '0');
                        when 7 => output <= (7 downto 0 => r7(15 downto 8), others => '0');
                        when others => output <= (others => 'X');
                    end case;
                else 
                    output <= (others => 'X');
                end if;
            end if;
        end if;
    end process;
end architecture_main_bus;
