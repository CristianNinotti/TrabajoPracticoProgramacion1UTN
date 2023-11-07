Algoritmo VentaPasajesAereos
	//Definicion y asignacion de valor a variables
	
	Definir opcionMenu,opcionVuelo,capacidadPasajeros, opcionListado Como Entero
	definir filas, filas2, columnas como entero
	definir contadorRuta1,contadorRuta2,contadorRuta3,contadorRuta4 Como Entero
	Definir rutas,vueloDestino1,vueloDestino2, vueloDestino3, vueloDestino4 Como Cadena
	Definir n como entero
	
	n = 4
	filas=120           
	columnas=6
	filas2=80
	
	contadorRuta1 = 0
	contadorRuta2 = 0
	contadorRuta3 = 0
	contadorRuta4 = 0
	//Declaracion de arreglos
	Dimension rutas[n]
	rutas[0] = " Buenos Aires - Baroliche "
	rutas[1] = " Buenos Aires - Salta "
	rutas[2] = " Rosario - Buenos Aires " 
	rutas[3] = " Mar Del Plata - Mendoza "
	
	Dimension capacidadPasajeros[n]
	capacidadPasajeros[0] = 120
	capacidadPasajeros[1] = 120
	capacidadPasajeros[2] = 80
	capacidadPasajeros[3] = 80
	
	Dimension vueloDestino1[filas,columnas]
	Dimension vueloDestino2[filas,columnas]
	Dimension vueloDestino3[filas2,columnas]
	Dimension vueloDestino4[filas2,columnas]
	//Menu principal
	Repetir
	Repetir
		
     Escribir " Bienvenido a Aerolineas Gonzalez "
		Escribir"1- Venta pasaje"
		Escribir"2- Buscar pasaje vendido"
		Escribir"3- Buscar pasajero"
		Escribir"4- Ordenar y mostrar lista pasajeros"
		Escribir"       a. Por número de asiento Ascendente"
		Escribir"       b. Por número de asiento Descendente"
		Escribir"5- Cantidad de pasajes vendidos"
		Escribir"       a. Cantidad de ventas por ruta aérea"
		Escribir"       b. Porcentaje de ventas por ruta aérea"
		Escribir"Ingrese 6 para cerrar el programa"
		Leer opcionMenu
		Si opcionMenu > 7 o opcionMenu < 1
			
	      Escribir " Ingrese una opcion valida entre 1 y 7"
		FinSi
	Mientras Que 	opcionMenu > 5 y opcionMenu < 7
	
	Segun opcionMenu Hacer
		
		caso 1 : //Venta y carga de datos de cliente
			
			Repetir
			    Mostrar "Elija su destino"
				Mostrar "1- Buenos Aires - Bariloche"
				mostrar "2- Buenos Aires - Salta"
				Mostrar "3- Rosario - Buenos Aires"
				Mostrar "4- Mar del Plata - Mendoza"
				Mostrar "5- SALIR"
				
				Leer opcionVuelo
				
				segun opcionVuelo Hacer
					
					caso 1:
						cargaDatos(vueloDestino1,filas, columnas,rutas, contadorRuta1, capacidadPasajeros,0,n)
						Mostrar "precio: ", CalculoPasaje1(vueloDestino1, contadorRuta1)
						contadorRuta1 = contadorRuta1+1
						
					caso 2:
						cargaDatos(vueloDestino2,filas, columnas,rutas, contadorRuta2, capacidadPasajeros,1,n)
						
						Mostrar "precio: ",CalculoPasaje2(vueloDestino2, contadorRuta2)
						contadorRuta2 = contadorRuta2+1
						
					caso 3:
						cargaDatos(vueloDestino3,filas2, columnas,rutas, contadorRuta3, capacidadPasajeros,2,n)
						
						Mostrar "precio: ",CalculoPasaje3(vueloDestino3, contadorRuta3)
						contadorRuta3 = contadorRuta3+1
						
						
					caso 4:
						cargaDatos(vueloDestino4,filas2, columnas,rutas, contadorRuta4, capacidadPasajeros,3,n)
						
						Mostrar "precio: ",CalculoPasaje4(vueloDestino4, contadorRuta4)
						contadorRuta4 = contadorRuta4+1
						
						
				FinSegun
				
				si opcionVuelo > 6 o opcionVuelo < 1 Entonces
					Mostrar "Opcion no valida. Ingrese nuevamente"
					
				FinSi
			Mientras Que opcionVuelo > 6 o opcionVuelo < 1
			
		Caso 2:	 //Invocacion de subproceso para buscar pasajes vendidos
			
			buscarPasaje(vueloDestino1, vueloDestino2, vueloDestino3, vueloDestino4,columnas,filas, filas2)
			
		Caso 3:	 //Invocacion de subproceso para buscar pasajeros
			busquedaNombre(vueloDestino1, vueloDestino2, vueloDestino3, vueloDestino4,columnas,filas, filas2)
		Caso 4:	// Ordenamiento y muestra de lista de pasajeros
			Mostrar "Seleccione ruta aerea para ver listado de pasajeros"
			Mostrar "1- Buenos Aires - Bariloche"
			mostrar "2- Buenos Aires - Salta"
			Mostrar "3- Rosario - Buenos Aires"
			Mostrar "4- Mar del Plata - Mendoza"
			Repetir
				Leer opcionVuelo
				Segun opcionVuelo Hacer
					caso 1:
						Repetir
							Mostrar "Si desea ver listado de forma ascendente presione 1"
							Mostrar "Si desea ver listado de forma descendente presiona 2"
							Leer opcionListado
							si opcionListado == 1 Entonces
								listadoPasajeros120a(vueloDestino1, filas, columnas, contadorRuta1)
							FinSi
							si opcionListado == 2 Entonces
								listadoPasajeros120aDescendente(vueloDestino1, filas, columnas, contadorRuta1)
								
							FinSi
						Mientras Que opcionListado <> 1 o opcionListado <> 2
					caso 2:
						Repetir
							Mostrar "Si desea ver listado de forma ascendente presione 1"
							Mostrar "Si desea ver listado de forma descendente presiona 2"
							Leer opcionListado
							si opcionListado == 1 Entonces
								listadoPasajeros120a(vueloDestino2, filas, columnas, contadorRuta2)
							SiNo
								
								listadoPasajeros120aDescendente(vueloDestino2, filas, columnas, contadorRuta2)
							FinSi
						Mientras Que opcionListado <> 1 o opcionListado <> 2
					caso 3:
						Repetir
							Mostrar "Si desea ver listado de forma ascendente presione 1"
							Mostrar "Si desea ver listado de forma descendente presiona 2"
							Leer opcionListado
							si opcionListado == 1 Entonces
								listadoPasajeros80a(vueloDestino3, filas2, columnas, contadorRuta3)
							SiNo
								
								listadoPasajeros80aDescendente(vueloDestino3, filas2, columnas, contadorRuta3)
							FinSi
						Mientras Que opcionListado <> 1 o opcionListado <> 2
					caso 4:
						Repetir
							Mostrar "Si desea ver listado de forma ascendente presione 1"
							Mostrar "Si desea ver listado de forma descendente presiona 2"
							Leer opcionListado
							si opcionListado == 1 Entonces
								listadoPasajeros120a(vueloDestino4, filas2, columnas, contadorRuta4)
							SiNo
								
								listadoPasajeros120aDescendente(vueloDestino4, filas2, columnas, contadorRuta4)
							FinSi
						Mientras Que opcionListado <> 1 o opcionListado <> 2
					
				FinSegun 
			Mientras Que opcionVuelo < 1 o opcionVuelo > 4
			
			
			
		Caso 5:	 //Listado de pasajes vendidos por cantidad y por porcentaje
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
						Mostrar "El porcentaje de ventas es: % ", (contadorRuta1 * 100) / 120
					caso 2: 
						mostrar "La cantidad de vuelos vendidos es: ", contadorRuta2
						Mostrar "El porcentaje de ventas es: % ", (contadorRuta2 * 100) / 120
					caso 3: 
						mostrar "La cantidad de vuelos vendidos es: ", contadorRuta3
						Mostrar "El porcentaje de ventas es: % ", (contadorRuta3 * 100) / 80
					caso 4: 
						mostrar "La cantidad de vuelos vendidos es: ", contadorRuta4
						Mostrar "El porcentaje de ventas es: % ", (contadorRuta4 * 100) / 80
				FinSegun
			Mientras Que opcionVentaVuelo < 1 o opcionVentaVuelo > 4
		caso 6:
			Mostrar "Gracias por visitar"
	FinSegun
	Mientras que opcion <> 6

