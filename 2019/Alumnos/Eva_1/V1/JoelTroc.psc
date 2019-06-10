Proceso reciclaje
	Definir reci,materi como entero;
	materi<-4;
	Definir ki Como entero;
	Definir resu como real;
	definir recis como caracter;
	Escribir "HOLA BUEN DIA/NOCHE GRACIAS POR QUERER HACER UN CAMBIO";
	escribir "PORFAVOR PRESIONE LA TECLA ENTER PARA CONTINUAR";
	leer recis;
	Limpiar Pantalla;
	Escribir "ANTES DE SEGUIR LE INFORMAMOS  ALGUNOS  DE LOS MATERIALES QUE NO SON RENOVABLES";
	leer recis;
	Limpiar Pantalla;
	Escribir "RECUERDE QUE HAY MATERIALES QUE NO SE PUEDEN RECICLAR";
	leer recis;
	Escribir "";
	Limpiar Pantalla;
	Escribir "PORFAVOR LEEA DETENIDAMENTE LOS SIGUIENTES EJEMPLOS";
	leer recis;
	Escribir "";
	Escribir "PAPEL:";
	escribir "Revistas y catalogos,Selvilletas,Papel de cocina,Vasos usados";
	leer recis;
	Escribir "";
	Escribir "VIDRIO";
	escribir"Bombillas,Tubo florecente,Lamparas,Cristales de ventanas";
	leer recis;
	Escribir "";
	Escribir "TEXTIL:";
	Escribir "Telas que contengan pintura,combustibles";
	leer recis;
	Limpiar Pantalla;
	Escribir "";
	Escribir"PORFAVOR ANTES DE SEGUIR LE RECORDAMOS QUE LO MINIMO ES UN 1KG";
	Escribir "YA ENTENDIDO ESTO PORFAVOR ELIGA EL TIPO MATERIAL QUE VA A DEPOSITAR";
	leer recis;
	escribir "1)...PAPEL...";
	Escribir "2)...VIDRIO...";
	Escribir "3)...TEXTIL...";
	
	
	
	leer reci;
	
	
	segun reci hacer
			
		1:
			Escribir "USTED ELIGIO PAPEL";
			
		2:
			escribir "USTED ELIGIO VIDRIO";
			
			
		3:
			Escribir "USTED ELIGIO TEXTIL";
			
			
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
	
	   
	Escribir "SU MONTO ES:",resu;
	Escribir "DESDE YA MUCHAS GRACIAS POR AYUDAR A LIMPIAR EL PLANETA";
	
	
	
	
	
	
	
	
	
FinProceso
