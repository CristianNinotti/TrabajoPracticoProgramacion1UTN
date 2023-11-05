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
				Escribir " 5 - Cantidad de pasajes vendidos por ruta aerea "
				Escribir " 6 - Salir "
				
				leer opcionMenu
				Si opcionMenu > 6 o opcionMenu < 1
					
					Escribir " Ingrese una opcion valida entre 1 y 6"
				FinSi
			Mientras Que  opcionMenu > 6 o opcionMenu < 1
			
			
			
			Segun opcionMenu Hacer
				
				caso 1 : 
					Repetir
						
						Escribir "Seleccione una ruta aerea a consultar"
						Mostrar "1 Buenos Aires - Bariloche"
						mostrar "2 Buenos Aires - Salta"
						Mostrar "3 Rosario - Buenos Aires"
						Mostrar "4 Mar del Plata - Mendoza"
						
						Leer opcionRuta
						
					Mientras Que opcionRuta >4 o opcionRuta < 1
					Segun opcionRuta Hacer
						
						caso 1:
							

						caso 2:
							returnPrecio = calcularPrecioPorPlaza(capacidadPasajeros2, 1, contadorRuta2)

						caso 3:
							returnPrecio = calcularPrecioPorPlaza(capacidadPasajeros3, 2, contadorRuta3)

						caso 4:
							returnPrecio = calcularPrecioPorPlaza(capacidadPasajeros4, 3, contadorRuta4)

							
							
					FinSegun
					

					Repetir
						Mostrar "¿Desea continuar con la compra de su vuelo?: Seleccione una opcion"
						Mostrar "1 Buenos Aires - Bariloche"
						mostrar "2 Buenos Aires - Salta"
						Mostrar "3 Rosario - Buenos Aires"
						Mostrar "4 Mar del Plata - Mendoza"
						Mostrar "5 SALIR"
						Leer opcionVuelo
						Segun opcionVuelo Hacer
							caso 1: 
								cargaDatos(vueloDestino1, filas, columnas, contadorRuta1, capacidadPasajeros, 0) //Correcion profesora capacidad
								contadorRuta1 = contadorRuta1+1
								
							caso 2: 
								cargaDatos(vueloDestino2, filas, columnas, contadorRuta2, capacidadPasajeros, 1) //Correcion profesora capacidad
								contadorRuta2 = contadorRuta2+1
							caso 3: 
								cargaDatos(vueloDestino3, filas2, columnas, contadorRuta3, capacidadPasajeros, 2) //Correcion profesora capacidad
								contadorRuta3 = contadorRuta3+1
							caso 4: 
								cargaDatos(vueloDestino4, filas2, columnas, contadorRuta4, capacidadPasajeros, 3) //Correcion profesora capacidad
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
					ordenamientoPasajerosDestino(vueloDestino1, filas, columnas)  //Prueba (Solo ordenamiento)
				caso 4 :
					Escribir " 4 - Ordenar y mostrar lista de pasajeros "
					ordenamientoPasajerosDestino(vueloDestino1, n, filas)
					
					
				caso 5 :
					Definir opcionVentaVuelo como entero
					Mostrar "Ingrese el vuelo que desea verificar"
					Mostrar "1 Buenos Aires - Bariloche"
					mostrar "2 Buenos Aires - Salta"
					Mostrar "3 Rosario - Buenos Aires"
					Mostrar "4 Mar del Plata - Mendoza"
					Repetir
						Leer opcionVentaVuelo
						Segun opcionVentaVuelo Hacer
							caso 1: 
								mostrar "La cantidad de vuelos vendidos es: ", contadorRuta1
							caso 2: 
								mostrar "La cantidad de vuelos vendidos es: ", contadorRuta2
							caso 3: 
								mostrar "La cantidad de vuelos vendidos es: ", contadorRuta3
							caso 4: 
								mostrar "La cantidad de vuelos vendidos es: ", contadorRuta4
						FinSegun
					Mientras Que opcionVentaVuelo > 0 o opcionVentaVuelo < 5
					
					
					
					
	
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

					escribir ("¿LLeva equipaje en bodega? Verdadero/Falso")
					leer equipajeBodega
					vueloDestino[contadorRuta,4] = Mayusculas(equipajeBodega)

					escribir ("Ingrese número de pasajero frecuente")
					leer numPasajeroFrec
					vueloDestino[contadorRuta,5] = numPasajeroFrec
					
					vueloDestino[contadorRuta,6] = ConvertirATexto(calcularPrecioPorPlaza(capacidadPasajeros, n, contadorRuta))    // Adicionado y convertida a Tex
  					
					capacidadPasajeros[n] = capacidadPasajeros[n]-1  //Agregado
					
	Mostrar "Ha finalizado con exito la compra de su vuelo"
	
	
FinSubProceso

