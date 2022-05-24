--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:13:51 05/05/2022
-- Design Name:   
-- Module Name:   D:/Programming/ISE Projects/shiftAddMultiplier/Mult8x8_tb.vhd
-- Project Name:  shiftAddMultiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mult8x8
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
 
ENTITY Mult8x8_tb IS
END Mult8x8_tb;
 
ARCHITECTURE behavior OF Mult8x8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mult8x8
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Mult : OUT  std_logic_vector(15 downto 0);
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';

 	--Outputs
   signal Mult : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mult8x8 PORT MAP (
          A => A,
          B => B,
          Mult => Mult,
          Clk => Clk
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
      wait for 10 ns;	
		
		A <= "00110011";
		B <= "00011001";
		-- result must be : 0000010011111011
		wait for 20 ns;
		
		A <= "11000011";
		B <= "01100011";
		-- result must be : 0100101101101001

      -- insert stimulus here 

      wait;
   end process;

END;
