library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cin : in STD_LOGIC;
        SUM : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end FullAdder;

architecture Behavioral of FullAdder is
begin
    SUM <= A xor B xor Cin;
    CARRY <= (A and B) or (B and Cin) or (A and Cin);
end Behavioral;
