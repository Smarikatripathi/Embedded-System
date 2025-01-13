library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2to4_tb is
end Decoder2to4_tb;

architecture Behavioral of Decoder2to4_tb is
    signal S0, S1 : STD_LOGIC := '0';
    signal D0, D1, D2, D3 : STD_LOGIC;
begin
    -- Instantiate Decoder
    UUT: entity work.Decoder2to4
        port map (
            S0 => S0, S1 => S1,
            D0 => D0, D1 => D1, D2 => D2, D3 => D3
        );

    -- Stimulus process
    process
    begin
        S1 <= '0'; S0 <= '0'; wait for 10 ns;  -- Activate D0
        S1 <= '0'; S0 <= '1'; wait for 10 ns;  -- Activate D1
        S1 <= '1'; S0 <= '0'; wait for 10 ns;  -- Activate D2
        S1 <= '1'; S0 <= '1'; wait for 10 ns;  -- Activate D3
        wait;
    end process;
end Behavioral;
