----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:13 05/07/2022 
-- Design Name: 
-- Module Name:    Shift - Behavioral 
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

entity Shift is

	port( reset, clk : in std_logic;
			sr, sl : in std_logic;
			sel : in std_logic_vector(1 downto 0);
			pi : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(3 downto 0)
			);

end Shift;

architecture Behavioral of Shift is

component mux4x1 is

	port( data : in std_logic_vector(3 downto 0);
			sel  : in std_logic_vector(1 downto 0);
			output : out std_logic
				);

end component mux4x1;

component DFF is
	port(
		d: in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		q: out std_logic
	);
end component DFF;

signal d : std_logic_vector(3 downto 0);
signal q : std_logic_vector(3 downto 0);

signal data0 : std_logic_vector(3 downto 0);
signal data1 : std_logic_vector(3 downto 0);
signal data2 : std_logic_vector(3 downto 0);
signal data3 : std_logic_vector(3 downto 0);

begin
	
	data0 <= pi(0) & sl & q(1) & q(0);
	data1 <= pi(1) & q(0) & q(2) & q(1);
	data2 <= pi(2) & q(1) & q(3) & q(2);
	data3 <= pi(3) & q(2) & sr & q(3);
	
	
	mux0 : mux4x1 port map (data => data0 , sel => sel, output => d(0));
	mux1 : mux4x1 port map (data => data1 , sel => sel, output => d(1));
	mux2 : mux4x1 port map (data => data2 , sel => sel, output => d(2));
	mux3 : mux4x1 port map (data => data3 , sel => sel, output => d(3));
	
	dff0 : DFF port map (d => d(0), clk => clk, reset => reset, q => q(0));
	dff1 : DFF port map (d => d(1), clk => clk, reset => reset, q => q(1));
	dff2 : DFF port map (d => d(2), clk => clk, reset => reset, q => q(2));
	dff3 : DFF port map (d => d(3), clk => clk, reset => reset, q => q(3));
	
	output <= q;

end Behavioral;

