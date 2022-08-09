--------------------------------------------------------------------------------
-- File: pc.vhd
-- File history:
--      26.06.2022: Initial version
--
-- Description: 
--
-- Program counter module with ability to load arbitrary address, output 
--
-- Targeted device: <Family::Fusion> <Die::AFS600> <Package::256 FBGA>
-- Author: Tommaso Peduzzi (@tommasopeduzzi)
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
port (
    clk : IN std_logic;                             -- clock
    rst : IN std_logic;                             -- reset
	inc : IN  std_logic;                            -- increase program counter
    load : IN  std_logic;                           -- load program counter
    input : IN std_logic_vector(15 downto 0);       -- input address
    output : OUT std_logic_vector(15 downto 0)      -- output
);
end pc;
architecture architecture_pc of pc is
	signal value : unsigned(15 downto 0); 
begin
    process (clk) begin
        if rst = '1' then
            value <= to_unsigned(0, 16);
        elsif rising_edge(clk) then
            if inc = '1' then 
                value <= value + 1;
            end if;
            if load = '1' then
                value <= unsigned(input);
            end if;
            output <= std_logic_vector(value);
        end if;
    end process;
end architecture_pc;
