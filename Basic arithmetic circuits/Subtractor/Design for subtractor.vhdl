library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Subtractor is
    port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Bin : in STD_LOGIC;
        DIFF : out STD_LOGIC;
        BOUT : out STD_LOGIC
    );
end Subtractor;

architecture Behavioral of Subtractor is
begin
    DIFF <= A xor B xor Bin;
    BOUT <= (not A and B) or ((not A or B) and Bin);
end Behavioral;
