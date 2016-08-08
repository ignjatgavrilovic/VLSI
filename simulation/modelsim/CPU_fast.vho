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

-- DATE "08/09/2016 00:25:19"

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
-- adr_out[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[1]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[4]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[5]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[6]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[7]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[8]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[9]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[10]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[11]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[12]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[13]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[14]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[15]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[16]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[17]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[18]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[19]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[20]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[21]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[22]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[23]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[24]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[25]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[26]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[27]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[28]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[29]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[30]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[31]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rdReg1_ex_reg	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rdReg2_ex_reg	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[0]	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[1]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[2]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[3]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg1_no_ex_reg[4]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[0]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[1]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[2]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[3]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_no_ex_reg[4]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg2_data_reg_ex[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[1]	=>  Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[2]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[3]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[4]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[5]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[6]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[7]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[8]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[9]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[10]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[11]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[12]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[13]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[14]	=>  Location: PIN_AF27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[15]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[16]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[17]	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[18]	=>  Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[19]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[20]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[21]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[22]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[23]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[24]	=>  Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[25]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[26]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[27]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[28]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[29]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[30]	=>  Location: PIN_AH2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg2_data_reg_ex[31]	=>  Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rd_mem_datacache	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wr_mem_datacache	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[0]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[1]	=>  Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[2]	=>  Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[4]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[5]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[7]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[8]	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[9]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[10]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[11]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[12]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[13]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[14]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[15]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[16]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[17]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[18]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[19]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[20]	=>  Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[21]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[22]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[23]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[24]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[25]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[26]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[27]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[28]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[29]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[30]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_mem_datacache[31]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[1]	=>  Location: PIN_AK24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[2]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[4]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[6]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[8]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[9]	=>  Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[10]	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[11]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[12]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[13]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[14]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[15]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[16]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[17]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[18]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[19]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[20]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[21]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[22]	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[23]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[24]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[25]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[26]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[27]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[28]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[29]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[30]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_mem_datacache[31]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wr_wb_reg	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reg_wb_reg[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[3]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[4]	=>  Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[5]	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[6]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[7]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[8]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[9]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[10]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[11]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[12]	=>  Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[13]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[14]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[15]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[16]	=>  Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[17]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[18]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[19]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[20]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[21]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[22]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[23]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[24]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[25]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[26]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[27]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[28]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[29]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[30]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_wb_reg[31]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[0]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[29]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[31]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[30]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[1]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[2]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[3]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[4]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[5]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[6]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[7]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[8]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[9]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[10]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[21]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[22]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[23]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[24]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[25]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[0]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[1]	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[2]	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[3]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[5]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[6]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[8]	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[9]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[10]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[11]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[12]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[13]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[14]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[15]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[16]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[17]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[18]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[19]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[20]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[21]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[22]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[23]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[24]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[25]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[26]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[27]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[28]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[29]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[30]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reg1_data_reg_ex[31]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[3]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[4]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[5]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[6]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[7]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[8]	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[9]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[10]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[11]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[12]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[13]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[14]	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[15]	=>  Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[16]	=>  Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[17]	=>  Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[18]	=>  Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[19]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[20]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[21]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[22]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[23]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[24]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[25]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[26]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[27]	=>  Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[28]	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[29]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[30]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_datacache_mem[31]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[16]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[17]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[18]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[19]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[20]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[11]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[28]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[26]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[27]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[12]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[13]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[14]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ir_in[15]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_BLOCK|Add3~4_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~26_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a7\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a6\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a5\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a4\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a3\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a2\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a1\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a31\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a26\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a25\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a23\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a21\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a20\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a19\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a17\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a11\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~3_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~7_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~13_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~15_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~16_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[2]~4_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[4]~6_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[6]~8_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[7]~9_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~13_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[12]~19_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[13]~20_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[13]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|new_pc_out[2]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|new_pc_out[4]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|new_pc_out[6]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|new_pc_out[12]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[2]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[4]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[6]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[12]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[13]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[6]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[7]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[13]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \IF_BLOCK|Add2~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~1\ : std_logic;
SIGNAL \IF_BLOCK|Add2~3\ : std_logic;
SIGNAL \IF_BLOCK|Add2~4_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~3_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~1\ : std_logic;
SIGNAL \IF_BLOCK|Add3~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~3\ : std_logic;
SIGNAL \IF_BLOCK|Add3~5\ : std_logic;
SIGNAL \IF_BLOCK|Add3~7\ : std_logic;
SIGNAL \IF_BLOCK|Add3~8_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~5_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~5\ : std_logic;
SIGNAL \IF_BLOCK|Add2~6_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~4_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~7\ : std_logic;
SIGNAL \IF_BLOCK|Add2~9\ : std_logic;
SIGNAL \IF_BLOCK|Add2~10_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~9\ : std_logic;
SIGNAL \IF_BLOCK|Add3~10_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~6_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~11\ : std_logic;
SIGNAL \IF_BLOCK|Add3~12_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~7_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~13\ : std_logic;
SIGNAL \IF_BLOCK|Add3~15\ : std_logic;
SIGNAL \IF_BLOCK|Add3~17\ : std_logic;
SIGNAL \IF_BLOCK|Add3~19\ : std_logic;
SIGNAL \IF_BLOCK|Add3~21\ : std_logic;
SIGNAL \IF_BLOCK|Add3~22_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~18_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~10_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~11\ : std_logic;
SIGNAL \IF_BLOCK|Add2~13\ : std_logic;
SIGNAL \IF_BLOCK|Add2~14_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~8_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~15\ : std_logic;
SIGNAL \IF_BLOCK|Add2~16_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~16_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~9_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~17\ : std_logic;
SIGNAL \IF_BLOCK|Add2~19\ : std_logic;
SIGNAL \IF_BLOCK|Add2~21\ : std_logic;
SIGNAL \IF_BLOCK|Add2~22_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~12_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~23\ : std_logic;
SIGNAL \IF_BLOCK|Add3~24_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~23\ : std_logic;
SIGNAL \IF_BLOCK|Add2~24_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~13_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~25\ : std_logic;
SIGNAL \IF_BLOCK|Add3~27\ : std_logic;
SIGNAL \IF_BLOCK|Add3~28_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~25\ : std_logic;
SIGNAL \IF_BLOCK|Add2~27\ : std_logic;
SIGNAL \IF_BLOCK|Add2~28_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~15_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~29\ : std_logic;
SIGNAL \IF_BLOCK|Add2~31\ : std_logic;
SIGNAL \IF_BLOCK|Add2~33\ : std_logic;
SIGNAL \IF_BLOCK|Add2~34_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~30_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~29\ : std_logic;
SIGNAL \IF_BLOCK|Add3~30_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~16_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~31\ : std_logic;
SIGNAL \IF_BLOCK|Add3~32_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~32_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~17_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~33\ : std_logic;
SIGNAL \IF_BLOCK|Add3~34_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~18_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~35\ : std_logic;
SIGNAL \IF_BLOCK|Add3~37\ : std_logic;
SIGNAL \IF_BLOCK|Add3~38_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~35\ : std_logic;
SIGNAL \IF_BLOCK|Add2~37\ : std_logic;
SIGNAL \IF_BLOCK|Add2~38_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~20_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~39\ : std_logic;
SIGNAL \IF_BLOCK|Add2~40_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~39\ : std_logic;
SIGNAL \IF_BLOCK|Add3~40_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~21_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~41\ : std_logic;
SIGNAL \IF_BLOCK|Add3~42_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~41\ : std_logic;
SIGNAL \IF_BLOCK|Add2~42_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~22_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~43\ : std_logic;
SIGNAL \IF_BLOCK|Add3~45\ : std_logic;
SIGNAL \IF_BLOCK|Add3~47\ : std_logic;
SIGNAL \IF_BLOCK|Add3~49\ : std_logic;
SIGNAL \IF_BLOCK|Add3~50_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~43\ : std_logic;
SIGNAL \IF_BLOCK|Add2~45\ : std_logic;
SIGNAL \IF_BLOCK|Add2~47\ : std_logic;
SIGNAL \IF_BLOCK|Add2~49\ : std_logic;
SIGNAL \IF_BLOCK|Add2~50_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~26_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~51\ : std_logic;
SIGNAL \IF_BLOCK|Add2~52_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~51\ : std_logic;
SIGNAL \IF_BLOCK|Add3~52_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~27_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~53\ : std_logic;
SIGNAL \IF_BLOCK|Add3~54_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~53\ : std_logic;
SIGNAL \IF_BLOCK|Add2~54_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~28_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~55\ : std_logic;
SIGNAL \IF_BLOCK|Add3~57\ : std_logic;
SIGNAL \IF_BLOCK|Add3~58_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~56_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~55\ : std_logic;
SIGNAL \IF_BLOCK|Add2~56_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~29_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~57\ : std_logic;
SIGNAL \IF_BLOCK|Add2~58_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~30_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~59\ : std_logic;
SIGNAL \IF_BLOCK|Add2~60_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~31_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~59\ : std_logic;
SIGNAL \IF_BLOCK|Add3~61\ : std_logic;
SIGNAL \IF_BLOCK|Add3~62_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~32_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~61\ : std_logic;
SIGNAL \IF_BLOCK|Add2~62_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~31_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~60_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~30_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~29_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~28_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~27_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~26_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~25_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~48_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~48_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~24_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~46_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~46_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~23_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~44_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~22_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~21_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~20_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~19_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~36_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~36_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~18_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~17_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~16_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~14_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~15_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~26_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~12_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~13_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~10_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~20_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~11_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~18_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~8_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~9_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~14_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~6_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~12_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~7_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~4_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~8_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~5_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~6_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~3_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|predicted_pc_out~1_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a29\ : std_logic;
SIGNAL \ID_BLOCK|ir[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[29]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[28]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~0_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~1_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[3]~5_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a30\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~1_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[11]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[11]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[0]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[0]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[0]~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[12]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[12]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[1]~3_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a32\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a28\ : std_logic;
SIGNAL \ID_BLOCK|ir[5]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[5]~7_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a27\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~2_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~4_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a16\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a15\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a14\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~10_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a8\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a10\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a9\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~12_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[26]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~14_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[15]~15_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~16_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~17_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[15]~22_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[15]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a13\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a12\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~11_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~14_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[14]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[14]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[14]~21_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[14]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a18\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~8_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[8]~10_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[8]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[9]~11_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[9]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a24\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~5_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[10]~12_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[10]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|new_pc_out[10]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[21]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[21]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|imm[11]~18_combout\ : std_logic;
SIGNAL \EX_BLOCK|imm_pom[11]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a22\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~6_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~9_combout\ : std_logic;
SIGNAL \IF_BLOCK|Equal0~17_combout\ : std_logic;
SIGNAL \IF_BLOCK|predictor~1_combout\ : std_logic;
SIGNAL \IF_BLOCK|predictor~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~0_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~1_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[0]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[4]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[8]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add2~20_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~11_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~14_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[13]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[15]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~19_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[20]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|Add3~44_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~23_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~24_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[23]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc_next~25_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[16]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[16]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[0]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[0]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[17]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[17]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[1]~reg0_regout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[18]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[18]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[2]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[2]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[19]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[3]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[20]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs1_out[4]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg1_no_out[4]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Equal20~0_combout\ : std_logic;
SIGNAL \ID_BLOCK|Equal20~1_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[0]~0_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[0]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[0]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[1]~1_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[1]~reg0_regout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[2]~2_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[2]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[2]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[3]~3_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rs2_out[3]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|reg2_no_out[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[15]~feeder_combout\ : std_logic;
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
SIGNAL \EX_BLOCK|ALU_out[5]~feeder_combout\ : std_logic;
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
SIGNAL \ID_BLOCK|Rd_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[0]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[0]~feeder_combout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[24]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[3]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|ir_out[22]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|ir[22]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[1]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Rd_pom[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[2]~reg0_regout\ : std_logic;
SIGNAL \EX_BLOCK|Reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_pom[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|Reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|Equal0~0_combout\ : std_logic;
SIGNAL \WB_BLOCK|Equal0~1_combout\ : std_logic;
SIGNAL \WB_BLOCK|Reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|Reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \ID_BLOCK|Rd_out[4]~reg0_regout\ : std_logic;
SIGNAL \WB_BLOCK|Reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[2]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[5]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[6]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[8]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[9]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[10]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[13]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[14]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[15]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[16]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[16]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[17]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[18]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[18]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[19]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[20]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[21]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[22]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[22]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[23]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[25]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[25]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[26]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[26]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[27]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[28]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[28]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[29]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[29]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[30]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out[31]~feeder_combout\ : std_logic;
SIGNAL \WB_BLOCK|data_out[31]~feeder_combout\ : std_logic;
SIGNAL \MEM_BLOCK|ALU_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|ir_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM_BLOCK|Reg_pom\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IF_BLOCK|predictor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MEM_BLOCK|Reg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EX_BLOCK|Reg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \WB_BLOCK|Reg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ID_BLOCK|ir\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|adr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \WB_BLOCK|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM_BLOCK|adr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|new_pc_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EX_BLOCK|imm_pom\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|pc_next\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|ALU_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_BLOCK|reg2_no_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EX_BLOCK|Rd_pom\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ID_BLOCK|imm\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EX_BLOCK|reg1_no_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \reg1_data_reg_ex~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ir_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_datacache_mem~combout\ : std_logic_vector(31 DOWNTO 0);
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

\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ <= (\IF_BLOCK|predicted_pc_out~1_combout\ & \IF_BLOCK|predicted_pc_out~0_combout\ & \IF_BLOCK|predicted_pc_out~3_combout\ & \IF_BLOCK|predicted_pc_out~2_combout\
& \IF_BLOCK|predicted_pc_out~5_combout\ & \IF_BLOCK|predicted_pc_out~4_combout\ & \IF_BLOCK|predicted_pc_out~7_combout\ & \IF_BLOCK|predicted_pc_out~6_combout\ & \IF_BLOCK|predicted_pc_out~9_combout\ & \IF_BLOCK|predicted_pc_out~8_combout\ & 
\IF_BLOCK|predicted_pc_out~11_combout\ & \IF_BLOCK|predicted_pc_out~10_combout\ & \IF_BLOCK|predicted_pc_out~13_combout\ & \IF_BLOCK|predicted_pc_out~12_combout\ & \IF_BLOCK|predicted_pc_out~15_combout\ & \IF_BLOCK|predicted_pc_out~14_combout\ & 
\IF_BLOCK|predicted_pc_out~16_combout\ & \IF_BLOCK|predicted_pc_out~17_combout\ & \IF_BLOCK|predicted_pc_out~18_combout\ & \IF_BLOCK|predicted_pc_out~19_combout\ & \IF_BLOCK|predicted_pc_out~20_combout\ & \IF_BLOCK|predicted_pc_out~21_combout\ & 
\IF_BLOCK|predicted_pc_out~22_combout\ & \IF_BLOCK|predicted_pc_out~23_combout\ & \IF_BLOCK|predicted_pc_out~24_combout\ & \IF_BLOCK|predicted_pc_out~25_combout\ & \IF_BLOCK|predicted_pc_out~26_combout\ & \IF_BLOCK|predicted_pc_out~27_combout\ & 
\IF_BLOCK|predicted_pc_out~28_combout\ & \IF_BLOCK|predicted_pc_out~29_combout\ & \IF_BLOCK|predicted_pc_out~30_combout\ & \IF_BLOCK|predicted_pc_out~31_combout\ & \IF_BLOCK|predictor\(1));

\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ <= (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ <= (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a\(0));

\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(0);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a1\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(1);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a2\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(2);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a3\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(3);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a4\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(4);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a5\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(5);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a6\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(6);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a7\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(7);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a8\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(8);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a9\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(9);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a10\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(10);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a11\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(11);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a12\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(12);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a13\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(13);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a14\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(14);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a15\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(15);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a16\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(16);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a17\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(17);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a18\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(18);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a19\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(19);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a20\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(20);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a21\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(21);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a22\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(22);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a23\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(23);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a24\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(24);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a25\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(25);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a26\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(26);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a27\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(27);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a28\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(28);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a29\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(29);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a30\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(30);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a31\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(31);
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a32\ <= \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(32);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCCOMB_X34_Y23_N4
\IF_BLOCK|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~4_combout\ = (\IF_BLOCK|pc\(2) & (\IF_BLOCK|Add3~3\ $ (GND))) # (!\IF_BLOCK|pc\(2) & (!\IF_BLOCK|Add3~3\ & VCC))
-- \IF_BLOCK|Add3~5\ = CARRY((\IF_BLOCK|pc\(2) & !\IF_BLOCK|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(2),
	datad => VCC,
	cin => \IF_BLOCK|Add3~3\,
	combout => \IF_BLOCK|Add3~4_combout\,
	cout => \IF_BLOCK|Add3~5\);

-- Location: LCCOMB_X34_Y23_N26
\IF_BLOCK|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~26_combout\ = (\IF_BLOCK|pc\(13) & (!\IF_BLOCK|Add3~25\)) # (!\IF_BLOCK|pc\(13) & ((\IF_BLOCK|Add3~25\) # (GND)))
-- \IF_BLOCK|Add3~27\ = CARRY((!\IF_BLOCK|Add3~25\) # (!\IF_BLOCK|pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(13),
	datad => VCC,
	cin => \IF_BLOCK|Add3~25\,
	combout => \IF_BLOCK|Add3~26_combout\,
	cout => \IF_BLOCK|Add3~27\);

-- Location: M4K_X37_Y22
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "IF_BLOCK:IF_BLOCK|altshift_taps:jump_predicted_out_rtl_0|shift_taps_p1m:auto_generated|altsyncram_fg31:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 33,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 33,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 33,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 33,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \ALT_INV_clk~clkctrl_outclk\,
	clk1 => \ALT_INV_clk~clkctrl_outclk\,
	portadatain => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X34_Y23_N13
\IF_BLOCK|pc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(10));

-- Location: LCFF_X34_Y23_N21
\IF_BLOCK|pc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(13));

-- Location: LCFF_X34_Y22_N25
\IF_BLOCK|pc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(18));

-- Location: LCFF_X34_Y22_N13
\IF_BLOCK|pc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(22));

-- Location: LCFF_X34_Y22_N21
\IF_BLOCK|pc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(23));

-- Location: LCFF_X34_Y22_N17
\IF_BLOCK|pc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(24));

-- Location: LCFF_X49_Y1_N25
\ID_BLOCK|ir[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(13));

-- Location: LCFF_X38_Y20_N7
\EX_BLOCK|new_pc_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|new_pc_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(2));

-- Location: LCFF_X38_Y20_N19
\EX_BLOCK|new_pc_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|new_pc_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(4));

-- Location: LCFF_X38_Y20_N23
\EX_BLOCK|new_pc_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|new_pc_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(6));

-- Location: LCFF_X38_Y20_N11
\EX_BLOCK|new_pc_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(7));

-- Location: LCCOMB_X38_Y20_N10
\IF_BLOCK|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~3_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a25\ & (\EX_BLOCK|new_pc_out\(7) & (\EX_BLOCK|new_pc_out\(6) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a26\)))) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a25\ & (!\EX_BLOCK|new_pc_out\(7) & (\EX_BLOCK|new_pc_out\(6) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a25\,
	datab => \EX_BLOCK|new_pc_out\(6),
	datac => \EX_BLOCK|new_pc_out\(7),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a26\,
	combout => \IF_BLOCK|Equal0~3_combout\);

-- Location: LCFF_X39_Y21_N29
\EX_BLOCK|new_pc_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|new_pc_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(12));

-- Location: LCFF_X38_Y21_N13
\EX_BLOCK|new_pc_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(13));

-- Location: LCCOMB_X38_Y21_N12
\IF_BLOCK|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~7_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a19\ & (\EX_BLOCK|new_pc_out\(13) & (\EX_BLOCK|new_pc_out\(12) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a20\)))) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a19\ & (!\EX_BLOCK|new_pc_out\(13) & (\EX_BLOCK|new_pc_out\(12) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a19\,
	datab => \EX_BLOCK|new_pc_out\(12),
	datac => \EX_BLOCK|new_pc_out\(13),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a20\,
	combout => \IF_BLOCK|Equal0~7_combout\);

-- Location: LCCOMB_X38_Y22_N16
\IF_BLOCK|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~13_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a7\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a5\ & (\EX_BLOCK|new_pc_out\(15) & 
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a6\))) # (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a7\ & (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a5\ & 
-- (!\EX_BLOCK|new_pc_out\(15) & !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a7\,
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a5\,
	datac => \EX_BLOCK|new_pc_out\(15),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a6\,
	combout => \IF_BLOCK|Equal0~13_combout\);

-- Location: LCCOMB_X38_Y22_N14
\IF_BLOCK|Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~15_combout\ = (\EX_BLOCK|new_pc_out\(15) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a4\ & 
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a2\))) # (!\EX_BLOCK|new_pc_out\(15) & (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a4\ & !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_BLOCK|new_pc_out\(15),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a4\,
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	combout => \IF_BLOCK|Equal0~15_combout\);

