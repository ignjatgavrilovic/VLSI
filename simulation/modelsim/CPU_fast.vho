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

-- DATE "08/05/2016 19:39:01"

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
	adr_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- reset	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_out[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[7]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[9]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[10]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[11]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[12]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[13]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[14]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[15]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[16]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[17]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[18]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[19]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[20]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[21]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[22]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[23]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[24]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[25]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[26]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[27]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[28]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[29]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[30]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_out[31]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_adr_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \IF_BLOCK|pc[0]~93_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[1]~31_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[1]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[1]~32\ : std_logic;
SIGNAL \IF_BLOCK|pc[2]~33_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[2]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[2]~34\ : std_logic;
SIGNAL \IF_BLOCK|pc[3]~35_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[3]~36\ : std_logic;
SIGNAL \IF_BLOCK|pc[4]~37_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[4]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[4]~38\ : std_logic;
SIGNAL \IF_BLOCK|pc[5]~39_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[5]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[5]~40\ : std_logic;
SIGNAL \IF_BLOCK|pc[6]~41_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[6]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[6]~42\ : std_logic;
SIGNAL \IF_BLOCK|pc[7]~43_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[7]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[7]~44\ : std_logic;
SIGNAL \IF_BLOCK|pc[8]~45_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[8]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[8]~46\ : std_logic;
SIGNAL \IF_BLOCK|pc[9]~47_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[9]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[9]~48\ : std_logic;
SIGNAL \IF_BLOCK|pc[10]~49_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[10]~50\ : std_logic;
SIGNAL \IF_BLOCK|pc[11]~51_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[11]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[11]~52\ : std_logic;
SIGNAL \IF_BLOCK|pc[12]~53_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[12]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[12]~54\ : std_logic;
SIGNAL \IF_BLOCK|pc[13]~55_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[13]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[13]~56\ : std_logic;
SIGNAL \IF_BLOCK|pc[14]~57_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[14]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[14]~58\ : std_logic;
SIGNAL \IF_BLOCK|pc[15]~59_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[15]~60\ : std_logic;
SIGNAL \IF_BLOCK|pc[16]~61_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[16]~62\ : std_logic;
SIGNAL \IF_BLOCK|pc[17]~63_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[17]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[17]~64\ : std_logic;
SIGNAL \IF_BLOCK|pc[18]~65_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[18]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[18]~66\ : std_logic;
SIGNAL \IF_BLOCK|pc[19]~67_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[19]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[19]~68\ : std_logic;
SIGNAL \IF_BLOCK|pc[20]~69_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[20]~70\ : std_logic;
SIGNAL \IF_BLOCK|pc[21]~71_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[21]~72\ : std_logic;
SIGNAL \IF_BLOCK|pc[22]~73_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[22]~74\ : std_logic;
SIGNAL \IF_BLOCK|pc[23]~75_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[23]~76\ : std_logic;
SIGNAL \IF_BLOCK|pc[24]~77_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[24]~78\ : std_logic;
SIGNAL \IF_BLOCK|pc[25]~79_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[25]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[25]~80\ : std_logic;
SIGNAL \IF_BLOCK|pc[26]~81_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[26]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[26]~82\ : std_logic;
SIGNAL \IF_BLOCK|pc[27]~83_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[27]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[27]~84\ : std_logic;
SIGNAL \IF_BLOCK|pc[28]~85_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[28]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[28]~86\ : std_logic;
SIGNAL \IF_BLOCK|pc[29]~87_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[29]~88\ : std_logic;
SIGNAL \IF_BLOCK|pc[30]~89_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[30]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc[30]~90\ : std_logic;
SIGNAL \IF_BLOCK|pc[31]~91_combout\ : std_logic;
SIGNAL \IF_BLOCK|adr_out[31]~feeder_combout\ : std_logic;
SIGNAL \IF_BLOCK|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IF_BLOCK|adr_out\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
adr_out <= ww_adr_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

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

-- Location: LCCOMB_X32_Y50_N0
\IF_BLOCK|pc[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[0]~93_combout\ = !\IF_BLOCK|pc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_BLOCK|pc\(0),
	combout => \IF_BLOCK|pc[0]~93_combout\);

-- Location: LCFF_X32_Y50_N1
\IF_BLOCK|pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(0));

-- Location: LCFF_X33_Y50_N21
\IF_BLOCK|adr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(0));

