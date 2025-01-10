library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity D_FlipFlop is
    Port (
        clk : in STD_LOGIC;    -- Clock input
        d   : in STD_LOGIC;    -- Data input
        q   : in STD_LOGIC;    -- Input to match q's initial state (optional)
        q_n : out STD_LOGIC    -- Complement of Q (Q')
    );
end D_FlipFlop;

-- Architecture declaration
architecture Behavioral of D_FlipFlop is
    signal q_internal : STD_LOGIC := '0'; -- Internal signal to hold the state of Q
begin
    process (clk)
    begin
        if rising_edge(clk) then
            q_internal <= d;  -- Capture data input D on the rising edge of the clock
        end if;
    end process;

    q_n <= NOT q_internal;  -- Complement of Q output
end Behavioral;