-- Location: LCCOMB_X38_Y21_N16
\IF_BLOCK|Equal0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~16_combout\ = (\IF_BLOCK|Equal0~15_combout\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a1\ $ (!\EX_BLOCK|new_pc_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a1\,
	datab => \EX_BLOCK|new_pc_out\(15),
	datad => \IF_BLOCK|Equal0~15_combout\,
	combout => \IF_BLOCK|Equal0~16_combout\);

-- Location: LCFF_X49_Y1_N3
\IF_BLOCK|ir_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(13));

-- Location: LCFF_X39_Y20_N29
\EX_BLOCK|imm_pom[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(2));

-- Location: LCFF_X38_Y20_N3
\EX_BLOCK|imm_pom[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(4));

-- Location: LCFF_X34_Y20_N23
\EX_BLOCK|imm_pom[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(6));

-- Location: LCFF_X38_Y20_N25
\EX_BLOCK|imm_pom[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|imm\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(7));

-- Location: LCFF_X39_Y21_N31
\EX_BLOCK|imm_pom[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(12));

-- Location: LCFF_X39_Y21_N13
\EX_BLOCK|imm_pom[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(13));

-- Location: LCFF_X39_Y21_N19
\ID_BLOCK|imm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(2));

-- Location: LCFF_X38_Y20_N31
\ID_BLOCK|imm[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(4));

-- Location: LCFF_X34_Y20_N19
\ID_BLOCK|imm[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(6));

-- Location: LCFF_X34_Y20_N29
\ID_BLOCK|imm[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(7));

-- Location: LCFF_X39_Y21_N11
\ID_BLOCK|imm[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(12));

-- Location: LCFF_X39_Y21_N1
\ID_BLOCK|imm[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[13]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(13));

-- Location: LCFF_X36_Y23_N19
\ID_BLOCK|ir[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(2));

-- Location: LCCOMB_X39_Y21_N18
\ID_BLOCK|imm[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[2]~4_combout\ = (\ID_BLOCK|imm[11]~1_combout\ & (\ID_BLOCK|ir\(2))) # (!\ID_BLOCK|imm[11]~1_combout\ & ((\ID_BLOCK|ir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(2),
	datac => \ID_BLOCK|imm[11]~1_combout\,
	datad => \ID_BLOCK|ir\(13),
	combout => \ID_BLOCK|imm[2]~4_combout\);

-- Location: LCFF_X35_Y23_N23
\ID_BLOCK|ir[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(4));

-- Location: LCCOMB_X38_Y20_N30
\ID_BLOCK|imm[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[4]~6_combout\ = (\ID_BLOCK|imm[11]~1_combout\ & (\ID_BLOCK|ir\(4))) # (!\ID_BLOCK|imm[11]~1_combout\ & ((\ID_BLOCK|ir\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(4),
	datac => \ID_BLOCK|ir\(15),
	datad => \ID_BLOCK|imm[11]~1_combout\,
	combout => \ID_BLOCK|imm[4]~6_combout\);

-- Location: LCFF_X34_Y20_N9
\ID_BLOCK|ir[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(6));

-- Location: LCCOMB_X34_Y20_N18
\ID_BLOCK|imm[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[6]~8_combout\ = (\ID_BLOCK|ir\(6) & ((\ID_BLOCK|imm[11]~0_combout\) # ((\ID_BLOCK|ir\(31)) # (!\ID_BLOCK|ir\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|imm[11]~0_combout\,
	datab => \ID_BLOCK|ir\(6),
	datac => \ID_BLOCK|ir\(30),
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[6]~8_combout\);

-- Location: LCFF_X34_Y20_N15
\ID_BLOCK|ir[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(7));

-- Location: LCCOMB_X34_Y20_N28
\ID_BLOCK|imm[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[7]~9_combout\ = (\ID_BLOCK|ir\(7) & ((\ID_BLOCK|imm[11]~0_combout\) # ((\ID_BLOCK|ir\(31)) # (!\ID_BLOCK|ir\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|imm[11]~0_combout\,
	datab => \ID_BLOCK|ir\(7),
	datac => \ID_BLOCK|ir\(30),
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[7]~9_combout\);

-- Location: LCCOMB_X35_Y20_N6
\ID_BLOCK|imm[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~13_combout\ = (!\ID_BLOCK|ir\(28) & (\ID_BLOCK|ir\(31) & \ID_BLOCK|ir\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(28),
	datac => \ID_BLOCK|ir\(31),
	datad => \ID_BLOCK|ir\(29),
	combout => \ID_BLOCK|imm[11]~13_combout\);

-- Location: LCCOMB_X39_Y21_N10
\ID_BLOCK|imm[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[12]~19_combout\ = (\ID_BLOCK|ir\(12) & ((\ID_BLOCK|imm[11]~17_combout\) # ((\ID_BLOCK|ir\(22) & \ID_BLOCK|imm[15]~15_combout\)))) # (!\ID_BLOCK|ir\(12) & (\ID_BLOCK|ir\(22) & ((\ID_BLOCK|imm[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(12),
	datab => \ID_BLOCK|ir\(22),
	datac => \ID_BLOCK|imm[11]~17_combout\,
	datad => \ID_BLOCK|imm[15]~15_combout\,
	combout => \ID_BLOCK|imm[12]~19_combout\);

-- Location: LCCOMB_X39_Y21_N0
\ID_BLOCK|imm[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[13]~20_combout\ = (\ID_BLOCK|imm[15]~15_combout\ & ((\ID_BLOCK|ir\(23)) # ((\ID_BLOCK|imm[11]~17_combout\ & \ID_BLOCK|ir\(13))))) # (!\ID_BLOCK|imm[15]~15_combout\ & (((\ID_BLOCK|imm[11]~17_combout\ & \ID_BLOCK|ir\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|imm[15]~15_combout\,
	datab => \ID_BLOCK|ir\(23),
	datac => \ID_BLOCK|imm[11]~17_combout\,
	datad => \ID_BLOCK|ir\(13),
	combout => \ID_BLOCK|imm[13]~20_combout\);

-- Location: LCFF_X35_Y23_N11
\IF_BLOCK|ir_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(2));

-- Location: LCFF_X35_Y23_N25
\IF_BLOCK|ir_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(4));

-- Location: LCFF_X35_Y23_N7
\IF_BLOCK|ir_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(6));

-- Location: LCFF_X34_Y20_N5
\IF_BLOCK|ir_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(7));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(2),
	combout => \ir_in~combout\(2));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(4),
	combout => \ir_in~combout\(4));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(6),
	combout => \ir_in~combout\(6));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(7),
	combout => \ir_in~combout\(7));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y1_N24
\ID_BLOCK|ir[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[13]~feeder_combout\ = \IF_BLOCK|ir_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(13),
	combout => \ID_BLOCK|ir[13]~feeder_combout\);

-- Location: LCCOMB_X38_Y20_N6
\EX_BLOCK|new_pc_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|new_pc_out[2]~feeder_combout\ = \EX_BLOCK|imm_pom\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|imm_pom\(2),
	combout => \EX_BLOCK|new_pc_out[2]~feeder_combout\);

-- Location: LCCOMB_X38_Y20_N18
\EX_BLOCK|new_pc_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|new_pc_out[4]~feeder_combout\ = \EX_BLOCK|imm_pom\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|imm_pom\(4),
	combout => \EX_BLOCK|new_pc_out[4]~feeder_combout\);

-- Location: LCCOMB_X38_Y20_N22
\EX_BLOCK|new_pc_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|new_pc_out[6]~feeder_combout\ = \EX_BLOCK|imm_pom\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|imm_pom\(6),
	combout => \EX_BLOCK|new_pc_out[6]~feeder_combout\);

-- Location: LCCOMB_X39_Y21_N28
\EX_BLOCK|new_pc_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|new_pc_out[12]~feeder_combout\ = \EX_BLOCK|imm_pom\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|imm_pom\(12),
	combout => \EX_BLOCK|new_pc_out[12]~feeder_combout\);

-- Location: LCCOMB_X39_Y20_N28
\EX_BLOCK|imm_pom[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[2]~feeder_combout\ = \ID_BLOCK|imm\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(2),
	combout => \EX_BLOCK|imm_pom[2]~feeder_combout\);

-- Location: LCCOMB_X38_Y20_N2
\EX_BLOCK|imm_pom[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[4]~feeder_combout\ = \ID_BLOCK|imm\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(4),
	combout => \EX_BLOCK|imm_pom[4]~feeder_combout\);

-- Location: LCCOMB_X34_Y20_N22
\EX_BLOCK|imm_pom[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[6]~feeder_combout\ = \ID_BLOCK|imm\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(6),
	combout => \EX_BLOCK|imm_pom[6]~feeder_combout\);

-- Location: LCCOMB_X39_Y21_N30
\EX_BLOCK|imm_pom[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[12]~feeder_combout\ = \ID_BLOCK|imm\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(12),
	combout => \EX_BLOCK|imm_pom[12]~feeder_combout\);

-- Location: LCCOMB_X39_Y21_N12
\EX_BLOCK|imm_pom[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[13]~feeder_combout\ = \ID_BLOCK|imm\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(13),
	combout => \EX_BLOCK|imm_pom[13]~feeder_combout\);

-- Location: LCCOMB_X34_Y20_N8
\ID_BLOCK|ir[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[6]~feeder_combout\ = \IF_BLOCK|ir_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(6),
	combout => \ID_BLOCK|ir[6]~feeder_combout\);

-- Location: LCCOMB_X34_Y20_N4
\IF_BLOCK|ir_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[7]~feeder_combout\ = \ir_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(7),
	combout => \IF_BLOCK|ir_out[7]~feeder_combout\);

-- Location: LCCOMB_X49_Y1_N2
\IF_BLOCK|ir_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[13]~feeder_combout\ = \ir_in~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(13),
	combout => \IF_BLOCK|ir_out[13]~feeder_combout\);

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

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(0),
	combout => \ir_in~combout\(0));

-- Location: LCCOMB_X35_Y23_N0
\IF_BLOCK|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~0_combout\ = (\IF_BLOCK|pc\(0) & (\ir_in~combout\(0) $ (VCC))) # (!\IF_BLOCK|pc\(0) & (\ir_in~combout\(0) & VCC))
-- \IF_BLOCK|Add2~1\ = CARRY((\IF_BLOCK|pc\(0) & \ir_in~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(0),
	datab => \ir_in~combout\(0),
	datad => VCC,
	combout => \IF_BLOCK|Add2~0_combout\,
	cout => \IF_BLOCK|Add2~1\);

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y21_N14
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\ = \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0) $ (VCC)
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\ = CARRY(\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0),
	datad => VCC,
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\,
	cout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\);

-- Location: LCCOMB_X36_Y21_N16
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\)) # (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & ((\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\) # 
-- (GND)))
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\ = CARRY((!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1),
	datad => VCC,
	cin => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\,
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\,
	cout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\);

-- Location: LCCOMB_X36_Y21_N22
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ = (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ & 
-- (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\ & ((\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0)) # (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\,
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\,
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\);

-- Location: LCFF_X36_Y21_N23
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|counter_reg_bit6a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1));

-- Location: LCCOMB_X36_Y21_N18
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ = !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\,
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\);

-- Location: LCCOMB_X36_Y21_N28
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\ & 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ & ((\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0)) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\,
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\,
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\);

-- Location: LCFF_X36_Y21_N29
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|counter_reg_bit6a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

-- Location: LCFF_X36_Y22_N23
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a\(0));

-- Location: LCCOMB_X36_Y21_N30
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~0_combout\ = !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|cntr1|current_reg_q_w\(1),
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: LCFF_X36_Y21_N1
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a\(1));

-- Location: LCCOMB_X36_Y21_N0
\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a\(1),
	combout => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(1),
	combout => \ir_in~combout\(1));

-- Location: LCCOMB_X35_Y23_N2
\IF_BLOCK|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~2_combout\ = (\IF_BLOCK|pc\(1) & ((\ir_in~combout\(1) & (\IF_BLOCK|Add2~1\ & VCC)) # (!\ir_in~combout\(1) & (!\IF_BLOCK|Add2~1\)))) # (!\IF_BLOCK|pc\(1) & ((\ir_in~combout\(1) & (!\IF_BLOCK|Add2~1\)) # (!\ir_in~combout\(1) & 
-- ((\IF_BLOCK|Add2~1\) # (GND)))))
-- \IF_BLOCK|Add2~3\ = CARRY((\IF_BLOCK|pc\(1) & (!\ir_in~combout\(1) & !\IF_BLOCK|Add2~1\)) # (!\IF_BLOCK|pc\(1) & ((!\IF_BLOCK|Add2~1\) # (!\ir_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(1),
	datab => \ir_in~combout\(1),
	datad => VCC,
	cin => \IF_BLOCK|Add2~1\,
	combout => \IF_BLOCK|Add2~2_combout\,
	cout => \IF_BLOCK|Add2~3\);

-- Location: LCCOMB_X35_Y23_N4
\IF_BLOCK|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~4_combout\ = ((\ir_in~combout\(2) $ (\IF_BLOCK|pc\(2) $ (!\IF_BLOCK|Add2~3\)))) # (GND)
-- \IF_BLOCK|Add2~5\ = CARRY((\ir_in~combout\(2) & ((\IF_BLOCK|pc\(2)) # (!\IF_BLOCK|Add2~3\))) # (!\ir_in~combout\(2) & (\IF_BLOCK|pc\(2) & !\IF_BLOCK|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(2),
	datab => \IF_BLOCK|pc\(2),
	datad => VCC,
	cin => \IF_BLOCK|Add2~3\,
	combout => \IF_BLOCK|Add2~4_combout\,
	cout => \IF_BLOCK|Add2~5\);

-- Location: LCCOMB_X33_Y23_N4
\IF_BLOCK|pc_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~3_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~4_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~4_combout\,
	datab => \IF_BLOCK|Add2~4_combout\,
	datad => \IF_BLOCK|pc_next~0_combout\,
	combout => \IF_BLOCK|pc_next~3_combout\);

-- Location: LCFF_X33_Y23_N5
\IF_BLOCK|pc_next[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(2));

-- Location: LCFF_X34_Y23_N5
\IF_BLOCK|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(2));

-- Location: LCFF_X34_Y23_N1
\IF_BLOCK|pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(0));

-- Location: LCCOMB_X34_Y23_N0
\IF_BLOCK|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~0_combout\ = \IF_BLOCK|pc\(0) $ (VCC)
-- \IF_BLOCK|Add3~1\ = CARRY(\IF_BLOCK|pc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(0),
	datad => VCC,
	combout => \IF_BLOCK|Add3~0_combout\,
	cout => \IF_BLOCK|Add3~1\);

-- Location: LCCOMB_X34_Y23_N2
\IF_BLOCK|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~2_combout\ = (\IF_BLOCK|pc\(1) & (!\IF_BLOCK|Add3~1\)) # (!\IF_BLOCK|pc\(1) & ((\IF_BLOCK|Add3~1\) # (GND)))
-- \IF_BLOCK|Add3~3\ = CARRY((!\IF_BLOCK|Add3~1\) # (!\IF_BLOCK|pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(1),
	datad => VCC,
	cin => \IF_BLOCK|Add3~1\,
	combout => \IF_BLOCK|Add3~2_combout\,
	cout => \IF_BLOCK|Add3~3\);

-- Location: LCCOMB_X33_Y23_N2
\IF_BLOCK|pc_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~2_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~2_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~2_combout\,
	datad => \IF_BLOCK|Add2~2_combout\,
	combout => \IF_BLOCK|pc_next~2_combout\);

-- Location: LCFF_X33_Y23_N3
\IF_BLOCK|pc_next[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(1));

-- Location: LCFF_X34_Y23_N3
\IF_BLOCK|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(1));

-- Location: LCCOMB_X34_Y23_N6
\IF_BLOCK|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~6_combout\ = (\IF_BLOCK|pc\(3) & (!\IF_BLOCK|Add3~5\)) # (!\IF_BLOCK|pc\(3) & ((\IF_BLOCK|Add3~5\) # (GND)))
-- \IF_BLOCK|Add3~7\ = CARRY((!\IF_BLOCK|Add3~5\) # (!\IF_BLOCK|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(3),
	datad => VCC,
	cin => \IF_BLOCK|Add3~5\,
	combout => \IF_BLOCK|Add3~6_combout\,
	cout => \IF_BLOCK|Add3~7\);

-- Location: LCCOMB_X34_Y23_N8
\IF_BLOCK|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~8_combout\ = (\IF_BLOCK|pc\(4) & (\IF_BLOCK|Add3~7\ $ (GND))) # (!\IF_BLOCK|pc\(4) & (!\IF_BLOCK|Add3~7\ & VCC))
-- \IF_BLOCK|Add3~9\ = CARRY((\IF_BLOCK|pc\(4) & !\IF_BLOCK|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(4),
	datad => VCC,
	cin => \IF_BLOCK|Add3~7\,
	combout => \IF_BLOCK|Add3~8_combout\,
	cout => \IF_BLOCK|Add3~9\);

-- Location: LCCOMB_X38_Y23_N26
\IF_BLOCK|pc_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~5_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~8_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add2~8_combout\,
	datac => \IF_BLOCK|Add3~8_combout\,
	datad => \IF_BLOCK|pc_next~0_combout\,
	combout => \IF_BLOCK|pc_next~5_combout\);

-- Location: LCFF_X38_Y23_N27
\IF_BLOCK|pc_next[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(4));

-- Location: LCFF_X34_Y23_N27
\IF_BLOCK|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(4));

