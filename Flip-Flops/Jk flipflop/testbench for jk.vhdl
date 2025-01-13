library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKFlipFlop_tb is
end JKFlipFlop_tb;

architecture Behavioral of JKFlipFlop_tb is
    -- Testbench signals
    signal J, K, CLK, Q : STD_LOGIC := '0';
begin
    -- Instantiate the JK Flip-Flop
    UUT: entity work.JKFlipFlop
        port map (
            J => J,
            K => K,
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
        -- Test case 1: No change (J = 0, K = 0)
        J <= '0'; K <= '0'; wait for 20 ns;
        -- Test case 2: Reset (J = 0, K = 1)
        J <= '0'; K <= '1'; wait for 20 ns;
        -- Test case 3: Set (J = 1, K = 0)
        J <= '1'; K <= '0'; wait for 20 ns;
        -- Test case 4: Toggle (J = 1, K = 1)
        J <= '1'; K <= '1'; wait for 20 ns;
        -- Test case 5: No change (J = 0, K = 0)
        J <= '0'; K <= '0'; wait for 20 ns;

        wait;  -- End simulation
    end process;
end Behavioral;
