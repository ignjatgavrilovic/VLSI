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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/08/2016 22:06:14"

-- 
-- Device: Altera EP2C70F896I8 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ir_in : IN std_logic_vector(31 DOWNTO 0);
	adr_out : OUT std_logic_vector(31 DOWNTO 0);
	rdReg1_ex_reg : OUT std_logic;
	rdReg2_ex_reg : OUT std_logic;
	reg1_no_ex_reg : OUT std_logic_vector(4 DOWNTO 0);
	reg1_data_reg_ex : IN std_logic_vector(31 DOWNTO 0);
	reg2_no_ex_reg : OUT std_logic_vector(4 DOWNTO 0);
	reg2_data_reg_ex : IN std_logic_vector(31 DOWNTO 0);
	rd_mem_datacache : OUT std_logic;
	wr_mem_datacache : OUT std_logic;
	adr_mem_datacache : OUT std_logic_vector(31 DOWNTO 0);
	data_mem_datacache : OUT std_logic_vector(31 DOWNTO 0);
	data_datacache_mem : IN std_logic_vector(31 DOWNTO 0);
	wr_wb_reg : OUT std_logic;
	Reg_wb_reg : OUT std_logic_vector(4 DOWNTO 0);
	data_wb_reg : OUT std_logic_vector(31 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- reset	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[1]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[3]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[4]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[5]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[6]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[7]	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[8]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[9]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[10]	=>  Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_out[0]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[1]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[2]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[3]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[4]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[5]	=>  Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[6]	=>  Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[7]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[8]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[9]	=>  Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[10]	=>  Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[11]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[12]	=>  Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[13]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[14]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[15]	=>  Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[16]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[17]	=>  Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[18]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[19]	=>  Location: PIN_F28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[20]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[21]	=>  Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[22]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[23]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[24]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[25]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[26]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[27]	=>  Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[28]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[29]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[30]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[31]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rdReg1_ex_reg	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rdReg2_ex_reg	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[0]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[1]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[2]	=>  Location: PIN_AG29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[4]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[0]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[1]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[2]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[3]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[4]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_data_reg_ex[0]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[2]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[3]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[4]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[5]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[6]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[7]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[8]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[9]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[10]	=>  Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[11]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[12]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[13]	=>  Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[14]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[15]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[16]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[17]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[18]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[19]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[20]	=>  Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[21]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[22]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[23]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[24]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[25]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[26]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[27]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[28]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[29]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[30]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[31]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rd_mem_datacache	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wr_mem_datacache	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[0]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[1]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[3]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[4]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[5]	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[6]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[7]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[8]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[9]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[10]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[11]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[12]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[13]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[14]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[15]	=>  Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[17]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[18]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[19]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[20]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[21]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[22]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[23]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[24]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[25]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[26]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[27]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[28]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[29]	=>  Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[30]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[31]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[0]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[1]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[3]	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[4]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[5]	=>  Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[6]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[7]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[8]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[9]	=>  Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[10]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[12]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[13]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[14]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[15]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[16]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[17]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[18]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[19]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[20]	=>  Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[21]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[22]	=>  Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[23]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[24]	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[25]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[26]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[27]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[28]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[29]	=>  Location: PIN_AH24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[30]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[31]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wr_wb_reg	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[0]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[1]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[3]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[4]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[5]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[6]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[7]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[9]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[11]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[12]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[13]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[14]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[15]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[16]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[17]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[18]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[19]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[20]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[21]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[22]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[23]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[24]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[25]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[26]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[27]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[28]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[29]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[30]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[31]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[0]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[1]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[2]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[3]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[4]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[5]	=>  Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[6]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[7]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[8]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[9]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[10]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[11]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[12]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[13]	=>  Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[14]	=>  Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[15]	=>  Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[16]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[17]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[18]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[19]	=>  Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[20]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[21]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[22]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[23]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[24]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[25]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[26]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[27]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[28]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[29]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[30]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[31]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[0]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[7]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[9]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[10]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[11]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[12]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[13]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[14]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[15]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[16]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[17]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[18]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[19]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[20]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[21]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[22]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[23]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[24]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[25]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[26]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[27]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[28]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[29]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[30]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[31]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[16]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[17]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[18]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[19]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[20]	=>  Location: PIN_AE30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[11]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[28]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[26]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[27]	=>  Location: PIN_AD28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[29]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[31]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[30]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[12]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[13]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[14]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[15]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[21]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[25]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[24]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[23]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[22]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ir_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_adr_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rdReg1_ex_reg : std_logic;
SIGNAL ww_rdReg2_ex_reg : std_logic;
SIGNAL ww_reg1_no_ex_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_reg1_data_reg_ex : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reg2_no_ex_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_reg2_data_reg_ex : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rd_mem_datacache : std_logic;
SIGNAL ww_wr_mem_datacache : std_logic;
SIGNAL ww_adr_mem_datacache : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_mem_datacache : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_datacache_mem : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wr_wb_reg : std_logic;
SIGNAL ww_Reg_wb_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_data_wb_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_BLOCK|pc[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[11]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[14]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[25]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[26]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[27]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[26]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[14]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[26]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[14]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \IF_BLOCK|pc[0]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[0]~93_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[1]~31_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[1]~32\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[2]~33_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[2]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[2]~34\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[3]~35_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[3]~36\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[4]~37_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[5]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[4]~38\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[5]~39_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[5]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[6]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[5]~40\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[6]~41_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[6]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[7]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[6]~42\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[7]~43_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[7]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[7]~44\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[8]~45_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[8]~46\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[9]~47_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[9]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[10]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[9]~48\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[10]~49_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[10]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[10]~50\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[11]~51_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[11]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[12]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[11]~52\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[12]~53_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[12]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[12]~54\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[13]~55_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[13]~56\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[14]~57_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[14]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[14]~58\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[15]~59_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[15]~60\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[16]~61_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[17]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[16]~62\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[17]~63_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[17]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[17]~64\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[18]~65_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[18]~66\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[19]~67_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[20]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[19]~68\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[20]~69_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[20]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[21]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[20]~70\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[21]~71_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[21]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[22]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[21]~72\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[22]~73_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[22]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[23]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[22]~74\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[23]~75_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[23]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[23]~76\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[24]~77_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[24]~78\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[25]~79_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[25]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[25]~80\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[26]~81_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[26]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[26]~82\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[27]~83_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[27]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[28]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[27]~84\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[28]~85_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[28]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[28]~86\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[29]~87_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[30]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[29]~88\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[30]~89_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[30]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[31]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[30]~90\ : std_logic;
SIGNAL \IF_BLOCK|pc_next[31]~91_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[31]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[0]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[0]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[17]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[17]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[1]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[18]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[2]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[2]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[19]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[19]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[3]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[3]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[20]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[4]~reg0_regout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[11]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[11]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[30]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[30]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[31]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[29]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[29]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[27]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[28]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[28]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Equal20~0_combout\ : std_logic;
SIGNAL \ID_BLOCK|Equal20~1_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[0]~0_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[0]~reg0_regout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[12]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[12]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[1]~1_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[1]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[1]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[2]~2_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[2]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[2]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[3]~3_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[3]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[3]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[15]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[4]~4_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[4]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[4]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[0]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[1]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[2]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[3]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[5]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[6]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[6]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[7]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[7]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[8]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[8]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[9]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[9]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[10]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[10]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[11]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[11]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[12]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[12]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[13]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[13]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[14]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[14]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[15]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[15]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[16]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[16]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[17]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[17]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[18]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[18]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[19]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[19]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[20]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[20]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[21]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[21]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[22]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[22]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[23]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[23]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[24]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[24]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[25]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[25]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[26]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[26]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[27]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[27]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[28]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[28]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[29]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[29]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[30]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[30]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|ALU_out[31]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out[31]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[21]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[21]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[0]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[0]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[24]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[3]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[3]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[22]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[22]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[1]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[1]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[23]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[23]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[2]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[2]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|Equal0~0_combout\ : std_logic;
SIGNAL \WB_BLOCK|Equal0~1_combout\ : std_logic;
SIGNAL \WB_BLOCK|Reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[25]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[4]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[0]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[2]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[3]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[4]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[6]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[8]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[9]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[10]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[12]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[13]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[14]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[15]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[16]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[16]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[17]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[18]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[18]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[19]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[19]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[20]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[20]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[21]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[21]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[22]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[22]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[23]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[24]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[25]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[25]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[26]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[26]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[27]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[27]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[28]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[28]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[29]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[29]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[30]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[30]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[31]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[31]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|adr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM_BLOCK|Reg_pom\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MEM_BLOCK|Reg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MEM_BLOCK|ALU_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \WB_BLOCK|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \WB_BLOCK|Reg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg1_data_reg_ex~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ir_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_datacache_mem~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|ir_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|adr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|Rd_pom\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ID_BLOCK|ir\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|reg2_no_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IF_BLOCK|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|reg1_no_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IF_BLOCK|pc_next\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|Reg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EX_BLOCK|ALU_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ir_in <= ir_in;
adr_out <= ww_adr_out;
rdReg1_ex_reg <= ww_rdReg1_ex_reg;
rdReg2_ex_reg <= ww_rdReg2_ex_reg;
reg1_no_ex_reg <= ww_reg1_no_ex_reg;
ww_reg1_data_reg_ex <= reg1_data_reg_ex;
reg2_no_ex_reg <= ww_reg2_no_ex_reg;
ww_reg2_data_reg_ex <= reg2_data_reg_ex;
rd_mem_datacache <= ww_rd_mem_datacache;
wr_mem_datacache <= ww_wr_mem_datacache;
adr_mem_datacache <= ww_adr_mem_datacache;
data_mem_datacache <= ww_data_mem_datacache;
ww_data_datacache_mem <= data_datacache_mem;
wr_wb_reg <= ww_wr_wb_reg;
Reg_wb_reg <= ww_Reg_wb_reg;
data_wb_reg <= ww_data_wb_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCFF_X90_Y50_N5
\IF_BLOCK|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(1));

-- Location: LCFF_X88_Y50_N3
\IF_BLOCK|pc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(11));

-- Location: LCFF_X88_Y50_N31
\IF_BLOCK|pc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(14));

-- Location: LCFF_X88_Y49_N31
\IF_BLOCK|pc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(25));

-- Location: LCFF_X88_Y49_N9
\IF_BLOCK|pc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(26));

-- Location: LCFF_X88_Y49_N15
\IF_BLOCK|pc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(27));

-- Location: LCFF_X93_Y9_N11
\ID_BLOCK|ir[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(26));

-- Location: LCFF_X93_Y9_N25
\ID_BLOCK|ir[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(14));

-- Location: LCFF_X94_Y9_N3
\IF_BLOCK|ir_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(26));

-- Location: LCFF_X94_Y9_N29
\IF_BLOCK|ir_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(14));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(26),
	combout => \ir_in~combout\(26));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(14),
	combout => \ir_in~combout\(14));

-- Location: LCCOMB_X90_Y50_N4
\IF_BLOCK|pc[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[1]~feeder_combout\ = \IF_BLOCK|pc_next\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(1),
	combout => \IF_BLOCK|pc[1]~feeder_combout\);

-- Location: LCCOMB_X88_Y50_N2
\IF_BLOCK|pc[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[11]~feeder_combout\ = \IF_BLOCK|pc_next\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(11),
	combout => \IF_BLOCK|pc[11]~feeder_combout\);

-- Location: LCCOMB_X88_Y50_N30
\IF_BLOCK|pc[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[14]~feeder_combout\ = \IF_BLOCK|pc_next\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(14),
	combout => \IF_BLOCK|pc[14]~feeder_combout\);

-- Location: LCCOMB_X88_Y49_N30
\IF_BLOCK|pc[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[25]~feeder_combout\ = \IF_BLOCK|pc_next\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(25),
	combout => \IF_BLOCK|pc[25]~feeder_combout\);

-- Location: LCCOMB_X88_Y49_N8
\IF_BLOCK|pc[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[26]~feeder_combout\ = \IF_BLOCK|pc_next\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(26),
	combout => \IF_BLOCK|pc[26]~feeder_combout\);

-- Location: LCCOMB_X88_Y49_N14
\IF_BLOCK|pc[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[27]~feeder_combout\ = \IF_BLOCK|pc_next\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(27),
	combout => \IF_BLOCK|pc[27]~feeder_combout\);

-- Location: LCCOMB_X93_Y9_N10
\ID_BLOCK|ir[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[26]~feeder_combout\ = \IF_BLOCK|ir_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(26),
	combout => \ID_BLOCK|ir[26]~feeder_combout\);

-- Location: LCCOMB_X93_Y9_N24
\ID_BLOCK|ir[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[14]~feeder_combout\ = \IF_BLOCK|ir_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(14),
	combout => \ID_BLOCK|ir[14]~feeder_combout\);

-- Location: LCCOMB_X94_Y9_N2
\IF_BLOCK|ir_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[26]~feeder_combout\ = \ir_in~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(26),
	combout => \IF_BLOCK|ir_out[26]~feeder_combout\);

-- Location: LCCOMB_X94_Y9_N28
\IF_BLOCK|ir_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[14]~feeder_combout\ = \ir_in~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(14),
	combout => \IF_BLOCK|ir_out[14]~feeder_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X89_Y50_N0
\IF_BLOCK|pc[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[0]~feeder_combout\ = \IF_BLOCK|pc_next\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(0),
	combout => \IF_BLOCK|pc[0]~feeder_combout\);

-- Location: LCFF_X89_Y50_N1
\IF_BLOCK|pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(0));

-- Location: LCCOMB_X88_Y50_N14
\IF_BLOCK|pc_next[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[0]~93_combout\ = !\IF_BLOCK|pc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_BLOCK|pc\(0),
	combout => \IF_BLOCK|pc_next[0]~93_combout\);

-- Location: LCFF_X88_Y50_N15
\IF_BLOCK|pc_next[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(0));

-- Location: LCFF_X88_Y50_N9
\IF_BLOCK|adr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(0));

-- Location: LCCOMB_X89_Y50_N2
\IF_BLOCK|pc_next[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[1]~31_combout\ = (\IF_BLOCK|pc\(1) & (\IF_BLOCK|pc\(0) $ (VCC))) # (!\IF_BLOCK|pc\(1) & (\IF_BLOCK|pc\(0) & VCC))
-- \IF_BLOCK|pc_next[1]~32\ = CARRY((\IF_BLOCK|pc\(1) & \IF_BLOCK|pc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(1),
	datab => \IF_BLOCK|pc\(0),
	datad => VCC,
	combout => \IF_BLOCK|pc_next[1]~31_combout\,
	cout => \IF_BLOCK|pc_next[1]~32\);

-- Location: LCFF_X89_Y50_N3
\IF_BLOCK|pc_next[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(1));

-- Location: LCCOMB_X90_Y50_N18
\IF_BLOCK|adr_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[1]~feeder_combout\ = \IF_BLOCK|pc_next\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(1),
	combout => \IF_BLOCK|adr_out[1]~feeder_combout\);

-- Location: LCFF_X90_Y50_N19
\IF_BLOCK|adr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(1));

-- Location: LCFF_X89_Y50_N5
\IF_BLOCK|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(2));

-- Location: LCCOMB_X89_Y50_N4
\IF_BLOCK|pc_next[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[2]~33_combout\ = (\IF_BLOCK|pc\(2) & (!\IF_BLOCK|pc_next[1]~32\)) # (!\IF_BLOCK|pc\(2) & ((\IF_BLOCK|pc_next[1]~32\) # (GND)))
-- \IF_BLOCK|pc_next[2]~34\ = CARRY((!\IF_BLOCK|pc_next[1]~32\) # (!\IF_BLOCK|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(2),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[1]~32\,
	combout => \IF_BLOCK|pc_next[2]~33_combout\,
	cout => \IF_BLOCK|pc_next[2]~34\);

-- Location: LCFF_X90_Y50_N1
\IF_BLOCK|pc_next[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next[2]~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(2));

-- Location: LCCOMB_X90_Y50_N8
\IF_BLOCK|adr_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[2]~feeder_combout\ = \IF_BLOCK|pc_next\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(2),
	combout => \IF_BLOCK|adr_out[2]~feeder_combout\);

-- Location: LCFF_X90_Y50_N9
\IF_BLOCK|adr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(2));

