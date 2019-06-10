SubProceso nivel <- LimiteNivel
	definir nivel Como Entero;
	Escribir "Ingrese nivel (litros) mostrado en el medidor: ";
	Escribir "    (CAPACIDAD DEL TANQUE 100L MÁX.) ";

	Leer nivel;
	
	si nivel < 0 O nivel > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir " NIVEL DEL TANQUE POR DEBAJO DEL MÍNIMO";
			escribir "     O POR ENCIMA DEL MÁXIMO";
			escribir " FALLA EN EL MEDIDOR. REVISE URGENTE!";
			esperar 9 segundos;
			Limpiar pantalla;
			escribir "Ingrese nivel (litros) mostrado en el medidor: ";
			escribir "    (CAPACIDAD DEL TANQUE 100L MÁX.) ";
			Leer nivel;
			
		Hasta Que nivel >= 0 Y nivel <= 100
	FinSi
FinSubProceso

SubProceso nivelDeseo <- LimiteNivelDeseo
	definir nivelDeseo Como Entero;
	Escribir "Ingrese nivel en litros que desea en tanque:";
	Escribir "    (CAPACIDAD DEL TANQUE 100L MÁX.) ";
	Leer nivelDeseo;
	
	si nivelDeseo < 0 O nivelDeseo > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir "   NIVEL DESEADO POR DEBAJO DEL MÍNIMO";
			escribir " O POR ENCIMA DEL MÁXIMO. PRESTE ATENCIÓN!";
			esperar 9 segundos;
			Limpiar pantalla;
			Escribir "Ingrese nivel en litros que desea en tanque:";
			Escribir "    (CAPACIDAD DEL TANQUE 100L MÁX.) ";
			Leer nivelDeseo;
			
		Hasta Que nivelDeseo >= 0 Y nivelDeseo <= 100
		
	FinSi
	
FinSubProceso


SubProceso temperatura <- LimiteTemp
	definir temperatura Como Entero;
    Escribir "Ingrese temperatura (ºC) mostrada en el termómetro:";
	Leer temperatura;
	
	si temperatura > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir "  TEMPERATURA POR ENCIMA DE 100ºC";
			escribir " RIESGO DE DAÑO EN EL TERMOTANQUE!";
			escribir "";
			esperar 4 segundos;
			escribir " VENTEO EQUILIBRANDO TEMPERATURA A 100ºC ";
			Esperar 7 Segundos;;
			Repetir
				temperatura <- temperatura - 1;
			Hasta Que temperatura = 100
			
		Hasta Que temperatura <= 100
	FinSi
	
FinSubProceso

SubProceso temperaturaDeseo <- LimiteTempDeseo
	definir temperaturaDeseo Como Entero;
	Escribir "Ingrese temperatura (ºC) deseada ";
	Leer temperaturaDeseo;
	
	si temperaturaDeseo > 100 Entonces
		repetir
			
			Limpiar Pantalla;
			esperar 1 segundo;
			escribir " TEMPERATURA INGRESADA POR ENCIMA DE 100ºC";
			escribir "        RESISTENCIA NO OPERABLE ";
			escribir "";
			esperar 7 segundos;
			Limpiar Pantalla;
			escribir "Ingrese temperatura (ºC) deseada:  ";
			Leer temperaturaDeseo;
			
		Hasta Que temperaturaDeseo <= 100
	FinSi
FinSubProceso


