--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:10:55 05/23/2022
-- Design Name:   
-- Module Name:   C:/Users/farhad/Desktop/Lab8/ram_dual_port/ram_tb.vhd
-- Project Name:  ram_dual_port
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram
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
 
ENTITY ram_tb IS
END ram_tb;
 
ARCHITECTURE behavior OF ram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         data1 : IN  std_logic_vector(7 downto 0);
         addr1 : IN  std_logic_vector(6 downto 0);
         we1 : IN  std_logic;
         clk1 : IN  std_logic;
         q1 : OUT  std_logic_vector(7 downto 0);
         data2 : IN  std_logic_vector(7 downto 0);
         addr2 : IN  std_logic_vector(6 downto 0);
         we2 : IN  std_logic;
         clk2 : IN  std_logic;
         q2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data1 : std_logic_vector(7 downto 0) := (others => '0');
   signal addr1 : std_logic_vector(6 downto 0) := (others => '0');
   signal we1 : std_logic := '0';
   signal clk1 : std_logic := '0';
   signal data2 : std_logic_vector(7 downto 0) := (others => '0');
   signal addr2 : std_logic_vector(6 downto 0) := (others => '0');
   signal we2 : std_logic := '0';
   signal clk2 : std_logic := '0';

 	--Outputs
   signal q1 : std_logic_vector(7 downto 0);
   signal q2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk1_period : time := 10 ns;
   constant clk2_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram PORT MAP (
          data1 => data1,
          addr1 => addr1,
          we1 => we1,
          clk1 => clk1,
          q1 => q1,
          data2 => data2,
          addr2 => addr2,
          we2 => we2,
          clk2 => clk2,
          q2 => q2
        );

   -- Clock process definitions
   clk1_process :process
   begin
		clk1 <= '0';
		wait for clk1_period/2;
		clk1 <= '1';
		wait for clk1_period/2;
   end process;
 
   clk2_process :process
   begin
		clk2 <= '0';
		wait for clk2_period/2;
		clk2 <= '1';
		wait for clk2_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk1_period*10;

      -- insert stimulus here 
		
		data1 <= "11110000";
		addr1 <= "0110010";
		we1 <= '1';
		
		data2 <= "10101010";
		addr2 <= "1111111";
		we2 <= '1'; --write to ram
		
		wait for clk1_period*10;
		
		data1 <= "11111111";
		addr1 <= "0010100";
		
		data2 <= "11001100";
		addr2 <= "0000000";
		
		wait for clk1_period*10;		
		
		we1 <= '0'; --read from ram
		we2 <= '0';
		
		addr1 <= "0110010";
		addr2 <= "1111111";
			
		wait for clk1_period*10;			
			
		addr1 <= "0010100";
		addr2 <= "0000000";

      wait;
   end process;

END;
