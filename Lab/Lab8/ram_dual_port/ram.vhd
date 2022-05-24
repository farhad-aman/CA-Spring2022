----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:22 05/23/2022 
-- Design Name: 
-- Module Name:    ram - RTL 
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

entity ram is
	port(
		data1: in std_logic_vector(7 downto 0);
		addr1: in std_logic_vector(6 downto 0);
		we1: in std_logic := '1';
		clk1: in std_logic;
		q1: out std_logic_vector(7 downto 0);
		data2: in std_logic_vector(7 downto 0);
		addr2: in std_logic_vector(6 downto 0);
		we2: in std_logic := '1';
		clk2: in std_logic;
		q2: out std_logic_vector(7 downto 0)
	);
end ram;

architecture RTL of ram is
	component single_port_ram is
		port(
			data: in std_logic_vector(7 downto 0);
			addr: in std_logic_vector(6 downto 0);
			we: in std_logic := '1';
			clk: in std_logic;
			q: out std_logic_vector(7 downto 0)
		);
	end component single_port_ram;
begin
	spr1 : single_port_ram port map (data => data1, addr => addr1, we => we1, clk => clk1, q => q1);
	spr2 : single_port_ram port map (data => data2, addr => addr2, we => we2, clk => clk2, q => q2);
end RTL;

