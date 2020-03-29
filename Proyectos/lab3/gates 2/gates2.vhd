-- Laboratorio 3: Proyectos de implementación de funciones lógicas fundamentales
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: Implementación de tres puertas lógicas básicas (AND, OR, XOR) de 2 entradas conectadas respectivamente a los switches DIP de la tarjeta DE0-Nano.
--             Las salidas de las puertas se conectarán a tres LED de salida (LED[0], LED[1], LED[2]) y 
--             adicionalmente las entradas se conectarán a dos de los LED de entrada (LED[6], LED[7])


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gates2 IS 
    PORT (
        SW  : IN STD_LOGIC_VECTOR(0 TO 1);    -- dip switches
        LED : OUT STD_LOGIC_VECTOR(0 TO 7));  -- green leds (LED[0], LED[1], LED[2], LED[6] y LED[7])
  
END gates2;

ARCHITECTURE LogicFunc OF gates2 IS 
BEGIN 
    LED(0) <= SW(0) AND SW(1);    -- puerta AND conectada al LED[0]
    LED(1) <= SW(0) OR SW(1);     -- puerta OR conectada al LED[1] 
    LED(2) <= SW(0) XOR SW(1);    -- puerta XOR conectada al LED[2]
    LED(6) <= SW(0);              -- SW[0] conectado al LED[6]
    LED(7) <= SW(1);              -- SW[1] conectado al LED[7]
END LogicFunc;