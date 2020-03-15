-- Laboratorio 4: Aritmética binaria con VHDL
-- Autores: David Carneros Prado y Maria Espinosa Astilleros
-- Desarrollo: Realizar la suma de dos números binarios X (DIP_SW[1-4) e Y (DIP_SW[5-8]) de 4 bits 
--             introducidos mediante el dip switch de 8 interruptores conectado a la tarjeta DE0-nano. 
--             El resultado (R) de la operación se mostrará en los LED[3-0]. Tomamos las señales Cin 
--             (acarreo de entrada) conectada a KEY_EX[0] y Cout (acarreo de salida) conectada a LED[7].
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY lab4 IS 
    PORT (
        DIP_SW : IN STD_LOGIC_VECTOR(1 TO 8);       -- dip switches
        KEY_EX : IN STD_LOGIC_VECTOR(0 TO 1);       -- pulsador KEY_EX[0]
        LED : OUT STD_LOGIC_VECTOR(7 downto 0));    -- leds verdes (LED[0], LED[1], LED[2], 
                                                    --              LED[3], LED[4], LED[5] 
                                                    --              LED[6] y LED[7])
END lab4;

ARCHITECTURE funcLab4 OF lab4 IS 
SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0) ;         -- tamaño resultado suma más el acarreo de salida
COMPONENT aluS                                     -- importamos nuestro componente aluS.vhd
	PORT (X : IN STD_LOGIC_VECTOR(0 to 3);          -- primer sumando 
         Y : IN STD_LOGIC_VECTOR(0 to 3);           -- segundo sumando
         Cin : IN STD_LOGIC;                        -- acarreo de entrada
         Cout : OUT STD_LOGIC;                      -- acarreo de salida
         R : OUT STD_LOGIC_VECTOR(3 downto 0));     -- resultado suma
END COMPONENT; 

-- Asignamos los sumandos, los acarreos de entrada/salida y el resultado de la suma 
-- a los elementos de la placa correspondientes
BEGIN
 o : aluS port map (X => DIP_SW(1 To 4), Y => DIP_SW(5 to 8),               
                                        Cin => KEY_EX(0), Cout => LED(7),
                                        R => LED(3 downto 0));
END funcLab4;