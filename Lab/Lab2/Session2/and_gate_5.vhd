----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:20 02/26/2022 
-- Design Name: 
-- Module Name:    and_gate_5 - Structural 
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

entity and_gate_5 is
	port( a0, a1, a2, a3, a4 : in std_logic;
			b : out std_logic
			);
end and_gate_5;

architecture Structural of and_gate_5 is

begin

b <= a0 and a1 and a2 and a3 and a4;

end Structural;

