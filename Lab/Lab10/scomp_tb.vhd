--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:50:24 06/01/2022
-- Design Name:   
-- Module Name:   D:/Programming/ISE Projects/basic_Computer/scomp_tb.vhd
-- Project Name:  basic_Computer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: scomp
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
 
ENTITY scomp_tb IS
END scomp_tb;
 
ARCHITECTURE behavior OF scomp_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT scomp
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         program_counter_out : OUT  std_logic_vector(7 downto 0);
         register_ac_out : OUT  std_logic_vector(15 downto 0);
         memory_data_register_out : OUT  std_logic_vector(15 downto 0);
         memory_address_register_out : OUT  std_logic_vector(7 downto 0);
         memory_write_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal program_counter_out : std_logic_vector(7 downto 0);
   signal register_ac_out : std_logic_vector(15 downto 0);
   signal memory_data_register_out : std_logic_vector(15 downto 0);
   signal memory_address_register_out : std_logic_vector(7 downto 0);
   signal memory_write_out : std_logic;

   -- Clock period definitions
   constant clock_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: scomp PORT MAP (
          clock => clock,
          reset => reset,
          program_counter_out => program_counter_out,
          register_ac_out => register_ac_out,
          memory_data_register_out => memory_data_register_out,
          memory_address_register_out => memory_address_register_out,
          memory_write_out => memory_write_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 10 ns;
		

		reset <= '0';
		

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