SubProceso listadoPasajeros120(vueloDestino por Referencia, filas, columnas, contadorRuta)
	
	Para i = 0 hasta filas-1 con Paso 1 Hacer
		
		
		Si vueloDestino[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino[i,1]
			Escribir "El Dni del pasajero "  vueloDestino[i,2]
			Escribir "El telefono del pasajero " vueloDestino[i,3]
			Escribir "El equipaje es " vueloDestino[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso

SubProceso listadoPasajeros80(vueloDestino por Referencia, filas, columnas, contadorRuta)
	
	Para i = 0 hasta filas-1 con Paso 1 Hacer
		
		
		Si vueloDestino[i,1] <> ""
			Escribir "Numero de asiento es: " vueloDestino[i,0]
			Escribir "Nombre y apellido de pasajero: " vueloDestino[i,1]
			Escribir "El Dni del pasajero "  vueloDestino[i,2]
			Escribir "El telefono del pasajero " vueloDestino[i,3]
			Escribir "El equipaje es " vueloDestino[i,4]
			Escribir "El numero del pasajero frecuentes es " vueloDestino[i,5]
		FinSi
		
		
	FinPara
	
FinSubProceso


// Correcion funcion profesora

Funcion returnPrecio = calcularPrecioPorPlaza(capacidadPasajeros, n, contadorRuta)
	
	Definir costoPasaje Como Real
	Repetir
		
		Escribir "Seleccione una ruta aerea a consultar"
		Mostrar "1 Buenos Aires - Bariloche"
		mostrar "2 Buenos Aires - Salta"
		Mostrar "3 Rosario - Buenos Aires"
		Mostrar "4 Mar del Plata - Mendoza"
		
		Leer opcionRuta
	Mientras Que opcionRuta >4 o opcionRuta < 1
	
	Segun opcionRuta Hacer
		caso 0:
			si capacidadPasajeros - contadorRuta1> 99 Entonces
				costoPasaje = 150000
			FinSi
			si capacidadPasajeros - contadorRuta1> 59 y cantidadPasajeros1 - contadorRuta1< 99 Entonces
				costoPasaje = 150000 * 1.1
			FinSi
			si capacidadPasajeros - contadorRuta1 < 59 y cantidadPasajeros - contadorRuta1 > 0 Entonces
				cosotoPasaje = 180000
				
			FinSi
			// Calcular costo por plaza
			//
		caso 1:
			
			si capacidadPasajeros - contadorRuta2 > 99 Entonces
				costoPasaje = 120000
			FinSi
			si capacidadPasajeros - contadorRuta2 > 59 y cantidadPasajeros - contadorRuta2 < 99 Entonces
				costoPasaje = 120000 * 1.1
			FinSi
			si capacidadPasajeros - contadorRuta2 < 59 y cantidadPasajeros - contadorRuta2 > 0 Entonces
				cosotoPasaje = 150000
				
			FinSi
			
		caso 2:
			
			si capacidadPasajeros - contadorRuta3 > 69 Entonces
				costoPasaje = 70000
			FinSi
			si capacidadPasajeros - contadorRuta3 > 39 y cantidadPasajeros - contadorRuta3 < 69 Entonces
				costoPasaje = 70000 * 1.15
			FinSi
			si capacidadPasajeros - contadorRuta3 < 39 y cantidadPasajeros - contadorRuta3 > 0 Entonces
				cosotoPasaje = 95000
				
			FinSi

		caso 3:	
			
			si capacidadPasajeros - contadorRuta4 > 69 Entonces
				costoPasaje = 95000
			FinSi
			si capacidadPasajeros - contadorRuta4 > 39 y cantidadPasajeros - contadorRuta4 < 69 Entonces
				costoPasaje = 95000 * 1.15
			FinSi
			si capacidadPasajeros - contadorRuta4 < 39 y cantidadPasajeros - contadorRuta4 > 0 Entonces
				cosotoPasaje = 125000
				
			FinSi
			Mostrar "El costo del pasaje es: ", costoPasaje

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
//			Mostrar "La ruta seleccionada es: ", rutas[0]
			
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

SubProceso ordenamientoPasajerosDestino(vueloDestino, n, filas) //Ordenamiento por nombre y apellido
	
   
	
    Para i = 0 hasta n-1 con Paso 1 Hacer  // Cambio en la condición del bucle
        posmenor = i
        Para j = i + 1 hasta filas-1 Con paso 1 Hacer
            
            Si vueloDestino[j] < vueloDestino[posmenor] Entonces
                posmenor = j
            FinSi
        FinPara
        aux = vueloDestino[i]
        vueloDestino[i] = vueloDestino[posmenor]
        vueloDestino[posmenor] = aux
    FinPara
	
    Escribir "Listado de pasajeros:"
    Para i = 0 Hasta n-1  // Cambio en la condición del bucle
        
            Escribir vueloDestino[i]
        
        Escribir ""  // Salto de línea después de cada fila completa
    FinPara
	
FinSubProceso



//Version 5
//  Busquedas
// 
// 30-10-2023  00:25 hs