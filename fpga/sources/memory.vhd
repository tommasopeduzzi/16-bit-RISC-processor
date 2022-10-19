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

LIBRARY IEEE;
LIBRARY std;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE std.textio.ALL;

ENTITY MEMORY IS
    PORT (
        i_clk : IN STD_LOGIC; -- clock
        i_we : IN STD_LOGIC; -- write enable 
        i_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- address
        i_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- input data
        o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- output 
    );
END MEMORY;
ARCHITECTURE ARCHITECTURE_MEMORY OF MEMORY IS
    TYPE ram_type IS ARRAY (0 TO (2 ** i_addr'length) - 1) OF bit_vector(i_data'RANGE);
    IMPURE FUNCTION init_ram(file_name : IN STRING) RETURN ram_type IS
        FILE binary_file : text OPEN READ_MODE IS file_name;
        VARIABLE current_line : line;
        VARIABLE ram : ram_type;
    BEGIN
        FOR i IN ram_type'RANGE LOOP
            readline(binary_file, current_line);
            read(current_line, ram(i));
        END LOOP;
        RETURN ram;
    END FUNCTION;
    SIGNAL s_ram : ram_type := init_ram("../../assembler/test.bin");
BEGIN
    PROCESS (i_clk) BEGIN
        IF rising_edge(i_clk) THEN
            IF i_we = '1' THEN -- write
                s_ram(to_integer(unsigned(i_addr))) <= to_bitvector(i_data);
            ELSE -- read
        END IF;
        END IF;
    END PROCESS;
    o_data <= to_stdlogicvector(s_ram(to_integer(unsigned(i_addr)))) WHEN (not i_we = '1') ELSE (OTHERS => 'X');
END ARCHITECTURE_MEMORY;