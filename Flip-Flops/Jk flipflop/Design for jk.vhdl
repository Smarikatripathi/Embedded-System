library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKFlipFlop is
    port (
        J   : in  STD_LOGIC;   -- J input
        K   : in  STD_LOGIC;   -- K input
        CLK : in  STD_LOGIC;   -- Clock input
        Q   : out STD_LOGIC    -- Output Q
    );
end JKFlipFlop;

architecture Behavioral of JKFlipFlop is
    signal Q_internal : STD_LOGIC := '0';  -- Internal signal for Q
begin
    process(CLK)
    begin
        if rising_edge(CLK) then  -- Trigger on clock rising edge
            case (J & K) is
                when "00" =>  -- No Change
                    Q_internal <= Q_internal;
                when "01" =>  -- Reset (Q = 0)
                    Q_internal <= '0';
                when "10" =>  -- Set (Q = 1)
                    Q_internal <= '1';
                when "11" =>  -- Toggle
                    Q_internal <= not Q_internal;
                when others =>
                    null;
            end case;
        end if;
    end process;

    Q <= Q_internal;  -- Assign internal signal to output
end Behavioral;