Proceso termosolarInteligente
	definir nivel como entero;
	definir nivelDeseo como entero;
	definir temperatura como entero;
	definir temperaturaDeseo como entero;
	definir txt como entero;
	
	//inicio
	Limpiar pantalla;
	Escribir "    BIENVENIDO!";
	Esperar 3 Segundos;
	Limpiar Pantalla;
	Escribir "   TERMOSOLAR INTELIGENTE";
	Esperar 5 segundos;
	Limpiar pantalla;
	Escribir "----INSTRUCCIONES DE USO:----";
	Escribir "**Por defecto: usuario ingresa"; 
	Escribir "valores iniciales y el sistema ajusta";
	Escribir "automáticamente.";
	Escribir "";
	Escribir "**Adaptable: usuario ingresa";
	Escribir "valores iniciales y valores";
	Escribir "de salida. El sistema los ajusta";
	Escribir "automáticamente.";
	Escribir "";
	Escribir "**Manual adaptable: usuario ingresa";
	Escribir "valores iniciales y valores";
	Escribir "de salida. El sistema le avisa al";
	Escribir "usuario el estado y este decide";
	Escribir "la acción a realizar.";
	Escribir "";
	Escribir "Pulse cualquier tecla para continuar..";
	Esperar tecla;
	Limpiar pantalla;
	Escribir "ATENCIÓN: Software diseñado para operar";
	Escribir "únicamente con pad numérico.";
	Escribir "";
    Escribir "SI admite valores negativos.";
	Escribir "NO admite valores con decimal.";
	Escribir "";
	Escribir "Pulse cualquier tecla para continuar..";
	
	
	Esperar Tecla;
	
	Limpiar Pantalla;
	Escribir "   TERMOSOLAR INTELIGENTE";
	Esperar 1.5 segundos;
	
	Repetir
		Limpiar Pantalla;
		
		Escribir "MENÚ PRINCIPAL";
		Escribir "";
		Escribir "Elija modo de operación:";
		Escribir "01- Por defecto";
		Escribir "02- Adaptable";
		Escribir "03- Manual adaptable";
		Escribir "00- Salir";
		
		Repetir
			
			Leer txt;
			Limpiar Pantalla;
			Escribir "MENÚ PRINCIPAL";
			Escribir "";
			Escribir "Elija modo de operación:";
			Escribir "01- Por defecto";
			Escribir "02- Adaptable";
			Escribir "03- Manual adaptable";
			Escribir "00- Salir";
			Escribir "";
			Escribir "OPCIÓN ERRÓNEA!! PRESTE ATENCIÓN Y VUELVA A INGRESAR.";
		 
		 
		Hasta Que txt = 1 O txt = 2 O txt = 3 O txt = 0
		
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
				
				Escribir temperatura, " ºC";
				
				Esperar 4 segundos;
				
				Limpiar pantalla;
				
				Si nivel = 100 Entonces
					Escribir " EL TANQUE ESTÁ NIVELADO!";
					Esperar 6 segundos;
					Limpiar pantalla;
				FinSi
				
				
				Si nivel < 100 Entonces		
					Escribir "    BAJO NIVEL DE AGUA ";
					Escribir "";
					Esperar 2 segundos;
					Escribir " ABRIENDO LLAVE DE LLENADO.. ";
					Repetir
						nivel <- nivel + 1;
					Hasta Que nivel = 100
					Esperar 6 segundos;
					Limpiar Pantalla;
					Escribir " TANQUE NIVELADO CON ÉXITO! ", nivel, " LITROS.";
					Esperar 6 segundos;
				FinSi
				
				Limpiar Pantalla;
				
				Si temperatura = 65 Entonces
					Escribir " AGUA CALIENTE A 65ºC, TEMPERATURA JUSTA";
					Esperar 6 segundos;
					Limpiar pantalla;
				FinSi
				
				Si temperatura > 65 Entonces
					Escribir "    AGUA POR ENCIMA DE 65ºC";
					Escribir "";
					Esperar 2 segundos;
					Escribir " ABRIENDO MEZCLADOR DE AGUA FRÍA!";
					Repetir
						temperatura <- temperatura - 1;
					Hasta Que temperatura = 65
					Esperar 6 segundos;
					Limpiar pantalla;	
					Escribir " AGUA ENFRIADA CON ÉXITO! ", temperatura, " ºC.";
					Esperar 6 segundos;
				FinSi
				
				
				Si temperatura < 65 Entonces
					Escribir "   AGUA POR DEBAJO DE 65ºC";
					Escribir "";
					Esperar 2 segundos;
					Escribir " RESISTENCIA CALENTANDO AGUA..";
					Repetir
						temperatura <- temperatura + 1;
					Hasta Que temperatura = 65
					Esperar 6 segundos;
					Limpiar pantalla;	
					Escribir " AGUA CALENTADA CON ÉXITO! ", temperatura, " ºC";
					Esperar 6 segundos;
				FinSi
				
				
				Limpiar Pantalla;
				
				Escribir " ESTADO TERMOTANQUE: ", nivel, " L,  " ,temperatura, " ºC";
				
				esperar 2 segundos;
				Escribir "";
				Escribir "";
				Escribir "Presione tecla para volver al menú";
				Esperar tecla;
				
				Limpiar pantalla;
				
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
				
				Escribir nivel, " LITROS ACTUALES";
				Escribir nivelDeseo, " LITROS A AJUSTAR";
				
				
				Escribir "" ;
				
				Escribir temperatura," ºC ACTUALES";
				Escribir temperaturaDeseo," ºC A AJUSTAR";
				
				Escribir "";
				
				Escribir "Presione tecla para continuar";
				
				Esperar tecla;
				
				Limpiar Pantalla;
				
				
				Si nivel = nivelDeseo Entonces
					Escribir " EL TANQUE ESTÁ NIVELADO";
					Esperar 6 segundos;
					Limpiar pantalla;
				FinSi
				
				Si nivel > nivelDeseo Entonces
					escribir " NIVEL POR ENCIMA DEL DESEADO";
					escribir "";
					esperar 2 segundos;
					Escribir " ACCIONANDO LLAVE DE VACIADO! " ;
					Repetir
						nivel <- nivel -1;
					Hasta Que nivel = nivelDeseo
					Esperar 6 segundos;
					Limpiar pantalla;	
					Escribir " TANQUE NIVELADO CON ÉXITO! ", nivel, " LITROS.";
					Esperar 6 segundos;
				FinSi
				
				
				Si nivel < nivelDeseo Entonces		
					escribir " NIVEL POR DEBAJO DEL DESEADO";
					escribir "";
					esperar 2 segundos;
					Escribir "  ABRIENDO LLAVE DE LLENADO! ";
					Repetir
						nivel <- nivel + 1;
					Hasta Que nivel = nivelDeseo O nivel = 100
					Esperar 6 segundos;
					Limpiar Pantalla;
					Escribir " TANQUE NIVELADO CON ÉXITO! ", nivel, " LITROS.";
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
					esperar 2 segundos;
					Escribir "  ABRIENDO MEZCLADOR DE AGUA FRÍA!";
					Repetir
						temperatura <- temperatura - 1;
					Hasta Que temperatura = temperaturaDeseo
					Esperar 6 segundos;
					Limpiar pantalla;	
					Escribir " AGUA ENFRIADA CON ÉXITO! ", temperatura, " ºC";
					Esperar 6 segundos;
				FinSi
				
				
				Si temperatura < temperaturaDeseo Entonces
					Escribir " TEMPERATURA POR DEBAJO DE LA DESEADA"; 
					Escribir "";
					esperar 2 segundos;
					Escribir "   RESISTENCIA CALENTANDO AGUA..";
					Repetir
						temperatura <- temperatura + 1;
					Hasta Que temperatura = temperaturaDeseo
					Esperar 6 segundos;
					Limpiar pantalla;	
					Escribir " AGUA CALENTADA CON ÉXITO! ", temperatura, " ºC";
					Esperar 6 segundos;
				FinSi
				
				
				Limpiar pantalla;
				
				Escribir " ESTADO TERMOTANQUE: ", nivel, " L,  " ,temperatura, " ºC";
				
				
				esperar 2 segundos;
				Escribir "";
				Escribir "";
				Escribir "Presione tecla para volver al menú";
				Esperar tecla;
				
				Limpiar pantalla;
				
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
				
				Escribir nivel, " LITROS ACTUALES";
				Escribir nivelDeseo, " LITROS A AJUSTAR";
				
				Escribir "" ;
				
				Escribir temperatura," °C ACTUALES";
				Escribir temperaturaDeseo," °C A AJUSTAR";
				
				Escribir "";
				Escribir "Presione cualquier tecla para continuar.";
				Esperar tecla;
				
				Limpiar Pantalla;
				
				Si nivel = nivelDeseo Entonces
					Escribir "   EL TANQUE ESTÁ NIVELADO!";
					Escribir " SALTÉESE EL CONTROL DE NIVEL";
				FinSi
				
				Si nivel > nivelDeseo Entonces
					escribir " NIVEL POR ENCIMA DEL DESEADO";
					Escribir "   ACCIONE LLAVE DE VACIADO! " ;
				FinSi
				
				
				Si nivel < nivelDeseo Entonces						
					escribir " NIVEL POR DEBAJO DEL DESEADO";
					Escribir "   ACCIONE LLAVE DE LLENADO! " ;
				FinSi
				
				esperar 2 segundos;
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
					Escribir " OPCIÓN ERRÓNEA!! PRESTE ATENCIÓN.";
					
				Hasta Que txt = 1 O txt = 2 O txt = 3
				
				Limpiar pantalla;
				Mientras nivel = nivelDeseo Y txt = 1 Hacer
					Escribir "          TANQUE NIVELADO.";
					Escribir "    NO DEBE ABRIR NINGUNA LLAVE";
					Esperar 11 segundos;
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
					Escribir "    NO DEBE ABRIR NINGUNA LLAVE";
					Esperar 11 segundos;
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
					Esperar 1.5 segundo;
					Limpiar pantalla;
				FinSi
				
				
				Mientras nivel < nivelDeseo Y txt = 2 Hacer
					Escribir "      IMPOSIBLE NIVELAR AGUA.";
					Escribir "  UD. NO DEBE ABRIR LLAVE DE VACIADO";
					Escribir "      ABRA LLAVE DE LLENADO!";
					Esperar 11 segundos;
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
					Escribir " NIVELANDO TANQUE..";
					Repetir
						nivel <- nivel + 1;
					Hasta Que nivel = nivelDeseo
					Esperar 3 segundo;
					Limpiar pantalla;	
					Escribir " TANQUE NIVELADO CON ÉXITO! ", nivel, " LITROS.";
					Escribir "";
					Escribir "Presione cualquier tecla para continuar.";
					Esperar tecla;
				FinSi
				
				Mientras nivel > nivelDeseo Y txt = 1 Hacer
					Escribir "     IMPOSIBLE NIVELAR AGUA.";
					Escribir "  UD. NO DEBE ABRIR LLAVE DE LLENADO";
					Escribir "      ABRA LLAVE DE VACIADO!";
					Esperar 11 segundos;
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
					Escribir " NIVELANDO TANQUE..";
					Repetir
						nivel <- nivel - 1;
					Hasta Que nivel = nivelDeseo
					Esperar 3 segundo;
					Limpiar pantalla;	
					Escribir " TANQUE NIVELADO CON ÉXITO! ", nivel, " LITROS.";
					Escribir "";
					Escribir "Presione cualquier tecla para continuar.";
					Esperar Tecla;
				FinSi
				
				Limpiar Pantalla;
				
				
				Si temperatura > temperaturaDeseo Entonces
					Escribir " TEMP.AGUA POR ENCIMA DE LA DESEADA"; 
					Escribir "   ABRA MEZCLADOR DE AGUA FRÍA";
				FinSi
				
				Si temperatura < temperaturaDeseo Entonces
					Escribir " TEMP.AGUA POR DEBAJO DE LA DESEADA"; 
					Escribir "     ENCIENDA RESISTENCIA";
				FinSi
				
				Si temperatura = temperaturaDeseo Entonces
					Escribir " TEMPERATURA DEL AGUA ESTÁ EQUILIBRADA";
					Escribir "  SALTEÉSE EL CONTROL DE TEMPERATURA"; 
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
				Escribir "02- Abrir mezclador de agua fría";
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
					Escribir " OPCIÓN ERRÓNEA!! PRESTE ATENCIÓN.";
					
				Hasta Que txt = 1 O txt = 2 O txt = 3
				
				Limpiar pantalla;
				
				
				Mientras temperatura = temperaturaDeseo Y txt = 1 Hacer
					Escribir " LA TEMPERATURA ESTÁ EQUILIBRADA.";
					Escribir "  NO DEBE ENCENDER RESISTENCIA";
					Esperar 11 segundos;
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
					Escribir " LA TEMPERATURA ESTÁ EQUILIBRADA.";
					Escribir " NO DEBE ABRIR MEZCLADOR DE AGUA";
					Esperar 11 segundos;
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
					Esperar 1.5 segundo;
					Limpiar pantalla;
				FinSi
				
				Mientras temperatura > temperaturaDeseo Y txt = 1 Hacer
					Escribir "        IMPOSIBLE AJUSTAR TEMP.";
					Escribir "  UD. NO DEBE ENCENDER RESISTENCIA";
					Escribir "     ABRA MEZCLADOR DE AGUA FRÍA!";
					Esperar 11 segundos;
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
					Escribir " MEZCLANDO CON AGUA FRÍA.." ;
					Repetir
						temperatura <- temperatura - 1;
					Hasta Que temperatura = temperaturaDeseo
					Esperar 3 segundo;
					Limpiar pantalla;	
					Escribir " AGUA ENFRIADA CON ÉXITO! ", temperatura, " °C";
					Esperar 3 segundos;
				FinSi
				
				Mientras temperatura < temperaturaDeseo Y txt = 2 Hacer
					Escribir "    IMPOSIBLE AJUSTAR TEMP.";
					Escribir "  UD. NO DEBE ABRIR MEZCLADOR";
					Escribir "     ENCIENDA RESISTENCIA!";
					Esperar 11 segundos;
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
					Escribir " RESISTENCIA CALENTANDO AGUA.." ;
					Repetir
						temperatura <- temperatura + 1;
					Hasta Que temperatura = temperaturaDeseo
					Esperar 3 segundo;
					Limpiar pantalla;	
					Escribir " AGUA CALENTADA CON ÉXITO! ", temperatura, " °C";
					Esperar 3 segundos;
				FinSi
				
				Limpiar Pantalla;
				
				Escribir " ESTADO TERMOTANQUE: ", nivel, " L,  " ,temperatura, " °C";
				
				esperar 2 segundos;
				Escribir "";
				Escribir "";
				Escribir "Presione tecla para volver al menú";
				Esperar tecla;
				
				Limpiar Pantalla;
			0:
				escribir " SALIENDO..";
				Esperar 2.5 segundos;
				Limpiar pantalla;
				Escribir "       GRACIAS POR ELEGIRNOS";
				Escribir " DESARROLLANDO SOFTWARE DESDE 2019.";
				Esperar 4.5 Segundos;
				Limpiar Pantalla;
		FinSegun
	Hasta Que txt = 0;


FinProceso
