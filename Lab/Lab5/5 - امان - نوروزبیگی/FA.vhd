----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:46:28 04/21/2022 
-- Design Name: 
-- Module Name:    FA - Structural 
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

entity FA is

	port(a : in std_logic;
		  b : in std_logic;
		  cin : in std_logic;
		  s : out std_logic;
		  cout : out std_logic);

end FA;

architecture Structural of FA is

begin

	s <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);

end Structural;

