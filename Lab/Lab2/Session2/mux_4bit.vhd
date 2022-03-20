----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:22:25 02/26/2022 
-- Design Name: 
-- Module Name:    mux_4bit - Structural 
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

entity mux_4bit is

	port( data : in std_logic_vector(3 downto 0);
			sel  : in std_logic_vector(1 downto 0);
			output : out std_logic
				);
				
end mux_4bit;


architecture Structural of mux_4bit is

	component not_gate is
		port( a : in std_logic;
			   anot : out std_logic
				);
	end component not_gate;

	
	component or_gate_4 is
	
		port( a0 : in std_logic;
			a1 : in std_logic;
			a2 : in std_logic;
			a3 : in std_logic;
	      b : out std_logic
	     );
		
	end component or_gate_4;
	
	component and_gate_3 is
	
		port(a0 : in std_logic;
		  a1 : in std_logic;
		  a2 : in std_logic;
		  b : out std_logic
			);
			
	end component and_gate_3;

signal s0, s1, s2, s3 : std_logic;

signal selnot : std_logic_vector(1 downto 0);

begin

	
	not_gate0 : not_gate port map (a => sel(0), anot => selnot(0));
	not_gate1 : not_gate port map (a => sel(1), anot => selnot(1));
	
	and_gate_30 : and_gate_3 port map (a0 => selnot(0), a1 => selnot(1), a2 => data(0), b => s0);
	and_gate_31 : and_gate_3 port map (a0 => sel(0), a1 => selnot(1), a2 => data(1), b => s1);
	and_gate_32 : and_gate_3 port map (a0 => selnot(0), a1 => sel(1), a2 => data(2), b => s2);
	and_gate_33 : and_gate_3 port map (a0 => sel(0), a1 => sel(1), a2 => data(3), b => s3);
	
	--s0 <= not sel(0) and not sel(1) and data(0);
	--s1 <=     sel(0) and not sel(1) and data(1);
	--s2 <= not sel(0) and     sel(1) and data(2);
	--s3 <=     sel(0) and     sel(1) and data(3);
	
	
	or_gate_40 : or_gate_4 port map (a0 => s0, a1 => s1, a2 => s2, a3 => s3, b => output);
	
	
	--output <= s0 or s1 or s2 or s3;

end Structural;