-- Location: LCCOMB_X32_Y50_N2
\IF_BLOCK|pc[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[1]~31_combout\ = (\IF_BLOCK|pc\(0) & (\IF_BLOCK|pc\(1) $ (VCC))) # (!\IF_BLOCK|pc\(0) & (\IF_BLOCK|pc\(1) & VCC))
-- \IF_BLOCK|pc[1]~32\ = CARRY((\IF_BLOCK|pc\(0) & \IF_BLOCK|pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(0),
	datab => \IF_BLOCK|pc\(1),
	datad => VCC,
	combout => \IF_BLOCK|pc[1]~31_combout\,
	cout => \IF_BLOCK|pc[1]~32\);

-- Location: LCFF_X32_Y50_N3
\IF_BLOCK|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(1));

-- Location: LCCOMB_X33_Y50_N18
\IF_BLOCK|adr_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[1]~feeder_combout\ = \IF_BLOCK|pc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(1),
	combout => \IF_BLOCK|adr_out[1]~feeder_combout\);

-- Location: LCFF_X33_Y50_N19
\IF_BLOCK|adr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(1));

-- Location: LCCOMB_X32_Y50_N4
\IF_BLOCK|pc[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[2]~33_combout\ = (\IF_BLOCK|pc\(2) & (!\IF_BLOCK|pc[1]~32\)) # (!\IF_BLOCK|pc\(2) & ((\IF_BLOCK|pc[1]~32\) # (GND)))
-- \IF_BLOCK|pc[2]~34\ = CARRY((!\IF_BLOCK|pc[1]~32\) # (!\IF_BLOCK|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(2),
	datad => VCC,
	cin => \IF_BLOCK|pc[1]~32\,
	combout => \IF_BLOCK|pc[2]~33_combout\,
	cout => \IF_BLOCK|pc[2]~34\);

-- Location: LCFF_X32_Y50_N5
\IF_BLOCK|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(2));

-- Location: LCCOMB_X29_Y50_N28
\IF_BLOCK|adr_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[2]~feeder_combout\ = \IF_BLOCK|pc\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(2),
	combout => \IF_BLOCK|adr_out[2]~feeder_combout\);

-- Location: LCFF_X29_Y50_N29
\IF_BLOCK|adr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(2));

-- Location: LCCOMB_X32_Y50_N6
\IF_BLOCK|pc[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[3]~35_combout\ = (\IF_BLOCK|pc\(3) & (\IF_BLOCK|pc[2]~34\ $ (GND))) # (!\IF_BLOCK|pc\(3) & (!\IF_BLOCK|pc[2]~34\ & VCC))
-- \IF_BLOCK|pc[3]~36\ = CARRY((\IF_BLOCK|pc\(3) & !\IF_BLOCK|pc[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(3),
	datad => VCC,
	cin => \IF_BLOCK|pc[2]~34\,
	combout => \IF_BLOCK|pc[3]~35_combout\,
	cout => \IF_BLOCK|pc[3]~36\);

-- Location: LCFF_X32_Y50_N7
\IF_BLOCK|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(3));

-- Location: LCFF_X33_Y50_N17
\IF_BLOCK|adr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(3));

-- Location: LCCOMB_X32_Y50_N8
\IF_BLOCK|pc[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[4]~37_combout\ = (\IF_BLOCK|pc\(4) & (!\IF_BLOCK|pc[3]~36\)) # (!\IF_BLOCK|pc\(4) & ((\IF_BLOCK|pc[3]~36\) # (GND)))
-- \IF_BLOCK|pc[4]~38\ = CARRY((!\IF_BLOCK|pc[3]~36\) # (!\IF_BLOCK|pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(4),
	datad => VCC,
	cin => \IF_BLOCK|pc[3]~36\,
	combout => \IF_BLOCK|pc[4]~37_combout\,
	cout => \IF_BLOCK|pc[4]~38\);

-- Location: LCFF_X32_Y50_N9
\IF_BLOCK|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(4));

-- Location: LCCOMB_X33_Y50_N2
\IF_BLOCK|adr_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[4]~feeder_combout\ = \IF_BLOCK|pc\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(4),
	combout => \IF_BLOCK|adr_out[4]~feeder_combout\);

-- Location: LCFF_X33_Y50_N3
\IF_BLOCK|adr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(4));

-- Location: LCCOMB_X32_Y50_N10
\IF_BLOCK|pc[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[5]~39_combout\ = (\IF_BLOCK|pc\(5) & (\IF_BLOCK|pc[4]~38\ $ (GND))) # (!\IF_BLOCK|pc\(5) & (!\IF_BLOCK|pc[4]~38\ & VCC))
-- \IF_BLOCK|pc[5]~40\ = CARRY((\IF_BLOCK|pc\(5) & !\IF_BLOCK|pc[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(5),
	datad => VCC,
	cin => \IF_BLOCK|pc[4]~38\,
	combout => \IF_BLOCK|pc[5]~39_combout\,
	cout => \IF_BLOCK|pc[5]~40\);

-- Location: LCFF_X32_Y50_N11
\IF_BLOCK|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(5));

-- Location: LCCOMB_X33_Y50_N28
\IF_BLOCK|adr_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[5]~feeder_combout\ = \IF_BLOCK|pc\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(5),
	combout => \IF_BLOCK|adr_out[5]~feeder_combout\);

-- Location: LCFF_X33_Y50_N29
\IF_BLOCK|adr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(5));

