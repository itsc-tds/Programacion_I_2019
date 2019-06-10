

SubProceso res <- redondeo ( res )
res<-res*1000;
res <-trunc (res);
res<-res/1000;
FinSubProceso




Proceso Comparador
	
	
	Limpiar Pantalla;
	
	Definir UnMed,Gr1,Gr2,Gr3, Mil1, Mil2, Mil3, Ro1, Ro2, Ro3, Mt1, Mt2, Mt3, Mtpaq1, Mtpaq2, Mtpaq3, Un1, Un2, Un3 como entero;
	Definir ResGr, GrNum, PrGrNum ,PrGr1,PrGr2,PrGr3,Resprgr1,Resprgr2,Resprgr3, PrMil1, PrMil2, PrMil3, ResPrMil1,ResPrMil2,ResPrMil3, ResPrMt1, ResPrMt2, ResPrMt3, PrPaq1, PrPaq2, PrPaq3, PrUn1, PrUn2, PrUn3, RePrUn1, RePrUn2, RePrUn3, precio, Unid como real;
	Definir Opcion como cadena;
	
	
	
	Repetir
		
		
		Limpiar Pantalla;
		Escribir "Bienvenidx, soy tu Asistente en el Super"; 
		Escribir "Te ayudo a calcular qué producto conviene mas";
		Escribir "-------------------------------------------------------";
		
		
		Escribir "¿Con qué unidad se mide el producto que querés comprar?";
		Escribir "";
		Escribir "1. Gramos"; 
		Escribir "2. Mililitros";
		Escribir "3. Rollos"; 
		Escribir "4. Unidades";
		Escribir "";
		Escribir "5. Salir"; 
		
		Escribir "";
		Leer UnMed;
		si UnMed<>1 y UnMed <>2 y UnMed <>3 y UnMed <>4 y UnMed <>5 entonces;
			Escribir "Ups, opción incorrecta, volvé a intentarlo.";
			EsperarTecla;
			Opcion<-"";
		Sino
			Segun UnMed Hacer
				1:
					Gr1<-0;
					PrGr1<-0;
					
					Limpiar pantalla;
					Escribir "Asistente en el Super - GRAMOS";
					Escribir "----------------------------------------";
					Escribir "Podrás comparar hasta 3 (tres) productos";
					Escribir "";
					Escribir "¿Cuántos gramos trae el producto 1?";
					Leer Gr1; 
					Escribir "¿Qué precio tiene?";
					Leer PrGr1;
					Resprgr1<-redondeo(PrGr1/Gr1);				
					
					Escribir "¿Cuántos gramos trae el producto 2?";
					Leer Gr2; 
					Escribir "¿Qué precio tiene?";
					Leer PrGr2;
					Resprgr2<-redondeo(PrGr2/Gr2);
					
					
					Si Resprgr1 <  Resprgr2 Entonces
						Escribir "";						
						Escribir "Producto 1: $ ", Resprgr1, " por gr ", "<--- ¡CONVIENE ÉSTE!";					
						Escribir "Producto 2: $ ", Resprgr2, " por gr ";			
					SiNo
						Si Resprgr1 >  Resprgr2 Entonces
							Escribir "";
							Escribir "Producto 1: $ ", Resprgr1, " por gr "; 					
							Escribir "Producto 2: $ ", Resprgr2, " por gr ", "<--- ¡CONVIENE ÉSTE!";			
						SiNo
							Escribir "En ambos productos, el gramo tiene el mismo precio :)";
						FinSi
					FinSi
					
					Escribir "";
					Escribir "¿Agregar otro producto a la comparación? (S/N)";
					Leer Opcion;
					
					Si Opcion = "s" o Opcion = "S" Entonces 
						Limpiar pantalla;
						Escribir "Asistente en el Super - GRAMOS";
						Escribir "----------------------------------------";
						Escribir "¿Cuántos gramos trae el producto 3?";
						Leer Gr3; 
						Escribir "¿Qué precio tiene?";
						Leer PrGr3;
						Resprgr3<-redondeo(PrGr3/Gr3);
						
						Si Resprgr1 <  Resprgr2 y Resprgr1 < Resprgr3 Entonces
							Escribir "";
							Escribir "Producto 1: $ ", Resprgr1, " por gr ", "<--- ¡CONVIENE ÉSTE!";					
							Escribir "Producto 2: $ ", Resprgr2, " por gr ";	
							Escribir "Producto 3: $ ", Resprgr3, " por gr ";	
							
						SiNo
							Si Resprgr2 <  Resprgr1 y Resprgr2 < Resprgr3 Entonces
								Escribir "";
								Escribir "Producto 1: $ ", Resprgr1, " por gr ";					
								Escribir "Producto 2: $ ", Resprgr2, " por gr ", "<--- ¡CONVIENE ÉSTE!";
								Escribir "Producto 3: $ ", Resprgr3, " por gr ";	
							SiNo
								Si Resprgr3 <  Resprgr1 y Resprgr3 < Resprgr2  Entonces
									Escribir "";
									Escribir "Producto 1: $ ", Resprgr1, " por gr ";					
									Escribir "Producto 2: $ ", Resprgr2, " por gr "; 
									Escribir "Producto 3: $ ", Resprgr3, " por gr ", "<--- ¡CONVIENE ÉSTE!";	
									
								SiNo
									Escribir "En todos los productos, el gramo tiene el mismo precio :)";
								FinSi
								
							FinSi
						FinSi
						
						Escribir "";
						Escribir "Presiona cualquier tecla para volver al menú principal"; 
						Esperartecla;
						
					FinSi
					
					
				2:
					Mil1<-0;
					PrMil1<-0;
					
					Limpiar pantalla;
					Escribir "Asistente en el Super - MILILITROS";
					Escribir "----------------------------------------";
					Escribir "Podrás comparar hasta 3 (tres) productos";
					Escribir "";
					Escribir "¿Cuántos ml trae el producto 1?";
					Leer Mil1; 
					Escribir "¿Qué precio tiene?";
					Leer PrMil1;
					ResPrMil1<-redondeo(PrMil1/Mil1);				
					
					Escribir "¿Cuántos ml trae el producto 2?";
					Leer Mil2; 
					Escribir "¿Qué precio tiene?";
					Leer PrMil2;
					ResPrMil2<-redondeo(PrMil2/Mil2);
					
					
					Si ResPrMil1 <  ResPrMil2 Entonces
						Escribir "";
						Escribir "Producto 1: $ ", ResPrMil1, " por ml ", "<--- ¡CONVIENE ÉSTE!";					
						Escribir "Producto 2: $ ", ResPrMil2, " por ml "; 
					SiNo
						Si ResPrMil1 >  ResPrMil2 Entonces
							Escribir "";
							Escribir "Producto 1: $ ", ResPrMil1, " por ml "; 				
							Escribir "Producto 2: $ ", ResPrMil2, " por ml ", "<--- ¡CONVIENE ÉSTE!";	
						SiNo
							Escribir "En ambos productos, el ml tiene el mismo precio :)";
						FinSi
					FinSi
					
					Escribir "";
					Escribir "¿Agregar otro producto a la comparación? (S/N)";
					Leer Opcion;
					
					Si Opcion = "s" o Opcion = "S" Entonces 
						Limpiar pantalla;
						Escribir "Asistente en el Super - MILILITROS";
						Escribir "----------------------------------------";
						Escribir "¿Cuántos ml trae el producto 3?";
						Leer Mil3; 
						Escribir "¿Qué precio tiene?";
						Leer PrMil3;
						ResPrMil3<-redondeo(PrMil3/Mil3);
						
						Si ResPrMil1 <  ResPrMil2 y ResPrMil1 < ResPrMil3 Entonces
							Escribir "";
							Escribir "Producto 1: $ ", ResPrMil1, " por ml ", "<--- ¡CONVIENE ÉSTE!";					
							Escribir "Producto 2: $ ", ResPrMil2, " por ml "; 
							Escribir "Producto 3: $ ", ResPrMil3, " por ml ";
							
						SiNo
							Si ResPrMil2 <  ResPrMil1 y ResPrMil2 < ResPrMil3 Entonces
								Escribir "";
								Escribir "Producto 1: $ ", ResPrMil1, " por ml ";					
								Escribir "Producto 2: $ ", ResPrMil2, " por ml ",  "<--- ¡CONVIENE ÉSTE!";
								Escribir "Producto 3: $ ", ResPrMil3, " por ml ";
								
							SiNo
								Si ResPrMil3 <  ResPrMil1 y ResPrMil3 < ResPrMil2  Entonces
									Escribir "";
									Escribir "Producto 1: $ ", ResPrMil1, " por ml ";					
									Escribir "Producto 2: $ ", ResPrMil2, " por ml ";
									Escribir "Producto 3: $ ", ResPrMil3, " por ml "," <--- ¡CONVIENE ÉSTE!";
								Sino
									Escribir "En todos los productos, el ml tiene el mismo precio :)";
								FinSi
								
							FinSi
						FinSi
						
						Escribir "";
						Escribir "Presiona cualquier tecla para volver al menú principal"; 
						Esperartecla;
						
					FinSi;
					
				3:
					Ro1<-0;
					Mt1<-0;
					PrPaq1<-0;
					
					Limpiar pantalla;
					Escribir "Asistente en el Super - ROLLOS DE PAPEL";
					Escribir "----------------------------------------";
					Escribir "Podrás comparar hasta 3 (tres) productos";
					Escribir "";
					Escribir "¿Cuántos rollos trae el paquete 1?";
					Leer Ro1; 
					Escribir "¿Cuántos mts trae cada rollo?";
					Leer Mt1;
					Mtpaq1<-Ro1*Mt1;
					Escribir "¿Qué precio tiene?";
					Leer PrPaq1;					
					ResPrMt1<-redondeo(PrPaq1/Mtpaq1);
					
					
					
					Escribir "¿Cuántos rollos trae el paquete 2?";
					Leer Ro2; 
					Escribir "¿Cuántos mts trae cada rollo?";
					Leer Mt2;
					Mtpaq2<-Ro2*Mt2;
					Escribir "¿Qué precio tiene?";
					Leer PrPaq2;
					ResPrMt2<-redondeo(PrPaq2/Mtpaq2);
					
					
					
					Si ResPrMt1 <  ResPrMt2 Entonces
						Escribir "";
						Escribir "Paquete 1: $ ", ResPrMt1, " por mt ", "<--- ¡CONVIENE ÉSTE!";					
						Escribir "Paquete 2: $ ", ResPrMt2, " por mt "; 			
					SiNo
						Si ResPrMt1 >  ResPrMt2 Entonces
							Escribir "";
							Escribir "Paquete 1: $ ", ResPrMt1, " por mt ";				
							Escribir "Paquete 2: $ ", ResPrMt2, " por mt ","<--- ¡CONVIENE ÉSTE!";	
						Sino 
							Escribir "En ambos paquetes, el mt tiene el mismo precio :)";
							
							
						FinSi
					FinSi
					
					Escribir "";
					Escribir "¿Agregar otro paquete a la comparación? (S/N)";
					Leer Opcion;
					
					Si Opcion = "s" o Opcion = "S" Entonces 
						Limpiar pantalla;
						Escribir "Asistente en el Super - ROLLOS DE PAPEL";
						Escribir "----------------------------------------";
						Escribir "¿Cuántos rollos trae el paquete 3?";
						Leer Ro3; 
						Escribir "¿Cuántos mts trae cada rollo?";
						Leer Mt3;
						Mtpaq3<-Ro3*Mt3;
						Escribir "¿Qué precio tiene?";
						Leer PrPaq3;
						ResPrMt3<-redondeo(PrPaq3/Mtpaq3);
						
						Si ResPrMt1 <  ResPrMt2 y ResPrMt1 < ResPrMt3 Entonces
							Escribir "";
							Escribir "Paquete 1: $ ", ResPrMt1, " por mt ", "<--- ¡CONVIENE ÉSTE!";					
							Escribir "Paquete 2: $ ", ResPrMt2, " por mt "; 	
							Escribir "Paquete 2: $ ", ResPrMt3, " por mt "; 	
							
						SiNo
							Si ResPrMt2 <  ResPrMt1 y ResPrMt2 < ResPrMt3 Entonces
								Escribir "";
								Escribir "Paquete 1: $ ", ResPrMt1, " por mt "; 				
								Escribir "Paquete 2: $ ", ResPrMt2, " por mt ", "<--- ¡CONVIENE ÉSTE!";		
								Escribir "Paquete 3: $ ", ResPrMt3, " por mt "; 	
							SiNo
								Si ResPrMt3 <  ResPrMt1 y ResPrMt3 < ResPrMt2  Entonces
									Escribir "";
									Escribir "Paquete 1: $ ", ResPrMt1, " por mt "; 				
									Escribir "Paquete 2: $ ", ResPrMt2, " por mt ";	
									Escribir "Paquete 2: $ ", ResPrMt3, " por mt ",  "<--- ¡CONVIENE ÉSTE!";	
								Sino
									Escribir "En todos los paquetes, el mt tiene el mismo precio :)";
								FinSi
								
							FinSi
						FinSi
						
						Escribir "";
						Escribir "Presiona cualquier tecla para volver al menú principal"; 
						Esperartecla;
						
					FinSi
					
					
				4:	Un1<-0;
					PrUn1<-0;
					
					Limpiar pantalla;
					Escribir "Asistente en el Super - UNIDAD";
					Escribir "----------------------------------------";
					Escribir "Podrás comparar hasta 3 (tres) productos";
					Escribir "";
					Escribir "¿Cuántas unidades trae el producto 1?";
					Leer Un1; 
					Escribir "¿Qué precio tiene?";
					Leer PrUn1;
					RePrUn1<-redondeo(PrUn1/Un1);				
					
					Escribir "¿Cuántas unidades trae el producto 2?";
					Leer Un2; 
					Escribir "¿Qué precio tiene?";
					Leer PrUn2;
					RePrUn2<-redondeo(PrUn2/Un2);	
					
					
					Si RePrUn1 <  RePrUn2 Entonces
						Escribir "";
						Escribir "Producto 1: $ ", RePrUn1, " por unidad ", "<--- ¡CONVIENE ÉSTE!";					
						Escribir "Producto 2: $ ", RePrUn2, " por unidad "; 
									
					SiNo
						Si RePrUn1 >  RePrUn2 Entonces
							Escribir "";
							Escribir "Producto 1: $ ", RePrUn1, " por unidad ";				
							Escribir "Producto 2: $ ", RePrUn2, " por unidad ", "<--- ¡CONVIENE ÉSTE!"; 
							
						SiNo
							Escribir "En ambos productos, la unidad tiene el mismo precio :)";
						FinSi
					FinSi
					
					Escribir "";
					Escribir "¿Agregar otro producto a la comparación? (S/N)";
					Leer Opcion;
					
					Si Opcion = "s" o Opcion = "S" Entonces 
						Limpiar pantalla;
						Escribir "Asistente en el Super - UNIDAD";
						Escribir "----------------------------------------";
						Escribir "¿Cuántas unidades trae el producto 2?";
						Leer Un3; 
						Escribir "¿Qué precio tiene?";
						Leer PrUn3;
						RePrUn3<-redondeo(PrUn3/Un3);	
						
						Si RePrUn1 <  RePrUn2 y RePrUn1 < RePrUn3 Entonces
							Escribir "";
							Escribir "Producto 1: $ ", RePrUn1, " por unidad ", "<--- ¡CONVIENE ÉSTE!"; 				
							Escribir "Producto 2: $ ", RePrUn2, " por unidad "; 
							Escribir "Producto 3: $ ", RePrUn3, " por unidad ";
							
						SiNo
							Si RePrUn2 <  RePrUn1 y RePrUn2 < RePrUn3 Entonces
								Escribir "";
								Escribir "Producto 1: $ ", RePrUn1, " por unidad ";  				
								Escribir "Producto 2: $ ", RePrUn2, " por unidad ", "<--- ¡CONVIENE ÉSTE!";
								Escribir "Producto 3: $ ", RePrUn3, " por unidad ";
							SiNo
								Si RePrUn3 <  RePrUn1 y RePrUn3 < RePrUn2  Entonces
									Escribir "";
									Escribir "Producto 1: $ ", RePrUn1, " por unidad ";  				
									Escribir "Producto 2: $ ", RePrUn2, " por unidad "; 
									Escribir "Producto 3: $ ", RePrUn3, " por unidad ","<--- ¡CONVIENE ÉSTE!";
								Sino
									Escribir "En todos los productos, la unidad tiene el mismo precio :)";
								FinSi
								
							FinSi
						FinSi
						
						Escribir "";
						Escribir "Presiona cualquier tecla para volver al menú principal"; 
						Esperartecla;
						
					FinSi
					
				De Otro Modo:
					Escribir "";
					Escribir "¡Un gusto haber sido de ayuda!";
					Escribir "";
			FinSegun
		FinSi
	Hasta Que UnMed = 5;

	
	
	
FinProceso
