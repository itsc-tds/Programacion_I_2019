//  Trabajo practico realizado por: Emiliano Policardo
//  Materia: Programación I
//  Carrera: Tecnicatura Superior en Desarrollo de Software
//  Docente: Sergio Algorry
//	
//  Consigna del docente: 
//	
//	Diseñar y desarrollar un programa que contenga una estructura de control y una estructura de repetición como mínimo.

Proceso Conversiones
	Definir opcion Como Caracter;
	opcion <-"";
	Mientras opcion <> "0" hacer
		Limpiar Pantalla;
		Escribir (" #########################################################################");
		Escribir (" #                                                              Ver. 1.0 #");
		Escribir (" #                                                                       #");
		Escribir (" #  Aplicacion para realizar conversión de números en diferentes bases.  #");
		Escribir (" #                                                                       #");
		Escribir (" #########################################################################");
		Escribir (" #                                                                       #");
		Escribir (" # Las opciones son:                                                     #");
		Escribir (" #                                                                       #");
		Escribir (" #  1 - Origen Decimal                                                   #");
		Escribir (" #                                                                       #");
		Escribir (" #  0 - Salir                                                            #");
		// TODO Propuestas para Version 2.9!
		//		Escribir ("#  2 - Destino Decimal                                                  #");
		//		Escribir ("#  3 - Octal - Binario / Binario - Octal                                #");
		//		Escribir ("#  4 - Hexadecimal - Binario / Binario - Hexadecimal                    #");
		Escribir (" #########################################################################");
		Escribir ("");
		Escribir Sin Saltar(" Por favor, elija el tipo de conversión: ");
		Leer opcion;
		
		si opcion <> "0" y opcion <> "1" entonces
			Escribir "";
			Escribir " Ingreso una opción incorrecta. Presione cualquier tecla para volver a intentar.";
			esperar Tecla;
			
		SiNo
			segun ConvertirANumero(opcion) hacer
				1:
					MenuOrigenDecimal;
				2:
					//					MenuDestinoDecimal;
				3:
					//					OctalBinario(10,16);
				4:
					//					HexaBinario;
				0:
					Limpiar Pantalla;
					Escribir " #######################################################";
					Escribir " #                                                     #";
					Escribir " #     Gracias por utilizar nuestra aplicación.        #";
					Escribir " #     Por favor, califíquela en el Play Store!        #";       
					Escribir " #       (O ponga la nota en la libreta ;-) )          #";
					Escribir " #                                                     #";
					Escribir " #######################################################";
					Escribir "";
					Escribir "";
					Escribir "";
			FinSegun
		FinSi
	FinMientras
FinProceso

SubProceso MenuOrigenDecimal
	Definir opcion Como Caracter;
	opcion <-"";
	Mientras opcion <> "0" hacer
		Limpiar Pantalla;
		Escribir (" #########################################################################");
		Escribir (" #                                                                       #");
		Escribir (" #  SubMenu de Conversión de Números desde Sistema Decimal               #");
		Escribir (" #                                                                       #");
		Escribir (" #########################################################################");
		Escribir (" #                                                                       #");
		Escribir (" # Las opciones de destino son:                                          #");
		Escribir (" #                                                                       #");
		Escribir (" #  1 - Binario (Base 2)                                                 #");
		Escribir (" #  2 - Octal (Base 8)                                                   #");
		Escribir (" #  3 - Hexadecimal (Base 16)                                            #");
		Escribir (" #                                                                       #");
		Escribir (" #  0 - Volver                                                           #");
		Escribir (" #########################################################################");
		Escribir ("");
		Escribir Sin Saltar(" Por favor, elija el destino elegido: ");
		Leer opcion;
		
		si opcion <> "0" y opcion <> "1" y opcion <> "2" y opcion <> "3" entonces
			
			Escribir "";
			Escribir " Ingreso una opción incorrecta. Presione cualquier tecla para volver a intentar.";
			esperar Tecla;
		SiNo
			segun ConvertirANumero(opcion) hacer
				1:
					OrigenDecimal(10,2);
				2:
					OrigenDecimal(10,8);
				3:
					OrigenDecimal(10,16);
				0:
			FinSegun
		FinSi
	FinMientras
FinSubProceso

