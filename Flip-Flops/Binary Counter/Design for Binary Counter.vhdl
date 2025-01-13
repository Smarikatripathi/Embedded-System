library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BinaryCounter is
    generic (
        WIDTH : integer := 4  -- Number of bits
    );
    port (
        CLK    : in  STD_LOGIC;       -- Clock input
        RESET  : in  STD_LOGIC;       -- Reset input
        COUNT  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)  -- Counter output
    );
end BinaryCounter;

architecture Behavioral of BinaryCounter is
    signal count_internal : STD_LOGIC_VECTOR(WIDTH-1 downto 0) := (others => '0');
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            count_internal <= (others => '0');  -- Reset counter
        elsif rising_edge(CLK) then
            count_internal <= count_internal + 1;  -- Increment counter
        end if;
    end process;

    COUNT <= count_internal;  -- Assign internal counter to output
end Behavioral;
