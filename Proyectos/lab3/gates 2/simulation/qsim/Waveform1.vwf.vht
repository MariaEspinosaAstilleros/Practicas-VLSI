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
-- Generated on "03/04/2020 20:36:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gates2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gates2_vhd_vec_tst IS
END gates2_vhd_vec_tst;
ARCHITECTURE gates2_arch OF gates2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LED : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL SW : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT gates2
	PORT (
	LED : BUFFER STD_LOGIC_VECTOR(0 TO 7);
	SW : IN STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;
BEGIN
	i1 : gates2
	PORT MAP (
-- list connections between master ports and signals
	LED => LED,
	SW => SW
	);

-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '0';
	WAIT FOR 1000000 ps;
	SW(0) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;

-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
LOOP
	SW(1) <= '0';
	WAIT FOR 500000 ps;
	SW(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_1;
END gates2_arch;
