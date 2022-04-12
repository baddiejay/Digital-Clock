----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:42 10/15/2021 
-- Design Name: 
-- Module Name:    FreqDiv10 - Behavioral 
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

entity DivBy10 is
	Port ( clk_in : in STD_LOGIC;
			clk_out :out STD_LOGIC);
end DivBy10;

architecture Behavioral of DivBy10 is
	signal cnt, nxt_cnt: integer :=0;
	signal cmp, tmp, nxt_tmp : std_logic := '0';
begin
	process (clk_in)
	begin
		if (clk_in'event and clk_in = '1') then
		tmp <= nxt_tmp;
		cnt <= nxt_cnt;
 end if;
end process;
cmp <= '1' when cnt >= 4 else '0';
nxt_cnt <= 0 when cmp='1' else cnt+1;
nxt_tmp <= not(tmp) when cmp='1' else tmp;
clk_out <= tmp;

end Behavioral;
