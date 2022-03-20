----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:21 03/06/2022 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

entity TFF is
	port(
		t: in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		q: out std_logic
	);
end TFF;

architecture Behavioral of TFF is
signal tmp: std_logic;
begin
process(clk, reset)
	begin
		if(reset = '0') then
			tmp <= '0';
		elsif(rising_edge(clk)) then
			if (t = '1') then
				tmp <= not tmp;
         end if;
		end if;
end process;
q <= tmp;
end Behavioral;

