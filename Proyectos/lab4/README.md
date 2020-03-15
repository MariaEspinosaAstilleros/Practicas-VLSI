# 4.- Aritmética binaria con VHDL

Se trata de realizar un proyecto que sume/reste dos números binarios X (DIP_SW[1-4]) e Y (DIP_SW[5-8]) de 4 bits introducidos mediante el dip switch de 8 interruptores conectado a la tarjeta DE0-nano. El resultado (R) de la operación se mostrará en los LED[3-0].

## Primera parte 

En primer lugar realizar la suma tomando las señales Cin (acarreo de entrada) conectada a KEY_EX[0] y Cout (acarreo de salida) conectada a LED[7].

## Segunda parte 

A continuación modificar el programa para implementar el sumador/restador de cuatro bits de modo que la señal Cin=0 indique la operación de suma y Cin=1 resta. Debe tenerse en cuenta que en el caso de la resta también se debe señalar la posibilidad de que el resultado sea negativo. Para señalar el signo del resultado se empleará el LED[6]. (Opcional: Añadir comprobación de desbordamiento y simulación).

## Nota: 
Consultar en la sección 5.3.3 del libro [Brown06] la implementación de la unidad sumadora restadora. En dicha unidad la resta se realiza mediante la suma del minuendo y el sustraendo expresado en complemento a 2, para lo cual este último se invierte y se suma a la señal de control Cin. En la Fig. 5.29 se ilustra con un ejemplo la comprobación de desbordamiento (overflow).

# Entregable
El entregable consistirá en:

1. Ficheros del proyecto Quartus del sumador restador (zip).
2. Vídeo tutorial de realización y ejecución del proyecto (duración máxima por vídeo: 3 min.).