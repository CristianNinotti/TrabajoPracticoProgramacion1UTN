	/// Tema: Sistema de venta de pasajes a�reos
	
//	Al iniciarse el sistema se debe mostrar un mensaje de bienvenida y un men� de opciones que
//	tenga c�mo m�nimo:
//	1. Venta pasaje
//	2. Buscar pasaje vendido
//	3. Buscar pasajero
//	4. Ordenar y mostrar lista pasajeros
//	a. Por n�mero de asiento Ascendente
//	b. Por n�mero de asiento Descendente
//	5. Listado/s
//	a. Cantidad de pasajes vendido por ruta
	
	
	Algoritmo sistemaDeVentaDePasajesAereos
		definir opcionVuelo Como Entero //Nueva variable para que prosiga con la compra y validar la carga de datos y rutas//
		definir verListaPasajeros Como Entero // Nueva variable para que desglose que lista quiere ver //
		definir filas Como Entero
		definir columnas Como Entero
		filas=4 //llevan 120 CAMBIAR
		columnas=7 // llevan 5
		filas2=3 // Llevan 80 CAMBIAR
		
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
		Dimension vueloDestino2[filas,columnas]
		definir contadorRuta2 Como Entero
		contadorRuta2 = 0
		
		Definir vueloDestino3 Como Cadena
		Dimension vueloDestino3[filas2,columnas]
		definir contadorRuta3 Como Entero
		contadorRuta3 = 0
		
		Definir vueloDestino4 Como Cadena
		Dimension vueloDestino4[filas2,columnas]
		definir contadorRuta4 como Entero
		contadorRuta4 = 0
		
		
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
				Si opcionMenu > 6 o opcionMenu < 1
					
					Escribir " Ingrese una opcion valida entre 1 y 6"
				FinSi
			Mientras Que  opcionMenu > 6 o opcionMenu < 1
			
			
			
			Segun opcionMenu Hacer
				
				caso 1 : 
					retornoPrecio = seleccionRuta(rutas)
					Repetir
						Mostrar "�Desea continuar con la compra de su vuelo?: Seleccione una opcion"
						Mostrar "1 Buenos Aires - Bariloche"
						mostrar "2 Buenos Aires - Salta"
						Mostrar "3 Rosario - Buenos Aires"
						Mostrar "4 Mar del Plata - Mendoza"
						Mostrar "5 SALIR"
						Leer opcionVuelo
						Segun opcionVuelo Hacer
							caso 1: 
								cargarDatos(vueloDestino1, filas, columnas, contadorRuta1, capacidadPasajeros, 0) //Correcion profesora capacidad
								contadorRuta1 = contadorRuta1+1
								
							caso 2: 
								cargarDatos(vueloDestino2, filas, columnas, contadorRuta2, capacidadPasajeros, 1) //Correcion profesora capacidad
								contadorRuta2 = contadorRuta2+1
							caso 3: 
								cargarDatos(vueloDestino3, filas, columnas, contadorRuta3, capacidadPasajeros, 2) //Correcion profesora capacidad
								contadorRuta3 = contadorRuta3+1
							caso 4: 
								cargarDatos(vueloDestino4, filas, columnas, contadorRuta4, capacidadPasajeros, 3) //Correcion profesora capacidad
								contadorRuta4 = contadorRuta4+1
							caso 5: 
								Mostrar "Muchas gracias por su visita, le esperamos pronto"
						FinSegun
						si opcionVuelo > 6 o opcionVuelo < 1 Entonces
							Mostrar "Opcion no valida. Ingrese nuevamente"
							
						FinSi
					Mientras Que opcionVuelo > 5 o opcionVuelo < 1
					
				caso 2 : 
					Escribir " 2 - Buscar pasaje vendido "
				caso 3 : 
					ordenamientoPasajerosDestino1(vueloDestino1, filas, columnas)  //Prueba (Solo ordenamiento)
				caso 4 :
					Escribir " 4 - Ordenar y mostrar lista de pasajeros "
				caso 5 :
					Repetir
						Mostrar "Para ver el listado de pasajeros seleccione un vuelo"
						Mostrar "1 Buenos Aires - Bariloche"
						mostrar "2 Buenos Aires - Salta"
						Mostrar "3 Rosario - Buenos Aires"
						Mostrar "4 Mar del Plata - Mendoza"
						Leer verListaPasajeros
						Segun verListaPasajeros Hacer
							caso 1: 
								listadoPasajeros1(vueloDestino1, filas, columnas, contadorRuta1)
							caso 2: 
								listadoPasajeros2(vueloDestino2, filas, columnas, contadorRuta2)
							caso 3: 
								listadoPasajeros3(vueloDestino3, filas2, columnas, contadorRuta3)
							caso 4: 
								listadoPasajeros4(vueloDestino4, filas2, columnas, contadorRuta4)
						FinSegun
						si verListaPasajeros > 4 o verListaPasajeros < 1 Entonces
							Mostrar "Opcion no valida. Ingrese nuevamente"
						FinSi
					Mientras Que verListaPasajeros > 4 o verListaPasajeros < 1 
	
				caso 6:
					Escribir " Gracias por utilizar Aerolineas Gonzalez "
			FinSegun
			
		Mientras Que opcionMenu <> 6
		
		
