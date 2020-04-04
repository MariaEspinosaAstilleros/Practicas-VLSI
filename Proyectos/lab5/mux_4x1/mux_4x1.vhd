-- Laboratorio 5: Diseño de multiplexor 4x1
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: Realizar el diseño de un MUX 4x1. Las entradas de datos se conectarán a los 
--             DIP_SW[5-8], la entrada de selección a KEY_EX[0-1] y la salida a VERDE.
--             La señal más significativa será KEY_EX[0]

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY mux_4x1 IS 
    PORT(
        DIP_SW: IN STD_LOGIC_VECTOR(5 TO 8); --dip switches DIP_SW[5-8]
        KEY_EX: IN STD_LOGIC_VECTOR(0 TO 1); --pulsadores KEY_EX[0] y KEY_EX[1]
        VERDE:  OUT STD_LOGIC);              --led verde
END mux_4x1; 

ARCHITECTURE funcLab5 OF mux_4x1 IS 
BEGIN 
    WITH KEY_EX SELECT
        VERDE <= DIP_SW(5) WHEN "00",
                 DIP_SW(6) WHEN "01",
                 DIP_SW(7) WHEN "10",
                 DIP_SW(8) WHEN OTHERS; 
END funcLab5;
    