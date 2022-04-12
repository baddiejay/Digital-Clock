
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Visor is
    Port ( out0 : in  STD_LOGIC_VECTOR (3 downto 0);
			  out1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  out2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  out3 : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk_in : in STD_LOGIC;
			  punt: out STD_LOGIC;
			  posicion : out  STD_LOGIC_VECTOR (3 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0));
end Visor;

architecture Behavioral of Visor is

signal entrada: STD_LOGIC_VECTOR(3 downto 0);
signal cnt: STD_LOGIC_VECTOR(1 downto 0);

begin
entrada <=  out0 when cnt = "00" else 
				out1 when cnt = "01" else 
				out2 when cnt = "10" else 
				out3 ;
				
posicion <= "1110" when cnt = "00" 
				else "1101" when cnt = "01"
				else "1011" when cnt = "10"
				else "0111" when cnt = "11";
				
punt <= '0' when cnt= "10" else '1';

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
	   "XXXXXXX";

process(clk_in) is
begin
    if (clk_in'event and clk_in = '1') then
		cnt <= std_logic_vector(unsigned(cnt) + 1);
    end if;
end process;


end Behavioral;
