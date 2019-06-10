Algoritmo test
	Definir edad,b,acum,res,entro,var, options,option, inicio como entero;
	definir volverAjugar, volverAlMenu como entero;
	definir nombre, admininicio,coninicio, usuario, contrasenia como cadena;
	
	acum <- 0;
	var <- 0;
	volverAjugar <- 1;
	volverAlMenu <- 0;
	b<-0;
	nombre<-"miguel";
	entro<-0;
    admininicio<-"miguel";
	coninicio<-"miki123";
	inicio<-0;
	res<-1;
	Mientras 1>b Hacer
	
	Mientras inicio=0 Hacer
	escribir "";
	escribir "";
	Escribir "          == BIENVENIDO ===== LOGIN INICIO ======= ";
	escribir "         ||               =========              || ";          
	escribir "         ||                Usuario               ||";
	escribir "         ||               =========              ||";
	escribir "         ||                                      ||";
	escribir "         ||               ==========             ||";
	Escribir "         ||               Contraseña             ||";
	escribir "         ||               ==========             ||";
	Escribir "          =========================================";
	
	leer usuario;
	leer contrasenia;
	Si admininicio=usuario  Entonces
	
	Si coninicio=contrasenia Entonces
	escribir "ingreso exitoso";
	inicio<-1;	
SiNo
	Limpiar Pantalla;
	escribir "la contraseña no es correcta";
FinSi
	
	
SiNo
	Limpiar Pantalla;
	Escribir "el nombre no es correcto";
	
	
	
FinSi
FinMientras
	Limpiar Pantalla;
	escribir "Cual es su nombre?";
	Leer nombre;
	Escribir "Nombre: ", nombre; 
	escribir"si es correcto precione 1 de lo contrario precione 0";
	leer b;
	Si 1>b Entonces
	b <- 0;
	
	
	
FinSi
	
si b>0 entonces 

	
FinSi
FinMientras
	Repetir  
		
	
		

	
		
		Limpiar Pantalla;
		Escribir "                          MENU";
		escribir "         .....................................";
		escribir "         . 1) QUE SABES SOBRE PROGRAMACION?  .";
		escribir "         . 2)        VER ESTADISTICAS        .";
		escribir "         . 3)              SALIR             .";
		escribir "         .....................................";
		
		leer options;
		
		
		
		Segun options Hacer
		
			1:
		
				volverAlMenu<-0;
				Mientras volverAlMenu=0 Hacer
					
					Limpiar Pantalla;
					
					Escribir "================================================";
					Escribir "|| Bienvenido a ¿QUE SABES SOBRE PROGRAMACION? ||";                
					Escribir "================================================";
					
					Escribir "";
					Escribir "                    COMO JUGAR?";
					Escribir "se dan dos preguntas tenes que contestar con una";
					escribir "de las dos respuestas, al fuinalizar se da el resultado";
					
					Escribir "     =========================================";
					Escribir "";
					Escribir "==========";
					Escribir "|| ENTER ||";                
					Escribir "==========";
					Esperar Tecla;
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si entro>0 Entonces
							
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						acum <- 0;
						Escribir "";

						Escribir "";	
						Escribir "";	
						Escribir "";
					    Escribir "              ¿PseInt fue creado en Argentina?  "; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)  Verdadero  ||          || 2)      Falso   ||";                
						Escribir "      ===================           ====================";
						
						
						;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "            ¿una variable guarda un valor?           "; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)  Verdadero  ||          || 2)      Falso   ||";                
						Escribir "      ===================           ====================";
						leer res;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3 ;// se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;	
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "     ¿En que año se publico la primer version de HTML?    "; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)    1997     ||          || 2)      1989    ||";                
						Escribir "      ===================           ====================";                  
						
						leer res;
						// empiezasi para comparar si se cumple
						Si res=2 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=1 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "       ¿Fortran es el primer lenguaje de programacion?                    "; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)  Verdadero  ||          || 2)      Falso   ||";                
						Escribir "      ===================           ====================";
						leer res;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "            Fortran saco su primer version en 1960     "; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)  Verdadero  ||          || 2)      Falso   ||";                
						Escribir "      ===================           ====================";
						leer res;
						// empiezasi para comparar si se cumple
						Si res=2 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=1 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir " Actualmente Java es el lenguaje mas popular segun encuestas"; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)  Verdadero  ||          || 2)      Falso   ||";                
						Escribir "      ===================           ====================";
						leer res;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "         ¿En que año se creo el primer videojuego?"; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)    1962    ||          || 2)      1970     ||";                
						Escribir "      ===================           ====================";
						
						leer res;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "                ¿Quien creo Apple?"; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1) Steve Jobs  ||          || 2) Bill Gates   ||";                
						Escribir "      ===================           ====================";
						
						leer res;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "                 ¿Cuando se creo Android?"; 
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)    2006     ||          || 2)     2008     ||";                
						Escribir "      ===================           ====================";
						
						leer res;
						// empiezasi para comparar si se cumple
						Si res=2 Entonces
							acum <- acum + 1;
							var<-3; // se cambia la variable para salir del bucle 
						FinSi
						Si res=1 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras				
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
					
					
					
					
					
					limpiar pantalla;
					
					
					
					
					Mientras var<1 Hacer
						limpiar pantalla;
						Si 0<entro Entonces
							escribir "vuelva a ingresar un dato valido";
							
						FinSi
						Escribir "";
						
						Escribir "";	
						Escribir "";	
						Escribir "";
						Escribir "                ¿Cuando se creo Facebook?"; 
						Escribir "";
						Escribir "";
						Escribir "      ===================           ====================";
						Escribir "      || 1)    2004     ||          || 2)     2005     ||";                
						Escribir "      ===================           ====================";
						
						leer res;
						// empiezasi para comparar si se cumple
						Si res=1 Entonces
							acum <- acum + 1;
							var<-3;  // se cambia la variable para salir del bucle 
						FinSi
						Si res=2 Entonces
							acum <- acum;
							var<-3;
							
							
						FinSi
						
						
						
						entro<-entro+1; // se suma para informar que vuelva a escribir el valor 
						
					FinMientras
					var<-0; // vuelve a ser 1 para poder entrar al mientras 
					entro<-0;
					
				
			
					
				
				
					Escribir "";
					inicio<-0;
					Mientras inicio=0 Hacer //reuso variable
						
					
				Limpiar Pantalla;
				escribir "acertaste: ", acum, " preguntas";
				escribir "tu promedio es: " ,(acum*100)/10 ,"%";
				escribir "        ";
				escribir "        ", nombre, " que quieres hacer ahora?";
				Escribir "             1 para volver a jugar";
				Escribir "             2 salir";
				
				leer volverAjugar;
				
				Si volverAjugar=1 Entonces
					
					
					acum<-0;
					inicio<-1;
					
				FinSi
				
				Si volverAjugar=2 Entonces
					volverAlMenu<-1;
					inicio<-1;
			
				FinSi
				Si volverAjugar>2 Entonces
					Escribir "option no valida";
				
				FinSi
			FinMientras
			FinMientras
		
		2:
			si acum=0 entonces 
				escribir "debes jugar primero para tener estadisticas";
				escribir "enter";
			sino 
				escribir nombre, " En la ultima jugada obtuviste un ", acum;
				escribir "enter";
			FinSi
			
Esperar Tecla;
3:
	escribir "gracias por usar el programa";
	
De Otro Modo:
	escribir "Ingrese un valor correcto";
FinSegun
	
Hasta Que options=3

	
FinAlgoritmo
