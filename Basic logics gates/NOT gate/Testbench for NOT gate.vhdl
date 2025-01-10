-- Library Declaration
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity Testbench is
end Testbench;

-- Architecture for Testbench
architecture Behavioral of Testbench is
    signal A : STD_LOGIC := '0';  -- Input Signal
    signal Y : STD_LOGIC;         -- Output Signal
begin
    -- Instantiate the Unit Under Test (UUT)
    UUT: entity work.NotGate
        port map (
            A => A,
            Y => Y
        );

    -- Stimulus Process
    process
    begin
        A <= '0'; wait for 10 ns;  -- Test Case 1: A = 0
        A <= '1'; wait for 10 ns;  -- Test Case 2: A = 1
        wait;  -- Stop simulation
    end process;
end Behavioral;
