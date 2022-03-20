----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:09 02/19/2022 
-- Design Name: 
-- Module Name:    full_adder - Structural 
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

entity full_adder is

port(
	I1, I0, Cin : in std_logic;
	S, Cout : out std_logic
);

end full_adder;

architecture Structural of full_adder is
	
	component half_adder is
		port(
			in1, in2 : in std_logic;
			out1, out2 : out std_logic
		);
	end component half_adder;
	
	component or_gate is
		port(
			A, B : in std_logic;
			C : out std_logic
	   );
	end component or_gate;	
	
	
	signal internal_signal0, internal_signal1, internal_signal2 : std_logic; 
	
	
begin

	half_adder_instance0 : half_adder port map (in1=>I1, in2=>I0, out1=>internal_signal0, out2=>internal_signal1);
	
	half_adder_instance1 : half_adder port map (in1=>internal_signal0, in2=>Cin, out1=>S, out2=>internal_signal2);
	
	or_gate_instance0    : or_gate    port map (A=>internal_signal1, B=>internal_signal2, C=>Cout);

end Structural;

