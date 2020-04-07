-- Laboratorio 5: Diseño de multiplexor 4x1
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: Realizaremos un multiplezador 4x1 a partir de una red de 3 instancias de un componente MUX 2x1. 
--             Las entradas de datos se conectarán a los DIP_SW[5-8], la entrada de selección a KEY_EX[0-1] 
--             y la salida a VERDE. La señal más significativa será KEY_EX[0]

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY mux_red_4x1 IS 
    PORT ( 
        DIP_SW : IN STD_LOGIC_VECTOR(5 TO 8); --dip switches
        KEY_EX : IN STD_LOGIC_VECTOR(0 TO 1); --pulsadores
        VERDE :  OUT STD_LOGIC);  
END mux_red_4x1; 

ARCHITECTURE funcLab5 OF mux_red_4x1 IS 
SIGNAL m0,m1: STD_LOGIC; 
COMPONENT mux2x1
    PORT(
        A: IN STD_LOGIC; 
        B: IN STD_LOGIC;
        S: IN STD_LOGIC;
        O: OUT STD_LOGIC);              -- led verde
END COMPONENT; 

-- Realizamos la red de 3 mux 2x1 
BEGIN 
    mux1: mux2x1 PORT MAP (
        A => DIP_SW(5), B => DIP_SW(6) , S => KEY_EX(0), O => m0
        ); 
    mux2: mux2x1 PORT MAP (
        A => DIP_SW(7), B => DIP_SW(8) , S => KEY_EX(0), O => m1
    ); 
    mux3: mux2x1 PORT MAP (
        A => m0, B => m1, S => KEY_EX(1), O => VERDE); 
END funcLab5; 