library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TFlipFlop is
    port (
        T   : in  STD_LOGIC;   -- T input
        CLK : in  STD_LOGIC;   -- Clock input
        Q   : out STD_LOGIC    -- Output Q
    );
end TFlipFlop;

architecture Behavioral of TFlipFlop is
    signal Q_internal : STD_LOGIC := '0';  -- Internal signal for Q
begin
    process(CLK)
    begin
        if rising_edge(CLK) then  -- Trigger on clock rising edge
            if T = '1' then
                Q_internal <= not Q_internal;  -- Toggle output
            else
                Q_internal <= Q_internal;  -- Maintain current state
            end if;
        end if;
    end process;

    Q <= Q_internal;  -- Assign internal signal to output
end Behavioral;