FinAlgoritmo
//Subproceso generico para la carga de datos del cliente. Cuenta con sus respectivas validaciones
SubProceso cargaDatos(vueloDestino Por Referencia, filas, columnas, rutas, contadorRuta, capacidadPasajeros, r, cp)
	
    vueloDestino[contadorRuta, 0] = ConvertirATexto(contadorRuta + 1)
	
	Escribir "El numero de asiento es: " vueloDestino[contadorRuta, 0]
	
    Repetir
        escribir("Ingrese nombre y apellido")
        leer nombreApellido
		Si Longitud(nombreApellido) <= Longitud("2")
			Escribir "Ingrese un nombre con mas de 1 caracter"
		FinSi
    Mientras Que Longitud(nombreApellido) <= Longitud("2")
	
	vueloDestino[contadorRuta,1] = nombreapellido
	
	Repetir
		escribir ("Ingrese dni")
		leer dni
		Si ConvertirANumero(dni) < 999999 o ConvertirANumero(dni)  > 99999999
			Escribir "Ingrese un dni con mas de 7 u 8 caracteres"
		FinSi
	Mientras Que ConvertirANumero(dni) < 999999 o ConvertirANumero(dni) > 99999999
	vueloDestino[contadorRuta,2] = dni
	
	Repetir
		escribir ("Ingrese telefono")
		leer tel
		Si ConvertirANumero(tel) < 999999 o ConvertirANumero(tel) > 999999999999
			Escribir "Ingrese un tel con mas de 6 digitos y menores a 12 digitos"
		FinSi
	Mientras Que ConvertirANumero(tel) < 999999 o ConvertirANumero(tel) > 999999999999
	vueloDestino[contadorRuta,3] = tel
	
	Repetir
		escribir ("¿LLeva equipaje en bodega? V/F")
		leer equipajeBodega
		Si Longitud(equipajeBodega) > Longitud("1") o equipajeBodega <> "F" y equipajeBodega <> "V"
			Escribir "Ingrese V/F, solo un digito"
		FinSi
	Mientras Que Longitud(equipajeBodega) > Longitud("1") o equipajeBodega <> "F" y equipajeBodega <> "V"
	vueloDestino[contadorRuta,4] = Mayusculas(equipajeBodega)
	
	Repetir
		escribir ("Ingrese número de pasajero frecuente")
		leer numPasajeroFrec
		Si  ConvertirANumero(numPasajeroFrec) <= 99 o ConvertirANumero(numPasajeroFrec) >= 999
			Escribir "Ingrese un numero frecuente de pasajero de 3 digitos"
		FinSi
		
	Mientras Que ConvertirANumero(numPasajeroFrec) <= 99 o ConvertirANumero(numPasajeroFrec) >= 999
	vueloDestino[contadorRuta,5] = numPasajeroFrec
	

	
