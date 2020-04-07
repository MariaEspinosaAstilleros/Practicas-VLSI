-- Laboratorio 5: Diseño de multiplexor 4x1
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: En este componente realizamos el multiplexador 2x1 para
--             posteriormente, mediante una red de este tipo de MUX, 
--             obtener un multiplexor 4x1. 

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY mux2x1 IS 
    PORT(
        A: IN STD_LOGIC; 
        B: IN STD_LOGIC;
        S: IN STD_LOGIC;
        O: OUT STD_LOGIC);            
END mux2x1; 

ARCHITECTURE MuxFunc OF mux2x1 IS 
BEGIN 
    WITH S SELECT
        O <= A WHEN '0', -- esto no creo que se escriba asi pero no se ponerlo de otra forma :( 
             B WHEN OTHERS; 
END MuxFunc; 