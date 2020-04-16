LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab6 IS 
    PORT (
        DIP_SW : IN STD_LOGIC_VECTOR(5 to 8);  -- dip switches externos
        KEY_EX : IN STD_LOGIC;                 -- pulsador externo
        DP : OUT STD_LOGIC;                    -- led DP
        DISP: OUT STD_LOGIC_VECTOR (1 to 7)    -- display de 7 segmentos
    );
END lab6;

ARCHITECTURE funcLab6 OF lab6 IS 
COMPONENT dec_hex_seg7  -- componente del display de 7 segmentos
    PORT (
        hex: IN STD_LOGIC_VECTOR(5 to 8);
        enable : IN STD_LOGIC;
        DP : OUT STD_LOGIC;
        display : OUT STD_LOGIC_VECTOR(1 to 7));
END COMPONENT;
BEGIN  --Asignamos las entradas y salidas a los atributos del componente
    dec : dec_hex_seg7 port map (hex => DIP_SW(5 to 8), enable => KEY_EX, 
        DP => DP,  display => DISP(1 to 7));
END funcLab6;