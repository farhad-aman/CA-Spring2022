----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:56 05/05/2022 
-- Design Name: 
-- Module Name:    Mult8x8 - Behavioral 
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

entity Mult8x8 is
	port(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		Mult: out std_logic_vector(15 downto 0);
		Clk: in std_logic
	);
	
end Mult8x8;

architecture Behavioral of Mult8x8 is
	signal REG: std_logic_vector(16 downto 0);
	signal State: integer range 0 to 9;
begin
	process(Clk)
	begin
		if Clk = '1' then
			if State = '0' then
				REG(7 downto 0) <= B;
				REG(16 downto 8) <= "000000000";
				State <= State + 1;
			elsif State = 9 then
				Mult <= REG(15 downto 0);
			else 
				if REG(0) = '0' then
					REG <= REG srl 1;
				else
					REG(16 downto 8) <= REG(16 downto 8) + A;
					REG <= REG srl 1;
				end if;
				State <= State + 1;
			end if;
		end if;
	end process;
end Behavioral;

