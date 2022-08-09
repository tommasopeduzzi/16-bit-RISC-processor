----------------------------------------------------------------------
-- Created by SmartDesign Fri Jul 22 15:48:50 2022
-- Version: v11.9 SP6 11.9.6.7
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library fusion;
use fusion.all;
----------------------------------------------------------------------
-- cpu_test entity declaration
----------------------------------------------------------------------
entity cpu_test is
    -- Port list
    port(
        -- Outputs
        current_opcode : out std_logic_vector(5 downto 0)
        );
end cpu_test;
----------------------------------------------------------------------
-- cpu_test architecture body
----------------------------------------------------------------------
architecture RTL of cpu_test is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
component CLK_GEN
    generic( 
        CLK_PERIOD : integer := 10000 ;
        DUTY_CYCLE : integer := 50 
        );
    -- Port list
    port(
        -- Outputs
        CLK : out std_logic
        );
end component;
-- cpu
component cpu
    -- Port list
    port(
        -- Inputs
        CLKA           : in  std_logic;
        rst            : in  std_logic;
        -- Outputs
        current_opcode : out std_logic_vector(5 downto 0)
        );
end component;
-- RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
component RESET_GEN
    generic( 
        DELAY       : integer := 1000 ;
        LOGIC_LEVEL : integer := 1 
        );
    -- Port list
    port(
        -- Outputs
        RESET : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal CLK_GEN_0_CLK        : std_logic;
signal current_opcode_net_0 : std_logic_vector(5 downto 0);
signal RESET_GEN_0_RESET    : std_logic;
signal current_opcode_net_1 : std_logic_vector(5 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 current_opcode_net_1       <= current_opcode_net_0;
 current_opcode(5 downto 0) <= current_opcode_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CLK_GEN_0   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN_0 : CLK_GEN
    generic map( 
        CLK_PERIOD => ( 10000 ),
        DUTY_CYCLE => ( 50 )
        )
    port map( 
        -- Outputs
        CLK => CLK_GEN_0_CLK 
        );
-- cpu_0
cpu_0 : cpu
    port map( 
        -- Inputs
        rst            => RESET_GEN_0_RESET,
        CLKA           => CLK_GEN_0_CLK,
        -- Outputs
        current_opcode => current_opcode_net_0 
        );
-- RESET_GEN_0   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN_0 : RESET_GEN
    generic map( 
        DELAY       => ( 1000 ),
        LOGIC_LEVEL => ( 1 )
        )
    port map( 
        -- Outputs
        RESET => RESET_GEN_0_RESET 
        );

end RTL;
