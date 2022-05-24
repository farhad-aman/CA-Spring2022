----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:18:12 03/06/2022 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is
	port(
		d: in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		q: out std_logic
	);
end DFF;

architecture Behavioral of DFF is
begin
process(clk, reset)
	begin
		if(reset = '0') then
			q <= '0';
		elsif(rising_edge(clk)) then
			q <= d;
		end if;
end process;
end Behavioral;