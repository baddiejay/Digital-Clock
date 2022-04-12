-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
--use IEEE.numeric_bit.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity set_alarm is
    Port ( button0: in bit;
			  button1: in bit;
			  button2: in bit;
			  button3: in bit;
			  Clk: in bit;
			  Qout0 : out  std_logic_vector (3 downto 0);
			  Qout1 : out  std_logic_vector (3 downto 0);
			  Qout2 : out  std_logic_vector (3 downto 0);
           Qout3 : out  std_logic_vector (3 downto 0));			
end set_alarm;

architecture Behavioral of set_alarm is

signal actual0, seguent0: unsigned (3 downto 0);
signal actual1, seguent1: unsigned (3 downto 0);
signal actual2, seguent2: unsigned (3 downto 0);
signal actual3, seguent3: unsigned (3 downto 0);

begin
	Qout0 <= std_logic_vector (actual0);
	Qout1 <= std_logic_vector (actual1);
	Qout2 <= std_logic_vector (actual2);
	Qout3 <= std_logic_vector (actual3);
	
	seguent0 <= "0000" when actual0= "1001" else actual0+1;
	seguent1 <= "0000" when actual1= "1001" else actual1+1;
	seguent2 <= "0000" when actual2= "1001" else actual2+1;
	seguent3 <= "0000" when actual3= "1001" else actual3+1;
	
    process(Clk)
    begin
		if (Clk'event and Clk='1') then
			 if (button0 = '1') then
				actual0 <= seguent0;
			 elsif (button1 = '1') then
				actual1 <= seguent1;
			 elsif (button2 = '1') then
				actual2 <= seguent2;
			 elsif (button3 = '1') then
				actual3 <= seguent3;
			 end if;
		end if;
    end process;						  

end Behavioral;