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
		
		definir filas Como Entero
		definir columnas Como Entero
		filas=3
		columnas=6
		
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
		Dimension vueloDestino1[filas,columnas]
		Definir contadorRuta1 Como Entero
		contadorRuta1 = 0
		
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
					retornoPrecio = seleccionRuta(rutas)
					destino1(vueloDestino1, filas, columnas, contadorRuta1)
					contadorRuta1 = contadorRuta1+1
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
		para j<-0 hasta columnas-1 hacer
			Segun j Hacer
				0:
					
					vueloDestino1[contadorRuta1,j] = ConvertirATexto(contadorRuta1+1)
				1:
					escribir ("Ingrese nombre y apellido")
					leer nombreApellido
					vueloDestino1[contadorRuta1,j] = nombreapellido
				2:
					escribir ("Ingrese dni")
					leer dni
					vueloDestino1[contadorRuta1,j] = dni
				3:
					escribir ("Ingrese telefono")
					leer tel
					vueloDestino1[contadorRuta1,j] = tel
				4:
					escribir ("¿LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					vueloDestino1[contadorRuta1,j] = Mayusculas(equipajeBodega)
				5:
					escribir ("Ingrese número de pasajero frecuente")
					leer numPasajeroFrec
					vueloDestino1[contadorRuta1,j] = numPasajeroFrec
					
			Fin Segun
		fin para
	FinPara
	
	
FinSubProceso

SubProceso listadoPasajeros(vueloDestino1 por Referencia, filas, columnas, contadorRuta1)
	
	Para i = 0 hasta filas-1 con Paso 1 Hacer
		
		
		Si vueloDestino1[i,1] <> ""
		Escribir "Numero de asiento es: " vueloDestino1[i,0]
		Escribir "Nombre y apellido de pasajero: " vueloDestino1[i,1]
		Escribir "El Dni del pasajero "  vueloDestino1[i,2]
		Escribir "El telefono del pasajero " vueloDestino1[i,3]
		Escribir "El equipaje es " vueloDestino1[i,4]
		Escribir "El numero del pasajero frecuentes es " vueloDestino1[i,5]
		FinSi
	
		
	FinPara
	
FinSubProceso

Funcion retornoPrecio = seleccionRuta(rutas)
	Repetir
		
		Escribir "Seleccione una ruta aerea"
		Mostrar "1 Buenos Aires - Bariloche"
		mostrar "2 Buenos Aires - Salta"
		Mostrar "3 Rosario - Buenos Aires"
		Mostrar "4 Mar del Plata - Mendoza"
		
		Leer opcionRuta
	Mientras Que opcionRuta >4 o opcionRuta < 1
	
	Segun opcionRuta Hacer
		
		caso 1:
			
			asiento = 120
			costoPasaje = 150000
			
			disponibilidadAsiento = asiento - 1
			
			si disponibilidadAsiento >= 100 y disponibilidadAsiento <= 120 Entonces
				costoPasaje = costoPasaje
			SiNo
				si disponibilidadAsiento >= 60 y disponibilidadAsiento <= 99 Entonces
					costoPasaje = (costoPasaje / 100) * 10 + costoPasaje
				SiNo
					costoPasaje = (costoPasaje / 110) * 16.666 + costoPasaje
				FinSi
				
			FinSi
			Mostrar "La ruta seleccionada es: ", rutas[0]
			
		caso 2:
			
			asiento = 120
			costoPasaje = 120000
			disponibilidadAsiento = asiento - 1
			
			si disponibilidadAsiento >= 100 y disponibilidadAsiento <= 120 Entonces
				costoPasaje = costoPasaje
			SiNo
				si disponibilidadAsiento >= 60 y disponibilidadAsiento <= 99 Entonces
					costoPasaje = (costoPasaje / 100) * 10 + costoPasaje
				SiNo
					Mostrar costoPasaje = (costoPasaje / 110) * 16.666 + costoPasaje
				FinSi
				
			FinSi
			Mostrar "La ruta seleccionada es: ", rutas[1]
			
		caso 3: 
			
			asiento = 80
			costoPasaje = 70000
			
			disponibilidadAsiento = asiento - 1
			
			si disponibilidadAsiento >= 70 y disponibilidadAsiento <= 80 Entonces
				costoPasaje = costoPasaje
			SiNo
				si disponibilidadAsiento >= 69 y disponibilidadAsiento <= 40 Entonces
					costoPasaje = (costoPasaje / 100) * 15 + costoPasaje
				SiNo
					Mostrar costoPasaje = (costoPasaje / 100) * 35,71 + costoPasaje
				FinSi
				
			FinSi
			Mostrar "La ruta seleccionada es: ", rutas[2]
			
		caso 4: 
			
			asiento = 80
			costoPasaje = 95000
			disponibilidadAsiento = asiento - 1
			
			si disponibilidadAsiento >= 70 y disponibilidadAsiento <= 80 Entonces
				costoPasaje = costoPasaje
			SiNo
				si disponibilidadAsiento >= 69 y disponibilidadAsiento <= 40 Entonces
					costoPasaje = (costoPasaje / 100) * 15 + costoPasaje
				SiNo
					Mostrar costoPasaje = (costoPasaje / 100) * 31,58 + costoPasaje
				FinSi
				
			FinSi	
			Mostrar "La ruta seleccionada es: ", rutas[3]
			
			
	FinSegun
	Mostrar "El valor del pasaje es: ", costoPasaje
FinFuncion
