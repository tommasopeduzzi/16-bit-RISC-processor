--------------------------------------------------------------------------------
-- File: control.vhd
--
-- Description: 
--
-- Control unit driving the control lines in the CPU.
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity control is
port (
	clk : IN std_logic;
    rst : IN std_logic;
    input : IN std_logic_vector(7 downto 0);    -- input data from memory
    z : IN std_logic; -- z flag
    g : IN std_logic; -- g flag
    l : IN std_logic; -- n flag
    c : IN std_logic; -- c flag
    latch_opcode_op1 : IN std_logic;
    latch_op2 : IN std_logic;
    latch_lsb_imm : IN std_logic;
    latch_msb_imm : IN std_logic; 
    control_lines : OUT std_logic_vector(35 downto 0)  -- example
);
end control;
architecture architecture_control of control is
    signal step : natural := 0;
	signal opcode : std_logic_vector(4 downto 0) := (others => '0');	
    signal op1 : std_logic_vector(2 downto 0)    := (others => '0');
    signal op2 : std_logic_vector(7 downto 0)    := (others => '0');
    signal imm : std_logic_vector(15 downto 0)    := (others => '0');
begin
    process (clk, rst) begin
        if rst = '1' then
            step <= 0;
        elsif falling_edge(clk) then
            if latch_opcode_op1 = '1' then
                opcode <= input(7 downto 4);
                op1 <= input(3 downto 0);
            end if;
            if latch_op2 = '1' then
                op2 <= input(7 downto 0);
            end if;
            if latch_lsb_imm = '1' then
                imm(7 downto 0) <= input;
            end if;
            if latch_msb_imm = '1' then
                imm(15 downto 8) <= input;
            end if;

            step <= step + 1;
        end if;
    end process;
end architecture_control;