-- Location: LCCOMB_X35_Y23_N6
\IF_BLOCK|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~6_combout\ = (\ir_in~combout\(3) & ((\IF_BLOCK|pc\(3) & (\IF_BLOCK|Add2~5\ & VCC)) # (!\IF_BLOCK|pc\(3) & (!\IF_BLOCK|Add2~5\)))) # (!\ir_in~combout\(3) & ((\IF_BLOCK|pc\(3) & (!\IF_BLOCK|Add2~5\)) # (!\IF_BLOCK|pc\(3) & 
-- ((\IF_BLOCK|Add2~5\) # (GND)))))
-- \IF_BLOCK|Add2~7\ = CARRY((\ir_in~combout\(3) & (!\IF_BLOCK|pc\(3) & !\IF_BLOCK|Add2~5\)) # (!\ir_in~combout\(3) & ((!\IF_BLOCK|Add2~5\) # (!\IF_BLOCK|pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(3),
	datab => \IF_BLOCK|pc\(3),
	datad => VCC,
	cin => \IF_BLOCK|Add2~5\,
	combout => \IF_BLOCK|Add2~6_combout\,
	cout => \IF_BLOCK|Add2~7\);

-- Location: LCCOMB_X33_Y23_N14
\IF_BLOCK|pc_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~4_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~6_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~6_combout\,
	datab => \IF_BLOCK|Add2~6_combout\,
	datad => \IF_BLOCK|pc_next~0_combout\,
	combout => \IF_BLOCK|pc_next~4_combout\);

-- Location: LCFF_X33_Y23_N15
\IF_BLOCK|pc_next[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(3));

-- Location: LCFF_X34_Y23_N7
\IF_BLOCK|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(3));

-- Location: LCCOMB_X35_Y23_N8
\IF_BLOCK|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~8_combout\ = ((\ir_in~combout\(4) $ (\IF_BLOCK|pc\(4) $ (!\IF_BLOCK|Add2~7\)))) # (GND)
-- \IF_BLOCK|Add2~9\ = CARRY((\ir_in~combout\(4) & ((\IF_BLOCK|pc\(4)) # (!\IF_BLOCK|Add2~7\))) # (!\ir_in~combout\(4) & (\IF_BLOCK|pc\(4) & !\IF_BLOCK|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(4),
	datab => \IF_BLOCK|pc\(4),
	datad => VCC,
	cin => \IF_BLOCK|Add2~7\,
	combout => \IF_BLOCK|Add2~8_combout\,
	cout => \IF_BLOCK|Add2~9\);

-- Location: LCCOMB_X35_Y23_N10
\IF_BLOCK|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~10_combout\ = (\ir_in~combout\(5) & ((\IF_BLOCK|pc\(5) & (\IF_BLOCK|Add2~9\ & VCC)) # (!\IF_BLOCK|pc\(5) & (!\IF_BLOCK|Add2~9\)))) # (!\ir_in~combout\(5) & ((\IF_BLOCK|pc\(5) & (!\IF_BLOCK|Add2~9\)) # (!\IF_BLOCK|pc\(5) & 
-- ((\IF_BLOCK|Add2~9\) # (GND)))))
-- \IF_BLOCK|Add2~11\ = CARRY((\ir_in~combout\(5) & (!\IF_BLOCK|pc\(5) & !\IF_BLOCK|Add2~9\)) # (!\ir_in~combout\(5) & ((!\IF_BLOCK|Add2~9\) # (!\IF_BLOCK|pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(5),
	datab => \IF_BLOCK|pc\(5),
	datad => VCC,
	cin => \IF_BLOCK|Add2~9\,
	combout => \IF_BLOCK|Add2~10_combout\,
	cout => \IF_BLOCK|Add2~11\);

-- Location: LCCOMB_X34_Y23_N10
\IF_BLOCK|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~10_combout\ = (\IF_BLOCK|pc\(5) & (!\IF_BLOCK|Add3~9\)) # (!\IF_BLOCK|pc\(5) & ((\IF_BLOCK|Add3~9\) # (GND)))
-- \IF_BLOCK|Add3~11\ = CARRY((!\IF_BLOCK|Add3~9\) # (!\IF_BLOCK|pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(5),
	datad => VCC,
	cin => \IF_BLOCK|Add3~9\,
	combout => \IF_BLOCK|Add3~10_combout\,
	cout => \IF_BLOCK|Add3~11\);

-- Location: LCCOMB_X33_Y23_N8
\IF_BLOCK|pc_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~6_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~10_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~10_combout\,
	datad => \IF_BLOCK|Add3~10_combout\,
	combout => \IF_BLOCK|pc_next~6_combout\);

-- Location: LCFF_X33_Y23_N9
\IF_BLOCK|pc_next[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(5));

-- Location: LCFF_X34_Y23_N19
\IF_BLOCK|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(5));

-- Location: LCCOMB_X34_Y23_N12
\IF_BLOCK|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~12_combout\ = (\IF_BLOCK|pc\(6) & (\IF_BLOCK|Add3~11\ $ (GND))) # (!\IF_BLOCK|pc\(6) & (!\IF_BLOCK|Add3~11\ & VCC))
-- \IF_BLOCK|Add3~13\ = CARRY((\IF_BLOCK|pc\(6) & !\IF_BLOCK|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(6),
	datad => VCC,
	cin => \IF_BLOCK|Add3~11\,
	combout => \IF_BLOCK|Add3~12_combout\,
	cout => \IF_BLOCK|Add3~13\);

-- Location: LCCOMB_X36_Y23_N0
\IF_BLOCK|pc_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~7_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~12_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add2~12_combout\,
	datac => \IF_BLOCK|pc_next~0_combout\,
	datad => \IF_BLOCK|Add3~12_combout\,
	combout => \IF_BLOCK|pc_next~7_combout\);

-- Location: LCFF_X36_Y23_N1
\IF_BLOCK|pc_next[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(6));

-- Location: LCFF_X34_Y23_N23
\IF_BLOCK|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(6));

-- Location: LCCOMB_X34_Y23_N14
\IF_BLOCK|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~14_combout\ = (\IF_BLOCK|pc\(7) & (!\IF_BLOCK|Add3~13\)) # (!\IF_BLOCK|pc\(7) & ((\IF_BLOCK|Add3~13\) # (GND)))
-- \IF_BLOCK|Add3~15\ = CARRY((!\IF_BLOCK|Add3~13\) # (!\IF_BLOCK|pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(7),
	datad => VCC,
	cin => \IF_BLOCK|Add3~13\,
	combout => \IF_BLOCK|Add3~14_combout\,
	cout => \IF_BLOCK|Add3~15\);

-- Location: LCCOMB_X34_Y23_N16
\IF_BLOCK|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~16_combout\ = (\IF_BLOCK|pc\(8) & (\IF_BLOCK|Add3~15\ $ (GND))) # (!\IF_BLOCK|pc\(8) & (!\IF_BLOCK|Add3~15\ & VCC))
-- \IF_BLOCK|Add3~17\ = CARRY((\IF_BLOCK|pc\(8) & !\IF_BLOCK|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(8),
	datad => VCC,
	cin => \IF_BLOCK|Add3~15\,
	combout => \IF_BLOCK|Add3~16_combout\,
	cout => \IF_BLOCK|Add3~17\);

-- Location: LCCOMB_X34_Y23_N18
\IF_BLOCK|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~18_combout\ = (\IF_BLOCK|pc\(9) & (!\IF_BLOCK|Add3~17\)) # (!\IF_BLOCK|pc\(9) & ((\IF_BLOCK|Add3~17\) # (GND)))
-- \IF_BLOCK|Add3~19\ = CARRY((!\IF_BLOCK|Add3~17\) # (!\IF_BLOCK|pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(9),
	datad => VCC,
	cin => \IF_BLOCK|Add3~17\,
	combout => \IF_BLOCK|Add3~18_combout\,
	cout => \IF_BLOCK|Add3~19\);

-- Location: LCCOMB_X34_Y23_N20
\IF_BLOCK|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~20_combout\ = (\IF_BLOCK|pc\(10) & (\IF_BLOCK|Add3~19\ $ (GND))) # (!\IF_BLOCK|pc\(10) & (!\IF_BLOCK|Add3~19\ & VCC))
-- \IF_BLOCK|Add3~21\ = CARRY((\IF_BLOCK|pc\(10) & !\IF_BLOCK|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(10),
	datad => VCC,
	cin => \IF_BLOCK|Add3~19\,
	combout => \IF_BLOCK|Add3~20_combout\,
	cout => \IF_BLOCK|Add3~21\);

-- Location: LCCOMB_X34_Y23_N22
\IF_BLOCK|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~22_combout\ = (\IF_BLOCK|pc\(11) & (!\IF_BLOCK|Add3~21\)) # (!\IF_BLOCK|pc\(11) & ((\IF_BLOCK|Add3~21\) # (GND)))
-- \IF_BLOCK|Add3~23\ = CARRY((!\IF_BLOCK|Add3~21\) # (!\IF_BLOCK|pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(11),
	datad => VCC,
	cin => \IF_BLOCK|Add3~21\,
	combout => \IF_BLOCK|Add3~22_combout\,
	cout => \IF_BLOCK|Add3~23\);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(10),
	combout => \ir_in~combout\(10));

-- Location: LCCOMB_X33_Y23_N0
\IF_BLOCK|pc_next~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~10_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~18_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add2~18_combout\,
	datab => \IF_BLOCK|Add3~18_combout\,
	datad => \IF_BLOCK|pc_next~0_combout\,
	combout => \IF_BLOCK|pc_next~10_combout\);

-- Location: LCFF_X33_Y23_N1
\IF_BLOCK|pc_next[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(9));

-- Location: LCFF_X34_Y23_N25
\IF_BLOCK|pc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(9));

-- Location: LCCOMB_X35_Y23_N12
\IF_BLOCK|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~12_combout\ = ((\ir_in~combout\(6) $ (\IF_BLOCK|pc\(6) $ (!\IF_BLOCK|Add2~11\)))) # (GND)
-- \IF_BLOCK|Add2~13\ = CARRY((\ir_in~combout\(6) & ((\IF_BLOCK|pc\(6)) # (!\IF_BLOCK|Add2~11\))) # (!\ir_in~combout\(6) & (\IF_BLOCK|pc\(6) & !\IF_BLOCK|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(6),
	datab => \IF_BLOCK|pc\(6),
	datad => VCC,
	cin => \IF_BLOCK|Add2~11\,
	combout => \IF_BLOCK|Add2~12_combout\,
	cout => \IF_BLOCK|Add2~13\);

-- Location: LCCOMB_X35_Y23_N14
\IF_BLOCK|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~14_combout\ = (\ir_in~combout\(7) & ((\IF_BLOCK|pc\(7) & (\IF_BLOCK|Add2~13\ & VCC)) # (!\IF_BLOCK|pc\(7) & (!\IF_BLOCK|Add2~13\)))) # (!\ir_in~combout\(7) & ((\IF_BLOCK|pc\(7) & (!\IF_BLOCK|Add2~13\)) # (!\IF_BLOCK|pc\(7) & 
-- ((\IF_BLOCK|Add2~13\) # (GND)))))
-- \IF_BLOCK|Add2~15\ = CARRY((\ir_in~combout\(7) & (!\IF_BLOCK|pc\(7) & !\IF_BLOCK|Add2~13\)) # (!\ir_in~combout\(7) & ((!\IF_BLOCK|Add2~13\) # (!\IF_BLOCK|pc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(7),
	datab => \IF_BLOCK|pc\(7),
	datad => VCC,
	cin => \IF_BLOCK|Add2~13\,
	combout => \IF_BLOCK|Add2~14_combout\,
	cout => \IF_BLOCK|Add2~15\);

-- Location: LCCOMB_X35_Y21_N24
\IF_BLOCK|pc_next~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~8_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~14_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~14_combout\,
	datab => \IF_BLOCK|pc_next~0_combout\,
	datad => \IF_BLOCK|Add2~14_combout\,
	combout => \IF_BLOCK|pc_next~8_combout\);

-- Location: LCFF_X35_Y21_N25
\IF_BLOCK|pc_next[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(7));

-- Location: LCFF_X35_Y23_N3
\IF_BLOCK|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(7));

-- Location: LCCOMB_X35_Y23_N16
\IF_BLOCK|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~16_combout\ = ((\ir_in~combout\(8) $ (\IF_BLOCK|pc\(8) $ (!\IF_BLOCK|Add2~15\)))) # (GND)
-- \IF_BLOCK|Add2~17\ = CARRY((\ir_in~combout\(8) & ((\IF_BLOCK|pc\(8)) # (!\IF_BLOCK|Add2~15\))) # (!\ir_in~combout\(8) & (\IF_BLOCK|pc\(8) & !\IF_BLOCK|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(8),
	datab => \IF_BLOCK|pc\(8),
	datad => VCC,
	cin => \IF_BLOCK|Add2~15\,
	combout => \IF_BLOCK|Add2~16_combout\,
	cout => \IF_BLOCK|Add2~17\);

-- Location: LCCOMB_X33_Y23_N6
\IF_BLOCK|pc_next~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~9_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~16_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datab => \IF_BLOCK|Add2~16_combout\,
	datac => \IF_BLOCK|Add3~16_combout\,
	combout => \IF_BLOCK|pc_next~9_combout\);

-- Location: LCFF_X33_Y23_N7
\IF_BLOCK|pc_next[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(8));

-- Location: LCFF_X34_Y23_N17
\IF_BLOCK|pc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(8));

-- Location: LCCOMB_X35_Y23_N18
\IF_BLOCK|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~18_combout\ = (\ir_in~combout\(9) & ((\IF_BLOCK|pc\(9) & (\IF_BLOCK|Add2~17\ & VCC)) # (!\IF_BLOCK|pc\(9) & (!\IF_BLOCK|Add2~17\)))) # (!\ir_in~combout\(9) & ((\IF_BLOCK|pc\(9) & (!\IF_BLOCK|Add2~17\)) # (!\IF_BLOCK|pc\(9) & 
-- ((\IF_BLOCK|Add2~17\) # (GND)))))
-- \IF_BLOCK|Add2~19\ = CARRY((\ir_in~combout\(9) & (!\IF_BLOCK|pc\(9) & !\IF_BLOCK|Add2~17\)) # (!\ir_in~combout\(9) & ((!\IF_BLOCK|Add2~17\) # (!\IF_BLOCK|pc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(9),
	datab => \IF_BLOCK|pc\(9),
	datad => VCC,
	cin => \IF_BLOCK|Add2~17\,
	combout => \IF_BLOCK|Add2~18_combout\,
	cout => \IF_BLOCK|Add2~19\);

-- Location: LCCOMB_X35_Y23_N20
\IF_BLOCK|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~20_combout\ = ((\IF_BLOCK|pc\(10) $ (\ir_in~combout\(10) $ (!\IF_BLOCK|Add2~19\)))) # (GND)
-- \IF_BLOCK|Add2~21\ = CARRY((\IF_BLOCK|pc\(10) & ((\ir_in~combout\(10)) # (!\IF_BLOCK|Add2~19\))) # (!\IF_BLOCK|pc\(10) & (\ir_in~combout\(10) & !\IF_BLOCK|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(10),
	datab => \ir_in~combout\(10),
	datad => VCC,
	cin => \IF_BLOCK|Add2~19\,
	combout => \IF_BLOCK|Add2~20_combout\,
	cout => \IF_BLOCK|Add2~21\);

-- Location: LCCOMB_X35_Y23_N22
\IF_BLOCK|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~22_combout\ = (\IF_BLOCK|pc\(11) & ((\ir_in~combout\(21) & (\IF_BLOCK|Add2~21\ & VCC)) # (!\ir_in~combout\(21) & (!\IF_BLOCK|Add2~21\)))) # (!\IF_BLOCK|pc\(11) & ((\ir_in~combout\(21) & (!\IF_BLOCK|Add2~21\)) # (!\ir_in~combout\(21) & 
-- ((\IF_BLOCK|Add2~21\) # (GND)))))
-- \IF_BLOCK|Add2~23\ = CARRY((\IF_BLOCK|pc\(11) & (!\ir_in~combout\(21) & !\IF_BLOCK|Add2~21\)) # (!\IF_BLOCK|pc\(11) & ((!\IF_BLOCK|Add2~21\) # (!\ir_in~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(11),
	datab => \ir_in~combout\(21),
	datad => VCC,
	cin => \IF_BLOCK|Add2~21\,
	combout => \IF_BLOCK|Add2~22_combout\,
	cout => \IF_BLOCK|Add2~23\);

-- Location: LCCOMB_X36_Y23_N26
\IF_BLOCK|pc_next~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~12_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~22_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~22_combout\,
	datad => \IF_BLOCK|Add2~22_combout\,
	combout => \IF_BLOCK|pc_next~12_combout\);

-- Location: LCFF_X36_Y23_N27
\IF_BLOCK|pc_next[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(11));

-- Location: LCFF_X34_Y23_N15
\IF_BLOCK|pc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(11));

-- Location: LCCOMB_X34_Y23_N24
\IF_BLOCK|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~24_combout\ = (\IF_BLOCK|pc\(12) & (\IF_BLOCK|Add3~23\ $ (GND))) # (!\IF_BLOCK|pc\(12) & (!\IF_BLOCK|Add3~23\ & VCC))
-- \IF_BLOCK|Add3~25\ = CARRY((\IF_BLOCK|pc\(12) & !\IF_BLOCK|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(12),
	datad => VCC,
	cin => \IF_BLOCK|Add3~23\,
	combout => \IF_BLOCK|Add3~24_combout\,
	cout => \IF_BLOCK|Add3~25\);

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y23_N24
\IF_BLOCK|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~24_combout\ = ((\IF_BLOCK|pc\(12) $ (\ir_in~combout\(22) $ (!\IF_BLOCK|Add2~23\)))) # (GND)
-- \IF_BLOCK|Add2~25\ = CARRY((\IF_BLOCK|pc\(12) & ((\ir_in~combout\(22)) # (!\IF_BLOCK|Add2~23\))) # (!\IF_BLOCK|pc\(12) & (\ir_in~combout\(22) & !\IF_BLOCK|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(12),
	datab => \ir_in~combout\(22),
	datad => VCC,
	cin => \IF_BLOCK|Add2~23\,
	combout => \IF_BLOCK|Add2~24_combout\,
	cout => \IF_BLOCK|Add2~25\);

-- Location: LCCOMB_X36_Y23_N10
\IF_BLOCK|pc_next~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~13_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~24_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datab => \IF_BLOCK|Add3~24_combout\,
	datad => \IF_BLOCK|Add2~24_combout\,
	combout => \IF_BLOCK|pc_next~13_combout\);

-- Location: LCFF_X36_Y23_N11
\IF_BLOCK|pc_next[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(12));

-- Location: LCFF_X34_Y23_N9
\IF_BLOCK|pc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(12));

-- Location: LCCOMB_X34_Y23_N28
\IF_BLOCK|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~28_combout\ = (\IF_BLOCK|pc\(14) & (\IF_BLOCK|Add3~27\ $ (GND))) # (!\IF_BLOCK|pc\(14) & (!\IF_BLOCK|Add3~27\ & VCC))
-- \IF_BLOCK|Add3~29\ = CARRY((\IF_BLOCK|pc\(14) & !\IF_BLOCK|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(14),
	datad => VCC,
	cin => \IF_BLOCK|Add3~27\,
	combout => \IF_BLOCK|Add3~28_combout\,
	cout => \IF_BLOCK|Add3~29\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y23_N26
\IF_BLOCK|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~26_combout\ = (\IF_BLOCK|pc\(13) & ((\ir_in~combout\(23) & (\IF_BLOCK|Add2~25\ & VCC)) # (!\ir_in~combout\(23) & (!\IF_BLOCK|Add2~25\)))) # (!\IF_BLOCK|pc\(13) & ((\ir_in~combout\(23) & (!\IF_BLOCK|Add2~25\)) # (!\ir_in~combout\(23) & 
-- ((\IF_BLOCK|Add2~25\) # (GND)))))
-- \IF_BLOCK|Add2~27\ = CARRY((\IF_BLOCK|pc\(13) & (!\ir_in~combout\(23) & !\IF_BLOCK|Add2~25\)) # (!\IF_BLOCK|pc\(13) & ((!\IF_BLOCK|Add2~25\) # (!\ir_in~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(13),
	datab => \ir_in~combout\(23),
	datad => VCC,
	cin => \IF_BLOCK|Add2~25\,
	combout => \IF_BLOCK|Add2~26_combout\,
	cout => \IF_BLOCK|Add2~27\);

-- Location: LCCOMB_X35_Y23_N28
\IF_BLOCK|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~28_combout\ = ((\ir_in~combout\(24) $ (\IF_BLOCK|pc\(14) $ (!\IF_BLOCK|Add2~27\)))) # (GND)
-- \IF_BLOCK|Add2~29\ = CARRY((\ir_in~combout\(24) & ((\IF_BLOCK|pc\(14)) # (!\IF_BLOCK|Add2~27\))) # (!\ir_in~combout\(24) & (\IF_BLOCK|pc\(14) & !\IF_BLOCK|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(24),
	datab => \IF_BLOCK|pc\(14),
	datad => VCC,
	cin => \IF_BLOCK|Add2~27\,
	combout => \IF_BLOCK|Add2~28_combout\,
	cout => \IF_BLOCK|Add2~29\);

-- Location: LCCOMB_X33_Y23_N12
\IF_BLOCK|pc_next~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~15_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~28_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datab => \IF_BLOCK|Add3~28_combout\,
	datad => \IF_BLOCK|Add2~28_combout\,
	combout => \IF_BLOCK|pc_next~15_combout\);

-- Location: LCFF_X33_Y23_N13
\IF_BLOCK|pc_next[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(14));

-- Location: LCFF_X34_Y23_N29
\IF_BLOCK|pc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(14));

-- Location: LCCOMB_X35_Y23_N30
\IF_BLOCK|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~30_combout\ = (\IF_BLOCK|pc\(15) & ((\ir_in~combout\(25) & (\IF_BLOCK|Add2~29\ & VCC)) # (!\ir_in~combout\(25) & (!\IF_BLOCK|Add2~29\)))) # (!\IF_BLOCK|pc\(15) & ((\ir_in~combout\(25) & (!\IF_BLOCK|Add2~29\)) # (!\ir_in~combout\(25) & 
-- ((\IF_BLOCK|Add2~29\) # (GND)))))
-- \IF_BLOCK|Add2~31\ = CARRY((\IF_BLOCK|pc\(15) & (!\ir_in~combout\(25) & !\IF_BLOCK|Add2~29\)) # (!\IF_BLOCK|pc\(15) & ((!\IF_BLOCK|Add2~29\) # (!\ir_in~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(15),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~29\,
	combout => \IF_BLOCK|Add2~30_combout\,
	cout => \IF_BLOCK|Add2~31\);

-- Location: LCCOMB_X35_Y22_N0
\IF_BLOCK|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~32_combout\ = ((\IF_BLOCK|pc\(16) $ (\ir_in~combout\(25) $ (!\IF_BLOCK|Add2~31\)))) # (GND)
-- \IF_BLOCK|Add2~33\ = CARRY((\IF_BLOCK|pc\(16) & ((\ir_in~combout\(25)) # (!\IF_BLOCK|Add2~31\))) # (!\IF_BLOCK|pc\(16) & (\ir_in~combout\(25) & !\IF_BLOCK|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(16),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~31\,
	combout => \IF_BLOCK|Add2~32_combout\,
	cout => \IF_BLOCK|Add2~33\);

-- Location: LCCOMB_X35_Y22_N2
\IF_BLOCK|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~34_combout\ = (\ir_in~combout\(25) & ((\IF_BLOCK|pc\(17) & (\IF_BLOCK|Add2~33\ & VCC)) # (!\IF_BLOCK|pc\(17) & (!\IF_BLOCK|Add2~33\)))) # (!\ir_in~combout\(25) & ((\IF_BLOCK|pc\(17) & (!\IF_BLOCK|Add2~33\)) # (!\IF_BLOCK|pc\(17) & 
-- ((\IF_BLOCK|Add2~33\) # (GND)))))
-- \IF_BLOCK|Add2~35\ = CARRY((\ir_in~combout\(25) & (!\IF_BLOCK|pc\(17) & !\IF_BLOCK|Add2~33\)) # (!\ir_in~combout\(25) & ((!\IF_BLOCK|Add2~33\) # (!\IF_BLOCK|pc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(17),
	datad => VCC,
	cin => \IF_BLOCK|Add2~33\,
	combout => \IF_BLOCK|Add2~34_combout\,
	cout => \IF_BLOCK|Add2~35\);

-- Location: LCCOMB_X34_Y23_N30
\IF_BLOCK|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~30_combout\ = (\IF_BLOCK|pc\(15) & (!\IF_BLOCK|Add3~29\)) # (!\IF_BLOCK|pc\(15) & ((\IF_BLOCK|Add3~29\) # (GND)))
-- \IF_BLOCK|Add3~31\ = CARRY((!\IF_BLOCK|Add3~29\) # (!\IF_BLOCK|pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(15),
	datad => VCC,
	cin => \IF_BLOCK|Add3~29\,
	combout => \IF_BLOCK|Add3~30_combout\,
	cout => \IF_BLOCK|Add3~31\);

-- Location: LCCOMB_X36_Y23_N14
\IF_BLOCK|pc_next~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~16_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~30_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~30_combout\,
	datad => \IF_BLOCK|Add3~30_combout\,
	combout => \IF_BLOCK|pc_next~16_combout\);

-- Location: LCFF_X36_Y23_N15
\IF_BLOCK|pc_next[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(15));

-- Location: LCFF_X34_Y23_N31
\IF_BLOCK|pc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(15));

-- Location: LCCOMB_X34_Y22_N0
\IF_BLOCK|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~32_combout\ = (\IF_BLOCK|pc\(16) & (\IF_BLOCK|Add3~31\ $ (GND))) # (!\IF_BLOCK|pc\(16) & (!\IF_BLOCK|Add3~31\ & VCC))
-- \IF_BLOCK|Add3~33\ = CARRY((\IF_BLOCK|pc\(16) & !\IF_BLOCK|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(16),
	datad => VCC,
	cin => \IF_BLOCK|Add3~31\,
	combout => \IF_BLOCK|Add3~32_combout\,
	cout => \IF_BLOCK|Add3~33\);

-- Location: LCCOMB_X38_Y22_N8
\IF_BLOCK|pc_next~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~17_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~32_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|Add3~32_combout\,
	datac => \IF_BLOCK|Add2~32_combout\,
	datad => \IF_BLOCK|pc_next~0_combout\,
	combout => \IF_BLOCK|pc_next~17_combout\);

-- Location: LCFF_X38_Y22_N9
\IF_BLOCK|pc_next[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(16));

-- Location: LCFF_X34_Y22_N31
\IF_BLOCK|pc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(16));

-- Location: LCCOMB_X34_Y22_N2
\IF_BLOCK|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~34_combout\ = (\IF_BLOCK|pc\(17) & (!\IF_BLOCK|Add3~33\)) # (!\IF_BLOCK|pc\(17) & ((\IF_BLOCK|Add3~33\) # (GND)))
-- \IF_BLOCK|Add3~35\ = CARRY((!\IF_BLOCK|Add3~33\) # (!\IF_BLOCK|pc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(17),
	datad => VCC,
	cin => \IF_BLOCK|Add3~33\,
	combout => \IF_BLOCK|Add3~34_combout\,
	cout => \IF_BLOCK|Add3~35\);

-- Location: LCCOMB_X38_Y22_N26
\IF_BLOCK|pc_next~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~18_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~34_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~34_combout\,
	datad => \IF_BLOCK|Add3~34_combout\,
	combout => \IF_BLOCK|pc_next~18_combout\);

-- Location: LCFF_X38_Y22_N27
\IF_BLOCK|pc_next[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(17));

-- Location: LCFF_X35_Y22_N15
\IF_BLOCK|pc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(17));

-- Location: LCCOMB_X34_Y22_N4
\IF_BLOCK|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~36_combout\ = (\IF_BLOCK|pc\(18) & (\IF_BLOCK|Add3~35\ $ (GND))) # (!\IF_BLOCK|pc\(18) & (!\IF_BLOCK|Add3~35\ & VCC))
-- \IF_BLOCK|Add3~37\ = CARRY((\IF_BLOCK|pc\(18) & !\IF_BLOCK|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(18),
	datad => VCC,
	cin => \IF_BLOCK|Add3~35\,
	combout => \IF_BLOCK|Add3~36_combout\,
	cout => \IF_BLOCK|Add3~37\);

-- Location: LCCOMB_X34_Y22_N6
\IF_BLOCK|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~38_combout\ = (\IF_BLOCK|pc\(19) & (!\IF_BLOCK|Add3~37\)) # (!\IF_BLOCK|pc\(19) & ((\IF_BLOCK|Add3~37\) # (GND)))
-- \IF_BLOCK|Add3~39\ = CARRY((!\IF_BLOCK|Add3~37\) # (!\IF_BLOCK|pc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(19),
	datad => VCC,
	cin => \IF_BLOCK|Add3~37\,
	combout => \IF_BLOCK|Add3~38_combout\,
	cout => \IF_BLOCK|Add3~39\);

-- Location: LCCOMB_X35_Y22_N4
\IF_BLOCK|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~36_combout\ = ((\IF_BLOCK|pc\(18) $ (\ir_in~combout\(25) $ (!\IF_BLOCK|Add2~35\)))) # (GND)
-- \IF_BLOCK|Add2~37\ = CARRY((\IF_BLOCK|pc\(18) & ((\ir_in~combout\(25)) # (!\IF_BLOCK|Add2~35\))) # (!\IF_BLOCK|pc\(18) & (\ir_in~combout\(25) & !\IF_BLOCK|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(18),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~35\,
	combout => \IF_BLOCK|Add2~36_combout\,
	cout => \IF_BLOCK|Add2~37\);

-- Location: LCCOMB_X35_Y22_N6
\IF_BLOCK|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~38_combout\ = (\ir_in~combout\(25) & ((\IF_BLOCK|pc\(19) & (\IF_BLOCK|Add2~37\ & VCC)) # (!\IF_BLOCK|pc\(19) & (!\IF_BLOCK|Add2~37\)))) # (!\ir_in~combout\(25) & ((\IF_BLOCK|pc\(19) & (!\IF_BLOCK|Add2~37\)) # (!\IF_BLOCK|pc\(19) & 
-- ((\IF_BLOCK|Add2~37\) # (GND)))))
-- \IF_BLOCK|Add2~39\ = CARRY((\ir_in~combout\(25) & (!\IF_BLOCK|pc\(19) & !\IF_BLOCK|Add2~37\)) # (!\ir_in~combout\(25) & ((!\IF_BLOCK|Add2~37\) # (!\IF_BLOCK|pc\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(19),
	datad => VCC,
	cin => \IF_BLOCK|Add2~37\,
	combout => \IF_BLOCK|Add2~38_combout\,
	cout => \IF_BLOCK|Add2~39\);

-- Location: LCCOMB_X33_Y22_N30
\IF_BLOCK|pc_next~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~20_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~38_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~38_combout\,
	datad => \IF_BLOCK|Add2~38_combout\,
	combout => \IF_BLOCK|pc_next~20_combout\);

-- Location: LCFF_X33_Y22_N31
\IF_BLOCK|pc_next[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(19));

-- Location: LCFF_X34_Y22_N7
\IF_BLOCK|pc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(19));

-- Location: LCCOMB_X35_Y22_N8
\IF_BLOCK|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~40_combout\ = ((\IF_BLOCK|pc\(20) $ (\ir_in~combout\(25) $ (!\IF_BLOCK|Add2~39\)))) # (GND)
-- \IF_BLOCK|Add2~41\ = CARRY((\IF_BLOCK|pc\(20) & ((\ir_in~combout\(25)) # (!\IF_BLOCK|Add2~39\))) # (!\IF_BLOCK|pc\(20) & (\ir_in~combout\(25) & !\IF_BLOCK|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(20),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~39\,
	combout => \IF_BLOCK|Add2~40_combout\,
	cout => \IF_BLOCK|Add2~41\);

-- Location: LCCOMB_X34_Y22_N8
\IF_BLOCK|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~40_combout\ = (\IF_BLOCK|pc\(20) & (\IF_BLOCK|Add3~39\ $ (GND))) # (!\IF_BLOCK|pc\(20) & (!\IF_BLOCK|Add3~39\ & VCC))
-- \IF_BLOCK|Add3~41\ = CARRY((\IF_BLOCK|pc\(20) & !\IF_BLOCK|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(20),
	datad => VCC,
	cin => \IF_BLOCK|Add3~39\,
	combout => \IF_BLOCK|Add3~40_combout\,
	cout => \IF_BLOCK|Add3~41\);

-- Location: LCCOMB_X33_Y22_N0
\IF_BLOCK|pc_next~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~21_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~40_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~40_combout\,
	datad => \IF_BLOCK|Add3~40_combout\,
	combout => \IF_BLOCK|pc_next~21_combout\);

-- Location: LCFF_X33_Y22_N1
\IF_BLOCK|pc_next[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(20));

-- Location: LCFF_X34_Y22_N9
\IF_BLOCK|pc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(20));

-- Location: LCCOMB_X34_Y22_N10
\IF_BLOCK|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~42_combout\ = (\IF_BLOCK|pc\(21) & (!\IF_BLOCK|Add3~41\)) # (!\IF_BLOCK|pc\(21) & ((\IF_BLOCK|Add3~41\) # (GND)))
-- \IF_BLOCK|Add3~43\ = CARRY((!\IF_BLOCK|Add3~41\) # (!\IF_BLOCK|pc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(21),
	datad => VCC,
	cin => \IF_BLOCK|Add3~41\,
	combout => \IF_BLOCK|Add3~42_combout\,
	cout => \IF_BLOCK|Add3~43\);

-- Location: LCCOMB_X35_Y22_N10
\IF_BLOCK|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~42_combout\ = (\IF_BLOCK|pc\(21) & ((\ir_in~combout\(25) & (\IF_BLOCK|Add2~41\ & VCC)) # (!\ir_in~combout\(25) & (!\IF_BLOCK|Add2~41\)))) # (!\IF_BLOCK|pc\(21) & ((\ir_in~combout\(25) & (!\IF_BLOCK|Add2~41\)) # (!\ir_in~combout\(25) & 
-- ((\IF_BLOCK|Add2~41\) # (GND)))))
-- \IF_BLOCK|Add2~43\ = CARRY((\IF_BLOCK|pc\(21) & (!\ir_in~combout\(25) & !\IF_BLOCK|Add2~41\)) # (!\IF_BLOCK|pc\(21) & ((!\IF_BLOCK|Add2~41\) # (!\ir_in~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(21),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~41\,
	combout => \IF_BLOCK|Add2~42_combout\,
	cout => \IF_BLOCK|Add2~43\);

-- Location: LCCOMB_X36_Y22_N6
\IF_BLOCK|pc_next~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~22_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~42_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~42_combout\,
	datad => \IF_BLOCK|Add2~42_combout\,
	combout => \IF_BLOCK|pc_next~22_combout\);

-- Location: LCFF_X36_Y22_N7
\IF_BLOCK|pc_next[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(21));

-- Location: LCFF_X34_Y22_N15
\IF_BLOCK|pc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(21));

-- Location: LCCOMB_X34_Y22_N12
\IF_BLOCK|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~44_combout\ = (\IF_BLOCK|pc\(22) & (\IF_BLOCK|Add3~43\ $ (GND))) # (!\IF_BLOCK|pc\(22) & (!\IF_BLOCK|Add3~43\ & VCC))
-- \IF_BLOCK|Add3~45\ = CARRY((\IF_BLOCK|pc\(22) & !\IF_BLOCK|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(22),
	datad => VCC,
	cin => \IF_BLOCK|Add3~43\,
	combout => \IF_BLOCK|Add3~44_combout\,
	cout => \IF_BLOCK|Add3~45\);

-- Location: LCCOMB_X34_Y22_N14
\IF_BLOCK|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~46_combout\ = (\IF_BLOCK|pc\(23) & (!\IF_BLOCK|Add3~45\)) # (!\IF_BLOCK|pc\(23) & ((\IF_BLOCK|Add3~45\) # (GND)))
-- \IF_BLOCK|Add3~47\ = CARRY((!\IF_BLOCK|Add3~45\) # (!\IF_BLOCK|pc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(23),
	datad => VCC,
	cin => \IF_BLOCK|Add3~45\,
	combout => \IF_BLOCK|Add3~46_combout\,
	cout => \IF_BLOCK|Add3~47\);

-- Location: LCCOMB_X34_Y22_N16
\IF_BLOCK|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~48_combout\ = (\IF_BLOCK|pc\(24) & (\IF_BLOCK|Add3~47\ $ (GND))) # (!\IF_BLOCK|pc\(24) & (!\IF_BLOCK|Add3~47\ & VCC))
-- \IF_BLOCK|Add3~49\ = CARRY((\IF_BLOCK|pc\(24) & !\IF_BLOCK|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(24),
	datad => VCC,
	cin => \IF_BLOCK|Add3~47\,
	combout => \IF_BLOCK|Add3~48_combout\,
	cout => \IF_BLOCK|Add3~49\);

-- Location: LCCOMB_X34_Y22_N18
\IF_BLOCK|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~50_combout\ = (\IF_BLOCK|pc\(25) & (!\IF_BLOCK|Add3~49\)) # (!\IF_BLOCK|pc\(25) & ((\IF_BLOCK|Add3~49\) # (GND)))
-- \IF_BLOCK|Add3~51\ = CARRY((!\IF_BLOCK|Add3~49\) # (!\IF_BLOCK|pc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add3~49\,
	combout => \IF_BLOCK|Add3~50_combout\,
	cout => \IF_BLOCK|Add3~51\);

-- Location: LCCOMB_X35_Y22_N12
\IF_BLOCK|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~44_combout\ = ((\IF_BLOCK|pc\(22) $ (\ir_in~combout\(25) $ (!\IF_BLOCK|Add2~43\)))) # (GND)
-- \IF_BLOCK|Add2~45\ = CARRY((\IF_BLOCK|pc\(22) & ((\ir_in~combout\(25)) # (!\IF_BLOCK|Add2~43\))) # (!\IF_BLOCK|pc\(22) & (\ir_in~combout\(25) & !\IF_BLOCK|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(22),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~43\,
	combout => \IF_BLOCK|Add2~44_combout\,
	cout => \IF_BLOCK|Add2~45\);

-- Location: LCCOMB_X35_Y22_N14
\IF_BLOCK|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~46_combout\ = (\IF_BLOCK|pc\(23) & ((\ir_in~combout\(25) & (\IF_BLOCK|Add2~45\ & VCC)) # (!\ir_in~combout\(25) & (!\IF_BLOCK|Add2~45\)))) # (!\IF_BLOCK|pc\(23) & ((\ir_in~combout\(25) & (!\IF_BLOCK|Add2~45\)) # (!\ir_in~combout\(25) & 
-- ((\IF_BLOCK|Add2~45\) # (GND)))))
-- \IF_BLOCK|Add2~47\ = CARRY((\IF_BLOCK|pc\(23) & (!\ir_in~combout\(25) & !\IF_BLOCK|Add2~45\)) # (!\IF_BLOCK|pc\(23) & ((!\IF_BLOCK|Add2~45\) # (!\ir_in~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(23),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~45\,
	combout => \IF_BLOCK|Add2~46_combout\,
	cout => \IF_BLOCK|Add2~47\);

-- Location: LCCOMB_X35_Y22_N16
\IF_BLOCK|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~48_combout\ = ((\IF_BLOCK|pc\(24) $ (\ir_in~combout\(25) $ (!\IF_BLOCK|Add2~47\)))) # (GND)
-- \IF_BLOCK|Add2~49\ = CARRY((\IF_BLOCK|pc\(24) & ((\ir_in~combout\(25)) # (!\IF_BLOCK|Add2~47\))) # (!\IF_BLOCK|pc\(24) & (\ir_in~combout\(25) & !\IF_BLOCK|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(24),
	datab => \ir_in~combout\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~47\,
	combout => \IF_BLOCK|Add2~48_combout\,
	cout => \IF_BLOCK|Add2~49\);

-- Location: LCCOMB_X35_Y22_N18
\IF_BLOCK|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~50_combout\ = (\ir_in~combout\(25) & ((\IF_BLOCK|pc\(25) & (\IF_BLOCK|Add2~49\ & VCC)) # (!\IF_BLOCK|pc\(25) & (!\IF_BLOCK|Add2~49\)))) # (!\ir_in~combout\(25) & ((\IF_BLOCK|pc\(25) & (!\IF_BLOCK|Add2~49\)) # (!\IF_BLOCK|pc\(25) & 
-- ((\IF_BLOCK|Add2~49\) # (GND)))))
-- \IF_BLOCK|Add2~51\ = CARRY((\ir_in~combout\(25) & (!\IF_BLOCK|pc\(25) & !\IF_BLOCK|Add2~49\)) # (!\ir_in~combout\(25) & ((!\IF_BLOCK|Add2~49\) # (!\IF_BLOCK|pc\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(25),
	datad => VCC,
	cin => \IF_BLOCK|Add2~49\,
	combout => \IF_BLOCK|Add2~50_combout\,
	cout => \IF_BLOCK|Add2~51\);

-- Location: LCCOMB_X33_Y22_N2
\IF_BLOCK|pc_next~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~26_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~50_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~50_combout\,
	datad => \IF_BLOCK|Add2~50_combout\,
	combout => \IF_BLOCK|pc_next~26_combout\);

-- Location: LCFF_X33_Y22_N3
\IF_BLOCK|pc_next[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(25));

-- Location: LCFF_X34_Y22_N19
\IF_BLOCK|pc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(25));

-- Location: LCCOMB_X35_Y22_N20
\IF_BLOCK|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~52_combout\ = ((\ir_in~combout\(25) $ (\IF_BLOCK|pc\(26) $ (!\IF_BLOCK|Add2~51\)))) # (GND)
-- \IF_BLOCK|Add2~53\ = CARRY((\ir_in~combout\(25) & ((\IF_BLOCK|pc\(26)) # (!\IF_BLOCK|Add2~51\))) # (!\ir_in~combout\(25) & (\IF_BLOCK|pc\(26) & !\IF_BLOCK|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(26),
	datad => VCC,
	cin => \IF_BLOCK|Add2~51\,
	combout => \IF_BLOCK|Add2~52_combout\,
	cout => \IF_BLOCK|Add2~53\);

-- Location: LCCOMB_X34_Y22_N20
\IF_BLOCK|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~52_combout\ = (\IF_BLOCK|pc\(26) & (\IF_BLOCK|Add3~51\ $ (GND))) # (!\IF_BLOCK|pc\(26) & (!\IF_BLOCK|Add3~51\ & VCC))
-- \IF_BLOCK|Add3~53\ = CARRY((\IF_BLOCK|pc\(26) & !\IF_BLOCK|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(26),
	datad => VCC,
	cin => \IF_BLOCK|Add3~51\,
	combout => \IF_BLOCK|Add3~52_combout\,
	cout => \IF_BLOCK|Add3~53\);

-- Location: LCCOMB_X36_Y22_N14
\IF_BLOCK|pc_next~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~27_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~52_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~52_combout\,
	datad => \IF_BLOCK|Add3~52_combout\,
	combout => \IF_BLOCK|pc_next~27_combout\);

-- Location: LCFF_X36_Y22_N15
\IF_BLOCK|pc_next[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(26));

-- Location: LCFF_X35_Y22_N23
\IF_BLOCK|pc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(26));

-- Location: LCCOMB_X34_Y22_N22
\IF_BLOCK|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~54_combout\ = (\IF_BLOCK|pc\(27) & (!\IF_BLOCK|Add3~53\)) # (!\IF_BLOCK|pc\(27) & ((\IF_BLOCK|Add3~53\) # (GND)))
-- \IF_BLOCK|Add3~55\ = CARRY((!\IF_BLOCK|Add3~53\) # (!\IF_BLOCK|pc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(27),
	datad => VCC,
	cin => \IF_BLOCK|Add3~53\,
	combout => \IF_BLOCK|Add3~54_combout\,
	cout => \IF_BLOCK|Add3~55\);

-- Location: LCCOMB_X35_Y22_N22
\IF_BLOCK|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~54_combout\ = (\ir_in~combout\(25) & ((\IF_BLOCK|pc\(27) & (\IF_BLOCK|Add2~53\ & VCC)) # (!\IF_BLOCK|pc\(27) & (!\IF_BLOCK|Add2~53\)))) # (!\ir_in~combout\(25) & ((\IF_BLOCK|pc\(27) & (!\IF_BLOCK|Add2~53\)) # (!\IF_BLOCK|pc\(27) & 
-- ((\IF_BLOCK|Add2~53\) # (GND)))))
-- \IF_BLOCK|Add2~55\ = CARRY((\ir_in~combout\(25) & (!\IF_BLOCK|pc\(27) & !\IF_BLOCK|Add2~53\)) # (!\ir_in~combout\(25) & ((!\IF_BLOCK|Add2~53\) # (!\IF_BLOCK|pc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(27),
	datad => VCC,
	cin => \IF_BLOCK|Add2~53\,
	combout => \IF_BLOCK|Add2~54_combout\,
	cout => \IF_BLOCK|Add2~55\);

-- Location: LCCOMB_X33_Y22_N14
\IF_BLOCK|pc_next~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~28_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~54_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~54_combout\,
	datad => \IF_BLOCK|Add2~54_combout\,
	combout => \IF_BLOCK|pc_next~28_combout\);

-- Location: LCFF_X33_Y22_N15
\IF_BLOCK|pc_next[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(27));

-- Location: LCFF_X34_Y22_N23
\IF_BLOCK|pc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(27));

-- Location: LCCOMB_X34_Y22_N24
\IF_BLOCK|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~56_combout\ = (\IF_BLOCK|pc\(28) & (\IF_BLOCK|Add3~55\ $ (GND))) # (!\IF_BLOCK|pc\(28) & (!\IF_BLOCK|Add3~55\ & VCC))
-- \IF_BLOCK|Add3~57\ = CARRY((\IF_BLOCK|pc\(28) & !\IF_BLOCK|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(28),
	datad => VCC,
	cin => \IF_BLOCK|Add3~55\,
	combout => \IF_BLOCK|Add3~56_combout\,
	cout => \IF_BLOCK|Add3~57\);

-- Location: LCCOMB_X34_Y22_N26
\IF_BLOCK|Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~58_combout\ = (\IF_BLOCK|pc\(29) & (!\IF_BLOCK|Add3~57\)) # (!\IF_BLOCK|pc\(29) & ((\IF_BLOCK|Add3~57\) # (GND)))
-- \IF_BLOCK|Add3~59\ = CARRY((!\IF_BLOCK|Add3~57\) # (!\IF_BLOCK|pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(29),
	datad => VCC,
	cin => \IF_BLOCK|Add3~57\,
	combout => \IF_BLOCK|Add3~58_combout\,
	cout => \IF_BLOCK|Add3~59\);

-- Location: LCCOMB_X35_Y22_N24
\IF_BLOCK|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~56_combout\ = ((\ir_in~combout\(25) $ (\IF_BLOCK|pc\(28) $ (!\IF_BLOCK|Add2~55\)))) # (GND)
-- \IF_BLOCK|Add2~57\ = CARRY((\ir_in~combout\(25) & ((\IF_BLOCK|pc\(28)) # (!\IF_BLOCK|Add2~55\))) # (!\ir_in~combout\(25) & (\IF_BLOCK|pc\(28) & !\IF_BLOCK|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(28),
	datad => VCC,
	cin => \IF_BLOCK|Add2~55\,
	combout => \IF_BLOCK|Add2~56_combout\,
	cout => \IF_BLOCK|Add2~57\);

-- Location: LCCOMB_X36_Y22_N8
\IF_BLOCK|pc_next~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~29_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~56_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~56_combout\,
	datad => \IF_BLOCK|Add2~56_combout\,
	combout => \IF_BLOCK|pc_next~29_combout\);

-- Location: LCFF_X36_Y22_N9
\IF_BLOCK|pc_next[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(28));

-- Location: LCFF_X35_Y22_N3
\IF_BLOCK|pc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(28));

-- Location: LCCOMB_X35_Y22_N26
\IF_BLOCK|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~58_combout\ = (\ir_in~combout\(25) & ((\IF_BLOCK|pc\(29) & (\IF_BLOCK|Add2~57\ & VCC)) # (!\IF_BLOCK|pc\(29) & (!\IF_BLOCK|Add2~57\)))) # (!\ir_in~combout\(25) & ((\IF_BLOCK|pc\(29) & (!\IF_BLOCK|Add2~57\)) # (!\IF_BLOCK|pc\(29) & 
-- ((\IF_BLOCK|Add2~57\) # (GND)))))
-- \IF_BLOCK|Add2~59\ = CARRY((\ir_in~combout\(25) & (!\IF_BLOCK|pc\(29) & !\IF_BLOCK|Add2~57\)) # (!\ir_in~combout\(25) & ((!\IF_BLOCK|Add2~57\) # (!\IF_BLOCK|pc\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(29),
	datad => VCC,
	cin => \IF_BLOCK|Add2~57\,
	combout => \IF_BLOCK|Add2~58_combout\,
	cout => \IF_BLOCK|Add2~59\);

-- Location: LCCOMB_X33_Y22_N10
\IF_BLOCK|pc_next~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~30_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~58_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~58_combout\,
	datad => \IF_BLOCK|Add2~58_combout\,
	combout => \IF_BLOCK|pc_next~30_combout\);

-- Location: LCFF_X33_Y22_N11
\IF_BLOCK|pc_next[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(29));

-- Location: LCFF_X34_Y22_N27
\IF_BLOCK|pc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(29));

-- Location: LCCOMB_X35_Y22_N28
\IF_BLOCK|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~60_combout\ = ((\ir_in~combout\(25) $ (\IF_BLOCK|pc\(30) $ (!\IF_BLOCK|Add2~59\)))) # (GND)
-- \IF_BLOCK|Add2~61\ = CARRY((\ir_in~combout\(25) & ((\IF_BLOCK|pc\(30)) # (!\IF_BLOCK|Add2~59\))) # (!\ir_in~combout\(25) & (\IF_BLOCK|pc\(30) & !\IF_BLOCK|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(25),
	datab => \IF_BLOCK|pc\(30),
	datad => VCC,
	cin => \IF_BLOCK|Add2~59\,
	combout => \IF_BLOCK|Add2~60_combout\,
	cout => \IF_BLOCK|Add2~61\);

-- Location: LCCOMB_X33_Y22_N6
\IF_BLOCK|pc_next~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~31_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~60_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~60_combout\,
	datac => \IF_BLOCK|pc_next~0_combout\,
	datad => \IF_BLOCK|Add2~60_combout\,
	combout => \IF_BLOCK|pc_next~31_combout\);

-- Location: LCFF_X33_Y22_N7
\IF_BLOCK|pc_next[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(30));

-- Location: LCFF_X34_Y22_N29
\IF_BLOCK|pc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(30));

-- Location: LCCOMB_X34_Y22_N28
\IF_BLOCK|Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~60_combout\ = (\IF_BLOCK|pc\(30) & (\IF_BLOCK|Add3~59\ $ (GND))) # (!\IF_BLOCK|pc\(30) & (!\IF_BLOCK|Add3~59\ & VCC))
-- \IF_BLOCK|Add3~61\ = CARRY((\IF_BLOCK|pc\(30) & !\IF_BLOCK|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(30),
	datad => VCC,
	cin => \IF_BLOCK|Add3~59\,
	combout => \IF_BLOCK|Add3~60_combout\,
	cout => \IF_BLOCK|Add3~61\);

-- Location: LCCOMB_X34_Y22_N30
\IF_BLOCK|Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add3~62_combout\ = \IF_BLOCK|Add3~61\ $ (\IF_BLOCK|pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(31),
	cin => \IF_BLOCK|Add3~61\,
	combout => \IF_BLOCK|Add3~62_combout\);

-- Location: LCCOMB_X36_Y22_N12
\IF_BLOCK|pc_next~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~32_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~62_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~62_combout\,
	datad => \IF_BLOCK|Add3~62_combout\,
	combout => \IF_BLOCK|pc_next~32_combout\);

-- Location: LCFF_X36_Y22_N13
\IF_BLOCK|pc_next[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(31));

-- Location: LCFF_X35_Y22_N31
\IF_BLOCK|pc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(31));

-- Location: LCCOMB_X35_Y22_N30
\IF_BLOCK|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Add2~62_combout\ = \ir_in~combout\(25) $ (\IF_BLOCK|Add2~61\ $ (\IF_BLOCK|pc\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_in~combout\(25),
	datad => \IF_BLOCK|pc\(31),
	cin => \IF_BLOCK|Add2~61\,
	combout => \IF_BLOCK|Add2~62_combout\);

-- Location: LCCOMB_X36_Y22_N0
\IF_BLOCK|predicted_pc_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~31_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~62_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add2~62_combout\,
	datad => \IF_BLOCK|Add3~62_combout\,
	combout => \IF_BLOCK|predicted_pc_out~31_combout\);

-- Location: LCCOMB_X36_Y22_N20
\IF_BLOCK|predicted_pc_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~30_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~60_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datab => \IF_BLOCK|Add2~60_combout\,
	datad => \IF_BLOCK|Add3~60_combout\,
	combout => \IF_BLOCK|predicted_pc_out~30_combout\);

-- Location: LCCOMB_X36_Y22_N4
\IF_BLOCK|predicted_pc_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~29_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~58_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~58_combout\,
	datad => \IF_BLOCK|Add2~58_combout\,
	combout => \IF_BLOCK|predicted_pc_out~29_combout\);

-- Location: LCCOMB_X36_Y22_N16
\IF_BLOCK|predicted_pc_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~28_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~56_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~56_combout\,
	datad => \IF_BLOCK|Add2~56_combout\,
	combout => \IF_BLOCK|predicted_pc_out~28_combout\);

-- Location: LCCOMB_X36_Y22_N26
\IF_BLOCK|predicted_pc_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~27_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~54_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~54_combout\,
	datad => \IF_BLOCK|Add2~54_combout\,
	combout => \IF_BLOCK|predicted_pc_out~27_combout\);

-- Location: LCCOMB_X36_Y22_N30
\IF_BLOCK|predicted_pc_out~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~26_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~52_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add2~52_combout\,
	datad => \IF_BLOCK|Add3~52_combout\,
	combout => \IF_BLOCK|predicted_pc_out~26_combout\);

-- Location: LCCOMB_X36_Y22_N22
\IF_BLOCK|predicted_pc_out~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~25_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~50_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~50_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~50_combout\,
	combout => \IF_BLOCK|predicted_pc_out~25_combout\);

-- Location: LCCOMB_X36_Y22_N2
\IF_BLOCK|predicted_pc_out~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~24_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~48_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~48_combout\,
	datad => \IF_BLOCK|Add2~48_combout\,
	combout => \IF_BLOCK|predicted_pc_out~24_combout\);

-- Location: LCCOMB_X36_Y22_N18
\IF_BLOCK|predicted_pc_out~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~23_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~46_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~46_combout\,
	datad => \IF_BLOCK|Add2~46_combout\,
	combout => \IF_BLOCK|predicted_pc_out~23_combout\);

-- Location: LCCOMB_X36_Y22_N10
\IF_BLOCK|predicted_pc_out~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~22_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~44_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~44_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~44_combout\,
	combout => \IF_BLOCK|predicted_pc_out~22_combout\);

-- Location: LCCOMB_X36_Y22_N28
\IF_BLOCK|predicted_pc_out~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~21_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~42_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~42_combout\,
	datad => \IF_BLOCK|Add2~42_combout\,
	combout => \IF_BLOCK|predicted_pc_out~21_combout\);

-- Location: LCCOMB_X38_Y22_N22
\IF_BLOCK|predicted_pc_out~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~20_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~40_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~40_combout\,
	datad => \IF_BLOCK|Add2~40_combout\,
	combout => \IF_BLOCK|predicted_pc_out~20_combout\);

-- Location: LCCOMB_X38_Y22_N4
\IF_BLOCK|predicted_pc_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~19_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~38_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add2~38_combout\,
	datad => \IF_BLOCK|Add3~38_combout\,
	combout => \IF_BLOCK|predicted_pc_out~19_combout\);

-- Location: LCCOMB_X38_Y22_N30
\IF_BLOCK|predicted_pc_out~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~18_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~36_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~36_combout\,
	datad => \IF_BLOCK|Add2~36_combout\,
	combout => \IF_BLOCK|predicted_pc_out~18_combout\);

-- Location: LCCOMB_X38_Y22_N28
\IF_BLOCK|predicted_pc_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~17_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~34_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add2~34_combout\,
	datad => \IF_BLOCK|Add3~34_combout\,
	combout => \IF_BLOCK|predicted_pc_out~17_combout\);

-- Location: LCCOMB_X38_Y22_N10
\IF_BLOCK|predicted_pc_out~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~16_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~32_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datab => \IF_BLOCK|Add3~32_combout\,
	datac => \IF_BLOCK|Add2~32_combout\,
	combout => \IF_BLOCK|predicted_pc_out~16_combout\);

-- Location: LCCOMB_X36_Y23_N2
\IF_BLOCK|predicted_pc_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~14_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~30_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add2~30_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add3~30_combout\,
	combout => \IF_BLOCK|predicted_pc_out~14_combout\);

-- Location: LCCOMB_X36_Y23_N12
\IF_BLOCK|predicted_pc_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~15_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~28_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~28_combout\,
	datad => \IF_BLOCK|Add2~28_combout\,
	combout => \IF_BLOCK|predicted_pc_out~15_combout\);

-- Location: LCCOMB_X36_Y23_N18
\IF_BLOCK|predicted_pc_out~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~12_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~26_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~26_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~26_combout\,
	combout => \IF_BLOCK|predicted_pc_out~12_combout\);

-- Location: LCCOMB_X36_Y23_N30
\IF_BLOCK|predicted_pc_out~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~13_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~24_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|Add3~24_combout\,
	datac => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~24_combout\,
	combout => \IF_BLOCK|predicted_pc_out~13_combout\);

-- Location: LCCOMB_X36_Y23_N20
\IF_BLOCK|predicted_pc_out~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~10_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~22_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~22_combout\,
	datad => \IF_BLOCK|Add2~22_combout\,
	combout => \IF_BLOCK|predicted_pc_out~10_combout\);

-- Location: LCCOMB_X36_Y23_N28
\IF_BLOCK|predicted_pc_out~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~11_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~20_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add2~20_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add3~20_combout\,
	combout => \IF_BLOCK|predicted_pc_out~11_combout\);

-- Location: LCCOMB_X36_Y23_N24
\IF_BLOCK|predicted_pc_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~8_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~18_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|Add3~18_combout\,
	datac => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~18_combout\,
	combout => \IF_BLOCK|predicted_pc_out~8_combout\);

-- Location: LCCOMB_X36_Y23_N16
\IF_BLOCK|predicted_pc_out~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~9_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~16_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~16_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~16_combout\,
	combout => \IF_BLOCK|predicted_pc_out~9_combout\);

-- Location: LCCOMB_X38_Y22_N12
\IF_BLOCK|predicted_pc_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~6_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~14_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~14_combout\,
	datad => \IF_BLOCK|Add2~14_combout\,
	combout => \IF_BLOCK|predicted_pc_out~6_combout\);

-- Location: LCCOMB_X36_Y23_N4
\IF_BLOCK|predicted_pc_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~7_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~12_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~12_combout\,
	datac => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~12_combout\,
	combout => \IF_BLOCK|predicted_pc_out~7_combout\);

-- Location: LCCOMB_X36_Y23_N6
\IF_BLOCK|predicted_pc_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~4_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~10_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|Add3~10_combout\,
	datac => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~10_combout\,
	combout => \IF_BLOCK|predicted_pc_out~4_combout\);

-- Location: LCCOMB_X38_Y23_N16
\IF_BLOCK|predicted_pc_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~5_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~8_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|predictor\(1),
	datac => \IF_BLOCK|Add3~8_combout\,
	datad => \IF_BLOCK|Add2~8_combout\,
	combout => \IF_BLOCK|predicted_pc_out~5_combout\);

-- Location: LCCOMB_X36_Y23_N8
\IF_BLOCK|predicted_pc_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~2_combout\ = (\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add2~6_combout\)) # (!\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datab => \IF_BLOCK|Add2~6_combout\,
	datad => \IF_BLOCK|Add3~6_combout\,
	combout => \IF_BLOCK|predicted_pc_out~2_combout\);

-- Location: LCCOMB_X33_Y23_N24
\IF_BLOCK|predicted_pc_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~3_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~4_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~4_combout\,
	datab => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|Add2~4_combout\,
	combout => \IF_BLOCK|predicted_pc_out~3_combout\);

-- Location: LCCOMB_X33_Y23_N20
\IF_BLOCK|predicted_pc_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~0_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~2_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datab => \IF_BLOCK|Add3~2_combout\,
	datad => \IF_BLOCK|Add2~2_combout\,
	combout => \IF_BLOCK|predicted_pc_out~0_combout\);

-- Location: LCCOMB_X33_Y22_N12
\IF_BLOCK|predicted_pc_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predicted_pc_out~1_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|Add2~0_combout\))) # (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|predictor\(1),
	datab => \IF_BLOCK|Add3~0_combout\,
	datad => \IF_BLOCK|Add2~0_combout\,
	combout => \IF_BLOCK|predicted_pc_out~1_combout\);

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(3),
	combout => \ir_in~combout\(3));

-- Location: LCFF_X35_Y23_N9
\IF_BLOCK|ir_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(3));

-- Location: LCCOMB_X38_Y20_N26
\ID_BLOCK|ir[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[3]~feeder_combout\ = \IF_BLOCK|ir_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(3),
	combout => \ID_BLOCK|ir[3]~feeder_combout\);

-- Location: LCFF_X38_Y20_N27
\ID_BLOCK|ir[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(3));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X35_Y20_N25
\IF_BLOCK|ir_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(27));

-- Location: LCFF_X35_Y20_N15
\ID_BLOCK|ir[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(27));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y22_N0
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

-- Location: LCFF_X38_Y22_N1
\IF_BLOCK|ir_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(29));

