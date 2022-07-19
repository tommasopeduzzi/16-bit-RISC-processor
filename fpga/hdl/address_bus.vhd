--------------------------------------------------------------------------------
-- File: address_bus.vhd
-- 
-- Description: 
--
-- Address bus controller.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: Tommaso Peduzzi  
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity address_bus is
port (
    clk : in std_logic; -- clock

    -- control lines
    pc_sel : IN std_logic;
    sp_sel : IN std_logic;
    reg_sel : IN std_logic_vector(2 downto 0);

    -- inputs
    pc : IN std_logic_vector(15 downto 0);
    sp : IN std_logic_vector(15 downto 0);
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
end address_bus;
architecture architecture_address_bus of address_bus is
begin
    
end architecture_address_bus;
