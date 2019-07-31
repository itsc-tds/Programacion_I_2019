
//-RAMOS MARIANO EZEQUIEL

Funcion Pago()
Repetir
	Definir num como texto;
	definir cali1 Como Entero;
	Definir cash Como Texto;
	Definir popcor1 como entero;
	Definir Tarj como entero;
	
	
		
		Repetir
		Escribir "Desea Pagarlo con: ";
		Escribir "1) Tarjeta de credito";
		Escribir "2) Efectivo          ";
		Escribir "3) Volver al Menu anterior";
		leer num;
		Hasta que num = '1' o num = '2' o num = '3'
	
	Segun ConvertirANumero(num) Hacer
		1:
			Repetir
				
				
				
					
					Escribir "DISPONIBLES";
					Escribir " ";
					Escribir "1) Mastercard";
					Escribir "2) Bancor    ";
					Escribir "3) Volver al Menu anterior";
					Leer Tarj;
					//			num<-3;
				
				
				Segun Tarj Hacer
				1:
					Escribir "Elijio Tarjeta MasterCard";
					Tarj<-3;
					num<-'3';
					Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
					Esperar 3 Segundos;
					cali1<-3;
					Popcor1<-4;
					Saludos();
					
				2:
					Escribir "Elijio Tarjeta Bancor";
					Tarj<-3;
					num<-'3';
					Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
					Esperar 3 Segundos;
					cali1<-3;
					Popcor1<-4;
					Saludos();
					
				3:
					Escribir "Volviendo al Menu anterior";
					Tarj<-3;
					
				De Otro Modo:
					Escribir "Opcion Incorrecta";
			FinSegun
			
			
			Hasta Que Tarj=3;
		2:
			Escribir "Ingrese $CASH";
			Leer Cash;
			
			
			num<-'3';
			Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
			Esperar 3 Segundos; 
			cali1<-3;
			Popcor1<-4;
			Saludos();
			
		3:
			Escribir "Volviendo al Menu anterior..";
			Esperar 1 Segundos;
			Limpiar Pantalla;
			num<-'3';
		De Otro Modo:
			Escribir "Numero Incorrecto";
	FinSegun
//	popcor1<-4;
Hasta Que num = '3'
	
FinFuncion

Funcion Saludos ()
	
	Definir exit Como Entero;
	
	Repetir
		
		exit <- 0;
		
		si exit = 0 entonces 
			
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket.";
			esperar 1 Segundos;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket.. ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket... ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket.... ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket..... ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket.";
			esperar 1 Segundos;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket.. ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket... ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket.... ";
			esperar 1 segundo;
			Limpiar Pantalla;
			Escribir "Imprimiendo Ticket..... ";
			esperar 1 segundo;
			Limpiar Pantalla;
			esperar 2 SEGUNDOS;
			Escribir "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|" ;
			Escribir "|Disfrute de Su Pelicula.........|";
			Escribir "|Retire Su Pochoclo y su Gaseosa.|";
			Escribir "|Gracias Vuelva pronto!!.........|";
			Escribir "|________________________________|";
			esperar 5 segundos;
			
			Limpiar Pantalla;
		FinSi
		exit <-1;
	hasta que exit =1
	
FinFuncion	

Algoritmo Cine
	
	
	
	//	Definir peli como entero;
	Definir peli como caracter;
	Definir cali1 como Caracter;
	Definir cali2 como Caracter;
	Definir cali3 como Caracter;
	definir cali4 como Caracter;
	Definir memo como cadena;
	Definir n como cadena;
	Definir m Como cadena;
	Definir continuar Como Entero;
	Definir monto2d Como Entero;
	Definir monto3d Como Entero;
	Definir calidad2d como texto;
	Definir calidad3d como texto;
	Definir popcor1 como texto;
	definir popcor2 como texto;
	definir popcor3 como texto;
	Definir popcor4 como texto;
	Definir monto1 Como Entero;
	Definir monto2 Como Entero;
	Definir monto3 Como entero;
	definir Grand como texto;
	definir Grand2 como texto;
	Definir Grand3 como texto;
