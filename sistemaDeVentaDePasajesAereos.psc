


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
	
	Definir pasajeros Como Cadena
	Definir n Como Entero
	n = 1
	Dimension pasajeros[n,5]

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
				ventaPasajes(rutas, capacidadPasajeros, pasajeros, n)
				cantidadPasajeros(opcionRuta, capacidadPasajeros, pasajeros, n)
			caso 2 : 
				Escribir " 2 - Buscar pasaje vendido "
			caso 3 : 
				Escribir " 3 - Busca pasajero "
			caso 4 :
				Escribir " 4 - Ordenar y mostrar lista de pasajeros "
			caso 5 :	
				Escribir " 5 - Listado/s "
			caso 6:
				Escribir " Gracias por utilizar Aerolineas Gonzalez "
		FinSegun
		
	Mientras Que opcionMenu <> 6
	
	
FinAlgoritmo

SubProceso ventaPasajes(rutas, capacidadPasajeros, pasajeros, n)
	
	Definir i, opcionRuta Como Entero
	
	Repetir
		
	Escribir " Ingrese su ruta entre 1 y 4: "
	
	Para i = 0 hasta 3 Con Paso 1 Hacer
		
		Escribir rutas[i], capacidadPasajeros[i]
		
		
	FinPara
	
	leer opcionRuta
	
	Si opcionRuta > 4 o opcionRuta < 1
		
		Escribir " Ingrese una ruta valida entre 1 y 4 "
		Escribir " ____________________________________"
		
	FinSi

	Para i = 0 hasta 3 Con Paso 1 Hacer
	
		Si capacidadPasajeros[i] < 1
			
			Escribir "No quedan plazas disponibles"
			Escribir "____________________________"
			
	FinSi
		
		Mientras capacidadPasajeros[i] < 0
		Escribir "Ingrese otra ruta, la que ingreso no quedan plazas disponibles "
		leer opcionRuta
	FinMientras
		
	FinPara
	
Mientras Que  opcionRuta > 4 o opcionRuta < 1
	


FinSubProceso

SubProceso cantidadPasajeros(opcionRuta, capacidadPasajeros, pasajeros, n)
	
	Para i = 0 hasta n-1 Con Paso 1 Hacer
		
		Escribir "Ingrese su nombre y apellido completo"
		leer pasajeros[i,0]
		Escribir "Ingrese su dni "
		leer pasajeros[i,1]
		Escribir "Ingrese su telefono "
		leer pasajeros[i,2]
		Escribir "Ingrese un telefono entre 8 y 10 digitos"
		leer pasajeros[i,2]
		Escribir "Ingrese su equipaje en bodega V/F"
		leer pasajeros[i,3]
		Escribir "Numero de pasajero frecuente"
		leer pasajeros[i,4]
		
	Fin Para
	
	Para i = 0 hasta n-1 con Paso 1 Hacer
		Escribir "Nombre y apellido de pasajero: " pasajeros[i,0]
		Escribir "El Dni del pasajero "  pasajeros[i,1]
		Escribir "El telefono del pasajero " pasajeros[i,2]
		Escribir "El equipaje es " pasajeros[i,3]
		Escribir "El numero del pasajero frecuentes es " pasajeros[i,4]
		Escribir "Numero de asiento es: " i + 1
	FinPara
	n = i + 1
	
	Para i = 0 hasta n-1 con Paso 1 Hacer
		Escribir "Nombre y apellido de pasajero: " pasajeros[i,0]
		Escribir "El Dni del pasajero "  pasajeros[i,1]
		Escribir "El telefono del pasajero " pasajeros[i,2]
		Escribir "El equipaje es " pasajeros[i,3]
		Escribir "El numero del pasajero frecuentes es " pasajeros[i,4]
		Escribir "Numero de asiento es: " i + 1
	FinPara
	



Segun opcionRuta Hacer
	
	caso 1:
		
		
		
		capacidadPasajeros[0] = capacidadPasajeros[0] -1
		Escribir capacidadPasajeros[0]
		
	caso 2:
		
		
		
		capacidadPasajeros[1] = capacidadPasajeros[1] -1
		Escribir capacidadPasajeros[1]
		
	caso 3:
		
		
		
		capacidadPasajeros[2] = capacidadPasajeros[2] -1
		Escribir capacidadPasajeros[2]
		
	caso 4:
		
		
		
		capacidadPasajeros[3] = capacidadPasajeros[3] -1
		Escribir capacidadPasajeros[3]
		
		
FinSegun

FinSubProceso