FinSubProceso
//Funcion para el calculo de pasaje Buenos Aires - Bariloche
Funcion return <- CalculoPasaje1(vueloDestino1, contadorRuta1)
	
	
	definir return Como Real 
	
	
	
	si (contadorRuta1 <= 20 y vueloDestino1[contadorRuta1,4]="V")
		return = 150000 + (150000*5/100)
	FinSi
	si (contadorRuta1<=20 y vueloDestino1[contadorRuta1,4]="F")
		return = 150000
	FinSi
	si ((contadorRuta1>20 y contadorRuta1<=60) y vueloDestino1[contadorRuta1,4]=="V")
		return = (150000+(150000*10/100)) + ((150000+150000*10/100)*5/100)
	FinSi
	si ((contadorRuta1>20 y contadorRuta1<=60) y vueloDestino1[contadorRuta1,4]="F")
		return = (150000+(150000*10/100)) 
	FinSi
	si ((contadorRuta1>60) y vueloDestino1[contadorRuta1,4]="V")
		return = (180000 + 180000*5/100)
	FinSi
	si ((contadorRuta1>60) y vueloDestino1[contadorRuta1,4]="F")
		return = 180000
	FinSi
	
			
FinFuncion

//Funcion para el calculo de pasaje Buenos Aires - Salta
Funcion return<-CalculoPasaje2(vueloDestino2, contadorRuta2)
	
	definir return Como Real
	si (contadorRuta2<=20 y vueloDestino2[contadorRuta2,4]="V")
		return = 120000 + (120000*5/100)
	FinSi
	si (contadorRuta2<=20 y vueloDestino2[contadorRuta2,4]="F")
		return = 120000
	FinSi
	si ((contadorRuta2>20 y contadorRuta2<=60) y vueloDestino2[contadorRuta2,4]=="V")
		return = (120000+(120000*10/100)) + ((120000+120000*10/100)*5/100)
	FinSi
	si ((contadorRuta2>20 y contadorRuta2<=60) y vueloDestino2[contadorRuta2,4]="F")
		return = (120000+(120000*10/100)) 
	FinSi
	si ((contadorRuta2>60) y vueloDestino2[contadorRuta2,4]="V")
		return = (150000 + 150000*5/100)
	FinSi
	si ((contadorRuta2>60) y vueloDestino2[contadorRuta2,4]="F")
		return = 150000
	FinSi
	
