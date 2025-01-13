library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux1to4 is
    port (
        Din : in STD_LOGIC;             -- Input line
        S0, S1 : in STD_LOGIC;          -- Select lines
        D0, D1, D2, D3 : out STD_LOGIC  -- Output lines
    );
end Demux1to4;

architecture Behavioral of Demux1to4 is
begin
    process(Din, S0, S1)
    begin
        D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0';
        case (S1 & S0) is
            when "00" => D0 <= Din;
            when "01" => D1 <= Din;
            when "10" => D2 <= Din;
            when "11" => D3 <= Din;
            when others => null;
        end case;
    end process;
end Behavioral;
