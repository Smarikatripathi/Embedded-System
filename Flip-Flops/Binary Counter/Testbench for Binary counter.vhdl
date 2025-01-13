library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BinaryCounter_tb is
end BinaryCounter_tb;

architecture Behavioral of BinaryCounter_tb is
    constant WIDTH : integer := 4;  -- Number of bits
    signal CLK, RESET : STD_LOGIC := '0';
    signal COUNT : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
begin
    -- Instantiate the Binary Counter
    UUT: entity work.BinaryCounter
        generic map (WIDTH => WIDTH)
        port map (
            CLK => CLK,
            RESET => RESET,
            COUNT => COUNT
        );

    -- Clock generation
    CLK_process : process
    begin
        CLK <= '0'; wait for 10 ns;
        CLK <= '1'; wait for 10 ns;
    end process;

    -- Stimulus process
    Stimulus_process : process
    begin
        RESET <= '1'; wait for 20 ns;  -- Reset counter
        RESET <= '0'; wait for 100 ns; -- Allow counter to increment
        wait;  -- End simulation
    end process;
end Behavioral;
