-- Laboratorio 5: Diseño de multiplexor 4x1
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: En este componente realizamos el multiplexador 2x1 para
--             posteriormente, mediante una red de este tipo de MUX, 
--             obtener un multiplexor 4x1. 

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY mux2x1 IS 
    PORT(
        A: IN STD_LOGIC;    -- 1º entrada del mux
        B: IN STD_LOGIC;    -- 2º entrada del mux
        S: IN STD_LOGIC;    -- entrada de selección
        O: OUT STD_LOGIC);  -- salida del mux            
END mux2x1; 

ARCHITECTURE MuxFunc OF mux2x1 IS 
BEGIN 
    WITH S SELECT           
        O <= A WHEN '0',    -- si la entrada de selección es 0 la salida será A
             B WHEN OTHERS; -- si la entrada de selección es 1 la salida será B
END MuxFunc; 