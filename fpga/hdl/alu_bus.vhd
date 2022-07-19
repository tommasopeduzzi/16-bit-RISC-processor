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
    
end architecture_alu_bus;
