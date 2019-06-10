Proceso calculadora
	
	
    Definir suma,resta,division,multiplicacion,potenciacion,raizcuadrada como entero;
	Definir num1, num2 Como Entero;
	Definir res como real;
	Definir resredon como real;
	Definir opc como entero;
	
	res <- 0;
	Limpiar pantalla;
	
	Repetir
		Repetir
			Escribir " 1.suma";
			Escribir " 2.resta";
			Escribir " 3.division";
			Escribir " 4.multiplicacion";
			Escribir " 5.potenciacion";
			Escribir " 6.raizcuadrada";
			Escribir " 7.salir";
			Leer opc;
		Hasta Que opc = 1 o opc = 2 o opc = 3 o opc= 4 o opc = 5 o opc = 6 o opc = 7;
		
		
		
		Segun opc Hacer
			1:
				Limpiar Pantalla;
				Escribir "suma";
				Escribir " ingrese el primer numero";
				Leer num1;
				Escribir " ingrese el segundo numero";
				Leer num2;
				res <- num1 + num2;
				Limpiar pantalla;
				Escribir " el resultado es: " ,redon(res);
				Escribir " presione una tecla para continuar";
				Esperar tecla;
				Limpiar Pantalla;
			2:
				Limpiar Pantalla;
				Escribir "resta";
				Escribir " ingrese el primer numero";
				Leer num1;
				Escribir " ingrese el segundo numero";
				Leer num2;
				res <- num1 - num2;
				Limpiar pantalla;
				Escribir " el resultado es: ",redon(res);
				Escribir " presione una tecla para continuar";
				Esperar tecla;
				Limpiar Pantalla;
			3:
				Limpiar pantalla;
				Escribir "division";
				Escribir " ingrese el primer numero";
				Leer num1;
				Escribir " ingrese el segundo numero";
				Leer num2;
				res <- num1 / num2;
				Limpiar pantalla;
				Escribir " el resultado es: ", redon(res);
				Escribir " presione una tecla para continuar";
				Esperar tecla;
				Limpiar Pantalla;
			4:
				Limpiar Pantalla;
				Escribir "multiplicacion";
				Escribir " ingrese el primer numero";
				Leer num1;
				Escribir " ingrese el segundo numero";
				Leer num2;
				res <- num1 * num2;
				Limpiar pantalla;
				Escribir " el resultado es: ",redon(res);
				Escribir " presione una tecla para continuar";
				Esperar tecla;
				Limpiar Pantalla;
			5: 
				Limpiar Pantalla;
				Escribir "potenciacion";
				Escribir " ingrese la base";
				Leer num1;
				Escribir " ingrese el numero al que esta elevado";
				Leer num2;
				res <- num1 ^ num2;
				Limpiar pantalla;
				Escribir " el resultado es: ", redon(res);
				Escribir " presione una tecla para continuar";
				Esperar tecla;
				Limpiar Pantalla;
			6:				
				Limpiar Pantalla;
				Escribir " No se permite numeros decimales";
				Escribir "raizcuadrada";
				Escribir " ingrese el primer numero";
				Leer num1;
				resredon <- rc(num1);
				Limpiar pantalla;
				Escribir " el resultado es: " , redon(res);
				Escribir " presione una tecla para continuar";
				Esperar tecla;
				Limpiar Pantalla;
			
		FinSegun
	Hasta Que opc = 7;
	
	
	
	
	
FinProceso
