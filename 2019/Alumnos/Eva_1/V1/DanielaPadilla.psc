Proceso FIESTA
	definir edad, ContPersonas, ContMujeres, ContHombres como entero;
	definir sexo como caracter;
	
	ContPersonas<- 0;
	ContMujeres<- 0;
	ContHombres<- 0;
	
	Escribir "       FIESTA     ";
	Escribir "Ingrese la edad del invitado:";
	Leer edad;
	
	Mientras edad <> 0 Hacer
		Si edad < 18 Entonces
			
			Escribir "    NO PUEDEN INGRESAR PERSONAS MENORES DE 18 AÑOS  ";
			
		SiNo
			Escribir "Ingrese su sexo usando (F) para mujeres y (H) para hombres";
			Leer sexo; 
			Si sexo = "F" o sexo ="f" Entonces
				ContMujeres <- ContMujeres+1; 
				
			SiNo
				Si sexo = "H" o sexo= "h" Entonces
					ContHombres <- ContHombres+ 1; 
					
				FinSi
			FinSi
			Limpiar Pantalla
		FinSi 
		
		ContPersonas <- ContPersonas +1;
		
		Escribir "Ingrese la edad del invitado o Cero (0) para terminar:";
		Leer edad;
		
	FinMientras
	
	Limpiar Pantalla
	Escribir " TOTAL de personas que asistieron a la FIESTA:" , ContPersonas;
	Escribir " TOTAL de HOMBRES que asistieron:" , ContHombres;
	Escribir " TOTAL de MUJERES que asistieron:" , ContMujeres;
	esperar tecla
	
FinProceso