-- Location: LCFF_X35_Y20_N5
\ID_BLOCK|ir[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(29));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y20_N30
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

-- Location: LCFF_X34_Y20_N31
\IF_BLOCK|ir_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(28));

-- Location: LCFF_X35_Y20_N19
\ID_BLOCK|ir[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(28));

-- Location: LCCOMB_X35_Y20_N4
\ID_BLOCK|imm[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~0_combout\ = ((\ID_BLOCK|ir\(28) & ((\ID_BLOCK|ir\(26)) # (\ID_BLOCK|ir\(27))))) # (!\ID_BLOCK|ir\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(26),
	datab => \ID_BLOCK|ir\(27),
	datac => \ID_BLOCK|ir\(29),
	datad => \ID_BLOCK|ir\(28),
	combout => \ID_BLOCK|imm[11]~0_combout\);

-- Location: LCFF_X35_Y20_N17
\IF_BLOCK|ir_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(31));

-- Location: LCFF_X35_Y20_N7
\ID_BLOCK|ir[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(31));

-- Location: LCCOMB_X35_Y20_N14
\ID_BLOCK|imm[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~1_combout\ = ((\ID_BLOCK|imm[11]~0_combout\) # (\ID_BLOCK|ir\(31))) # (!\ID_BLOCK|ir\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(30),
	datab => \ID_BLOCK|imm[11]~0_combout\,
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[11]~1_combout\);

-- Location: LCCOMB_X38_Y20_N28
\ID_BLOCK|imm[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[3]~5_combout\ = (\ID_BLOCK|imm[11]~1_combout\ & ((\ID_BLOCK|ir\(3)))) # (!\ID_BLOCK|imm[11]~1_combout\ & (\ID_BLOCK|ir\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(14),
	datab => \ID_BLOCK|ir\(3),
	datad => \ID_BLOCK|imm[11]~1_combout\,
	combout => \ID_BLOCK|imm[3]~5_combout\);

-- Location: LCFF_X38_Y20_N29
\ID_BLOCK|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(3));

-- Location: LCCOMB_X38_Y20_N16
\EX_BLOCK|imm_pom[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[3]~feeder_combout\ = \ID_BLOCK|imm\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(3),
	combout => \EX_BLOCK|imm_pom[3]~feeder_combout\);

-- Location: LCFF_X38_Y20_N17
\EX_BLOCK|imm_pom[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(3));

-- Location: LCFF_X38_Y20_N9
\EX_BLOCK|new_pc_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(3));

-- Location: LCCOMB_X38_Y20_N8
\IF_BLOCK|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~1_combout\ = (\EX_BLOCK|new_pc_out\(2) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a30\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a29\ $ (!\EX_BLOCK|new_pc_out\(3))))) # 
-- (!\EX_BLOCK|new_pc_out\(2) & (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a30\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a29\ $ (!\EX_BLOCK|new_pc_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_BLOCK|new_pc_out\(2),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a29\,
	datac => \EX_BLOCK|new_pc_out\(3),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a30\,
	combout => \IF_BLOCK|Equal0~1_combout\);

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X13_Y1_N22
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

-- Location: LCFF_X13_Y1_N23
\IF_BLOCK|ir_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(11));

-- Location: LCCOMB_X13_Y1_N28
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

-- Location: LCFF_X13_Y1_N29
\ID_BLOCK|ir[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(11));

-- Location: LCCOMB_X39_Y21_N26
\IF_BLOCK|ir_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[0]~feeder_combout\ = \ir_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(0),
	combout => \IF_BLOCK|ir_out[0]~feeder_combout\);

