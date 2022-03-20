----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:01 02/28/2022 
-- Design Name: 
-- Module Name:    encoder_4bit - Structural 
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

entity encoder_4bit is
	port(
		a: in std_logic_vector(3 downto 0);
		b: out std_logic_vector(1 downto 0)
	);
end encoder_4bit;

architecture Structural of encoder_4bit is
	component or_gate is
		port(a : in std_logic;
		  b : in std_logic;
		  c : out std_logic
		  );
	end component or_gate;
begin
	or_gate0 : or_gate port map (a => a(1), b => a(3), c => b(0));
	or_gate1 : or_gate port map (a => a(2), b => a(3), c => b(1));
end Structural;









