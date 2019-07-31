Proceso practico
	Definir tarea como cadena;
	Definir dia Como cadena;
	Definir mes Como cadena;
	Definir anio Como cadena;
	Definir contador como entero;
	Definir cantidad como entero;
	Definir opcion como entero;
	Definir hora como cadena;
	Definir i Como entero;
	definir j como entero;
	Definir n como cadena;
	definir n1 como cadena;
	definir n2 como cadena;
	definir n3 como cadena;
	definir n4 como cadena;
	definir numerotarea como entero;
	definir acumcantidad como entero;
	Dimension n[100];
	dimension n1[100];
	dimension n2[100];
	dimension n3[100];
	dimension n4[100];
	tarea<-"Incompleto";
	dia <- "0";
	mes <- "0";
	anio <- "0";
	hora <-"00:00";
	i <- 0;
	cantidad <-0;
	acumcantidad <-0;
	opcion<-1;
	Mientras opcion > 0 Hacer
		Escribir "Recordatorio";
		Escribir "";
		Escribir "";
		Escribir "0. Salir";
		Escribir "1. Escribir nueva tarea";
		Escribir "2. Leer tareas";
		Escribir "3. Eliminar una tarea";
		Escribir "";
		Escribir "Elija opcion";
		leer opcion;
		Limpiar Pantalla;
		
		Si opcion < 0 o opcion > 3 Entonces
			Limpiar Pantalla;
			Escribir "";
			Escribir "OPCION INCORRECTA";
			Escribir "";
			
		FinSi
		Si opcion = 1 Entonces
			Limpiar Pantalla;
			acumcantidad <- acumcantidad + cantidad;
			i <- 0 + acumcantidad;
			Escribir "";
			Escribir "Elija cuantas tareas desea cargar (Maximo ",100 - acumcantidad,")";
			Leer cantidad;
			Limpiar Pantalla;
			Para contador <- 1 Hasta cantidad Hacer
				Escribir "";
				Escribir "Escriba tarea a realizar";
				leer tarea;
				n[i] <- tarea;
				Limpiar Pantalla;
				Escribir "";
				Escribir "Escriba el año a realizar la tarea";
				leer anio;
				n1[i] <- anio;
				Limpiar pantalla;
				Escribir "";
				Escribir "Escriba el mes a realizar la tarea";
				leer mes;
				n2[i] <- mes;
				Limpiar Pantalla;
				Escribir "";
				Escribir "Escriba el dia a realizar la tarea";
				leer dia;
				n3[i] <- dia;
				Limpiar Pantalla;
				Escribir "";
				Escribir "Escriba el horario de la tarea (hs:min)";
				leer hora;
				n4[i] <- hora;
				Limpiar Pantalla;
				Escribir "";
				Escribir "";
				Escribir "La Tarea es: ", n[i], " - FECHA " , n3[i], "/", n2[i] ,"/" ,n1[i], " - HORARIO ", n4[i];
				Escribir "";
				Escribir "";
				i <- i+1;
			FinPara
		FinSi
		Si opcion = 2 Entonces
			si cantidad = 0 entonces
				Escribir "";
				Escribir "NO HAY TAREAS ASIGNADAS";
				Escribir "";	
			Finsi
			Para j <- 0 hasta i-1 con paso 1 hacer
				Escribir "";
				Escribir "";
				Escribir "La Tarea Nº",j+1," :", n[j], " - FECHA " , n3[j], "/", n2[j] ,"/" ,n1[j], " - HORARIO ", n4[j];
				Escribir "";
				Escribir "";
			finpara
		FinSi
		Si opcion = 3 Entonces
			Escribir "Elija el numero de la tarea a eliminar";
			leer numerotarea;
			Limpiar Pantalla;
			si numerotarea < 0 o numerotarea > i o numerotarea = 0 Entonces
				Escribir "";
				Escribir "No existe ese numero de tarea";
				Escribir "";
			FinSi
			si  numerotarea < i o numerotarea = i  entonces
				n[numerotarea-1] <- "";
				n1[numerotarea-1] <- "0";
				n2[numerotarea-1] <- "0";
				n3[numerotarea-1] <- "0";
				n4[numerotarea-1] <- "00:00";
				Escribir "";
				Escribir "TAREA ELIMINADA";
				Escribir "";
			Finsi
		FinSi
	FinMientras
	Limpiar Pantalla;
	Escribir "";
	Escribir "- Good Bye -";
	Escribir "";
FinProceso