-- Location: LCCOMB_X32_Y50_N12
\IF_BLOCK|pc[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[6]~41_combout\ = (\IF_BLOCK|pc\(6) & (!\IF_BLOCK|pc[5]~40\)) # (!\IF_BLOCK|pc\(6) & ((\IF_BLOCK|pc[5]~40\) # (GND)))
-- \IF_BLOCK|pc[6]~42\ = CARRY((!\IF_BLOCK|pc[5]~40\) # (!\IF_BLOCK|pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(6),
	datad => VCC,
	cin => \IF_BLOCK|pc[5]~40\,
	combout => \IF_BLOCK|pc[6]~41_combout\,
	cout => \IF_BLOCK|pc[6]~42\);

-- Location: LCFF_X32_Y50_N13
\IF_BLOCK|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(6));

-- Location: LCCOMB_X33_Y50_N10
\IF_BLOCK|adr_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[6]~feeder_combout\ = \IF_BLOCK|pc\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(6),
	combout => \IF_BLOCK|adr_out[6]~feeder_combout\);

-- Location: LCFF_X33_Y50_N11
\IF_BLOCK|adr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(6));

-- Location: LCCOMB_X32_Y50_N14
\IF_BLOCK|pc[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[7]~43_combout\ = (\IF_BLOCK|pc\(7) & (\IF_BLOCK|pc[6]~42\ $ (GND))) # (!\IF_BLOCK|pc\(7) & (!\IF_BLOCK|pc[6]~42\ & VCC))
-- \IF_BLOCK|pc[7]~44\ = CARRY((\IF_BLOCK|pc\(7) & !\IF_BLOCK|pc[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(7),
	datad => VCC,
	cin => \IF_BLOCK|pc[6]~42\,
	combout => \IF_BLOCK|pc[7]~43_combout\,
	cout => \IF_BLOCK|pc[7]~44\);

-- Location: LCFF_X32_Y50_N15
\IF_BLOCK|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(7));

-- Location: LCCOMB_X33_Y50_N0
\IF_BLOCK|adr_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[7]~feeder_combout\ = \IF_BLOCK|pc\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(7),
	combout => \IF_BLOCK|adr_out[7]~feeder_combout\);

-- Location: LCFF_X33_Y50_N1
\IF_BLOCK|adr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(7));

-- Location: LCCOMB_X32_Y50_N16
\IF_BLOCK|pc[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[8]~45_combout\ = (\IF_BLOCK|pc\(8) & (!\IF_BLOCK|pc[7]~44\)) # (!\IF_BLOCK|pc\(8) & ((\IF_BLOCK|pc[7]~44\) # (GND)))
-- \IF_BLOCK|pc[8]~46\ = CARRY((!\IF_BLOCK|pc[7]~44\) # (!\IF_BLOCK|pc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(8),
	datad => VCC,
	cin => \IF_BLOCK|pc[7]~44\,
	combout => \IF_BLOCK|pc[8]~45_combout\,
	cout => \IF_BLOCK|pc[8]~46\);

-- Location: LCFF_X32_Y50_N17
\IF_BLOCK|pc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(8));

-- Location: LCCOMB_X33_Y50_N30
\IF_BLOCK|adr_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[8]~feeder_combout\ = \IF_BLOCK|pc\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(8),
	combout => \IF_BLOCK|adr_out[8]~feeder_combout\);

-- Location: LCFF_X33_Y50_N31
\IF_BLOCK|adr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(8));

-- Location: LCCOMB_X32_Y50_N18
\IF_BLOCK|pc[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[9]~47_combout\ = (\IF_BLOCK|pc\(9) & (\IF_BLOCK|pc[8]~46\ $ (GND))) # (!\IF_BLOCK|pc\(9) & (!\IF_BLOCK|pc[8]~46\ & VCC))
-- \IF_BLOCK|pc[9]~48\ = CARRY((\IF_BLOCK|pc\(9) & !\IF_BLOCK|pc[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(9),
	datad => VCC,
	cin => \IF_BLOCK|pc[8]~46\,
	combout => \IF_BLOCK|pc[9]~47_combout\,
	cout => \IF_BLOCK|pc[9]~48\);

-- Location: LCFF_X32_Y50_N19
\IF_BLOCK|pc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(9));

-- Location: LCCOMB_X29_Y50_N2
\IF_BLOCK|adr_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[9]~feeder_combout\ = \IF_BLOCK|pc\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(9),
	combout => \IF_BLOCK|adr_out[9]~feeder_combout\);

-- Location: LCFF_X29_Y50_N3
\IF_BLOCK|adr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(9));

