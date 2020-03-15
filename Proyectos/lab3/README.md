# Proyectos de implementación de func. lógicas fundamentales

En esta sesión se trata de crear dos proyectos sencillos con Quartus Prime:

## Proyecto 1 
Proyecto (and_2) de diseño mediante captura de esquemáticos (circuito lógico). El proyecto consistirá en una puerta AND de dos entradas conectadas respectivamente a los pulsadores de la tarjeta del kit DE0-Nano KEY[0] (pin J15) y KEY[1] (pin E1). La salida de la puerta AND se conectará al LED[0] (pin A15) de la tarjeta. 


IMPORTANTE: En este ejemplo hay que tener una cierta precaución ya que el fichero que contiene la entidad de mayor nivel (diseño con esquema) no puede llamarse and2. La razón es que en el proyecto ya se emplea un fichero con ese nombre que es el correspondiente a la puerta AND de dos entradas que se incluye. El proyecto si puede llamarse and2 porque en este caso la extensión varía y no se produce conflicto, pero en este caso es preciso indicar en qué fichero se encuentra la entidad principal, ya que por defecto se busca una que tenga el mismo nombre que el proyecto (ver fichero adjunto).

## Proyecto 2


Proyecto (gates2) de diseño mediante especificación en VHDL. El proyecto consistirá en la implementación de tres puertas lógicas básicas (AND, OR, XOR) de 2 entradas conectadas respectivamente a los switches DIP de la tarjeta del kit DE0-Nano SW[0] (pin M1) y SW[1] (pin T8). Las salidas de las puertas se conectarán a los LED de salida, AND->LED[0] (pin A15), OR->LED[1] (pin A13) y XOR->LED[2] (pin B13), adicionalmente las entradas se conectarán a los LED[6] (pin B1) y LED[7] (pin L3). 
(Nota: Se sugiere consultar la fig. 2.30 y el código VHDL asociado en las págs. 63-64 de [Brown09]).

## Ambos proyectos: 

Realizar una simulación funcional para cada uno de los proyectos, empleando el editor de formas de onda (Simulation Waveform Editor).

Todos los ficheros se enviarán en un único archivo en formato zip consistente en:

1. Tutorial (en formato PDF) de todos los pasos de desarrollo de cada proyecto.
2. Archivos del proyecto Quartus.
3. Vídeo tutorial de realización y ejecución de cada proyecto (duración máxima por vídeo: 3 min.).