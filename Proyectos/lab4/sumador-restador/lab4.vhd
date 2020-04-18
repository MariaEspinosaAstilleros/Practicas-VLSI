-- Laboratorio 4: Aritmética binaria con VHDL
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: Realizar la suma y resta de dos números binarios X (DIP_SW[1-4) e Y (DIP_SW[5-8]) de 4 bits 
--             introducidos mediante el dip switch de 8 interruptores conectado a la tarjeta DE0-nano. 
--             El resultado (R) de la operación se mostrará en los LED[3-0]. Tomamos las señales Cin 
--             (acarreo de entrada) conectada a KEY_EX[0], Cout (acarreo de salida) conectada a LED[7],
--             el signo de la operación conectado a LED[6] y el desbordamiento conectado a LED[5]

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab4 IS 
    PORT (
        DIP_SW : IN STD_LOGIC_VECTOR(1 TO 8);           -- dip switches externos
        KEY_EX : IN STD_LOGIC_VECTOR(0 TO 1);           -- pulsadores externos
        LED : OUT STD_LOGIC_VECTOR(7 downto 0));        -- leds
END lab4;

ARCHITECTURE funcLab4 OF lab4 IS 
SIGNAL Result : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
COMPONENT aluSR                                         -- Importamos el componente del sumador restador
	PORT (X : IN STD_LOGIC_VECTOR(0 to 3);          -- primer operando
        Y : IN STD_LOGIC_VECTOR(0 to 3);                -- segundo operando
        Cin : IN STD_LOGIC;                             -- acarreo de entrada
        Cout : OUT STD_LOGIC;                           -- acarreo de salida
	Overflow : OUT STD_LOGIC;                       -- desbordamiento
        Sig: OUT STD_LOGIC;                             -- signo de la operación
        R : OUT STD_LOGIC_VECTOR(3 downto 0));          -- resultado de la operación 
END COMPONENT; 

BEGIN --Asignación de las entradas/salidas al componente
 o : aluSR port map (X => DIP_SW(1 To 4), Y => DIP_SW(5 to 8), Cin => KEY_EX(0), Cout => LED(7), Overflow => LED(5), Sig => LED(6), R => LED(3 downto 0));
END funcLab4;