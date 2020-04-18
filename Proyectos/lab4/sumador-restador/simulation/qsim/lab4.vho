-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/18/2020 12:30:38"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4 IS
    PORT (
	DIP_SW : IN std_logic_vector(1 TO 8);
	KEY_EX : IN std_logic_vector(0 TO 1);
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
-- KEY_EX[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIP_SW : std_logic_vector(1 TO 8);
SIGNAL ww_KEY_EX : std_logic_vector(0 TO 1);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY_EX[1]~input_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \DIP_SW[8]~input_o\ : std_logic;
SIGNAL \DIP_SW[4]~input_o\ : std_logic;
SIGNAL \o|Add2~3_combout\ : std_logic;
SIGNAL \DIP_SW[3]~input_o\ : std_logic;
SIGNAL \DIP_SW[7]~input_o\ : std_logic;
SIGNAL \o|LessThan0~0_combout\ : std_logic;
SIGNAL \DIP_SW[5]~input_o\ : std_logic;
SIGNAL \DIP_SW[6]~input_o\ : std_logic;
SIGNAL \DIP_SW[1]~input_o\ : std_logic;
SIGNAL \DIP_SW[2]~input_o\ : std_logic;
SIGNAL \o|LessThan0~1_combout\ : std_logic;
SIGNAL \o|LessThan0~2_combout\ : std_logic;
SIGNAL \KEY_EX[0]~input_o\ : std_logic;
SIGNAL \o|Add2~0_combout\ : std_logic;
SIGNAL \o|Add1~0_combout\ : std_logic;
SIGNAL \o|Add2~1_combout\ : std_logic;
SIGNAL \o|Add0~0_combout\ : std_logic;
SIGNAL \o|Add2~2_combout\ : std_logic;
SIGNAL \o|Add2~5_combout\ : std_logic;
SIGNAL \o|Add0~1\ : std_logic;
SIGNAL \o|Add0~2_combout\ : std_logic;
SIGNAL \o|Add1~1\ : std_logic;
SIGNAL \o|Add1~2_combout\ : std_logic;
SIGNAL \o|Add2~6_combout\ : std_logic;
SIGNAL \o|Add2~4\ : std_logic;
SIGNAL \o|Add2~7_combout\ : std_logic;
SIGNAL \o|Add2~9_combout\ : std_logic;
SIGNAL \o|Add1~3\ : std_logic;
SIGNAL \o|Add1~4_combout\ : std_logic;
SIGNAL \o|Add0~3\ : std_logic;
SIGNAL \o|Add0~4_combout\ : std_logic;
SIGNAL \o|Add2~10_combout\ : std_logic;
SIGNAL \o|Add2~8\ : std_logic;
SIGNAL \o|Add2~11_combout\ : std_logic;
SIGNAL \o|Add2~13_combout\ : std_logic;
SIGNAL \o|Add1~5\ : std_logic;
SIGNAL \o|Add1~6_combout\ : std_logic;
SIGNAL \o|Add0~5\ : std_logic;
SIGNAL \o|Add0~6_combout\ : std_logic;
SIGNAL \o|Add2~14_combout\ : std_logic;
SIGNAL \o|Add2~12\ : std_logic;
SIGNAL \o|Add2~15_combout\ : std_logic;
SIGNAL \o|Add2~17_combout\ : std_logic;
SIGNAL \o|Overflow~0_combout\ : std_logic;
SIGNAL \o|Add2~16\ : std_logic;
SIGNAL \o|Add2~18_combout\ : std_logic;
SIGNAL \o|Add0~7\ : std_logic;
SIGNAL \o|Add0~8_combout\ : std_logic;
SIGNAL \o|Add1~7\ : std_logic;
SIGNAL \o|Add1~8_combout\ : std_logic;
SIGNAL \o|Add2~20_combout\ : std_logic;
SIGNAL \o|Overflow~combout\ : std_logic;
SIGNAL \o|Sig~0_combout\ : std_logic;
SIGNAL \o|Sig~1_combout\ : std_logic;
SIGNAL \o|Sig~2_combout\ : std_logic;
SIGNAL \o|Add2~21_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DIP_SW <= DIP_SW;
ww_KEY_EX <= KEY_EX;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Add2~5_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Add2~9_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Add2~13_combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Add2~17_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Overflow~combout\,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Sig~2_combout\,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o|Add2~21_combout\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N1
\DIP_SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(8),
	o => \DIP_SW[8]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\DIP_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(4),
	o => \DIP_SW[4]~input_o\);

-- Location: LCCOMB_X35_Y23_N0
\o|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~3_combout\ = (\DIP_SW[8]~input_o\ & (\DIP_SW[4]~input_o\ $ (VCC))) # (!\DIP_SW[8]~input_o\ & (\DIP_SW[4]~input_o\ & VCC))
-- \o|Add2~4\ = CARRY((\DIP_SW[8]~input_o\ & \DIP_SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[8]~input_o\,
	datab => \DIP_SW[4]~input_o\,
	datad => VCC,
	combout => \o|Add2~3_combout\,
	cout => \o|Add2~4\);

-- Location: IOIBUF_X53_Y11_N1
\DIP_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(3),
	o => \DIP_SW[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\DIP_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(7),
	o => \DIP_SW[7]~input_o\);

-- Location: LCCOMB_X35_Y23_N26
\o|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|LessThan0~0_combout\ = (\DIP_SW[3]~input_o\ & (((\DIP_SW[4]~input_o\ & !\DIP_SW[8]~input_o\)) # (!\DIP_SW[7]~input_o\))) # (!\DIP_SW[3]~input_o\ & (!\DIP_SW[7]~input_o\ & (\DIP_SW[4]~input_o\ & !\DIP_SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[3]~input_o\,
	datab => \DIP_SW[7]~input_o\,
	datac => \DIP_SW[4]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \o|LessThan0~0_combout\);

-- Location: IOIBUF_X43_Y0_N15
\DIP_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(5),
	o => \DIP_SW[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\DIP_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(6),
	o => \DIP_SW[6]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\DIP_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(1),
	o => \DIP_SW[1]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\DIP_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(2),
	o => \DIP_SW[2]~input_o\);

-- Location: LCCOMB_X35_Y23_N28
\o|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|LessThan0~1_combout\ = (\DIP_SW[5]~input_o\ & (\DIP_SW[1]~input_o\ & (\DIP_SW[6]~input_o\ $ (!\DIP_SW[2]~input_o\)))) # (!\DIP_SW[5]~input_o\ & (!\DIP_SW[1]~input_o\ & (\DIP_SW[6]~input_o\ $ (!\DIP_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[5]~input_o\,
	datab => \DIP_SW[6]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	datad => \DIP_SW[2]~input_o\,
	combout => \o|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y23_N22
\o|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|LessThan0~2_combout\ = (\DIP_SW[5]~input_o\ & (!\DIP_SW[6]~input_o\ & (\DIP_SW[1]~input_o\ & \DIP_SW[2]~input_o\))) # (!\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\) # ((!\DIP_SW[6]~input_o\ & \DIP_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[5]~input_o\,
	datab => \DIP_SW[6]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	datad => \DIP_SW[2]~input_o\,
	combout => \o|LessThan0~2_combout\);

-- Location: IOIBUF_X53_Y15_N8
\KEY_EX[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_EX(0),
	o => \KEY_EX[0]~input_o\);

-- Location: LCCOMB_X35_Y23_N24
\o|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~0_combout\ = (!\o|LessThan0~2_combout\ & (\KEY_EX[0]~input_o\ & ((!\o|LessThan0~1_combout\) # (!\o|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|LessThan0~0_combout\,
	datab => \o|LessThan0~1_combout\,
	datac => \o|LessThan0~2_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add2~0_combout\);

-- Location: LCCOMB_X46_Y13_N16
\o|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add1~0_combout\ = (\DIP_SW[4]~input_o\ & ((GND) # (!\DIP_SW[8]~input_o\))) # (!\DIP_SW[4]~input_o\ & (\DIP_SW[8]~input_o\ $ (GND)))
-- \o|Add1~1\ = CARRY((\DIP_SW[4]~input_o\) # (!\DIP_SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[4]~input_o\,
	datab => \DIP_SW[8]~input_o\,
	datad => VCC,
	combout => \o|Add1~0_combout\,
	cout => \o|Add1~1\);

-- Location: LCCOMB_X35_Y23_N18
\o|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~1_combout\ = (\KEY_EX[0]~input_o\ & ((\o|LessThan0~2_combout\) # ((\o|LessThan0~0_combout\ & \o|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|LessThan0~0_combout\,
	datab => \o|LessThan0~1_combout\,
	datac => \o|LessThan0~2_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add2~1_combout\);

-- Location: LCCOMB_X46_Y13_N6
\o|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~0_combout\ = (\DIP_SW[4]~input_o\ & (\DIP_SW[8]~input_o\ $ (VCC))) # (!\DIP_SW[4]~input_o\ & ((\DIP_SW[8]~input_o\) # (GND)))
-- \o|Add0~1\ = CARRY((\DIP_SW[8]~input_o\) # (!\DIP_SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[4]~input_o\,
	datab => \DIP_SW[8]~input_o\,
	datad => VCC,
	combout => \o|Add0~0_combout\,
	cout => \o|Add0~1\);

-- Location: LCCOMB_X46_Y13_N0
\o|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~2_combout\ = (\o|Add2~0_combout\ & ((\o|Add0~0_combout\) # ((\o|Add1~0_combout\ & \o|Add2~1_combout\)))) # (!\o|Add2~0_combout\ & (\o|Add1~0_combout\ & (\o|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~0_combout\,
	datab => \o|Add1~0_combout\,
	datac => \o|Add2~1_combout\,
	datad => \o|Add0~0_combout\,
	combout => \o|Add2~2_combout\);

-- Location: LCCOMB_X41_Y27_N8
\o|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~5_combout\ = (\o|Add2~2_combout\) # ((\o|Add2~3_combout\ & !\KEY_EX[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~3_combout\,
	datac => \o|Add2~2_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add2~5_combout\);

-- Location: LCCOMB_X46_Y13_N8
\o|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~2_combout\ = (\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\ & (!\o|Add0~1\)) # (!\DIP_SW[7]~input_o\ & ((\o|Add0~1\) # (GND))))) # (!\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\ & (\o|Add0~1\ & VCC)) # (!\DIP_SW[7]~input_o\ & (!\o|Add0~1\))))
-- \o|Add0~3\ = CARRY((\DIP_SW[3]~input_o\ & ((!\o|Add0~1\) # (!\DIP_SW[7]~input_o\))) # (!\DIP_SW[3]~input_o\ & (!\DIP_SW[7]~input_o\ & !\o|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[3]~input_o\,
	datab => \DIP_SW[7]~input_o\,
	datad => VCC,
	cin => \o|Add0~1\,
	combout => \o|Add0~2_combout\,
	cout => \o|Add0~3\);

-- Location: LCCOMB_X46_Y13_N18
\o|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add1~2_combout\ = (\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\ & (!\o|Add1~1\)) # (!\DIP_SW[7]~input_o\ & (\o|Add1~1\ & VCC)))) # (!\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\ & ((\o|Add1~1\) # (GND))) # (!\DIP_SW[7]~input_o\ & (!\o|Add1~1\))))
-- \o|Add1~3\ = CARRY((\DIP_SW[3]~input_o\ & (\DIP_SW[7]~input_o\ & !\o|Add1~1\)) # (!\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\) # (!\o|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[3]~input_o\,
	datab => \DIP_SW[7]~input_o\,
	datad => VCC,
	cin => \o|Add1~1\,
	combout => \o|Add1~2_combout\,
	cout => \o|Add1~3\);

-- Location: LCCOMB_X46_Y13_N2
\o|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~6_combout\ = (\o|Add2~0_combout\ & ((\o|Add0~2_combout\) # ((\o|Add2~1_combout\ & \o|Add1~2_combout\)))) # (!\o|Add2~0_combout\ & (\o|Add2~1_combout\ & ((\o|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~0_combout\,
	datab => \o|Add2~1_combout\,
	datac => \o|Add0~2_combout\,
	datad => \o|Add1~2_combout\,
	combout => \o|Add2~6_combout\);

-- Location: LCCOMB_X35_Y23_N2
\o|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~7_combout\ = (\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\ & (\o|Add2~4\ & VCC)) # (!\DIP_SW[7]~input_o\ & (!\o|Add2~4\)))) # (!\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\ & (!\o|Add2~4\)) # (!\DIP_SW[7]~input_o\ & ((\o|Add2~4\) # (GND)))))
-- \o|Add2~8\ = CARRY((\DIP_SW[3]~input_o\ & (!\DIP_SW[7]~input_o\ & !\o|Add2~4\)) # (!\DIP_SW[3]~input_o\ & ((!\o|Add2~4\) # (!\DIP_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[3]~input_o\,
	datab => \DIP_SW[7]~input_o\,
	datad => VCC,
	cin => \o|Add2~4\,
	combout => \o|Add2~7_combout\,
	cout => \o|Add2~8\);

-- Location: LCCOMB_X46_Y23_N8
\o|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~9_combout\ = (\o|Add2~6_combout\) # ((!\KEY_EX[0]~input_o\ & \o|Add2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~6_combout\,
	datab => \KEY_EX[0]~input_o\,
	datac => \o|Add2~7_combout\,
	combout => \o|Add2~9_combout\);

-- Location: LCCOMB_X46_Y13_N20
\o|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add1~4_combout\ = ((\DIP_SW[2]~input_o\ $ (\DIP_SW[6]~input_o\ $ (\o|Add1~3\)))) # (GND)
-- \o|Add1~5\ = CARRY((\DIP_SW[2]~input_o\ & ((!\o|Add1~3\) # (!\DIP_SW[6]~input_o\))) # (!\DIP_SW[2]~input_o\ & (!\DIP_SW[6]~input_o\ & !\o|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[2]~input_o\,
	datab => \DIP_SW[6]~input_o\,
	datad => VCC,
	cin => \o|Add1~3\,
	combout => \o|Add1~4_combout\,
	cout => \o|Add1~5\);

-- Location: LCCOMB_X46_Y13_N10
\o|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~4_combout\ = ((\DIP_SW[2]~input_o\ $ (\DIP_SW[6]~input_o\ $ (\o|Add0~3\)))) # (GND)
-- \o|Add0~5\ = CARRY((\DIP_SW[2]~input_o\ & (\DIP_SW[6]~input_o\ & !\o|Add0~3\)) # (!\DIP_SW[2]~input_o\ & ((\DIP_SW[6]~input_o\) # (!\o|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[2]~input_o\,
	datab => \DIP_SW[6]~input_o\,
	datad => VCC,
	cin => \o|Add0~3\,
	combout => \o|Add0~4_combout\,
	cout => \o|Add0~5\);

-- Location: LCCOMB_X46_Y13_N4
\o|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~10_combout\ = (\o|Add2~0_combout\ & ((\o|Add0~4_combout\) # ((\o|Add1~4_combout\ & \o|Add2~1_combout\)))) # (!\o|Add2~0_combout\ & (\o|Add1~4_combout\ & (\o|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~0_combout\,
	datab => \o|Add1~4_combout\,
	datac => \o|Add2~1_combout\,
	datad => \o|Add0~4_combout\,
	combout => \o|Add2~10_combout\);

-- Location: LCCOMB_X35_Y23_N4
\o|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~11_combout\ = ((\DIP_SW[2]~input_o\ $ (\DIP_SW[6]~input_o\ $ (!\o|Add2~8\)))) # (GND)
-- \o|Add2~12\ = CARRY((\DIP_SW[2]~input_o\ & ((\DIP_SW[6]~input_o\) # (!\o|Add2~8\))) # (!\DIP_SW[2]~input_o\ & (\DIP_SW[6]~input_o\ & !\o|Add2~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[2]~input_o\,
	datab => \DIP_SW[6]~input_o\,
	datad => VCC,
	cin => \o|Add2~8\,
	combout => \o|Add2~11_combout\,
	cout => \o|Add2~12\);

-- Location: LCCOMB_X46_Y20_N0
\o|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~13_combout\ = (\o|Add2~10_combout\) # ((!\KEY_EX[0]~input_o\ & \o|Add2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o|Add2~10_combout\,
	datac => \KEY_EX[0]~input_o\,
	datad => \o|Add2~11_combout\,
	combout => \o|Add2~13_combout\);

-- Location: LCCOMB_X46_Y13_N22
\o|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add1~6_combout\ = (\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\ & (!\o|Add1~5\)) # (!\DIP_SW[1]~input_o\ & ((\o|Add1~5\) # (GND))))) # (!\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\ & (\o|Add1~5\ & VCC)) # (!\DIP_SW[1]~input_o\ & (!\o|Add1~5\))))
-- \o|Add1~7\ = CARRY((\DIP_SW[5]~input_o\ & ((!\o|Add1~5\) # (!\DIP_SW[1]~input_o\))) # (!\DIP_SW[5]~input_o\ & (!\DIP_SW[1]~input_o\ & !\o|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[5]~input_o\,
	datab => \DIP_SW[1]~input_o\,
	datad => VCC,
	cin => \o|Add1~5\,
	combout => \o|Add1~6_combout\,
	cout => \o|Add1~7\);

-- Location: LCCOMB_X46_Y13_N12
\o|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~6_combout\ = (\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\ & (!\o|Add0~5\)) # (!\DIP_SW[1]~input_o\ & (\o|Add0~5\ & VCC)))) # (!\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\ & ((\o|Add0~5\) # (GND))) # (!\DIP_SW[1]~input_o\ & (!\o|Add0~5\))))
-- \o|Add0~7\ = CARRY((\DIP_SW[5]~input_o\ & (\DIP_SW[1]~input_o\ & !\o|Add0~5\)) # (!\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\) # (!\o|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[5]~input_o\,
	datab => \DIP_SW[1]~input_o\,
	datad => VCC,
	cin => \o|Add0~5\,
	combout => \o|Add0~6_combout\,
	cout => \o|Add0~7\);

-- Location: LCCOMB_X46_Y13_N26
\o|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~14_combout\ = (\o|Add2~0_combout\ & ((\o|Add0~6_combout\) # ((\o|Add2~1_combout\ & \o|Add1~6_combout\)))) # (!\o|Add2~0_combout\ & (\o|Add2~1_combout\ & (\o|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~0_combout\,
	datab => \o|Add2~1_combout\,
	datac => \o|Add1~6_combout\,
	datad => \o|Add0~6_combout\,
	combout => \o|Add2~14_combout\);

-- Location: LCCOMB_X35_Y23_N6
\o|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~15_combout\ = (\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\ & (\o|Add2~12\ & VCC)) # (!\DIP_SW[1]~input_o\ & (!\o|Add2~12\)))) # (!\DIP_SW[5]~input_o\ & ((\DIP_SW[1]~input_o\ & (!\o|Add2~12\)) # (!\DIP_SW[1]~input_o\ & ((\o|Add2~12\) # (GND)))))
-- \o|Add2~16\ = CARRY((\DIP_SW[5]~input_o\ & (!\DIP_SW[1]~input_o\ & !\o|Add2~12\)) # (!\DIP_SW[5]~input_o\ & ((!\o|Add2~12\) # (!\DIP_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[5]~input_o\,
	datab => \DIP_SW[1]~input_o\,
	datad => VCC,
	cin => \o|Add2~12\,
	combout => \o|Add2~15_combout\,
	cout => \o|Add2~16\);

-- Location: LCCOMB_X41_Y27_N18
\o|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~17_combout\ = (\o|Add2~14_combout\) # ((\o|Add2~15_combout\ & !\KEY_EX[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o|Add2~14_combout\,
	datac => \o|Add2~15_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add2~17_combout\);

-- Location: LCCOMB_X35_Y23_N12
\o|Overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Overflow~0_combout\ = \DIP_SW[5]~input_o\ $ (\DIP_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	combout => \o|Overflow~0_combout\);

-- Location: LCCOMB_X35_Y23_N8
\o|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~18_combout\ = !\o|Add2~16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \o|Add2~16\,
	combout => \o|Add2~18_combout\);

-- Location: LCCOMB_X46_Y13_N14
\o|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~8_combout\ = \o|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \o|Add0~7\,
	combout => \o|Add0~8_combout\);

-- Location: LCCOMB_X46_Y13_N24
\o|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add1~8_combout\ = \o|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \o|Add1~7\,
	combout => \o|Add1~8_combout\);

-- Location: LCCOMB_X46_Y13_N28
\o|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~20_combout\ = (\o|Add2~0_combout\ & ((\o|Add0~8_combout\) # ((\o|Add2~1_combout\ & \o|Add1~8_combout\)))) # (!\o|Add2~0_combout\ & (\o|Add2~1_combout\ & ((\o|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add2~0_combout\,
	datab => \o|Add2~1_combout\,
	datac => \o|Add0~8_combout\,
	datad => \o|Add1~8_combout\,
	combout => \o|Add2~20_combout\);

-- Location: LCCOMB_X35_Y23_N14
\o|Overflow\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Overflow~combout\ = \o|Overflow~0_combout\ $ (((\o|Add2~20_combout\) # ((\o|Add2~18_combout\ & !\KEY_EX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Overflow~0_combout\,
	datab => \o|Add2~18_combout\,
	datac => \o|Add2~20_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Overflow~combout\);

-- Location: LCCOMB_X35_Y23_N16
\o|Sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Sig~0_combout\ = (\DIP_SW[3]~input_o\ & (\DIP_SW[7]~input_o\ & (!\DIP_SW[4]~input_o\ & \DIP_SW[8]~input_o\))) # (!\DIP_SW[3]~input_o\ & ((\DIP_SW[7]~input_o\) # ((!\DIP_SW[4]~input_o\ & \DIP_SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[3]~input_o\,
	datab => \DIP_SW[7]~input_o\,
	datac => \DIP_SW[4]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \o|Sig~0_combout\);

-- Location: LCCOMB_X35_Y23_N10
\o|Sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Sig~1_combout\ = (\o|Sig~0_combout\ & ((\DIP_SW[6]~input_o\) # (!\DIP_SW[2]~input_o\))) # (!\o|Sig~0_combout\ & (!\DIP_SW[2]~input_o\ & \DIP_SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o|Sig~0_combout\,
	datac => \DIP_SW[2]~input_o\,
	datad => \DIP_SW[6]~input_o\,
	combout => \o|Sig~1_combout\);

-- Location: LCCOMB_X35_Y23_N20
\o|Sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Sig~2_combout\ = (\KEY_EX[0]~input_o\ & ((\o|Sig~1_combout\ & ((\DIP_SW[5]~input_o\) # (!\DIP_SW[1]~input_o\))) # (!\o|Sig~1_combout\ & (!\DIP_SW[1]~input_o\ & \DIP_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Sig~1_combout\,
	datab => \DIP_SW[1]~input_o\,
	datac => \DIP_SW[5]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Sig~2_combout\);

-- Location: LCCOMB_X35_Y23_N30
\o|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add2~21_combout\ = (\o|Add2~20_combout\) # ((\o|Add2~18_combout\ & !\KEY_EX[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o|Add2~18_combout\,
	datac => \o|Add2~20_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add2~21_combout\);

-- Location: IOIBUF_X53_Y13_N8
\KEY_EX[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_EX(1),
	o => \KEY_EX[1]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


