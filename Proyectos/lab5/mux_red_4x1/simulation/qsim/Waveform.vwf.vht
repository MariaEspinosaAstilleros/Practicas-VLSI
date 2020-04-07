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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/07/2020 16:54:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_red_4x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_red_4x1_vhd_vec_tst IS
END mux_red_4x1_vhd_vec_tst;
ARCHITECTURE mux_red_4x1_arch OF mux_red_4x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DIP_SW : STD_LOGIC_VECTOR(5 TO 8);
SIGNAL KEY_EX : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL VERDE : STD_LOGIC;
COMPONENT mux_red_4x1
	PORT (
	DIP_SW : IN STD_LOGIC_VECTOR(5 TO 8);
	KEY_EX : IN STD_LOGIC_VECTOR(0 TO 1);
	VERDE : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_red_4x1
	PORT MAP (
-- list connections between master ports and signals
	DIP_SW => DIP_SW,
	KEY_EX => KEY_EX,
	VERDE => VERDE
	);

-- DIP_SW[5]
t_prcs_DIP_SW_5: PROCESS
BEGIN
LOOP
	DIP_SW(5) <= '0';
	WAIT FOR 50 ps;
	DIP_SW(5) <= '1';
	WAIT FOR 50 ps;
	IF (NOW >= 15000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_5;

-- DIP_SW[6]
t_prcs_DIP_SW_6: PROCESS
BEGIN
LOOP
	DIP_SW(6) <= '0';
	WAIT FOR 100 ps;
	DIP_SW(6) <= '1';
	WAIT FOR 100 ps;
	IF (NOW >= 15000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_6;

-- DIP_SW[7]
t_prcs_DIP_SW_7: PROCESS
BEGIN
LOOP
	DIP_SW(7) <= '0';
	WAIT FOR 150 ps;
	DIP_SW(7) <= '1';
	WAIT FOR 150 ps;
	IF (NOW >= 15000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_7;

-- DIP_SW[8]
t_prcs_DIP_SW_8: PROCESS
BEGIN
	FOR i IN 1 TO 37
	LOOP
		DIP_SW(8) <= '0';
		WAIT FOR 200 ps;
		DIP_SW(8) <= '1';
		WAIT FOR 200 ps;
	END LOOP;
	DIP_SW(8) <= '0';
WAIT;
END PROCESS t_prcs_DIP_SW_8;
-- KEY_EX[1]
t_prcs_KEY_EX_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		KEY_EX(1) <= '0';
		WAIT FOR 2000 ps;
		KEY_EX(1) <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	KEY_EX(1) <= '0';
	WAIT FOR 2000 ps;
	KEY_EX(1) <= '1';
WAIT;
END PROCESS t_prcs_KEY_EX_1;
-- KEY_EX[0]
t_prcs_KEY_EX_0: PROCESS
BEGIN
	KEY_EX(0) <= '0';
	WAIT FOR 4000 ps;
	KEY_EX(0) <= '1';
	WAIT FOR 4000 ps;
	KEY_EX(0) <= '0';
	WAIT FOR 4000 ps;
	KEY_EX(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_EX_0;
END mux_red_4x1_arch;