-- Location: LCFF_X39_Y21_N27
\IF_BLOCK|ir_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(0));

-- Location: LCCOMB_X39_Y21_N22
\ID_BLOCK|ir[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[0]~feeder_combout\ = \IF_BLOCK|ir_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(0),
	combout => \ID_BLOCK|ir[0]~feeder_combout\);

-- Location: LCFF_X39_Y21_N23
\ID_BLOCK|ir[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(0));

-- Location: LCCOMB_X39_Y21_N8
\ID_BLOCK|imm[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[0]~2_combout\ = (\ID_BLOCK|imm[11]~1_combout\ & ((\ID_BLOCK|ir\(0)))) # (!\ID_BLOCK|imm[11]~1_combout\ & (\ID_BLOCK|ir\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|imm[11]~1_combout\,
	datac => \ID_BLOCK|ir\(11),
	datad => \ID_BLOCK|ir\(0),
	combout => \ID_BLOCK|imm[0]~2_combout\);

-- Location: LCFF_X39_Y21_N9
\ID_BLOCK|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(0));

-- Location: LCFF_X38_Y21_N17
\EX_BLOCK|imm_pom[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|imm\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(0));

-- Location: LCFF_X38_Y20_N5
\EX_BLOCK|new_pc_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(0));

-- Location: LCFF_X35_Y23_N27
\IF_BLOCK|ir_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(1));