//	definir exit como entero;
	
	continuar <- 0;
	monto2d <- 100;
	monto3d <- 150;
	
	
	
	Mientras continuar = 0 Hacer
		Repetir
			
			
			Escribir "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|";
			Escribir "|          Bienvenidos a Cine-Mania          |";
			Escribir "|      Escoja la pelicula que desea ver      |";
			Escribir "|                                            |";
			Escribir "|           PELICULAS EN ESTRENO             |";
			Escribir "| 1. Dumbo..............................<--- |";
			Escribir "| 2. La Maldicion de la Llorona.........<--- |";
			Escribir "| 3. Los Vengadores 4: La Batalla Final.<--- |";
			Escribir "| 4. Salir..............................<--- |";
			Escribir "|____________________________________________|";
			
			Leer peli;
		Hasta Que peli = '1' o peli = '2' o peli = '3' o peli = '4'
		
		Segun ConvertirANumero(peli) Hacer
			1:
				Repetir
					Repetir
//						definir Cali1 como caracter; 
						Escribir "Desea que sea";
						escribir "1) 2D .... $100";
						escribir "2) 3D .... $150";
						Escribir "3) Volver al Menu principal";
						Leer cali1;
					hasta que cali1 = '1' o cali1 = '2' o cali1 = '3'
					memo <- "Usted Eligio --> DUMBO <--";
					
					
					Segun ConvertirANumero(cali1) Hacer
						1:
							n<- " En Calidad 2D";
							calidad2d <-CONCATENAR(memo, n);
							Escribir calidad2d; 
							
								
								Repetir
//									Definir exit Como Entero;
									Repetir
										
//										Definir Popcor1 como caracter;
										
										Escribir "¿Desea Algun aperitivo?";
										Escribir "          ";
										Escribir " 1. 1 Pochoclo grande + Gaseosa grande a   $..250 ";
										Escribir " 2. 1 Pochoclo mediano + Gaseosa mediana a  $..150 ";
										Escribir " 3. 1 Pochoclo chico + Gaseosa chica a $..130 ";
										Escribir " 4. Volver al Menu anterior                   ";
										leer Popcor1;
									Hasta que Popcor1 = '1' o popcor1 = '2' o Popcor1 = '3' o popcor1 = '4'
								
									monto1 <- 250;
									monto2 <- 150;
									monto3 <- 130; 
									
									Segun ConvertirANumero(Popcor1) Hacer
										1:
											
											Grand <- "+ 1 Pochoclo grande + Gaseosa grande ";
											calidad2d <- Concatenar(calidad2d, Grand);
											Escribir calidad2d;
											Escribir "En Total son: $", monto1 + monto2d;
											Escribir " ";
											Pago();
											popcor1<-'4';
											cali1<-'3';
											
										2:
											Grand2 <- "+ 1 Pochoclo mediano + Gaseosa mediana ";
											calidad2d <- Concatenar(calidad2d, Grand2);
											Escribir calidad2d;
											Escribir "En Total Son: $", monto2 + monto2d;
											Escribir " ";
											Pago();
//											Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//											Esperar Tecla 
											cali1<-'3';
//											Saludos();
											Popcor1<-'4';
										3:
											Grand3 <- "+ 1 Pochoclo chico + Gaseosa chica ";
											calidad2d <- Concatenar(calidad2d, Grand3);
											Escribir calidad2d;
											Escribir "En Total Son: $", monto3 + monto2d;
											Escribir " ";
											Pago();
//											Escribir "Aguarde un segundo, Mientras estamos Facturando su Entrada";
//											Esperar Tecla
											cali1<-'3';
//											Saludos()
											Popcor1<-'4';
										4: 
											Escribir "Volviendo al menu anterior";
											esperar 1 Segundos;
											
											
										De Otro Modo:
											Escribir "Opcion incorrecta";
									FinSegun
									
							
//									popcor1<-4;
//									cali1<-3;
//									exit<-0;
								Hasta Que popcor1 = '4'
								
					
						2:
							m<- "En Calidad 3D";
							calidad3d <-CONCATENAR(memo, m);
							Escribir calidad3d; 
							
							repetir
								