-- Location: LCCOMB_X88_Y50_N4
\IF_BLOCK|pc[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[3]~feeder_combout\ = \IF_BLOCK|pc_next\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(3),
	combout => \IF_BLOCK|pc[3]~feeder_combout\);

-- Location: LCFF_X88_Y50_N5
\IF_BLOCK|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(3));

-- Location: LCCOMB_X89_Y50_N6
\IF_BLOCK|pc_next[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[3]~35_combout\ = (\IF_BLOCK|pc\(3) & (\IF_BLOCK|pc_next[2]~34\ $ (GND))) # (!\IF_BLOCK|pc\(3) & (!\IF_BLOCK|pc_next[2]~34\ & VCC))
-- \IF_BLOCK|pc_next[3]~36\ = CARRY((\IF_BLOCK|pc\(3) & !\IF_BLOCK|pc_next[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(3),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[2]~34\,
	combout => \IF_BLOCK|pc_next[3]~35_combout\,
	cout => \IF_BLOCK|pc_next[3]~36\);

-- Location: LCFF_X89_Y50_N7
\IF_BLOCK|pc_next[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(3));

-- Location: LCCOMB_X88_Y50_N6
\IF_BLOCK|adr_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[3]~feeder_combout\ = \IF_BLOCK|pc_next\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(3),
	combout => \IF_BLOCK|adr_out[3]~feeder_combout\);

-- Location: LCFF_X88_Y50_N7
\IF_BLOCK|adr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(3));

-- Location: LCFF_X88_Y50_N19
\IF_BLOCK|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(4));

-- Location: LCCOMB_X89_Y50_N8
\IF_BLOCK|pc_next[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[4]~37_combout\ = (\IF_BLOCK|pc\(4) & (!\IF_BLOCK|pc_next[3]~36\)) # (!\IF_BLOCK|pc\(4) & ((\IF_BLOCK|pc_next[3]~36\) # (GND)))
-- \IF_BLOCK|pc_next[4]~38\ = CARRY((!\IF_BLOCK|pc_next[3]~36\) # (!\IF_BLOCK|pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(4),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[3]~36\,
	combout => \IF_BLOCK|pc_next[4]~37_combout\,
	cout => \IF_BLOCK|pc_next[4]~38\);

-- Location: LCFF_X89_Y50_N9
\IF_BLOCK|pc_next[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(4));

-- Location: LCFF_X88_Y50_N13
\IF_BLOCK|adr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(4));

-- Location: LCCOMB_X90_Y50_N22
\IF_BLOCK|pc[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[5]~feeder_combout\ = \IF_BLOCK|pc_next\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(5),
	combout => \IF_BLOCK|pc[5]~feeder_combout\);

-- Location: LCFF_X90_Y50_N23
\IF_BLOCK|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(5));

-- Location: LCCOMB_X89_Y50_N10
\IF_BLOCK|pc_next[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[5]~39_combout\ = (\IF_BLOCK|pc\(5) & (\IF_BLOCK|pc_next[4]~38\ $ (GND))) # (!\IF_BLOCK|pc\(5) & (!\IF_BLOCK|pc_next[4]~38\ & VCC))
-- \IF_BLOCK|pc_next[5]~40\ = CARRY((\IF_BLOCK|pc\(5) & !\IF_BLOCK|pc_next[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(5),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[4]~38\,
	combout => \IF_BLOCK|pc_next[5]~39_combout\,
	cout => \IF_BLOCK|pc_next[5]~40\);

-- Location: LCFF_X89_Y50_N11
\IF_BLOCK|pc_next[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(5));

-- Location: LCCOMB_X90_Y50_N10
\IF_BLOCK|adr_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[5]~feeder_combout\ = \IF_BLOCK|pc_next\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(5),
	combout => \IF_BLOCK|adr_out[5]~feeder_combout\);

-- Location: LCFF_X90_Y50_N11
\IF_BLOCK|adr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(5));

-- Location: LCCOMB_X90_Y50_N28
\IF_BLOCK|pc[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[6]~feeder_combout\ = \IF_BLOCK|pc_next\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(6),
	combout => \IF_BLOCK|pc[6]~feeder_combout\);

-- Location: LCFF_X90_Y50_N29
\IF_BLOCK|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(6));

-- Location: LCCOMB_X89_Y50_N12
\IF_BLOCK|pc_next[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[6]~41_combout\ = (\IF_BLOCK|pc\(6) & (!\IF_BLOCK|pc_next[5]~40\)) # (!\IF_BLOCK|pc\(6) & ((\IF_BLOCK|pc_next[5]~40\) # (GND)))
-- \IF_BLOCK|pc_next[6]~42\ = CARRY((!\IF_BLOCK|pc_next[5]~40\) # (!\IF_BLOCK|pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(6),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[5]~40\,
	combout => \IF_BLOCK|pc_next[6]~41_combout\,
	cout => \IF_BLOCK|pc_next[6]~42\);

-- Location: LCFF_X89_Y50_N13
\IF_BLOCK|pc_next[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(6));

-- Location: LCCOMB_X90_Y50_N16
\IF_BLOCK|adr_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[6]~feeder_combout\ = \IF_BLOCK|pc_next\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(6),
	combout => \IF_BLOCK|adr_out[6]~feeder_combout\);

-- Location: LCFF_X90_Y50_N17
\IF_BLOCK|adr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(6));

-- Location: LCCOMB_X90_Y50_N30
\IF_BLOCK|pc[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[7]~feeder_combout\ = \IF_BLOCK|pc_next\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(7),
	combout => \IF_BLOCK|pc[7]~feeder_combout\);

-- Location: LCFF_X90_Y50_N31
\IF_BLOCK|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(7));

-- Location: LCCOMB_X89_Y50_N14
\IF_BLOCK|pc_next[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[7]~43_combout\ = (\IF_BLOCK|pc\(7) & (\IF_BLOCK|pc_next[6]~42\ $ (GND))) # (!\IF_BLOCK|pc\(7) & (!\IF_BLOCK|pc_next[6]~42\ & VCC))
-- \IF_BLOCK|pc_next[7]~44\ = CARRY((\IF_BLOCK|pc\(7) & !\IF_BLOCK|pc_next[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(7),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[6]~42\,
	combout => \IF_BLOCK|pc_next[7]~43_combout\,
	cout => \IF_BLOCK|pc_next[7]~44\);

-- Location: LCFF_X89_Y50_N15
\IF_BLOCK|pc_next[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(7));

-- Location: LCCOMB_X90_Y50_N2
\IF_BLOCK|adr_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[7]~feeder_combout\ = \IF_BLOCK|pc_next\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(7),
	combout => \IF_BLOCK|adr_out[7]~feeder_combout\);

-- Location: LCFF_X90_Y50_N3
\IF_BLOCK|adr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(7));

-- Location: LCFF_X88_Y50_N29
\IF_BLOCK|pc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(8));

-- Location: LCCOMB_X89_Y50_N16
\IF_BLOCK|pc_next[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[8]~45_combout\ = (\IF_BLOCK|pc\(8) & (!\IF_BLOCK|pc_next[7]~44\)) # (!\IF_BLOCK|pc\(8) & ((\IF_BLOCK|pc_next[7]~44\) # (GND)))
-- \IF_BLOCK|pc_next[8]~46\ = CARRY((!\IF_BLOCK|pc_next[7]~44\) # (!\IF_BLOCK|pc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(8),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[7]~44\,
	combout => \IF_BLOCK|pc_next[8]~45_combout\,
	cout => \IF_BLOCK|pc_next[8]~46\);

-- Location: LCFF_X89_Y50_N17
\IF_BLOCK|pc_next[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(8));

-- Location: LCFF_X88_Y50_N11
\IF_BLOCK|adr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(8));

-- Location: LCFF_X88_Y50_N27
\IF_BLOCK|pc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(9));

-- Location: LCCOMB_X89_Y50_N18
\IF_BLOCK|pc_next[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[9]~47_combout\ = (\IF_BLOCK|pc\(9) & (\IF_BLOCK|pc_next[8]~46\ $ (GND))) # (!\IF_BLOCK|pc\(9) & (!\IF_BLOCK|pc_next[8]~46\ & VCC))
-- \IF_BLOCK|pc_next[9]~48\ = CARRY((\IF_BLOCK|pc\(9) & !\IF_BLOCK|pc_next[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(9),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[8]~46\,
	combout => \IF_BLOCK|pc_next[9]~47_combout\,
	cout => \IF_BLOCK|pc_next[9]~48\);

-- Location: LCFF_X89_Y50_N19
\IF_BLOCK|pc_next[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(9));

-- Location: LCCOMB_X86_Y50_N0
\IF_BLOCK|adr_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[9]~feeder_combout\ = \IF_BLOCK|pc_next\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(9),
	combout => \IF_BLOCK|adr_out[9]~feeder_combout\);

-- Location: LCFF_X86_Y50_N1
\IF_BLOCK|adr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(9));

-- Location: LCCOMB_X88_Y50_N24
\IF_BLOCK|pc[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[10]~feeder_combout\ = \IF_BLOCK|pc_next\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(10),
	combout => \IF_BLOCK|pc[10]~feeder_combout\);

-- Location: LCFF_X88_Y50_N25
\IF_BLOCK|pc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(10));

-- Location: LCCOMB_X89_Y50_N20
\IF_BLOCK|pc_next[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[10]~49_combout\ = (\IF_BLOCK|pc\(10) & (!\IF_BLOCK|pc_next[9]~48\)) # (!\IF_BLOCK|pc\(10) & ((\IF_BLOCK|pc_next[9]~48\) # (GND)))
-- \IF_BLOCK|pc_next[10]~50\ = CARRY((!\IF_BLOCK|pc_next[9]~48\) # (!\IF_BLOCK|pc\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(10),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[9]~48\,
	combout => \IF_BLOCK|pc_next[10]~49_combout\,
	cout => \IF_BLOCK|pc_next[10]~50\);

-- Location: LCFF_X89_Y50_N21
\IF_BLOCK|pc_next[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(10));

-- Location: LCCOMB_X88_Y50_N0
\IF_BLOCK|adr_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[10]~feeder_combout\ = \IF_BLOCK|pc_next\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(10),
	combout => \IF_BLOCK|adr_out[10]~feeder_combout\);

-- Location: LCFF_X88_Y50_N1
\IF_BLOCK|adr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(10));

-- Location: LCCOMB_X89_Y50_N22
\IF_BLOCK|pc_next[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[11]~51_combout\ = (\IF_BLOCK|pc\(11) & (\IF_BLOCK|pc_next[10]~50\ $ (GND))) # (!\IF_BLOCK|pc\(11) & (!\IF_BLOCK|pc_next[10]~50\ & VCC))
-- \IF_BLOCK|pc_next[11]~52\ = CARRY((\IF_BLOCK|pc\(11) & !\IF_BLOCK|pc_next[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(11),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[10]~50\,
	combout => \IF_BLOCK|pc_next[11]~51_combout\,
	cout => \IF_BLOCK|pc_next[11]~52\);

-- Location: LCFF_X89_Y50_N23
\IF_BLOCK|pc_next[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(11));

-- Location: LCCOMB_X88_Y50_N22
\IF_BLOCK|adr_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[11]~feeder_combout\ = \IF_BLOCK|pc_next\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(11),
	combout => \IF_BLOCK|adr_out[11]~feeder_combout\);

-- Location: LCFF_X88_Y50_N23
\IF_BLOCK|adr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(11));

-- Location: LCCOMB_X90_Y50_N12
\IF_BLOCK|pc[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[12]~feeder_combout\ = \IF_BLOCK|pc_next\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(12),
	combout => \IF_BLOCK|pc[12]~feeder_combout\);

-- Location: LCFF_X90_Y50_N13
\IF_BLOCK|pc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(12));

-- Location: LCCOMB_X89_Y50_N24
\IF_BLOCK|pc_next[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[12]~53_combout\ = (\IF_BLOCK|pc\(12) & (!\IF_BLOCK|pc_next[11]~52\)) # (!\IF_BLOCK|pc\(12) & ((\IF_BLOCK|pc_next[11]~52\) # (GND)))
-- \IF_BLOCK|pc_next[12]~54\ = CARRY((!\IF_BLOCK|pc_next[11]~52\) # (!\IF_BLOCK|pc\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(12),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[11]~52\,
	combout => \IF_BLOCK|pc_next[12]~53_combout\,
	cout => \IF_BLOCK|pc_next[12]~54\);

-- Location: LCFF_X89_Y50_N25
\IF_BLOCK|pc_next[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(12));

-- Location: LCCOMB_X90_Y50_N20
\IF_BLOCK|adr_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[12]~feeder_combout\ = \IF_BLOCK|pc_next\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(12),
	combout => \IF_BLOCK|adr_out[12]~feeder_combout\);

-- Location: LCFF_X90_Y50_N21
\IF_BLOCK|adr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(12));

-- Location: LCFF_X88_Y50_N17
\IF_BLOCK|pc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(13));

-- Location: LCCOMB_X89_Y50_N26
\IF_BLOCK|pc_next[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[13]~55_combout\ = (\IF_BLOCK|pc\(13) & (\IF_BLOCK|pc_next[12]~54\ $ (GND))) # (!\IF_BLOCK|pc\(13) & (!\IF_BLOCK|pc_next[12]~54\ & VCC))
-- \IF_BLOCK|pc_next[13]~56\ = CARRY((\IF_BLOCK|pc\(13) & !\IF_BLOCK|pc_next[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(13),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[12]~54\,
	combout => \IF_BLOCK|pc_next[13]~55_combout\,
	cout => \IF_BLOCK|pc_next[13]~56\);

-- Location: LCFF_X89_Y50_N27
\IF_BLOCK|pc_next[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(13));

-- Location: LCFF_X88_Y50_N21
\IF_BLOCK|adr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(13));

-- Location: LCCOMB_X89_Y50_N28
\IF_BLOCK|pc_next[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[14]~57_combout\ = (\IF_BLOCK|pc\(14) & (!\IF_BLOCK|pc_next[13]~56\)) # (!\IF_BLOCK|pc\(14) & ((\IF_BLOCK|pc_next[13]~56\) # (GND)))
-- \IF_BLOCK|pc_next[14]~58\ = CARRY((!\IF_BLOCK|pc_next[13]~56\) # (!\IF_BLOCK|pc\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(14),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[13]~56\,
	combout => \IF_BLOCK|pc_next[14]~57_combout\,
	cout => \IF_BLOCK|pc_next[14]~58\);

-- Location: LCFF_X89_Y50_N29
\IF_BLOCK|pc_next[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(14));

-- Location: LCCOMB_X86_Y50_N2
\IF_BLOCK|adr_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[14]~feeder_combout\ = \IF_BLOCK|pc_next\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(14),
	combout => \IF_BLOCK|adr_out[14]~feeder_combout\);

-- Location: LCFF_X86_Y50_N3
\IF_BLOCK|adr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(14));

-- Location: LCFF_X90_Y50_N15
\IF_BLOCK|pc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(15));

-- Location: LCCOMB_X89_Y50_N30
\IF_BLOCK|pc_next[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[15]~59_combout\ = (\IF_BLOCK|pc\(15) & (\IF_BLOCK|pc_next[14]~58\ $ (GND))) # (!\IF_BLOCK|pc\(15) & (!\IF_BLOCK|pc_next[14]~58\ & VCC))
-- \IF_BLOCK|pc_next[15]~60\ = CARRY((\IF_BLOCK|pc\(15) & !\IF_BLOCK|pc_next[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(15),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[14]~58\,
	combout => \IF_BLOCK|pc_next[15]~59_combout\,
	cout => \IF_BLOCK|pc_next[15]~60\);

-- Location: LCFF_X89_Y50_N31
\IF_BLOCK|pc_next[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(15));

-- Location: LCFF_X90_Y50_N7
\IF_BLOCK|adr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(15));

-- Location: LCFF_X90_Y49_N13
\IF_BLOCK|pc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(16));

-- Location: LCCOMB_X89_Y49_N0
\IF_BLOCK|pc_next[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[16]~61_combout\ = (\IF_BLOCK|pc\(16) & (!\IF_BLOCK|pc_next[15]~60\)) # (!\IF_BLOCK|pc\(16) & ((\IF_BLOCK|pc_next[15]~60\) # (GND)))
-- \IF_BLOCK|pc_next[16]~62\ = CARRY((!\IF_BLOCK|pc_next[15]~60\) # (!\IF_BLOCK|pc\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(16),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[15]~60\,
	combout => \IF_BLOCK|pc_next[16]~61_combout\,
	cout => \IF_BLOCK|pc_next[16]~62\);

-- Location: LCFF_X89_Y49_N1
\IF_BLOCK|pc_next[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(16));

-- Location: LCFF_X90_Y49_N5
\IF_BLOCK|adr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(16));

-- Location: LCCOMB_X90_Y49_N30
\IF_BLOCK|pc[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[17]~feeder_combout\ = \IF_BLOCK|pc_next\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(17),
	combout => \IF_BLOCK|pc[17]~feeder_combout\);

-- Location: LCFF_X90_Y49_N31
\IF_BLOCK|pc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(17));

