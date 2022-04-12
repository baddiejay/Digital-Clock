----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:20 12/03/2021 
-- Design Name: 
-- Module Name:    alarma - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alarma is
	Port ( clk_in: in  bit;
			  reset: in bit;
			  switch: in bit;
			  seconds_clock: in STD_LOGIC_VECTOR(5 downto 0);
			  minutes_clock: in STD_LOGIC_VECTOR(5 downto 0);
			  hour_clock: in STD_LOGIC_VECTOR(5 downto 0);
			  minutes_alarm: in STD_LOGIC_VECTOR(5 downto 0);
			  hour_alarm: in STD_LOGIC_VECTOR(5 downto 0);
			  led: out bit);
end alarma;

architecture Behavioral of alarma is

signal cmp: bit;
signal state : bit;

begin

cmp <= '1' when (minutes_clock = minutes_alarm) and (hour_clock = hour_alarm) and (seconds_clock = "000000")
		else '0';
led <= '1' when state = '1'
		else '0';
		
	process(reset,clk_in) is
		begin
			if (reset = '1') then
				state<= '0';
			elsif (clk_in'event and clk_in = '1') then
				if (state = '0' and cmp = '1' )then
					state<= '1';
				elsif (state='1' and switch = '1') then
					state<='0';
				end if;
		 end if;
	end process;

end Behavioral;

