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
library std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

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
    type ram_type is array (0 to (2**addr'length)-1) of bit_vector(data'range);
    impure function init_ram(file_name : in string) return ram_type is
        FILE binary_file : text open READ_MODE is file_name;
        variable current_line : line;
        variable ram         : ram_type;
        begin
         for i in ram_type'range loop
             readline(binary_file, current_line);
             read(current_line, ram(i));
         end loop;
         return ram;
     end function;
    signal ram : ram_type := init_ram("../assembler/test.bin");
begin
    process (clk) begin
        if rising_edge(clk) then
            if we = '1' then    -- write
                ram(to_integer(unsigned(addr))) <= to_bitvector(data);
            else    -- read
                output <= to_stdlogicvector(ram(to_integer(unsigned(addr))));
            end if;
        end if;
    end process;
end architecture_memory;
