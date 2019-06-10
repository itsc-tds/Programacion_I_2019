Proceso reciclaje
	//NOMBRE:JOEL MAXILIANO TROC
	//DNI:41322570
	Definir reci,materi como entero;
	materi<-4;
	Definir ki Como entero;
	Definir resu como real;
	definir recis como caracter;
	Escribir "HOLA BUEN DIA/NOCHE GRACIAS POR QUERER HACER UN CAMBIO ";
	Escribir "";
	Escribir "ANTES DE SEGUIR LE INFORMAMOS  ALGUNOS  DE LOS MATERIALES QUE NO SON RENOVABLES";
	Escribir "";
	Escribir "RECUERDE QUE HAY MATERIALES QUE NO SE PUEDEN RECICLAR";
	Escribir "";
	Escribir "PORFAVOR LEEA DETENIDAMENTE LOS SIGUIENTES EJEMPLOS";
	Escribir "";
	Escribir "PAPEL:";
	escribir "Revistas y catalogos,Selvilletas,Papel de cocina,Vasos usados";
	Escribir "";
	Escribir "VIDRIO";
	escribir"Bombillas,Tubo florecente,Lamparas,Cristales de ventanas";
	Escribir "";
	Escribir "TEXTIL:";
	Escribir "Telas que contengan pintura,combustibles";
	Escribir "";
	Escribir"PORFAVOR ANTES DE SEGUIR LE RECORDAMOS QUE LO MINIMO ES UN 1KG";
	Escribir "YA ENTENDIDO ESTO PORFAVOR ELIGA EL TIPO MATERIAL QUE VA A DEPOSITAR";
	escribir "1)...PAPEL...";
	Escribir "2)...VIDRIO...";
	Escribir "3)...TEXTIL...";
	
	
	
	leer reci;
	
	
	segun reci hacer
			
		1:
			Escribir "USTED ELIGIO PAPEL";
			materi<-3;
		2:
			escribir "USTED ELIGIO VIDRIO";
			materi<-2;
			
		3:
			Escribir "USTED ELIGIO TEXTIL";
			materi<-1;
			
		De Otro Modo:
			
			
			Escribir "INTENTE DE NUEVO";
			
			
			
			
	FinSegun
	Limpiar Pantalla;
	

	Escribir "YA SELECCIONADO EL PRODUCTO PORFAVOR INDQUE CUANTO PESA PORFAVOR";
	leer ki;
	Si ki>0 entonces  
		resu<-ki*materi;
		
	SiNo
		Escribir "INTENTE DE NUEVO";
	FinSi
	Escribir "BUENO ESTE ES EL ULTIMO PASO SOLO NOS PREGUNTABAMOS QUE LE GUSTARIA HACER";
	Escribir "1)DONAR EL DINERO A UNA ONG";
	Escribir "2)RECIBIR EL DINERO";
	leer reci;
	Segun reci Hacer
		1:
			Escribir "GRACIAS POR APOYAR A UNA ONG DE VERDAD SE LO AGRADECEMOS";
		2:
			Escribir "SU MONTO ES";
			Escribir resu;
			
		De Otro Modo:
			
	FinSegun
	
	Escribir "DESDE YA MUCHAS GRACIAS POR AYUDAR A LIMPIAR EL PLANETA";

	
	
	
	
	
	
	
	
FinProceso
