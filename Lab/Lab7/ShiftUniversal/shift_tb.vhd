--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:56:29 05/07/2022
-- Design Name:   
-- Module Name:   D:/Programming/ISE Projects/ShiftUniversal/shift_tb.vhd
-- Project Name:  ShiftUniversal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift
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
 
ENTITY shift_tb IS
END shift_tb;
 
ARCHITECTURE behavior OF shift_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         sr : IN  std_logic;
         sl : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         pi : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal sr : std_logic := '0';
   signal sl : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := (others => '0');
   signal pi : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift PORT MAP (
          reset => reset,
          clk => clk,
          sr => sr,
          sl => sl,
          sel => sel,
          pi => pi,
          output => output
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

		reset <= '1';
		
		sl <= '0';
		sr <= '1';
		
		pi <= "1101";
		sel <= "11";
		wait for 60 ns;
		
		sel <= "10";
		-- result is 1010 and 0100
		wait for 40 ns;
		
		sel <= "00";
		-- holds the result 0100
		wait for 100 ns;
		
		sel <= "01";
		-- shift right first is 1010
		wait for 20 ns;
		
		sr <= '0';
		-- now is 0101
		wait for 20 ns;
		
		sel <= "11";
		pi <= "1111";
		-- now is 1111
		wait for 20 ns;

		sel <= "00";

      wait;
   end process;

END;