FinAlgoritmo

SubProceso cargaDatos(vueloDestino Por Referencia, filas, columnas, contadorRuta, capacidadPasajeros, n)   //Modificado
	
	
	 //Borramos los 2 paras, el segundo y asignamos fija a columna

					
					vueloDestino[contadorRuta,0] = ConvertirATexto(contadorRuta+1)
					escribir ("Ingrese nombre y apellido")
					leer nombreApellido
					vueloDestino[contadorRuta,1] = nombreapellido
	
					escribir ("Ingrese dni")
					leer dni
					vueloDestino[contadorRuta,2] = dni
	
					escribir ("Ingrese telefono")
					leer tel
					vueloDestino[contadorRuta,3] = tel

					escribir ("�LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					vueloDestino[contadorRuta,4] = Mayusculas(equipajeBodega)

					escribir ("Ingrese n�mero de pasajero frecuente")
					leer numPasajeroFrec
					vueloDestino[contadorRuta,5] = numPasajeroFrec
					
					vueloDestino[contadorRuta,6] = ConvertirATexto(calcularPrecioPorPlaza(capacidadPasajeros, n))    // Adicionado y convertida a Tex
  					
					capacidadPasajeros[n] = capacidadPasajeros[n]-1  //Agregado
					
	Mostrar "Ha finalizado con exito la compra de su vuelo"
	
	
FinSubProceso

SubProceso listadoPasajeros1(vueloDestino1 por Referencia, filas, columnas, contadorRuta1)
	
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

SubProceso destino2(vueloDestino2 Por Referencia, filas, columnas, contadorRuta2)
	
	
	
	Para i = 0 hasta 0 con Paso 1 Hacer
		para j<-0 hasta columnas-1 hacer
			Segun j Hacer
				0:
					
					vueloDestino2[contadorRuta2,j] = ConvertirATexto(contadorRuta2+1)
				1:
					escribir ("Ingrese nombre y apellido")
					leer nombreApellido
					vueloDestino2[contadorRuta2,j] = nombreapellido
				2:
					escribir ("Ingrese dni")
					leer dni
					vueloDestino2[contadorRuta2,j] = dni
				3:
					escribir ("Ingrese telefono")
					leer tel
					vueloDestino2[contadorRuta2,j] = tel
				4:
					escribir ("�LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					vueloDestino2[contadorRuta2,j] = Mayusculas(equipajeBodega)
				5:
					escribir ("Ingrese n�mero de pasajero frecuente")
					leer numPasajeroFrec
					vueloDestino2[contadorRuta2,j] = numPasajeroFrec
					
			Fin Segun
		fin para
	FinPara
	Mostrar "Ha finalizado con exito la compra de su vuelo"
	
FinSubProceso
SubProceso listadoPasajeros2(vueloDestino2 por Referencia, filas, columnas, contadorRuta2)
	
	Para i = 0 hasta filas-1 con Paso 1 Hacer
		
		
		Si vueloDestino2[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino2[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino2[i,1]
			Escribir "El Dni del pasajero "  vueloDestino2[i,2]
			Escribir "El telefono del pasajero " vueloDestino2[i,3]
			Escribir "El equipaje es " vueloDestino2[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino2[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso

SubProceso destino3(vueloDestino3 Por Referencia, filas2, columnas, contadorRuta3)
	
	
	
	Para i = 0 hasta 0 con Paso 1 Hacer
		para j<-0 hasta columnas-1 hacer
			Segun j Hacer
				0:
					
					vueloDestino3[contadorRuta3,j] = ConvertirATexto(contadorRuta3+1)
				1:
					escribir ("Ingrese nombre y apellido")
					leer nombreApellido
					vueloDestino3[contadorRuta3,j] = nombreapellido
				2:
					escribir ("Ingrese dni")
					leer dni
					vueloDestino3[contadorRuta3,j] = dni
				3:
					escribir ("Ingrese telefono")
					leer tel
					vueloDestino3[contadorRuta3,j] = tel
				4:
					escribir ("�LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					vueloDestino3[contadorRuta2,j] = Mayusculas(equipajeBodega)
				5:
					escribir ("Ingrese n�mero de pasajero frecuente")
					leer numPasajeroFrec
					vueloDestino3[contadorRuta3,j] = numPasajeroFrec
					
			Fin Segun
		fin para
	FinPara
	Mostrar "Ha finalizado con exito la compra de su vuelo"
	
FinSubProceso
SubProceso listadoPasajeros3(vueloDestino3 por Referencia, filas2, columnas, contadorRuta3)
	
	Para i = 0 hasta filas2-1 con Paso 1 Hacer
		
		
		Si vueloDestino3[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino3[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino3[i,1]
			Escribir "El Dni del pasajero "  vueloDestino3[i,2]
			Escribir "El telefono del pasajero " vueloDestino3[i,3]
			Escribir "El equipaje es " vueloDestino3[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino3[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso

SubProceso destino4(vueloDestino4 Por Referencia, filas2, columnas, contadorRuta4)
	
	
	
	Para i = 0 hasta 0 con Paso 1 Hacer
		para j<-0 hasta columnas-1 hacer
			Segun j Hacer
				0:
					
					vueloDestino4[contadorRuta4,j] = ConvertirATexto(contadorRuta4+1)
				1:
					escribir ("Ingrese nombre y apellido")
					leer nombreApellido
					vueloDestino4[contadorRuta3,j] = nombreapellido
				2:
					escribir ("Ingrese dni")
					leer dni
					vueloDestino4[contadorRuta4,j] = dni
				3:
					escribir ("Ingrese telefono")
					leer tel
					vueloDestino4[contadorRuta4,j] = tel
				4:
					escribir ("�LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					vueloDestino4[contadorRuta4,j] = Mayusculas(equipajeBodega)
				5:
					escribir ("Ingrese n�mero de pasajero frecuente")
					leer numPasajeroFrec
					vueloDestino4[contadorRuta4,j] = numPasajeroFrec
					
			Fin Segun
		fin para
	FinPara
	Mostrar "Ha finalizado con exito la compra de su vuelo"
	
FinSubProceso
SubProceso listadoPasajeros4(vueloDestino4 por Referencia, filas2, columnas, contadorRuta4)
	
	Para i = 0 hasta filas2-1 con Paso 1 Hacer
		
		
		Si vueloDestino4[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino4[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino4[i,1]
			Escribir "El Dni del pasajero "  vueloDestino4[i,2]
			Escribir "El telefono del pasajero " vueloDestino4[i,3]
			Escribir "El equipaje es " vueloDestino4[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino4[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso

// Correcion funcion profesora

Funcion returnPrecio = calcularPrecioPorPlaza(capacidadPasajeros, n)
	
	Definir costoPasaje Como Real
	
	Segun n Hacer
		caso 0:
			costoPasaje = 150000
			// Calcular costo por plaza
			//
		caso 1:
			
		caso 2:
			
		caso 3:	
	FinSegun
	
	returnPrecio = costoPasaje

FinFuncion 

Funcion retornoPrecio = seleccionRuta(rutas)
	Repetir
		
		Escribir "Seleccione una ruta area a consultar"
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
			
			si disponibilidadAsiento >= 4 y disponibilidadAsiento <= 5 Entonces  // Reales 100 a 120 modificadas a 4 y 5 para verificar precios no modifica, ver
				costoPasaje = costoPasaje
			SiNo
				si disponibilidadAsiento >= 3 y disponibilidadAsiento <= 2 Entonces    // 60 a 99 modificadas a 3 y 2 para verificar precios  no modifica, ver
					costoPasaje = (costoPasaje / 100) * 10 + costoPasaje
				SiNo
					costoPasaje = (costoPasaje / 110) * 16.666 + costoPasaje     //  1 verificar no modifica, ver
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

SubProceso ordenamientoPasajerosDestino1(vueloDestino, n, filas) //Ordenamiento por nombre y apellido   //Correcion profesora
	
	Para i = 0 hasta n-2 con Paso 1 Hacer
		para j = i + 1 hasta filas-1 Con paso 1 Hacer
			
			Si vueloDestino1[i,1] > vueloDestino1[j, 1] Entonces          //Profesora  //CVG UNIDAD 4 - CARPETA EJEMPLOS - ORDENAMIENTO ARRAY BIDIMENSIONAL
				
				
                aux = vueloDestino1[i,j]                                 // Se guarda en auxiliar (Backup), se guarda toda la fila [i]
                vueloDestino1[i,j] = vueloDestino1[i+1,j]                  // Se guarda en la primera fila, la segunda
                vueloDestino1[i +1,j] = aux                              // La segunda fila en la primera
            FinSi
			
		FinPara
	FinPara
	
		Escribir "Nombres ordenados alfab�ticamente:"
		Para i = 0 Hasta filas-1
				Escribir vueloDestino1[i,1]
		FinPara
	
	
	
	
	
	
	
FinSubProceso


//Version 5
//  Busquedas
// 
// 30-10-2023  00:25 hs