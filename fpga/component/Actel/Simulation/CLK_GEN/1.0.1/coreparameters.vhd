----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Fri Jul 22 15:48:50 2022
-- Parameters for CLK_GEN
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant CLK_PERIOD : integer := 10000;
    constant DUTY_CYCLE : integer := 50;
end coreparameters;
