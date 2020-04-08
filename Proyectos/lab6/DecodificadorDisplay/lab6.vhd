LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY lab6 IS 
    PORT (
        DIP_SW : IN STD_LOGIC_VECTOR(5 to 8);
        KEY_EX : IN STD_LOGIC;
        DP : OUT STD_LOGIC;
        DISP: OUT STD_LOGIC_VECTOR (1 to 7)
    );
END lab6;

ARCHITECTURE funcLab6 OF lab6 IS 
COMPONENT dec_hex_seg7 
    PORT (
        hex: IN STD_LOGIC_VECTOR(5 to 8);
        enable : IN STD_LOGIC;
        DP : OUT STD_LOGIC;
        display : OUT STD_LOGIC_VECTOR(1 to 7));
END COMPONENT;
BEGIN 
    dec : dec_hex_seg7 port map (hex => DIP_SW(5 to 8), enable => KEY_EX, 
        DP => DP,  display => DISP(1 to 7));
END funcLab6;