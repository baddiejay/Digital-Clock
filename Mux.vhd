----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:13 11/26/2021 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux is
	Port ( out0_seconds : in  STD_LOGIC_VECTOR (3 downto 0);
          out1_seconds : in  STD_LOGIC_VECTOR (3 downto 0);
			 out0_minutes : in  STD_LOGIC_VECTOR (3 downto 0);
          out1_minutes : in  STD_LOGIC_VECTOR (3 downto 0);
			 out0_hours : in  STD_LOGIC_VECTOR (3 downto 0);
          out1_hours : in  STD_LOGIC_VECTOR (3 downto 0);
			 out0_minutes_alarm : in  STD_LOGIC_VECTOR (3 downto 0);
          out1_minutes_alarm : in  STD_LOGIC_VECTOR (3 downto 0);
			 out0_hours_alarm : in  STD_LOGIC_VECTOR (3 downto 0);
          out1_hours_alarm : in  STD_LOGIC_VECTOR (3 downto 0);
			 switch_set_clock: in bit;
			 switch_crono: in bit;
			 out0 : out  STD_LOGIC_VECTOR (3 downto 0);
			 out1 : out  STD_LOGIC_VECTOR (3 downto 0);
			 out2 : out  STD_LOGIC_VECTOR (3 downto 0);
			 out3 : out  STD_LOGIC_VECTOR (3 downto 0));
end Mux;

architecture Behavioral of Mux is
begin
	
	out0 <= out0_seconds when switch_crono = '1' 
			  else out0_minutes_alarm when switch_set_clock = '1'
			  else out0_minutes;
	out1 <= out1_seconds when switch_crono = '1'
			  else out1_minutes_alarm when switch_set_clock = '1'
			  else out1_minutes;
	out2 <= out0_minutes when switch_crono = '1'
			  else out0_hours_alarm when switch_set_clock = '1'
			  else out0_hours;
	out3 <= out1_minutes when switch_crono = '1'
			  else out1_hours_alarm when switch_set_clock = '1'
			  else out1_hours;
			  
--	process(reset)
 --   begin
--if (reset='1') then
  --          
	--	 elsif (pause='0') then
--
	--	 end if;
   -- end process;

end Behavioral;

