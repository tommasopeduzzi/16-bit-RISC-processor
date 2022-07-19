--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: main_bus.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

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
    mem : IN std_logic_vector(7 downto 0);

    -- outputs
    output : OUT std_logic_vector(15 downto 0) 
);
end main_bus;
architecture architecture_main_bus of main_bus is
   -- signal, component etc. declarations
	signal signal_name1 : std_logic; -- example
	signal signal_name2 : std_logic_vector(1 downto 0) ; -- example

begin

   -- architecture body
end architecture_main_bus;
