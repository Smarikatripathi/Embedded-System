library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Subtractor_tb is
end Subtractor_tb;

architecture Behavioral of Subtractor_tb is
    signal A, B, Bin : STD_LOGIC := '0';
    signal DIFF, BOUT : STD_LOGIC;
begin
    -- Instantiate the Subtractor
    UUT: entity work.Subtractor
        port map (
            A => A,
            B => B,
            Bin => Bin,
            DIFF => DIFF,
            BOUT => BOUT
        );

    -- Stimulus process
    process
    begin
        A <= '0'; B <= '0'; Bin <= '0'; wait for 10 ns;  -- Test case 1
        A <= '0'; B <= '1'; Bin <= '0'; wait for 10 ns;  -- Test case 2
        A <= '1'; B <= '0'; Bin <= '1'; wait for 10 ns;  -- Test case 3
        A <= '1'; B <= '1'; Bin <= '1'; wait for 10 ns;  -- Test case 4
        wait;
    end process;
end Behavioral;
