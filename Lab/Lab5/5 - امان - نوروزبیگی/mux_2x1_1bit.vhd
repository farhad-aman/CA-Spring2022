----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:26:49 04/21/2022 
-- Design Name: 
-- Module Name:    mux_2x1_1bit - Structural 
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

entity mux_2x1_1bit is
	
	port(a, b : in std_logic;
		  sel : in std_logic;
		  output :out std_logic);
	
end mux_2x1_1bit;

architecture Structural of mux_2x1_1bit is

begin

	output <= (sel and b) or ((not sel) and a);

end Structural;