//								Definir exit como entero;
								
								Repetir
									
									Escribir "¿Desea Algun aperitivo?";
									Escribir "          ";
									Escribir " 1. 1 Pochoclo grande + Gaseosa grande a   $..250 ";
									Escribir " 2. 1 Pochoclo mediano + Gaseosa mediana a  $..150 ";
									Escribir " 3. 1 Pochoclo chico + Gaseosa chica a $..130 ";
									Escribir " 4. Volver al Menu anterior                   ";
									leer Popcor1;
									
								Hasta que Popcor1 = '1' o Popcor1 = '2' o Popcor1 = '3' o Popcor1 = '4'
								
								
								monto1 <- 250;
								monto2 <- 150;
								monto3 <- 130; 
								
								Segun ConvertirANumero(Popcor1) Hacer
									1:
										
										Grand <- "+ 1 Pochoclo grande + Gaseosa grande ";
										calidad3d <- Concatenar(calidad3d, Grand);
										Escribir calidad3d;
										Escribir "En Total son: $", monto1 + monto3d;
										Escribir " ";
										Pago();								
									//	Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla
//										Saludos();
										cali1<-'3';
										Popcor1<-'4';
									2:
										Grand2 <- "+ 1 Pochoclo mediano + Gaseosa mediana ";
										calidad3d <- Concatenar(calidad3d, Grand2);
										Escribir calidad3d;
										Escribir "En Total Son: $", monto2 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali1<-'3';
										Popcor1<-'4';
									3:
										Grand3 <- "+ 1 Pochoclo chico + Gaseosa chica ";
										calidad3d <- Concatenar(calidad3d, Grand3);
										Escribir calidad3d;
										Escribir "En Total Son: $", monto3 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali1<-'3';
										Popcor1<-'4';
									4: 
										Escribir "Volviendo al menu anterior";
										esperar 1 Segundos;
										popcor1<-'4';
//										cali1<-3;
									De Otro Modo:
										Escribir "Opcion incorrecta";
								FinSegun
//								Popcor1<-4;
								
//								exit<-0;
								
							Hasta Que popcor1 ='4'
							
							
							
						3:
							Escribir "Volviendo al Menu anterior";
							Esperar 2 Segundos;
							Limpiar Pantalla;
						De Otro Modo:
							Escribir "Valor incorrecto";
							esperar 1 segundo;
							
					FinSegun
					
				Hasta Que cali1='3'
				
				
			2:
				Repetir
					Repetir
						//						definir Cali1 como caracter; 
						Escribir "Desea que sea";
						escribir "1) 2D .... $100";
						escribir "2) 3D .... $150";
						Escribir "3) Volver al Menu principal";
						Leer cali2;
						
					hasta que cali2 = '1' o cali2 = '2' o cali2 = '3'
					
					memo <- "Usted Eligio --> La Maldicion de la Llorona <--";
					
					
					Segun ConvertirANumero(cali2) Hacer
						1:
							n<- "En Calidad 2D";
							calidad2d <-CONCATENAR(memo, n);
							Escribir calidad2d; 
							
							repetir
//								definir exit Como Entero;
								Repetir
									
									Escribir "¿Desea Algun aperitivo?";
									Escribir "          ";
									Escribir " 1. 1 Pochoclo grande + Gaseosa grande a   $..250 ";
									Escribir " 2. 1 Pochoclo mediano + Gaseosa mediana a  $..150 ";
									Escribir " 3. 1 Pochoclo chico + Gaseosa chica a $..130 ";
									Escribir " 4. Volver al Menu anterior                   ";
									leer Popcor3;
									
								Hasta Que Popcor3 = '1' o Popcor3 = '2' o Popcor3 = '3' o Popcor3 = '4'
								
								monto1 <- 250;
								monto2 <- 150;
								monto3 <- 130; 
								
								Segun ConvertirANumero(Popcor3) Hacer
									1:
										
										Grand <- "+ 1 Pochoclo grande + Gaseosa grande ";
										calidad2d <- Concatenar(calidad2d, Grand);
										Escribir calidad2d;
										Escribir "En Total son: $", monto1 + monto2d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali2<-'3';
										popcor3<-'4';
									2:
										Grand2 <- "+ 1 Pochoclo mediano + Gaseosa mediana ";
										calidad2d <- Concatenar(calidad2d, Grand2);
										Escribir calidad2d;
										Escribir "En Total Son: $", monto2 + monto2d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali2<-'3';
										popcor3<-'4';
									3:
										Grand3 <- "+ 1 Pochoclo chico + Gaseosa chica ";
										calidad2d <- Concatenar(calidad2d, Grand3);
										Escribir calidad2d;
										Escribir "En Total Son: $", monto3 + monto2d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali2<-'3';
										popcor3<-'4';
									4: 
										Escribir "Volviendo al menu anterior";
										esperar 1 Segundos;
										popcor3<-'4';
									De Otro Modo:
										Escribir "Opcion incorrecta";
								FinSegun
