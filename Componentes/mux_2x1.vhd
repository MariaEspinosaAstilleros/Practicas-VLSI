-- Laboratorio 5: Diseño de multiplexor 4x1
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: En este componente realizamos el multiplexador 2x1 para
--             posteriormente, mediante una red de este tipo de MUX, 
--             obtener un multiplexor 4x1. 

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY mux_2x1 IS 
    PORT(
        DIP_SW5, DIP_SW6 : IN STD_LOGIC; -- dip switches
        KEY_EX : IN STD_LOGIC;           -- pulsador
        VERDE : OUT STD_LOGIC );         -- led verde
END mux_2x1; 

ARCHITECTURE MuxFunc OF mux_2x1 IS 
BEGIN 
    WITH KEY_EX SELECT
        VERDE <= DIP_SW5 WHEN '0',
                 DIP_SW6 WHEN OTHERS; 
END MuxFunc; 
    