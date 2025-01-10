-- Library Declaration
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity NotGate is
    Port (
        A : in  STD_LOGIC;  -- Input
        Y : out STD_LOGIC   -- Output
    );
end NotGate;

-- Architecture Definition
architecture Behavioral of NotGate is
begin
    Y <= not A;  -- NOT operation
end Behavioral;
