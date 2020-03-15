# 7.- Diseño de la ALU74381

## Objetivo: 

Realizar el diseño del circuito digital para la ALU 74381, descrito en el Ej. 6.24, págs. 258-360 [Brown-06].

Los operandos A y B (ambos de 4 bits) se introducirán mediante los  dip switches externos (A=DIP_SW[1-4] y B=DIP_SW[5-8]). El código de operación de la ALU se indicará con los dip switches propios de la DE0-nano (s=SW[2-0]) y el resultado de la operación se mostrará tanto en los leds de la DE0-nano (F=LED[3-0]) como decodificado en el display de siete segmentos (DISP[1-7]). Adicionalmente los pulsadores externos (KEY_EX[0-1]) permitirán seleccionar cuál es el resultado mostrado tanto en los leds como en el display. Así, los resultados mostrados para cada código introducido con dichos pulsadores será:

 - 00 -> mostrará el resultado de la operación (F),
- 01 -> muestra el operando B,
- 10 -> muestra el operando A, y
- 11 -> muestra el código de la operación (s).

## Entregables: 

1. Archivo ZIP para el proyecto Quartus.
2. Video tutorial correspondiente.

## Opcional: 

Se valorará el hecho de que los proyectos incluyan ficheros para simulación.