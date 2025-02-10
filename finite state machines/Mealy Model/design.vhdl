library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mealy_fsm is
    Port ( clk   : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input : in  STD_LOGIC;
           output : out STD_LOGIC);
end mealy_fsm;

architecture Behavioral of mealy_fsm is
    type state_type is (S0, S1, S2, S3);
    signal current_state, next_state : state_type;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, input)
    begin
        output <= '0';  -- Default output
        case current_state is
            when S0 =>
                if input = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                if input = '0' then
                    next_state <= S2;
                else
                    next_state <= S1;
                end if;
            when S2 =>
                if input = '1' then
                    next_state <= S3;
                    output <= '1';  -- Mealy output depends on input
                else
                    next_state <= S0;
                end if;
            when S3 =>
                next_state <= S0;
            when others =>
                next_state <= S0;
        end case;
    end process;
end Behavioral;
