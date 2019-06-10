Proceso gymv3
	definir op3 como entero;
	definir opcion como cadena;
	definir op2 como cadena;
	opcion <- "";
	
	Mientras opcion<>"0" Hacer
		Escribir "GYM Deporte y Salud";
		Escribir "Seleccione la opción:";
		Escribir "1 - Pagar Cuota del Mes Corriente";
		Escribir "2 - Ver Su Plan";
		Leer opcion;
		si opcion<>"1" y opcion <>"2" entonces
			escribir "opcion incorrecta";
		sino
			Segun convertiranumero(opcion) Hacer
				1:
					Repetir
						Escribir "El monto a pagar es de $1000, pase por caja";
						Escribir "Presione 0 para salir";
						Leer op2;
					Hasta Que op2="0"
					Limpiar Pantalla;
				2:
						Escribir "Seleccione su usuario";
						Escribir "001: Tomas";
						Escribir "002: Mario";
						Escribir "003: Carina";
						Escribir "004: Luciana";
						Escribir "005: Juan";
						Escribir "006: Charly";
						Escribir "007: Victor";
						Escribir "Presione 0 para salir";
						Leer op3;
						limpiar pantalla;
						Repetir
						Si op3<007 Entonces
							Escribir "DIA 1: CROSSFIT";
							Escribir "DIA 2: PILATES";
							Escribir "DIA 3: MAQUINAS";
							Escribir "Presione 0 para salir";
							Leer op2;
						Sino 
							Escribir "Usuario no válido";
							Escribir "Presione 0 para salir";
							Leer op2;
						FinSi
						Hasta que op2="0"
					Limpiar Pantalla;
			FinSegun
		FinSi
	FinMientras
FinProceso 




