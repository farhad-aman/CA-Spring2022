----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:31:22 04/21/2022 
-- Design Name: 
-- Module Name:    mux_2x1_8bit - Structural 
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

entity mux_2x1_8bit is
	port(a : in std_logic_vector(7 downto 0);
		  b : in std_logic_vector(7 downto 0);
		  sel : in std_logic;
		  output : out std_logic_vector(7 downto 0));
end mux_2x1_8bit;

architecture Structural of mux_2x1_8bit is

	component mux_2x1_1bit is
		port(a, b : in std_logic;
		     sel : in std_logic;
		     output :out std_logic);
	end component mux_2x1_1bit;

begin

	mux0 : mux_2x1_1bit port map (a => a(0), b => b(0), sel => sel, output => output(0));
	mux1 : mux_2x1_1bit port map (a => a(1), b => b(1), sel => sel, output => output(1));
	mux2 : mux_2x1_1bit port map (a => a(2), b => b(2), sel => sel, output => output(2));
	mux3 : mux_2x1_1bit port map (a => a(3), b => b(3), sel => sel, output => output(3));
	mux4 : mux_2x1_1bit port map (a => a(4), b => b(4), sel => sel, output => output(4));
	mux5 : mux_2x1_1bit port map (a => a(5), b => b(5), sel => sel, output => output(5));
	mux6 : mux_2x1_1bit port map (a => a(6), b => b(6), sel => sel, output => output(6));
	mux7 : mux_2x1_1bit port map (a => a(7), b => b(7), sel => sel, output => output(7));

end Structural;

