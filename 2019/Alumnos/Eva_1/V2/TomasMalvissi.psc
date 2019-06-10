SubProceso vuelt <- pagodecuota
	definir op4 como cadena;
	definir monto como real;
	definir vuelto como real;
	Limpiar pantalla;
	Repetir		
		Escribir "El monto a pagar es de $850";
		Escribir "1 - Pagar con tarjeta";
		Escribir "2 - Pagar en efectivo";
		Escribir "Presione 0 para volver";
		Leer op4;
		Limpiar Pantalla;
		Segun ConvertirANumero(op4) Hacer
			1:
				Escribir "Forma de pago: Tarjeta";
				Escribir "Pase su tarjeta por el sensor y presione cualquier tecla para confirmar pago";
				esperar tecla;
				Escribir "Pago confirmado";
				Limpiar Pantalla;
			2:
				Repetir
					Escribir "Forma de pago: Efectivo";
					Escribir "Saldo adeudado $850";
					Escribir "Ingrese la cantidad de dinero";
					Leer monto;	
					Escribir "***OPCION NO VALIDA***";
				Hasta Que monto>=850
				Limpiar Pantalla;
				vuelto<-monto - 850;
				Escribir "Vuelto $",vuelto;
			De Otro Modo:
				Escribir "***OPCION NO VALIDA***";
		FinSegun
	Hasta Que op4="0"
	Limpiar Pantalla;

FinSubProceso

Proceso gym21
		definir opcion como cadena;
		definir op2 como cadena;
		definir op3 como cadena;
		definir vuelto como real;
		opcion <- "";
		
		Limpiar Pantalla;
			Mientras opcion<"08" Hacer
				Escribir "GYM Deporte y Salud";
				Escribir "Seleccione su Usuario:";
				Escribir "01: Tomas";
				Escribir "02: Mario";
				Escribir "03: Carina";
				Escribir "04: Luciana";
				Escribir "05: Magdalena";
				Escribir "06: Luciano";
				Escribir "07: Victor";
				Leer opcion;
				Limpiar Pantalla;
				Segun ConvertirANumero(opcion) Hacer
					//primera rutina
					01, 02, 06, 07:
						Repetir
							Escribir "Bienvenido";
							Escribir "Seleccione la opción:";
							Escribir "1 - Pagar Cuota del Mes Corriente";
							Escribir "2 - Ver Su Rutina";
							Escribir "0 - Salir";
							Leer op2;
							Limpiar Pantalla;
								Segun ConvertirANumero(op2) Hacer
									1:  
										vuelto<-pagodecuota;
										//Limpiar Pantalla;
									2:
										Escribir "DIA 1: CROSSFIT";
										Escribir "DIA 2: BOXEO";
										Escribir "DIA 3: MAQUINAS";
										Escribir "Presione una tecla para volver";
										Esperar Tecla;
										Limpiar Pantalla;
									0:
										Escribir "Salió";
									De Otro Modo:
										Escribir "***OPCION NO VALIDA***";
								FinSegun
							Hasta Que op2="0"
							
							//segunda rutina
					03, 04, 05:
						Repetir
							Escribir "Bienvenido";
							Escribir "Seleccione la opción:";
							Escribir "1 - Pagar Cuota del Mes Corriente";
							Escribir "2 - Ver Su Rutina";
							Escribir "0 - Salir";
							Leer op3;
							Limpiar Pantalla;
							Segun ConvertirANumero(op3) Hacer
								1:
									vuelto<-pagodecuota;
									//Limpiar Pantalla;
								2:
									Escribir "DIA 1: PILATES";
									Escribir "DIA 2: AEROBICO";
									Escribir "DIA 3: RECREATIVO";
									Escribir "Presione una tecla para volver";
									esperar tecla;
									Limpiar Pantalla;
								0:
									Escribir "Salió";	
								De Otro Modo:
									Escribir "***OPCION NO VALIDA***";
							FinSegun
						Hasta Que op3="0"
						
					De Otro Modo:
						Escribir "***USUARIO NO ENCONTRADO***";
				FinSegun
			FinMientras
FinProceso