SubProceso MenuDestinoDecimal
	Definir opcion Como Caracter;
	opcion <-"";
	Mientras opcion <> "0" hacer
		Limpiar Pantalla;
		Escribir (" #########################################################################");
		Escribir (" #                                                                       #");
		Escribir (" #  SubMenu de Conversion de Numeros a Sistema Decimal                   #");
		Escribir (" #                                                                       #");
		Escribir (" #########################################################################");
		Escribir (" #                                                                       #");
		Escribir (" # Las opciones de origen son (Sólo números enteros)                     #");
		Escribir (" #                                                                       #");
		Escribir (" #  1 - Binario (Base 2)                                                 #");
		Escribir (" #  2 - Octal (Base 8)                                                   #");
		Escribir (" #  3 - Hexadecimal (Base 16)                                            #");
		Escribir (" #                                                                       #");
		Escribir (" #  0 - Volver                                                           #");
		Escribir (" #########################################################################");
		Escribir ("");
		Escribir Sin Saltar(" Por favor, elija el origen elegido: ");
		Leer opcion;
		
		si opcion <> "0" y opcion <> "1" y opcion <> "2" y opcion <> "3" entonces
			Escribir " Ingreso una opción incorrecta. Por favor, reintente.";
		SiNo
			segun ConvertirANumero(opcion) hacer
				1:
					//DestinoDecimal(2,10);
				2:
					//DestinoDecimal(8, 10);
				3:
					//DestinoDecimal(16,10);
				0:
			FinSegun
		FinSi
	FinMientras
FinSubProceso



SubProceso OrigenDecimal(baseOrigen, baseDestino)
	Definir ingreso como Caracter;
	Definir dividendo como Entero;
	//	Definir parteDecimal Como Real;
	Definir resto Como Real;
	Definir numeroResultante como Cadena;
	Definir bandera Como Entero;
	Definir restoStr como Caracter;
	bandera <-0;
	dividendo <-0;
	resto <-0;
	//	parteDecimal <-0;
	numeroResultante <-"";
	Limpiar Pantalla;
	Escribir " ######################################################################################################";
	Escribir " #                                                                                                    #"; 
	Escribir " # Por favor ingrese el número en base ", baseOrigen, " que desea convertir a base ", baseDestino,"                                #";
	Escribir " #                                                                                                    #";
	Escribir " ######################################################################################################";
	Leer ingreso;
	//TODO Controlar ingreso en busca de errores.
	
	dividendo <- ConvertirANumero(ingreso);	
    Repetir
		si (dividendo >= baseDestino) Entonces
			resto <- dividendo % baseDestino;
			dividendo <- trunc(dividendo / baseDestino);
			si (baseDestino <>16) Entonces
				numeroResultante <- Concatenar(numeroResultante,ConvertirATexto(resto));
			SiNo
				restoStr <-"";
				Segun resto Hacer
					10:
						restoStr <- "A";
					11:
						restoStr <- "B";
					12:
						restoStr <- "C";
					13:
						restoStr <- "D";
					14:
						restoStr <- "E";
					15:
						restoStr <- "F";
					De Otro Modo:
						restoStr <- convertiratexto(dividendo);
				FinSegun
				numeroResultante <- Concatenar(numeroResultante,restoStr);
			finsi
			
		FinSi
	Hasta Que (dividendo <= baseDestino)
	si (dividendo >= baseDestino) Entonces
		resto <- dividendo % baseDestino;
		numeroResultante <- Concatenar(numeroResultante,ConvertirATexto(resto));
		numeroResultante <- Concatenar(numeroResultante, ConvertirATexto(dividendo/baseDestino));
	SiNo
		
		si (baseDestino <>16) Entonces
			numeroResultante <- Concatenar(numeroResultante,ConvertirATexto(dividendo));
		SiNo
			restoStr<-"";
			Segun dividendo Hacer
				10:
					restoStr <- "A";
				11:
					restoStr <- "B";
				12:
					restoStr <- "C";
				13:
					restoStr <- "D";
				14:
					restoStr <- "E";
				15:
					restoStr <- "F";
				De Otro Modo:
					restoStr <- convertiratexto(dividendo);
			FinSegun
			numeroResultante <- Concatenar(numeroResultante,restoStr);
		finsi
		
	FinSi
	
	definir i como entero;
	i <- 0;
	definir largoCadena como entero;
	largoCadena <- Longitud(numeroResultante);
	Definir finalCadena como cadena;
	finalCadena <-"";
	
	Para i<-largoCadena Hasta 0 Con Paso -1 Hacer
		
		finalCadena <- (Concatenar(finalCadena, Subcadena(numeroResultante,i,i)));

	FinPara
	Escribir " ##########################################################################################";
	Escribir " #                                                                                        #";
	Escribir " # El resultado obtenido es: ",finalCadena;
	Escribir " #                                                                                        #";
	Escribir " ##########################################################################################";
	Escribir "";
	Escribir Sin Saltar " Presione una tecla para continuar: ";
	Esperar Tecla;
	
FinSubProceso
