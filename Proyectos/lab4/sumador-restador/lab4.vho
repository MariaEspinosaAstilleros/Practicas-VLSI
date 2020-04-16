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

-- DATE "04/16/2020 16:43:54"

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
-- DIP_SW[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \KEY_EX[0]~input_o\ : std_logic;
SIGNAL \o|Add0~0_combout\ : std_logic;
SIGNAL \DIP_SW[4]~input_o\ : std_logic;
SIGNAL \o|Add0~2_cout\ : std_logic;
SIGNAL \o|Add0~3_combout\ : std_logic;
SIGNAL \DIP_SW[7]~input_o\ : std_logic;
SIGNAL \o|Add0~5_combout\ : std_logic;
SIGNAL \DIP_SW[3]~input_o\ : std_logic;
SIGNAL \o|Add0~4\ : std_logic;
SIGNAL \o|Add0~6_combout\ : std_logic;
SIGNAL \DIP_SW[2]~input_o\ : std_logic;
SIGNAL \DIP_SW[6]~input_o\ : std_logic;
SIGNAL \o|Add0~8_combout\ : std_logic;
SIGNAL \o|Add0~7\ : std_logic;
SIGNAL \o|Add0~9_combout\ : std_logic;
SIGNAL \DIP_SW[5]~input_o\ : std_logic;
SIGNAL \o|Add0~11_combout\ : std_logic;
SIGNAL \DIP_SW[1]~input_o\ : std_logic;
SIGNAL \o|Add0~10\ : std_logic;
SIGNAL \o|Add0~12_combout\ : std_logic;
SIGNAL \o|Add0~13\ : std_logic;
SIGNAL \o|Add0~14_combout\ : std_logic;
SIGNAL \o|Overflow~combout\ : std_logic;
SIGNAL \o|Sig~0_combout\ : std_logic;
SIGNAL \o|Sig~1_combout\ : std_logic;
SIGNAL \o|Sig~2_combout\ : std_logic;

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
	i => \o|Add0~3_combout\,
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
	i => \o|Add0~6_combout\,
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
	i => \o|Add0~9_combout\,
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
	i => \o|Add0~12_combout\,
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
	i => \o|Add0~14_combout\,
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

-- Location: LCCOMB_X46_Y11_N8
\o|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~0_combout\ = \DIP_SW[8]~input_o\ $ (\KEY_EX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[8]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add0~0_combout\);

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

-- Location: LCCOMB_X46_Y11_N14
\o|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~2_cout\ = CARRY(\KEY_EX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY_EX[0]~input_o\,
	datad => VCC,
	cout => \o|Add0~2_cout\);

-- Location: LCCOMB_X46_Y11_N16
\o|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~3_combout\ = (\o|Add0~0_combout\ & ((\DIP_SW[4]~input_o\ & (\o|Add0~2_cout\ & VCC)) # (!\DIP_SW[4]~input_o\ & (!\o|Add0~2_cout\)))) # (!\o|Add0~0_combout\ & ((\DIP_SW[4]~input_o\ & (!\o|Add0~2_cout\)) # (!\DIP_SW[4]~input_o\ & ((\o|Add0~2_cout\) # 
-- (GND)))))
-- \o|Add0~4\ = CARRY((\o|Add0~0_combout\ & (!\DIP_SW[4]~input_o\ & !\o|Add0~2_cout\)) # (!\o|Add0~0_combout\ & ((!\o|Add0~2_cout\) # (!\DIP_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add0~0_combout\,
	datab => \DIP_SW[4]~input_o\,
	datad => VCC,
	cin => \o|Add0~2_cout\,
	combout => \o|Add0~3_combout\,
	cout => \o|Add0~4\);

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

-- Location: LCCOMB_X46_Y11_N26
\o|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~5_combout\ = \DIP_SW[7]~input_o\ $ (\KEY_EX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[7]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add0~5_combout\);

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

