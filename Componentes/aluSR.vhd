LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY aluSR IS 
    PORT (X : IN STD_LOGIC_VECTOR(0 to 3);
          Y : IN STD_LOGIC_VECTOR(0 to 3);
          Cin : IN STD_LOGIC; 
          Cout : OUT STD_LOGIC;
		    Overflow : OUT STD_LOGIC; 
          Sig : OUT STD_LOGIC; 
          R : OUT STD_LOGIC_VECTOR(3 downto 0));
END aluSR;


ARCHITECTURE AluFunc OF aluSR IS 
SIGNAL Result : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
SIGNAL RestaAux : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

	  RestaAux <= (('0' & X ) - ('0' & Y )) WHEN (X > Y) ELSE ( ('0' & Y ) - ('0' & X ) ); -- Auxiliar usado para calcular la resta. Cuando X > Y se hace X - Y, cuando no Y - X
	  Result <= (('0' & X) + ('0' & Y)) WHEN Cin = '0' ELSE RestaAux;      -- Cuando Cin es 0 se hace la suma, cuando es 1 la resta
     Sig <= '1' WHEN (Cin = '1' AND (('0' & X) < ('0' & Y))) ELSE '0';  -- Si se esta haciendo la resta y X > Y entonces el resultado es negativo
	  R <= Result(3 downto 0); 
	  Cout <= Result(4); 
	  Overflow <= Result(4) XOR X(0) XOR Y(0); 
END AluFunc; 