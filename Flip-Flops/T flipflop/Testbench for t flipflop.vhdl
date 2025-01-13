library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TFlipFlop_tb is
end TFlipFlop_tb;

architecture Behavioral of TFlipFlop_tb is
    -- Testbench signals
    signal T, CLK, Q : STD_LOGIC := '0';
begin
    -- Instantiate the T Flip-Flop
    UUT: entity work.TFlipFlop
        port map (
            T => T,
            CLK => CLK,
            Q => Q
        );

    -- Clock generation
    CLK_process : process
    begin
        CLK <= '0'; wait for 10 ns;
        CLK <= '1'; wait for 10 ns;
    end process;

    -- Stimulus process
    Stimulus_process : process
    begin
        -- Test case 1: No toggle (T = 0)
        T <= '0'; wait for 20 ns;
        -- Test case 2: Toggle (T = 1)
        T <= '1'; wait for 20 ns;
        -- Test case 3: Toggle again (T = 1)
        T <= '1'; wait for 20 ns;
        -- Test case 4: No toggle (T = 0)
        T <= '0'; wait for 20 ns;

        wait;  -- End simulation
    end process;
end Behavioral;
