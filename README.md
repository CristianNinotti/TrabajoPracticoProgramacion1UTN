# TrabajoPracticoProgramacion1UTN

Tema: Sistema de venta de pasajes aéreos
Al iniciarse el sistema se debe mostrar un mensaje de bienvenida y un menú de opciones que
tenga cómo mínimo:
1. Venta pasaje
2. Buscar pasaje vendido
3. Buscar pasajero
4. Ordenar y mostrar lista pasajeros
a. Por número de asiento Ascendente
b. Por número de asiento Descendente
5. Listado/s
a. Cantidad de pasajes vendido por ruta aérea
b. Porcentaje de ventas por ruta aérea
Las rutas aéreas disponibles a la venta son (se encuentran pre cargadas en el sistema):
1. Buenos Aires - Bariloche
2. Bueno Aires - Salta
3. Rosario - Buenos Aires
4. Mar Del Plata - Mendoza
Cada ruta aérea tiene su capacidad de pasajeros que es:
1. Buenos Aires - Bariloche - 120
2. Bueno Aires - Salta - 120
3. Rosario - Buenos Aires - 80
4. Mar Del Plata - Mendoza - 80
Al seleccionar una venta de pasajes, el usuario debe ingresar la ruta aérea que se va a realizar la
venta (validar la ruta seleccionada y si quedan plazas disponibles) y luego ingresa los siguientes
datos del pasajero: Nombre y Apellido, 35845621, Teléfono, Equipaje en bodega y Número
pasajero frecuente.
Se registran los datos ingresados, se calcula el costo del pasaje según la ruta seleccionado, se le
asigna el asiento y se le informa al pasajero en un resumen como sigue:
Ruta: Buenos Aires - Bariloche
Nombre y Apellido: Juan Perez
DNI: 35845621
Teléfono: +543624587195
Equipaje en bodega: verdadero
2
Tecnicatura Universitaria en Programación - Programación I
Número pasajero frecuente: 5665
Asiento: 58
Costo pasaje: $157.500
Si se despacha equipaje en bodega, el pasaje tiene un recargo del 5%.
Los costos de pasajes para cada ruta aérea son:
1. Buenos Aires - Bariloche: $150.000 para los primeros 20 pasajes, luego se
incrementa un 10% hasta los 60, luego termina saliendo $180.000.
2. Bueno Aires - Salta: $120.000 para los primeros 20 pasajes, luego se
incrementa un 10% hasta los 60, luego que termina saliendo $150.000.
3. Rosario - Buenos Aires: $70.000 para los primeros 10 pasajes, luego se
incrementa un 15% hasta los 40, luego que termina saliendo $95.000.
4. Mar Del Plata - Mendoza $95.000 para los primeros 10 pasajes, luego se
incrementa un 15% hasta los 40, luego que termina saliendo $125.000.
Se puede buscar un pasajero por número de asiento (opción 2 del menú) y se puede buscar un
pasajero por nombre y apellido (opción 3 del menú). En cualquier caso mostrar los siguientes
datos:
Nombre y Apellido: Juan Perez
Ruta: Buenos Aires - Bariloche
DNI: 358455621
(Se entiende que un pasajero con nombre y apellido compró un único pasaje).
Se pueden ordenar y mostrar la lista de pasajeros por número de asiento ASC/DESC, preguntar
qué ruta se desea ordenar y mostrar.
El programa debe dejar al usuario seleccionar las opciones de menú tantas veces cómo desee
hasta que el mismo ingrese SALIR. (Esta cadena se debe validar y debe reconocer cualquier
combinación de mayúsculas / minúsculas - salir o SAlir o SALIR - )
Antes de finalizar el programa mostrar un mensaje de despedida.
Notas: Todoslos datos de entrada cómo números o caracteres deben ser validados, cada validación
será particular al dato de entrada en cuestión.
El programa debe tener definido arrays, funciones,subprocesos, y demás estructuras de control
vistas en la materia.

/// Este trabajo practico: //

*Consta de 10 Versiones, en las cuales tuvimos que hacer muchas modificaciones y correciones por la Profesora Mercedes Valoni y Natalia Fernandez
*Este trasbajo practico lo integran: Gonzalez Nahuel - Ramirez Tomas - Ninotti Cristian
*En los 10, se puede ver en la parte posterior las modificaciones y correciones que se realizaron en cada uno debajo y comentarios.
Ejemplo:
![image](https://github.com/CristianNinotti/TrabajoPracticoProgramacion1UTN/assets/102320892/771c9b17-a08a-43e8-b589-775eec4eed48)
Horas de trabajo aproximadas: 35 Horas
*Este trabajo fue ralizado con un Pseudo lenguaje llamado "Pseint"


