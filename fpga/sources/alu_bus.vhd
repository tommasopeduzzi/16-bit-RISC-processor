--------------------------------------------------------------------------------
-- File: alu_bus.vhd
-- 
-- Description: 
--
-- ALU operand bus controller.
--
-- Author: Tommaso Peduzzi  
--
--------------------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY alu_bus IS
    PORT (
        clk : IN STD_LOGIC; -- clock

        -- control lines
        reg_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

        -- inputs
        r0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

        -- output
        output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END alu_bus;
ARCHITECTURE architecture_alu_bus OF alu_bus IS
BEGIN
    PROCESS (clk) BEGIN
        IF rising_edge(clk) THEN
            IF NOT reg_sel = "XXX" THEN
                CASE to_integer(unsigned(reg_sel)) IS
                    WHEN 0 => output <= r0;
                    WHEN 1 => output <= r1;
                    WHEN 2 => output <= r2;
                    WHEN 3 => output <= r3;
                    WHEN 4 => output <= r4;
                    WHEN 5 => output <= r5;
                    WHEN 6 => output <= r6;
                    WHEN 7 => output <= r7;
                    WHEN OTHERS => output <= (OTHERS => 'X');
                END CASE;
            END IF;
        END IF;
    END PROCESS;
END architecture_alu_bus;