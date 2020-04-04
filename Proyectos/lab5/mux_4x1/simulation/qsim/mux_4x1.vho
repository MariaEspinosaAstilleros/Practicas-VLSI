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

-- DATE "04/04/2020 19:35:15"

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

ENTITY 	mux_4x1 IS
    PORT (
	DIP_SW : IN std_logic_vector(5 TO 8);
	KEY_EX : IN std_logic_vector(0 TO 1);
	VERDE : OUT std_logic
	);
END mux_4x1;

-- Design Ports Information
-- VERDE	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_4x1 IS
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
SIGNAL ww_KEY_EX : std_logic_vector(0 TO 1);
SIGNAL ww_VERDE : std_logic;
SIGNAL \VERDE~output_o\ : std_logic;
SIGNAL \KEY_EX[0]~input_o\ : std_logic;
SIGNAL \DIP_SW[8]~input_o\ : std_logic;
SIGNAL \DIP_SW[7]~input_o\ : std_logic;
SIGNAL \DIP_SW[6]~input_o\ : std_logic;
SIGNAL \DIP_SW[5]~input_o\ : std_logic;
SIGNAL \KEY_EX[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DIP_SW <= DIP_SW;
ww_KEY_EX <= KEY_EX;
VERDE <= ww_VERDE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y14_N9
\VERDE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \VERDE~output_o\);

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

-- Location: LCCOMB_X46_Y4_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\KEY_EX[0]~input_o\ & (((\KEY_EX[1]~input_o\)))) # (!\KEY_EX[0]~input_o\ & ((\KEY_EX[1]~input_o\ & (\DIP_SW[6]~input_o\)) # (!\KEY_EX[1]~input_o\ & ((\DIP_SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX[0]~input_o\,
	datab => \DIP_SW[6]~input_o\,
	datac => \DIP_SW[5]~input_o\,
	datad => \KEY_EX[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X46_Y4_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\KEY_EX[0]~input_o\ & ((\Mux0~0_combout\ & (\DIP_SW[8]~input_o\)) # (!\Mux0~0_combout\ & ((\DIP_SW[7]~input_o\))))) # (!\KEY_EX[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX[0]~input_o\,
	datab => \DIP_SW[8]~input_o\,
	datac => \DIP_SW[7]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

ww_VERDE <= \VERDE~output_o\;
END structure;