FinFuncion

//Funcion para el calculo de pasaje Rosario - Buenos Aires
Funcion return<-CalculoPasaje3(vueloDestino3, contadorRuta3)
	definir return Como Real
	si (contadorRuta3<=10 y vueloDestino3[contadorRuta3,4]="V")
		return = 70000 + (70000*5/100)
	FinSi
	si (contadorRuta3<=10 y vueloDestino3[contadorRuta3,4]="F")
		return = 70000
	FinSi
	si ((contadorRuta3>10 y contadorRuta3<=40) y vueloDestino3[contadorRuta3,4]=="V")
		return = (70000+(70000*15/100)) + ((70000+70000*15/100)*5/100)
	FinSi
	si ((contadorRuta3>10 y contadorRuta3<=40) y vueloDestino3[contadorRuta3,4]="F")
		return = (70000+(70000*15/100)) 
	FinSi
	si ((contadorRuta3>40) y vueloDestino3[contadorRuta3,4]="V")
		return = (95000 + 95000*5/100)
	FinSi
	si ((contadorRuta3>40) y vueloDestino3[contadorRuta3,4]="F")
		return = 95000
	FinSi
	
FinFuncion

//Funcion para el calculo de pasaje Mar del Plata - Mendoza
Funcion return<-CalculoPasaje4(vueloDestino4, contadorRuta4)
	definir return Como Real
	si (contadorRuta4<=10 y vueloDestino4[contadorRuta4,4]="V")
		return = 95000 + (95000*5/100)
	FinSi
	si (contadorRuta4<=10 y vueloDestino4[contadorRuta4,4]="F")
		return = 95000
	FinSi
	si ((contadorRuta4>10 y contadorRuta4<=40) y vueloDestino4[contadorRuta4,4]=="V")
		return = (95000+(95000*15/100)) + ((95000+95000*15/100)*5/100)
	FinSi
	si ((contadorRuta4>10 y contadorRuta4<=40) y vueloDestino4[contadorRuta4,4]="F")
		return = (95000+(95000*15/100)) 
	FinSi
	si ((contadorRuta4>40) y vueloDestino4[contadorRuta4,4]="V")
		return = (125000 + 125000*5/100)
	FinSi
	si ((contadorRuta4>40) y vueloDestino4[contadorRuta4,4]="F")
		return = 125000
	FinSi
	
FinFuncion

