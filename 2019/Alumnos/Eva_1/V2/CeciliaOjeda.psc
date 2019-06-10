// En base a 2 unidades con dos temas por cada una y devuelve 3 temas a desarrollar.


SubProceso validacion <- validarBolilla ( tema , control)
	Definir validacion como logico;
	Definir i Como Entero;
	validacion <-Verdadero;
	si tema <> "" Entonces 					// "" no es un tema valido
		i <- 0;								// busca para saber si el tema no salio antes
		mientras i<=2 y validacion = Verdadero Hacer
			si control[i] = tema Entonces
				validacion <- falso;
			FinSi
			i<- i+1;
		FinMientras
	SiNo
		validacion <- falso;
	FinSi
FinSubProceso

Proceso Bolillero
	
	Definir i, j Como Entero; // valor de para y mientras
	Definir bolilleroUnidad, bolilleroTema como entero;
	Definir temario como cadena;
	Dimension temario[2,2];
	definir control como cadena;
	Dimension control[3]; 		//   temas 
	Definir opcion Como Caracter;
	Definir salir Como Caracter;
	Definir nombreUnidad como cadena;
	Definir nombreTema como cadena;
	Definir unidadEsValida Como Logico;
	Definir temarioCargado Como Logico;
	
	temarioCargado <- falso;
	//inicializar arreglo de temas
	Para i<-0 Hasta 1 Con Paso 1 Hacer
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			temario[i,j]<- "";
		FinPara
	FinPara
	
	Limpiar Pantalla;
	Mientras Verdadero Hacer
		Escribir "";
		Escribir "Bienvenido al simulador de bolillero";
		Escribir "";
		Escribir "Elija la opción según que desea hacer";
		Escribir "1- Cargar los temas al bolillero";
		Escribir "2- Ejecutar el bolillero";
		Leer opcion;
		// cargar arreglo de temas
		Si opcion = "1" Entonces
			//inicializar arreglo de temas
			Para i<-0 Hasta 1 Con Paso 1 Hacer
				Para j<-0 Hasta 1 Con Paso 1 Hacer
					temario[i,j]<- "";
				FinPara
			FinPara
			
			Limpiar Pantalla;
			Escribir "Cargando temario";
			Para i<-0 Hasta 1 Con Paso 1 Hacer
				
				Escribir "Ingrese el nombre de la UNIDAD ",i+1,;
				Leer nombreUnidad;
				nombreUnidad <- Concatenar(nombreUnidad,": ");
				j<- 0; 
				salir <- "n";
				
				Mientras j<= 1 y salir <> "s" Hacer
					
					Escribir "Ingrese el nombre del tema ",j+1," de la unidad ",i+1,".";
					Leer nombreTema;
					temario[i,j]<- Concatenar(nombreUnidad,nombreTema);
					Escribir "Presione tecla para continuar cargando tema a unidad " ,i+1, " de lo contrario presione s.";  //MEJORAR ESTA ACCION
					Leer salir;
					j<- j+1;
					
				FinMientras
				
			FinPara
			temarioCargado<- Verdadero;
			Escribir "Temario cargado";
			Escribir "Presione tecla para ir al menu";
			Esperar Tecla;
			Limpiar Pantalla;
		SiNo
			
			Limpiar Pantalla;
			// avisa que no tengo cargado temario
			si temarioCargado <> Verdadero Entonces
			Limpiar Pantalla;
			Escribir "ERROR, debe cargar los temas primero";
			
		SiNo
				
				//inicializar arreglo de control;
				Para i<-0 Hasta 2 Con Paso 1 Hacer
					control[i]<- "";
				FinPara
				
				Escribir "El bolillero le indicara la unidad y el tema a desarrollar en forma teórica.";
				Escribir "Presione cualquier tecla para girar el bolillero";
				Esperar Tecla;
				Limpiar Pantalla;
				unidadEsValida <- Falso;
				Escribir "Temario a desarrollar";
				Para i<-0 Hasta 2 Con Paso 1 Hacer
					unidadEsValida <- falso;
					Mientras unidadEsValida <> Verdadero Hacer
						
						bolilleroUnidad <- Aleatorio(0,1); 
						bolilleroTema <- Aleatorio(0,1);
						unidadEsValida <- validarBolilla(temario[bolilleroUnidad,bolilleroTema],control);
						
					FinMientras
					
					control[i] <- temario[bolilleroUnidad,bolilleroTema];
					Escribir i+1,"-",control[i];		//las actividades
					
				FinPara
						//agregar para que siga bolilleando sin ir a menu
			FinSi
			
		FinSi
	FinMientras
	
	
FinProceso