-- Location: LCCOMB_X46_Y11_N18
\o|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~6_combout\ = ((\o|Add0~5_combout\ $ (\DIP_SW[3]~input_o\ $ (!\o|Add0~4\)))) # (GND)
-- \o|Add0~7\ = CARRY((\o|Add0~5_combout\ & ((\DIP_SW[3]~input_o\) # (!\o|Add0~4\))) # (!\o|Add0~5_combout\ & (\DIP_SW[3]~input_o\ & !\o|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add0~5_combout\,
	datab => \DIP_SW[3]~input_o\,
	datad => VCC,
	cin => \o|Add0~4\,
	combout => \o|Add0~6_combout\,
	cout => \o|Add0~7\);

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

-- Location: LCCOMB_X46_Y11_N28
\o|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~8_combout\ = \DIP_SW[6]~input_o\ $ (\KEY_EX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add0~8_combout\);

-- Location: LCCOMB_X46_Y11_N20
\o|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~9_combout\ = (\DIP_SW[2]~input_o\ & ((\o|Add0~8_combout\ & (\o|Add0~7\ & VCC)) # (!\o|Add0~8_combout\ & (!\o|Add0~7\)))) # (!\DIP_SW[2]~input_o\ & ((\o|Add0~8_combout\ & (!\o|Add0~7\)) # (!\o|Add0~8_combout\ & ((\o|Add0~7\) # (GND)))))
-- \o|Add0~10\ = CARRY((\DIP_SW[2]~input_o\ & (!\o|Add0~8_combout\ & !\o|Add0~7\)) # (!\DIP_SW[2]~input_o\ & ((!\o|Add0~7\) # (!\o|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[2]~input_o\,
	datab => \o|Add0~8_combout\,
	datad => VCC,
	cin => \o|Add0~7\,
	combout => \o|Add0~9_combout\,
	cout => \o|Add0~10\);

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

-- Location: LCCOMB_X46_Y11_N30
\o|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~11_combout\ = \DIP_SW[5]~input_o\ $ (\KEY_EX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIP_SW[5]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Add0~11_combout\);

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

-- Location: LCCOMB_X46_Y11_N22
\o|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~12_combout\ = ((\o|Add0~11_combout\ $ (\DIP_SW[1]~input_o\ $ (!\o|Add0~10\)))) # (GND)
-- \o|Add0~13\ = CARRY((\o|Add0~11_combout\ & ((\DIP_SW[1]~input_o\) # (!\o|Add0~10\))) # (!\o|Add0~11_combout\ & (\DIP_SW[1]~input_o\ & !\o|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \o|Add0~11_combout\,
	datab => \DIP_SW[1]~input_o\,
	datad => VCC,
	cin => \o|Add0~10\,
	combout => \o|Add0~12_combout\,
	cout => \o|Add0~13\);

-- Location: LCCOMB_X46_Y11_N24
\o|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Add0~14_combout\ = \o|Add0~13\ $ (\KEY_EX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \KEY_EX[0]~input_o\,
	cin => \o|Add0~13\,
	combout => \o|Add0~14_combout\);

-- Location: LCCOMB_X46_Y11_N0
\o|Overflow\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Overflow~combout\ = \DIP_SW[5]~input_o\ $ (\DIP_SW[1]~input_o\ $ (\o|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	datad => \o|Add0~14_combout\,
	combout => \o|Overflow~combout\);

-- Location: LCCOMB_X46_Y11_N10
\o|Sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Sig~0_combout\ = (\DIP_SW[7]~input_o\ & (((!\DIP_SW[4]~input_o\ & \DIP_SW[8]~input_o\)) # (!\DIP_SW[3]~input_o\))) # (!\DIP_SW[7]~input_o\ & (!\DIP_SW[4]~input_o\ & (!\DIP_SW[3]~input_o\ & \DIP_SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[7]~input_o\,
	datab => \DIP_SW[4]~input_o\,
	datac => \DIP_SW[3]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \o|Sig~0_combout\);

-- Location: LCCOMB_X46_Y11_N12
\o|Sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Sig~1_combout\ = (\DIP_SW[6]~input_o\ & ((\o|Sig~0_combout\) # (!\DIP_SW[2]~input_o\))) # (!\DIP_SW[6]~input_o\ & (!\DIP_SW[2]~input_o\ & \o|Sig~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datac => \DIP_SW[2]~input_o\,
	datad => \o|Sig~0_combout\,
	combout => \o|Sig~1_combout\);

-- Location: LCCOMB_X46_Y11_N2
\o|Sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o|Sig~2_combout\ = (\KEY_EX[0]~input_o\ & ((\o|Sig~1_combout\ & ((\DIP_SW[5]~input_o\) # (!\DIP_SW[1]~input_o\))) # (!\o|Sig~1_combout\ & (\DIP_SW[5]~input_o\ & !\DIP_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o|Sig~1_combout\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \o|Sig~2_combout\);

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


