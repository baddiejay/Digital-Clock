
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Visor is
    Port ( out1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  out0 : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk_in : in STD_LOGIC;
			  posicion : out  STD_LOGIC_VECTOR (3 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0));
end Visor;

architecture Behavioral of Visor is

signal entrada: STD_LOGIC_VECTOR(3 downto 0);
signal cnt: STD_LOGIC;

begin
entrada <= out0 when cnt = '0' else out1;
posicion <= "1110" when cnt = '0' else "1101";

segment <= "0000001" when entrada= "0000" else
	   "1001111" when entrada= "0001" else
	   "0010010" when entrada= "0010" else
	   "0000110" when entrada= "0011" else
	   "1001100" when entrada= "0100" else
	   "0100100" when entrada= "0101" else
	   "1100000" when entrada= "0110" else
	   "0001111" when entrada= "0111" else
	   "0000000" when entrada= "1000" else
	   "0001100" when entrada= "1001" else
	   "1111111";

process(clk_in) is
begin
    if (clk_in'event and clk_in = '1') then
        if cnt = '0' then
            cnt <= '1';
        else
            cnt <= '0';
        end if;
    end if;
end process;

 
end Behavioral;
