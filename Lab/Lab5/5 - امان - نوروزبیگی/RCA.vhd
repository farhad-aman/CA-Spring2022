----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:51:52 04/21/2022 
-- Design Name: 
-- Module Name:    RCA - Structural 
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

entity RCA is

	port(a : in std_logic_vector(7 downto 0);
	     b : in std_logic_vector(7 downto 0);
		  cin : in std_logic;
		  sum : out std_logic_vector(7 downto 0);
		  cout : out std_logic);

end RCA;

architecture Structural of RCA is

	component FA is
		port(a : in std_logic;
			  b : in std_logic;
			  cin : in std_logic;
			  s : out std_logic;
		     cout : out std_logic);
	end component FA;
	
	signal ci : std_logic_vector(6 downto 0);

begin

	FA0 : FA port map (a => a(0), b => b(0), cin => cin,   s => sum(0), cout => ci(0));
	FA1 : FA port map (a => a(1), b => b(1), cin => ci(0), s => sum(1), cout => ci(1));
	FA2 : FA port map (a => a(2), b => b(2), cin => ci(1), s => sum(2), cout => ci(2));
	FA3 : FA port map (a => a(3), b => b(3), cin => ci(2), s => sum(3), cout => ci(3));
	FA4 : FA port map (a => a(4), b => b(4), cin => ci(3), s => sum(4), cout => ci(4));
	FA5 : FA port map (a => a(5), b => b(5), cin => ci(4), s => sum(5), cout => ci(5));
	FA6 : FA port map (a => a(6), b => b(6), cin => ci(5), s => sum(6), cout => ci(6));
	FA7 : FA port map (a => a(7), b => b(7), cin => ci(6), s => sum(7), cout => cout);
	
end Structural;

