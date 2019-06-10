SubProceso bancos <- redondeo ( bancos )
	bancos<-bancos*100;
	bancos <-trunc (bancos);
	bancos<-bancos/100;
FinSubProceso

Proceso Comparador230419
	
	Definir tecla_repetir como caracter;
	Definir monto como real;
	Definir Plazo como Entero;
	Definir Galicia como real;
	Definir HSBC como real;
	Definir Macro como real;
	Definir Nacion como real;
	Definir Selec como entero;
	
	Escribir "COMPARE Y GANE";
	Escribir "                                ";

	Repetir
		
		Escribir "Ingrese el monto que desea invertir: ";
		Leer monto;
		//Si monto = texto Entonces
		//	Escribir "";
		//FinSi
		Escribir "                                ";
		
		Escribir "Seleccionar: ";
		Escribir "                                ";
		
		Escribir "1. Plazo fijo a 30 días";
		Escribir "2. Plazo fijo a 60 días";
		Escribir "3. Plazo fijo a 90 días";
		Escribir "4. Plazo fijo a 180 días";
		Escribir "5. Plazo fijo a 365 días";
		
		Leer Selec; 
		
		Escribir "         ";
		
		
		Si Selec ==1 Entonces;
			Galicia <- redondeo (Monto*(21.94/365*30/100)+ Monto);
			HSBC <- redondeo (Monto*22.00/365*30/100 + Monto);
			Macro <- redondeo (Monto*(22.50/365*30/100)+ Monto);
			Nacion <- redondeo (Monto*(23.00/365*30/100)+ Monto);
			Plazo <-30;
			
		SiNo 
			Si Selec ==2 Entonces
				Galicia <- redondeo (Monto*(23.00/365*60/100)+ Monto);
				HSBC <- redondeo (Monto*(21.78/365*60/100)+ Monto);
				Macro <- redondeo (Monto*(22.25/365*60/100)+ Monto);
				Nacion <- redondeo (Monto*(22.70/365*60/100)+ Monto);
				Plazo <-60;
			SiNo
				Si Selec ==3 Entonces
					Galicia <- redondeo (Monto*(22.56/365*90/100)+ Monto);
					HSBC <- redondeo (Monto*(22.59/365*90/100)+ Monto);
					Macro <- redondeo (Monto*(23.63/365*90/100)+ Monto);
					Nacion <- redondeo (Monto*(23.00/365*90/100)+ Monto);
					Plazo <-90;
					
				SiNo
					Si Selec ==4 Entonces
						Galicia <- redondeo (Monto*(21.01/365*180/100)+ Monto);
						HSBC <- redondeo (Monto*(21.40/365*180/100)+ Monto);
						Macro <- redondeo (Monto*(21.44/365*180/100)+ Monto);
						Nacion <- redondeo (Monto*(21.33/365*180/100)+ Monto);
						Plazo <-180;
						
					SiNo
						Si Selec ==5 Entonces
							Galicia <- redondeo (Monto*(23.56/365*365/100)+ Monto);
							HSBC <- redondeo (Monto*(22*98/365*365/100)+ Monto);
							Macro <- redondeo (Monto*(23.01/365*365/100)+ Monto);
							Nacion <- redondeo (Monto*(23.26/365*365/100)+ Monto);
							Plazo <-365;
							
						FinSi
						
						
					FinSi
				FinSi
				
			FinSi
			
		FinSi
		
		Limpiar Pantalla;
		
		Escribir "Resultado de la comparación: ";
		Escribir "                                ";
		Escribir "El interés ganado es $",Galicia-monto," en el banco Galicia";
		Escribir "El monto a reembolsar es $",galicia;
		Escribir "                                ";
		Escribir "El interés ganado es $",HSBC-monto, " en el banco HSBC";
		Escribir "El monto a reembolsar es $",HSBC;
		Escribir "                                ";
		Escribir "El interés ganado es $", Macro-monto, " en el banco Macro";
		Escribir "El monto a reembolsar es $",Macro;
		Escribir "                                ";
		Escribir "El interés ganado es $", Nacion-monto, " en el banco Nacion";
		Escribir "El monto a reembolsar es $",Nacion;
		Escribir "                                ";
		Escribir "                                ";
		
		Si Galicia > HSBC y Galicia > Macro y Galicia > Nacion Entonces
			Escribir "********* El banco que más te conviene es: GALICIA *********";
		Sino
			Si HSBC > Galicia y HSBC > Macro y HSBC > Nacion Entonces
				Escribir "********* El banco que más te conviene es: HSBC *********";
			Sino 
				Si Macro > Galicia y Macro > HSBC y Macro > Nacion Entonces
					Escribir " ********* El banco que más te conviene es: MACRO *********";
				Sino
					Si Nacion > Galicia y Nacion > HSBC y Nacion > Macro Entonces
						Escribir "********* El banco que más te conviene es: NACIÓN *********";
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir "";
		
		Repetir
            Escribir Sin Saltar "¿Desea ingresar otro monto? (S/N): ";
            Leer tecla_repetir;
		Hasta Que tecla_repetir='s' O tecla_repetir='n' O tecla_repetir='S' O tecla_repetir='N'		
		Limpiar Pantalla;
	Hasta Que tecla_repetir='n' O tecla_repetir='N'	
	
	Limpiar pantalla;
	
	Escribir "*********Gracias, vuelva pronto*********";
	
FinProceso