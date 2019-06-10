//Gastón Calderón

Proceso Juego
	//Variables colores
	Definir Col como numero;
	//variable jugador
	Definir J1 como caracter;
	//Variable contador
	Definir Con como numero;
	//arreglar la comunicación
	
	
	J1<- "";
	Con <- 0;
	
	Mientras J1<> "0" Hacer
		Limpiar Pantalla;
		Escribir " 1: Formar colores";
		Escribir " 2: Hacer cuentas";
		Escribir " 3: Adivinanzas";
		Escribir " 0: Salir";
		Leer J1;
			limpiar pantalla;
			Si J1<> "1" y J1<>"2" y J1<>"3" y J1<>"0" Entonces
				esperar tecla;
			SiNo
				Segun ConvertirANumero(J1) Hacer
					1:
						Escribir "Con amarillo y azul se forma: ";
						Escribir "1: Violeta";
						Escribir "2: Verde";
						Escribir "3: Naranja";
						leer Col;
						si Col=2 entonces
							con<- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					2:
						Escribir "Resultado de 2+4/2: ";
						Leer Col;
						si col=4 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					3:
						Escribir "Un pato pone un huevo en la punta del cerro champaqui, para que lado cae? ";
						Escribir "1: Izquierda";
						Escribir "2: Derecha";
						Escribir "3: Para ningun lado";
						Leer Col;
						si col=3 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "Los patos no ponen huevo";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "La respuesta correcta es la 3";
						FinSi	
						Esperar Tecla;
				FinSegun
			FinSi
			
			Limpiar Pantalla;
			
			Si J1<> "1" y J1<>"2" y J1<>"3" y J1<>"0" Entonces
				Esperar Tecla;
			SiNo
				//Limpiar Pantalla;
				Segun ConvertirANumero(J1) Hacer
					1:
						Escribir "Con amarillo y rojo se forma: ";
						Escribir "1: Violeta";
						Escribir "2: Verde";
						Escribir "3: Naranja";
						leer Col;
						si Col=3 entonces
							con<- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					2:
						Escribir "Resultado de 2+4*2: ";
						Leer Col;
						si col=10 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					3:
						Escribir "Un tren electrico viaja hacia el norte. ¿hacia donde va el humo?  ";
						Escribir "1: Ningun lado";
						Escribir "2: Sur";
						Escribir "3: Este";
						Leer Col;
						si col=1 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "Es un tren electrico, no emana humo";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "La respuesta correcta es la 1";
							Escribir "";
						FinSi
						Esperar Tecla;
				FinSegun
			FinSi
			
			Limpiar Pantalla;
			
			Si J1<> "1" y J1<>"2" y J1<>"3" y J1<>"0" Entonces
				Esperar Tecla;
			SiNo
				//Limpiar Pantalla;
				Segun ConvertirANumero(J1) Hacer
					1:
						Escribir "Con rojo y azul se forma: ";
						Escribir "1: Violeta";
						Escribir "2: Verde";
						Escribir "3: Naranja";
						leer Col;
						si Col=1 entonces
							con<- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
						esperar tecla;
						Limpiar Pantalla;
						Escribir "Respuestas correctas: ", con;
						Escribir "";
						escribir "Pulsa enter para ingresar al nivel 2";
						Esperar Tecla;
					2:
						Escribir "Resultado de 3+5*2*1: ";
						Leer Col;
						si col=13 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
						Limpiar Pantalla;
						Escribir "Respuestas correctas: ", con;
						Escribir "";
						escribir "Pulsa enter para ingresar al nivel 2";
						Esperar Tecla;
					3:
						Escribir "¿Que es algo y nada a la vez?";
						Escribir "1: El aire";
						Escribir "2: Un pez";
						Escribir "3: El agua";
						Leer Col;
						si col=2 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "La respuesta correcta es la 2";
							Escribir "";
						FinSi
						Esperar Tecla;
						Limpiar Pantalla;
						Escribir "El puntaje final es: ", con;
						Escribir "";
						escribir "Pulsa enter para ingresar al nivel 2";
						Esperar Tecla;
				FinSegun
			FinSi
			
			//Nivel 2
			Limpiar Pantalla;
			
			Si J1<> "1" y J1<>"2" y J1<>"3" y J1<>"0" Entonces
				Esperar Tecla;
			SiNo
				//Limpiar Pantalla;
				Segun ConvertirANumero(J1) Hacer
					1:
						Escribir "Con rojo, verde y azul se forma: ";
						Escribir "1: Violeta";
						Escribir "2: blanco";
						Escribir "3: Naranja";
						leer Col;
						si Col=2 entonces
							con<- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					2:
						Escribir "Resultado de 10+5*0 : ";
						Leer Col;
						si col=10 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					3:
						Escribir "Como meto un elefante dentro de una heladera ";
						Escribir "1: No entra";
						Escribir "2: Con una heladera gigante";
						Escribir "3: Meto el elefante";
						Leer Col;
						si col=3 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "Abro la puerta y meto el elefante";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "La respuesta correcta es la 3";
							Escribir "";
						FinSi
						Esperar Tecla;
				FinSegun
			FinSi
			
			Limpiar Pantalla;
			
			Si J1<> "1" y J1<>"2" y J1<>"3" y J1<>"0" Entonces
				Esperar Tecla;
			SiNo
				//Limpiar Pantalla;
				Segun ConvertirANumero(J1) Hacer
					1:
						Escribir "Con verde y azul se forma: ";
						Escribir "1: Verde claro";
						Escribir "2: Marron";
						Escribir "3: Rosa";
						leer Col;
						si Col=3 entonces
							con<- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					2:
						Escribir "Resultado de 7*0+21/7+8*4: ";
						Leer Col;
						si col=35 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
					3:
						Escribir " El rey leon hace una fiesta e invita a todos los animales de la selva. ¿Quien falta?";
						Escribir "1: Ninguno";
						Escribir "2: un elefante";
						Escribir "3: El leon";
						Leer Col;
						si col=2 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "El elefante que esta en la heladera";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "la respuesta correcta es la 2";
							Escribir "";
						FinSi
						Esperar Tecla;
				FinSegun
			FinSi
			
			Limpiar Pantalla;
			
			Si J1<> "1" y J1<>"2" y J1<>"3" y J1<>"0" Entonces
				Esperar Tecla;
			SiNo
				//Limpiar Pantalla;
				Segun ConvertirANumero(J1) Hacer
					1:
						Escribir "Con Naranja y azul se forma: ";
						Escribir "1: Rojo";
						Escribir "2: Marron";
						Escribir "3: Violeta";
						leer Col;
						si Col=2 entonces
							con<- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
						Limpiar Pantalla;
						Escribir "El puntaje final es: ", con;
						Escribir "";
						Esperar Tecla;
					2:
						Escribir "Resultado de 161/7+72/9: ";
						Leer Col;
						si col=31 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "";
						FinSi
						Limpiar Pantalla;
						Escribir "El puntaje final es: ", con;
						Escribir "";
						Esperar Tecla;
					3:
						Escribir "Un hombre tiene que cruzar un rio lleno de cocodrilos. ¿como cruza? ";
						Escribir "1: Nadando";
						Escribir "2: Con un bote";
						Escribir "3: No puede cruzar";
						Leer Col;
						si col=1 Entonces
							con <- con+1;
							escribir "Respuesta correcta";
							Escribir "Nadando ya que los cocodrilos estan en la fiesta del león";
							Escribir "";
						sino 
							Escribir "Respuesta incorrecta";
							Escribir "La respuesta correcta es la 1";
							Escribir "";
						FinSi
						Esperar Tecla;
						Limpiar Pantalla;
						Escribir "El puntaje final es: ", con;
						Escribir "";
						Esperar Tecla;
				FinSegun
			FinSi
				
	FinMientras
	
FinProceso
