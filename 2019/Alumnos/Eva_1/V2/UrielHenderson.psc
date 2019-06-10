SubProceso interes<-tarjeta (total,int)
definir interes como real;
interes <- total*1.10;
FinSubProceso
Subproceso animacionVertical ()
	definir puntosV como cadena;
	definir animacionV como cadena;	
	puntosV <- "..";
	animacionV <- "";	
	Repetir
		escribir "";
		escribir " ", animacionV ;
		escribir "  ", animacionV ;
		escribir "   ", animacionV ;
		escribir "    ", animacionV ;
		escribir "";
		animacionV <- concatenar(animacionV, puntosV);
		esperar 1 Segundos;
		Limpiar Pantalla;
	Hasta Que longitud(animacionV) = 6;
FinSubProceso
Subproceso animacion ()
	definir puntos como cadena;
	definir animacion1 como cadena;	
	puntos <- "..";
	animacion1 <- "";	
	Repetir
		escribir "", animacion1 ;
		escribir "";
		animacion1 <- concatenar(animacion1, puntos);
		esperar 1 Segundos;
		Limpiar Pantalla;
	Hasta Que longitud(animacion1) = 6;
FinSubProceso
SubProceso ventas ()
	definir precio1,precio2,precio3,precio4 como entero;
	definir producto,op como entero;
	definir carrito1,carrito2,carrito3,carrito4,c1,c2,c3,c4 como entero;
	definir dinerodecliente,vuelto como real;
	definir total como real;
	carrito1<-0;
	carrito2<- 0;
	carrito3<- 0;
	carrito4 <- 0;
	c1<-0;
	c2<-0;
	c3<-0;
	c4<- 0;
	precio1<- 135;
	precio2 <- 10;
	precio3 <- 15;
	precio4<- 35;
	total<-0;
	vuelto<-0;
	Repetir
		escribir "|-----------------------------------|";
		escribir "|       Ingrese la Opcion           |";
		escribir "|-----------------------------------|";
		escribir "|  Presione [1] Velon               |";
		escribir "|-----------------------------------|";
		escribir "|  Presione [2] Velas Cortas        |";
		escribir "|-----------------------------------|";
		escribir "|  Presione [3] velas largas        |";
		escribir "|-----------------------------------|";
		escribir "|  Presione [4] sahumerios          |";
		escribir "|-----------------------------------|";
		escribir "|  Para Finalizar Pulse otra tecla  |";
		escribir "|-----------------------------------|";	
		leer producto;
		limpiar pantalla;
		Si producto= 1 Entonces
			carrito1 <- carrito1 + precio1;
			c1 <- c1+1 ;
		FinSi
		escribir "c/u :",c1,"   $: ",carrito1;
		si producto = 2 Entonces
			carrito2 <- carrito2 +precio2;
			c2<- c2+1;
		FinSi
		escribir "c/u :", c2,"    $: ",carrito2;
		si producto = 3 Entonces
			carrito3 <- carrito3+precio3;
			c3<-c3+1;
		FinSi
		escribir "c/u:",c3,"    $: ",carrito3;
		si producto= 4 Entonces
			carrito4 <-carrito4+precio4;
			c4 <- c4 +1;
		escribir "c/u:",c4,"    $: ",carrito4;
		FinSi
		si producto <>4 y producto <>3 y producto <>2 y producto<>1 Entonces
			
		FinSi
		total<- carrito1+carrito2+carrito3+carrito4;
		escribir "Sub - total $: ",total;
	Hasta Que producto <>4 y producto <>3 y producto <>2 y producto<>1;	
	esperar 1 segundos;
	limpiar pantalla;
	animacion();
	escribir "|-------------------------------------------|";
	escribir "|             Total a Pagar $: ", total,   "|";
	escribir "|-------------------------------------------|";
	escribir "|-------------------------------------------|";
	escribir "|           Elija el Modo de Pago           |";
	escribir "|-------------------------------------------|";
	escribir "|      1 - tarjeta [10% de Recargo]         |";
	escribir "|-------------------------------------------|";
	escribir "|             2 - efectivo                  |";
	escribir "|-------------------------------------------|";
	leer op;
	Segun op Hacer
		1:
			animacion();
			total <- tarjeta(total, 1.10);
			total<- total*100;
			total<-trunc (total);
			total<- total/100;
			escribir "|-------------------------------------------|";
			escribir "|       Total a Pagar $: ", total;
			escribir "|-------------------------------------------|";
			escribir "|Por favor, Deslize su Tarjeta en el Posnet |";
			escribir "|-------------------------------------------|";
			esperar 4 segundos;
			escribir "|-------------------------------------------|";
			escribir "|  Operacion Realizada con exito, Aguarde   |";
			escribir "|-------------------------------------------|";
			animacion();
			esperar 0.5 segundos;
			escribir "|-----------------------------------|";
			escribir "|          Imprimiendo Ticket       |";
			escribir "|-----------------------------------|";
			animacionVertical();
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                           Santeria La Vela Loca                          |";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Velones: " ,c1,"      |  Importe  $: ",carrito1;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Velas Cortas: " ,c2," |  Importe  $: ",carrito2;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Velas Largas: " ,c3," |  Importe  $: ",carrito3;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Sahumerios: " ,c4,"   |  Importe $: ",carrito4;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                      Total $:  ", total, "                               |";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                       Gracias Por su Compra                              |";
			escribir "|--------------------------------------------------------------------------|";
			esperar tecla;
		2:
			escribir "preparando Factura";
			animacionVertical();
			escribir "|-------------------------------------------|";
			escribir "|                 Total a Pagar $: ",total, "|";
			escribir "|-------------------------------------------|";
			esperar 1 segundos;
			animacion();
			escribir "|-----------------------------------|";
			escribir "|      Con cuanto dinero abona?     |";
			escribir "|-----------------------------------|";
			leer dinerodecliente;
			animacion();
			vuelto<- dinerodecliente- total;
			escribir "|-----------------------------------|";
			escribir "|          Su vuelto es $: ",vuelto,           "|";
			escribir "|-----------------------------------|";
			esperar 2 segundos;
			escribir "|-----------------------------------|";
			escribir "|          Imprimiendo Ticket       |";
			escribir "|-----------------------------------|";
			animacionVertical();
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                           Santeria La Vela Loca                          |";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Velones: " ,c1,"      | Importe  $: ",carrito1;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Velas Cortas: " ,c2," | Importe  $: ",carrito2;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Velas Largas: " ,c3," | Importe  $: ",carrito3;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|  Cant. de Sahumerios: " ,c4,"   | Importe $: ",carrito4;
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                      Total $:  ", total, "                               |";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                      Paga Con $:  ", dinerodecliente, "                  |";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                      su Vuelto es $:  ", vuelto, "                       |";
			escribir "|--------------------------------------------------------------------------|";
			escribir "|                       Gracias Por su Compra                              |";
			escribir "|--------------------------------------------------------------------------|";
			esperar tecla;
	FinSegun
FinSubProceso
Proceso negocio
	definir presione como entero;
	definir producto como entero;
	producto <- 0;
	Repetir	
		escribir "|-----------------------------------|";
		escribir "|                                   |";
		escribir "|   Bienvenido a nuestra plataforma |";
		escribir "|                                   |";
		escribir "|-----------------------------------|";
		escribir "|	 Presione [1] para ventas          |";
		escribir "|-----------------------------------|";
		escribir "|	 Presione [0] para salir.          |";
		escribir "|-----------------------------------|";
		leer presione;
		; //seleccionamos Ventas
		Limpiar Pantalla;
		si presione = 1 entonces						
			ventas();										
		finsi
	Hasta Que presione <>1
FinProceso