-- Location: LCCOMB_X32_Y50_N20
\IF_BLOCK|pc[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[10]~49_combout\ = (\IF_BLOCK|pc\(10) & (!\IF_BLOCK|pc[9]~48\)) # (!\IF_BLOCK|pc\(10) & ((\IF_BLOCK|pc[9]~48\) # (GND)))
-- \IF_BLOCK|pc[10]~50\ = CARRY((!\IF_BLOCK|pc[9]~48\) # (!\IF_BLOCK|pc\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(10),
	datad => VCC,
	cin => \IF_BLOCK|pc[9]~48\,
	combout => \IF_BLOCK|pc[10]~49_combout\,
	cout => \IF_BLOCK|pc[10]~50\);

-- Location: LCFF_X32_Y50_N21
\IF_BLOCK|pc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(10));

-- Location: LCFF_X33_Y50_N9
\IF_BLOCK|adr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(10));

-- Location: LCCOMB_X32_Y50_N22
\IF_BLOCK|pc[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[11]~51_combout\ = (\IF_BLOCK|pc\(11) & (\IF_BLOCK|pc[10]~50\ $ (GND))) # (!\IF_BLOCK|pc\(11) & (!\IF_BLOCK|pc[10]~50\ & VCC))
-- \IF_BLOCK|pc[11]~52\ = CARRY((\IF_BLOCK|pc\(11) & !\IF_BLOCK|pc[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(11),
	datad => VCC,
	cin => \IF_BLOCK|pc[10]~50\,
	combout => \IF_BLOCK|pc[11]~51_combout\,
	cout => \IF_BLOCK|pc[11]~52\);

-- Location: LCFF_X32_Y50_N23
\IF_BLOCK|pc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(11));

-- Location: LCCOMB_X33_Y50_N22
\IF_BLOCK|adr_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[11]~feeder_combout\ = \IF_BLOCK|pc\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(11),
	combout => \IF_BLOCK|adr_out[11]~feeder_combout\);

-- Location: LCFF_X33_Y50_N23
\IF_BLOCK|adr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(11));

-- Location: LCCOMB_X32_Y50_N24
\IF_BLOCK|pc[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[12]~53_combout\ = (\IF_BLOCK|pc\(12) & (!\IF_BLOCK|pc[11]~52\)) # (!\IF_BLOCK|pc\(12) & ((\IF_BLOCK|pc[11]~52\) # (GND)))
-- \IF_BLOCK|pc[12]~54\ = CARRY((!\IF_BLOCK|pc[11]~52\) # (!\IF_BLOCK|pc\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(12),
	datad => VCC,
	cin => \IF_BLOCK|pc[11]~52\,
	combout => \IF_BLOCK|pc[12]~53_combout\,
	cout => \IF_BLOCK|pc[12]~54\);

-- Location: LCFF_X32_Y50_N25
\IF_BLOCK|pc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(12));

-- Location: LCCOMB_X33_Y50_N24
\IF_BLOCK|adr_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[12]~feeder_combout\ = \IF_BLOCK|pc\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(12),
	combout => \IF_BLOCK|adr_out[12]~feeder_combout\);

-- Location: LCFF_X33_Y50_N25
\IF_BLOCK|adr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(12));

-- Location: LCCOMB_X32_Y50_N26
\IF_BLOCK|pc[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[13]~55_combout\ = (\IF_BLOCK|pc\(13) & (\IF_BLOCK|pc[12]~54\ $ (GND))) # (!\IF_BLOCK|pc\(13) & (!\IF_BLOCK|pc[12]~54\ & VCC))
-- \IF_BLOCK|pc[13]~56\ = CARRY((\IF_BLOCK|pc\(13) & !\IF_BLOCK|pc[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(13),
	datad => VCC,
	cin => \IF_BLOCK|pc[12]~54\,
	combout => \IF_BLOCK|pc[13]~55_combout\,
	cout => \IF_BLOCK|pc[13]~56\);

-- Location: LCFF_X32_Y50_N27
\IF_BLOCK|pc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(13));

-- Location: LCCOMB_X29_Y50_N0
\IF_BLOCK|adr_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[13]~feeder_combout\ = \IF_BLOCK|pc\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(13),
	combout => \IF_BLOCK|adr_out[13]~feeder_combout\);

-- Location: LCFF_X29_Y50_N1
\IF_BLOCK|adr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(13));