-- Location: LCCOMB_X89_Y49_N2
\IF_BLOCK|pc_next[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[17]~63_combout\ = (\IF_BLOCK|pc\(17) & (\IF_BLOCK|pc_next[16]~62\ $ (GND))) # (!\IF_BLOCK|pc\(17) & (!\IF_BLOCK|pc_next[16]~62\ & VCC))
-- \IF_BLOCK|pc_next[17]~64\ = CARRY((\IF_BLOCK|pc\(17) & !\IF_BLOCK|pc_next[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(17),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[16]~62\,
	combout => \IF_BLOCK|pc_next[17]~63_combout\,
	cout => \IF_BLOCK|pc_next[17]~64\);

-- Location: LCFF_X89_Y49_N3
\IF_BLOCK|pc_next[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(17));

-- Location: LCCOMB_X90_Y49_N22
\IF_BLOCK|adr_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[17]~feeder_combout\ = \IF_BLOCK|pc_next\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(17),
	combout => \IF_BLOCK|adr_out[17]~feeder_combout\);

-- Location: LCFF_X90_Y49_N23
\IF_BLOCK|adr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(17));

-- Location: LCFF_X90_Y49_N1
\IF_BLOCK|pc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(18));

-- Location: LCCOMB_X89_Y49_N4
\IF_BLOCK|pc_next[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[18]~65_combout\ = (\IF_BLOCK|pc\(18) & (!\IF_BLOCK|pc_next[17]~64\)) # (!\IF_BLOCK|pc\(18) & ((\IF_BLOCK|pc_next[17]~64\) # (GND)))
-- \IF_BLOCK|pc_next[18]~66\ = CARRY((!\IF_BLOCK|pc_next[17]~64\) # (!\IF_BLOCK|pc\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(18),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[17]~64\,
	combout => \IF_BLOCK|pc_next[18]~65_combout\,
	cout => \IF_BLOCK|pc_next[18]~66\);

-- Location: LCFF_X89_Y49_N5
\IF_BLOCK|pc_next[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(18));

-- Location: LCFF_X90_Y49_N17
\IF_BLOCK|adr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(18));

-- Location: LCFF_X90_Y49_N15
\IF_BLOCK|pc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(19));

-- Location: LCCOMB_X89_Y49_N6
\IF_BLOCK|pc_next[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[19]~67_combout\ = (\IF_BLOCK|pc\(19) & (\IF_BLOCK|pc_next[18]~66\ $ (GND))) # (!\IF_BLOCK|pc\(19) & (!\IF_BLOCK|pc_next[18]~66\ & VCC))
-- \IF_BLOCK|pc_next[19]~68\ = CARRY((\IF_BLOCK|pc\(19) & !\IF_BLOCK|pc_next[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(19),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[18]~66\,
	combout => \IF_BLOCK|pc_next[19]~67_combout\,
	cout => \IF_BLOCK|pc_next[19]~68\);

-- Location: LCFF_X89_Y49_N7
\IF_BLOCK|pc_next[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(19));

-- Location: LCFF_X90_Y49_N3
\IF_BLOCK|adr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(19));

-- Location: LCCOMB_X90_Y49_N20
\IF_BLOCK|pc[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[20]~feeder_combout\ = \IF_BLOCK|pc_next\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(20),
	combout => \IF_BLOCK|pc[20]~feeder_combout\);

-- Location: LCFF_X90_Y49_N21
\IF_BLOCK|pc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(20));

-- Location: LCCOMB_X89_Y49_N8
\IF_BLOCK|pc_next[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[20]~69_combout\ = (\IF_BLOCK|pc\(20) & (!\IF_BLOCK|pc_next[19]~68\)) # (!\IF_BLOCK|pc\(20) & ((\IF_BLOCK|pc_next[19]~68\) # (GND)))
-- \IF_BLOCK|pc_next[20]~70\ = CARRY((!\IF_BLOCK|pc_next[19]~68\) # (!\IF_BLOCK|pc\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(20),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[19]~68\,
	combout => \IF_BLOCK|pc_next[20]~69_combout\,
	cout => \IF_BLOCK|pc_next[20]~70\);

-- Location: LCFF_X89_Y49_N9
\IF_BLOCK|pc_next[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(20));

-- Location: LCCOMB_X90_Y49_N24
\IF_BLOCK|adr_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[20]~feeder_combout\ = \IF_BLOCK|pc_next\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(20),
	combout => \IF_BLOCK|adr_out[20]~feeder_combout\);

-- Location: LCFF_X90_Y49_N25
\IF_BLOCK|adr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(20));

-- Location: LCCOMB_X90_Y49_N10
\IF_BLOCK|pc[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[21]~feeder_combout\ = \IF_BLOCK|pc_next\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(21),
	combout => \IF_BLOCK|pc[21]~feeder_combout\);

-- Location: LCFF_X90_Y49_N11
\IF_BLOCK|pc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(21));

-- Location: LCCOMB_X89_Y49_N10
\IF_BLOCK|pc_next[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[21]~71_combout\ = (\IF_BLOCK|pc\(21) & (\IF_BLOCK|pc_next[20]~70\ $ (GND))) # (!\IF_BLOCK|pc\(21) & (!\IF_BLOCK|pc_next[20]~70\ & VCC))
-- \IF_BLOCK|pc_next[21]~72\ = CARRY((\IF_BLOCK|pc\(21) & !\IF_BLOCK|pc_next[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(21),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[20]~70\,
	combout => \IF_BLOCK|pc_next[21]~71_combout\,
	cout => \IF_BLOCK|pc_next[21]~72\);

-- Location: LCFF_X89_Y49_N11
\IF_BLOCK|pc_next[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(21));

-- Location: LCCOMB_X90_Y49_N6
\IF_BLOCK|adr_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[21]~feeder_combout\ = \IF_BLOCK|pc_next\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(21),
	combout => \IF_BLOCK|adr_out[21]~feeder_combout\);

-- Location: LCFF_X90_Y49_N7
\IF_BLOCK|adr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(21));

-- Location: LCCOMB_X90_Y49_N28
\IF_BLOCK|pc[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[22]~feeder_combout\ = \IF_BLOCK|pc_next\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(22),
	combout => \IF_BLOCK|pc[22]~feeder_combout\);

-- Location: LCFF_X90_Y49_N29
\IF_BLOCK|pc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(22));

-- Location: LCCOMB_X89_Y49_N12
\IF_BLOCK|pc_next[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[22]~73_combout\ = (\IF_BLOCK|pc\(22) & (!\IF_BLOCK|pc_next[21]~72\)) # (!\IF_BLOCK|pc\(22) & ((\IF_BLOCK|pc_next[21]~72\) # (GND)))
-- \IF_BLOCK|pc_next[22]~74\ = CARRY((!\IF_BLOCK|pc_next[21]~72\) # (!\IF_BLOCK|pc\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(22),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[21]~72\,
	combout => \IF_BLOCK|pc_next[22]~73_combout\,
	cout => \IF_BLOCK|pc_next[22]~74\);

-- Location: LCFF_X89_Y49_N13
\IF_BLOCK|pc_next[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(22));

-- Location: LCCOMB_X90_Y49_N8
\IF_BLOCK|adr_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[22]~feeder_combout\ = \IF_BLOCK|pc_next\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(22),
	combout => \IF_BLOCK|adr_out[22]~feeder_combout\);

-- Location: LCFF_X90_Y49_N9
\IF_BLOCK|adr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(22));

-- Location: LCCOMB_X90_Y49_N18
\IF_BLOCK|pc[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[23]~feeder_combout\ = \IF_BLOCK|pc_next\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(23),
	combout => \IF_BLOCK|pc[23]~feeder_combout\);

-- Location: LCFF_X90_Y49_N19
\IF_BLOCK|pc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(23));

-- Location: LCCOMB_X89_Y49_N14
\IF_BLOCK|pc_next[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[23]~75_combout\ = (\IF_BLOCK|pc\(23) & (\IF_BLOCK|pc_next[22]~74\ $ (GND))) # (!\IF_BLOCK|pc\(23) & (!\IF_BLOCK|pc_next[22]~74\ & VCC))
-- \IF_BLOCK|pc_next[23]~76\ = CARRY((\IF_BLOCK|pc\(23) & !\IF_BLOCK|pc_next[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(23),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[22]~74\,
	combout => \IF_BLOCK|pc_next[23]~75_combout\,
	cout => \IF_BLOCK|pc_next[23]~76\);

-- Location: LCFF_X89_Y49_N15
\IF_BLOCK|pc_next[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(23));

-- Location: LCCOMB_X90_Y49_N26
\IF_BLOCK|adr_out[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[23]~feeder_combout\ = \IF_BLOCK|pc_next\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(23),
	combout => \IF_BLOCK|adr_out[23]~feeder_combout\);

-- Location: LCFF_X90_Y49_N27
\IF_BLOCK|adr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(23));

-- Location: LCFF_X88_Y49_N17
\IF_BLOCK|pc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(24));

-- Location: LCCOMB_X89_Y49_N16
\IF_BLOCK|pc_next[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[24]~77_combout\ = (\IF_BLOCK|pc\(24) & (!\IF_BLOCK|pc_next[23]~76\)) # (!\IF_BLOCK|pc\(24) & ((\IF_BLOCK|pc_next[23]~76\) # (GND)))
-- \IF_BLOCK|pc_next[24]~78\ = CARRY((!\IF_BLOCK|pc_next[23]~76\) # (!\IF_BLOCK|pc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(24),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[23]~76\,
	combout => \IF_BLOCK|pc_next[24]~77_combout\,
	cout => \IF_BLOCK|pc_next[24]~78\);

-- Location: LCFF_X89_Y49_N17
\IF_BLOCK|pc_next[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(24));

-- Location: LCFF_X88_Y49_N13
\IF_BLOCK|adr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(24));

-- Location: LCCOMB_X89_Y49_N18
\IF_BLOCK|pc_next[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[25]~79_combout\ = (\IF_BLOCK|pc\(25) & (\IF_BLOCK|pc_next[24]~78\ $ (GND))) # (!\IF_BLOCK|pc\(25) & (!\IF_BLOCK|pc_next[24]~78\ & VCC))
-- \IF_BLOCK|pc_next[25]~80\ = CARRY((\IF_BLOCK|pc\(25) & !\IF_BLOCK|pc_next[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(25),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[24]~78\,
	combout => \IF_BLOCK|pc_next[25]~79_combout\,
	cout => \IF_BLOCK|pc_next[25]~80\);

-- Location: LCFF_X89_Y49_N19
\IF_BLOCK|pc_next[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(25));

-- Location: LCCOMB_X88_Y49_N2
\IF_BLOCK|adr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[25]~feeder_combout\ = \IF_BLOCK|pc_next\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(25),
	combout => \IF_BLOCK|adr_out[25]~feeder_combout\);

-- Location: LCFF_X88_Y49_N3
\IF_BLOCK|adr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(25));

-- Location: LCCOMB_X89_Y49_N20
\IF_BLOCK|pc_next[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[26]~81_combout\ = (\IF_BLOCK|pc\(26) & (!\IF_BLOCK|pc_next[25]~80\)) # (!\IF_BLOCK|pc\(26) & ((\IF_BLOCK|pc_next[25]~80\) # (GND)))
-- \IF_BLOCK|pc_next[26]~82\ = CARRY((!\IF_BLOCK|pc_next[25]~80\) # (!\IF_BLOCK|pc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(26),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[25]~80\,
	combout => \IF_BLOCK|pc_next[26]~81_combout\,
	cout => \IF_BLOCK|pc_next[26]~82\);

-- Location: LCFF_X89_Y49_N21
\IF_BLOCK|pc_next[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(26));

-- Location: LCCOMB_X88_Y49_N20
\IF_BLOCK|adr_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[26]~feeder_combout\ = \IF_BLOCK|pc_next\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(26),
	combout => \IF_BLOCK|adr_out[26]~feeder_combout\);

-- Location: LCFF_X88_Y49_N21
\IF_BLOCK|adr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(26));

-- Location: LCCOMB_X89_Y49_N22
\IF_BLOCK|pc_next[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[27]~83_combout\ = (\IF_BLOCK|pc\(27) & (\IF_BLOCK|pc_next[26]~82\ $ (GND))) # (!\IF_BLOCK|pc\(27) & (!\IF_BLOCK|pc_next[26]~82\ & VCC))
-- \IF_BLOCK|pc_next[27]~84\ = CARRY((\IF_BLOCK|pc\(27) & !\IF_BLOCK|pc_next[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(27),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[26]~82\,
	combout => \IF_BLOCK|pc_next[27]~83_combout\,
	cout => \IF_BLOCK|pc_next[27]~84\);

-- Location: LCFF_X89_Y49_N23
\IF_BLOCK|pc_next[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(27));

-- Location: LCCOMB_X88_Y49_N18
\IF_BLOCK|adr_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[27]~feeder_combout\ = \IF_BLOCK|pc_next\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(27),
	combout => \IF_BLOCK|adr_out[27]~feeder_combout\);

-- Location: LCFF_X88_Y49_N19
\IF_BLOCK|adr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(27));

-- Location: LCCOMB_X88_Y49_N4
\IF_BLOCK|pc[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[28]~feeder_combout\ = \IF_BLOCK|pc_next\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(28),
	combout => \IF_BLOCK|pc[28]~feeder_combout\);

-- Location: LCFF_X88_Y49_N5
\IF_BLOCK|pc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(28));

-- Location: LCCOMB_X89_Y49_N24
\IF_BLOCK|pc_next[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[28]~85_combout\ = (\IF_BLOCK|pc\(28) & (!\IF_BLOCK|pc_next[27]~84\)) # (!\IF_BLOCK|pc\(28) & ((\IF_BLOCK|pc_next[27]~84\) # (GND)))
-- \IF_BLOCK|pc_next[28]~86\ = CARRY((!\IF_BLOCK|pc_next[27]~84\) # (!\IF_BLOCK|pc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(28),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[27]~84\,
	combout => \IF_BLOCK|pc_next[28]~85_combout\,
	cout => \IF_BLOCK|pc_next[28]~86\);

-- Location: LCFF_X89_Y49_N25
\IF_BLOCK|pc_next[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(28));

-- Location: LCCOMB_X88_Y49_N24
\IF_BLOCK|adr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[28]~feeder_combout\ = \IF_BLOCK|pc_next\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(28),
	combout => \IF_BLOCK|adr_out[28]~feeder_combout\);

-- Location: LCFF_X88_Y49_N25
\IF_BLOCK|adr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(28));

-- Location: LCFF_X88_Y49_N7
\IF_BLOCK|pc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(29));

