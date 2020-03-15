# 6.- Decodificador de código hexadecimal a display de siete segmentos

## Objetivo 

El objetivo de esta práctica es la realización en VHDL para decodificar el código hexadecimal introducido en los dip switches externos (DIP_SW[5-8]) en el display de 7 segmentos (DISP[1-7]). La relación entre el código de hexadecimal de entrada y las señales de activación de los diodos led el display se muestra en la tabla siguiente:

El decodificador incluirá una señal de habilitación (enable) que se conectará al pulsador externo KEY_EX[0]. También se añadirá una señal adicional que se activará cuando el código hexadecimal de entrada sea superior a 9 y que estará conectada al led DP (decimal point) del display.

## Nota 

Para realizar el código puede consultarse la Fig. 6.47 (pág. 360).

# Entregable:

1. Archivo ZIP para el proyecto Quartus (recordar incluir comentarios en el código VHDL), y
2. Vídeo tutorial de realización y ejecución del proyecto.