//								Popcor3<-4;
//								cali2<-3;
//								exit<-0;
								 
								
							Hasta Que popcor3='4';
							
						2:
							m<- "En Calidad 3D";
							calidad3d <-CONCATENAR(memo, m);
							Escribir calidad3d; 
							
							repetir
//								definir exit Como Entero;
								Repetir
								
								Escribir "¿Desea Algun aperitivo?";
								Escribir "          ";
								Escribir " 1. 1 Pochoclo grande + Gaseosa grande a   $..250 ";
								Escribir " 2. 1 Pochoclo mediano + Gaseosa mediana a  $..150 ";
								Escribir " 3. 1 Pochoclo chico + Gaseosa chica a $..130 ";
								Escribir " 4. Volver al Menu anterior                   ";
								leer Popcor3;
								
								Hasta que Popcor3 = '1' o Popcor3 = '2' o popcor3 = '3' o popcor3 = '4'
								
								monto1 <- 250;
								monto2 <- 150;
								monto3 <- 130; 
								
								Segun ConvertirANumero(Popcor3) Hacer
									1:
										
										Grand <- "+ 1 Pochoclo grande + Gaseosa grande ";
										calidad3d <- Concatenar(calidad3d, Grand);
										Escribir calidad3d;
										Escribir "En Total son: $", monto1 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali2<-'3';
										popcor3<-'4';
									2:
										Grand2 <- "+ 1 Pochoclo mediano + Gaseosa mediana ";
										calidad3d <- Concatenar(calidad3d, Grand2);
										Escribir calidad3d;
										Escribir "En Total Son: $", monto2 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali2<-'3';
										popcor3<-'4';
									3:
										Grand3 <- "+ 1 Pochoclo chico + Gaseosa chica ";
										calidad3d <- Concatenar(calidad3d, Grand3);
										Escribir calidad3d;
										Escribir "En Total Son: $", monto3 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali2<-'3';
										popcor3<-'4';
									4: 
										Escribir "Volviendo al menu anterior";
										esperar 1 Segundos;
										popcor3<-'4';
									De Otro Modo:
										Escribir "Opcion incorrecta";
//										Popcor3<-4;
								FinSegun
//								Popcor3<-4;
//								cali2<-3;
//								exit<-0;
								
								
							Hasta Que popcor3 ='4'
							
							
							
						3:
							Escribir "Volviendo al Menu anterior";
							Esperar 2 Segundos;
							Limpiar Pantalla;
						De Otro Modo:
							Escribir "Valor Incorrecto";
							esperar 1 segundo;
							
					FinSegun
					
				Hasta Que cali2='3'
				
			3:
				Repetir
					
					Repetir
						
					 
					Escribir "Desea que sea";
					escribir "1) 2D .... $100";
					escribir "2) 3D .... $150";
					Escribir "3) Volver al Menu principal";
					Leer cali3;
					
					Hasta que cali3 = '1' o cali3 = '2' o cali3 = '3' o cali3 = '4'
					
					memo <- "Usted Eligio --> Los Vengadores 4: La Batalla Final <--";
					
					Segun ConvertirANumero(cali3) Hacer
						1:
							n<- "En Calidad 2D";
							calidad2d <-CONCATENAR(memo, n);
							Escribir calidad2d; 
							
							repetir