-- Location: LCCOMB_X32_Y50_N28
\IF_BLOCK|pc[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[14]~57_combout\ = (\IF_BLOCK|pc\(14) & (!\IF_BLOCK|pc[13]~56\)) # (!\IF_BLOCK|pc\(14) & ((\IF_BLOCK|pc[13]~56\) # (GND)))
-- \IF_BLOCK|pc[14]~58\ = CARRY((!\IF_BLOCK|pc[13]~56\) # (!\IF_BLOCK|pc\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(14),
	datad => VCC,
	cin => \IF_BLOCK|pc[13]~56\,
	combout => \IF_BLOCK|pc[14]~57_combout\,
	cout => \IF_BLOCK|pc[14]~58\);

-- Location: LCFF_X32_Y50_N29
\IF_BLOCK|pc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(14));

-- Location: LCCOMB_X33_Y50_N26
\IF_BLOCK|adr_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[14]~feeder_combout\ = \IF_BLOCK|pc\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(14),
	combout => \IF_BLOCK|adr_out[14]~feeder_combout\);

-- Location: LCFF_X33_Y50_N27
\IF_BLOCK|adr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(14));

-- Location: LCCOMB_X32_Y50_N30
\IF_BLOCK|pc[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[15]~59_combout\ = (\IF_BLOCK|pc\(15) & (\IF_BLOCK|pc[14]~58\ $ (GND))) # (!\IF_BLOCK|pc\(15) & (!\IF_BLOCK|pc[14]~58\ & VCC))
-- \IF_BLOCK|pc[15]~60\ = CARRY((\IF_BLOCK|pc\(15) & !\IF_BLOCK|pc[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(15),
	datad => VCC,
	cin => \IF_BLOCK|pc[14]~58\,
	combout => \IF_BLOCK|pc[15]~59_combout\,
	cout => \IF_BLOCK|pc[15]~60\);

-- Location: LCFF_X32_Y50_N31
\IF_BLOCK|pc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(15));

-- Location: LCFF_X33_Y50_N5
\IF_BLOCK|adr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(15));

-- Location: LCCOMB_X32_Y49_N0
\IF_BLOCK|pc[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[16]~61_combout\ = (\IF_BLOCK|pc\(16) & (!\IF_BLOCK|pc[15]~60\)) # (!\IF_BLOCK|pc\(16) & ((\IF_BLOCK|pc[15]~60\) # (GND)))
-- \IF_BLOCK|pc[16]~62\ = CARRY((!\IF_BLOCK|pc[15]~60\) # (!\IF_BLOCK|pc\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(16),
	datad => VCC,
	cin => \IF_BLOCK|pc[15]~60\,
	combout => \IF_BLOCK|pc[16]~61_combout\,
	cout => \IF_BLOCK|pc[16]~62\);

-- Location: LCFF_X32_Y49_N1
\IF_BLOCK|pc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(16));

-- Location: LCFF_X31_Y49_N21
\IF_BLOCK|adr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(16));

-- Location: LCCOMB_X32_Y49_N2
\IF_BLOCK|pc[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[17]~63_combout\ = (\IF_BLOCK|pc\(17) & (\IF_BLOCK|pc[16]~62\ $ (GND))) # (!\IF_BLOCK|pc\(17) & (!\IF_BLOCK|pc[16]~62\ & VCC))
-- \IF_BLOCK|pc[17]~64\ = CARRY((\IF_BLOCK|pc\(17) & !\IF_BLOCK|pc[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(17),
	datad => VCC,
	cin => \IF_BLOCK|pc[16]~62\,
	combout => \IF_BLOCK|pc[17]~63_combout\,
	cout => \IF_BLOCK|pc[17]~64\);

-- Location: LCFF_X32_Y49_N3
\IF_BLOCK|pc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(17));

-- Location: LCCOMB_X31_Y49_N30
\IF_BLOCK|adr_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[17]~feeder_combout\ = \IF_BLOCK|pc\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(17),
	combout => \IF_BLOCK|adr_out[17]~feeder_combout\);

-- Location: LCFF_X31_Y49_N31
\IF_BLOCK|adr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(17));

-- Location: LCCOMB_X32_Y49_N4
\IF_BLOCK|pc[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[18]~65_combout\ = (\IF_BLOCK|pc\(18) & (!\IF_BLOCK|pc[17]~64\)) # (!\IF_BLOCK|pc\(18) & ((\IF_BLOCK|pc[17]~64\) # (GND)))
-- \IF_BLOCK|pc[18]~66\ = CARRY((!\IF_BLOCK|pc[17]~64\) # (!\IF_BLOCK|pc\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(18),
	datad => VCC,
	cin => \IF_BLOCK|pc[17]~64\,
	combout => \IF_BLOCK|pc[18]~65_combout\,
	cout => \IF_BLOCK|pc[18]~66\);

-- Location: LCFF_X32_Y49_N5
\IF_BLOCK|pc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(18));

