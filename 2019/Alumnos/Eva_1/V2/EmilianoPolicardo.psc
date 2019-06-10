//
//
//Trabajo practico realizado por: Emiliano Policardo
//Materia: Programación I
//Carrera: Tecnicatura Superior en Desarrollo de Software
//Docente: Sergio Algorry
//	
//Consigna del docente: 
//	
//	Diseñar y desarrollar un programa que contenga una estructura de control y una estructura de repetición como mínimo.

Proceso Conversiones
	Definir opcion Como Caracter;
	opcion <-"";
	Mientras opcion <> "0" hacer
		Limpiar Pantalla;
		Escribir ("Aplicación para realizar conversiónes de números en diferentes bases.");
		Escribir ("");
		Escribir ("Las opciones son:");
		Escribir ("");
		Escribir ("1 - Origen Decimal");
		Escribir ("2 - Destino Decimal");
		Escribir ("");
		Escribir ("0 - Salir");
		Escribir ("");
		Escribir Sin Saltar(" Por favor, elija el tipo de conversión: ");
		Leer opcion;
		
		si (opcion <> "0" y opcion <> "1" y opcion <> "2") entonces
			Escribir "";
			Escribir " Ingreso una opción incorrecta. Presione cualquier tecla para volver a intentar.";
			esperar Tecla;
			
		SiNo
			segun ConvertirANumero(opcion) hacer
				1:
					MenuOrigenDecimal;
				2:
					MenuDestinoDecimal;
				0:
					Limpiar Pantalla;
					Escribir "      Gracias por utilizar nuestra aplicación.        ";
					Escribir "      Por favor, califíquela en el Play Store!        ";       
			FinSegun
		FinSi
	FinMientras
FinProceso

SubProceso MenuOrigenDecimal
	Definir opcion Como Caracter;
	opcion <-"";
	Mientras opcion <> "0" hacer
		Limpiar Pantalla;
		
		Escribir ("Conversión de Números desde Sistema Decimal");
		Escribir ("");
		Escribir ("  Las opciones posibles de destino son: ");
		Escribir ("");
		Escribir ("1 - Binario (Base 2)");
		Escribir ("2 - Octal (Base 8)");
		Escribir ("3 - Hexadecimal (Base 16)");
		Escribir ("");
		Escribir ("0 - Volver al menú principal");
		Escribir ("");
		Escribir Sin Saltar(" Por favor, elija el destino elegido: ");
		Leer opcion;
		
		si opcion <> "0" y opcion <> "1" y opcion <> "2" y opcion <> "3" entonces
			Escribir "";
			Escribir " Ingresó una opción incorrecta. Presione cualquier tecla para volver a intentar.";
			esperar Tecla;
		SiNo
			segun ConvertirANumero(opcion) hacer
				1:
					OrigenDecimal(2);
				2:
					OrigenDecimal(8);
				3:
					OrigenDecimal(16);
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
		Escribir ("Conversión de Números a Sistema Decimal");
		Escribir ("");
		Escribir ("Las opciones de origen son: ");
		Escribir ("");
		Escribir ("1 - Binario (Base 2)");
		Escribir ("2 - Octal (Base 8)");
		Escribir ("3 - Hexadecimal (Base 16)");
		Escribir ("");
		Escribir ("0 - Volver al menú principal");
		Escribir ("");
		Escribir Sin Saltar(" Por favor, elija el origen elegido: ");
		Leer opcion;
		
		si opcion <> "0" y opcion <> "1" y opcion <> "2" y opcion <> "3" entonces
			Escribir " Ingreso una opción incorrecta. Por favor, reintente.";
		SiNo
			segun ConvertirANumero(opcion) hacer
				1:
					DestinoDecimal(2);
				2:
					DestinoDecimal(8);
				3:
					DestinoDecimal(16);
				0:
			FinSegun
		FinSi
	FinMientras
FinSubProceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

SubProceso OrigenDecimal(baseDestino)
	Definir ingreso como Caracter;
	Definir dividendo como Entero;
	Definir resto Como Real;
	Definir numeroResultante como Cadena;
	Definir bandera Como Entero;
	Definir restoStr como Caracter;
	bandera <-0;
	dividendo <-0;
	resto <-0;
	numeroResultante <-"";
	Limpiar Pantalla;
	Escribir "Ingrese el número DECIMAL ENTERO a convertir";
	Leer ingreso;
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
	
	Escribir "  El resultado obtenido es: ",finalCadena;
	Escribir "";
	Escribir Sin Saltar " Presione una tecla para continuar: ";
	Esperar Tecla;
	
FinSubProceso

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

