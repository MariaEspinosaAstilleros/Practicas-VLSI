-- Laboratorio 5: Diseño de multiplexor 4x1
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: En este componente realizamos el multiplexador 2x1 para
--             posteriormente, mediante una red de este tipo de MUX, 
--             obtener un multiplexor 4x1. 

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY mux_2x1 IS 
    PORT(
        DIP_SW: IN STD_LOGIC_VECTOR(5 TO 8); -- dip switches
        KEY_EX: IN STD_LOGIC_VECTOR(0 TO 1); -- pulsadores
        VERDE:  OUT STD_LOGIC);              -- led verde
END mux_2x1; 

ARCHITECTURE MuxFunc OF mux_2x1 IS 
SIGNAL m: STD_LOGIC_VECTOR(0 TO 1); 
BEGIN 
    WITH KEY_EX SELECT
        VERDE <= DIP_SW(5) or DIP_SW(7) or m(0) WHEN '0', -- esto no creo que se escriba asi pero no se ponerlo de otra forma :( 
                 DIP_SW(6) or DIP_SW(8) or m(1) WHEN OTHERS; 
END MuxFunc; 
    