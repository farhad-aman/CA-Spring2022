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

entity mux4x1 is

	port( data : in std_logic_vector(3 downto 0);
			sel  : in std_logic_vector(1 downto 0);
			output : out std_logic
				);
				
end mux4x1;


architecture Structural of mux4x1 is

signal s0, s1, s2, s3 : std_logic;

begin
	
	s0 <= not sel(0) and not sel(1) and data(0);
	s1 <=     sel(0) and not sel(1) and data(1);
	s2 <= not sel(0) and     sel(1) and data(2);
	s3 <=     sel(0) and     sel(1) and data(3);
	
	
	output <= s0 or s1 or s2 or s3;

end Structural;

