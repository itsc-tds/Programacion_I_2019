
Subproceso animacion (mensaje)
	definir p como cadena;
	definir encadenado como cadena;
	
	p <- "##";
	encadenado <- "";
	
	Repetir
		escribir mensaje;
		escribir "        __________  ";
		escribir "        ", encadenado ;
		escribir "        ����������  ";
		encadenado <- concatenar(encadenado, p);
		esperar 1 Segundos;
		Limpiar Pantalla;
		
	Hasta Que longitud(encadenado) = 10 ;
FinSubProceso

Subproceso animacioncorto (mensaje)
	definir p como cadena;
	definir encadenado como cadena;
	
	p <- "###";
	encadenado <- "";
	
	Repetir
		escribir mensaje;
		escribir "        _________  ";
		escribir "        ", encadenado ;
		escribir "        ���������  ";
		encadenado <- concatenar(encadenado, p);
		esperar 1 Segundos;
		Limpiar Pantalla;
		
	Hasta Que longitud(encadenado) = 9 ;
FinSubProceso

SubProceso nivel <- LimiteNivel
	definir nivel Como Entero;
	
	Escribir "Ingrese nivel (litros) mostrado en el medidor: ";
	Escribir "    (CAPACIDAD DEL TANQUE 100L M�X.) ";

	Leer nivel;
	
	si nivel < 0 O nivel > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			Escribir " NIVEL DEL TANQUE POR DEBAJO DEL M�NIMO";
	        Escribir  "     O POR ENCIMA DEL M�XIMO";
			Escribir " FALLA EN EL MEDIDOR. REVISE URGENTE!";
			esperar 9 segundos;
			Limpiar pantalla;
			escribir "Ingrese nivel (litros) mostrado en el medidor: ";
			escribir "    (CAPACIDAD DEL TANQUE 100L M�X.) ";
			Leer nivel;
			
		Hasta Que nivel >= 0 Y nivel <= 100
	FinSi
FinSubProceso

SubProceso nivelDeseo <- LimiteNivelDeseo
	definir nivelDeseo Como Entero;
	Escribir "Ingrese nivel en litros que desea en tanque:";
	Escribir "    (CAPACIDAD DEL TANQUE 100L M�X.) ";
	Leer nivelDeseo;
	
	si nivelDeseo < 0 O nivelDeseo > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir "   NIVEL DESEADO POR DEBAJO DEL M�NIMO";
			escribir " O POR ENCIMA DEL M�XIMO. PRESTE ATENCI�N!";
			esperar 9 segundos;
			Limpiar pantalla;
			Escribir "Ingrese nivel en litros que desea en tanque:";
			Escribir "    (CAPACIDAD DEL TANQUE 100L M�X.) ";
			Leer nivelDeseo;
			
		Hasta Que nivelDeseo >= 0 Y nivelDeseo <= 100
		
	FinSi
	
FinSubProceso


SubProceso temperatura <- LimiteTemp
	definir temperatura Como Entero;
	definir mensaje como cadena;
	
    Escribir "Ingrese temperatura (�C) mostrada en el term�metro:";
	Leer temperatura;
	
	si temperatura > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir "  TEMPERATURA POR ENCIMA DE 100�C";
			esperar 3 segundos;
			Limpiar Pantalla;
			mensaje <- "VENTEO EQUILIBRANDO TEMPERATURA A 100�C ";
			animacion(mensaje);
			Repetir
				temperatura <- temperatura - 1;
			Hasta Que temperatura = 100
			
		Hasta Que temperatura <= 100
	FinSi
	
FinSubProceso

SubProceso temperaturaDeseo <- LimiteTempDeseo
	definir temperaturaDeseo Como Entero;
	Escribir "Ingrese temperatura (�C) deseada ";
	Leer temperaturaDeseo;
	
	si temperaturaDeseo > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir " TEMPERATURA INGRESADA POR ENCIMA DE 100�C";
			escribir "        RESISTENCIA NO OPERABLE ";
			escribir "";
			esperar 6 segundos;
			Limpiar Pantalla;
			escribir "Ingrese temperatura (�C) deseada:  ";
			Leer temperaturaDeseo;
			
		Hasta Que temperaturaDeseo <= 100
	FinSi
FinSubProceso