//Subproceso para la busqueda de pasajes 
SubProceso busquedaPasaje(vueloDestino1, vueloDestino2, vueloDestino3, vueloDestino4, filas, columnas)
    definir optionRuta, asientoABuscar Como Entero
    
    Escribir("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
	
    Leer optionRuta
    
    Mientras (optionRuta < 1 o optionRuta > 4)
        Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
        Escribir("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
        Leer optionRuta
    FinMientras
    
    Definir encontrado Como Cadena
    encontrado = "FALSO"
    
    Segun optionRuta Hacer
        Caso 1:
            Mientras (asientoABuscar < 1 o asientoABuscar > 120)
                Escribir("Ingrese el número de asiento a buscar")
                Leer asientoABuscar
                Si (asientoABuscar < 1 o asientoABuscar > 120) Entonces
                    Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
                FinSi
            FinMientras
            encontrado = BusquedaRuta(vueloDestino1, filas, columnas, asientoABuscar)
			
        Caso 2:
            Mientras (asientoABuscar < 1 o asientoABuscar > 120)
                Escribir("Ingrese el número de asiento a buscar")
                Leer asientoABuscar
                Si (asientoABuscar < 1 o asientoABuscar > 120) Entonces
                    Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
                FinSi
            FinMientras
            encontrado = BusquedaRuta(vueloDestino2, filas, columnas, asientoABuscar)
			
        Caso 3:
            Mientras (asientoABuscar < 1 o asientoABuscar > 80)
                Escribir("Ingrese el número de asiento a buscar")
                Leer asientoABuscar
                Si (asientoABuscar < 1 o asientoABuscar > 80) Entonces
                    Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
                FinSi
            FinMientras
            encontrado = BusquedaRuta(vueloDestino3, filas, columnas, asientoABuscar)
			
        Caso 4:
            Mientras (asientoABuscar < 1 o asientoABuscar > 80)
                Escribir("Ingrese el número de asiento a buscar")
                Leer asientoABuscar
                Si (asientoABuscar < 1 o asientoABuscar > 80) Entonces
                    Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
                FinSi
            FinMientras
            encontrado = BusquedaRuta(vueloDestino4, filas, columnas, asientoABuscar)
    FinSegun
    
    Si (encontrado = "FALSO") Entonces
        Escribir("Asiento vacío")
    FinSi
FinSubProceso
//Se generan funciones para ser invocadas y comparadas en el subproceso de busqueda de pasajes
Funcion return <- BusquedaRuta(array, filas, columnas, asientoABuscar) 
    Definir i, j como entero
    definir encontrado Como cadena
    i = 0
    encontrado = "FALSO"
    
    Mientras (i < filas)
        j = 0
        Mientras (j < columnas)
            Si (array[i, j] = ConvertirATexto(asientoABuscar)) Entonces
                Escribir("Asiento encontrado")
                Escribir("Nombre y apellido: "), array[i, 1]
                encontrado = "VERDADERO"
            FinSi
            j = j + 1
        FinMientras
        i = i + 1
    FinMientras
    
    return = encontrado
FinFuncion


// Punto 2 Busqueda por Asiento o Pasaje

SubProceso buscarPasaje(vueloDestino1, vueloDestino2, vueloDestino3, vueloDestino4,columnas,filas, filas2)
	definir optionRuta, asientoABuscar Como Entero
	
	
	escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		Escribir ("Opción ingresada incorrecta, vuelva a ingresarla")
		escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
		leer optionRuta
	FinMientras
	
	Segun optionRuta Hacer
		1:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>120)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			Escribir ("Ruta: Buenos Aires - Bariloche")
			BusquedaRuta1(vueloDestino1,columnas,filas, ConvertirATexto(asientoABuscar))
		2:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>120)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			Escribir ("Ruta: Buenos Aires - Salta") 
			BusquedaRuta1(vueloDestino2,columnas,filas, ConvertirATexto(asientoABuscar))
		3:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>80)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			Escribir ("Ruta: Rosario - Buenos Aires")
			BusquedaRuta1(vueloDestino3,columnas,filas2, ConvertirATexto(asientoABuscar))
		4:
			escribir ("Ingrese el número de asiento a buscar")
			leer asientoABuscar
			Mientras (asientoABuscar<0 o asientoAbuscar>80)
				Escribir("Opción ingresada incorrecta, vuelva a ingresarla")
				escribir ("Ingrese el número de asiento a buscar")
				leer asientoABuscar
			FinMientras
			Escribir ("Ruta: Mar del Plata - Mendoza")
			BusquedaRuta1(vueloDestino4,columnas,filas2, ConvertirATexto(asientoABuscar))
		De Otro Modo:
			Escribir ("Opción ingresada errónea")
			
	Fin Segun
	
