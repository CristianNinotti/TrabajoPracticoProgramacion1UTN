


/// Tema: Sistema de venta de pasajes aéreos

//	Al iniciarse el sistema se debe mostrar un mensaje de bienvenida y un menú de opciones que
//	tenga cómo mínimo:
//	1. Venta pasaje
//	2. Buscar pasaje vendido
//	3. Buscar pasajero
//	4. Ordenar y mostrar lista pasajeros
//	a. Por número de asiento Ascendente
//	b. Por número de asiento Descendente
//	5. Listado/s
//	a. Cantidad de pasajes vendido por ruta


Algoritmo sistemaDeVentaDePasajesAereos
	
	
	
	Definir rutas Como Cadena
	Dimension rutas[4]
	rutas[0] = " Buenos Aires - Baroliche "
	rutas[1] = " Buenos Aires - Salta "
	rutas[2] = " Rosario - Buenos Aires " 
	rutas[3] = " Mar Del Plata - Mendoza "
	
	Definir capacidadPasajeros Como Entero
	Dimension capacidadPasajeros[4]
	capacidadPasajeros[0] = 120
	capacidadPasajeros[1] = 120
	capacidadPasajeros[2] = 80
	capacidadPasajeros[3] = 80
	
	
	
	Definir vueloDestino1 Como Cadena
	Dimension vueloDestino1[3,6]
	Definir contadorRuta1 Como Entero
	contadorRuta1 = 0
	
	Definir filas, columnas Como Entero
	filas = 120
	columnas = 6
	
	Definir vueloDestino2 Como Cadena
	Dimension vueloDestino2[120,5]
	
	Definir vueloDestino3 Como Cadena
	Dimension vueloDestino3[80,5]
	
	Definir vueloDestino4 Como Cadena
	Dimension vueloDestino4[80,5]
	
	Definir opcionMenu Como Entero
	
	Repetir
		Repetir
			
			Escribir " Bienvenido a Aerolineas Gonzalez "
			Escribir " 1 - Venta de Pasaje "
			Escribir " 2 - Buscar pasaje vendido "
			Escribir " 3 - Busca pasajero "
			Escribir " 4 - Ordenar y mostrar lista de pasajeros "
			Escribir " 5 - Listado/s "
			Escribir " 6 - Salir "
			
			leer opcionMenu
			
		Mientras Que  opcionMenu > 6 o opcionMenu < 1
		
		Si opcionMenu > 6 o opcionMenu < 1
			
			Escribir " Ingrese una opcion valida entre 1 y 6"
		FinSi
		
		Segun opcionMenu Hacer
			
			caso 1 : 
				destino1(vueloDestino1, filas, columnas, contadorRuta1)
			caso 2 : 
				Escribir " 2 - Buscar pasaje vendido "
			caso 3 : 
				Escribir " 3 - Busca pasajero "
			caso 4 :
				Escribir " 4 - Ordenar y mostrar lista de pasajeros "
			caso 5 :	
				listadoPasajeros(vueloDestino1, filas, columnas, contadorRuta1)
			caso 6:
				Escribir " Gracias por utilizar Aerolineas Gonzalez "
		FinSegun
		
	Mientras Que opcionMenu <> 6
	
	
FinAlgoritmo

SubProceso destino1(vueloDestino1 Por Referencia, filas, columnas, contadorRuta1)
	
	
	
	Para i = 0 hasta 0 con Paso 1 Hacer
		Escribir "Nombre y apellido de pasajero: " 
		leer vueloDestino1[i,0]
		Escribir "El Dni del pasajero "
		leer vueloDestino1[i,1]
		Escribir "El telefono del pasajero " 
		leer vueloDestino1[i,2]
		Escribir "El equipaje es " 
		leer vueloDestino1[i,3]
		Escribir "El numero del pasajero frecuentes es " 
		leer vueloDestino1[i,4]
		vueloDestino1[i,5] = ConvertiraTexto(contadorRuta1 + 1) 
	FinPara
	
	
FinSubProceso

SubProceso listadoPasajeros(vueloDestino1 por Referencia, filas, columnas, contadorRuta1)
	
	Para i = 0 hasta 0 con Paso 1 Hacer
		Escribir "Nombre y apellido de pasajero: " vueloDestino1[i,0]
		Escribir "El Dni del pasajero "  vueloDestino1[i,1]
		Escribir "El telefono del pasajero " vueloDestino1[i,2]
		Escribir "El equipaje es " vueloDestino1[i,3]
		Escribir "El numero del pasajero frecuentes es " vueloDestino1[i,4]
		Escribir "Numero de asiento es: " vueloDestino1[i,5]
		
	FinPara
	
FinSubProceso

	