library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DecadeCounter_tb is
end DecadeCounter_tb;

architecture Behavioral of DecadeCounter_tb is
    signal CLK, RESET : STD_LOGIC := '0';
    signal COUNT : STD_LOGIC_VECTOR(3 downto 0);
begin
    -- Instantiate the Decade Counter
    UUT: entity work.DecadeCounter
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
        RESET <= '0'; wait for 200 ns; -- Allow counter to increment
        wait;  -- End simulation
    end process;
end Behavioral;