-- Location: LCFF_X35_Y23_N21
\ID_BLOCK|ir[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(1));

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y21_N20
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

-- Location: LCFF_X40_Y21_N21
\IF_BLOCK|ir_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(12));

-- Location: LCCOMB_X39_Y21_N16
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

-- Location: LCFF_X39_Y21_N17
\ID_BLOCK|ir[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(12));

-- Location: LCCOMB_X35_Y20_N26
\ID_BLOCK|imm[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[1]~3_combout\ = (\ID_BLOCK|imm[11]~1_combout\ & (\ID_BLOCK|ir\(1))) # (!\ID_BLOCK|imm[11]~1_combout\ & ((\ID_BLOCK|ir\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(1),
	datac => \ID_BLOCK|ir\(12),
	datad => \ID_BLOCK|imm[11]~1_combout\,
	combout => \ID_BLOCK|imm[1]~3_combout\);

-- Location: LCFF_X35_Y20_N27
\ID_BLOCK|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(1));

-- Location: LCCOMB_X36_Y20_N6
\EX_BLOCK|imm_pom[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[1]~feeder_combout\ = \ID_BLOCK|imm\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(1),
	combout => \EX_BLOCK|imm_pom[1]~feeder_combout\);

-- Location: LCFF_X36_Y20_N7
\EX_BLOCK|imm_pom[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(1));

-- Location: LCFF_X38_Y20_N21
\EX_BLOCK|new_pc_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(1));

-- Location: LCCOMB_X38_Y20_N20
\IF_BLOCK|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~0_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a31\ & (\EX_BLOCK|new_pc_out\(1) & (\EX_BLOCK|new_pc_out\(0) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a32\)))) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a31\ & (!\EX_BLOCK|new_pc_out\(1) & (\EX_BLOCK|new_pc_out\(0) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a31\,
	datab => \EX_BLOCK|new_pc_out\(0),
	datac => \EX_BLOCK|new_pc_out\(1),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a32\,
	combout => \IF_BLOCK|Equal0~0_combout\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(5),
	combout => \ir_in~combout\(5));

-- Location: LCFF_X34_Y20_N3
\IF_BLOCK|ir_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(5));

-- Location: LCCOMB_X34_Y20_N6
\ID_BLOCK|ir[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[5]~feeder_combout\ = \IF_BLOCK|ir_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(5),
	combout => \ID_BLOCK|ir[5]~feeder_combout\);

-- Location: LCFF_X34_Y20_N7
\ID_BLOCK|ir[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(5));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X38_Y22_N7
\IF_BLOCK|ir_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(30));

-- Location: LCFF_X35_Y20_N11
\ID_BLOCK|ir[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(30));

-- Location: LCCOMB_X34_Y20_N12
\ID_BLOCK|imm[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[5]~7_combout\ = (\ID_BLOCK|ir\(5) & ((\ID_BLOCK|imm[11]~0_combout\) # ((\ID_BLOCK|ir\(31)) # (!\ID_BLOCK|ir\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|imm[11]~0_combout\,
	datab => \ID_BLOCK|ir\(5),
	datac => \ID_BLOCK|ir\(30),
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[5]~7_combout\);

-- Location: LCFF_X34_Y20_N13
\ID_BLOCK|imm[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(5));

-- Location: LCFF_X38_Y20_N15
\EX_BLOCK|imm_pom[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|imm\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(5));

-- Location: LCFF_X38_Y20_N13
\EX_BLOCK|new_pc_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(5));

-- Location: LCCOMB_X38_Y20_N12
\IF_BLOCK|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~2_combout\ = (\EX_BLOCK|new_pc_out\(4) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a28\ & (\EX_BLOCK|new_pc_out\(5) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a27\)))) # 
-- (!\EX_BLOCK|new_pc_out\(4) & (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a28\ & (\EX_BLOCK|new_pc_out\(5) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_BLOCK|new_pc_out\(4),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a28\,
	datac => \EX_BLOCK|new_pc_out\(5),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a27\,
	combout => \IF_BLOCK|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y20_N0
\IF_BLOCK|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~4_combout\ = (\IF_BLOCK|Equal0~3_combout\ & (\IF_BLOCK|Equal0~1_combout\ & (\IF_BLOCK|Equal0~0_combout\ & \IF_BLOCK|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Equal0~3_combout\,
	datab => \IF_BLOCK|Equal0~1_combout\,
	datac => \IF_BLOCK|Equal0~0_combout\,
	datad => \IF_BLOCK|Equal0~2_combout\,
	combout => \IF_BLOCK|Equal0~4_combout\);

-- Location: LCCOMB_X38_Y22_N18
\IF_BLOCK|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~10_combout\ = (\EX_BLOCK|new_pc_out\(15) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a16\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a15\ & 
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a14\))) # (!\EX_BLOCK|new_pc_out\(15) & (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a16\ & 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a15\ & !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_BLOCK|new_pc_out\(15),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a16\,
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a15\,
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a14\,
	combout => \IF_BLOCK|Equal0~10_combout\);

-- Location: LCCOMB_X38_Y22_N24
\IF_BLOCK|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~12_combout\ = (\EX_BLOCK|new_pc_out\(15) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a8\ & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a10\ & 
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a9\))) # (!\EX_BLOCK|new_pc_out\(15) & (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a8\ & 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a10\ & !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_BLOCK|new_pc_out\(15),
	datab => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a8\,
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a10\,
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a9\,
	combout => \IF_BLOCK|Equal0~12_combout\);

-- Location: LCFF_X35_Y22_N5
\IF_BLOCK|ir_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(25));

-- Location: LCFF_X35_Y22_N25
\ID_BLOCK|ir[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(25));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y20_N0
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

-- Location: LCFF_X34_Y20_N1
\IF_BLOCK|ir_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(26));

-- Location: LCFF_X35_Y20_N21
\ID_BLOCK|ir[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(26));

-- Location: LCCOMB_X35_Y20_N20
\ID_BLOCK|imm[11]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~14_combout\ = (\ID_BLOCK|ir\(29) & (((\ID_BLOCK|ir\(31))))) # (!\ID_BLOCK|ir\(29) & (!\ID_BLOCK|ir\(28) & (\ID_BLOCK|ir\(26) & !\ID_BLOCK|ir\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(29),
	datab => \ID_BLOCK|ir\(28),
	datac => \ID_BLOCK|ir\(26),
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[11]~14_combout\);

-- Location: LCCOMB_X35_Y20_N10
\ID_BLOCK|imm[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[15]~15_combout\ = (!\ID_BLOCK|ir\(30) & ((\ID_BLOCK|imm[11]~13_combout\) # ((!\ID_BLOCK|ir\(27) & \ID_BLOCK|imm[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|imm[11]~13_combout\,
	datab => \ID_BLOCK|ir\(27),
	datac => \ID_BLOCK|ir\(30),
	datad => \ID_BLOCK|imm[11]~14_combout\,
	combout => \ID_BLOCK|imm[15]~15_combout\);

-- Location: LCCOMB_X35_Y20_N24
\ID_BLOCK|imm[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~16_combout\ = (\ID_BLOCK|imm[11]~13_combout\) # ((!\ID_BLOCK|ir\(27) & \ID_BLOCK|imm[11]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|imm[11]~13_combout\,
	datab => \ID_BLOCK|ir\(27),
	datad => \ID_BLOCK|imm[11]~14_combout\,
	combout => \ID_BLOCK|imm[11]~16_combout\);

-- Location: LCCOMB_X35_Y20_N0
\ID_BLOCK|imm[11]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~17_combout\ = (\ID_BLOCK|ir\(30) & ((\ID_BLOCK|imm[11]~0_combout\) # ((\ID_BLOCK|imm[11]~16_combout\) # (\ID_BLOCK|ir\(31))))) # (!\ID_BLOCK|ir\(30) & (((!\ID_BLOCK|imm[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(30),
	datab => \ID_BLOCK|imm[11]~0_combout\,
	datac => \ID_BLOCK|imm[11]~16_combout\,
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[11]~17_combout\);

-- Location: LCCOMB_X35_Y20_N12
\ID_BLOCK|imm[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[15]~22_combout\ = (\ID_BLOCK|ir\(15) & ((\ID_BLOCK|imm[11]~17_combout\) # ((\ID_BLOCK|ir\(25) & \ID_BLOCK|imm[15]~15_combout\)))) # (!\ID_BLOCK|ir\(15) & (\ID_BLOCK|ir\(25) & (\ID_BLOCK|imm[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(15),
	datab => \ID_BLOCK|ir\(25),
	datac => \ID_BLOCK|imm[15]~15_combout\,
	datad => \ID_BLOCK|imm[11]~17_combout\,
	combout => \ID_BLOCK|imm[15]~22_combout\);

-- Location: LCFF_X35_Y20_N13
\ID_BLOCK|imm[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(15));

-- Location: LCCOMB_X38_Y21_N24
\EX_BLOCK|imm_pom[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[15]~feeder_combout\ = \ID_BLOCK|imm\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(15),
	combout => \EX_BLOCK|imm_pom[15]~feeder_combout\);

-- Location: LCFF_X38_Y21_N25
\EX_BLOCK|imm_pom[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(15));

-- Location: LCFF_X38_Y22_N17
\EX_BLOCK|new_pc_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(15));

-- Location: LCCOMB_X38_Y21_N6
\IF_BLOCK|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~11_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a11\ & (\EX_BLOCK|new_pc_out\(15) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a13\ & 
-- \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a12\))) # (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a11\ & (!\EX_BLOCK|new_pc_out\(15) & 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a13\ & !\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a11\,
	datab => \EX_BLOCK|new_pc_out\(15),
	datac => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a13\,
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a12\,
	combout => \IF_BLOCK|Equal0~11_combout\);

-- Location: LCCOMB_X38_Y21_N4
\IF_BLOCK|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~14_combout\ = (\IF_BLOCK|Equal0~13_combout\ & (\IF_BLOCK|Equal0~10_combout\ & (\IF_BLOCK|Equal0~12_combout\ & \IF_BLOCK|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Equal0~13_combout\,
	datab => \IF_BLOCK|Equal0~10_combout\,
	datac => \IF_BLOCK|Equal0~12_combout\,
	datad => \IF_BLOCK|Equal0~11_combout\,
	combout => \IF_BLOCK|Equal0~14_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y21_N14
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

-- Location: LCFF_X38_Y21_N15
\IF_BLOCK|ir_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(14));

-- Location: LCCOMB_X39_Y21_N2
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

-- Location: LCFF_X39_Y21_N3
\ID_BLOCK|ir[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(14));

-- Location: LCCOMB_X39_Y21_N6
\ID_BLOCK|imm[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[14]~21_combout\ = (\ID_BLOCK|ir\(24) & ((\ID_BLOCK|imm[15]~15_combout\) # ((\ID_BLOCK|ir\(14) & \ID_BLOCK|imm[11]~17_combout\)))) # (!\ID_BLOCK|ir\(24) & (\ID_BLOCK|ir\(14) & (\ID_BLOCK|imm[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(24),
	datab => \ID_BLOCK|ir\(14),
	datac => \ID_BLOCK|imm[11]~17_combout\,
	datad => \ID_BLOCK|imm[15]~15_combout\,
	combout => \ID_BLOCK|imm[14]~21_combout\);

-- Location: LCFF_X39_Y21_N7
\ID_BLOCK|imm[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(14));

-- Location: LCCOMB_X39_Y21_N14
\EX_BLOCK|imm_pom[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[14]~feeder_combout\ = \ID_BLOCK|imm\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(14),
	combout => \EX_BLOCK|imm_pom[14]~feeder_combout\);

-- Location: LCFF_X39_Y21_N15
\EX_BLOCK|imm_pom[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(14));

-- Location: LCFF_X38_Y21_N23
\EX_BLOCK|new_pc_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(14));

-- Location: LCCOMB_X38_Y21_N22
\IF_BLOCK|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~8_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a17\ & (\EX_BLOCK|new_pc_out\(15) & (\EX_BLOCK|new_pc_out\(14) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a18\)))) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a17\ & (!\EX_BLOCK|new_pc_out\(15) & (\EX_BLOCK|new_pc_out\(14) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a17\,
	datab => \EX_BLOCK|new_pc_out\(15),
	datac => \EX_BLOCK|new_pc_out\(14),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a18\,
	combout => \IF_BLOCK|Equal0~8_combout\);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(8),
	combout => \ir_in~combout\(8));

-- Location: LCFF_X35_Y23_N15
\IF_BLOCK|ir_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(8));

-- Location: LCFF_X35_Y23_N13
\ID_BLOCK|ir[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(8));

-- Location: LCCOMB_X35_Y20_N30
\ID_BLOCK|imm[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[8]~10_combout\ = (\ID_BLOCK|ir\(8) & (((\ID_BLOCK|imm[11]~0_combout\) # (\ID_BLOCK|ir\(31))) # (!\ID_BLOCK|ir\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(30),
	datab => \ID_BLOCK|ir\(8),
	datac => \ID_BLOCK|imm[11]~0_combout\,
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[8]~10_combout\);

-- Location: LCFF_X35_Y20_N31
\ID_BLOCK|imm[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(8));

-- Location: LCCOMB_X35_Y21_N2
\EX_BLOCK|imm_pom[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[8]~feeder_combout\ = \ID_BLOCK|imm\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(8),
	combout => \EX_BLOCK|imm_pom[8]~feeder_combout\);

-- Location: LCFF_X35_Y21_N3
\EX_BLOCK|imm_pom[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(8));

-- Location: LCFF_X38_Y21_N3
\EX_BLOCK|new_pc_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(8));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ir_in(9),
	combout => \ir_in~combout\(9));

-- Location: LCFF_X35_Y23_N1
\IF_BLOCK|ir_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(9));

-- Location: LCFF_X34_Y20_N21
\ID_BLOCK|ir[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(9));

-- Location: LCCOMB_X35_Y20_N8
\ID_BLOCK|imm[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[9]~11_combout\ = (\ID_BLOCK|ir\(9) & (((\ID_BLOCK|imm[11]~0_combout\) # (\ID_BLOCK|ir\(31))) # (!\ID_BLOCK|ir\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(30),
	datab => \ID_BLOCK|imm[11]~0_combout\,
	datac => \ID_BLOCK|ir\(9),
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|imm[9]~11_combout\);

-- Location: LCFF_X35_Y20_N9
\ID_BLOCK|imm[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(9));

-- Location: LCCOMB_X35_Y21_N12
\EX_BLOCK|imm_pom[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[9]~feeder_combout\ = \ID_BLOCK|imm\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(9),
	combout => \EX_BLOCK|imm_pom[9]~feeder_combout\);

-- Location: LCFF_X35_Y21_N13
\EX_BLOCK|imm_pom[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(9));

-- Location: LCFF_X38_Y21_N9
\EX_BLOCK|new_pc_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(9));

-- Location: LCCOMB_X38_Y21_N8
\IF_BLOCK|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~5_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a23\ & (\EX_BLOCK|new_pc_out\(9) & (\EX_BLOCK|new_pc_out\(8) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a24\)))) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a23\ & (!\EX_BLOCK|new_pc_out\(9) & (\EX_BLOCK|new_pc_out\(8) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a23\,
	datab => \EX_BLOCK|new_pc_out\(8),
	datac => \EX_BLOCK|new_pc_out\(9),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a24\,
	combout => \IF_BLOCK|Equal0~5_combout\);

-- Location: LCFF_X35_Y23_N5
\IF_BLOCK|ir_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(10));

-- Location: LCFF_X35_Y23_N17
\ID_BLOCK|ir[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(10));

-- Location: LCCOMB_X35_Y20_N2
\ID_BLOCK|imm[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[10]~12_combout\ = (\ID_BLOCK|ir\(10) & (((\ID_BLOCK|ir\(31)) # (\ID_BLOCK|imm[11]~0_combout\)) # (!\ID_BLOCK|ir\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(30),
	datab => \ID_BLOCK|ir\(31),
	datac => \ID_BLOCK|imm[11]~0_combout\,
	datad => \ID_BLOCK|ir\(10),
	combout => \ID_BLOCK|imm[10]~12_combout\);

-- Location: LCFF_X35_Y20_N3
\ID_BLOCK|imm[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[10]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(10));

-- Location: LCCOMB_X36_Y20_N0
\EX_BLOCK|imm_pom[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[10]~feeder_combout\ = \ID_BLOCK|imm\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(10),
	combout => \EX_BLOCK|imm_pom[10]~feeder_combout\);

-- Location: LCFF_X36_Y20_N1
\EX_BLOCK|imm_pom[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(10));

-- Location: LCCOMB_X38_Y21_N18
\EX_BLOCK|new_pc_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|new_pc_out[10]~feeder_combout\ = \EX_BLOCK|imm_pom\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_BLOCK|imm_pom\(10),
	combout => \EX_BLOCK|new_pc_out[10]~feeder_combout\);

-- Location: LCFF_X38_Y21_N19
\EX_BLOCK|new_pc_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|new_pc_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(10));

-- Location: LCCOMB_X40_Y21_N0
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

-- Location: LCFF_X40_Y21_N1
\IF_BLOCK|ir_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(21));

-- Location: LCCOMB_X40_Y21_N28
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

-- Location: LCFF_X40_Y21_N29
\ID_BLOCK|ir[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(21));

-- Location: LCCOMB_X39_Y21_N20
\ID_BLOCK|imm[11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|imm[11]~18_combout\ = (\ID_BLOCK|ir\(11) & ((\ID_BLOCK|imm[11]~17_combout\) # ((\ID_BLOCK|ir\(21) & \ID_BLOCK|imm[15]~15_combout\)))) # (!\ID_BLOCK|ir\(11) & (\ID_BLOCK|ir\(21) & ((\ID_BLOCK|imm[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(11),
	datab => \ID_BLOCK|ir\(21),
	datac => \ID_BLOCK|imm[11]~17_combout\,
	datad => \ID_BLOCK|imm[15]~15_combout\,
	combout => \ID_BLOCK|imm[11]~18_combout\);

-- Location: LCFF_X39_Y21_N21
\ID_BLOCK|imm[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|imm[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|imm\(11));

-- Location: LCCOMB_X38_Y21_N20
\EX_BLOCK|imm_pom[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|imm_pom[11]~feeder_combout\ = \ID_BLOCK|imm\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|imm\(11),
	combout => \EX_BLOCK|imm_pom[11]~feeder_combout\);

-- Location: LCFF_X38_Y21_N21
\EX_BLOCK|imm_pom[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|imm_pom[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|imm_pom\(11));

-- Location: LCFF_X38_Y21_N31
\EX_BLOCK|new_pc_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|imm_pom\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|new_pc_out\(11));

-- Location: LCCOMB_X38_Y21_N30
\IF_BLOCK|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~6_combout\ = (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a21\ & (\EX_BLOCK|new_pc_out\(11) & (\EX_BLOCK|new_pc_out\(10) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a22\)))) # 
-- (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a21\ & (!\EX_BLOCK|new_pc_out\(11) & (\EX_BLOCK|new_pc_out\(10) $ (!\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a21\,
	datab => \EX_BLOCK|new_pc_out\(10),
	datac => \EX_BLOCK|new_pc_out\(11),
	datad => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a22\,
	combout => \IF_BLOCK|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y21_N10
\IF_BLOCK|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~9_combout\ = (\IF_BLOCK|Equal0~7_combout\ & (\IF_BLOCK|Equal0~8_combout\ & (\IF_BLOCK|Equal0~5_combout\ & \IF_BLOCK|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Equal0~7_combout\,
	datab => \IF_BLOCK|Equal0~8_combout\,
	datac => \IF_BLOCK|Equal0~5_combout\,
	datad => \IF_BLOCK|Equal0~6_combout\,
	combout => \IF_BLOCK|Equal0~9_combout\);

-- Location: LCCOMB_X38_Y21_N0
\IF_BLOCK|Equal0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|Equal0~17_combout\ = (\IF_BLOCK|Equal0~16_combout\ & (\IF_BLOCK|Equal0~4_combout\ & (\IF_BLOCK|Equal0~14_combout\ & \IF_BLOCK|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Equal0~16_combout\,
	datab => \IF_BLOCK|Equal0~4_combout\,
	datac => \IF_BLOCK|Equal0~14_combout\,
	datad => \IF_BLOCK|Equal0~9_combout\,
	combout => \IF_BLOCK|Equal0~17_combout\);

-- Location: LCCOMB_X38_Y21_N26
\IF_BLOCK|predictor~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predictor~1_combout\ = (\IF_BLOCK|predictor\(0) & (!\IF_BLOCK|predictor\(1) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ $ (\IF_BLOCK|Equal0~17_combout\)))) # (!\IF_BLOCK|predictor\(0) & 
-- ((\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ $ (\IF_BLOCK|Equal0~17_combout\)) # (!\IF_BLOCK|predictor\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	datab => \IF_BLOCK|Equal0~17_combout\,
	datac => \IF_BLOCK|predictor\(0),
	datad => \IF_BLOCK|predictor\(1),
	combout => \IF_BLOCK|predictor~1_combout\);

-- Location: LCFF_X38_Y21_N27
\IF_BLOCK|predictor[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|predictor~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|predictor\(0));

-- Location: LCCOMB_X38_Y21_N28
\IF_BLOCK|predictor~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|predictor~0_combout\ = (\IF_BLOCK|predictor\(1) & ((\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ $ (!\IF_BLOCK|Equal0~17_combout\)) # (!\IF_BLOCK|predictor\(0)))) # (!\IF_BLOCK|predictor\(1) & 
-- (!\IF_BLOCK|predictor\(0) & (\IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ $ (!\IF_BLOCK|Equal0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|jump_predicted_out_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	datab => \IF_BLOCK|Equal0~17_combout\,
	datac => \IF_BLOCK|predictor\(1),
	datad => \IF_BLOCK|predictor\(0),
	combout => \IF_BLOCK|predictor~0_combout\);

-- Location: LCFF_X38_Y21_N29
\IF_BLOCK|predictor[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|predictor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|predictor\(1));

-- Location: LCCOMB_X38_Y22_N2
\IF_BLOCK|pc_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~0_combout\ = (!\ir_in~combout\(30) & (\ir_in~combout\(31) & (\IF_BLOCK|predictor\(1) & \ir_in~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_in~combout\(30),
	datab => \ir_in~combout\(31),
	datac => \IF_BLOCK|predictor\(1),
	datad => \ir_in~combout\(29),
	combout => \IF_BLOCK|pc_next~0_combout\);

-- Location: LCCOMB_X33_Y22_N26
\IF_BLOCK|pc_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~1_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~0_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|Add2~0_combout\,
	datac => \IF_BLOCK|pc_next~0_combout\,
	datad => \IF_BLOCK|Add3~0_combout\,
	combout => \IF_BLOCK|pc_next~1_combout\);

-- Location: LCFF_X33_Y22_N27
\IF_BLOCK|pc_next[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(0));

-- Location: LCCOMB_X33_Y22_N22
\IF_BLOCK|adr_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[0]~feeder_combout\ = \IF_BLOCK|pc_next\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(0),
	combout => \IF_BLOCK|adr_out[0]~feeder_combout\);

-- Location: LCFF_X33_Y22_N23
\IF_BLOCK|adr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(0));

-- Location: LCCOMB_X27_Y23_N4
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

-- Location: LCFF_X27_Y23_N5
\IF_BLOCK|adr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(1));

-- Location: LCFF_X33_Y23_N29
\IF_BLOCK|adr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(2));

-- Location: LCFF_X33_Y23_N27
\IF_BLOCK|adr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(3));

-- Location: LCCOMB_X38_Y23_N12
\IF_BLOCK|adr_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[4]~feeder_combout\ = \IF_BLOCK|pc_next\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(4),
	combout => \IF_BLOCK|adr_out[4]~feeder_combout\);

-- Location: LCFF_X38_Y23_N13
\IF_BLOCK|adr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(4));

-- Location: LCFF_X33_Y23_N21
\IF_BLOCK|adr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(5));

-- Location: LCFF_X36_Y23_N29
\IF_BLOCK|adr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(6));

-- Location: LCFF_X34_Y20_N25
\IF_BLOCK|adr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(7));

-- Location: LCCOMB_X33_Y23_N18
\IF_BLOCK|adr_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[8]~feeder_combout\ = \IF_BLOCK|pc_next\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(8),
	combout => \IF_BLOCK|adr_out[8]~feeder_combout\);

-- Location: LCFF_X33_Y23_N19
\IF_BLOCK|adr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(8));

-- Location: LCFF_X33_Y23_N25
\IF_BLOCK|adr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(9));

-- Location: LCCOMB_X36_Y23_N22
\IF_BLOCK|pc_next~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~11_combout\ = (\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add2~20_combout\)) # (!\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add2~20_combout\,
	datad => \IF_BLOCK|Add3~20_combout\,
	combout => \IF_BLOCK|pc_next~11_combout\);

