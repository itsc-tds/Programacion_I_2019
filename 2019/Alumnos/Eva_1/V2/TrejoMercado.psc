Proceso Calculadora	
	//p=opcion de calculo opcion=primeras decisiones opcion2=segundas decisiones
	Definir p, opcion, opcion2 como  entero;
	//n=numero1 m=numero2 Operadores=arreglo d=resultado final
	Definir n, m, Operadores, d Como Real;
	Dimension Operadores[5];
	opcion <- 0;
	opcion2 <- 0;
	Repetir
		Limpiar Pantalla;
		Escribir "¿Que desea hacer?";
		Escribir "Suma:1"; 
		Escribir "Resta:2";
		Escribir "Multiplicacion:3";
		Escribir "Division:4";
		Escribir "Potencia:5";
		Escribir "Raiz cuadrada:6";
		Escribir "Salir:7";
		Leer p;
		repetir
			si p < 1 o p > 7 Entonces
				Escribir "Ingrese una opcion valida";
				Leer p;
			FinSi
		Hasta Que p >= 1 y p <= 7
		segun p hacer
			1:
				Limpiar Pantalla;
				Escribir "ingrese primer numero";
				Leer n;
				Escribir "ingrese segundo numero";
				Leer m;
				d <- n + m;
				Limpiar Pantalla;
				Esperar 1 Segundos;
				Escribir "Calculando" Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir ".";
				Limpiar Pantalla;
				Escribir "Operacion Finalizada";
				Escribir n , "+" , m , "=" , d;	
				Escribir "desea realizar otra operacion?";
				Escribir "Si:1 No:2";
				Leer opcion;
			2:
				Limpiar Pantalla;
				Escribir "ingrese primer numero";
				Leer n;
				Escribir "ingrese segundo numero";
				Leer m;
				d <- n - m;
				Limpiar Pantalla;
				Esperar 1 Segundos;
				Escribir "Calculando" Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir ".";
				Limpiar Pantalla;
				Escribir "Operacion Finalizada";
				Escribir n , "-" , m , "=" , d;
				Escribir "desea realizar otra operacion?";
				Escribir "Si:1 No:2";
				Leer opcion;
			3:
				Escribir "ingrese primer numero";
				Leer n;
				Escribir "ingrese segundo numero";
				Leer m;
				d <- n * m;
				Limpiar Pantalla;
				Esperar 1 Segundos;
				Escribir "Calculando" Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir ".";
				Limpiar Pantalla;
				Escribir "Operacion Finalizada";
				Escribir n , "*" , m , "=" , d;
				Escribir "desea realizar otra operacion?";
				Escribir "Si:1 No:2";
				Leer opcion;
			4:
				Escribir "ingrese primer numero";
				Leer n;
				Escribir "ingrese segundo numero";
				Leer m;
				d <- n / m;
				Limpiar Pantalla;
				Esperar 1 Segundos;
				Escribir "Calculando" Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir ".";
				Limpiar Pantalla;
				Escribir "Operacion Finalizada";
				Escribir n , "/" , m , "=" , d;
				Escribir "desea realizar otra operacion?";
				Escribir "Si:1 No:2";
				Leer opcion;
			5:
				Escribir "ingrese numero base";
				Leer n;
				Escribir "ingrese numero exponencial";
				Leer m;
				d <- n ^ m;
				Limpiar Pantalla;
				Esperar 1 Segundos;
				Escribir "Calculando" Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir ".";
				Limpiar Pantalla;
				Escribir "Operacion Finalizada";
				Escribir n , "^" , m , "=" , d;
				Escribir "desea realizar otra operacion?";
				Escribir "Si:1 No:2";
				Leer opcion;
			6:
				Escribir "ingrese el numero base";
				Leer n;
				Escribir "ingrese numero exponencial";
				Leer m;
				d <- n ^ m;
				Limpiar Pantalla;
				Esperar 1 Segundos;
				Escribir "Calculando" Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir "." Sin Saltar;
				Esperar 2 Segundos;
				Escribir ".";
				Limpiar Pantalla;
				Escribir "Operacion Finalizada";
				Escribir n , "^" , m , "=" , d;
				Escribir "desea realizar otra operacion?";
				Escribir "Si:1 No:2";
				Leer opcion;
			7:
				Limpiar Pantalla;
		FinSegun
	Hasta Que opcion = 2 o p = 7
FinProceso