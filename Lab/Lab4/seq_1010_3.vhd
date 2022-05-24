----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:32:54 04/12/2022 
-- Design Name: 
-- Module Name:    seq_1010_3 - Moore_without_overlap 
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

entity seq_1010_3 is
	port( clk, reset: in std_logic;
			input : in std_logic;
			output : out std_logic
			);
end seq_1010_3;

architecture Moore_without_overlap of seq_1010_3 is

type states is (init, got_1, got_10, got_101, got_1010);
signal current_state, next_state : states;

begin

	process (clk, reset)
	begin
		if(reset = '1') then
			current_state <= init;
		elsif (rising_edge(clk)) then
			current_state <= next_state;
		end if;	
	end process;
	
	process (current_state, input)
	begin
		output <= '0';
		case current_state is
			when init =>
				if input='0' then
					next_state <= init;
				else
					next_state <= got_1;
				end if;
			when got_1 =>
				if input='1' then
					next_state <= got_1;
				else
					next_state <= got_10;
				end if;
			when got_10 =>
				if input='1' then
					next_state <= got_101;
				else
					next_state <= init;
				end if;
			when got_101 =>
				if input='1' then
					next_state <= got_1;
				else
					next_state <= got_1010;
				end if;
			when got_1010 =>
				output <= '1';
				if input = '1' then
					next_state <= got_1;
				else
					next_state <= init;
				end if;	
		end case;
	end process;

end Moore_without_overlap;

