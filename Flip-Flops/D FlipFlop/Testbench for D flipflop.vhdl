library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_tb is
end mux_2to1_tb;

architecture Behavioral of mux_2to1_tb is
    signal D0, D1, S, Y : STD_LOGIC;
    component mux_2to1
        Port ( D0, D1 : in STD_LOGIC; S : in STD_LOGIC; Y : out STD_LOGIC );
    end component;
begin
    uut: mux_2to1 Port Map (D0 => D0, D1 => D1, S => S, Y => Y);
    stimulus: process
    begin
        D0 <= '0'; D1 <= '0'; S <= '0'; wait for 10 ns;
        D0 <= '1'; D1 <= '0'; S <= '0'; wait for 10 ns;
        D0 <= '0'; D1 <= '1'; S <= '1'; wait for 10 ns;
        D0 <= '1'; D1 <= '1'; S <= '1'; wait;
    end process;
end Behavioral;
