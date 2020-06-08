// Italo Heber Lobo Torres

//Funcion "Indentificacion" permite validar el usuario y contraseña para poder hacer una modificacion en las configuraciones
SubProceso  Identificacion (usuario,clave)
	Definir usuarioPrueba Como Caracter;
	Definir clavePrueba Como Caracter;
	Repetir
		
		Escribir "Por favor ingrese su actual usuario";
		leer usuarioPrueba;
		Si usuario <> usuarioPrueba Entonces
			Escribir "El usuario ingresado es incorrecto, intente nuevamente";
			Escribir "***recuerde que el programa diferencia MAY/min***";
			Esperar Tecla;
			Limpiar Pantalla;
		FinSi
	Hasta Que usuario=usuarioPrueba
	Repetir
		Escribir "Ahora ingrese su contraseña";
		leer clavePrueba;
		Si clave <> clavePrueba Entonces
			Escribir "La contraseña ingresada es incorrecta, intente nuevamente";
			Escribir "***recuerde que el programa diferencia MAY/min***";
			Esperar Tecla;
			Limpiar Pantalla;
		FinSi
	Hasta Que clave=clavePrueba
FinSubProceso

Proceso ControlDeUsuarios
	Definir usuario Como Caracter;
	Definir nuevoUs Como Caracter;
	Definir clave Como Caracter;
	Definir nuevaCl Como Caracter;
	Definir menu Como Entero;
	
	//DEFINICION DE USUARIO Y CLAVE
	Escribir "Por favor ingrese su Nombre de usuario: ";
	Leer usuario;
	Limpiar Pantalla;
	Escribir "BIENVENIDO ",usuario, "!";
	
	Esperar 1 segundos;
	Limpiar Pantalla;
	Escribir usuario," podrias ingresar tu contraseña";
	Escribir "*Recuerde que puede usar numeros, letras y caracteres especiales";
	Leer clave;
	Limpiar Pantalla;
	
	//CREACION DE MENU
	Repetir
		
		//Elegir un menu 
		escribir"Bienvenido al sistema de configuracion";
		Escribir "[[[[[[[[[[Menú de opciones]]]]]]]]]]";
		Escribir "1. Cambiar Usuario";
		Escribir "2. Cambiar Contraseña";
		Escribir "0. Salir del Programa";
		
		Leer menu;
		Limpiar Pantalla;
		Segun menu Hacer
			1:
				identificacion(usuario,clave);
				Limpiar Pantalla;
				Escribir "Usuario y clave correctos";
				Escribir "INGRESE SU NUEVO USUARIO";
				Leer nuevoUs;
				usuario<-nuevoUs;
				Limpiar Pantalla;
				Escribir "su nuevo usuario es: ", usuario;
				Esperar 2 Segundos;
				Limpiar Pantalla;
			2:
				identificacion(usuario,clave);
				Limpiar Pantalla;
				Escribir "Usuario y clave correctos";
				Escribir "INGRESE SU NUEVO CONTRASEÑA";
				Leer nuevaCl;
				clave<-nuevaCl;
				Limpiar Pantalla;
				Escribir "Su nueva clave es: ", clave;
				Esperar 2 Segundos;
				Limpiar Pantalla;
				
			0:
				Escribir "Usted salio del menu de configuraciones";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Opcion no valida, puede ingresar 0 para salir del programa ó Enter para ver el menú";
				Esperar Tecla;
		FinSegun
		
	Hasta Que menu=0
	
	
	
	
FinProceso