-- Location: LCCOMB_X31_Y49_N28
\IF_BLOCK|adr_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[18]~feeder_combout\ = \IF_BLOCK|pc\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(18),
	combout => \IF_BLOCK|adr_out[18]~feeder_combout\);

-- Location: LCFF_X31_Y49_N29
\IF_BLOCK|adr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(18));

-- Location: LCCOMB_X32_Y49_N6
\IF_BLOCK|pc[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[19]~67_combout\ = (\IF_BLOCK|pc\(19) & (\IF_BLOCK|pc[18]~66\ $ (GND))) # (!\IF_BLOCK|pc\(19) & (!\IF_BLOCK|pc[18]~66\ & VCC))
-- \IF_BLOCK|pc[19]~68\ = CARRY((\IF_BLOCK|pc\(19) & !\IF_BLOCK|pc[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(19),
	datad => VCC,
	cin => \IF_BLOCK|pc[18]~66\,
	combout => \IF_BLOCK|pc[19]~67_combout\,
	cout => \IF_BLOCK|pc[19]~68\);

-- Location: LCFF_X32_Y49_N7
\IF_BLOCK|pc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(19));

-- Location: LCCOMB_X31_Y49_N10
\IF_BLOCK|adr_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[19]~feeder_combout\ = \IF_BLOCK|pc\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(19),
	combout => \IF_BLOCK|adr_out[19]~feeder_combout\);

-- Location: LCFF_X31_Y49_N11
\IF_BLOCK|adr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(19));

-- Location: LCCOMB_X32_Y49_N8
\IF_BLOCK|pc[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[20]~69_combout\ = (\IF_BLOCK|pc\(20) & (!\IF_BLOCK|pc[19]~68\)) # (!\IF_BLOCK|pc\(20) & ((\IF_BLOCK|pc[19]~68\) # (GND)))
-- \IF_BLOCK|pc[20]~70\ = CARRY((!\IF_BLOCK|pc[19]~68\) # (!\IF_BLOCK|pc\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(20),
	datad => VCC,
	cin => \IF_BLOCK|pc[19]~68\,
	combout => \IF_BLOCK|pc[20]~69_combout\,
	cout => \IF_BLOCK|pc[20]~70\);

-- Location: LCFF_X32_Y49_N9
\IF_BLOCK|pc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(20));

-- Location: LCFF_X31_Y49_N17
\IF_BLOCK|adr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(20));

-- Location: LCCOMB_X32_Y49_N10
\IF_BLOCK|pc[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[21]~71_combout\ = (\IF_BLOCK|pc\(21) & (\IF_BLOCK|pc[20]~70\ $ (GND))) # (!\IF_BLOCK|pc\(21) & (!\IF_BLOCK|pc[20]~70\ & VCC))
-- \IF_BLOCK|pc[21]~72\ = CARRY((\IF_BLOCK|pc\(21) & !\IF_BLOCK|pc[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(21),
	datad => VCC,
	cin => \IF_BLOCK|pc[20]~70\,
	combout => \IF_BLOCK|pc[21]~71_combout\,
	cout => \IF_BLOCK|pc[21]~72\);

-- Location: LCFF_X32_Y49_N11
\IF_BLOCK|pc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(21));

-- Location: LCFF_X31_Y49_N3
\IF_BLOCK|adr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(21));

-- Location: LCCOMB_X32_Y49_N12
\IF_BLOCK|pc[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[22]~73_combout\ = (\IF_BLOCK|pc\(22) & (!\IF_BLOCK|pc[21]~72\)) # (!\IF_BLOCK|pc\(22) & ((\IF_BLOCK|pc[21]~72\) # (GND)))
-- \IF_BLOCK|pc[22]~74\ = CARRY((!\IF_BLOCK|pc[21]~72\) # (!\IF_BLOCK|pc\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(22),
	datad => VCC,
	cin => \IF_BLOCK|pc[21]~72\,
	combout => \IF_BLOCK|pc[22]~73_combout\,
	cout => \IF_BLOCK|pc[22]~74\);

-- Location: LCFF_X32_Y49_N13
\IF_BLOCK|pc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(22));

-- Location: LCFF_X31_Y49_N13
\IF_BLOCK|adr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(22));

