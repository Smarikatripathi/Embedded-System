--Testbench for 1 to 4 demux
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux1to4_tb is
end Demux1to4_tb;

architecture Behavioral of Demux1to4_tb is
    signal Din, S0, S1 : STD_LOGIC := '0';
    signal D0, D1, D2, D3 : STD_LOGIC;
begin
    -- Instantiate DEMUX
    UUT: entity work.Demux1to4
        port map (
            Din => Din,
            S0 => S0, S1 => S1,
            D0 => D0, D1 => D1, D2 => D2, D3 => D3
        );

    -- Stimulus process
    process
    begin
        Din <= '1'; S1 <= '0'; S0 <= '0'; wait for 10 ns;  -- Select D0
        S1 <= '0'; S0 <= '1'; wait for 10 ns;  -- Select D1
        S1 <= '1'; S0 <= '0'; wait for 10 ns;  -- Select D2
        S1 <= '1'; S0 <= '1'; wait for 10 ns;  -- Select D3
        wait;
    end process;
end Behavioral;
