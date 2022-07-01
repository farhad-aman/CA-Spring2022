--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:04:03 05/27/2022
-- Design Name:   
-- Module Name:   C:/Users/farhad/Desktop/Lab9/Divider/divider_tb.vhd
-- Project Name:  Divider
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY divider_tb IS
END divider_tb;
 
ARCHITECTURE behavior OF divider_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
    PORT(
         st : IN  std_logic;
         clk : IN  std_logic;
         divisor : IN  std_logic_vector(3 downto 0);
         dividend : IN  std_logic_vector(7 downto 0);
         quotient : OUT  std_logic_vector(3 downto 0);
         remainder : OUT  std_logic_vector(3 downto 0);
         v : OUT  std_logic;
         ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal st : std_logic := '0';
   signal clk : std_logic := '0';
   signal divisor : std_logic_vector(3 downto 0) := (others => '0');
   signal dividend : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal quotient : std_logic_vector(3 downto 0);
   signal remainder : std_logic_vector(3 downto 0);
   signal v : std_logic;
   signal ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider PORT MAP (
          st => st,
          clk => clk,
          divisor => divisor,
          dividend => dividend,
          quotient => quotient,
          remainder => remainder,
          v => v,
          ready => ready
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      dividend <= "10000111";
		divisor <= "1101";
		
		wait for clk_period*10;
		
		st <= '1';

		wait for clk_period*2;
		
		st <= '0';
		
      wait;
   end process;

END;