-- Location: LCCOMB_X89_Y49_N26
\IF_BLOCK|pc_next[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[29]~87_combout\ = (\IF_BLOCK|pc\(29) & (\IF_BLOCK|pc_next[28]~86\ $ (GND))) # (!\IF_BLOCK|pc\(29) & (!\IF_BLOCK|pc_next[28]~86\ & VCC))
-- \IF_BLOCK|pc_next[29]~88\ = CARRY((\IF_BLOCK|pc\(29) & !\IF_BLOCK|pc_next[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(29),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[28]~86\,
	combout => \IF_BLOCK|pc_next[29]~87_combout\,
	cout => \IF_BLOCK|pc_next[29]~88\);

-- Location: LCFF_X89_Y49_N27
\IF_BLOCK|pc_next[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(29));

-- Location: LCFF_X88_Y49_N27
\IF_BLOCK|adr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(29));

-- Location: LCCOMB_X88_Y49_N28
\IF_BLOCK|pc[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[30]~feeder_combout\ = \IF_BLOCK|pc_next\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(30),
	combout => \IF_BLOCK|pc[30]~feeder_combout\);

-- Location: LCFF_X88_Y49_N29
\IF_BLOCK|pc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(30));

-- Location: LCCOMB_X89_Y49_N28
\IF_BLOCK|pc_next[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[30]~89_combout\ = (\IF_BLOCK|pc\(30) & (!\IF_BLOCK|pc_next[29]~88\)) # (!\IF_BLOCK|pc\(30) & ((\IF_BLOCK|pc_next[29]~88\) # (GND)))
-- \IF_BLOCK|pc_next[30]~90\ = CARRY((!\IF_BLOCK|pc_next[29]~88\) # (!\IF_BLOCK|pc\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(30),
	datad => VCC,
	cin => \IF_BLOCK|pc_next[29]~88\,
	combout => \IF_BLOCK|pc_next[30]~89_combout\,
	cout => \IF_BLOCK|pc_next[30]~90\);

-- Location: LCFF_X89_Y49_N29
\IF_BLOCK|pc_next[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(30));

-- Location: LCCOMB_X88_Y49_N0
\IF_BLOCK|adr_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[30]~feeder_combout\ = \IF_BLOCK|pc_next\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(30),
	combout => \IF_BLOCK|adr_out[30]~feeder_combout\);

-- Location: LCFF_X88_Y49_N1
\IF_BLOCK|adr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(30));

-- Location: LCCOMB_X88_Y49_N10
\IF_BLOCK|pc[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[31]~feeder_combout\ = \IF_BLOCK|pc_next\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(31),
	combout => \IF_BLOCK|pc[31]~feeder_combout\);

-- Location: LCFF_X88_Y49_N11
\IF_BLOCK|pc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(31));

-- Location: LCCOMB_X89_Y49_N30
\IF_BLOCK|pc_next[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next[31]~91_combout\ = \IF_BLOCK|pc_next[30]~90\ $ (!\IF_BLOCK|pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(31),
	cin => \IF_BLOCK|pc_next[30]~90\,
	combout => \IF_BLOCK|pc_next[31]~91_combout\);

-- Location: LCFF_X89_Y49_N31
\IF_BLOCK|pc_next[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(31));

-- Location: LCCOMB_X88_Y49_N22
\IF_BLOCK|adr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[31]~feeder_combout\ = \IF_BLOCK|pc_next\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(31),
	combout => \IF_BLOCK|adr_out[31]~feeder_combout\);

-- Location: LCFF_X88_Y49_N23
\IF_BLOCK|adr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(31));

-- Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(16),
	combout => \ir_in~combout\(16));

-- Location: LCFF_X94_Y5_N25
\IF_BLOCK|ir_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(16));

-- Location: LCFF_X94_Y5_N9
\ID_BLOCK|ir[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(16));

-- Location: LCFF_X94_Y5_N29
\ID_BLOCK|Rs1_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|ir\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[0]~reg0_regout\);

-- Location: LCCOMB_X94_Y5_N0
\EX_BLOCK|reg1_no_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg1_no_out[0]~feeder_combout\ = \ID_BLOCK|Rs1_out[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs1_out[0]~reg0_regout\,
	combout => \EX_BLOCK|reg1_no_out[0]~feeder_combout\);

-- Location: LCFF_X94_Y5_N1
\EX_BLOCK|reg1_no_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(0));

-- Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(17),
	combout => \ir_in~combout\(17));

-- Location: LCCOMB_X94_Y5_N30
\IF_BLOCK|ir_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[17]~feeder_combout\ = \ir_in~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(17),
	combout => \IF_BLOCK|ir_out[17]~feeder_combout\);

-- Location: LCFF_X94_Y5_N31
\IF_BLOCK|ir_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(17));

-- Location: LCCOMB_X94_Y5_N26
\ID_BLOCK|ir[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[17]~feeder_combout\ = \IF_BLOCK|ir_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(17),
	combout => \ID_BLOCK|ir[17]~feeder_combout\);

-- Location: LCFF_X94_Y5_N27
\ID_BLOCK|ir[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(17));

-- Location: LCCOMB_X94_Y5_N10
\ID_BLOCK|Rs1_out[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs1_out[1]~reg0feeder_combout\ = \ID_BLOCK|ir\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(17),
	combout => \ID_BLOCK|Rs1_out[1]~reg0feeder_combout\);

-- Location: LCFF_X94_Y5_N11
\ID_BLOCK|Rs1_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[1]~reg0_regout\);

-- Location: LCCOMB_X94_Y5_N14
\EX_BLOCK|reg1_no_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg1_no_out[1]~feeder_combout\ = \ID_BLOCK|Rs1_out[1]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs1_out[1]~reg0_regout\,
	combout => \EX_BLOCK|reg1_no_out[1]~feeder_combout\);

-- Location: LCFF_X94_Y5_N15
\EX_BLOCK|reg1_no_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(1));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(18),
	combout => \ir_in~combout\(18));

-- Location: LCCOMB_X94_Y5_N20
\IF_BLOCK|ir_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[18]~feeder_combout\ = \ir_in~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(18),
	combout => \IF_BLOCK|ir_out[18]~feeder_combout\);

-- Location: LCFF_X94_Y5_N21
\IF_BLOCK|ir_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(18));

-- Location: LCFF_X94_Y5_N17
\ID_BLOCK|ir[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(18));

-- Location: LCFF_X94_Y5_N13
\ID_BLOCK|Rs1_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|ir\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[2]~reg0_regout\);

-- Location: LCCOMB_X94_Y5_N4
\EX_BLOCK|reg1_no_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg1_no_out[2]~feeder_combout\ = \ID_BLOCK|Rs1_out[2]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs1_out[2]~reg0_regout\,
	combout => \EX_BLOCK|reg1_no_out[2]~feeder_combout\);

-- Location: LCFF_X94_Y5_N5
\EX_BLOCK|reg1_no_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(2));

-- Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(19),
	combout => \ir_in~combout\(19));

-- Location: LCCOMB_X94_Y5_N2
\IF_BLOCK|ir_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[19]~feeder_combout\ = \ir_in~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(19),
	combout => \IF_BLOCK|ir_out[19]~feeder_combout\);

-- Location: LCFF_X94_Y5_N3
\IF_BLOCK|ir_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(19));

-- Location: LCCOMB_X94_Y5_N6
\ID_BLOCK|ir[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[19]~feeder_combout\ = \IF_BLOCK|ir_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(19),
	combout => \ID_BLOCK|ir[19]~feeder_combout\);

-- Location: LCFF_X94_Y5_N7
\ID_BLOCK|ir[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(19));

-- Location: LCCOMB_X94_Y5_N18
\ID_BLOCK|Rs1_out[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs1_out[3]~reg0feeder_combout\ = \ID_BLOCK|ir\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(19),
	combout => \ID_BLOCK|Rs1_out[3]~reg0feeder_combout\);

-- Location: LCFF_X94_Y5_N19
\ID_BLOCK|Rs1_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[3]~reg0_regout\);

-- Location: LCCOMB_X94_Y5_N22
\EX_BLOCK|reg1_no_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg1_no_out[3]~feeder_combout\ = \ID_BLOCK|Rs1_out[3]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs1_out[3]~reg0_regout\,
	combout => \EX_BLOCK|reg1_no_out[3]~feeder_combout\);

-- Location: LCFF_X94_Y5_N23
\EX_BLOCK|reg1_no_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(3));

-- Location: PIN_AE30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(20),
	combout => \ir_in~combout\(20));

-- Location: LCFF_X94_Y9_N31
\IF_BLOCK|ir_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(20));

-- Location: LCCOMB_X93_Y9_N2
\ID_BLOCK|ir[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[20]~feeder_combout\ = \IF_BLOCK|ir_out\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(20),
	combout => \ID_BLOCK|ir[20]~feeder_combout\);

-- Location: LCFF_X93_Y9_N3
\ID_BLOCK|ir[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(20));

-- Location: LCCOMB_X94_Y9_N4
\ID_BLOCK|Rs1_out[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs1_out[4]~reg0feeder_combout\ = \ID_BLOCK|ir\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(20),
	combout => \ID_BLOCK|Rs1_out[4]~reg0feeder_combout\);

-- Location: LCFF_X94_Y9_N5
\ID_BLOCK|Rs1_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[4]~reg0_regout\);

-- Location: LCFF_X94_Y9_N9
\EX_BLOCK|reg1_no_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rs1_out[4]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(4));

-- Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(11),
	combout => \ir_in~combout\(11));

-- Location: LCCOMB_X92_Y9_N30
\IF_BLOCK|ir_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[11]~feeder_combout\ = \ir_in~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(11),
	combout => \IF_BLOCK|ir_out[11]~feeder_combout\);

-- Location: LCFF_X92_Y9_N31
\IF_BLOCK|ir_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(11));

-- Location: LCCOMB_X92_Y9_N16
\ID_BLOCK|ir[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[11]~feeder_combout\ = \IF_BLOCK|ir_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(11),
	combout => \ID_BLOCK|ir[11]~feeder_combout\);

-- Location: LCFF_X92_Y9_N17
\ID_BLOCK|ir[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(11));

-- Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(30),
	combout => \ir_in~combout\(30));

-- Location: LCCOMB_X94_Y9_N26
\IF_BLOCK|ir_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[30]~feeder_combout\ = \ir_in~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(30),
	combout => \IF_BLOCK|ir_out[30]~feeder_combout\);

-- Location: LCFF_X94_Y9_N27
\IF_BLOCK|ir_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(30));

-- Location: LCCOMB_X93_Y9_N30
\ID_BLOCK|ir[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[30]~feeder_combout\ = \IF_BLOCK|ir_out\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(30),
	combout => \ID_BLOCK|ir[30]~feeder_combout\);

-- Location: LCFF_X93_Y9_N31
\ID_BLOCK|ir[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(30));

-- Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(31),
	combout => \ir_in~combout\(31));

-- Location: LCCOMB_X94_Y9_N0
\IF_BLOCK|ir_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[31]~feeder_combout\ = \ir_in~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(31),
	combout => \IF_BLOCK|ir_out[31]~feeder_combout\);

-- Location: LCFF_X94_Y9_N1
\IF_BLOCK|ir_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(31));

-- Location: LCFF_X93_Y9_N29
\ID_BLOCK|ir[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(31));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(29),
	combout => \ir_in~combout\(29));

-- Location: LCCOMB_X94_Y9_N6
\IF_BLOCK|ir_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[29]~feeder_combout\ = \ir_in~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(29),
	combout => \IF_BLOCK|ir_out[29]~feeder_combout\);

-- Location: LCFF_X94_Y9_N7
\IF_BLOCK|ir_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(29));

-- Location: LCCOMB_X93_Y9_N6
\ID_BLOCK|ir[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[29]~feeder_combout\ = \IF_BLOCK|ir_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(29),
	combout => \ID_BLOCK|ir[29]~feeder_combout\);

-- Location: LCFF_X93_Y9_N7
\ID_BLOCK|ir[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(29));

-- Location: PIN_AD28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(27),
	combout => \ir_in~combout\(27));

-- Location: LCCOMB_X94_Y9_N12
\IF_BLOCK|ir_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[27]~feeder_combout\ = \ir_in~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(27),
	combout => \IF_BLOCK|ir_out[27]~feeder_combout\);

-- Location: LCFF_X94_Y9_N13
\IF_BLOCK|ir_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(27));

-- Location: LCFF_X93_Y9_N13
\ID_BLOCK|ir[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(27));

-- Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(28),
	combout => \ir_in~combout\(28));

-- Location: LCCOMB_X94_Y9_N20
\IF_BLOCK|ir_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[28]~feeder_combout\ = \ir_in~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(28),
	combout => \IF_BLOCK|ir_out[28]~feeder_combout\);

-- Location: LCFF_X94_Y9_N21
\IF_BLOCK|ir_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(28));

-- Location: LCCOMB_X93_Y9_N0
\ID_BLOCK|ir[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[28]~feeder_combout\ = \IF_BLOCK|ir_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(28),
	combout => \ID_BLOCK|ir[28]~feeder_combout\);

-- Location: LCFF_X93_Y9_N1
\ID_BLOCK|ir[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(28));

-- Location: LCCOMB_X93_Y9_N12
\ID_BLOCK|Equal20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Equal20~0_combout\ = (!\ID_BLOCK|ir\(26) & (!\ID_BLOCK|ir\(29) & (!\ID_BLOCK|ir\(27) & \ID_BLOCK|ir\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(26),
	datab => \ID_BLOCK|ir\(29),
	datac => \ID_BLOCK|ir\(27),
	datad => \ID_BLOCK|ir\(28),
	combout => \ID_BLOCK|Equal20~0_combout\);

-- Location: LCCOMB_X93_Y9_N28
\ID_BLOCK|Equal20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Equal20~1_combout\ = (!\ID_BLOCK|ir\(30) & (\ID_BLOCK|ir\(31) & \ID_BLOCK|Equal20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(30),
	datac => \ID_BLOCK|ir\(31),
	datad => \ID_BLOCK|Equal20~0_combout\,
	combout => \ID_BLOCK|Equal20~1_combout\);

-- Location: LCCOMB_X93_Y9_N8
\ID_BLOCK|Rs2_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[0]~0_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(16)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(11),
	datac => \ID_BLOCK|ir\(16),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[0]~0_combout\);

-- Location: LCFF_X93_Y9_N9
\ID_BLOCK|Rs2_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[0]~reg0_regout\);

-- Location: LCFF_X92_Y9_N1
\EX_BLOCK|reg2_no_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rs2_out[0]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(12),
	combout => \ir_in~combout\(12));

-- Location: LCCOMB_X94_Y9_N24
\IF_BLOCK|ir_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[12]~feeder_combout\ = \ir_in~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(12),
	combout => \IF_BLOCK|ir_out[12]~feeder_combout\);

-- Location: LCFF_X94_Y9_N25
\IF_BLOCK|ir_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(12));

-- Location: LCCOMB_X93_Y9_N4
\ID_BLOCK|ir[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[12]~feeder_combout\ = \IF_BLOCK|ir_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(12),
	combout => \ID_BLOCK|ir[12]~feeder_combout\);

-- Location: LCFF_X93_Y9_N5
\ID_BLOCK|ir[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(12));

-- Location: LCCOMB_X93_Y9_N26
\ID_BLOCK|Rs2_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[1]~1_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(17)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(12),
	datac => \ID_BLOCK|ir\(17),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[1]~1_combout\);

-- Location: LCFF_X93_Y9_N27
\ID_BLOCK|Rs2_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[1]~reg0_regout\);

-- Location: LCCOMB_X94_Y9_N22
\EX_BLOCK|reg2_no_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg2_no_out[1]~feeder_combout\ = \ID_BLOCK|Rs2_out[1]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs2_out[1]~reg0_regout\,
	combout => \EX_BLOCK|reg2_no_out[1]~feeder_combout\);

-- Location: LCFF_X94_Y9_N23
\EX_BLOCK|reg2_no_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(1));

-- Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(13),
	combout => \ir_in~combout\(13));

-- Location: LCFF_X94_Y9_N15
\IF_BLOCK|ir_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(13));

-- Location: LCFF_X93_Y9_N19
\ID_BLOCK|ir[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(13));

-- Location: LCCOMB_X93_Y9_N20
\ID_BLOCK|Rs2_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[2]~2_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(18)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(13),
	datac => \ID_BLOCK|ir\(18),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[2]~2_combout\);

-- Location: LCFF_X93_Y9_N21
\ID_BLOCK|Rs2_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[2]~reg0_regout\);

-- Location: LCCOMB_X92_Y9_N18
\EX_BLOCK|reg2_no_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg2_no_out[2]~feeder_combout\ = \ID_BLOCK|Rs2_out[2]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs2_out[2]~reg0_regout\,
	combout => \EX_BLOCK|reg2_no_out[2]~feeder_combout\);

-- Location: LCFF_X92_Y9_N19
\EX_BLOCK|reg2_no_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(2));

-- Location: LCCOMB_X93_Y9_N22
\ID_BLOCK|Rs2_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[3]~3_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(19)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(14),
	datac => \ID_BLOCK|ir\(19),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[3]~3_combout\);

