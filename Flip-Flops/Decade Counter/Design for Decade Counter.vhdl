library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DecadeCounter is
    port (
        CLK    : in  STD_LOGIC;       -- Clock input
        RESET  : in  STD_LOGIC;       -- Reset input
        COUNT  : out STD_LOGIC_VECTOR(3 downto 0)  -- Counter output (4 bits for 0-9)
    );
end DecadeCounter;

architecture Behavioral of DecadeCounter is
    signal count_internal : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            count_internal <= (others => '0');  -- Reset counter
        elsif rising_edge(CLK) then
            if count_internal = "1001" then
                count_internal <= (others => '0');  -- Reset to 0 after 9
            else
                count_internal <= count_internal + 1;  -- Increment counter
            end if;
        end if;
    end process;

    COUNT <= count_internal;  -- Assign internal counter to output
end Behavioral;
