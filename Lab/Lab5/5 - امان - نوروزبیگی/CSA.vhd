----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:39:25 04/21/2022 
-- Design Name: 
-- Module Name:    CSA - Structural 
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

entity CSA is
	port(a : in std_logic_vector(7 downto 0);
		  b : in std_logic_vector(7 downto 0);
		  cin : in std_logic;
		  sum : out std_logic_vector(7 downto 0);
		  cout : out std_logic);
end CSA;

architecture Structural of CSA is

	component RCA is
		port(a : in std_logic_vector(7 downto 0);
	     b : in std_logic_vector(7 downto 0);
		  cin : in std_logic;
		  sum : out std_logic_vector(7 downto 0);
		  cout : out std_logic);
	end component RCA;
	
	component mux_2x1_8bit is
		port(a : in std_logic_vector(7 downto 0);
		  b : in std_logic_vector(7 downto 0);
		  sel : in std_logic;
		  output : out std_logic_vector(7 downto 0));
	end component mux_2x1_8bit;
	
	component mux_2x1_1bit is
		port(a, b : in std_logic;
		  sel : in std_logic;
		  output :out std_logic);
	end component mux_2x1_1bit;

	signal sum_RCA0, sum_RCA1 : std_logic_vector(7 downto 0);
	signal cout_RCA0, cout_RCA1 : std_logic;
begin

	RCA0 : RCA port map (a => a, b => b, cin => '0', sum => sum_RCA0, cout => cout_RCA0);
	RCA1 : RCA port map (a => a, b => b, cin => '1', sum => sum_RCA1, cout => cout_RCA1);
	
	mux8 : mux_2x1_8bit port map(a => sum_RCA0, b => sum_RCA1, sel => cin, output => sum);
	
	mux2 : mux_2x1_1bit port map (a => cout_RCA0, b => cout_RCA1, sel => cin, output => cout);

end Structural;

