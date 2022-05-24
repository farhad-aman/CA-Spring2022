----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:45 05/23/2022 
-- Design Name: 
-- Module Name:    single_port_ram - RTL 
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

entity single_port_ram is
	port(
		data: in std_logic_vector(7 downto 0);
		addr: in std_logic_vector(6 downto 0);
		we: in std_logic := '1';
		clk: in std_logic;
		q: out std_logic_vector(7 downto 0)
	);
end single_port_ram;

architecture RTL of single_port_ram is
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array (127 downto 0) of word_t;
	signal ram: memory_t;
	signal addr_reg: natural range 0 to 127;
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(we = '1') then
				ram(to_integer(unsigned(addr))) <= data;
			end if;
			addr_reg <= to_integer(unsigned(addr));
		end if;
	end process;
	
	q <= ram(addr_reg);
end RTL;

