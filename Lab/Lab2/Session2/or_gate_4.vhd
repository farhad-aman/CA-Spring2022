----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:20:10 02/26/2022 
-- Design Name: 
-- Module Name:    or_gate_4 - Structural 
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

entity or_gate_4 is

	port( a0 : in std_logic;
			a1 : in std_logic;
			a2 : in std_logic;
			a3 : in std_logic;
	      b : out std_logic
	     );

end or_gate_4;

architecture Structural of or_gate_4 is

begin

	b <= a0 or a1 or a2 or a3;
	

end Structural;

