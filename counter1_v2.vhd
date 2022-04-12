----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:37:59 11/22/2011 
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
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

entity counter is
    Port ( Clk: in  bit;
			  reset: in bit;
			  enable: out bit;
           Qout : out  std_logic_vector (5 downto 0));			
end counter;

architecture Behavioral of counter is

signal actual, seguent:   unsigned (5 downto 0);
begin
	Qout <= std_logic_vector (actual);
	
	seguent <= "000000" when actual= "111011" else actual+1;
	enable <= '1' when seguent = "000000";
    process(Clk, reset)
    begin
		 if (reset='1') then
            actual <= "000000";
		 elsif (Clk'event and Clk='1') then
			actual <= seguent;
		 end if;
    end process;						  

end Behavioral;

