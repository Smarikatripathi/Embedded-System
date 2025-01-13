--design code for encoder 4 to 2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder4to2 is
    port (
        D0, D1, D2, D3 : in STD_LOGIC;  -- Input lines
        S0, S1 : out STD_LOGIC          -- Encoded output
    );
end Encoder4to2;

architecture Behavioral of Encoder4to2 is
begin
    process(D0, D1, D2, D3)
    begin
        S0 <= '0'; S1 <= '0';
        if D1 = '1' then
            S0 <= '1';
        elsif D2 = '1' then
            S1 <= '1';
        elsif D3 = '1' then
            S0 <= '1'; S1 <= '1';
        end if;
    end process;
end Behavioral;
