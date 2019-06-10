SubProceso interes <- tarjeta (total)
	definir interes como real;
	interes <- total*1.10;
FinSubProceso
subproceso interes2 <- tarjeta2 (total2)
	definir interes2 como real;
	interes2 <- total2*2.10;
FinSubProceso
Proceso negocio
	definir presione, rubro,op como entero;
	definir Velon, Velacorta, velalarga, sahumerios como entero;
	definir carrito1,carrito2,carrito3,carrito4,cvelon,cvelcorta,cvellarga,csahu como entero;
	definir total,pf como real;
	carrito1<-0;
	carrito2<- 0;
	carrito3<- 0;
	carrito4 <- 0;
	cvelcorta<-0;
	cvellarga<-0;
	csahu<-0;
	cvelon <- 0;
	velon<- 135;
	velacorta <- 10;
	velalarga <- 15;
	sahumerios <- 35;
	Repetir		
		escribir " Bienvenido a nuestra plataforma";
		escribir "									";
		escribir "			Empezemos			";
		escribir "									";
		escribir " Presione [1] para ventas		";
		escribir " Presione [2] Recuento de Caja		";
		escribir " Presione [3] para salir. 			";
		leer presione; //seleccionamos Ventas
		si presione = 1 entonces 
			Repetir	
				escribir " que rubro? ";
				escribir " 	 1 = Santeria ";
				escribir " 	 2 = Dietetica ";
				escribir "	 3 = salir ";
				leer rubro; //Seleccionamos entre santeria y dietetica
				segun rubro hacer
					1:
						si rubro = 1 Entonces //elegimos santeria
							Repetir
								escribir " ingrese la Opcion ";
								escribir "							";
								escribir " 1 - Velon ";
								escribir " 2 - Vela Corta ";
								escribir " 3 - Vela larga ";
								escribir " 3 - vela larga ";
								escribir " 4 - sahumerios ";
								escribir " con cualquier otra tecla Finaliza la carga ";
								leer presione; 
								// ingresamos la cantidad de los productos, ya que tienen un valor predefinido
								Si presione = 1 Entonces
									carrito1 <- carrito1 + velon;
									cvelon <- cvelon+1 ;
								FinSi
								escribir "c/u de Velon:",cvelon,"   $: ",carrito1;
								si presione = 2 Entonces
									carrito2 <- carrito2 +velacorta;
									cvelcorta<- cvelcorta+1;
								FinSi
								escribir "c/u de velas cortas:", cvelcorta,"    $: ",carrito2;
								si presione = 3 Entonces
									carrito3 <- carrito3+velalarga;
									cvellarga<-cvellarga+1;
								FinSi
								escribir "c/u de velas largas:",cvellarga,"    $: ",carrito3;
								si presione= 4 Entonces
									carrito4 <-carrito4+sahumerios;
									csahu <- csahu +1;
								FinSi
								escribir "c/u de sahumerios:",csahu,"    $: ",carrito4;	
							Hasta Que presione <>4 y presione <>3 y presione <>2 y presione <>1;
							limpiar pantalla;
							total <- carrito1+carrito2+carrito3+carrito4;
							pf<- tarjeta(total);
							escribir " Total en Efectivo $: " , total;
							escribir " Total con tarjeta con un 10% de interes es $: " ,pf;
						FinSi
					2: // en el rubro 2, decidi meter todo adentro 
						si rubro = 2 Entonces
							definir fideos, almendras,nueces, carro1,carro2,carro3 como entero;
							definir cfideos,calmendras,cnueces como entero;
							definir total2,interes2 como real;
							carro1<-0;
							carro2<-0;
							carro3<-0;
							cfideos<-0;
							calmendras<-0;
							cnueces<-0;
							almendras <- 99;
							nueces <-80;
							fideos<- 50;
							Repetir
								escribir " Seleccione su producto";
								escribir " 1- fideos sin tacc ";
								escribir " 2- almendras ";
								escribir " 3- nueces ";
								escribir " con cualquier tecla finaliza la carga";
								leer op;
								segun op  hacer
									1:
										carro1<-carro1+fideos;
										cfideos<-cfideos+1;
										escribir "Cant. Paq. de fideos: " ,cfideos, "$:  ",carro1;
									2:
										carro2<- carro2+almendras;
										calmendras<-calmendras+1;
										escribir "Cant. Paq. de Almendras: " ,calmendras, "$:  ",carro2;
									3:	
										carro3 <-carro3+nueces;
										cnueces<-cnueces+1;
										escribir "Cant. Paq Nueces: " ,cnueces, "$:  ",carro3;
								FinSegun
								total2 <- carro1+carro2+carro3;
								interes2 <-tarjeta2 (total2);
								escribir "Precio Final en Efectivo $:  ",total2;
								escribir "Precio Final con Tarjeta $:  ",interes2;
							Hasta Que op <> 1 Y op <> 2 Y op <> 3
						FinSi
					3:
						escribir "	 3 = salir ";
				finsegun	
			Hasta Que rubro <> 1 Y rubro <> 2
		finsi
		Si presione = 2 Entonces
			repetir				
				Escribir " Seleccione [1]= Caja Santeria ";
				escribir "                                                ";
				escribir " Seleccione [2]= Caja Dietetica ";
				escribir "                                                ";
				escribir " Para salir presione Cualquier otra Tecla                                               ";
				leer presione;
				segun presione hacer
					1:
						escribir "				Recuento de Caja Santeria		";						
						escribir "                                                ";
						escribir " Cant. de Velones Vendidos: " ,cvelon,"   Dinero Recaudado $: ",carrito1;
						escribir "							";
						escribir " Cant. de Velas Cortas Vendidos: " ,cvelcorta,"   Dinero Recaudado $: ",carrito2;
						escribir "							";
						escribir " Cant. de Velas Largas Vendidos: " ,cvellarga,"   Dinero Recaudado $: ",carrito3;
						escribir "							";
						escribir " Cant. de Sahumerios Vendidos: " ,csahu,"   Dinero Recaudado $: ",carrito4;
						escribir "							";
						escribir " Dinero Recaudado ", total;
						escribir " Dinero Recaudado con tarjeta", pf;
					2:
						escribir "				Recuento de Caja Dietetica		";						
						escribir "                                                ";
						escribir " Cant. de Paq. de Fideos : " ,cfideos, "   Dinero Recaudado $: ",carro1;
						escribir "							";
						escribir " Cant. de Velas Cortas Vendidos: " ,calmendras, "   Dinero Recaudado $: ",carro2;
						escribir "							";
						escribir " Cant. de Velas Largas Vendidos: " ,cnueces, "   Dinero Recaudado $: ",carro3;
						escribir "							";
						escribir " Dinero Recaudado:  ", total2;
						escribir " Dinero Recaudado con tarjeta:  ", interes2;
					3:
				FinSegun
			Hasta Que presione <> 2;
		FinSi
		
	Hasta Que presione = 3
FinProceso