-- Location: LCFF_X36_Y23_N23
\IF_BLOCK|pc_next[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(10));

-- Location: LCFF_X36_Y23_N17
\IF_BLOCK|adr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(10));

-- Location: LCFF_X34_Y23_N11
\IF_BLOCK|adr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(11));

-- Location: LCFF_X36_Y23_N3
\IF_BLOCK|adr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(12));

-- Location: LCCOMB_X33_Y23_N30
\IF_BLOCK|pc_next~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~14_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~26_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|Add3~26_combout\,
	datac => \IF_BLOCK|Add2~26_combout\,
	datad => \IF_BLOCK|pc_next~0_combout\,
	combout => \IF_BLOCK|pc_next~14_combout\);

-- Location: LCFF_X33_Y23_N31
\IF_BLOCK|pc_next[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(13));

-- Location: LCCOMB_X33_Y23_N22
\IF_BLOCK|adr_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[13]~feeder_combout\ = \IF_BLOCK|pc_next\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(13),
	combout => \IF_BLOCK|adr_out[13]~feeder_combout\);

-- Location: LCFF_X33_Y23_N23
\IF_BLOCK|adr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(13));

-- Location: LCFF_X36_Y23_N9
\IF_BLOCK|adr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(14));

-- Location: LCCOMB_X33_Y23_N16
\IF_BLOCK|adr_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[15]~feeder_combout\ = \IF_BLOCK|pc_next\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc_next\(15),
	combout => \IF_BLOCK|adr_out[15]~feeder_combout\);

-- Location: LCFF_X33_Y23_N17
\IF_BLOCK|adr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(15));

-- Location: LCFF_X34_Y22_N5
\IF_BLOCK|adr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(16));

-- Location: LCFF_X35_Y22_N9
\IF_BLOCK|adr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(17));

-- Location: LCCOMB_X38_Y22_N20
\IF_BLOCK|pc_next~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~19_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~36_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~36_combout\,
	datad => \IF_BLOCK|Add2~36_combout\,
	combout => \IF_BLOCK|pc_next~19_combout\);

-- Location: LCFF_X38_Y22_N21
\IF_BLOCK|pc_next[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(18));

-- Location: LCFF_X35_Y22_N27
\IF_BLOCK|adr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(18));

-- Location: LCFF_X34_Y22_N1
\IF_BLOCK|adr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(19));

-- Location: LCCOMB_X33_Y22_N20
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

-- Location: LCFF_X33_Y22_N21
\IF_BLOCK|adr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(20));

-- Location: LCFF_X36_Y22_N11
\IF_BLOCK|adr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(21));

-- Location: LCCOMB_X36_Y22_N24
\IF_BLOCK|pc_next~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~23_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~44_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~44_combout\,
	datad => \IF_BLOCK|Add2~44_combout\,
	combout => \IF_BLOCK|pc_next~23_combout\);

-- Location: LCFF_X36_Y22_N25
\IF_BLOCK|pc_next[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(22));

-- Location: LCFF_X34_Y22_N3
\IF_BLOCK|adr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(22));

-- Location: LCCOMB_X33_Y22_N4
\IF_BLOCK|pc_next~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~24_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~46_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~46_combout\,
	datad => \IF_BLOCK|Add2~46_combout\,
	combout => \IF_BLOCK|pc_next~24_combout\);

-- Location: LCFF_X33_Y22_N5
\IF_BLOCK|pc_next[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(23));

-- Location: LCCOMB_X33_Y22_N8
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

-- Location: LCFF_X33_Y22_N9
\IF_BLOCK|adr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(23));

-- Location: LCCOMB_X33_Y22_N24
\IF_BLOCK|pc_next~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc_next~25_combout\ = (\IF_BLOCK|pc_next~0_combout\ & ((\IF_BLOCK|Add2~48_combout\))) # (!\IF_BLOCK|pc_next~0_combout\ & (\IF_BLOCK|Add3~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc_next~0_combout\,
	datac => \IF_BLOCK|Add3~48_combout\,
	datad => \IF_BLOCK|Add2~48_combout\,
	combout => \IF_BLOCK|pc_next~25_combout\);

-- Location: LCFF_X33_Y22_N25
\IF_BLOCK|pc_next[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc_next~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc_next\(24));

-- Location: LCFF_X33_Y22_N17
\IF_BLOCK|adr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(24));

-- Location: LCFF_X33_Y22_N29
\IF_BLOCK|adr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(25));

-- Location: LCFF_X36_Y22_N21
\IF_BLOCK|adr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(26));

-- Location: LCFF_X34_Y22_N11
\IF_BLOCK|adr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(27));

-- Location: LCFF_X35_Y22_N21
\IF_BLOCK|adr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(28));

-- Location: LCFF_X33_Y22_N19
\IF_BLOCK|adr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(29));

-- Location: LCFF_X33_Y22_N13
\IF_BLOCK|adr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(30));

-- Location: LCFF_X35_Y22_N17
\IF_BLOCK|adr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc_next\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(31));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X13_Y1_N10
\IF_BLOCK|ir_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[16]~feeder_combout\ = \ir_in~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(16),
	combout => \IF_BLOCK|ir_out[16]~feeder_combout\);

-- Location: LCFF_X13_Y1_N11
\IF_BLOCK|ir_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(16));

-- Location: LCCOMB_X13_Y1_N12
\ID_BLOCK|ir[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[16]~feeder_combout\ = \IF_BLOCK|ir_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(16),
	combout => \ID_BLOCK|ir[16]~feeder_combout\);

-- Location: LCFF_X13_Y1_N13
\ID_BLOCK|ir[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(16));

-- Location: LCCOMB_X13_Y1_N2
\ID_BLOCK|Rs1_out[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs1_out[0]~reg0feeder_combout\ = \ID_BLOCK|ir\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(16),
	combout => \ID_BLOCK|Rs1_out[0]~reg0feeder_combout\);

-- Location: LCFF_X13_Y1_N3
\ID_BLOCK|Rs1_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[0]~reg0_regout\);

-- Location: LCCOMB_X12_Y1_N0
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

-- Location: LCFF_X12_Y1_N1
\EX_BLOCK|reg1_no_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(0));

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X13_Y1_N0
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

-- Location: LCFF_X13_Y1_N1
\IF_BLOCK|ir_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(17));

-- Location: LCCOMB_X13_Y1_N26
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

-- Location: LCFF_X13_Y1_N27
\ID_BLOCK|ir[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(17));

-- Location: LCCOMB_X13_Y1_N4
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

-- Location: LCFF_X13_Y1_N5
\ID_BLOCK|Rs1_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[1]~reg0_regout\);

-- Location: LCFF_X13_Y1_N17
\EX_BLOCK|reg1_no_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rs1_out[1]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(1));

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X50_Y1_N28
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

-- Location: LCFF_X50_Y1_N29
\IF_BLOCK|ir_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(18));

-- Location: LCCOMB_X49_Y1_N0
\ID_BLOCK|ir[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|ir[18]~feeder_combout\ = \IF_BLOCK|ir_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|ir_out\(18),
	combout => \ID_BLOCK|ir[18]~feeder_combout\);

-- Location: LCFF_X49_Y1_N1
\ID_BLOCK|ir[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(18));

-- Location: LCCOMB_X49_Y1_N30
\ID_BLOCK|Rs1_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs1_out[2]~reg0feeder_combout\ = \ID_BLOCK|ir\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(18),
	combout => \ID_BLOCK|Rs1_out[2]~reg0feeder_combout\);

-- Location: LCFF_X49_Y1_N31
\ID_BLOCK|Rs1_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[2]~reg0_regout\);

-- Location: LCCOMB_X49_Y1_N16
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

-- Location: LCFF_X49_Y1_N17
\EX_BLOCK|reg1_no_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(2));

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X50_Y1_N31
\IF_BLOCK|ir_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(19));

-- Location: LCCOMB_X49_Y1_N10
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

-- Location: LCFF_X49_Y1_N11
\ID_BLOCK|ir[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(19));

-- Location: LCCOMB_X49_Y1_N12
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

-- Location: LCFF_X49_Y1_N13
\ID_BLOCK|Rs1_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[3]~reg0_regout\);

-- Location: LCCOMB_X49_Y1_N22
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

-- Location: LCFF_X49_Y1_N23
\EX_BLOCK|reg1_no_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(3));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y17_N4
\IF_BLOCK|ir_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[20]~feeder_combout\ = \ir_in~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(20),
	combout => \IF_BLOCK|ir_out[20]~feeder_combout\);

-- Location: LCFF_X1_Y17_N5
\IF_BLOCK|ir_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(20));

-- Location: LCFF_X1_Y17_N1
\ID_BLOCK|ir[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(20));

-- Location: LCCOMB_X1_Y17_N28
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

-- Location: LCFF_X1_Y17_N29
\ID_BLOCK|Rs1_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs1_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs1_out[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y17_N12
\EX_BLOCK|reg1_no_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg1_no_out[4]~feeder_combout\ = \ID_BLOCK|Rs1_out[4]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs1_out[4]~reg0_regout\,
	combout => \EX_BLOCK|reg1_no_out[4]~feeder_combout\);

-- Location: LCFF_X1_Y17_N13
\EX_BLOCK|reg1_no_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg1_no_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg1_no_out\(4));

-- Location: LCCOMB_X35_Y20_N18
\ID_BLOCK|Equal20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Equal20~0_combout\ = (!\ID_BLOCK|ir\(26) & (!\ID_BLOCK|ir\(27) & (\ID_BLOCK|ir\(28) & !\ID_BLOCK|ir\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(26),
	datab => \ID_BLOCK|ir\(27),
	datac => \ID_BLOCK|ir\(28),
	datad => \ID_BLOCK|ir\(29),
	combout => \ID_BLOCK|Equal20~0_combout\);

-- Location: LCCOMB_X35_Y20_N16
\ID_BLOCK|Equal20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Equal20~1_combout\ = (!\ID_BLOCK|ir\(30) & (\ID_BLOCK|Equal20~0_combout\ & \ID_BLOCK|ir\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(30),
	datab => \ID_BLOCK|Equal20~0_combout\,
	datad => \ID_BLOCK|ir\(31),
	combout => \ID_BLOCK|Equal20~1_combout\);

-- Location: LCCOMB_X13_Y1_N30
\ID_BLOCK|Rs2_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[0]~0_combout\ = (\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(16))) # (!\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(16),
	datab => \ID_BLOCK|ir\(11),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[0]~0_combout\);

-- Location: LCFF_X13_Y1_N31
\ID_BLOCK|Rs2_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[0]~reg0_regout\);

-- Location: LCCOMB_X12_Y1_N22
\EX_BLOCK|reg2_no_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|reg2_no_out[0]~feeder_combout\ = \ID_BLOCK|Rs2_out[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|Rs2_out[0]~reg0_regout\,
	combout => \EX_BLOCK|reg2_no_out[0]~feeder_combout\);

-- Location: LCFF_X12_Y1_N23
\EX_BLOCK|reg2_no_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(0));

-- Location: LCCOMB_X35_Y20_N22
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

-- Location: LCFF_X35_Y20_N23
\ID_BLOCK|Rs2_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[1]~reg0_regout\);

-- Location: LCFF_X12_Y1_N5
\EX_BLOCK|reg2_no_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rs2_out[1]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(1));

-- Location: LCCOMB_X49_Y1_N26
\ID_BLOCK|Rs2_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[2]~2_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(18)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_BLOCK|ir\(13),
	datab => \ID_BLOCK|ir\(18),
	datad => \ID_BLOCK|Equal20~1_combout\,
	combout => \ID_BLOCK|Rs2_out[2]~2_combout\);

-- Location: LCFF_X49_Y1_N27
\ID_BLOCK|Rs2_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[2]~reg0_regout\);

-- Location: LCCOMB_X49_Y1_N28
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

-- Location: LCFF_X49_Y1_N29
\EX_BLOCK|reg2_no_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(2));

-- Location: LCCOMB_X35_Y20_N28
\ID_BLOCK|Rs2_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[3]~3_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(19)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|Equal20~1_combout\,
	datac => \ID_BLOCK|ir\(14),
	datad => \ID_BLOCK|ir\(19),
	combout => \ID_BLOCK|Rs2_out[3]~3_combout\);

-- Location: LCFF_X35_Y20_N29
\ID_BLOCK|Rs2_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[3]~reg0_regout\);

-- Location: LCCOMB_X36_Y20_N8
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

-- Location: LCFF_X36_Y20_N9
\EX_BLOCK|reg2_no_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(3));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y17_N26
\IF_BLOCK|ir_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|ir_out[15]~feeder_combout\ = \ir_in~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_in~combout\(15),
	combout => \IF_BLOCK|ir_out[15]~feeder_combout\);

-- Location: LCFF_X1_Y17_N27
\IF_BLOCK|ir_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(15));

-- Location: LCCOMB_X1_Y17_N18
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

-- Location: LCFF_X1_Y17_N19
\ID_BLOCK|ir[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(15));

-- Location: LCCOMB_X1_Y17_N10
\ID_BLOCK|Rs2_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rs2_out[4]~4_combout\ = (\ID_BLOCK|Equal20~1_combout\ & ((\ID_BLOCK|ir\(20)))) # (!\ID_BLOCK|Equal20~1_combout\ & (\ID_BLOCK|ir\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_BLOCK|ir\(15),
	datac => \ID_BLOCK|Equal20~1_combout\,
	datad => \ID_BLOCK|ir\(20),
	combout => \ID_BLOCK|Rs2_out[4]~4_combout\);

-- Location: LCFF_X1_Y17_N11
\ID_BLOCK|Rs2_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rs2_out[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rs2_out[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y17_N22
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

-- Location: LCFF_X1_Y17_N23
\EX_BLOCK|reg2_no_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|reg2_no_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|reg2_no_out\(4));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y43_N30
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

-- Location: LCFF_X1_Y43_N31
\EX_BLOCK|ALU_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(0));

-- Location: LCCOMB_X1_Y43_N28
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

-- Location: LCFF_X1_Y43_N29
\MEM_BLOCK|adr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(0));

-- Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y1_N30
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

-- Location: LCFF_X3_Y1_N31
\EX_BLOCK|ALU_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(1));

-- Location: LCCOMB_X3_Y1_N20
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

-- Location: LCFF_X3_Y1_N21
\MEM_BLOCK|adr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(1));

-- Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y47_N30
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

-- Location: LCFF_X94_Y47_N31
\EX_BLOCK|ALU_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(2));

-- Location: LCCOMB_X94_Y47_N0
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

-- Location: LCFF_X94_Y47_N1
\MEM_BLOCK|adr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(2));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X51_Y50_N30
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

-- Location: LCFF_X51_Y50_N31
\EX_BLOCK|ALU_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(3));

-- Location: LCCOMB_X51_Y50_N0
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

-- Location: LCFF_X51_Y50_N1
\MEM_BLOCK|adr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(3));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y48_N30
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

-- Location: LCFF_X2_Y48_N31
\EX_BLOCK|ALU_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(4));

-- Location: LCCOMB_X2_Y48_N4
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

-- Location: LCFF_X2_Y48_N5
\MEM_BLOCK|adr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(4));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y14_N30
\EX_BLOCK|ALU_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \EX_BLOCK|ALU_out[5]~feeder_combout\ = \reg1_data_reg_ex~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1_data_reg_ex~combout\(5),
	combout => \EX_BLOCK|ALU_out[5]~feeder_combout\);

-- Location: LCFF_X1_Y14_N31
\EX_BLOCK|ALU_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(5));

-- Location: LCCOMB_X1_Y14_N28
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

-- Location: LCFF_X1_Y14_N29
\MEM_BLOCK|adr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(5));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y50_N30
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

-- Location: LCFF_X3_Y50_N31
\EX_BLOCK|ALU_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(6));

-- Location: LCCOMB_X3_Y50_N28
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

-- Location: LCFF_X3_Y50_N29
\MEM_BLOCK|adr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(6));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X6_Y50_N30
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

-- Location: LCFF_X6_Y50_N31
\EX_BLOCK|ALU_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(7));

-- Location: LCCOMB_X6_Y50_N0
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

-- Location: LCFF_X6_Y50_N1
\MEM_BLOCK|adr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(7));

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y41_N30
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

-- Location: LCFF_X1_Y41_N31
\EX_BLOCK|ALU_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(8));

-- Location: LCCOMB_X1_Y41_N28
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

-- Location: LCFF_X1_Y41_N29
\MEM_BLOCK|adr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(8));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y44_N30
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

-- Location: LCFF_X1_Y44_N31
\EX_BLOCK|ALU_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(9));

-- Location: LCCOMB_X1_Y44_N28
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

-- Location: LCFF_X1_Y44_N29
\MEM_BLOCK|adr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(9));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y50_N30
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

-- Location: LCFF_X2_Y50_N31
\EX_BLOCK|ALU_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(10));

-- Location: LCCOMB_X2_Y50_N28
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

