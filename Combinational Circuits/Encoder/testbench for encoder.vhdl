--testbench for encoder 4 to 2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder4to2_tb is
end Encoder4to2_tb;

architecture Behavioral of Encoder4to2_tb is
    signal D0, D1, D2, D3 : STD_LOGIC := '0';
    signal S0, S1 : STD_LOGIC;
begin
    -- Instantiate Encoder
    UUT: entity work.Encoder4to2
        port map (
            D0 => D0, D1 => D1, D2 => D2, D3 => D3,
            S0 => S0, S1 => S1
        );

    -- Stimulus process
    process
    begin
        D0 <= '1'; wait for 10 ns;  -- Encode D0
        D0 <= '0'; D1 <= '1'; wait for 10 ns;  -- Encode D1
        D1 <= '0'; D2 <= '1'; wait for 10 ns;  -- Encode D2
        D2 <= '0'; D3 <= '1'; wait for 10 ns;  -- Encode D3
        wait;
    end process;
end Behavioral;
