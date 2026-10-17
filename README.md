# RORO_Supreme

## Memorias e Instrucciones

### Intruduccion 
En esta actividad diseñamos e implementamos el sistema RORO Supreme lo cual es un ejecicicio que integra una Unidad Aritmético Lógica (ALUMIPS) y múltiples bloques de memoria de solo lectura (ROM) que se basan en los codigos de RORO,La actividad central consiste en construir un módulo superior capaz de ejecutar una secuencia automatizada de 16 instrucciones de 12 bits. Lo cual finaliza con un bloque de pruebas automatizadas testbenches.

La ALU (Arithmetic Logic Unit) es una Unidad artimetica logica y es el núcleo de procesamiento digital. Se encarga de ejecutar operaciones aritméticas (sumas, restas) y lógicas (comparaciones SLT - Set on Less Than).

Una ROM (Read-Only Memory) es una  memoria de solo lectura como su nombre lo indica; se distingue por alamcenar instrucciones permanentes de arranque.

Un Testbench (o banco de pruebas) es un entorno controlado, ya sea físico, virtual o de software, que se utiliza para verificar, medir y evaluar el rendimiento, la funcionalidad o la fiabilidad de un diseño, producto o sistema antes de su lanzamiento o integración final

### Objetivos
El sistema RORO Supreme funcionará como una unidad de procesamiento simplificada. Contendrá una ROM de instrucciones (16 posiciones de 12 bits) que almacena el programa a ejecutar, y orquestará la integración de módulos reutilizados: dos memorias de datos de 32 bits (ROMa y ROMina) y una Unidad Aritmético Lógica (ALUMIPS).
Su funcionamiento consistirá en recibir una dirección de 4 bits (proveniente del banco de pruebas), extraer una instrucción de 12 bits, decodificarla en sus campos de operación (OP) y selección de registros (R1 y R2), extraer los operandos de 32 bits correspondientes de las memorias de datos, y pasarlos a la ALU para obtener un resultado final.

#### Objetivo General
Diseñar, integrar y simular el módulo superior RORO Supreme, un sistema digital capaz de decodificar y ejecutar de manera secuencial 16 instrucciones de 12 bits, orquestando el flujo de datos entre memorias ROM de almacenamiento y una Unidad Aritmético Lógica (ALUMIPS), validando su correcto funcionamiento arquitectónico mediante bancos de pruebas automatizados.

#### Objetivos Particulares 
- Diseñar el módulo ROM con una capacidad de 16 palabras de 12 bits
- Adaptar e integrar los módulos preexistentes ROM, ALUMIPS y RORO, modificando la parametrización de las memorias para permitir la carga de archivos independientes sin alterar la lógica original.
- Desarrollar e implementar el banco de pruebas testbech, para comprobar los resultados esperados 

### Desarrollo


### Conclucion


### Referencias
ARITH-MATIC. (s. f.). Arithmetic Logic Units (ALU): an Introduction. https://arith-matic.com/notebook/arithmetic-logic-unit-introduction 
Hp. (2026, 23 julio). RAM y ROM: ¿Cuál es la diferencia? HP® México. https://www.hp.com/mx-es/tech-takes/componentes/comparativas/ram-y-rom-cual-es-la-diferencia.html 
Test Management Tool. (2026, 13 agosto). TestBench. https://www.testbench.com/
