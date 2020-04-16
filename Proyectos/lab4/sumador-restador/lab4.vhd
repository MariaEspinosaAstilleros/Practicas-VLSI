LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab4 IS 
    PORT (
        DIP_SW : IN STD_LOGIC_VECTOR(1 TO 8);
        KEY_EX : IN STD_LOGIC_VECTOR(0 TO 1);
        LED : OUT STD_LOGIC_VECTOR(7 downto 0));
END lab4;

ARCHITECTURE funcLab4 OF lab4 IS 
SIGNAL Result : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
COMPONENT aluSR
	PORT (X : IN STD_LOGIC_VECTOR(0 to 3);
        Y : IN STD_LOGIC_VECTOR(0 to 3);
        Cin : IN STD_LOGIC; 
        Cout : OUT STD_LOGIC;
	Overflow : OUT STD_LOGIC;
        Sig: OUT STD_LOGIC; 
        R : OUT STD_LOGIC_VECTOR(3 downto 0));
END COMPONENT; 

BEGIN
 o : aluSR port map (X => DIP_SW(1 To 4), Y => DIP_SW(5 to 8),
                                        Cin => KEY_EX(0), Cout => LED(7),
                                        Overflow => LED(5), Sig => LED(6), 
													 R => LED(3 downto 0));
END funcLab4;