Proceso Inv_inteligente
	Definir Opc, Opc2,Opc3 como numero;
	Definir Soleado, lluvioso, noche Como Entero;
	Limpiar Pantalla;
	opc <- 0;
	opc2 <- 0;
			Escribir "TOLDO ABIERTO.";
			Escribir "";
			Escribir "¿Dime como esta el clima?";
			Escribir "";
			Escribir " 1. Llueve";
			Escribir " 2. Noche";
			Escribir " 3. Soleado";
			Escribir " 4. Salir";
			Leer opc;
			Repetir 
			SI Opc < 1 o Opc > 4 Entonces
				Escribir "Ingrese una opcion valida";
				leer Opc;
			FinSi
		Hasta Que opc >= 1 y opc <= 4;
			Escribir "";
			Si Opc <> 4 Entonces
			Repetir
				si Opc = 1 O Opc = 2 entonces
					Repetir
					
						si Opc2 = 2 Entonces
							Escribir "El toldo ya esta cerrado!";
						SiNo
							Escribir "Okey, Entonces Cerramos TOLDO";
							Escribir "";
							Escribir "Presione una tecla para continuar porfavor!";
							Esperar Tecla;
						FinSi
					Hasta Que opc2 <> 2 o opc2 <> 1
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "TOLDO CERRADO";
					Opc2 <- 2;
				SiNo
					Repetir
						si opc2 =  1 Entonces
						Escribir "El toldo ya esta abierto";
					SiNo
						Escribir "Okey Entonces Abrimos TOLDO";
						Escribir "";
						Escribir "Presione una tecla para continuar porfavor!";
						Esperar Tecla;
					FinSi
						
						si opc2 =  1 Entonces
							Escribir "El toldo ya esta abierto";
						SiNo
							Escribir "Okey Entonces Abrimos TOLDO";
							Escribir "";
							Escribir "Presione una tecla para continuar porfavor!";
							Esperar Tecla;
						FinSi					
						Limpiar Pantalla;
					Hasta Que opc2 <= 2 o opc2 < 1
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "TOLDO ABIERTO";
					Opc2 <- 1;
				FinSi
				Escribir "";
				Escribir "¿Dime como esta el clima?";
				Escribir "";
				Escribir " 1. Llueve";
				Escribir " 2. Noche";
				Escribir " 3. Soleado";
				Escribir " 4. Salir";
				Leer opc;
			Hasta Que opc = 4;
		SiNo
			
		FinSi
		
	
FinProceso
