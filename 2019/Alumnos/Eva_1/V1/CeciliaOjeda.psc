			//aleatoriamente recuper 3 unidades distintas


//prueba de funcionamiento de un proceso, no necesario
SubProceso alumno
	escribir "Alumno anote su actividad";	
FinSubProceso


SubProceso asignacion_temas ( bolilla )
	escribir sin saltar "Unidad ",bolilla, ": ";
	Segun bolilla Hacer
		1:
			escribir "Teoría básica de Conjuntos";
		2:
			escribir "Operaciones entre conjuntos";
		3:
			escribir "Producto Cartesiano";
		4:
			escribir "Lógica";
		5:
			escribir "Cuantificadores";
		6:
			escribir "Otros conectivos";
		De Otro Modo:
			escribir "Es su día de suerte, Tema libre!";
	FinSegun
FinSubProceso


Proceso bolillero
	definir bolilla, bolilla1, bolilla2 Como Entero;
	definir salida Como logico;
	definir exit como cadena;
	definir A, B, x Como Entero;
	definir unidad Como Entero;
	A <-1;
	B <- 7;
	salida <-Falso;
	
	Limpiar Pantalla;
	alumno;
	escribir "";
	Repetir
		unidad <- 0;
		bolilla1 <- 0;
		bolilla2 <- 0;
		escribir "Temario a desarrollar";
		
		Mientras unidad < 3 Hacer
			
			bolilla <- aleatorio (A,B);
			Si unidad = 0 Entonces
//				escribir "Unidad: ",bolilla;
//				Segun bolilla Hacer
//					1:
//						escribir "Conjuntos";
//					2:
//						escribir "Logica";
//					3:
//						escribir "Producto Cartesiano";
//					De Otro Modo:
//						escribir "Tema libre";
//				FinSegun
				asignacion_temas(bolilla);
				unidad <- unidad + 1;
				bolilla1 <- bolilla;
			SiNo
				si bolilla1 <> bolilla y bolilla2 <> bolilla Entonces
					bolilla2 <- bolilla;
//					escribir "Unidad: ",bolilla;
//					Segun bolilla Hacer
//						1:
//							escribir "Conjuntos";
//						2:
//							escribir "Logica";
//						3:
//							escribir "Producto Cartesiano";
//						De Otro Modo:
//							escribir "Tema libre";
//					FinSegun
					asignacion_temas(bolilla);
					unidad <- unidad + 1;
				FinSi
			FinSi
			
		FinMientras
		
		escribir "";
		escribir "Presione s para salir, cualquier otro caracter para continuar";
		leer exit;
		si exit = "s" Entonces
			salida <- Verdadero;
		FinSi
		Limpiar Pantalla;
	Hasta Que salida = Verdadero
	escribir "Controle a sus alumnos que no se copien.";
FinProceso