-- Location: LCFF_X93_Y9_N23
\ID_BLOCK|Rs2_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[3]~reg0_regout\);

-- Location: LCCOMB_X94_Y9_N16
\EX_BLOCK|reg2_no_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg2_no_out[3]~feeder_combout\ = \ID_BLOCK|Rs2_out[3]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs2_out[3]~reg0_regout\,
	combout => \EX_BLOCK|reg2_no_out[3]~feeder_combout\);

-- Location: LCFF_X94_Y9_N17
\EX_BLOCK|reg2_no_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(15),
	combout => \ir_in~combout\(15));

-- Location: LCFF_X94_Y9_N19
\IF_BLOCK|ir_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(15));

-- Location: LCCOMB_X93_Y9_N14
\ID_BLOCK|ir[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[15]~feeder_combout\ = \IF_BLOCK|ir_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(15),
	combout => \ID_BLOCK|ir[15]~feeder_combout\);

-- Location: LCFF_X93_Y9_N15
\ID_BLOCK|ir[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(15));

-- Location: LCCOMB_X93_Y9_N16
\ID_BLOCK|Rs2_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[4]~4_combout\ = (\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(20))) # (!\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(20),
	datac => \ID_BLOCK|ir\(15),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[4]~4_combout\);

-- Location: LCFF_X93_Y9_N17
\ID_BLOCK|Rs2_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[4]~reg0_regout\);

-- Location: LCCOMB_X94_Y9_N10
\EX_BLOCK|reg2_no_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg2_no_out[4]~feeder_combout\ = \ID_BLOCK|Rs2_out[4]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs2_out[4]~reg0_regout\,
	combout => \EX_BLOCK|reg2_no_out[4]~feeder_combout\);

-- Location: LCFF_X94_Y9_N11
\EX_BLOCK|reg2_no_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(4));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(0),
	combout => \reg1_data_reg_ex~combout\(0));

-- Location: LCCOMB_X1_Y50_N30
\EX_BLOCK|ALU_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[0]~feeder_combout\ = \reg1_data_reg_ex~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(0),
	combout => \EX_BLOCK|ALU_out[0]~feeder_combout\);

-- Location: LCFF_X1_Y50_N31
\EX_BLOCK|ALU_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(0));

-- Location: LCCOMB_X1_Y50_N20
\MEM_BLOCK|adr_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[0]~feeder_combout\ = \EX_BLOCK|ALU_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(0),
	combout => \MEM_BLOCK|adr_out[0]~feeder_combout\);

-- Location: LCFF_X1_Y50_N21
\MEM_BLOCK|adr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(0));

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(1),
	combout => \reg1_data_reg_ex~combout\(1));

-- Location: LCCOMB_X47_Y1_N30
\EX_BLOCK|ALU_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[1]~feeder_combout\ = \reg1_data_reg_ex~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(1),
	combout => \EX_BLOCK|ALU_out[1]~feeder_combout\);

-- Location: LCFF_X47_Y1_N31
\EX_BLOCK|ALU_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(1));

-- Location: LCCOMB_X47_Y1_N8
\MEM_BLOCK|adr_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[1]~feeder_combout\ = \EX_BLOCK|ALU_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(1),
	combout => \MEM_BLOCK|adr_out[1]~feeder_combout\);

-- Location: LCFF_X47_Y1_N9
\MEM_BLOCK|adr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(1));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(2),
	combout => \reg1_data_reg_ex~combout\(2));

-- Location: LCCOMB_X31_Y1_N30
\EX_BLOCK|ALU_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[2]~feeder_combout\ = \reg1_data_reg_ex~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(2),
	combout => \EX_BLOCK|ALU_out[2]~feeder_combout\);

-- Location: LCFF_X31_Y1_N31
\EX_BLOCK|ALU_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(2));

-- Location: LCCOMB_X31_Y1_N16
\MEM_BLOCK|adr_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[2]~feeder_combout\ = \EX_BLOCK|ALU_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(2),
	combout => \MEM_BLOCK|adr_out[2]~feeder_combout\);

-- Location: LCFF_X31_Y1_N17
\MEM_BLOCK|adr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(2));

-- Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(3),
	combout => \reg1_data_reg_ex~combout\(3));

-- Location: LCCOMB_X7_Y1_N30
\EX_BLOCK|ALU_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[3]~feeder_combout\ = \reg1_data_reg_ex~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(3),
	combout => \EX_BLOCK|ALU_out[3]~feeder_combout\);

-- Location: LCFF_X7_Y1_N31
\EX_BLOCK|ALU_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(3));

-- Location: LCCOMB_X7_Y1_N16
\MEM_BLOCK|adr_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[3]~feeder_combout\ = \EX_BLOCK|ALU_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(3),
	combout => \MEM_BLOCK|adr_out[3]~feeder_combout\);

-- Location: LCFF_X7_Y1_N17
\MEM_BLOCK|adr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(3));

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(4),
	combout => \reg1_data_reg_ex~combout\(4));

-- Location: LCCOMB_X29_Y1_N30
\EX_BLOCK|ALU_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[4]~feeder_combout\ = \reg1_data_reg_ex~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(4),
	combout => \EX_BLOCK|ALU_out[4]~feeder_combout\);

-- Location: LCFF_X29_Y1_N31
\EX_BLOCK|ALU_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(4));

-- Location: LCCOMB_X29_Y1_N12
\MEM_BLOCK|adr_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[4]~feeder_combout\ = \EX_BLOCK|ALU_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(4),
	combout => \MEM_BLOCK|adr_out[4]~feeder_combout\);

-- Location: LCFF_X29_Y1_N13
\MEM_BLOCK|adr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(4));

-- Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(5),
	combout => \reg1_data_reg_ex~combout\(5));

-- Location: LCFF_X4_Y1_N31
\EX_BLOCK|ALU_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \reg1_data_reg_ex~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(5));

-- Location: LCCOMB_X4_Y1_N0
\MEM_BLOCK|adr_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[5]~feeder_combout\ = \EX_BLOCK|ALU_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(5),
	combout => \MEM_BLOCK|adr_out[5]~feeder_combout\);

-- Location: LCFF_X4_Y1_N1
\MEM_BLOCK|adr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(5));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(6),
	combout => \reg1_data_reg_ex~combout\(6));

-- Location: LCCOMB_X1_Y36_N30
\EX_BLOCK|ALU_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[6]~feeder_combout\ = \reg1_data_reg_ex~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(6),
	combout => \EX_BLOCK|ALU_out[6]~feeder_combout\);

-- Location: LCFF_X1_Y36_N31
\EX_BLOCK|ALU_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(6));

-- Location: LCCOMB_X1_Y36_N28
\MEM_BLOCK|adr_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[6]~feeder_combout\ = \EX_BLOCK|ALU_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(6),
	combout => \MEM_BLOCK|adr_out[6]~feeder_combout\);

-- Location: LCFF_X1_Y36_N29
\MEM_BLOCK|adr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(6));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(7),
	combout => \reg1_data_reg_ex~combout\(7));

-- Location: LCCOMB_X2_Y2_N30
\EX_BLOCK|ALU_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[7]~feeder_combout\ = \reg1_data_reg_ex~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(7),
	combout => \EX_BLOCK|ALU_out[7]~feeder_combout\);

-- Location: LCFF_X2_Y2_N31
\EX_BLOCK|ALU_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(7));

-- Location: LCCOMB_X2_Y2_N20
\MEM_BLOCK|adr_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[7]~feeder_combout\ = \EX_BLOCK|ALU_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(7),
	combout => \MEM_BLOCK|adr_out[7]~feeder_combout\);

-- Location: LCFF_X2_Y2_N21
\MEM_BLOCK|adr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(7));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(8),
	combout => \reg1_data_reg_ex~combout\(8));

-- Location: LCCOMB_X1_Y12_N30
\EX_BLOCK|ALU_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[8]~feeder_combout\ = \reg1_data_reg_ex~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(8),
	combout => \EX_BLOCK|ALU_out[8]~feeder_combout\);

-- Location: LCFF_X1_Y12_N31
\EX_BLOCK|ALU_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(8));

-- Location: LCCOMB_X1_Y12_N12
\MEM_BLOCK|adr_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[8]~feeder_combout\ = \EX_BLOCK|ALU_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(8),
	combout => \MEM_BLOCK|adr_out[8]~feeder_combout\);

-- Location: LCFF_X1_Y12_N13
\MEM_BLOCK|adr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(8));

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(9),
	combout => \reg1_data_reg_ex~combout\(9));

-- Location: LCCOMB_X20_Y1_N30
\EX_BLOCK|ALU_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[9]~feeder_combout\ = \reg1_data_reg_ex~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(9),
	combout => \EX_BLOCK|ALU_out[9]~feeder_combout\);

-- Location: LCFF_X20_Y1_N31
\EX_BLOCK|ALU_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(9));

-- Location: LCCOMB_X20_Y1_N16
\MEM_BLOCK|adr_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[9]~feeder_combout\ = \EX_BLOCK|ALU_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(9),
	combout => \MEM_BLOCK|adr_out[9]~feeder_combout\);

-- Location: LCFF_X20_Y1_N17
\MEM_BLOCK|adr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(9));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(10),
	combout => \reg1_data_reg_ex~combout\(10));

-- Location: LCCOMB_X94_Y42_N30
\EX_BLOCK|ALU_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[10]~feeder_combout\ = \reg1_data_reg_ex~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(10),
	combout => \EX_BLOCK|ALU_out[10]~feeder_combout\);

-- Location: LCFF_X94_Y42_N31
\EX_BLOCK|ALU_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(10));

-- Location: LCCOMB_X94_Y42_N0
\MEM_BLOCK|adr_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[10]~feeder_combout\ = \EX_BLOCK|ALU_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(10),
	combout => \MEM_BLOCK|adr_out[10]~feeder_combout\);

-- Location: LCFF_X94_Y42_N1
\MEM_BLOCK|adr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(10));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(11),
	combout => \reg1_data_reg_ex~combout\(11));

-- Location: LCCOMB_X1_Y16_N30
\EX_BLOCK|ALU_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[11]~feeder_combout\ = \reg1_data_reg_ex~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(11),
	combout => \EX_BLOCK|ALU_out[11]~feeder_combout\);

-- Location: LCFF_X1_Y16_N31
\EX_BLOCK|ALU_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(11));

-- Location: LCCOMB_X1_Y16_N28
\MEM_BLOCK|adr_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[11]~feeder_combout\ = \EX_BLOCK|ALU_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(11),
	combout => \MEM_BLOCK|adr_out[11]~feeder_combout\);

-- Location: LCFF_X1_Y16_N29
\MEM_BLOCK|adr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(11));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(12),
	combout => \reg1_data_reg_ex~combout\(12));

-- Location: LCCOMB_X19_Y1_N30
\EX_BLOCK|ALU_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[12]~feeder_combout\ = \reg1_data_reg_ex~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(12),
	combout => \EX_BLOCK|ALU_out[12]~feeder_combout\);

-- Location: LCFF_X19_Y1_N31
\EX_BLOCK|ALU_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(12));

-- Location: LCCOMB_X19_Y1_N16
\MEM_BLOCK|adr_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[12]~feeder_combout\ = \EX_BLOCK|ALU_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(12),
	combout => \MEM_BLOCK|adr_out[12]~feeder_combout\);

-- Location: LCFF_X19_Y1_N17
\MEM_BLOCK|adr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(12));

-- Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(13),
	combout => \reg1_data_reg_ex~combout\(13));

-- Location: LCCOMB_X3_Y1_N30
\EX_BLOCK|ALU_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[13]~feeder_combout\ = \reg1_data_reg_ex~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(13),
	combout => \EX_BLOCK|ALU_out[13]~feeder_combout\);

-- Location: LCFF_X3_Y1_N31
\EX_BLOCK|ALU_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(13));

-- Location: LCCOMB_X3_Y1_N20
\MEM_BLOCK|adr_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[13]~feeder_combout\ = \EX_BLOCK|ALU_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(13),
	combout => \MEM_BLOCK|adr_out[13]~feeder_combout\);

-- Location: LCFF_X3_Y1_N21
\MEM_BLOCK|adr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(13));

-- Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(14),
	combout => \reg1_data_reg_ex~combout\(14));

-- Location: LCCOMB_X2_Y1_N30
\EX_BLOCK|ALU_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[14]~feeder_combout\ = \reg1_data_reg_ex~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(14),
	combout => \EX_BLOCK|ALU_out[14]~feeder_combout\);

-- Location: LCFF_X2_Y1_N31
\EX_BLOCK|ALU_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(14));

-- Location: LCCOMB_X2_Y1_N12
\MEM_BLOCK|adr_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[14]~feeder_combout\ = \EX_BLOCK|ALU_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(14),
	combout => \MEM_BLOCK|adr_out[14]~feeder_combout\);

-- Location: LCFF_X2_Y1_N13
\MEM_BLOCK|adr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(14));

-- Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(15),
	combout => \reg1_data_reg_ex~combout\(15));

-- Location: LCCOMB_X94_Y24_N30
\EX_BLOCK|ALU_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[15]~feeder_combout\ = \reg1_data_reg_ex~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(15),
	combout => \EX_BLOCK|ALU_out[15]~feeder_combout\);

-- Location: LCFF_X94_Y24_N31
\EX_BLOCK|ALU_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(15));

-- Location: LCCOMB_X94_Y24_N0
\MEM_BLOCK|adr_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[15]~feeder_combout\ = \EX_BLOCK|ALU_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(15),
	combout => \MEM_BLOCK|adr_out[15]~feeder_combout\);

-- Location: LCFF_X94_Y24_N1
\MEM_BLOCK|adr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(15));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(16),
	combout => \reg1_data_reg_ex~combout\(16));

-- Location: LCCOMB_X1_Y9_N30
\EX_BLOCK|ALU_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[16]~feeder_combout\ = \reg1_data_reg_ex~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(16),
	combout => \EX_BLOCK|ALU_out[16]~feeder_combout\);

-- Location: LCFF_X1_Y9_N31
\EX_BLOCK|ALU_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(16));

-- Location: LCCOMB_X1_Y9_N28
\MEM_BLOCK|adr_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[16]~feeder_combout\ = \EX_BLOCK|ALU_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(16),
	combout => \MEM_BLOCK|adr_out[16]~feeder_combout\);

-- Location: LCFF_X1_Y9_N29
\MEM_BLOCK|adr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(16));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(17),
	combout => \reg1_data_reg_ex~combout\(17));

-- Location: LCCOMB_X1_Y44_N30
\EX_BLOCK|ALU_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[17]~feeder_combout\ = \reg1_data_reg_ex~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(17),
	combout => \EX_BLOCK|ALU_out[17]~feeder_combout\);

-- Location: LCFF_X1_Y44_N31
\EX_BLOCK|ALU_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(17));

-- Location: LCCOMB_X1_Y44_N28
\MEM_BLOCK|adr_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[17]~feeder_combout\ = \EX_BLOCK|ALU_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(17),
	combout => \MEM_BLOCK|adr_out[17]~feeder_combout\);

-- Location: LCFF_X1_Y44_N29
\MEM_BLOCK|adr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(17));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(18),
	combout => \reg1_data_reg_ex~combout\(18));

-- Location: LCCOMB_X1_Y33_N30
\EX_BLOCK|ALU_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[18]~feeder_combout\ = \reg1_data_reg_ex~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(18),
	combout => \EX_BLOCK|ALU_out[18]~feeder_combout\);

-- Location: LCFF_X1_Y33_N31
\EX_BLOCK|ALU_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(18));

-- Location: LCCOMB_X1_Y33_N28
\MEM_BLOCK|adr_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[18]~feeder_combout\ = \EX_BLOCK|ALU_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(18),
	combout => \MEM_BLOCK|adr_out[18]~feeder_combout\);

-- Location: LCFF_X1_Y33_N29
\MEM_BLOCK|adr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(18));

-- Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(19),
	combout => \reg1_data_reg_ex~combout\(19));

-- Location: LCCOMB_X9_Y1_N30
\EX_BLOCK|ALU_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[19]~feeder_combout\ = \reg1_data_reg_ex~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(19),
	combout => \EX_BLOCK|ALU_out[19]~feeder_combout\);

-- Location: LCFF_X9_Y1_N31
\EX_BLOCK|ALU_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(19));

