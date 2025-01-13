library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_tb is
end FullAdder_tb;

architecture Behavioral of FullAdder_tb is
    signal A, B, Cin : STD_LOGIC := '0';
    signal SUM, CARRY : STD_LOGIC;
begin
    -- Instantiate the Full Adder
    UUT: entity work.FullAdder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            SUM => SUM,
            CARRY => CARRY
        );

    -- Stimulus process
    process
    begin
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;  -- Test case 1
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;  -- Test case 2
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;  -- Test case 3
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;  -- Test case 4
        wait;
    end process;
end Behavioral;