//								Definir exit Como Entero;
								Repetir
								Escribir "¿Desea Algun aperitivo?";
								Escribir "          ";
								Escribir " 1. 1 Pochoclo grande + Gaseosa grande a   $..250 ";
								Escribir " 2. 1 Pochoclo mediano + Gaseosa mediana a  $..150 ";
								Escribir " 3. 1 Pochoclo chico + Gaseosa chica a $..130 ";
								Escribir " 4. Volver al Menu anterior                   ";
								leer Popcor4;
								Hasta que Popcor4 = '1' o Popcor4 = '2' o popcor4 = '3' o popcor4 = '4'
								monto1 <- 250;
								monto2 <- 150;
								monto3 <- 130; 
								
								Segun ConvertirANumero(Popcor4) Hacer
									1:
										
										Grand <- "+ 1 Pochoclo grande + Gaseosa grande ";
										calidad2d <- Concatenar(calidad2d, Grand);
										Escribir calidad2d;
										Escribir "En Total son: $", monto1 + monto2d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali3<-'3';
										popcor4<-'4';
									2:
										Grand2 <- "+ 1 Pochoclo mediano + Gaseosa mediana ";
										calidad2d <- Concatenar(calidad2d, Grand2);
										Escribir calidad2d;
										Escribir "En Total Son: $", monto2 + monto2d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali3<-'3';
										popcor4<-'4';
									3:
										Grand3 <- "+ 1 Pochoclo chico + Gaseosa chica ";
										calidad2d <- Concatenar(calidad2d, Grand3);
										Escribir calidad2d;
										Escribir "En Total Son: $", monto3 + monto2d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali3<-'3';
										popcor4<-'4';
									4: 
										Escribir "Volviendo al Menu anterior";
										esperar 2 Segundos;
										popcor4<-'4';
									De Otro Modo:
										Escribir "Opcion incorrecta";
								FinSegun
//								Popcor4<-4;
//								cali3<-3;
//								exit<-0;
								 
								
							Hasta Que popcor4='4'
						2:
							m<- "En Calidad 3D";
							calidad3d <-CONCATENAR(memo, m);
							Escribir calidad3d; 
							
							repetir
//								definir exit Como Entero;
								Repetir
									
									
									Escribir "¿Desea Algun aperitivo?";
									Escribir "          ";
									Escribir " 1. 1 Pochoclo grande + Gaseosa grande a   $..250 ";
									Escribir " 2. 1 Pochoclo mediano + Gaseosa mediana a  $..150 ";
									Escribir " 3. 1 Pochoclo chico + Gaseosa chica a $..130 ";
									Escribir " 4. Volver al Menu anterior                   ";
									leer Popcor4;
									
								Hasta que Popcor4 = '1' o Popcor4 = '2' o popcor4 = '3' o popcor4 = '4'
								
								memo <- "Usted Eligio --> Los Vengadores 4: La Batalla Final <--";
								
								monto1 <- 250;
								monto2 <- 150;
								monto3 <- 130; 
								
								Segun ConvertirANumero(Popcor4) Hacer
									1:
										
										Grand <- "+ 1 Pochoclo grande + Gaseosa grande ";
										calidad3d <- Concatenar(calidad3d, Grand);
										Escribir calidad3d;
										Escribir "En Total son: $", monto1 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali3<-'3';
										popcor4<-'4';
									2:
										Grand2 <- "+ 1 Pochoclo mediano + Gaseosa mediana ";
										calidad3d <- Concatenar(calidad3d, Grand2);
										Escribir calidad3d;
										Escribir "En Total Son: $", monto2 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali3<-'3';
										popcor4<-'4';
									3:
										Grand3 <- "+ 1 Pochoclo chico + Gaseosa chica ";
										calidad3d <- Concatenar(calidad3d, Grand3);
										Escribir calidad3d;
										Escribir "En Total Son: $", monto3 + monto3d;
										Escribir " ";
										Pago();
//										Escribir "Aguarde un segundo, Mientras estamos facturando su Entrada";
//										Esperar Tecla 
//										Saludos();
										cali3<-'3';
										popcor4<-'4';
									4: 
										Escribir "Volviendo al menu anterior";
										esperar 1 Segundos;
										popcor4<-'4';
									De Otro Modo:
										Escribir "Opcion incorrecta";
								FinSegun
//								Popcor4<-4;
//								cali3<-3;
//								exit<-0;
								
								
							Hasta Que popcor4 ='4'
							
						3:
							Escribir "Volviendo al Menu anterior";
							Esperar 2 Segundos;
							Limpiar Pantalla;
						De Otro Modo:
							Escribir "Valor incorrecto";
							esperar 1 segundo;
							
					FinSegun
					
				Hasta Que cali3='3'
					
			4: 
				Escribir  "¿ Esta seguro que desea salir ? ";
				Escribir " Para Salir presione 1, de lo contrario presione 0 ";
				Leer continuar;
				Limpiar Pantalla;
			De Otro Modo:
				
				Escribir "Opcion Incorrecta";
				Escribir "Introduzca Opciones validas";
				Esperar tecla;
				Limpiar Pantalla;
		FinSegun
		
//		continuar <- 1;
	FinMientras
	
	
FinAlgoritmo