-- Location: LCFF_X2_Y50_N29
\MEM_BLOCK|adr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(10));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y48_N30
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

-- Location: LCFF_X1_Y48_N31
\EX_BLOCK|ALU_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(11));

-- Location: LCCOMB_X1_Y48_N28
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

-- Location: LCFF_X1_Y48_N29
\MEM_BLOCK|adr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(11));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X56_Y50_N30
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

-- Location: LCFF_X56_Y50_N31
\EX_BLOCK|ALU_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(12));

-- Location: LCCOMB_X56_Y50_N0
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

-- Location: LCFF_X56_Y50_N1
\MEM_BLOCK|adr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(12));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X65_Y50_N30
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

-- Location: LCFF_X65_Y50_N31
\EX_BLOCK|ALU_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(13));

-- Location: LCCOMB_X65_Y50_N0
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

-- Location: LCFF_X65_Y50_N1
\MEM_BLOCK|adr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(13));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y50_N30
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

-- Location: LCFF_X7_Y50_N31
\EX_BLOCK|ALU_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(14));

-- Location: LCCOMB_X7_Y50_N0
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

-- Location: LCFF_X7_Y50_N1
\MEM_BLOCK|adr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(14));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y11_N30
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

-- Location: LCFF_X1_Y11_N31
\EX_BLOCK|ALU_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(15));

-- Location: LCCOMB_X1_Y11_N28
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

-- Location: LCFF_X1_Y11_N29
\MEM_BLOCK|adr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(15));

-- Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y1_N30
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

-- Location: LCFF_X1_Y1_N31
\EX_BLOCK|ALU_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(16));

-- Location: LCCOMB_X1_Y1_N0
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

-- Location: LCFF_X1_Y1_N1
\MEM_BLOCK|adr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(16));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X67_Y50_N30
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

-- Location: LCFF_X67_Y50_N31
\EX_BLOCK|ALU_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(17));

-- Location: LCCOMB_X67_Y50_N0
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

-- Location: LCFF_X67_Y50_N1
\MEM_BLOCK|adr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(17));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y50_N30
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

-- Location: LCFF_X4_Y50_N31
\EX_BLOCK|ALU_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(18));

-- Location: LCCOMB_X4_Y50_N0
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

-- Location: LCFF_X4_Y50_N1
\MEM_BLOCK|adr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(18));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X58_Y1_N30
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

-- Location: LCFF_X58_Y1_N31
\EX_BLOCK|ALU_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(19));

-- Location: LCCOMB_X58_Y1_N16
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

-- Location: LCFF_X58_Y1_N17
\MEM_BLOCK|adr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(19));

-- Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y38_N30
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

-- Location: LCFF_X94_Y38_N31
\EX_BLOCK|ALU_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(20));

-- Location: LCCOMB_X94_Y38_N0
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

-- Location: LCFF_X94_Y38_N1
\MEM_BLOCK|adr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(20));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y8_N30
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

-- Location: LCFF_X1_Y8_N31
\EX_BLOCK|ALU_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(21));

-- Location: LCCOMB_X1_Y8_N28
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

-- Location: LCFF_X1_Y8_N29
\MEM_BLOCK|adr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(21));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y24_N30
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

-- Location: LCFF_X1_Y24_N31
\EX_BLOCK|ALU_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(22));

-- Location: LCCOMB_X1_Y24_N28
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

-- Location: LCFF_X1_Y24_N29
\MEM_BLOCK|adr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(22));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X69_Y1_N30
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

-- Location: LCFF_X69_Y1_N31
\EX_BLOCK|ALU_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(23));

-- Location: LCCOMB_X69_Y1_N16
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

-- Location: LCFF_X69_Y1_N17
\MEM_BLOCK|adr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(23));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y32_N30
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

-- Location: LCFF_X1_Y32_N31
\EX_BLOCK|ALU_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(24));

-- Location: LCCOMB_X1_Y32_N28
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

-- Location: LCFF_X1_Y32_N29
\MEM_BLOCK|adr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(24));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y3_N30
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

-- Location: LCFF_X94_Y3_N31
\EX_BLOCK|ALU_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(25));

-- Location: LCCOMB_X94_Y3_N0
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

-- Location: LCFF_X94_Y3_N1
\MEM_BLOCK|adr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(25));

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X56_Y1_N30
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

-- Location: LCFF_X56_Y1_N31
\EX_BLOCK|ALU_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(26));

-- Location: LCCOMB_X56_Y1_N16
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

-- Location: LCFF_X56_Y1_N17
\MEM_BLOCK|adr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(26));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y7_N30
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

-- Location: LCFF_X1_Y7_N31
\EX_BLOCK|ALU_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(27));

-- Location: LCCOMB_X1_Y7_N28
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

-- Location: LCFF_X1_Y7_N29
\MEM_BLOCK|adr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(27));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X69_Y50_N30
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

-- Location: LCFF_X69_Y50_N31
\EX_BLOCK|ALU_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(28));

-- Location: LCCOMB_X69_Y50_N0
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

-- Location: LCFF_X69_Y50_N1
\MEM_BLOCK|adr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(28));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X5_Y50_N30
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

-- Location: LCFF_X5_Y50_N31
\EX_BLOCK|ALU_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(29));

-- Location: LCCOMB_X5_Y50_N0
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

-- Location: LCFF_X5_Y50_N1
\MEM_BLOCK|adr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(29));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y13_N30
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

-- Location: LCFF_X1_Y13_N31
\EX_BLOCK|ALU_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(30));

-- Location: LCCOMB_X1_Y13_N28
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

-- Location: LCFF_X1_Y13_N29
\MEM_BLOCK|adr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(30));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y50_N30
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

-- Location: LCFF_X1_Y50_N31
\EX_BLOCK|ALU_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|ALU_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|ALU_out\(31));

-- Location: LCCOMB_X1_Y50_N16
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

-- Location: LCFF_X1_Y50_N17
\MEM_BLOCK|adr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|adr_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|adr_out\(31));

-- Location: LCCOMB_X40_Y21_N6
\ID_BLOCK|Rd_out[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ID_BLOCK|Rd_out[0]~reg0feeder_combout\ = \ID_BLOCK|ir\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_BLOCK|ir\(21),
	combout => \ID_BLOCK|Rd_out[0]~reg0feeder_combout\);

-- Location: LCFF_X40_Y21_N7
\ID_BLOCK|Rd_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[0]~reg0_regout\);

-- Location: LCCOMB_X40_Y21_N18
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

-- Location: LCFF_X40_Y21_N19
\EX_BLOCK|Rd_pom[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(0));

-- Location: LCCOMB_X40_Y21_N14
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

-- Location: LCFF_X40_Y21_N15
\EX_BLOCK|Reg_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(0));

-- Location: LCCOMB_X41_Y21_N28
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

-- Location: LCFF_X41_Y21_N29
\MEM_BLOCK|Reg_pom[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(0));

-- Location: LCCOMB_X42_Y34_N4
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

-- Location: LCFF_X42_Y34_N5
\MEM_BLOCK|Reg_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X35_Y23_N19
\IF_BLOCK|ir_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(24));

-- Location: LCCOMB_X39_Y21_N24
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

-- Location: LCFF_X39_Y21_N25
\ID_BLOCK|ir[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(24));

-- Location: LCCOMB_X40_Y21_N8
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

-- Location: LCFF_X40_Y21_N9
\ID_BLOCK|Rd_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[3]~reg0_regout\);

-- Location: LCFF_X40_Y21_N13
\EX_BLOCK|Rd_pom[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rd_out[3]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(3));

-- Location: LCCOMB_X40_Y21_N16
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

-- Location: LCFF_X40_Y21_N17
\EX_BLOCK|Reg_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(3));

-- Location: LCCOMB_X41_Y21_N18
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

-- Location: LCFF_X41_Y21_N19
\MEM_BLOCK|Reg_pom[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(3));

-- Location: LCCOMB_X42_Y34_N28
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

-- Location: LCFF_X42_Y34_N29
\MEM_BLOCK|Reg_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(3));

-- Location: LCCOMB_X40_Y21_N22
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

-- Location: LCFF_X40_Y21_N23
\IF_BLOCK|ir_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \IF_BLOCK|ir_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(22));

-- Location: LCCOMB_X40_Y21_N30
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

-- Location: LCFF_X40_Y21_N31
\ID_BLOCK|ir[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ID_BLOCK|ir[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(22));

-- Location: LCCOMB_X40_Y21_N2
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

-- Location: LCFF_X40_Y21_N3
\ID_BLOCK|Rd_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y21_N4
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

-- Location: LCFF_X40_Y21_N5
\EX_BLOCK|Rd_pom[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Rd_pom[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(1));

-- Location: LCFF_X40_Y21_N25
\EX_BLOCK|Reg_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|Rd_pom\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(1));

-- Location: LCCOMB_X41_Y21_N10
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

-- Location: LCFF_X41_Y21_N11
\MEM_BLOCK|Reg_pom[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(1));

-- Location: LCCOMB_X42_Y34_N16
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

-- Location: LCFF_X42_Y34_N17
\MEM_BLOCK|Reg_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(1));

-- Location: LCFF_X35_Y23_N29
\IF_BLOCK|ir_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ir_in~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|ir_out\(23));

-- Location: LCFF_X35_Y23_N31
\ID_BLOCK|ir[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|ir_out\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|ir\(23));

-- Location: LCCOMB_X39_Y21_N4
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

-- Location: LCFF_X39_Y21_N5
\ID_BLOCK|Rd_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \ID_BLOCK|Rd_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[2]~reg0_regout\);

-- Location: LCFF_X40_Y21_N11
\EX_BLOCK|Rd_pom[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rd_out[2]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(2));

-- Location: LCCOMB_X40_Y21_N26
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

-- Location: LCFF_X40_Y21_N27
\EX_BLOCK|Reg_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \EX_BLOCK|Reg_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(2));

-- Location: LCCOMB_X41_Y21_N4
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

-- Location: LCFF_X41_Y21_N5
\MEM_BLOCK|Reg_pom[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_pom[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(2));

-- Location: LCCOMB_X42_Y34_N26
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

-- Location: LCFF_X42_Y34_N27
\MEM_BLOCK|Reg_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|Reg_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(2));

-- Location: LCCOMB_X42_Y34_N6
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

-- Location: LCCOMB_X42_Y34_N20
\WB_BLOCK|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|Equal0~1_combout\ = (\MEM_BLOCK|Reg_out\(0)) # (!\WB_BLOCK|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_BLOCK|Reg_out\(0),
	datad => \WB_BLOCK|Equal0~0_combout\,
	combout => \WB_BLOCK|Equal0~1_combout\);

-- Location: LCFF_X42_Y34_N21
\WB_BLOCK|Reg_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_out\(0),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(0));

-- Location: LCFF_X42_Y34_N7
\WB_BLOCK|Reg_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_out\(1),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(1));

-- Location: LCCOMB_X42_Y34_N24
\WB_BLOCK|Reg_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|Reg_out[2]~feeder_combout\ = \MEM_BLOCK|Reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_out\(2),
	combout => \WB_BLOCK|Reg_out[2]~feeder_combout\);

-- Location: LCFF_X42_Y34_N25
\WB_BLOCK|Reg_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|Reg_out[2]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(2));

-- Location: LCCOMB_X42_Y34_N22
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

-- Location: LCFF_X42_Y34_N23
\WB_BLOCK|Reg_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|Reg_out[3]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(3));

-- Location: LCFF_X35_Y22_N1
\ID_BLOCK|Rd_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|ir\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ID_BLOCK|Rd_out[4]~reg0_regout\);

-- Location: LCFF_X35_Y22_N13
\EX_BLOCK|Rd_pom[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ID_BLOCK|Rd_out[4]~reg0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Rd_pom\(4));

-- Location: LCFF_X35_Y22_N7
\EX_BLOCK|Reg_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|Rd_pom\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EX_BLOCK|Reg_out\(4));

-- Location: LCFF_X35_Y22_N19
\MEM_BLOCK|Reg_pom[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \EX_BLOCK|Reg_out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_pom\(4));

-- Location: LCFF_X42_Y34_N11
\MEM_BLOCK|Reg_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|Reg_pom\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|Reg_out\(4));

-- Location: LCCOMB_X42_Y34_N12
\WB_BLOCK|Reg_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|Reg_out[4]~feeder_combout\ = \MEM_BLOCK|Reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|Reg_out\(4),
	combout => \WB_BLOCK|Reg_out[4]~feeder_combout\);

-- Location: LCFF_X42_Y34_N13
\WB_BLOCK|Reg_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|Reg_out[4]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|Reg_out\(4));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X42_Y34_N31
\MEM_BLOCK|ALU_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(0));

-- Location: LCCOMB_X42_Y34_N18
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

-- Location: LCFF_X42_Y34_N19
\WB_BLOCK|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[0]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X43_Y34_N29
\MEM_BLOCK|ALU_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(1));

-- Location: LCCOMB_X42_Y34_N8
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

-- Location: LCFF_X42_Y34_N9
\WB_BLOCK|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[1]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y34_N0
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

-- Location: LCFF_X42_Y34_N1
\MEM_BLOCK|ALU_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(2));

-- Location: LCCOMB_X42_Y34_N14
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

-- Location: LCFF_X42_Y34_N15
\WB_BLOCK|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[2]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(2));

-- Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X94_Y37_N13
\MEM_BLOCK|ALU_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(3));

-- Location: LCCOMB_X94_Y37_N0
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

-- Location: LCFF_X94_Y37_N1
\WB_BLOCK|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[3]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(3));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X94_Y37_N19
\MEM_BLOCK|ALU_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(4));

-- Location: LCCOMB_X94_Y37_N22
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

-- Location: LCFF_X94_Y37_N23
\WB_BLOCK|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[4]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(4));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y37_N28
\MEM_BLOCK|ALU_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEM_BLOCK|ALU_out[5]~feeder_combout\ = \data_datacache_mem~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_datacache_mem~combout\(5),
	combout => \MEM_BLOCK|ALU_out[5]~feeder_combout\);

-- Location: LCFF_X94_Y37_N29
\MEM_BLOCK|ALU_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(5));

-- Location: LCCOMB_X94_Y37_N4
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

-- Location: LCFF_X94_Y37_N5
\WB_BLOCK|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[5]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(5));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y37_N10
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

-- Location: LCFF_X94_Y37_N11
\MEM_BLOCK|ALU_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(6));

-- Location: LCCOMB_X94_Y37_N26
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

-- Location: LCFF_X94_Y37_N27
\WB_BLOCK|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[6]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(6));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X94_Y37_N9
\MEM_BLOCK|ALU_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(7));

-- Location: LCFF_X94_Y37_N17
\WB_BLOCK|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(7),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(7));

-- Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y37_N2
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

-- Location: LCFF_X94_Y37_N3
\MEM_BLOCK|ALU_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(8));

-- Location: LCCOMB_X94_Y37_N6
\WB_BLOCK|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \WB_BLOCK|data_out[8]~feeder_combout\ = \MEM_BLOCK|ALU_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_BLOCK|ALU_out\(8),
	combout => \WB_BLOCK|data_out[8]~feeder_combout\);

-- Location: LCFF_X94_Y37_N7
\WB_BLOCK|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[8]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(8));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y37_N20
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

-- Location: LCFF_X94_Y37_N21
\MEM_BLOCK|ALU_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(9));

-- Location: LCFF_X94_Y37_N25
\WB_BLOCK|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(9),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(9));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y37_N30
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

-- Location: LCFF_X94_Y37_N31
\MEM_BLOCK|ALU_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(10));

-- Location: LCCOMB_X94_Y37_N14
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

-- Location: LCFF_X94_Y37_N15
\WB_BLOCK|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[10]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(10));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X94_Y31_N13
\MEM_BLOCK|ALU_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(11));

-- Location: LCCOMB_X94_Y31_N16
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

-- Location: LCFF_X94_Y31_N17
\WB_BLOCK|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[11]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(11));

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X94_Y31_N19
\MEM_BLOCK|ALU_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(12));

-- Location: LCCOMB_X94_Y31_N22
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

-- Location: LCFF_X94_Y31_N23
\WB_BLOCK|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[12]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(12));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y31_N28
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

-- Location: LCFF_X94_Y31_N29
\MEM_BLOCK|ALU_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(13));

-- Location: LCCOMB_X94_Y31_N0
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

-- Location: LCFF_X94_Y31_N1
\WB_BLOCK|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[13]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(13));

-- Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y31_N10
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

-- Location: LCFF_X94_Y31_N11
\MEM_BLOCK|ALU_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(14));

-- Location: LCCOMB_X94_Y31_N6
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

-- Location: LCFF_X94_Y31_N7
\WB_BLOCK|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[14]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(14));

-- Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y31_N8
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

-- Location: LCFF_X94_Y31_N9
\MEM_BLOCK|ALU_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(15));

-- Location: LCFF_X94_Y31_N5
\WB_BLOCK|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(15),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(15));

-- Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y31_N26
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

-- Location: LCFF_X94_Y31_N27
\MEM_BLOCK|ALU_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(16));

-- Location: LCCOMB_X94_Y31_N30
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

-- Location: LCFF_X94_Y31_N31
\WB_BLOCK|data_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[16]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(16));

-- Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y31_N20
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

-- Location: LCFF_X94_Y31_N21
\MEM_BLOCK|ALU_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(17));

-- Location: LCFF_X94_Y31_N25
\WB_BLOCK|data_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(17),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(17));

-- Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X94_Y31_N2
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

-- Location: LCFF_X94_Y31_N3
\MEM_BLOCK|ALU_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(18));

-- Location: LCCOMB_X94_Y31_N14
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

-- Location: LCFF_X94_Y31_N15
\WB_BLOCK|data_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[18]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(18));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y36_N4
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

-- Location: LCFF_X1_Y36_N5
\MEM_BLOCK|ALU_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(19));

-- Location: LCFF_X1_Y36_N9
\WB_BLOCK|data_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(19),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(19));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X1_Y36_N3
\MEM_BLOCK|ALU_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(20));

-- Location: LCCOMB_X1_Y36_N10
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

-- Location: LCFF_X1_Y36_N11
\WB_BLOCK|data_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[20]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(20));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y36_N24
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

-- Location: LCFF_X1_Y36_N25
\MEM_BLOCK|ALU_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(21));

-- Location: LCFF_X1_Y36_N17
\WB_BLOCK|data_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(21),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(21));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y36_N18
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

-- Location: LCFF_X1_Y36_N19
\MEM_BLOCK|ALU_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(22));

-- Location: LCCOMB_X1_Y36_N26
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

-- Location: LCFF_X1_Y36_N27
\WB_BLOCK|data_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[22]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(22));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y36_N20
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

-- Location: LCFF_X1_Y36_N21
\MEM_BLOCK|ALU_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(23));

-- Location: LCFF_X1_Y36_N13
\WB_BLOCK|data_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(23),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(23));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X1_Y36_N15
\MEM_BLOCK|ALU_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(24));

-- Location: LCFF_X1_Y36_N23
\WB_BLOCK|data_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \MEM_BLOCK|ALU_out\(24),
	sload => VCC,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(24));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y36_N0
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

-- Location: LCFF_X1_Y36_N1
\MEM_BLOCK|ALU_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(25));

-- Location: LCCOMB_X1_Y36_N28
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

-- Location: LCFF_X1_Y36_N29
\WB_BLOCK|data_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[25]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(25));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y36_N30
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

-- Location: LCFF_X1_Y36_N31
\MEM_BLOCK|ALU_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(26));

-- Location: LCCOMB_X1_Y36_N6
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

-- Location: LCFF_X1_Y36_N7
\WB_BLOCK|data_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[26]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(26));

-- Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X66_Y10_N11
\MEM_BLOCK|ALU_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(27));

-- Location: LCCOMB_X66_Y10_N8
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

-- Location: LCFF_X66_Y10_N9
\WB_BLOCK|data_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[27]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(27));

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X66_Y10_N12
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

-- Location: LCFF_X66_Y10_N13
\MEM_BLOCK|ALU_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(28));

-- Location: LCCOMB_X66_Y10_N22
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

-- Location: LCFF_X66_Y10_N23
\WB_BLOCK|data_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[28]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(28));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X66_Y10_N26
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

-- Location: LCFF_X66_Y10_N27
\MEM_BLOCK|ALU_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(29));

-- Location: LCCOMB_X66_Y10_N0
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

-- Location: LCFF_X66_Y10_N1
\WB_BLOCK|data_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[29]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(29));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X66_Y10_N29
\MEM_BLOCK|ALU_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \data_datacache_mem~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(30));

-- Location: LCCOMB_X66_Y10_N6
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

-- Location: LCFF_X66_Y10_N7
\WB_BLOCK|data_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WB_BLOCK|data_out[30]~feeder_combout\,
	ena => \WB_BLOCK|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WB_BLOCK|data_out\(30));

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X66_Y10_N30
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

-- Location: LCFF_X66_Y10_N31
\MEM_BLOCK|ALU_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \MEM_BLOCK|ALU_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MEM_BLOCK|ALU_out\(31));

-- Location: LCCOMB_X66_Y10_N16
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

-- Location: LCFF_X66_Y10_N17
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AF27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AH2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


