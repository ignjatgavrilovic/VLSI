-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/05/2016 19:45:00"
                                                            
-- Vhdl Test Bench template for design  :  CPU
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_tst IS
END CPU_vhd_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adr_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
signal pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal adr_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT CPU
	PORT (
	adr_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;

component INSTR_CACHE
	port (
		reset : in std_logic;
	
		--rd : in std_logic;
		pc : out std_logic_vector(31 downto 0);
		adr_in : in std_logic_vector(31 downto 0)
	);
end component;

BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	adr_out => adr_out,
	clk => clk,
	reset => reset
	);
	
	i2 : INSTR_CACHE
	port map (
		reset => reset,
		adr_in => adr_in,
		--rd => rd,
		pc => pc
	);
	
	clock: process is
		variable clk_next:std_logic:='1';
   begin
		loop
        clk <= clk_next;
		  clk_next:= not clk_next;
        wait for 3 ns; 
		end loop;  
   end process clock;
	
	rst: process is
	begin
		reset <= '1';
		wait for 6 ns;
		reset <= 'Z';
		wait;
	end process rst;
END CPU_arch;
