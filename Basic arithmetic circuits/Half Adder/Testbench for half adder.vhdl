library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder_tb is
end HalfAdder_tb;

architecture Behavioral of HalfAdder_tb is
    signal A, B : STD_LOGIC := '0';
    signal SUM, CARRY : STD_LOGIC;
begin
    -- Instantiate the Half Adder
    UUT: entity work.HalfAdder
        port map (
            A => A,
            B => B,
            SUM => SUM,
            CARRY => CARRY
        );

    -- Stimulus process
    process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;  -- Test case 1
        A <= '0'; B <= '1'; wait for 10 ns;  -- Test case 2
        A <= '1'; B <= '0'; wait for 10 ns;  -- Test case 3
        A <= '1'; B <= '1'; wait for 10 ns;  -- Test case 4
        wait;
    end process;
end Behavioral;
