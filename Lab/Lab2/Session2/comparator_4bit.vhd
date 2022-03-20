----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:43:04 02/26/2022 
-- Design Name: 
-- Module Name:    comparator_4bit - Structural 
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

entity comparator_4bit is

	port( a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			eq : out std_logic;
			gr : out std_logic;
			lt : out std_logic
			);

end comparator_4bit;

architecture Structural of comparator_4bit is

	component xor_gate is
		port( a : in std_logic;
			b : in std_logic;
			c : out std_logic
			);
	end component xor_gate;
	
	component and_gate_4 is
		port( a0 : in std_logic;
			a1 : in std_logic;
			a2 : in std_logic;
			a3 : in std_logic;
			b : out std_logic
			);
	end component and_gate_4;
	
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
	
	component and_gate_3 is
		port(a0 : in std_logic;
		  a1 : in std_logic;
		  a2 : in std_logic;
		  b : out std_logic
			);
	end component and_gate_3;
	
	component and_gate_5 is
		port( a0, a1, a2, a3, a4 : in std_logic;
			b : out std_logic
			);
	end component and_gate_5;
	
	component or_gate_4 is
		port( a0 : in std_logic;
			a1 : in std_logic;
			a2 : in std_logic;
			a3 : in std_logic;
	      b : out std_logic
	     );
	end component or_gate_4;
	
	component nor_gate is
		port(a, b : in std_logic;
		  c : out std_logic);
	end component nor_gate;
	
	component buff is
		port(a : in std_logic;
		  b : out std_logic);
	end component buff;

signal c0, c1, c2, c3 : std_logic;
signal g0, g1, g2, g3 : std_logic;
signal greater, equal : std_logic;
signal bnot : std_logic_vector(3 downto 0);

begin
	
	xor_gate0 : xor_gate port map (a => a(0), b => b(0), c => c0);
	xor_gate1 : xor_gate port map (a => a(1), b => b(1), c => c1);
	xor_gate2 : xor_gate port map (a => a(2), b => b(2), c => c2);
	xor_gate3 : xor_gate port map (a => a(3), b => b(3), c => c3);
	
	and_gate_40 : and_gate_4 port map (a0 => c0, a1 => c1, a2 => c2, a3 => c3, b => equal);
	
	
	--c0 <= a(0) xor b(0);
	--c1 <= a(1) xor b(1);
	--c2 <= a(2) xor b(2);
	--c3 <= a(3) xor b(3);
	--equal <= c0 and c1 and c2 and c3;
	
	buff0 : buff port map (a => equal, b => eq);
	--eq <= equal;
	
	not_gate0 : not_gate port map (a => b(0), anot => bnot(0));
	not_gate1 : not_gate port map (a => b(1), anot => bnot(1));
	not_gate2 : not_gate port map (a => b(2), anot => bnot(2));
	not_gate3 : not_gate port map (a => b(3), anot => bnot(3));
	
	
	
	and_gate_20 : and_gate_2 port map (a => a(3), b => bnot(3), c => g3);
	and_gate_30 : and_gate_3 port map (a0 => a(2), a1 => bnot(2), a2 => c3, b => g2);
	and_gate_41 : and_gate_4 port map (a0 => a(1), a1 => bnot(1), a2 => c3, a3 => c2, b => g1);
	and_gate_50 : and_gate_5 port map (a0 => a(0), a1 => bnot(0), a2 => c3, a3 => c2, a4 => c1, b => g0);
	
	
	
	--g3 <= a(3) and not b(3);
	--g2 <= a(2) and not b(2) and c3;
	--g1 <= a(1) and not b(1) and c3 and c2;
	--g0 <= a(0) and not b(0) and c3 and c2 and c1;
	
	or_gate_40 : or_gate_4 port map (a0 => g0, a1 => g1, a2 => g2, a3 => g3, b => greater);
	--greater <= g0 or g1 or g2 or g3;
	
	buff1 : buff port map (a => greater, b => gr);
	--gr <= greater;
	
	nor_gate0 : nor_gate port map (a => greater, b => equal, c => lt);
	--lt <= greater nor equal;
	
end Structural;

