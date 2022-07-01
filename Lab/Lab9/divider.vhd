----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:58 05/26/2022 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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
use ieee.numeric_std.ALL; 
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
	port(
		st, clk: in std_logic;
		divisor: in std_logic_vector(3 downto 0);
		dividend: in std_logic_vector(7 downto 0);
		quotient: out std_logic_vector(3 downto 0);
		remainder: out std_logic_vector(3 downto 0);
		v, ready: out std_logic
	);
end divider;

architecture Behavioral of divider is
	signal divisor_reg: std_logic_vector(4 downto 0);
	signal reg: std_logic_vector(8 downto 0);
	signal state: integer range 0 to 5;
begin
	quotient <= reg(3 downto 0);
	remainder <= reg(7 downto 4);
	ready <= '1' when state = 0 else '0';
	process(clk)
	begin 
		if clk'event and clk = '1' then
			case state is
			when 0 =>
				if st = '1' then
					reg <= '0' & dividend;
					divisor_reg <= '0' & divisor;
					state <= 1;
				end if;
			when 1 =>
				if to_integer(unsigned(reg(8 downto 4))) < to_integer(unsigned(divisor_reg)) then
					reg <= reg(7 downto 0) & '0';
					state <= 2;
				else 
					state <= 0;
					v <= '1';
				end if;
			when 2 =>
				if to_integer(unsigned(reg(8 downto 4))) < to_integer(unsigned(divisor_reg)) then
					reg <= reg(7 downto 0) & '0';
					state <= 3;
				else 
					reg(8 downto 4) <= reg(8 downto 4) - divisor_reg;
					reg(0) <= '1';
				end if;
			when 3 =>
				if to_integer(unsigned(reg(8 downto 4))) < to_integer(unsigned(divisor_reg)) then
					reg <= reg(7 downto 0) & '0';
					state <= 4;
				else 
					reg(8 downto 4) <= reg(8 downto 4) - divisor_reg;
					reg(0) <= '1';
				end if;
			when 4 =>
				if to_integer(unsigned(reg(8 downto 4))) < to_integer(unsigned(divisor_reg)) then
					reg <= reg(7 downto 0) & '0';
					state <= 5;
				else 
					reg(8 downto 4) <= reg(8 downto 4) - divisor_reg;
					reg(0) <= '1';
				end if;
			when 5 =>
				if to_integer(unsigned(reg(8 downto 4))) < to_integer(unsigned(divisor_reg)) then
					state <= 0;
				else 
					reg(8 downto 4) <= reg(8 downto 4) - divisor_reg;
					reg(0) <= '1';
					state <= 0;
				end if;
			end case;
		end if;
	end process;
end Behavioral;