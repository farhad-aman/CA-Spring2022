----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:46 02/28/2022 
-- Design Name: 
-- Module Name:    decoder_2bit - Structural 
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

entity decoder_2bit is
	port(
		a: in std_logic_vector(1 downto 0);
		b: out std_logic_vector(3 downto 0)
	);
end decoder_2bit;

architecture Structural of decoder_2bit is
	component not_gate is
		port( a : in std_logic;
			anot : out std_logic);
	end component not_gate;
	
	component and_gate_2 is
		port(a : in std_logic;
		  b : in std_logic;
		  c : out std_logic
		  );
	end component and_gate_2;
	
	signal anot: std_logic_vector(1 downto 0);
	
begin
	not_gate0 : not_gate port map (a => a(0), anot => anot(0));
	not_gate1 : not_gate port map (a => a(1), anot => anot(1));
	
	and_gate_20 : and_gate_2 port map(a => anot(0), b => anot(1), c => b(0));
	and_gate_21 : and_gate_2 port map(a => a(0), b => anot(1), c => b(1));
	and_gate_22 : and_gate_2 port map(a => anot(0), b => a(1), c => b(2));
	and_gate_23 : and_gate_2 port map(a => a(0), b => a(1), c => b(3));
end Structural;