-- Location: LCCOMB_X32_Y49_N14
\IF_BLOCK|pc[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[23]~75_combout\ = (\IF_BLOCK|pc\(23) & (\IF_BLOCK|pc[22]~74\ $ (GND))) # (!\IF_BLOCK|pc\(23) & (!\IF_BLOCK|pc[22]~74\ & VCC))
-- \IF_BLOCK|pc[23]~76\ = CARRY((\IF_BLOCK|pc\(23) & !\IF_BLOCK|pc[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(23),
	datad => VCC,
	cin => \IF_BLOCK|pc[22]~74\,
	combout => \IF_BLOCK|pc[23]~75_combout\,
	cout => \IF_BLOCK|pc[23]~76\);

-- Location: LCFF_X32_Y49_N15
\IF_BLOCK|pc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(23));

-- Location: LCFF_X31_Y49_N23
\IF_BLOCK|adr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(23));

-- Location: LCCOMB_X32_Y49_N16
\IF_BLOCK|pc[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[24]~77_combout\ = (\IF_BLOCK|pc\(24) & (!\IF_BLOCK|pc[23]~76\)) # (!\IF_BLOCK|pc\(24) & ((\IF_BLOCK|pc[23]~76\) # (GND)))
-- \IF_BLOCK|pc[24]~78\ = CARRY((!\IF_BLOCK|pc[23]~76\) # (!\IF_BLOCK|pc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(24),
	datad => VCC,
	cin => \IF_BLOCK|pc[23]~76\,
	combout => \IF_BLOCK|pc[24]~77_combout\,
	cout => \IF_BLOCK|pc[24]~78\);

-- Location: LCFF_X32_Y49_N17
\IF_BLOCK|pc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(24));

-- Location: LCFF_X31_Y49_N1
\IF_BLOCK|adr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(24));

-- Location: LCCOMB_X32_Y49_N18
\IF_BLOCK|pc[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[25]~79_combout\ = (\IF_BLOCK|pc\(25) & (\IF_BLOCK|pc[24]~78\ $ (GND))) # (!\IF_BLOCK|pc\(25) & (!\IF_BLOCK|pc[24]~78\ & VCC))
-- \IF_BLOCK|pc[25]~80\ = CARRY((\IF_BLOCK|pc\(25) & !\IF_BLOCK|pc[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(25),
	datad => VCC,
	cin => \IF_BLOCK|pc[24]~78\,
	combout => \IF_BLOCK|pc[25]~79_combout\,
	cout => \IF_BLOCK|pc[25]~80\);

-- Location: LCFF_X32_Y49_N19
\IF_BLOCK|pc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(25));

-- Location: LCCOMB_X31_Y49_N18
\IF_BLOCK|adr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[25]~feeder_combout\ = \IF_BLOCK|pc\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(25),
	combout => \IF_BLOCK|adr_out[25]~feeder_combout\);

-- Location: LCFF_X31_Y49_N19
\IF_BLOCK|adr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(25));

-- Location: LCCOMB_X32_Y49_N20
\IF_BLOCK|pc[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[26]~81_combout\ = (\IF_BLOCK|pc\(26) & (!\IF_BLOCK|pc[25]~80\)) # (!\IF_BLOCK|pc\(26) & ((\IF_BLOCK|pc[25]~80\) # (GND)))
-- \IF_BLOCK|pc[26]~82\ = CARRY((!\IF_BLOCK|pc[25]~80\) # (!\IF_BLOCK|pc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(26),
	datad => VCC,
	cin => \IF_BLOCK|pc[25]~80\,
	combout => \IF_BLOCK|pc[26]~81_combout\,
	cout => \IF_BLOCK|pc[26]~82\);

-- Location: LCFF_X32_Y49_N21
\IF_BLOCK|pc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(26));

-- Location: LCCOMB_X39_Y49_N16
\IF_BLOCK|adr_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[26]~feeder_combout\ = \IF_BLOCK|pc\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(26),
	combout => \IF_BLOCK|adr_out[26]~feeder_combout\);

-- Location: LCFF_X39_Y49_N17
\IF_BLOCK|adr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(26));

-- Location: LCCOMB_X32_Y49_N22
\IF_BLOCK|pc[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[27]~83_combout\ = (\IF_BLOCK|pc\(27) & (\IF_BLOCK|pc[26]~82\ $ (GND))) # (!\IF_BLOCK|pc\(27) & (!\IF_BLOCK|pc[26]~82\ & VCC))
-- \IF_BLOCK|pc[27]~84\ = CARRY((\IF_BLOCK|pc\(27) & !\IF_BLOCK|pc[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(27),
	datad => VCC,
	cin => \IF_BLOCK|pc[26]~82\,
	combout => \IF_BLOCK|pc[27]~83_combout\,
	cout => \IF_BLOCK|pc[27]~84\);

-- Location: LCFF_X32_Y49_N23
\IF_BLOCK|pc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(27));

-- Location: LCCOMB_X31_Y49_N24
\IF_BLOCK|adr_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[27]~feeder_combout\ = \IF_BLOCK|pc\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(27),
	combout => \IF_BLOCK|adr_out[27]~feeder_combout\);

-- Location: LCFF_X31_Y49_N25
\IF_BLOCK|adr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(27));

