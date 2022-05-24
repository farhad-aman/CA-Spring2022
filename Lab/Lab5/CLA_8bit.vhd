----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:36 04/20/2022 
-- Design Name: 
-- Module Name:    CLA_8bit - Behavioral 
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

entity CLA_8bit is
	port(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		cin: in std_logic;
		S: out std_logic_vector(7 downto 0);
		cout: out std_logic
	);
end CLA_8bit;

architecture Behavioral of CLA_8bit is
	signal P: std_logic_vector(7 downto 0);
	signal G: std_logic_vector(7 downto 0);
	signal C: std_logic_vector(7 downto 1);
begin
	process(A, B, C, Cin, G, P)
		begin
			P(0) <= A(0) or B(0);
			P(1) <= A(1) or B(1);
			P(2) <= A(2) or B(2);
			P(3) <= A(3) or B(3);
			P(4) <= A(4) or B(4);
			P(5) <= A(5) or B(5);
			P(6) <= A(6) or B(6);
			P(7) <= A(7) or B(7);
			G(0) <= A(0) and B(0);
			G(1) <= A(1) and B(1);
			G(2) <= A(2) and B(2);
			G(3) <= A(3) and B(3);
			G(4) <= A(4) and B(4);
			G(5) <= A(5) and B(5);
			G(6) <= A(6) and B(6);
			G(7) <= A(7) and B(7);

			C(1) <= G(0) or (P(0) and Cin);
			C(2) <= G(1) or (G(0) and P(1)) or (P(0) and P(1) and Cin);
			C(3) <= G(2) or (G(1) and P(2)) or (G(0) and P(1) and P(2)) or (P(0) and P(1) and P(2) and Cin);
			C(4) <= G(3) or (G(2) and P(3)) or (G(1) and P(2) and P(3)) or (G(0) and P(1) and P(2) and P(3)) or (P(0) and P(1) and P(2) and P(3) and Cin);
			C(5) <= G(4) or (G(3) and P(4)) or (G(2) and P(3) and P(4)) or (G(1) and P(2) and P(3) and P(4)) or (G(0) and P(1) and P(2) and P(3) and P(4)) or (P(0) and P(1) and P(2) and P(3) and P(4) and Cin);
			C(6) <= G(5) or (G(4) and P(5)) or (G(3) and P(4) and P(5)) or (G(2) and P(3) and P(4) and P(5)) or (G(1) and P(2) and P(3) and P(4) and P(5)) or (G(0) and P(1) and P(2) and P(3) and P(4) and P(5)) or (P(0) and P(1) and P(2) and P(3) and P(4) and P(5) and Cin);
			C(7) <= G(6) or (G(5) and P(6)) or (G(4) and P(5) and P(6)) or (G(3) and P(4) and P(5) and P(6)) or (G(2) and P(3) and P(4) and P(5) and P(6)) or (G(1) and P(2) and P(3) and P(4) and P(5) and P(6)) or (G(0) and P(1) and P(2) and P(3) and P(4) and P(5) and P(6)) or (P(0) and P(1) and P(2) and P(3) and P(4) and P(5) and P(6) and Cin);
			Cout <= G(7) or (G(6) and P(7)) or (G(5) and P(6) and P(7)) or (G(4) and P(5) and P(6) and P(7)) or (G(3) and P(4) and P(5) and P(6) and P(7)) or (G(2) and P(3) and P(4) and P(5) and P(6) and P(7)) or (G(1) and P(2) and P(3) and P(4) and P(5) and P(6) and P(7)) or (G(0) and P(1) and P(2) and P(3) and P(4) and P(5) and P(6) and P(7)) or (P(0) and P(1) and P(2) and P(3) and P(4) and P(5) and P(6) and P(7) and Cin);
	
			S(0) <= A(0) xor B(0) xor Cin;
			S(1) <= A(1) xor B(1) xor C(1);
			S(2) <= A(1) xor B(2) xor C(2);
			S(3) <= A(3) xor B(3) xor C(3);
			S(4) <= A(4) xor B(4) xor C(4);
			S(5) <= A(5) xor B(5) xor C(5);
			S(6) <= A(6) xor B(6) xor C(6);
			S(7) <= A(7) xor B(7) xor C(7);
	end process;
end Behavioral;

