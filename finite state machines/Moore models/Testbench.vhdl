library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_moore_fsm is
end tb_moore_fsm;

architecture test of tb_moore_fsm is
    signal clk, reset, input_signal, output_signal : STD_LOGIC;

    component moore_fsm
        Port ( clk   : in  STD_LOGIC;
               reset : in  STD_LOGIC;
               input : in  STD_LOGIC;
               output : out STD_LOGIC);
    end component;

begin
    uut: moore_fsm port map(clk, reset, input_signal, output_signal);

    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';

        input_signal <= '1'; wait for 10 ns;
        input_signal <= '0'; wait for 10 ns;
        input_signal <= '1'; wait for 10 ns;
        input_signal <= '1'; wait for 10 ns;
        input_signal <= '0'; wait for 10 ns;
        input_signal <= '1'; wait for 10 ns;

        wait;
    end process;
end test;
