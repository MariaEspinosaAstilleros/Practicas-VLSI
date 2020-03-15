-- Laboratorio 2: Comprobacion de E/S en protoboard
-- Autores: David Carneros Prado y María Espinosa Astilleros
-- Desarrollo: Elaborar un programa que permita que cada uno de los pulsadores externos active uno de los colores
--             (rojo/verde) del led bicolor externo. El mismo programa debe permitir conectar cada uno de los dip 
--             switches externos a un segmento distinto del DISP externo (incluyendo el led DP)

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lab2 IS
    PORT(
        KEY_EX      : IN STD_LOGIC_VECTOR(0 TO 1);   -- pulsadores key_ex[0] / key_ex[1] 
        ROJO, VERDE : OUT STD_LOGIC;                 -- led bicolor externo
        DIP_SW      : IN STD_LOGIC_VECTOR(1 TO 8);   -- dip switch
        DISP        : OUT STD_LOGIC_VECTOR(1 TO 8)); -- display externo
END lab2;

ARCHITECTURE LogicFunc OF lab2 IS 
BEGIN 
    ROJO <= KEY_EX(0);      -- key_ex[0] conectado al led rojo
    VERDE <= KEY_EX(1);     -- key_ex[1] conectado al led verde
    DISP <= NOT DIP_SW;     -- display externo conectado a los dip switches
END LogicFunc;