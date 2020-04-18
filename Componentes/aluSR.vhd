-- Laboratorio 4: Aritmética binaria con VHDL
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: En este componente realizamos la operación suma y resta. Posteriormente lo incluiremos en lab4.vhd 
--             para asignarlo a los elementos de la placa que realizarán su función. 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY aluSR IS 
    PORT (
        X : IN STD_LOGIC_VECTOR(0 to 3);        -- primer sumando
        Y : IN STD_LOGIC_VECTOR(0 to 3);        -- segundo sumando
        Cin : IN STD_LOGIC;                     -- acarreo de entrada
        Cout : OUT STD_LOGIC;                   -- acarreo de salida
		Overflow : OUT STD_LOGIC;               -- desbordamiento 
        Sig : OUT STD_LOGIC;                    -- signo de la operación
        R : OUT STD_LOGIC_VECTOR(3 downto 0));  -- resultado de la operación
END aluSR;


ARCHITECTURE AluFunc OF aluSR IS 
SIGNAL Result : STD_LOGIC_VECTOR(4 DOWNTO 0) ;  -- resultado de la operación
SIGNAL RestaAux : STD_LOGIC_VECTOR(4 DOWNTO 0); -- auxiliar que calcula la resta
BEGIN
    RestaAux <= (('0' & X ) - ('0' & Y )) WHEN (X > Y) ELSE ( ('0' & Y ) - ('0' & X ) );    -- Cuando X > Y se hace X - Y, cuando no Y - X
	Result <= (('0' & X) + ('0' & Y)) WHEN Cin = '0' ELSE RestaAux;                         -- Cuando Cin es 0 se hace la suma, cuando es 1 la resta
    Sig <= '1' WHEN (Cin = '1' AND (('0' & X) < ('0' & Y))) ELSE '0';                       -- Si se esta haciendo la resta y X > Y, entonces el resultado es negativo
	R <= Result(3 downto 0);                                                                -- El resultado serán los 3 primeros bits de la variable result
	Cout <= Result(4);                                                                      -- El acarreo de salida es el último bit de la variable result
	Overflow <= Result(4) XOR X(0) XOR Y(0);                                                -- El desbordamiento es el XOR del Cout y el primer bit de los operandos
END AluFunc; 