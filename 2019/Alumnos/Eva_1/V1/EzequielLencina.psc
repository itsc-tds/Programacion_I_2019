Proceso Inve_rnadero
	Definir Opc Como Entero;//Guardamos el numero de opcion de almacenamiento
	Definir Toldo Como Entero;
	Definir Soleado, Lluvioso Como Caracter;
	Limpiar Pantalla;
	
	Opc <- 0;
	
	Repetir
		Repetir
			Escribir "Hola Que tal!!!"
			Escribir "";
			Escribir "¿Dime, como esta el Clima?"
			Escribir "1. Soleado"  
			Escribir "2. Llueve"
			Escribir "3. Noche"
			Escribir "4. Salir"
			Leer Opc;
		Hasta Que Opc = 1 o Opc = 2 o Opc = 3 o Opc = 4
		Repetir
			Segun Opc Hacer
				1:
					Escribir "Esta soleado!!";
					Escribir "";
					
				2:  
					Escribir "Esta Lloviendo wacho, cerrame el toldo!!"
					
				3:	
					Escribir "Esta de noche";
					
				4:
					Escribir "4. Salir"
					
				De Otro Modo:
					Escribir "Volver a preguntar";
			Fin Segun
		Hasta Que Opc = 4
		Escribir ""
		Limpiar Pantalla
		Escribir "Que desea hacer"
		Escribir ""
		Repetir
			Escribir "1. Abrir toldo"
			Escribir ""
			Escribir "2. Cerrar toldo"
			Leer Opc
			Segun Opc Hacer
				1:
					Escribir "Okey! Abrimos toldo"
					Limpiar Pantalla
					
				2:
					Escribir "Okey! Cerramos toldo"
					Limpiar Pantalla
					
					
				De Otro Modo:
					Escribir "Error"
			Fin Segun
		Hasta Que Opc = 1 o Opc = 2;
	Hasta Que Opc = 4
	
FinProceso
