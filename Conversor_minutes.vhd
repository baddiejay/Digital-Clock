
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Conversor_minutes is
    Port ( entrada : in  STD_LOGIC_VECTOR (5 downto 0);
           out1 : out  STD_LOGIC_VECTOR (3 downto 0);
           out0 : out  STD_LOGIC_VECTOR (3 downto 0));
end Conversor_minutes;

architecture Behavioral of Conversor_minutes is
signal output:  STD_LOGIC_VECTOR (7 downto 0);
begin

out0<=output(3 downto 0);
out1<=output(7 downto 4);

output<= B"0000_0000" when entrada= "000000" else
			B"0000_0001" when entrada= "000001" else
			B"0000_0010" when entrada= "000010" else
			B"0000_0011" when entrada= "000011" else
			B"0000_0100" when entrada= "000100" else
			B"0000_0101" when entrada= "000101" else
			B"0000_0110" when entrada= "000110" else
			B"0000_0111" when entrada= "000111" else
			B"0000_1000" when entrada= "001000" else
			B"0000_1001" when entrada= "001001" else

			B"0001_0000" when entrada= "001010" else
			B"0001_0001" when entrada= "001011" else
			B"0001_0010" when entrada= "001100" else
			B"0001_0011" when entrada= "001101" else
			B"0001_0100" when entrada= "001110" else
			B"0001_0101" when entrada= "001111" else
			B"0001_0110" when entrada= "010000" else
			B"0001_0111" when entrada= "010001" else
			B"0001_1000" when entrada= "010010" else
			B"0001_1001" when entrada= "010011" else

			B"0010_0000" when entrada= "010100" else
			B"0010_0001" when entrada= "010101" else
			B"0010_0010" when entrada= "010110" else
			B"0010_0011" when entrada= "010111" else
			B"0010_0100" when entrada= "011000" else
			B"0010_0101" when entrada= "011001" else
			B"0010_0110" when entrada= "011010" else
			B"0010_0111" when entrada= "011011" else
			B"0010_1000" when entrada= "011100" else
			B"0010_1001" when entrada= "011101" else

			B"0011_0000" when entrada= "011110" else
			B"0011_0001" when entrada= "011111" else
			B"0011_0010" when entrada= "100000" else
			B"0011_0011" when entrada= "100001" else
			B"0011_0100" when entrada= "100010" else
			B"0011_0101" when entrada= "100011" else
			B"0011_0110" when entrada= "100100" else
			B"0011_0111" when entrada= "100101" else
			B"0011_1000" when entrada= "100110" else
			B"0011_1001" when entrada= "100111" else

			B"0100_0000" when entrada= "101000" else
			B"0100_0001" when entrada= "101001" else
			B"0100_0010" when entrada= "101010" else
			B"0100_0011" when entrada= "101011" else
			B"0100_0100" when entrada= "101100" else
			B"0100_0101" when entrada= "101101" else
			B"0100_0110" when entrada= "101110" else
			B"0100_0111" when entrada= "101111" else
			B"0100_1000" when entrada= "110000" else
			B"0100_1001" when entrada= "110001" else

			B"0101_0000" when entrada= "110010" else
			B"0101_0001" when entrada= "110011" else
			B"0101_0010" when entrada= "110100" else
			B"0101_0011" when entrada= "110101" else
			B"0101_0100" when entrada= "110110" else
			B"0101_0101" when entrada= "110111" else
			B"0101_0110" when entrada= "111000" else
			B"0101_0111" when entrada= "111001" else
			B"0101_1000" when entrada= "111010" else
			B"0101_1001" when entrada= "111011" else
			"XXXXXXXX";

end Behavioral;