FinSubProceso
	

SubProceso BusquedaRuta1(array ,columnas,dimFila,asientoABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila)
		si array[i,0]==asientoABuscar
			
			Escribir "Asiento: ", asientoABuscar
			Escribir ("Nombre y apellido: "), array[i,1]
			Escribir ("Dni: "), array[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Asiento vacío")
	FinSi
FinSubProceso

// Punto 3 - Busqueda Por nombre

SubProceso busquedaNombre(vueloDestino1, vueloDestino2, vueloDestino3, vueloDestino4,columnas,filas, filas2)
	definir optionRuta Como Entero
	Definir nombreABuscar Como Caracter
	
	
	escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
	leer optionRuta
	mientras (optionRuta<1 o optionRuta>4)
		Escribir ("Opción ingresada incorrecta, vuelva a ingresarla")
		escribir ("Ingrese el número de la ruta en la que desea buscar: 1: Buenos Aires - Bariloche, 2: Buenos Aires - Salta, 3: Rosario - Buenos Aires, 4: Mar Del Plata - Mendoza")
		leer optionRuta
	FinMientras
	
	Segun optionRuta Hacer
		1:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer nombreABuscar
			Escribir ("Ruta: Buenos Aires - Bariloche")
			busquedaNombre2(vueloDestino1,columnas,filas,nombreABuscar)
		2:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer nombreABuscar
			Escribir ("Ruta: Buenos Aires - Salta") 
			busquedaNombre2(vueloDestino2,columnas,filas,nombreABuscar)
		3:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer nombreABuscar
			Escribir ("Ruta: Rosario - Buenos Aires")
			busquedaNombre2(vueloDestino3,columnas,filas2,nombreABuscar)
		4:
			escribir ("Ingrese el nombre del pasajero a buscar")
			leer nombreABuscar
			Escribir ("Ruta: Mar del Plata - Mendoza")
			busquedaNombre2(vueloDestino4,columnas,filas2,nombreABuscar)
		De Otro Modo:
			Escribir ("Opción ingresada errónea")
			
	Fin Segun
	
FinSubProceso


SubProceso busquedaNombre2(array ,columnas,dimFila,nombreABuscar)
	definir i, banderaAsientoVacio Como Entero
	i=0
	banderaAsientoVacio = 0
	mientras (i<dimFila)
		si array[i,1]==nombreABuscar
			
			Escribir "Asiento: ", array[i,0]
			Escribir ("Nombre y apellido: "), array[i,1]
			Escribir ("Dni: "), array[i,2]
			banderaAsientoVacio = 1
			
		FinSi
		i = i+1
	FinMientras
	si (banderaAsientoVacio = 0)
		Escribir ("Asiento vacío")
	FinSi
FinSubProceso


//Subprocesos para muestra de pasajeros de manera ascendente y descendente.
SubProceso listadoPasajeros120a(vueloDestino por Referencia, filas, columnas, contadorRuta)
	
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
SubProceso listadoPasajeros120aDescendente(vueloDestino por Referencia, filas, columnas, contadorRuta)
	
	Para i = filas-1  hasta 0 con Paso -1 Hacer
		
		
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

SubProceso listadoPasajeros80a(vueloDestino por Referencia, filas, columnas, contadorRuta)
	
	Para i = 0 hasta filas2-1 con Paso 1 Hacer
		
		
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
SubProceso listadoPasajeros80aDescendente(vueloDestino por Referencia, filas, columnas, contadorRuta)
	
	Para i = filas2-1 hasta 0 con Paso 1 Hacer
		
		
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


