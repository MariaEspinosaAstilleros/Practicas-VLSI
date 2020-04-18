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

-- DATE "04/18/2020 18:32:59"

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

ENTITY 	lab6 IS
    PORT (
	DIP_SW : IN std_logic_vector(5 TO 8);
	KEY_EX : IN std_logic;
	DP : OUT std_logic;
	DISP : OUT std_logic_vector(1 TO 7)
	);
END lab6;

-- Design Ports Information
-- DP	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[7]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[4]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[8]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIP_SW : std_logic_vector(5 TO 8);
SIGNAL ww_KEY_EX : std_logic;
SIGNAL ww_DP : std_logic;
SIGNAL ww_DISP : std_logic_vector(1 TO 7);
SIGNAL \DP~output_o\ : std_logic;
SIGNAL \DISP[7]~output_o\ : std_logic;
SIGNAL \DISP[6]~output_o\ : std_logic;
SIGNAL \DISP[5]~output_o\ : std_logic;
SIGNAL \DISP[4]~output_o\ : std_logic;
SIGNAL \DISP[3]~output_o\ : std_logic;
SIGNAL \DISP[2]~output_o\ : std_logic;
SIGNAL \DISP[1]~output_o\ : std_logic;
SIGNAL \DIP_SW[6]~input_o\ : std_logic;
SIGNAL \DIP_SW[5]~input_o\ : std_logic;
SIGNAL \DIP_SW[7]~input_o\ : std_logic;
SIGNAL \DIP_SW[8]~input_o\ : std_logic;
SIGNAL \dec|LessThan0~0_combout\ : std_logic;
SIGNAL \KEY_EX~input_o\ : std_logic;
SIGNAL \dec|Mux6~0_combout\ : std_logic;
SIGNAL \dec|display[7]~0_combout\ : std_logic;
SIGNAL \dec|Mux5~0_combout\ : std_logic;
SIGNAL \dec|display[6]~1_combout\ : std_logic;
SIGNAL \dec|Mux4~0_combout\ : std_logic;
SIGNAL \dec|display[5]~2_combout\ : std_logic;
SIGNAL \dec|Mux3~0_combout\ : std_logic;
SIGNAL \dec|display[4]~3_combout\ : std_logic;
SIGNAL \dec|Mux2~0_combout\ : std_logic;
SIGNAL \dec|display[3]~4_combout\ : std_logic;
SIGNAL \dec|Mux1~0_combout\ : std_logic;
SIGNAL \dec|display[2]~5_combout\ : std_logic;
SIGNAL \dec|Mux0~0_combout\ : std_logic;
SIGNAL \dec|display[1]~6_combout\ : std_logic;
SIGNAL \dec|ALT_INV_LessThan0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DIP_SW <= DIP_SW;
ww_KEY_EX <= KEY_EX;
DP <= ww_DP;
DISP <= ww_DISP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dec|ALT_INV_LessThan0~0_combout\ <= NOT \dec|LessThan0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y25_N9
\DP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \DP~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\DISP[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[7]~0_combout\,
	devoe => ww_devoe,
	o => \DISP[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\DISP[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[6]~1_combout\,
	devoe => ww_devoe,
	o => \DISP[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DISP[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[5]~2_combout\,
	devoe => ww_devoe,
	o => \DISP[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\DISP[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[4]~3_combout\,
	devoe => ww_devoe,
	o => \DISP[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\DISP[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[3]~4_combout\,
	devoe => ww_devoe,
	o => \DISP[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\DISP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[2]~5_combout\,
	devoe => ww_devoe,
	o => \DISP[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\DISP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|display[1]~6_combout\,
	devoe => ww_devoe,
	o => \DISP[1]~output_o\);

-- Location: IOIBUF_X7_Y34_N8
\DIP_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(6),
	o => \DIP_SW[6]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\DIP_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(5),
	o => \DIP_SW[5]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\DIP_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(7),
	o => \DIP_SW[7]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\DIP_SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(8),
	o => \DIP_SW[8]~input_o\);

-- Location: LCCOMB_X6_Y23_N16
\dec|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|LessThan0~0_combout\ = ((!\DIP_SW[6]~input_o\ & (!\DIP_SW[7]~input_o\ & !\DIP_SW[8]~input_o\))) # (!\DIP_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|LessThan0~0_combout\);

-- Location: IOIBUF_X0_Y28_N8
\KEY_EX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_EX,
	o => \KEY_EX~input_o\);

-- Location: LCCOMB_X6_Y23_N26
\dec|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux6~0_combout\ = (\DIP_SW[8]~input_o\ & ((\DIP_SW[5]~input_o\) # (\DIP_SW[6]~input_o\ $ (\DIP_SW[7]~input_o\)))) # (!\DIP_SW[8]~input_o\ & ((\DIP_SW[7]~input_o\) # (\DIP_SW[6]~input_o\ $ (\DIP_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux6~0_combout\);

-- Location: LCCOMB_X6_Y23_N12
\dec|display[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[7]~0_combout\ = (\KEY_EX~input_o\ & \dec|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datac => \dec|Mux6~0_combout\,
	combout => \dec|display[7]~0_combout\);

-- Location: LCCOMB_X6_Y23_N22
\dec|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux5~0_combout\ = (\DIP_SW[6]~input_o\ & (\DIP_SW[8]~input_o\ & (\DIP_SW[5]~input_o\ $ (\DIP_SW[7]~input_o\)))) # (!\DIP_SW[6]~input_o\ & (!\DIP_SW[5]~input_o\ & ((\DIP_SW[7]~input_o\) # (\DIP_SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y23_N24
\dec|display[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[6]~1_combout\ = (\KEY_EX~input_o\ & !\dec|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datac => \dec|Mux5~0_combout\,
	combout => \dec|display[6]~1_combout\);

-- Location: LCCOMB_X6_Y23_N10
\dec|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux4~0_combout\ = (\DIP_SW[7]~input_o\ & (((!\DIP_SW[5]~input_o\ & \DIP_SW[8]~input_o\)))) # (!\DIP_SW[7]~input_o\ & ((\DIP_SW[6]~input_o\ & (!\DIP_SW[5]~input_o\)) # (!\DIP_SW[6]~input_o\ & ((\DIP_SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux4~0_combout\);

-- Location: LCCOMB_X6_Y23_N4
\dec|display[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[5]~2_combout\ = (\KEY_EX~input_o\ & !\dec|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datad => \dec|Mux4~0_combout\,
	combout => \dec|display[5]~2_combout\);

-- Location: LCCOMB_X6_Y23_N6
\dec|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux3~0_combout\ = (\DIP_SW[7]~input_o\ & ((\DIP_SW[6]~input_o\ & ((\DIP_SW[8]~input_o\))) # (!\DIP_SW[6]~input_o\ & (\DIP_SW[5]~input_o\ & !\DIP_SW[8]~input_o\)))) # (!\DIP_SW[7]~input_o\ & (!\DIP_SW[5]~input_o\ & (\DIP_SW[6]~input_o\ $ 
-- (\DIP_SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y23_N8
\dec|display[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[4]~3_combout\ = (\KEY_EX~input_o\ & !\dec|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datad => \dec|Mux3~0_combout\,
	combout => \dec|display[4]~3_combout\);

-- Location: LCCOMB_X6_Y23_N2
\dec|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux2~0_combout\ = (\DIP_SW[6]~input_o\ & (\DIP_SW[5]~input_o\ & ((\DIP_SW[7]~input_o\) # (!\DIP_SW[8]~input_o\)))) # (!\DIP_SW[6]~input_o\ & (!\DIP_SW[5]~input_o\ & (\DIP_SW[7]~input_o\ & !\DIP_SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux2~0_combout\);

-- Location: LCCOMB_X6_Y23_N28
\dec|display[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[3]~4_combout\ = (\KEY_EX~input_o\ & !\dec|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datad => \dec|Mux2~0_combout\,
	combout => \dec|display[3]~4_combout\);

-- Location: LCCOMB_X6_Y23_N30
\dec|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux1~0_combout\ = (\DIP_SW[5]~input_o\ & ((\DIP_SW[8]~input_o\ & ((\DIP_SW[7]~input_o\))) # (!\DIP_SW[8]~input_o\ & (\DIP_SW[6]~input_o\)))) # (!\DIP_SW[5]~input_o\ & (\DIP_SW[6]~input_o\ & (\DIP_SW[7]~input_o\ $ (\DIP_SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux1~0_combout\);

-- Location: LCCOMB_X6_Y23_N0
\dec|display[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[2]~5_combout\ = (\KEY_EX~input_o\ & !\dec|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datac => \dec|Mux1~0_combout\,
	combout => \dec|display[2]~5_combout\);

-- Location: LCCOMB_X6_Y23_N18
\dec|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Mux0~0_combout\ = (\DIP_SW[6]~input_o\ & (!\DIP_SW[7]~input_o\ & (\DIP_SW[5]~input_o\ $ (!\DIP_SW[8]~input_o\)))) # (!\DIP_SW[6]~input_o\ & (\DIP_SW[8]~input_o\ & (\DIP_SW[5]~input_o\ $ (!\DIP_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[6]~input_o\,
	datab => \DIP_SW[5]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \dec|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y23_N20
\dec|display[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|display[1]~6_combout\ = (\KEY_EX~input_o\ & !\dec|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX~input_o\,
	datad => \dec|Mux0~0_combout\,
	combout => \dec|display[1]~6_combout\);

ww_DP <= \DP~output_o\;

ww_DISP(7) <= \DISP[7]~output_o\;

ww_DISP(6) <= \DISP[6]~output_o\;

ww_DISP(5) <= \DISP[5]~output_o\;

ww_DISP(4) <= \DISP[4]~output_o\;

ww_DISP(3) <= \DISP[3]~output_o\;

ww_DISP(2) <= \DISP[2]~output_o\;

ww_DISP(1) <= \DISP[1]~output_o\;
END structure;


