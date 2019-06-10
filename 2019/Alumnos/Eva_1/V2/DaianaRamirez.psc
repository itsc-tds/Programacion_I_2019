SubProceso bancos <- redondeo ( bancos )
	bancos<-bancos*100;
	bancos <-trunc (bancos);
	bancos<-bancos/100;
FinSubProceso

Proceso Comparador230419
	
	Definir Proc, Calculo como cadena;
	Calculo <- "*";
	Proc <- " ";
	Definir tecla_repetir como caracter;
	tecla_repetir <- " ";
	Definir monto como real;
	Definir Plazo como Entero;
	Definir Galicia como real;
	Definir HSBC como real;
	Definir Macro como real;
	Definir Nacion como real;
	Definir Selec como caracter;
	Selec <- " ";
	
	Escribir "COMPARE Y GANE";
	Escribir "                                ";
	
	Repetir
		Escribir "Ingrese el monto que desea invertir: ";
		Escribir "";
		Leer monto;
		Limpiar Pantalla;
		
		Escribir "Seleccionar una opcion: ";
		Escribir " __________________________";
		Escribir "|                          |";
		Escribir "| 1. Plazo fijo a 30 días  |";
		Escribir "| 2. Plazo fijo a 60 días  |";
		Escribir "| 3. Plazo fijo a 90 días  |";
		Escribir "| 4. Plazo fijo a 180 días |";
		Escribir "| 5. Plazo fijo a 365 días |";
		Escribir "|__________________________|";
		Escribir "";
		
		Leer Selec; 
		si Selec < "1" o Selec > "5" entonces
			Repetir
				Escribir "Ingrese una opcion valida";
				Esperar 1 segundo;
				Limpiar Pantalla;
				Escribir "Seleccionar una opcion: ";
				Escribir " __________________________";
				Escribir "|                          |";
				Escribir "| 1. Plazo fijo a 30 días  |";
				Escribir "| 2. Plazo fijo a 60 días  |";
				Escribir "| 3. Plazo fijo a 90 días  |";
				Escribir "| 4. Plazo fijo a 180 días |";
				Escribir "| 5. Plazo fijo a 365 días |";
				Escribir "|__________________________|";
				Escribir "";
				Leer Selec;
			Hasta Que Selec >= "1" y Selec <= "5";
		FinSi
		Repetir
			escribir "Estamos calculando la mejor opción para usted...";
			escribir "        ", Proc ;
			Proc <- concatenar(Proc,calculo);
			esperar 1 Segundos;
			Limpiar Pantalla;
			
		Hasta Que longitud(Proc) = 4 ;
		Proc <- " ";	
		si Selec < "1" o Selec > "5" entonces
			Repetir
				Escribir "Ingrese una opcion valida";
				Leer Selec;
			Hasta Que Selec >= "1" y Selec <= "5";
		SiNo
			repetir
				Limpiar Pantalla;
				si tecla_repetir = "s" o tecla_repetir = "S" entonces
					Escribir "Ingrese el monto que desea invertir: ";
					Escribir "";
					Leer monto;
					limpiar pantalla;
					Escribir "Seleccionar una opcion: ";
					Escribir " __________________________";
					Escribir "|                          |     ";
					Escribir "| 1. Plazo fijo a 30 días  |";
					Escribir "| 2. Plazo fijo a 60 días  |";
					Escribir "| 3. Plazo fijo a 90 días  |";
					Escribir "| 4. Plazo fijo a 180 días |";
					Escribir "| 5. Plazo fijo a 365 días |";
					Escribir "|__________________________|";
					Escribir "";
					
					leer Selec;
					si Selec < "1" o Selec > "5" entonces
						Repetir
							Escribir "Ingrese una opcion valida";
							Esperar 1 segundo;
							Limpiar Pantalla;
							Escribir "Seleccionar una opcion: ";
							Escribir " __________________________";
							Escribir "|                          |";
							Escribir "| 1. Plazo fijo a 30 días  |";
							Escribir "| 2. Plazo fijo a 60 días  |";
							Escribir "| 3. Plazo fijo a 90 días  |";
							Escribir "| 4. Plazo fijo a 180 días |";
							Escribir "| 5. Plazo fijo a 365 días |";
							Escribir "|__________________________|";
							Escribir "";
							Leer Selec;
						Hasta Que Selec >= "1" y Selec <= "5";
					FinSi
					Repetir
						escribir "Estamos calculando la mejor opción para usted...";
						escribir "        ", Proc ;
						Proc <- concatenar(Proc,calculo);
						esperar 1 Segundos;
						Limpiar Pantalla;
						
					Hasta Que longitud(Proc) = 4 ;
					Proc <- "";	
				FinSi
				Segun ConvertirANumero(Selec) Hacer
					1:
						Galicia <- redondeo (Monto*(21.94/365*30/100)+ Monto);
						HSBC <- redondeo (Monto*22.00/365*30/100 + Monto);
						Macro <- redondeo (Monto*(22.50/365*30/100)+ Monto);
						Nacion <- redondeo (Monto*(23.00/365*30/100)+ Monto);
						Plazo <-30;
					2:
						Galicia <- redondeo (Monto*(23.00/365*60/100)+ Monto);
						HSBC <- redondeo (Monto*(21.78/365*60/100)+ Monto);
						Macro <- redondeo (Monto*(22.25/365*60/100)+ Monto);
						Nacion <- redondeo (Monto*(22.70/365*60/100)+ Monto);
						Plazo <-60;
					3:
						Galicia <- redondeo (Monto*(22.56/365*90/100)+ Monto);
						HSBC <- redondeo (Monto*(22.59/365*90/100)+ Monto);
						Macro <- redondeo (Monto*(23.63/365*90/100)+ Monto);
						Nacion <- redondeo (Monto*(23.00/365*90/100)+ Monto);
						Plazo <-90;
					4:	
						Galicia <- redondeo (Monto*(21.01/365*180/100)+ Monto);
						HSBC <- redondeo (Monto*(21.40/365*180/100)+ Monto);
						Macro <- redondeo (Monto*(21.44/365*180/100)+ Monto);
						Nacion <- redondeo (Monto*(21.33/365*180/100)+ Monto);
						Plazo <-180;
					5:  
						Galicia <- redondeo (Monto*(23.56/365*365/100)+ Monto);
						HSBC <- redondeo (Monto*(22.98/365*365/100)+ Monto);
						Macro <- redondeo (Monto*(23.01/365*365/100)+ Monto);
						Nacion <- redondeo (Monto*(23.26/365*365/100)+ Monto);
						Plazo <-365;
				FinSegun
				
				Limpiar Pantalla;
				
				Escribir "********************************";
				Escribir "* Resultado de la comparación: *";
				Escribir "********************************";
				Si Galicia > HSBC y Galicia > Macro y Galicia > Nacion Entonces
					Escribir " __________________________________________ ";
					Escribir "|                                          |";
					Escribir "| El banco que más te conviene es: GALICIA |";
					Escribir "|__________________________________________|";
					Escribir "";
					Escribir "";
					Escribir "********************************************";
					Escribir "* El interés ganado es $" ,Galicia-monto, "*";
					Escribir "********************************************";
				Sino
					Si HSBC > Galicia y HSBC > Macro y HSBC > Nacion Entonces
						Escribir " __________________________________________ ";
						Escribir "|                                          |";
						Escribir "| El banco que más te conviene es: HSBC    |";
						Escribir "|__________________________________________|";
						Escribir "";
						Escribir "";
						Escribir "********************************************";
						Escribir "* El interés ganado es $",HSBC-monto,     "*";
						Escribir "********************************************";
					Sino 
						Si Macro > Galicia y Macro > HSBC y Macro > Nacion Entonces
							Escribir " __________________________________________ ";
							Escribir "|                                          |";
							Escribir "| El banco que más te conviene es: MACRO   |";
							Escribir "|__________________________________________|";
							Escribir "";
							Escribir "";
							Escribir "********************************************";
							Escribir "* El interés ganado es $",MACRO-monto,    "*";
							Escribir "********************************************";
						Sino
							Si Nacion > Galicia y Nacion > HSBC y Nacion > Macro Entonces
								Escribir " __________________________________________ ";
								Escribir "|                                          |";
								Escribir "| El banco que más te conviene es: NACIÓN  |";
								Escribir "|__________________________________________|";
								Escribir "";
								Escribir "";
								Escribir "********************************************";
								Escribir "* El interés ganado es $",NACION-monto,   "*";
								Escribir "********************************************";
								
							FinSi
						FinSi
					FinSi					
				FinSi
				
				Escribir "";
				Repetir
					Escribir Sin Saltar "¿Desea ingresar otro monto? (S/N): ";
					Leer tecla_repetir;
				Hasta Que tecla_repetir='s' O tecla_repetir='n' O tecla_repetir='S' O tecla_repetir='N'
			hasta que tecla_repetir = "n" o tecla_repetir = "N"
		FinSi
		
		Limpiar Pantalla;
		
	Hasta Que tecla_repetir='n' O tecla_repetir='N'
	
	
	Limpiar pantalla;
	Escribir "";
	Escribir "*********  Gracias, vuelva pronto  *********";
FinProceso
