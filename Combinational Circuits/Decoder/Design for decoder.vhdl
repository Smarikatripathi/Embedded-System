library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2to4 is
    port (
        S0, S1 : in STD_LOGIC;          -- Select lines
        D0, D1, D2, D3 : out STD_LOGIC  -- Output lines
    );
end Decoder2to4;

architecture Behavioral of Decoder2to4 is
begin
    process(S0, S1)
    begin
        D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0';
        case (S1 & S0) is
            when "00" => D0 <= '1';
            when "01" => D1 <= '1';
            when "10" => D2 <= '1';
            when "11" => D3 <= '1';
            when others => null;
        end case;
    end process;
end Behavioral;