-- Location: LCCOMB_X32_Y49_N24
\IF_BLOCK|pc[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[28]~85_combout\ = (\IF_BLOCK|pc\(28) & (!\IF_BLOCK|pc[27]~84\)) # (!\IF_BLOCK|pc\(28) & ((\IF_BLOCK|pc[27]~84\) # (GND)))
-- \IF_BLOCK|pc[28]~86\ = CARRY((!\IF_BLOCK|pc[27]~84\) # (!\IF_BLOCK|pc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IF_BLOCK|pc\(28),
	datad => VCC,
	cin => \IF_BLOCK|pc[27]~84\,
	combout => \IF_BLOCK|pc[28]~85_combout\,
	cout => \IF_BLOCK|pc[28]~86\);

-- Location: LCFF_X32_Y49_N25
\IF_BLOCK|pc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(28));

-- Location: LCCOMB_X31_Y49_N6
\IF_BLOCK|adr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[28]~feeder_combout\ = \IF_BLOCK|pc\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(28),
	combout => \IF_BLOCK|adr_out[28]~feeder_combout\);

-- Location: LCFF_X31_Y49_N7
\IF_BLOCK|adr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(28));

-- Location: LCCOMB_X32_Y49_N26
\IF_BLOCK|pc[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[29]~87_combout\ = (\IF_BLOCK|pc\(29) & (\IF_BLOCK|pc[28]~86\ $ (GND))) # (!\IF_BLOCK|pc\(29) & (!\IF_BLOCK|pc[28]~86\ & VCC))
-- \IF_BLOCK|pc[29]~88\ = CARRY((\IF_BLOCK|pc\(29) & !\IF_BLOCK|pc[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(29),
	datad => VCC,
	cin => \IF_BLOCK|pc[28]~86\,
	combout => \IF_BLOCK|pc[29]~87_combout\,
	cout => \IF_BLOCK|pc[29]~88\);

-- Location: LCFF_X32_Y49_N27
\IF_BLOCK|pc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(29));

-- Location: LCFF_X31_Y49_N5
\IF_BLOCK|adr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \IF_BLOCK|pc\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(29));

-- Location: LCCOMB_X32_Y49_N28
\IF_BLOCK|pc[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[30]~89_combout\ = (\IF_BLOCK|pc\(30) & (!\IF_BLOCK|pc[29]~88\)) # (!\IF_BLOCK|pc\(30) & ((\IF_BLOCK|pc[29]~88\) # (GND)))
-- \IF_BLOCK|pc[30]~90\ = CARRY((!\IF_BLOCK|pc[29]~88\) # (!\IF_BLOCK|pc\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IF_BLOCK|pc\(30),
	datad => VCC,
	cin => \IF_BLOCK|pc[29]~88\,
	combout => \IF_BLOCK|pc[30]~89_combout\,
	cout => \IF_BLOCK|pc[30]~90\);

-- Location: LCFF_X32_Y49_N29
\IF_BLOCK|pc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(30));

-- Location: LCCOMB_X31_Y49_N26
\IF_BLOCK|adr_out[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[30]~feeder_combout\ = \IF_BLOCK|pc\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(30),
	combout => \IF_BLOCK|adr_out[30]~feeder_combout\);

-- Location: LCFF_X31_Y49_N27
\IF_BLOCK|adr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(30));

-- Location: LCCOMB_X32_Y49_N30
\IF_BLOCK|pc[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|pc[31]~91_combout\ = \IF_BLOCK|pc[30]~90\ $ (!\IF_BLOCK|pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(31),
	cin => \IF_BLOCK|pc[30]~90\,
	combout => \IF_BLOCK|pc[31]~91_combout\);

-- Location: LCFF_X32_Y49_N31
\IF_BLOCK|pc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|pc[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|pc\(31));

-- Location: LCCOMB_X31_Y49_N8
\IF_BLOCK|adr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \IF_BLOCK|adr_out[31]~feeder_combout\ = \IF_BLOCK|pc\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_BLOCK|pc\(31),
	combout => \IF_BLOCK|adr_out[31]~feeder_combout\);

-- Location: LCFF_X31_Y49_N9
\IF_BLOCK|adr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IF_BLOCK|adr_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_BLOCK|adr_out\(31));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