-- Location: LCCOMB_X9_Y1_N16
\MEM_BLOCK|adr_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[19]~feeder_combout\ = \EX_BLOCK|ALU_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(19),
	combout => \MEM_BLOCK|adr_out[19]~feeder_combout\);

-- Location: LCFF_X9_Y1_N17
\MEM_BLOCK|adr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(19));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(20),
	combout => \reg1_data_reg_ex~combout\(20));

-- Location: LCCOMB_X53_Y1_N30
\EX_BLOCK|ALU_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[20]~feeder_combout\ = \reg1_data_reg_ex~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(20),
	combout => \EX_BLOCK|ALU_out[20]~feeder_combout\);

-- Location: LCFF_X53_Y1_N31
\EX_BLOCK|ALU_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(20));

-- Location: LCCOMB_X53_Y1_N16
\MEM_BLOCK|adr_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[20]~feeder_combout\ = \EX_BLOCK|ALU_out\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(20),
	combout => \MEM_BLOCK|adr_out[20]~feeder_combout\);

-- Location: LCFF_X53_Y1_N17
\MEM_BLOCK|adr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(20));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(21),
	combout => \reg1_data_reg_ex~combout\(21));

-- Location: LCCOMB_X1_Y10_N30
\EX_BLOCK|ALU_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[21]~feeder_combout\ = \reg1_data_reg_ex~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(21),
	combout => \EX_BLOCK|ALU_out[21]~feeder_combout\);

-- Location: LCFF_X1_Y10_N31
\EX_BLOCK|ALU_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(21));

-- Location: LCCOMB_X1_Y10_N28
\MEM_BLOCK|adr_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[21]~feeder_combout\ = \EX_BLOCK|ALU_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(21),
	combout => \MEM_BLOCK|adr_out[21]~feeder_combout\);

-- Location: LCFF_X1_Y10_N29
\MEM_BLOCK|adr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(21));

-- Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(22),
	combout => \reg1_data_reg_ex~combout\(22));

-- Location: LCCOMB_X1_Y8_N30
\EX_BLOCK|ALU_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[22]~feeder_combout\ = \reg1_data_reg_ex~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(22),
	combout => \EX_BLOCK|ALU_out[22]~feeder_combout\);

-- Location: LCFF_X1_Y8_N31
\EX_BLOCK|ALU_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(22));

-- Location: LCCOMB_X1_Y8_N28
\MEM_BLOCK|adr_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[22]~feeder_combout\ = \EX_BLOCK|ALU_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(22),
	combout => \MEM_BLOCK|adr_out[22]~feeder_combout\);

-- Location: LCFF_X1_Y8_N29
\MEM_BLOCK|adr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(22));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(23),
	combout => \reg1_data_reg_ex~combout\(23));

-- Location: LCCOMB_X1_Y15_N30
\EX_BLOCK|ALU_out[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[23]~feeder_combout\ = \reg1_data_reg_ex~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(23),
	combout => \EX_BLOCK|ALU_out[23]~feeder_combout\);

-- Location: LCFF_X1_Y15_N31
\EX_BLOCK|ALU_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(23));

-- Location: LCCOMB_X1_Y15_N28
\MEM_BLOCK|adr_out[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[23]~feeder_combout\ = \EX_BLOCK|ALU_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(23),
	combout => \MEM_BLOCK|adr_out[23]~feeder_combout\);

-- Location: LCFF_X1_Y15_N29
\MEM_BLOCK|adr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(23));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(24),
	combout => \reg1_data_reg_ex~combout\(24));

-- Location: LCCOMB_X1_Y2_N30
\EX_BLOCK|ALU_out[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[24]~feeder_combout\ = \reg1_data_reg_ex~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(24),
	combout => \EX_BLOCK|ALU_out[24]~feeder_combout\);

-- Location: LCFF_X1_Y2_N31
\EX_BLOCK|ALU_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(24));

-- Location: LCCOMB_X1_Y2_N28
\MEM_BLOCK|adr_out[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[24]~feeder_combout\ = \EX_BLOCK|ALU_out\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(24),
	combout => \MEM_BLOCK|adr_out[24]~feeder_combout\);

-- Location: LCFF_X1_Y2_N29
\MEM_BLOCK|adr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(24));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(25),
	combout => \reg1_data_reg_ex~combout\(25));

-- Location: LCCOMB_X1_Y3_N30
\EX_BLOCK|ALU_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[25]~feeder_combout\ = \reg1_data_reg_ex~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(25),
	combout => \EX_BLOCK|ALU_out[25]~feeder_combout\);

-- Location: LCFF_X1_Y3_N31
\EX_BLOCK|ALU_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(25));

-- Location: LCCOMB_X1_Y3_N28
\MEM_BLOCK|adr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[25]~feeder_combout\ = \EX_BLOCK|ALU_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(25),
	combout => \MEM_BLOCK|adr_out[25]~feeder_combout\);

-- Location: LCFF_X1_Y3_N29
\MEM_BLOCK|adr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(25));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(26),
	combout => \reg1_data_reg_ex~combout\(26));

-- Location: LCCOMB_X38_Y1_N30
\EX_BLOCK|ALU_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[26]~feeder_combout\ = \reg1_data_reg_ex~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(26),
	combout => \EX_BLOCK|ALU_out[26]~feeder_combout\);

-- Location: LCFF_X38_Y1_N31
\EX_BLOCK|ALU_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(26));

-- Location: LCCOMB_X38_Y1_N8
\MEM_BLOCK|adr_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[26]~feeder_combout\ = \EX_BLOCK|ALU_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(26),
	combout => \MEM_BLOCK|adr_out[26]~feeder_combout\);

-- Location: LCFF_X38_Y1_N9
\MEM_BLOCK|adr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(26));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(27),
	combout => \reg1_data_reg_ex~combout\(27));

-- Location: LCCOMB_X1_Y38_N30
\EX_BLOCK|ALU_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[27]~feeder_combout\ = \reg1_data_reg_ex~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(27),
	combout => \EX_BLOCK|ALU_out[27]~feeder_combout\);

-- Location: LCFF_X1_Y38_N31
\EX_BLOCK|ALU_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(27));

-- Location: LCCOMB_X1_Y38_N12
\MEM_BLOCK|adr_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[27]~feeder_combout\ = \EX_BLOCK|ALU_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(27),
	combout => \MEM_BLOCK|adr_out[27]~feeder_combout\);

-- Location: LCFF_X1_Y38_N13
\MEM_BLOCK|adr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(27));

-- Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(28),
	combout => \reg1_data_reg_ex~combout\(28));

-- Location: LCCOMB_X3_Y3_N30
\EX_BLOCK|ALU_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[28]~feeder_combout\ = \reg1_data_reg_ex~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(28),
	combout => \EX_BLOCK|ALU_out[28]~feeder_combout\);

-- Location: LCFF_X3_Y3_N31
\EX_BLOCK|ALU_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(28));

-- Location: LCCOMB_X3_Y3_N0
\MEM_BLOCK|adr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[28]~feeder_combout\ = \EX_BLOCK|ALU_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(28),
	combout => \MEM_BLOCK|adr_out[28]~feeder_combout\);

-- Location: LCFF_X3_Y3_N1
\MEM_BLOCK|adr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(28));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(29),
	combout => \reg1_data_reg_ex~combout\(29));

-- Location: LCCOMB_X5_Y1_N30
\EX_BLOCK|ALU_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[29]~feeder_combout\ = \reg1_data_reg_ex~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(29),
	combout => \EX_BLOCK|ALU_out[29]~feeder_combout\);

-- Location: LCFF_X5_Y1_N31
\EX_BLOCK|ALU_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(29));

-- Location: LCCOMB_X5_Y1_N16
\MEM_BLOCK|adr_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[29]~feeder_combout\ = \EX_BLOCK|ALU_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(29),
	combout => \MEM_BLOCK|adr_out[29]~feeder_combout\);

-- Location: LCFF_X5_Y1_N17
\MEM_BLOCK|adr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(29));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(30),
	combout => \reg1_data_reg_ex~combout\(30));

-- Location: LCCOMB_X2_Y3_N30
\EX_BLOCK|ALU_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[30]~feeder_combout\ = \reg1_data_reg_ex~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(30),
	combout => \EX_BLOCK|ALU_out[30]~feeder_combout\);

-- Location: LCFF_X2_Y3_N31
\EX_BLOCK|ALU_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(30));

-- Location: LCCOMB_X2_Y3_N16
\MEM_BLOCK|adr_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[30]~feeder_combout\ = \EX_BLOCK|ALU_out\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(30),
	combout => \MEM_BLOCK|adr_out[30]~feeder_combout\);

-- Location: LCFF_X2_Y3_N17
\MEM_BLOCK|adr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(30));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg1_data_reg_ex[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg1_data_reg_ex(31),
	combout => \reg1_data_reg_ex~combout\(31));

-- Location: LCCOMB_X1_Y1_N30
\EX_BLOCK|ALU_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[31]~feeder_combout\ = \reg1_data_reg_ex~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(31),
	combout => \EX_BLOCK|ALU_out[31]~feeder_combout\);

-- Location: LCFF_X1_Y1_N31
\EX_BLOCK|ALU_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(31));

-- Location: LCCOMB_X1_Y1_N8
\MEM_BLOCK|adr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|adr_out[31]~feeder_combout\ = \EX_BLOCK|ALU_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|ALU_out\(31),
	combout => \MEM_BLOCK|adr_out[31]~feeder_combout\);

-- Location: LCFF_X1_Y1_N9
\MEM_BLOCK|adr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(31));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(21),
	combout => \ir_in~combout\(21));

-- Location: LCCOMB_X29_Y50_N0
\IF_BLOCK|ir_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[21]~feeder_combout\ = \ir_in~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(21),
	combout => \IF_BLOCK|ir_out[21]~feeder_combout\);

-- Location: LCFF_X29_Y50_N1
\IF_BLOCK|ir_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(21));

-- Location: LCCOMB_X29_Y50_N8
\ID_BLOCK|ir[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[21]~feeder_combout\ = \IF_BLOCK|ir_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(21),
	combout => \ID_BLOCK|ir[21]~feeder_combout\);

-- Location: LCFF_X29_Y50_N9
\ID_BLOCK|ir[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(21));

-- Location: LCFF_X29_Y50_N29
\ID_BLOCK|Rd_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|ir\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[0]~reg0_regout\);

-- Location: LCCOMB_X29_Y50_N22
\EX_BLOCK|Rd_pom[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Rd_pom[0]~feeder_combout\ = \ID_BLOCK|Rd_out[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rd_out[0]~reg0_regout\,
	combout => \EX_BLOCK|Rd_pom[0]~feeder_combout\);

-- Location: LCFF_X29_Y50_N23
\EX_BLOCK|Rd_pom[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(0));

-- Location: LCCOMB_X29_Y50_N16
\EX_BLOCK|Reg_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Reg_out[0]~feeder_combout\ = \EX_BLOCK|Rd_pom\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Rd_pom\(0),
	combout => \EX_BLOCK|Reg_out[0]~feeder_combout\);

-- Location: LCFF_X29_Y50_N17
\EX_BLOCK|Reg_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(0));

-- Location: LCCOMB_X30_Y50_N26
\MEM_BLOCK|Reg_pom[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_pom[0]~feeder_combout\ = \EX_BLOCK|Reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Reg_out\(0),
	combout => \MEM_BLOCK|Reg_pom[0]~feeder_combout\);

-- Location: LCFF_X30_Y50_N27
\MEM_BLOCK|Reg_pom[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(0));

-- Location: LCCOMB_X31_Y50_N20
\MEM_BLOCK|Reg_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_out[0]~feeder_combout\ = \MEM_BLOCK|Reg_pom\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_pom\(0),
	combout => \MEM_BLOCK|Reg_out[0]~feeder_combout\);

-- Location: LCFF_X31_Y50_N21
\MEM_BLOCK|Reg_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(0));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(24),
	combout => \ir_in~combout\(24));

-- Location: LCFF_X26_Y50_N19
\IF_BLOCK|ir_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(24));

-- Location: LCCOMB_X26_Y50_N22
\ID_BLOCK|ir[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[24]~feeder_combout\ = \IF_BLOCK|ir_out\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(24),
	combout => \ID_BLOCK|ir[24]~feeder_combout\);

-- Location: LCFF_X26_Y50_N23
\ID_BLOCK|ir[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(24));

-- Location: LCCOMB_X26_Y50_N30
\ID_BLOCK|Rd_out[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rd_out[3]~reg0feeder_combout\ = \ID_BLOCK|ir\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(24),
	combout => \ID_BLOCK|Rd_out[3]~reg0feeder_combout\);

-- Location: LCFF_X26_Y50_N31
\ID_BLOCK|Rd_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y50_N10
\EX_BLOCK|Rd_pom[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Rd_pom[3]~feeder_combout\ = \ID_BLOCK|Rd_out[3]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rd_out[3]~reg0_regout\,
	combout => \EX_BLOCK|Rd_pom[3]~feeder_combout\);

-- Location: LCFF_X26_Y50_N11
\EX_BLOCK|Rd_pom[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(3));

-- Location: LCCOMB_X26_Y50_N28
\EX_BLOCK|Reg_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Reg_out[3]~feeder_combout\ = \EX_BLOCK|Rd_pom\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Rd_pom\(3),
	combout => \EX_BLOCK|Reg_out[3]~feeder_combout\);

-- Location: LCFF_X26_Y50_N29
\EX_BLOCK|Reg_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(3));

-- Location: LCCOMB_X26_Y50_N26
\MEM_BLOCK|Reg_pom[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_pom[3]~feeder_combout\ = \EX_BLOCK|Reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Reg_out\(3),
	combout => \MEM_BLOCK|Reg_pom[3]~feeder_combout\);

-- Location: LCFF_X26_Y50_N27
\MEM_BLOCK|Reg_pom[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(3));

-- Location: LCCOMB_X32_Y50_N30
\MEM_BLOCK|Reg_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_out[3]~feeder_combout\ = \MEM_BLOCK|Reg_pom\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_pom\(3),
	combout => \MEM_BLOCK|Reg_out[3]~feeder_combout\);

-- Location: LCFF_X32_Y50_N31
\MEM_BLOCK|Reg_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(22),
	combout => \ir_in~combout\(22));

-- Location: LCCOMB_X44_Y50_N0
\IF_BLOCK|ir_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[22]~feeder_combout\ = \ir_in~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(22),
	combout => \IF_BLOCK|ir_out[22]~feeder_combout\);

-- Location: LCFF_X44_Y50_N1
\IF_BLOCK|ir_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(22));

-- Location: LCCOMB_X44_Y50_N26
\ID_BLOCK|ir[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[22]~feeder_combout\ = \IF_BLOCK|ir_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(22),
	combout => \ID_BLOCK|ir[22]~feeder_combout\);

-- Location: LCFF_X44_Y50_N27
\ID_BLOCK|ir[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(22));

-- Location: LCCOMB_X44_Y50_N12
\ID_BLOCK|Rd_out[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rd_out[1]~reg0feeder_combout\ = \ID_BLOCK|ir\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(22),
	combout => \ID_BLOCK|Rd_out[1]~reg0feeder_combout\);

-- Location: LCFF_X44_Y50_N13
\ID_BLOCK|Rd_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[1]~reg0_regout\);

-- Location: LCCOMB_X44_Y50_N30
\EX_BLOCK|Rd_pom[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Rd_pom[1]~feeder_combout\ = \ID_BLOCK|Rd_out[1]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rd_out[1]~reg0_regout\,
	combout => \EX_BLOCK|Rd_pom[1]~feeder_combout\);

-- Location: LCFF_X44_Y50_N31
\EX_BLOCK|Rd_pom[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(1));

-- Location: LCCOMB_X44_Y50_N28
\EX_BLOCK|Reg_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Reg_out[1]~feeder_combout\ = \EX_BLOCK|Rd_pom\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Rd_pom\(1),
	combout => \EX_BLOCK|Reg_out[1]~feeder_combout\);

-- Location: LCFF_X44_Y50_N29
\EX_BLOCK|Reg_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(1));

-- Location: LCCOMB_X36_Y50_N2
\MEM_BLOCK|Reg_pom[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_pom[1]~feeder_combout\ = \EX_BLOCK|Reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Reg_out\(1),
	combout => \MEM_BLOCK|Reg_pom[1]~feeder_combout\);

