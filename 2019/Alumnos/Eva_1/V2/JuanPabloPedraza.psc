//ecuaciones de Harris-Benedict: (empiricas)
//Hombre: (10 x peso en kg) + (6.25 × altura en cm) - (5 × edad en años) + 5
//Mujer: (10 x peso en kg) + (6.25 × altura en cm) - (5 × edad en años) - 161


//Calculador de Calorias
SubProceso CalcularCalorias <- calorias ( genero, altura, peso, edad )
	
	definir CalcularCalorias como  real;
	
	Si genero = "H" entonces
		
		calcularCalorias <- (10 * peso) + (6.25 * altura ) - (5 * edad) + 5; // formula calorias hombre
		
	SiNo
		calcularCalorias <- (10 * peso) + (6.25 * altura ) - (5 * edad) - 161; // formula calorias mujer
		
	FinSi
	
FinSubProceso

Proceso MenudeComidaV2
	
	// Declaracion de Variables Proceso
	
	Definir opcion como cadena;  // opcion elegida por el usuario 
	Definir opcionV como entero; // variable usada para eleccion del menu principal
	Definir opcionG Como Entero; // variable usada en el metodo 3 
	Definir valorD como real;// valor actual del dolar
	Definir Conversion Como Real; // calculo de pesos en base al dolar actual
	// variables usadas en el metodo aleatorio, OPCION 2
	Definir A como entero;
	Definir B como entero;
	Definir C como entero;
	
	// Declaracion de Variables Subproceso
	
	Definir genero como cadena; // H o M 
	Definir altura como real; // altura en cm
	Definir peso como real;   // peso en kg
	Definir edad como Entero;  // edad en años
	Definir Calcularcalorias como real; // variable de retorno subproceso
	Definir Resultado como real; // variable de resultado subproceso
	
	
	
	// Inicializacion de variables
	
	// opcion del menu a elegir
	opcion <- "";
	// ingresar el precio del dolar estimado actual
	valorD <- 0;
	// opcion del menu pasada a entero
	opcionV <- 0;
	
	
	
	// Explicacion del objetivo del programa
	Escribir "";
	Escribir "El Siguiente programa ofrece,";
	Escribir "opciones de comidas estimadas a precio dolar.";
	Escribir "";
	
	Escribir "Ingrese valor actual aproximado del dolar";
	Leer ValorD;
	Limpiar Pantalla;
	
	
	//Control de la variable del valor del dolar
	Mientras ValorD <= 0 o ValorD > 100 Hacer
		
		Escribir "La opcion ingresada no es correcta ";
		Escribir "Ingrese nuevamente, el valor del dolar actual: ";
		Leer ValorD;
		Limpiar Pantalla;
		
	FinMientras
	
	
	Repetir
		
		//Menu de opciones para el usuario.
		Escribir "";
		Escribir "1 - Opciones de Comidas para preparar.";
		Escribir "2 - Recomendacion Aleatoria de un menu de Comida.";
		Escribir "3 - Armar tu propio menu de comida.";
		Escribir "4 - Calculadora de calorias";
		Escribir "5 - Ninguna de las anteriores";
		Escribir "";
		Escribir "Ingrese numero de opcion de la categoria elegida:";
		
		Leer opcion;
		
		
		Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" y opcion <> "4" y opcion <> "5" Hacer
			
			Escribir "La opcion ingresada no es correcta ";
			Escribir "Ingrese nuevamente: ";
			Leer opcion;
			
			
		FinMientras
		
		opcionV <- Convertiranumero(opcion);
		
		
		Limpiar Pantalla;
		
		Segun opcionV Hacer
			
				// COMIENZO OPCION 1 DEL MENU PRINCIPAL
				
			1:
				opcion <- "";
				opcionV <- 0;
				Repetir
					
					
					Escribir "Eliga una de las Opciones";
					Escribir "";
					
					Escribir "0 - Volver al menu principal";
					Escribir "1 - Milanesas de Pollo con Pure";
					Escribir "2 - Milanesas de Carne con fideos";
					Escribir "3 - Pescado con arroz";
					Escribir "4 - Pizza";
					Escribir "5 - Salir";
					
					Leer opcion;
					
					Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" y opcion <> "4" y opcion <> "5" y opcion<> "0" Hacer
						
						Escribir "La opcion ingresada no es correcta ";
						Escribir "Ingrese nuevamente: ";
						Leer opcion;
						
					FinMientras
					
					opcionV <- ConvertirANumero(opcion);
					
					Segun opcionV Hacer
						
						0: 
							Limpiar Pantalla;
							
						1:
							Limpiar Pantalla;
							Escribir "";
							Escribir "Menu elegido: Milanesas de Pollo con Pure";
							Escribir "Costo aproximado: ", Redon(4.52 * ValorD), " pesos. (Porcion p/4 personas). ";
							Escribir "";
							//opcionV <- 5;
							Esperar Tecla;
							Limpiar Pantalla;
							
						2:
							Limpiar Pantalla;
							Escribir "";
							Escribir "Menu elegido: Milanesas de Carne con fideos";
							Escribir "Costo aproximado:", Redon(7.17 * ValorD), " pesos. (Porcion p/4 personas). ";
							Escribir "";
							//opcionV <- 5;
							Esperar Tecla;
							Limpiar Pantalla;
						3:
							Limpiar Pantalla;
							Escribir "";
							Escribir "Menu elegido: Pescado con arroz";
							Escribir "Costo aproximado:", Redon(5.50 * ValorD), " pesos. (Porcion p/4 personas). ";
							Escribir "";
							//opcionV <- 5;
							Esperar Tecla;
							Limpiar Pantalla;
						4:
							Limpiar Pantalla;
							Escribir "";
							Escribir "Menu elegido: Pizza";
							Escribir "Costo aproximado:", Redon(3.60 * ValorD), " pesos. (Porcion p/4 personas). ";
							Escribir "";
							//opcionV <- 5;
							Esperar Tecla;
							Limpiar Pantalla;
						5: 
							Limpiar Pantalla;
							Escribir "";
							Escribir "Gracias por utilizar nuestro programa.";
							Escribir "";
							opcionV <- 6;
							
					FinSegun
		
					
				Hasta Que opcionV = 6 o opcionV = 0 // FIN  OPCION 1 DEL MENU PRINCIPAL	
				
				// COMIENZO OPCION 2 DEL MENU PRINCIPAL	
				
			2:
				//variables temporales para el metodo aleatorio
				//intervalos del metodo aleatorio
				
				A <- 1;
				B <- 4;
				C <- 0;
				opcion <- "";
				opcionV <- 0;
				Escribir "Recomendacion Aleatoria entre 4 Comidas.";
				Escribir "";
				Escribir "Numero Aleatorio: ", ALEATORIO(A,B);
				C <- ALEATORIO(A,B);
				
				
				Segun C Hacer
					1:
						Escribir "";
						Escribir "Comida: Milanesas de Pollo con Pure";
						Escribir "Costo aproximado: ", Redon(4.52 * ValorD), " pesos. (Porcion p/4 personas). ";
						Escribir "";
					2:
						Escribir "";
						Escribir "Comida: Milanesas de Carne con fideos";
						Escribir "Costo aproximado:", Redon(7.17 * ValorD), " pesos. (Porcion p/4 personas). ";
						Escribir "";
					3:
						Escribir "";
						Escribir "Comida: Pescado con arroz";
						Escribir "Costo aproximado:", Redon(5.50 * ValorD), " pesos. (Porcion p/4 personas). ";
						Escribir "";
					4:
						Escribir "";
						Escribir "Comida: Pizza";
						Escribir "Costo aproximado:", Redon(3.60 * ValorD), " pesos. (Porcion p/4 personas). ";
						Escribir "";
				FinSegun
				
				Esperar Tecla;
				Limpiar Pantalla;
				
				
				// FIN DE OPCION 2 DEL MENU PRINCIPAL	
				
				// COMIENZO OPCION 3 DEL MENU PRINCIPAL	
				
			3:
				Repetir
					
					//inicializacion
					
					opcionG <- 0;
					opcion <- "";
					opcionV <- 0;
					Escribir "Armar tu propia comida.";
					
					Escribir "Eliga una de las Opciones";
					Escribir "";
					
					Escribir "0 - Volver al menu";
					Escribir "1 - Milanesas de Pollo";
					Escribir "2 - Pescado";
					Escribir "3 - Pizza";
					Escribir "4 - Ravioles";
					Escribir "5 - Salir";
					
					Leer opcion;
					
					Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" y opcion <> "4" y opcion <> "5" y opcion<> "0" Hacer
						
						Escribir "La opcion ingresada no es correcta ";
						Escribir "Ingrese nuevamente: ";
						Leer opcion;
						
					FinMientras
					
					opcionV <- ConvertirANumero(opcion);
					
					
					Si opcionV = 0 Entonces
						
						Limpiar Pantalla;
						
						
					FinSi
					
					Si opcionV = 1 Entonces
						
						Limpiar Pantalla;
						
						Escribir "Eliga una de las siguientes guarniciones";
						Escribir "";
						Escribir "1 - Pure";
						Escribir "2 - Ensalada";
						Escribir "3 - Arroz";
						Escribir "";
						
						
						Leer opcion;
						
						Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" Hacer
							
							Escribir "La opcion ingresada no es correcta ";
							Escribir "Ingrese nuevamente: ";
							Leer opcion;
							
						FinMientras
						
						Limpiar Pantalla;
						
						opcionG <- ConvertirANumero(opcion);
						
						Segun opcionG Hacer
							
							1: 
								Escribir "";
								Escribir "Menu elegido Milanesas de Pollo con pure";
								Escribir "Costo aproximado: ", Redon(4.52 * ValorD), " pesos. (Porcion p/4 personas). ";
								
							2:
								Escribir "";
								Escribir "Menu elegido Milanesas de Pollo con ensalada";
								Escribir "Costo aproximado: ", Redon(6.22 * ValorD), " pesos. (Porcion p/4 personas). ";	
								
							3:
								Escribir "";
								Escribir "Menu elegido Milanesas de Pollo con arroz";
								Escribir "Costo aproximado: ", Redon(4.52 * ValorD), " pesos. (Porcion p/4 personas). ";
								
								
						FinSegun
						
						Esperar Tecla;
						Limpiar Pantalla;
						
						//opcionV <- 6;
						
					FinSi
					
					Si opcionV = 2 Entonces
						
						Limpiar Pantalla;
						
						Escribir "Eliga una de las siguientes guarniciones";
						Escribir "";
						Escribir "1 - Pure";
						Escribir "2 - Ensalada";
						Escribir "3 - Arroz";
						Escribir "";
						
						Leer opcion;
						
						Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" Hacer
							
							Escribir "La opcion ingresada no es correcta ";
							Escribir "Ingrese nuevamente: ";
							Leer opcion;
							
						FinMientras
						
						
						Limpiar Pantalla;
						
						opcionG <- ConvertirANumero(opcion);
						
						Segun opcionG Hacer
							
							1: 
								Escribir "";
								Escribir "Menu elegido Pescado con pure";
								Escribir "Costo aproximado:", Redon(5.50 * ValorD), " pesos. (Porcion p/4 personas). ";
								
							2:
								Escribir "";
								Escribir "Menu elegido Pescado con ensalada";
								Escribir "Costo aproximado:", Redon(7.17 * ValorD), " pesos. (Porcion p/4 personas). ";	
								
							3:
								Escribir "";
								Escribir "Menu elegido Pescado con arroz";
								Escribir "Costo aproximado:", Redon(5.50 * ValorD), " pesos. (Porcion p/4 personas). ";
								
								
						FinSegun
						
						//opcionV <- 5;
						Esperar Tecla;
						Limpiar Pantalla;
						
					FinSi
					
					Si opcionV = 3 Entonces
						
						Limpiar Pantalla;
						
						Escribir "Eliga una de las siguientes variedades de Pizza";
						Escribir "";
						Escribir "1 - Muzzarela";
						Escribir "2 - Napolitana";
						Escribir "3 - Roquefort";
						Escribir "";
						
						Leer opcion;
						
						Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" Hacer
							
							Escribir "La opcion ingresada no es correcta ";
							Escribir "Ingrese nuevamente: ";
							Leer opcion;
							
						FinMientras
						
						opcionG <- ConvertirANumero(opcion);
						
						Segun opcionG Hacer
							
							1: 
								Limpiar Pantalla;
								Escribir "";
								Escribir "Menu elegido: Pizza de Muzzarela";
								Escribir "Costo aproximado:", Redon(3.59 * ValorD), " pesos. (Porcion p/4 personas). ";
								
							2:
								Limpiar Pantalla;
								Escribir "";
								Escribir "Menu elegido: Pizza Napolitana";
								Escribir "Costo aproximado:", Redon(4.78 * ValorD), " pesos. (Porcion p/4 personas). ";	
								
							3:
								Limpiar Pantalla;
								Escribir "";
								Escribir "Menu elegido: Pizza de Roquefort";
								Escribir "Costo aproximado:", Redon(5.98 * ValorD), " pesos. (Porcion p/4 personas). ";
								
								
						FinSegun
						
						//opcionV <- 6;
						Esperar Tecla;
						Limpiar Pantalla;
						
					FinSi
					
					Si opcionV = 4 Entonces
						
						Limpiar Pantalla;
						
						Escribir "Eliga una de las siguientes opciones de salsa";
						Escribir "";
						Escribir "1 - Salsa Blanca";
						Escribir "2 - Salsa Roja";
						Escribir "3 - Salsa Cuatro quesos";
						Escribir "";
						
						Leer opcion;
						
						Mientras opcion <> "1" y opcion <> "2" y opcion <> "3" Hacer
							
							Escribir "La opcion ingresada no es correcta ";
							Escribir "Ingrese nuevamente: ";
							Leer opcion;
							
						FinMientras
						
						opcionG <- ConvertirANumero(opcion);
						
						Segun opcionG Hacer
							
							1: 
								Limpiar Pantalla;
								Escribir "";
								Escribir "Menu elegido: Ravioles con Salsa Blanca";
								Escribir "Costo aproximado:", Redon(7.41 * ValorD), " pesos. (Porcion p/4 personas). ";
								
							2:
								Limpiar Pantalla;
								Escribir "";
								Escribir "Menu elegido: Ravioles con Salsa Roja";
								Escribir "Costo aproximado:", Redon(6.22 * ValorD), " pesos. (Porcion p/4 personas). ";	
								
							3:
								Limpiar Pantalla;
								Escribir "";
								Escribir "Menu elegido: Ravioles con Salsa cuatro quesos";
								Escribir "Costo aproximado:", Redon(8.61 * ValorD), " pesos. (Porcion p/4 personas). ";
								
								
						FinSegun
						
						//opcionV <- 6;
						Esperar Tecla;
						Limpiar Pantalla;
						
					FinSi
					
					
				Hasta Que opcionV = 5 o opcionV = 0 // FINAL OPCION 3 MENU PRINCIPAL
				
				
				//COMIENZO OPCION 4 MENU PRINCIPAL
				
			4:
				//parte del proceso para invocar el subproceso calorias
				
				
				Escribir "";
				Escribir "Calculador de Calorias";
				Escribir "";
				Escribir "Ingrese su peso en Kg: ";
				Leer peso;
				
				Mientras (0 >= peso) o (peso > 200) Hacer
					
					Escribir "El peso ingresado no es correcto, ingrese nuevamente: ";
					Escribir "";
					Leer peso;
					
				FinMientras
				
				Escribir "Ingrese su altura en cm: ";
				Leer altura;
				
				Mientras (0 >= altura) o (altura > 220) Hacer
					
					Escribir "La altura ingresada no es correcta, ingrese nuevamente: ";
					Escribir "";
					Leer altura;
					
				FinMientras
				
				Escribir "Ingrese su edad: ";
				Leer edad;
				
				Mientras (0 >= edad) o (edad > 105) Hacer
					
					Escribir "La edad ingresada no es correcta, ingrese nuevamente: ";
					Leer edad;
					
				FinMientras
				
				
				Escribir "";
				Escribir "Ingrese su genero : H (Hombre) o M (Mujer): ";
				
				genero <- "";
				Leer genero;
				
				
				Mientras genero <> "H" y genero <> "M" Hacer
					
					Escribir "Genero ingresado incorrecto, ingrese nuevamente: ";
					Escribir "H (Hombre) o M (Mujer)";
					
					Leer genero;
					
				FinMientras
				
				Limpiar Pantalla;
				
				Si genero = "H" entonces
					Escribir "Opcion elegida Calcular calorias para hombre.";
					Escribir "";
					Escribir "Datos ingresados:";
					Escribir "Edad: ", edad," años", ", altura: ", altura,"cm",", peso: ",peso ,"kg";
					Escribir "";
					
					Resultado <- calorias(genero, altura, peso, edad);
					Escribir "Su consumo diario de calorias es : ", Resultado, " Kcal.";
					
				SiNo
					Escribir "Opcion elegida Calcular calorias para mujer.";
					Escribir "";
					Escribir "Edad: ", edad," años", ", altura: ", altura,"cm",", peso: ",peso ,"kg";
					Escribir "";
					
					Resultado <- calorias(genero, altura, peso, edad);
					Escribir "Su consumo diario de calorias es : ", Resultado, " Kcal.";
					
				FinSi
				
				Esperar Tecla;
				Limpiar Pantalla;
				
				
			5:
				Escribir ""; 
				Escribir "Gracias por utilizar nuestro programa."; 
				Escribir "Lamentamos no tener una opcion de su agrado";
				opcionV <- 6;
				Escribir ""; 
				
				
		FinSegun
		
	Hasta Que opcionV = 6
	
FinProceso




















