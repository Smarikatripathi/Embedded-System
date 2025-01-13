-- Design for 4:1 Multiplexer
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mltplexer_4_1 is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end Mltplexer_4_1;

architecture dataflow of Mltplexer_4_1 is
begin
with s select
y <=     i(0) when "00",
         i(1) when "01",
         i(2) when "10",
         i(3) when others;
end dataflow;