-- Location: LCFF_X36_Y50_N3
\MEM_BLOCK|Reg_pom[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(1));

-- Location: LCCOMB_X32_Y50_N28
\MEM_BLOCK|Reg_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_out[1]~feeder_combout\ = \MEM_BLOCK|Reg_pom\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_pom\(1),
	combout => \MEM_BLOCK|Reg_out[1]~feeder_combout\);

-- Location: LCFF_X32_Y50_N29
\MEM_BLOCK|Reg_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(23),
	combout => \ir_in~combout\(23));

-- Location: LCCOMB_X26_Y50_N8
\IF_BLOCK|ir_out[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[23]~feeder_combout\ = \ir_in~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(23),
	combout => \IF_BLOCK|ir_out[23]~feeder_combout\);

-- Location: LCFF_X26_Y50_N9
\IF_BLOCK|ir_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(23));

-- Location: LCCOMB_X29_Y50_N30
\ID_BLOCK|ir[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[23]~feeder_combout\ = \IF_BLOCK|ir_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(23),
	combout => \ID_BLOCK|ir[23]~feeder_combout\);

-- Location: LCFF_X29_Y50_N31
\ID_BLOCK|ir[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(23));

-- Location: LCCOMB_X29_Y50_N26
\ID_BLOCK|Rd_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rd_out[2]~reg0feeder_combout\ = \ID_BLOCK|ir\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(23),
	combout => \ID_BLOCK|Rd_out[2]~reg0feeder_combout\);

-- Location: LCFF_X29_Y50_N27
\ID_BLOCK|Rd_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[2]~reg0_regout\);

-- Location: LCCOMB_X29_Y50_N2
\EX_BLOCK|Rd_pom[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Rd_pom[2]~feeder_combout\ = \ID_BLOCK|Rd_out[2]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rd_out[2]~reg0_regout\,
	combout => \EX_BLOCK|Rd_pom[2]~feeder_combout\);

-- Location: LCFF_X29_Y50_N3
\EX_BLOCK|Rd_pom[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(2));

-- Location: LCCOMB_X29_Y50_N12
\EX_BLOCK|Reg_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Reg_out[2]~feeder_combout\ = \EX_BLOCK|Rd_pom\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Rd_pom\(2),
	combout => \EX_BLOCK|Reg_out[2]~feeder_combout\);

-- Location: LCFF_X29_Y50_N13
\EX_BLOCK|Reg_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(2));

-- Location: LCCOMB_X29_Y50_N18
\MEM_BLOCK|Reg_pom[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_pom[2]~feeder_combout\ = \EX_BLOCK|Reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Reg_out\(2),
	combout => \MEM_BLOCK|Reg_pom[2]~feeder_combout\);

-- Location: LCFF_X29_Y50_N19
\MEM_BLOCK|Reg_pom[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(2));

-- Location: LCCOMB_X32_Y50_N10
\MEM_BLOCK|Reg_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_out[2]~feeder_combout\ = \MEM_BLOCK|Reg_pom\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_pom\(2),
	combout => \MEM_BLOCK|Reg_out[2]~feeder_combout\);

-- Location: LCFF_X32_Y50_N11
\MEM_BLOCK|Reg_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(2));

-- Location: LCCOMB_X32_Y50_N26
\WB_BLOCK|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|Equal0~0_combout\ = (!\MEM_BLOCK|Reg_out\(4) & (!\MEM_BLOCK|Reg_out\(3) & (!\MEM_BLOCK|Reg_out\(1) & !\MEM_BLOCK|Reg_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_BLOCK|Reg_out\(4),
	datab => \MEM_BLOCK|Reg_out\(3),
	datac => \MEM_BLOCK|Reg_out\(1),
	datad => \MEM_BLOCK|Reg_out\(2),
	combout => \WB_BLOCK|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y50_N14
\WB_BLOCK|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|Equal0~1_combout\ = (\MEM_BLOCK|Reg_out\(0)) # (!\WB_BLOCK|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_BLOCK|Reg_out\(0),
	datad => \WB_BLOCK|Equal0~0_combout\,
	combout => \WB_BLOCK|Equal0~1_combout\);

-- Location: LCFF_X32_Y50_N17
\WB_BLOCK|Reg_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_out\(0),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(0));

-- Location: LCFF_X32_Y50_N27
\WB_BLOCK|Reg_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_out\(1),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(1));

-- Location: LCFF_X32_Y50_N15
\WB_BLOCK|Reg_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_out\(2),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(2));

-- Location: LCCOMB_X32_Y50_N8
\WB_BLOCK|Reg_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|Reg_out[3]~feeder_combout\ = \MEM_BLOCK|Reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_out\(3),
	combout => \WB_BLOCK|Reg_out[3]~feeder_combout\);

-- Location: LCFF_X32_Y50_N9
\WB_BLOCK|Reg_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|Reg_out[3]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(25),
	combout => \ir_in~combout\(25));

-- Location: LCFF_X26_Y50_N13
\IF_BLOCK|ir_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(25));

-- Location: LCCOMB_X26_Y50_N0
\ID_BLOCK|ir[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[25]~feeder_combout\ = \IF_BLOCK|ir_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(25),
	combout => \ID_BLOCK|ir[25]~feeder_combout\);

-- Location: LCFF_X26_Y50_N1
\ID_BLOCK|ir[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(25));

-- Location: LCCOMB_X26_Y50_N20
\ID_BLOCK|Rd_out[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rd_out[4]~reg0feeder_combout\ = \ID_BLOCK|ir\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(25),
	combout => \ID_BLOCK|Rd_out[4]~reg0feeder_combout\);

-- Location: LCFF_X26_Y50_N21
\ID_BLOCK|Rd_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[4]~reg0_regout\);

-- Location: LCCOMB_X29_Y50_N4
\EX_BLOCK|Rd_pom[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|Rd_pom[4]~feeder_combout\ = \ID_BLOCK|Rd_out[4]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rd_out[4]~reg0_regout\,
	combout => \EX_BLOCK|Rd_pom[4]~feeder_combout\);

-- Location: LCFF_X29_Y50_N5
\EX_BLOCK|Rd_pom[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(4));

-- Location: LCFF_X29_Y50_N11
\EX_BLOCK|Reg_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|Rd_pom\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(4));

-- Location: LCCOMB_X29_Y50_N20
\MEM_BLOCK|Reg_pom[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_pom[4]~feeder_combout\ = \EX_BLOCK|Reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|Reg_out\(4),
	combout => \MEM_BLOCK|Reg_pom[4]~feeder_combout\);

-- Location: LCFF_X29_Y50_N21
\MEM_BLOCK|Reg_pom[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(4));

-- Location: LCCOMB_X32_Y50_N24
\MEM_BLOCK|Reg_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|Reg_out[4]~feeder_combout\ = \MEM_BLOCK|Reg_pom\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_pom\(4),
	combout => \MEM_BLOCK|Reg_out[4]~feeder_combout\);

-- Location: LCFF_X32_Y50_N25
\MEM_BLOCK|Reg_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(4));

-- Location: LCFF_X32_Y50_N21
\WB_BLOCK|Reg_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_out\(4),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(4));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(0),
	combout => \data_datacache_mem~combout\(0));

-- Location: LCCOMB_X41_Y50_N20
\MEM_BLOCK|ALU_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[0]~feeder_combout\ = \data_datacache_mem~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(0),
	combout => \MEM_BLOCK|ALU_out[0]~feeder_combout\);

-- Location: LCFF_X41_Y50_N21
\MEM_BLOCK|ALU_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(0));

-- Location: LCCOMB_X33_Y50_N4
\WB_BLOCK|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[0]~feeder_combout\ = \MEM_BLOCK|ALU_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(0),
	combout => \WB_BLOCK|data_out[0]~feeder_combout\);

-- Location: LCFF_X33_Y50_N5
\WB_BLOCK|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[0]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(1),
	combout => \data_datacache_mem~combout\(1));

-- Location: LCFF_X41_Y50_N27
\MEM_BLOCK|ALU_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(1));

-- Location: LCCOMB_X33_Y50_N10
\WB_BLOCK|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[1]~feeder_combout\ = \MEM_BLOCK|ALU_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(1),
	combout => \WB_BLOCK|data_out[1]~feeder_combout\);

-- Location: LCFF_X33_Y50_N11
\WB_BLOCK|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[1]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(2),
	combout => \data_datacache_mem~combout\(2));

-- Location: LCCOMB_X41_Y50_N4
\MEM_BLOCK|ALU_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[2]~feeder_combout\ = \data_datacache_mem~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(2),
	combout => \MEM_BLOCK|ALU_out[2]~feeder_combout\);

-- Location: LCFF_X41_Y50_N5
\MEM_BLOCK|ALU_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(2));

-- Location: LCCOMB_X33_Y50_N24
\WB_BLOCK|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[2]~feeder_combout\ = \MEM_BLOCK|ALU_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(2),
	combout => \WB_BLOCK|data_out[2]~feeder_combout\);

-- Location: LCFF_X33_Y50_N25
\WB_BLOCK|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[2]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(3),
	combout => \data_datacache_mem~combout\(3));

-- Location: LCCOMB_X34_Y50_N28
\MEM_BLOCK|ALU_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[3]~feeder_combout\ = \data_datacache_mem~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(3),
	combout => \MEM_BLOCK|ALU_out[3]~feeder_combout\);

-- Location: LCFF_X34_Y50_N29
\MEM_BLOCK|ALU_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(3));

-- Location: LCCOMB_X33_Y50_N2
\WB_BLOCK|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[3]~feeder_combout\ = \MEM_BLOCK|ALU_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(3),
	combout => \WB_BLOCK|data_out[3]~feeder_combout\);

-- Location: LCFF_X33_Y50_N3
\WB_BLOCK|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[3]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(4),
	combout => \data_datacache_mem~combout\(4));

-- Location: LCCOMB_X34_Y50_N30
\MEM_BLOCK|ALU_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[4]~feeder_combout\ = \data_datacache_mem~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(4),
	combout => \MEM_BLOCK|ALU_out[4]~feeder_combout\);

-- Location: LCFF_X34_Y50_N31
\MEM_BLOCK|ALU_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(4));

-- Location: LCCOMB_X33_Y50_N12
\WB_BLOCK|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[4]~feeder_combout\ = \MEM_BLOCK|ALU_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(4),
	combout => \WB_BLOCK|data_out[4]~feeder_combout\);

-- Location: LCFF_X33_Y50_N13
\WB_BLOCK|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[4]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(5),
	combout => \data_datacache_mem~combout\(5));

-- Location: LCFF_X40_Y50_N5
\MEM_BLOCK|ALU_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(5));

-- Location: LCCOMB_X33_Y50_N6
\WB_BLOCK|data_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[5]~feeder_combout\ = \MEM_BLOCK|ALU_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(5),
	combout => \WB_BLOCK|data_out[5]~feeder_combout\);

-- Location: LCFF_X33_Y50_N7
\WB_BLOCK|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[5]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(5));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(6),
	combout => \data_datacache_mem~combout\(6));

-- Location: LCCOMB_X27_Y50_N12
\MEM_BLOCK|ALU_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[6]~feeder_combout\ = \data_datacache_mem~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(6),
	combout => \MEM_BLOCK|ALU_out[6]~feeder_combout\);

-- Location: LCFF_X27_Y50_N13
\MEM_BLOCK|ALU_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(6));

-- Location: LCCOMB_X31_Y50_N28
\WB_BLOCK|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[6]~feeder_combout\ = \MEM_BLOCK|ALU_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(6),
	combout => \WB_BLOCK|data_out[6]~feeder_combout\);

-- Location: LCFF_X31_Y50_N29
\WB_BLOCK|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[6]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(6));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(7),
	combout => \data_datacache_mem~combout\(7));

-- Location: LCFF_X27_Y50_N7
\MEM_BLOCK|ALU_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(7));

-- Location: LCCOMB_X31_Y50_N18
\WB_BLOCK|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[7]~feeder_combout\ = \MEM_BLOCK|ALU_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(7),
	combout => \WB_BLOCK|data_out[7]~feeder_combout\);

-- Location: LCFF_X31_Y50_N19
\WB_BLOCK|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[7]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(8),
	combout => \data_datacache_mem~combout\(8));

-- Location: LCCOMB_X34_Y50_N12
\MEM_BLOCK|ALU_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[8]~feeder_combout\ = \data_datacache_mem~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(8),
	combout => \MEM_BLOCK|ALU_out[8]~feeder_combout\);

-- Location: LCFF_X34_Y50_N13
\MEM_BLOCK|ALU_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(8));

-- Location: LCFF_X33_Y50_N17
\WB_BLOCK|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(8),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(8));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(9),
	combout => \data_datacache_mem~combout\(9));

-- Location: LCCOMB_X30_Y50_N16
\MEM_BLOCK|ALU_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[9]~feeder_combout\ = \data_datacache_mem~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(9),
	combout => \MEM_BLOCK|ALU_out[9]~feeder_combout\);

-- Location: LCFF_X30_Y50_N17
\MEM_BLOCK|ALU_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(9));

-- Location: LCCOMB_X31_Y50_N16
\WB_BLOCK|data_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[9]~feeder_combout\ = \MEM_BLOCK|ALU_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(9),
	combout => \WB_BLOCK|data_out[9]~feeder_combout\);

-- Location: LCFF_X31_Y50_N17
\WB_BLOCK|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[9]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(9));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(10),
	combout => \data_datacache_mem~combout\(10));

-- Location: LCCOMB_X27_Y50_N8
\MEM_BLOCK|ALU_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[10]~feeder_combout\ = \data_datacache_mem~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(10),
	combout => \MEM_BLOCK|ALU_out[10]~feeder_combout\);

-- Location: LCFF_X27_Y50_N9
\MEM_BLOCK|ALU_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(10));

-- Location: LCCOMB_X31_Y50_N22
\WB_BLOCK|data_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[10]~feeder_combout\ = \MEM_BLOCK|ALU_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(10),
	combout => \WB_BLOCK|data_out[10]~feeder_combout\);

-- Location: LCFF_X31_Y50_N23
\WB_BLOCK|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[10]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(10));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(11),
	combout => \data_datacache_mem~combout\(11));

-- Location: LCFF_X27_Y50_N19
\MEM_BLOCK|ALU_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(11));

-- Location: LCCOMB_X31_Y50_N8
\WB_BLOCK|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[11]~feeder_combout\ = \MEM_BLOCK|ALU_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(11),
	combout => \WB_BLOCK|data_out[11]~feeder_combout\);

-- Location: LCFF_X31_Y50_N9
\WB_BLOCK|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[11]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(11));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(12),
	combout => \data_datacache_mem~combout\(12));

-- Location: LCCOMB_X26_Y50_N24
\MEM_BLOCK|ALU_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[12]~feeder_combout\ = \data_datacache_mem~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(12),
	combout => \MEM_BLOCK|ALU_out[12]~feeder_combout\);

-- Location: LCFF_X26_Y50_N25
\MEM_BLOCK|ALU_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(12));

-- Location: LCCOMB_X33_Y50_N18
\WB_BLOCK|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[12]~feeder_combout\ = \MEM_BLOCK|ALU_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(12),
	combout => \WB_BLOCK|data_out[12]~feeder_combout\);

-- Location: LCFF_X33_Y50_N19
\WB_BLOCK|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[12]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(12));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(13),
	combout => \data_datacache_mem~combout\(13));

-- Location: LCCOMB_X34_Y50_N6
\MEM_BLOCK|ALU_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[13]~feeder_combout\ = \data_datacache_mem~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(13),
	combout => \MEM_BLOCK|ALU_out[13]~feeder_combout\);

-- Location: LCFF_X34_Y50_N7
\MEM_BLOCK|ALU_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(13));

-- Location: LCCOMB_X33_Y50_N20
\WB_BLOCK|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[13]~feeder_combout\ = \MEM_BLOCK|ALU_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(13),
	combout => \WB_BLOCK|data_out[13]~feeder_combout\);

-- Location: LCFF_X33_Y50_N21
\WB_BLOCK|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[13]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(13));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(14),
	combout => \data_datacache_mem~combout\(14));

