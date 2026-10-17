# *-. RORO_Supreme .-*

## - Memorias e Instrucciones -

### Introduccion .-*
En esta actividad diseñamos e implementamos el sistema RORO Supreme lo cual es un ejecicicio que integra una Unidad Aritmético Lógica (ALUMIPS) y múltiples bloques de memoria de solo lectura (ROM) que se basan en los codigos de RORO,La actividad central consiste en construir un módulo superior capaz de ejecutar una secuencia automatizada de 16 instrucciones de 12 bits. Lo cual finaliza con un bloque de pruebas automatizadas testbenches.

La ALU (Arithmetic Logic Unit) es una Unidad artimetica logica y es el núcleo de procesamiento digital. Se encarga de ejecutar operaciones aritméticas (sumas, restas) y lógicas (comparaciones SLT - Set on Less Than).

Una ROM (Read-Only Memory) es una  memoria de solo lectura como su nombre lo indica; se distingue por alamcenar instrucciones permanentes de arranque.

Un Testbench (o banco de pruebas) es un entorno controlado, ya sea físico, virtual o de software, que se utiliza para verificar, medir y evaluar el rendimiento, la funcionalidad o la fiabilidad de un diseño, producto o sistema antes de su lanzamiento o integración final

### - Objetivos .-*
El sistema RORO Supreme funcionará como una unidad de procesamiento simplificada. Contendrá una ROM de instrucciones (16 posiciones de 12 bits) que almacena el programa a ejecutar, y orquestará la integración de módulos reutilizados: dos memorias de datos de 32 bits (ROMa y ROMina) y una Unidad Aritmético Lógica (ALUMIPS).
Su funcionamiento consistirá en recibir una dirección de 4 bits (proveniente del banco de pruebas), extraer una instrucción de 12 bits, decodificarla en sus campos de operación (OP) y selección de registros (R1 y R2), extraer los operandos de 32 bits correspondientes de las memorias de datos, y pasarlos a la ALU para obtener un resultado final.

#### Objetivo General .-*
Diseñar, integrar y simular el módulo superior RORO Supreme, un sistema digital capaz de decodificar y ejecutar de manera secuencial 16 instrucciones de 12 bits, orquestando el flujo de datos entre memorias ROM de almacenamiento y una Unidad Aritmético Lógica (ALUMIPS), validando su correcto funcionamiento arquitectónico mediante bancos de pruebas automatizados.

#### Objetivos Particulares .-*
- Diseñar el módulo ROM con una capacidad de 16 palabras de 12 bits
- Adaptar e integrar los módulos preexistentes ROM, ALUMIPS y RORO, modificando la parametrización de las memorias para permitir la carga de archivos independientes sin alterar la lógica original.
- Desarrollar e implementar el banco de pruebas testbech, para comprobar los resultados esperados 

### - Desarrollo .-*
Para llevar a cabo esta actividad, en equipo nos encargamos de diseñar e implementar el módulo superior RORO Supreme, con el fin de ejecutar una secuencia de 16 instrucciones de 12 bits combinando memorias ROM y una unidad aritmético-lógica. Primero revisamos las interfaces de los módulos base que ya teníamos para aprovechar su funcionamiento original. Después, creamos la ROM de instrucciones de 16 posiciones configurándola mediante un archivo de texto en binario con readmemb, y adaptamos dos instancias independientes para ROMa y ROMina utilizando archivos en hexadecimal con readmemh.

Ya con las memorias listas, armamos el módulo RORO Supreme conectando la dirección de instrucción con el núcleo RORO, el cual se encarga de leer los campos OP, R1 y R2 para extraer los operandos de 32 bits y pasárselos a la ALU. Para comprobar que todo funcionara correctamente, desarrollamos los testbenches RORO_tb y RORO_Supreme_tb con verificaciones automáticas. El testbench principal recorrió las 16 direcciones de memoria para comparar los resultados obtenidos de DD y ZF frente a la tabla de referencia oficial, lo que nos permitió validar sin errores las sumas, las restas positivas y negativas en complemento a dos, los casos con resultado cero y bandera ZF en uno, y las comparaciones SLT. Finalmente, integramos todos los archivos y códigos en el repositorio de GitHub de nuestra organización.

<img width="579" height="417" alt="image" src="https://github.com/user-attachments/assets/2d7953f7-b891-4b13-9926-5b48580f443c" />

Análisis de la Tabla (imagen anterior):

*Resta negativa (Caso 9): Aquí la instrucción nos pide restar 9 menos 50. Como el resultado matemático es -41, la ALU lo procesa utilizando la lógica de complemento a dos. Por eso, al visualizar la gráfica en formato sin signo (unsigned), el simulador nos arroja ese número gigante 4294967255.

*Bandera ZF en 1 (Caso 11): En esta dirección se ejecuta la resta de 2 menos 2. Como el resultado final en la salida DD es exactamente cero, la bandera condicional ZF (Zero Flag) detecta esto y se activa automáticamente pasando a 1.

-.-.-.-.-.-.-

<img width="1506" height="640" alt="image" src="https://github.com/user-attachments/assets/aa2f86db-5476-447c-9fb5-0caa26e998cb" />

Análisis de la Simulacion (imagen anterior):

*Al inicio mandamos la instrucción 001000000000 (suma): el resultado nos da 17 y la bandera ZF se queda en cero.   
JPG

*En el picosegundo 10 mandamos 011001100110 (resta): el resultado da 0 y vemos cómo la línea verde de la bandera ZF se levanta a 1, confirmando que detecta los ceros perfectamente.



### - Conclucion .-*
Con la realización de este proyecto de RORO Supreme, comprendimos de forma mucho más clara cómo funciona la ruta de datos (Datapath) de un procesador. Logramos conectar correctamente las memorias con la ALU, viendo en la práctica cómo una instrucción de 12 bits es capaz de indicarle al sistema qué datos tomar y qué operación matemática debe hacer con ellos.

Además, programar el Testbench automatizado fue clave. En vez de estar revisando resultado por resultado a mano en la gráfica, el código hizo las comprobaciones por nosotros. Esto nos dio la seguridad de que la lógica estaba bien hecha, especialmente al validar detalles confusos como las restas que daban números negativos (usando el complemento a dos) y confirmar que la bandera ZF encendiera justo cuando el resultado era cero. Finalmente, trabajar en equipo usando GitHub nos ayudó bastante a llevar un buen orden de los códigos sin revolver nuestras versiones, dándonos una idea muy real de cómo se diseña hardware de forma colaborativa.

### Referencias .-*
ARITH-MATIC. (s. f.). Arithmetic Logic Units (ALU): an Introduction. https://arith-matic.com/notebook/arithmetic-logic-unit-introduction 

Hp. (2026, 23 julio). RAM y ROM: ¿Cuál es la diferencia? HP® México. https://www.hp.com/mx-es/tech-takes/componentes/comparativas/ram-y-rom-cual-es-la-diferencia.html 

Test Management Tool. (2026, 13 agosto). TestBench. https://www.testbench.com/
