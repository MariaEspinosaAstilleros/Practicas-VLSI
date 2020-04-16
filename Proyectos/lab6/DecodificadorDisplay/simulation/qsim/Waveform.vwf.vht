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
-- Generated on "04/16/2020 18:38:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab6_vhd_vec_tst IS
END lab6_vhd_vec_tst;
ARCHITECTURE lab6_arch OF lab6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DIP_SW : STD_LOGIC_VECTOR(5 TO 8);
SIGNAL DISP : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL DP : STD_LOGIC;
SIGNAL KEY_EX : STD_LOGIC;
COMPONENT lab6
	PORT (
	DIP_SW : IN STD_LOGIC_VECTOR(5 TO 8);
	DISP : BUFFER STD_LOGIC_VECTOR(1 TO 7);
	DP : BUFFER STD_LOGIC;
	KEY_EX : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab6
	PORT MAP (
-- list connections between master ports and signals
	DIP_SW => DIP_SW,
	DISP => DISP,
	DP => DP,
	KEY_EX => KEY_EX
	);

-- KEY_EX
t_prcs_KEY_EX: PROCESS
BEGIN
	KEY_EX <= '1';
	WAIT FOR 160000 ps;
	KEY_EX <= '0';
	WAIT FOR 160000 ps;
	KEY_EX <= '1';
WAIT;
END PROCESS t_prcs_KEY_EX;

-- DIP_SW[5]
t_prcs_DIP_SW_5: PROCESS
BEGIN
LOOP
	DIP_SW(5) <= '0';
	WAIT FOR 40000 ps;
	DIP_SW(5) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_5;

-- DIP_SW[6]
t_prcs_DIP_SW_6: PROCESS
BEGIN
LOOP
	DIP_SW(6) <= '0';
	WAIT FOR 20000 ps;
	DIP_SW(6) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_6;

-- DIP_SW[7]
t_prcs_DIP_SW_7: PROCESS
BEGIN
LOOP
	DIP_SW(7) <= '0';
	WAIT FOR 10000 ps;
	DIP_SW(7) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_7;

-- DIP_SW[8]
t_prcs_DIP_SW_8: PROCESS
BEGIN
LOOP
	DIP_SW(8) <= '0';
	WAIT FOR 5000 ps;
	DIP_SW(8) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIP_SW_8;
END lab6_arch;