SubProceso estado (nivel, nivelDeseo, temperatura, temperaturaDeseo)
	Escribir nivel, " LITROS ACTUALES";
	Escribir nivelDeseo, " LITROS A AJUSTAR";
	
	Escribir "" ;
	
	Escribir temperatura," �C ACTUALES";
	Escribir temperaturaDeseo," �C A AJUSTAR";
	
	Escribir "";
	Escribir "Presione cualquier tecla para continuar.";
	Esperar tecla;
FinSubProceso


SubProceso estadofinal (nivel, temperatura)
	Escribir " ESTADO TERMOTANQUE: ", nivel, " L,  " ,temperatura, " �C";
	
	esperar 1 segundos;
	Escribir "";
	Escribir "";
	Escribir "Presione tecla para volver al men�";
	Esperar tecla;
	
	Limpiar Pantalla;
FinSubProceso


Proceso termosolarInteligente
	definir nivel como entero;
	definir nivelDeseo como entero;
	definir temperatura como entero;
	definir temperaturaDeseo como entero;
	definir txt como entero;
	definir mensaje como cadena;
	
	//inicio
	Limpiar pantalla;
	Escribir "    BIENVENIDO!";
	Esperar 1 Segundos;
	Limpiar Pantalla;
	Escribir "   TERMOSOLAR INTELIGENTE";
	Esperar 1 segundos;
	Limpiar pantalla;
	Escribir "ATENCI�N: Software dise�ado para operar";
	Escribir "�nicamente con N�MEROS.";
	Escribir "";
    Escribir "SI admite valores negativos.";
	Escribir "NO admite valores decimales ni operadores.";
	Escribir "";
	Escribir "Pulse cualquier tecla para continuar..";
	
	Esperar Tecla;
	
	Limpiar Pantalla;
	mensaje <- "   TERMOSOLAR INTELIGENTE";
	animacioncorto(mensaje);
	
	Repetir
		Limpiar Pantalla;
		
		Escribir " MEN� INICIAL ";
		Escribir "";
		Escribir "Elija modo de operaci�n:";
		Escribir "01- Por defecto";
		Escribir "02- Adaptable";
		Escribir "03- Manual adaptable";
		Escribir "04- Ayuda/Instrucciones";
		Escribir "";
		Escribir "00- Salir";
		
		Repetir
			
			Leer txt;
			Limpiar Pantalla;
			Escribir " MEN� INICIAL ";
			Escribir "";
			Escribir "Elija modo de operaci�n:";
			Escribir "01- Por defecto";
			Escribir "02- Adaptable";
			Escribir "03- Manual adaptable";
			Escribir "04- Ayuda/Instrucciones";
			Escribir "";
			Escribir "00- Salir";
			Escribir "";
			Escribir "OPCI�N ERR�NEA!! PRESTE ATENCI�N Y VUELVA A INGRESAR.";
		 
		 
		Hasta Que txt = 1 O txt = 2 O txt = 3 O txt = 4 O txt = 0 
		
		Limpiar pantalla;
		
		
		Segun txt Hacer
			1: //POR DEFECTO - AUTOMATICO
				//valor del flotante
				
				nivel <- LimiteNivel;
				
				Limpiar pantalla;
				
				//valor del termometro
				
				temperatura <- LimiteTemp;
				
				Limpiar Pantalla;
				
				Escribir nivel, " LITROS";
				Escribir temperatura, " �C";
				
				Esperar 4 segundos;
				
				Limpiar pantalla;
				
				Si nivel = 100 Entonces
					Escribir " EL TANQUE EST� NIVELADO!";
					Esperar 6 segundos;
					Limpiar pantalla;
				FinSi
				
				
				Si nivel < 100 Entonces		
					Escribir "    BAJO NIVEL DE AGUA ";
					Escribir "";
					Esperar 3 segundos;
					limpiar pantalla;
					mensaje <- "  ABRIENDO LLAVE DE LLENADO.. ";
					animacion(mensaje);
					Repetir
						nivel <- nivel + 1;
					Hasta Que nivel = 100
					Limpiar Pantalla;
					Escribir " TANQUE NIVELADO CON �XITO! ", nivel, " LITROS.";
					Esperar 6 segundos;
				FinSi
				
				Limpiar Pantalla;
				
				Si temperatura = 65 Entonces
					Escribir " AGUA CALIENTE A 65�C, TEMPERATURA JUSTA.";
					Esperar 6 segundos;
					Limpiar pantalla;
				FinSi
				
				Si temperatura > 65 Entonces
					Escribir "    AGUA POR ENCIMA DE 65�C";
					Escribir "";
					Esperar 3 segundos;
					limpiar pantalla;
					mensaje <- " ABRIENDO MEZCLADOR DE AGUA FR�A..";
					animacion(mensaje);
					Repetir
						temperatura <- temperatura - 1;
					Hasta Que temperatura = 65
					Limpiar pantalla;	
					Escribir " AGUA ENFRIADA CON �XITO! ", temperatura, " �C.";
					Esperar 6 segundos;
				FinSi
				
				
				Si temperatura < 65 Entonces
					Escribir "   AGUA POR DEBAJO DE 65�C";
					Escribir "";
					Esperar 3 segundos;
					limpiar pantalla;
					mensaje <- "  RESISTENCIA CALENTANDO AGUA..";
					animacion(mensaje);
					Repetir
						temperatura <- temperatura + 1;
					Hasta Que temperatura = 65
					Limpiar pantalla;	
					Escribir " AGUA CALENTADA CON �XITO! ", temperatura, " �C";
					Esperar 6 segundos;
				FinSi
				
				Limpiar Pantalla;
				
				estadofinal(nivel, temperatura);
				
			2: //ADAPTABLE AUTOMATICO
				//valor del flotante
				nivel <- LimiteNivel;
				
				Limpiar pantalla;
				
				//nivel a ajustar
				nivelDeseo <- LimiteNivelDeseo;
				
				Limpiar pantalla;
				
				//valor del termometro
				temperatura <- LimiteTemp;
				
				Limpiar Pantalla;
				
				temperaturaDeseo <- LimiteTempDeseo;
				
				Limpiar Pantalla;
				
				estado(nivel, nivelDeseo, temperatura, temperaturaDeseo);
				
				Limpiar Pantalla;
				
				
				Si nivel = nivelDeseo Entonces
					Escribir " EL TANQUE EST� NIVELADO";
					Esperar 6 segundos;
					Limpiar pantalla;
				FinSi
				
				Si nivel > nivelDeseo Entonces
					escribir " NIVEL POR ENCIMA DEL DESEADO";
					escribir "";
					esperar 3 segundos;
					limpiar pantalla;
					mensaje <- " ACCIONANDO LLAVE DE VACIADO! ";
					animacion(mensaje);
					Repetir
						nivel <- nivel -1;
					Hasta Que nivel = nivelDeseo
					Limpiar pantalla;	
					Escribir " TANQUE NIVELADO CON �XITO! ", nivel, " LITROS.";
					Esperar 6 segundos;
				FinSi
				
				
				Si nivel < nivelDeseo Entonces		
					escribir " NIVEL POR DEBAJO DEL DESEADO";
					escribir "";
					esperar 3 segundos;
					limpiar pantalla;
					mensaje <- "  ABRIENDO LLAVE DE LLENADO! ";
					animacion(mensaje);
					Repetir
						nivel <- nivel + 1;
					Hasta Que nivel = nivelDeseo O nivel = 100
					Limpiar Pantalla;
					Escribir " TANQUE NIVELADO CON �XITO! ", nivel, " LITROS.";
					Esperar 6 segundos;
				FinSi
				
				
				Limpiar pantalla;
				
				Esperar 1 segundos;
				
				
				Si temperatura = temperaturaDeseo Entonces
					Escribir " AGUA CON TEMPERATURA EQUILIBRADA!";
					Esperar 5 segundos;
					Limpiar pantalla;
				FinSi
				
				Si temperatura > temperaturaDeseo Entonces
					Escribir " TEMPERATURA POR ENCIMA DE LA DESEADA"; 
					Escribir "";
					esperar 3 segundos;
					limpiar pantalla;
					mensaje <- " ABRIENDO MEZCLADOR DE AGUA FR�A!";
					animacion(mensaje);
					Repetir
						temperatura <- temperatura - 1;
					Hasta Que temperatura = temperaturaDeseo
					Limpiar pantalla;	
					Escribir " AGUA ENFRIADA CON �XITO! ", temperatura, " �C";
					Esperar 6 segundos;
				FinSi
				
				
				Si temperatura < temperaturaDeseo Entonces
					Escribir " TEMPERATURA POR DEBAJO DE LA DESEADA"; 
					Escribir "";
					esperar 3 segundos;
					limpiar pantalla;
					mensaje <- " RESISTENCIA CALENTANDO AGUA..";
					animacion(mensaje);
					Repetir
						temperatura <- temperatura + 1;
					Hasta Que temperatura = temperaturaDeseo
					Limpiar pantalla;	
					Escribir " AGUA CALENTADA CON �XITO! ", temperatura, " �C";
					Esperar 6 segundos;
				FinSi
				
				
				Limpiar pantalla;
				
				estadofinal(nivel, temperatura);
				
			3: //MANUAL ADAPTABLE
				//valor del flotante
				nivel <- LimiteNivel;
				
				Limpiar pantalla;
				
				//nivel deseado
				nivelDeseo <- LimiteNivelDeseo;
				
				Limpiar pantalla;
				
				//valor del termometro
				temperatura <- LimiteTemp;
				
				Limpiar Pantalla;
				
				//temperatura deseada
				temperaturaDeseo <- LimiteTempDeseo;
				
				Limpiar Pantalla;
				
				estado(nivel, nivelDeseo, temperatura, temperaturaDeseo);
				
				Limpiar Pantalla;
				
				Si nivel = nivelDeseo Entonces
					Escribir "   EL TANQUE EST� NIVELADO!";
					Escribir " SALT�ESE EL CONTROL DE NIVEL";
				FinSi
				
				Si nivel > nivelDeseo Entonces
					escribir " NIVEL POR ENCIMA DEL DESEADO";
					Escribir "   ACCIONE LLAVE DE VACIADO! " ;
				FinSi
				
				
				Si nivel < nivelDeseo Entonces						
					escribir " NIVEL POR DEBAJO DEL DESEADO";
					Escribir "   ACCIONE LLAVE DE LLENADO! " ;
				FinSi
				
				esperar 1 segundos;
				Escribir "";
				Escribir "Presione cualquier tecla para continuar.";
				Esperar tecla;
				
				Limpiar pantalla;
				
				//control de nivel
				Limpiar Pantalla;
				Escribir "CONTROL DE NIVEL";
				Escribir " ";
				Escribir "01- Abrir llave de llenado";
				Escribir "02- Abrir llave de vaciado";
				Escribir "03 - Saltar control de nivel";
				
				repetir
					
					Leer txt;
					Limpiar Pantalla;
					Escribir "CONTROL DE NIVEL";
					Escribir " ";
					Escribir "01- Abrir llave de llenado";
					Escribir "02- Abrir llave de vaciado";
					Escribir "03 - Saltar control de nivel";
					Escribir "";
					Escribir " OPCI�N ERR�NEA!! PRESTE ATENCI�N.";
					
				Hasta Que txt = 1 O txt = 2 O txt = 3
				
				Limpiar pantalla;
				Mientras nivel = nivelDeseo Y txt = 1 Hacer
					Escribir "          TANQUE NIVELADO.";
					Escribir "    NO DEBE ABRIR NINGUNA LLAVE!";
					Esperar 7 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE NIVEL";
						Escribir " ";
						Escribir "01- Abrir llave de llenado";
						Escribir "02- Abrir llave de vaciado";
						Escribir "03 - Saltar control de nivel";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 3 O txt = 1 O txt = 2
				FinMientras
				
				Mientras nivel = nivelDeseo Y txt = 2 Hacer
					Escribir "          TANQUE NIVELADO.";
					Escribir "    NO DEBE ABRIR NINGUNA LLAVE!";
					Esperar 7 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE NIVEL";
						Escribir " ";
						Escribir "01- Abrir llave de llenado";
						Escribir "02- Abrir llave de vaciado";
						Escribir "03 - Saltar control de nivel";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 3 O txt = 1 O txt = 2
					
				FinMientras
				
				
				Si nivel = nivelDeseo Y txt = 3 Entonces
					Esperar 1 segundo;
					Limpiar pantalla;
				FinSi
				
				
				Mientras nivel < nivelDeseo Y txt = 2 Hacer
					Escribir "      IMPOSIBLE NIVELAR AGUA.";
					Escribir "  UD. NO DEBE ABRIR LLAVE DE VACIADO";
					Escribir "      ABRA LLAVE DE LLENADO!";
					Esperar 9 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE NIVEL";
						Escribir " ";
						Escribir "01- Abrir llave de llenado";
						Escribir "02- Abrir llave de vaciado";
						Escribir "03 - Saltar control de nivel";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 1 O txt = 3 O txt = 2
				FinMientras
				
				Si  nivel < nivelDeseo Y txt = 1 Entonces
					limpiar pantalla;
					mensaje <- "    NIVELANDO TANQUE..";
					animacion(mensaje);
					Repetir
						nivel <- nivel + 1;
					Hasta Que nivel = nivelDeseo
					Limpiar pantalla;	
					Escribir " TANQUE NIVELADO CON �XITO! ", nivel, " LITROS.";
					Escribir "";
					Escribir "Presione cualquier tecla para continuar.";
					Esperar tecla;
				FinSi
				
				Mientras nivel > nivelDeseo Y txt = 1 Hacer
					Escribir "     IMPOSIBLE NIVELAR AGUA.";
					Escribir "  UD. NO DEBE ABRIR LLAVE DE LLENADO";
					Escribir "      ABRA LLAVE DE VACIADO!";
					Esperar 9 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE NIVEL";
						Escribir " ";
						Escribir "01- Abrir llave de llenado";
						Escribir "02- Abrir llave de vaciado";
						Escribir "03 - Saltar control de nivel";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 2 O txt = 1 O txt = 3
				FinMientras
				
				
				Si  nivel > nivelDeseo Y txt = 2 Entonces
					limpiar pantalla;
					mensaje <- "    NIVELANDO TANQUE..";
					animacion(mensaje);
					Repetir
						nivel <- nivel - 1;
					Hasta Que nivel = nivelDeseo
					Limpiar pantalla;	
					Escribir " TANQUE NIVELADO CON �XITO! ", nivel, " LITROS.";
					Escribir "";
					Escribir "Presione cualquier tecla para continuar.";
					Esperar Tecla;
				FinSi
				
				Limpiar Pantalla;
				
				
				Si temperatura > temperaturaDeseo Entonces
					Escribir " TEMP.AGUA POR ENCIMA DE LA DESEADA"; 
					Escribir "   ABRA MEZCLADOR DE AGUA FR�A";
				FinSi
				
				Si temperatura < temperaturaDeseo Entonces
					Escribir " TEMP.AGUA POR DEBAJO DE LA DESEADA"; 
					Escribir "     ENCIENDA RESISTENCIA";
				FinSi
				
				Si temperatura = temperaturaDeseo Entonces
					Escribir " TEMPERATURA DEL AGUA EST� EQUILIBRADA";
					Escribir "  SALTE�SE EL CONTROL DE TEMPERATURA"; 
				FinSi
				
				Escribir "";
				Escribir "";
				Escribir "Presione cualquier tecla para continuar.";
				
				Esperar tecla;
				
				Limpiar pantalla;
				
				
				Limpiar Pantalla;
				Escribir "CONTROL DE TEMPERATURA";
				Escribir " ";
				Escribir "01- Encender resistencia";
				Escribir "02- Abrir mezclador de agua fr�a";
				Escribir "03 - Saltar control temp. y finalizar";
				
				repetir
					
					Leer txt;
					Limpiar Pantalla;
					Escribir "CONTROL DE TEMPERATURA";
					Escribir " ";
					Escribir "01- Encender resistencia";
					Escribir "02- Abrir mezclador de agua fria";
					Escribir "03 - Saltar control temp. y finalizar";
					Escribir "";
					Escribir " OPCI�N ERR�NEA!! PRESTE ATENCI�N.";
					
				Hasta Que txt = 1 O txt = 2 O txt = 3
				
				Limpiar pantalla;
				
				
				Mientras temperatura = temperaturaDeseo Y txt = 1 Hacer
					Escribir " LA TEMPERATURA EST� EQUILIBRADA.";
					Escribir "  NO DEBE ENCENDER RESISTENCIA";
					Esperar 7 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE TEMPERATURA";
						Escribir " ";
						Escribir "01- Encender resistencia";
						Escribir "02- Abrir mezclador de agua fria";
						Escribir "03 - Saltar control temp. y finalizar";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 3 O txt = 1 O txt = 2
				FinMientras
				
				
				Mientras temperatura = temperaturaDeseo Y txt = 2 Hacer
					Escribir " LA TEMPERATURA EST� EQUILIBRADA.";
					Escribir " NO DEBE ABRIR MEZCLADOR DE AGUA";
					Esperar 7 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE TEMPERATURA";
						Escribir " ";
						Escribir "01- Encender resistencia";
						Escribir "02- Abrir mezclador de agua fria";
						Escribir "03 - Saltar control temp. y finalizar";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 3 O txt = 1 O txt = 2
				FinMientras
				
				Si temperatura = temperaturaDeseo Y txt = 3 Entonces
					Esperar 1 segundo;
					Limpiar pantalla;
				FinSi
				
				Mientras temperatura > temperaturaDeseo Y txt = 1 Hacer
					Escribir "        IMPOSIBLE AJUSTAR TEMP.";
					Escribir "  UD. NO DEBE ENCENDER RESISTENCIA";
					Escribir "     ABRA MEZCLADOR DE AGUA FR�A!";
					Esperar 9 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE TEMPERATURA";
						Escribir " ";
						Escribir "01- Encender resistencia";
						Escribir "02- Abrir mezclador de agua fria";
						Escribir "03 - Saltar control temp. y finalizar";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 2 O txt = 1 O txt = 3
				FinMientras
				
				
				Si temperatura > temperaturaDeseo Y txt = 2 Entonces
					limpiar pantalla;
					mensaje <- "  MEZCLANDO CON AGUA FR�A..";
					animacion(mensaje);
					Repetir
						temperatura <- temperatura - 1;
					Hasta Que temperatura = temperaturaDeseo
					Limpiar pantalla;	
					Escribir " AGUA ENFRIADA CON �XITO! ", temperatura, " �C";
					Esperar 3 segundos;
				FinSi
				
				
				Mientras temperatura < temperaturaDeseo Y txt = 2 Hacer
					Escribir "    IMPOSIBLE AJUSTAR TEMP.";
					Escribir "  UD. NO DEBE ABRIR MEZCLADOR";
					Escribir "     ENCIENDA RESISTENCIA!";
					Esperar 9 segundos;
					Limpiar pantalla;
					Repetir
						Escribir "CONTROL DE TEMPERATURA";
						Escribir " ";
						Escribir "01- Encender resistencia";
						Escribir "02- Abrir mezclador de agua fria";
						Escribir "03 - Saltar control temp. y finalizar";
						Leer txt;
						Limpiar pantalla;
					Hasta Que txt = 1 O txt = 2 O txt = 3
				FinMientras
				
				Si temperatura < temperaturaDeseo Y txt = 1 Entonces
					limpiar pantalla;
					mensaje <- " RESISTENCIA CALENTANDO AGUA..";
					animacion(mensaje);
					Repetir
						temperatura <- temperatura + 1;
					Hasta Que temperatura = temperaturaDeseo
					Limpiar pantalla;	
					Escribir " AGUA CALENTADA CON �XITO! ", temperatura, " �C";
					Esperar 3 segundos;
				FinSi
				
				Limpiar Pantalla;
				
				estadofinal(nivel, temperatura);
				
			4://instrucciones
				Escribir "----INSTRUCCIONES DE USO:----";
				Escribir "**Por defecto: usuario ingresa"; 
				Escribir "valores iniciales y el sistema ajusta";
				Escribir "autom�ticamente.";
				Escribir "";
				Escribir "**Adaptable: usuario ingresa";
				Escribir "valores iniciales y valores";
				Escribir "de salida. El sistema los ajusta";
				Escribir "autom�ticamente.";
				Escribir "";
				Escribir "**Manual adaptable: usuario ingresa";
				Escribir "valores iniciales y valores";
				Escribir "de salida. El sistema le avisa al";
				Escribir "usuario el estado y este decide";
				Escribir "la acci�n a realizar.";
				Escribir "";
				Escribir "Pulse cualquier tecla para continuar..";
				Esperar Tecla;
				
			0:
				mensaje <- "        SALIENDO..";
				animacioncorto(mensaje);
				
				Limpiar pantalla;
				Escribir "       GRACIAS POR ELEGIRNOS";
				Escribir " DESARROLLANDO SOFTWARE DESDE 2019.";
				Esperar 3 Segundos;
				Limpiar Pantalla;
		FinSegun
	Hasta Que txt = 0;


FinProceso
