----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:33 03/07/2022 
-- Design Name: 
-- Module Name:    ripple_counter - Structural 
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

entity ripple_counter is

	port( clk, reset : in std_logic;
			bits : out std_logic_vector(3 downto 0)
		  );

end ripple_counter;

architecture Structural of ripple_counter is

	component TFF is
		
		port(
		t: in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		q: out std_logic
		);
		
	end component TFF;

	
	signal internal : std_logic_vector(3 downto 0);
	
begin

	TFF_0 : TFF port map (t => '1', clk => clk, reset => reset, q => internal(0));
	TFF_1 : TFF port map (t => '1', clk => internal(0), reset => reset, q => internal(1));
	TFF_2 : TFF port map (t => '1', clk => internal(1), reset => reset, q => internal(2));
	TFF_3 : TFF port map (t => '1', clk => internal(2), reset => reset, q => internal(3));
	
	bits(0) <= internal(0);
	bits(1) <= internal(1);
	bits(2) <= internal(2);
	bits(3) <= internal(3);

end Structural;