-- Location: LCCOMB_X36_Y50_N28
\MEM_BLOCK|ALU_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[14]~feeder_combout\ = \data_datacache_mem~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(14),
	combout => \MEM_BLOCK|ALU_out[14]~feeder_combout\);

-- Location: LCFF_X36_Y50_N29
\MEM_BLOCK|ALU_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(14));

-- Location: LCCOMB_X32_Y50_N22
\WB_BLOCK|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[14]~feeder_combout\ = \MEM_BLOCK|ALU_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(14),
	combout => \WB_BLOCK|data_out[14]~feeder_combout\);

-- Location: LCFF_X32_Y50_N23
\WB_BLOCK|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[14]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(14));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(15),
	combout => \data_datacache_mem~combout\(15));

-- Location: LCCOMB_X40_Y50_N6
\MEM_BLOCK|ALU_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[15]~feeder_combout\ = \data_datacache_mem~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(15),
	combout => \MEM_BLOCK|ALU_out[15]~feeder_combout\);

-- Location: LCFF_X40_Y50_N7
\MEM_BLOCK|ALU_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(15));

-- Location: LCCOMB_X32_Y50_N2
\WB_BLOCK|data_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[15]~feeder_combout\ = \MEM_BLOCK|ALU_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(15),
	combout => \WB_BLOCK|data_out[15]~feeder_combout\);

-- Location: LCFF_X32_Y50_N3
\WB_BLOCK|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[15]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(15));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(16),
	combout => \data_datacache_mem~combout\(16));

-- Location: LCCOMB_X26_Y50_N2
\MEM_BLOCK|ALU_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[16]~feeder_combout\ = \data_datacache_mem~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(16),
	combout => \MEM_BLOCK|ALU_out[16]~feeder_combout\);

-- Location: LCFF_X26_Y50_N3
\MEM_BLOCK|ALU_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(16));

-- Location: LCCOMB_X32_Y50_N4
\WB_BLOCK|data_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[16]~feeder_combout\ = \MEM_BLOCK|ALU_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(16),
	combout => \WB_BLOCK|data_out[16]~feeder_combout\);

-- Location: LCFF_X32_Y50_N5
\WB_BLOCK|data_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[16]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(16));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(17),
	combout => \data_datacache_mem~combout\(17));

-- Location: LCCOMB_X27_Y50_N4
\MEM_BLOCK|ALU_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[17]~feeder_combout\ = \data_datacache_mem~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(17),
	combout => \MEM_BLOCK|ALU_out[17]~feeder_combout\);

-- Location: LCFF_X27_Y50_N5
\MEM_BLOCK|ALU_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(17));

-- Location: LCFF_X31_Y50_N3
\WB_BLOCK|data_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(17),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(17));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(18),
	combout => \data_datacache_mem~combout\(18));

-- Location: LCCOMB_X30_Y50_N10
\MEM_BLOCK|ALU_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[18]~feeder_combout\ = \data_datacache_mem~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(18),
	combout => \MEM_BLOCK|ALU_out[18]~feeder_combout\);

-- Location: LCFF_X30_Y50_N11
\MEM_BLOCK|ALU_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(18));

-- Location: LCCOMB_X31_Y50_N0
\WB_BLOCK|data_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[18]~feeder_combout\ = \MEM_BLOCK|ALU_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(18),
	combout => \WB_BLOCK|data_out[18]~feeder_combout\);

-- Location: LCFF_X31_Y50_N1
\WB_BLOCK|data_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[18]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(18));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(19),
	combout => \data_datacache_mem~combout\(19));

-- Location: LCCOMB_X27_Y50_N10
\MEM_BLOCK|ALU_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[19]~feeder_combout\ = \data_datacache_mem~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(19),
	combout => \MEM_BLOCK|ALU_out[19]~feeder_combout\);

-- Location: LCFF_X27_Y50_N11
\MEM_BLOCK|ALU_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(19));

-- Location: LCCOMB_X31_Y50_N6
\WB_BLOCK|data_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[19]~feeder_combout\ = \MEM_BLOCK|ALU_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(19),
	combout => \WB_BLOCK|data_out[19]~feeder_combout\);

-- Location: LCFF_X31_Y50_N7
\WB_BLOCK|data_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[19]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(19));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(20),
	combout => \data_datacache_mem~combout\(20));

-- Location: LCCOMB_X41_Y50_N10
\MEM_BLOCK|ALU_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[20]~feeder_combout\ = \data_datacache_mem~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(20),
	combout => \MEM_BLOCK|ALU_out[20]~feeder_combout\);

-- Location: LCFF_X41_Y50_N11
\MEM_BLOCK|ALU_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(20));

-- Location: LCCOMB_X33_Y50_N26
\WB_BLOCK|data_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[20]~feeder_combout\ = \MEM_BLOCK|ALU_out\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(20),
	combout => \WB_BLOCK|data_out[20]~feeder_combout\);

-- Location: LCFF_X33_Y50_N27
\WB_BLOCK|data_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[20]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(20));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(21),
	combout => \data_datacache_mem~combout\(21));

-- Location: LCCOMB_X26_Y50_N16
\MEM_BLOCK|ALU_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[21]~feeder_combout\ = \data_datacache_mem~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(21),
	combout => \MEM_BLOCK|ALU_out[21]~feeder_combout\);

-- Location: LCFF_X26_Y50_N17
\MEM_BLOCK|ALU_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(21));

-- Location: LCCOMB_X33_Y50_N0
\WB_BLOCK|data_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[21]~feeder_combout\ = \MEM_BLOCK|ALU_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(21),
	combout => \WB_BLOCK|data_out[21]~feeder_combout\);

-- Location: LCFF_X33_Y50_N1
\WB_BLOCK|data_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[21]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(21));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(22),
	combout => \data_datacache_mem~combout\(22));

-- Location: LCCOMB_X40_Y50_N20
\MEM_BLOCK|ALU_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[22]~feeder_combout\ = \data_datacache_mem~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(22),
	combout => \MEM_BLOCK|ALU_out[22]~feeder_combout\);

-- Location: LCFF_X40_Y50_N21
\MEM_BLOCK|ALU_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(22));

-- Location: LCCOMB_X32_Y50_N0
\WB_BLOCK|data_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[22]~feeder_combout\ = \MEM_BLOCK|ALU_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(22),
	combout => \WB_BLOCK|data_out[22]~feeder_combout\);

-- Location: LCFF_X32_Y50_N1
\WB_BLOCK|data_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[22]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(22));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(23),
	combout => \data_datacache_mem~combout\(23));

-- Location: LCCOMB_X27_Y50_N20
\MEM_BLOCK|ALU_out[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[23]~feeder_combout\ = \data_datacache_mem~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(23),
	combout => \MEM_BLOCK|ALU_out[23]~feeder_combout\);

-- Location: LCFF_X27_Y50_N21
\MEM_BLOCK|ALU_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(23));

-- Location: LCFF_X31_Y50_N5
\WB_BLOCK|data_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(23),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(23));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(24),
	combout => \data_datacache_mem~combout\(24));

-- Location: LCCOMB_X30_Y50_N4
\MEM_BLOCK|ALU_out[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[24]~feeder_combout\ = \data_datacache_mem~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(24),
	combout => \MEM_BLOCK|ALU_out[24]~feeder_combout\);

-- Location: LCFF_X30_Y50_N5
\MEM_BLOCK|ALU_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(24));

-- Location: LCFF_X31_Y50_N11
\WB_BLOCK|data_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(24),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(24));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(25),
	combout => \data_datacache_mem~combout\(25));

-- Location: LCCOMB_X33_Y50_N22
\MEM_BLOCK|ALU_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[25]~feeder_combout\ = \data_datacache_mem~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(25),
	combout => \MEM_BLOCK|ALU_out[25]~feeder_combout\);

-- Location: LCFF_X33_Y50_N23
\MEM_BLOCK|ALU_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(25));

-- Location: LCCOMB_X32_Y50_N6
\WB_BLOCK|data_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[25]~feeder_combout\ = \MEM_BLOCK|ALU_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(25),
	combout => \WB_BLOCK|data_out[25]~feeder_combout\);

-- Location: LCFF_X32_Y50_N7
\WB_BLOCK|data_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[25]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(25));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(26),
	combout => \data_datacache_mem~combout\(26));

-- Location: LCCOMB_X30_Y50_N14
\MEM_BLOCK|ALU_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[26]~feeder_combout\ = \data_datacache_mem~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(26),
	combout => \MEM_BLOCK|ALU_out[26]~feeder_combout\);

-- Location: LCFF_X30_Y50_N15
\MEM_BLOCK|ALU_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(26));

-- Location: LCCOMB_X31_Y50_N24
\WB_BLOCK|data_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[26]~feeder_combout\ = \MEM_BLOCK|ALU_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(26),
	combout => \WB_BLOCK|data_out[26]~feeder_combout\);

-- Location: LCFF_X31_Y50_N25
\WB_BLOCK|data_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[26]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(26));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(27),
	combout => \data_datacache_mem~combout\(27));

-- Location: LCCOMB_X31_Y50_N26
\MEM_BLOCK|ALU_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[27]~feeder_combout\ = \data_datacache_mem~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(27),
	combout => \MEM_BLOCK|ALU_out[27]~feeder_combout\);

-- Location: LCFF_X31_Y50_N27
\MEM_BLOCK|ALU_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(27));

-- Location: LCCOMB_X31_Y50_N14
\WB_BLOCK|data_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[27]~feeder_combout\ = \MEM_BLOCK|ALU_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(27),
	combout => \WB_BLOCK|data_out[27]~feeder_combout\);

-- Location: LCFF_X31_Y50_N15
\WB_BLOCK|data_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[27]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(27));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(28),
	combout => \data_datacache_mem~combout\(28));

-- Location: LCCOMB_X33_Y50_N28
\MEM_BLOCK|ALU_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[28]~feeder_combout\ = \data_datacache_mem~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(28),
	combout => \MEM_BLOCK|ALU_out[28]~feeder_combout\);

-- Location: LCFF_X33_Y50_N29
\MEM_BLOCK|ALU_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(28));

-- Location: LCCOMB_X32_Y50_N12
\WB_BLOCK|data_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[28]~feeder_combout\ = \MEM_BLOCK|ALU_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(28),
	combout => \WB_BLOCK|data_out[28]~feeder_combout\);

-- Location: LCFF_X32_Y50_N13
\WB_BLOCK|data_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[28]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(28));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(29),
	combout => \data_datacache_mem~combout\(29));

-- Location: LCCOMB_X33_Y50_N30
\MEM_BLOCK|ALU_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[29]~feeder_combout\ = \data_datacache_mem~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(29),
	combout => \MEM_BLOCK|ALU_out[29]~feeder_combout\);

-- Location: LCFF_X33_Y50_N31
\MEM_BLOCK|ALU_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(29));

-- Location: LCCOMB_X32_Y50_N18
\WB_BLOCK|data_out[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[29]~feeder_combout\ = \MEM_BLOCK|ALU_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(29),
	combout => \WB_BLOCK|data_out[29]~feeder_combout\);

-- Location: LCFF_X32_Y50_N19
\WB_BLOCK|data_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[29]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(29));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(30),
	combout => \data_datacache_mem~combout\(30));

-- Location: LCCOMB_X30_Y50_N12
\MEM_BLOCK|ALU_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[30]~feeder_combout\ = \data_datacache_mem~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(30),
	combout => \MEM_BLOCK|ALU_out[30]~feeder_combout\);

-- Location: LCFF_X30_Y50_N13
\MEM_BLOCK|ALU_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(30));

-- Location: LCCOMB_X31_Y50_N12
\WB_BLOCK|data_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[30]~feeder_combout\ = \MEM_BLOCK|ALU_out\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(30),
	combout => \WB_BLOCK|data_out[30]~feeder_combout\);

-- Location: LCFF_X31_Y50_N13
\WB_BLOCK|data_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[30]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(30));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_datacache_mem[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_datacache_mem(31),
	combout => \data_datacache_mem~combout\(31));

-- Location: LCCOMB_X27_Y50_N22
\MEM_BLOCK|ALU_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[31]~feeder_combout\ = \data_datacache_mem~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(31),
	combout => \MEM_BLOCK|ALU_out[31]~feeder_combout\);

-- Location: LCFF_X27_Y50_N23
\MEM_BLOCK|ALU_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(31));

-- Location: LCCOMB_X31_Y50_N30
\WB_BLOCK|data_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[31]~feeder_combout\ = \MEM_BLOCK|ALU_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(31),
	combout => \WB_BLOCK|data_out[31]~feeder_combout\);

-- Location: LCFF_X31_Y50_N31
\WB_BLOCK|data_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[31]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(31));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(0));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(3));

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(4));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(5));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(6));

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(7));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(8));

-- Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(9));

-- Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ir_in[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ir_in(10));

-- Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(0));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(1));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(2));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(3));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(4));

-- Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(5));

-- Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(6));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(7));

-- Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(8));

-- Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(9));

-- Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(10));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(11));

-- Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(12));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(13));

-- Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(14));

-- Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(15));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(16));

-- Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(17));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(18));

-- Location: PIN_F28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(19));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(20));

-- Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(21));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(22));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(23));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(24));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(25));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(26));

-- Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(27));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(28));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(29));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(30));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_out[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IF_BLOCK|adr_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_out(31));

-- Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rdReg1_ex_reg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rdReg1_ex_reg);

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rdReg2_ex_reg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rdReg2_ex_reg);

-- Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg1_no_ex_reg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg1_no_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg1_no_ex_reg(0));

-- Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg1_no_ex_reg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg1_no_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg1_no_ex_reg(1));

-- Location: PIN_AG29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg1_no_ex_reg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg1_no_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg1_no_ex_reg(2));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg1_no_ex_reg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg1_no_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg1_no_ex_reg(3));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg1_no_ex_reg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg1_no_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg1_no_ex_reg(4));

-- Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg2_no_ex_reg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg2_no_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg2_no_ex_reg(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg2_no_ex_reg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg2_no_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg2_no_ex_reg(1));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg2_no_ex_reg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg2_no_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg2_no_ex_reg(2));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg2_no_ex_reg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg2_no_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg2_no_ex_reg(3));

-- Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg2_no_ex_reg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EX_BLOCK|reg2_no_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg2_no_ex_reg(4));

-- Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(0));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(1));

-- Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(2));

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(3));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(4));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(5));

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(6));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(7));

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(8));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(9));

-- Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(10));

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(11));

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(12));

-- Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(13));

-- Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(14));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(15));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(16));

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(17));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(18));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(19));

-- Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(20));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(21));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(22));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(23));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(24));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(25));

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(26));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(27));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(28));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(29));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(30));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reg2_data_reg_ex[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reg2_data_reg_ex(31));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rd_mem_datacache~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rd_mem_datacache);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wr_mem_datacache~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wr_mem_datacache);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(0));

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(2));

-- Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(3));

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(4));

-- Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(5));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(6));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(7));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(8));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(9));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(10));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(11));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(12));

-- Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(13));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(14));

-- Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(16));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(17));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(18));

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(19));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(20));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(21));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(22));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(23));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(24));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(25));

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(26));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(27));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(28));

-- Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(29));

-- Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(30));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adr_mem_datacache[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEM_BLOCK|adr_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adr_mem_datacache(31));

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(0));

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(1));

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(2));

-- Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(3));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(4));

-- Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(5));

-- Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(6));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(7));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(8));

-- Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(9));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(10));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(11));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(12));

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(13));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(14));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(15));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(16));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(17));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(18));

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(19));

-- Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(20));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(21));

-- Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(22));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(23));

-- Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(24));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(25));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(26));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(27));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(28));

-- Location: PIN_AH24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(29));

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(30));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_mem_datacache[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_mem_datacache(31));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wr_wb_reg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wr_wb_reg);

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Reg_wb_reg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|Reg_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reg_wb_reg(0));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Reg_wb_reg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|Reg_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reg_wb_reg(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Reg_wb_reg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|Reg_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reg_wb_reg(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Reg_wb_reg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|Reg_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reg_wb_reg(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Reg_wb_reg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|Reg_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reg_wb_reg(4));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(2));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(3));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(5));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(6));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(7));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(8));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(10));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(11));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(12));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(13));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(14));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(15));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(16));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(17));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(18));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(19));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(20));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(21));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(22));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(23));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(24));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(25));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(26));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(27));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(28));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(29));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(30));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_wb_reg[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WB_BLOCK|data_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_wb_reg(31));
END structure;