SubProceso DestinoDecimal(baseOrigen)
	
	Definir ingreso como Caracter;
	Definir posicion Como Entero;
	Definir posicionComa Como Entero;
	Definir nro Como Real;
	Definir i Como Entero;
	Definir suma Como Real;
	Definir error Como Logico;
	Definir j Como Entero;
	Definir potencia Como Entero;
	Definir caracterActual Como Caracter;
	
	error <- falso;
	i<-0;
	posicion <- 0;
	posicionComa <- 0;
	nro <-0;
	suma <- 0;
	caracterActual <-"";
	Limpiar Pantalla;
	
	Escribir "Ingrese el numero en base ", baseOrigen," que desea convertir";
	Leer ingreso;
	
	//Controlo la posicion de la coma o punto en el nro ingresado segun su base de origen
	Segun (baseOrigen) hacer
		2:
			Para i <- Longitud(ingreso) -1 Hasta 0 Con Paso -1 Hacer
				caracterActual <- (Subcadena(ingreso, i, i));
				si(caracterActual = "0" o caracterActual = "1") Entonces
					posicion <- posicion + 1;
					
				SiNo
					si(caracterActual == "," o caracterActual == ".")Entonces
						posicionComa <- posicion;
						i <- 0;
					SiNo
						Escribir "Ingresó un caracter no válido. Se cancela la operación";
						i <- 0;
						error <- Verdadero;
					FinSi
				FinSi
			FinPara
		8:
			Para i <- Longitud(ingreso) -1 Hasta 0 Con Paso -1 Hacer
				caracterActual <- (Subcadena(ingreso, i, i));
				si(caracterActual = "0" o caracterActual = "1" o caracterActual = "2" o caracterActual = "3" o caracterActual = "4" o caracterActual = "5" o caracterActual = "6" o caracterActual = "7") Entonces
					posicion <- posicion + 1;
				SiNo
					si(caracterActual = "," o caracterActual = "." )Entonces
						posicionComa <- posicion;
					SiNo
						Escribir "Ingresó un caracter no válido. Se cancela la operación";
						i <- 0;
						error <- Verdadero;
					FinSi
				FinSi
			FinPara
		16:
			Para i <- Longitud(ingreso) -1 Hasta 0 Con Paso -1 Hacer
				caracterActual <- (Subcadena(ingreso, i, i));
				si(caracterActual = "0" o caracterActual = "1" o caracterActual = "2" o caracterActual = "3" o caracterActual = "4" o caracterActual = "5" o caracterActual = "6" o caracterActual = "7" o caracterActual = "8" o caracterActual = "9" o caracterActual = "A" o caracterActual = "B" o caracterActual = "C" o caracterActual = "D" o caracterActual = "E" o caracterActual = "F") Entonces
					posicion <- posicion + 1;
				SiNo
					si(caracterActual = "," o caracterActual = "." )Entonces
						posicionComa <- posicion;
					SiNo
						Escribir "Ingresó un caracter no válido. Se cancela la operación";
						i <- 0;
						error <- Verdadero;
					FinSi
				FinSi
			FinPara
	FinSegun
	
	
	
	// Proceso el nro realizando la conversion correspondiente
	j<- longitud(ingreso) -1 ;
	
	potencia <- posicionComa * (-1);	
	si(error==Falso) Entonces
		
		Segun (baseOrigen) hacer
			2:
				Mientras j >= 0 Hacer
					caracterActual <- (Subcadena(ingreso, j, j));
					si(caracterActual = "," o caracterActual = ".") Entonces
						j<- j -1;
					SiNo
						nro <- ConvertirANumero(caracterActual);
						suma <- suma + (nro*(baseOrigen^potencia));
						j <- j -1;
						potencia <- potencia + 1;
						Escribir suma;
					FinSi
				FinMientras
			8:
				Mientras j >= 0 Hacer
					caracterActual <- (Subcadena(ingreso, j, j));
					si(caracterActual = "," o caracterActual = ".") Entonces
						j<- j -1;
					SiNo
						nro <- ConvertirANumero(caracterActual);
						suma <- suma + (nro*(baseOrigen^potencia));
						j <- j -1;
						potencia <- potencia + 1;
						Escribir suma;
					FinSi
				FinMientras
			16:
				Mientras j >=0 Hacer
					caracterActual <- (Subcadena(ingreso, j, j));
					si(caracterActual = "," o caracterActual = ".") Entonces
						j<- j -1;
					SiNo
						si(caracterActual = "A") Entonces
							caracterActual<- "10";
							nro <- ConvertirANumero(caracterActual);
							j<- j -1;
						SiNo
							si(caracterActual = "B") Entonces
								caracterActual<-"11";
								nro <- ConvertirANumero(caracterActual);
								j<- j -1;
							SiNo
								si(caracterActual = "C") Entonces
									caracterActual<-"12";
									nro <- ConvertirANumero(caracterActual);
									j<- j -1;
								SiNo
									
									si(caracterActual = "D") Entonces
										caracterActual<-"13";
										nro <- ConvertirANumero(caracterActual);
										j<- j -1;
									SiNo
										
										si(caracterActual = "E") Entonces
											caracterActual<-"14";
											nro <- ConvertirANumero(caracterActual);
											j<- j -1;
										SiNo
											
											si(caracterActual = "F") Entonces
												caracterActual<-"15";
												nro <- ConvertirANumero(caracterActual);
												j<- j -1;
											SiNo
												j<- j -1;
											FinSi
										FinSi	
									FinSi
								FinSi					
							FinSi
						FinSi
					FinSi
				FinMientras
					
			FinSegun
			
			
	
	
		
	FinSi
	
	
	si(error == falso) Entonces
		Escribir "El número ", ingreso, " en base ", baseOrigen, " representa el número decimal: ", suma;
		Escribir "";
		Escribir "Presione una tecla para continuar.";
		Esperar Tecla;
	finsi

FinSubProceso


