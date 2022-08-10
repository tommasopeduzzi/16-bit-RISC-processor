--------------------------------------------------------------------------------
-- File: memory.vhd
--
-- Description: 
--
-- Memory for the CPU. 16-bit address and 8-bit words.
--

-- Author: Tommaso Peduzzi
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity memory is
port (
    clk : IN std_logic; -- clock
	we : IN  std_logic; -- write enable 
    addr : IN  std_logic_vector(15 downto 0); -- address
    data : IN  std_logic_vector(7 downto 0); -- data to write
    output : OUT std_logic_vector(7 downto 0)  -- output 
);
end memory;
architecture architecture_memory of memory is
    type ram_type is array (0 to (2**addr'length)-1) of std_logic_vector(data'range);
    signal ram : ram_type;
begin
    process (clk) begin
        if rising_edge(clk) then
            if we = '1' then    -- write
                ram(to_integer(unsigned(addr))) <= data;
            else    -- read
                output <= ram(to_integer(unsigned(addr)));
            end if;
        end if;
    end process;
end architecture_memory;
