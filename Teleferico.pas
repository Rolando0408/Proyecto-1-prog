Program teleferico;
Uses crt;
Var 
  opc, i: integer;
  nombre, cedula, est: string;
  validar_c, validacion_n, validar_est: boolean;
const
b_general= 20;
b_especial= 12;
  
Begin//Begin principal
repeat//Para validar la opcion
	writeln('Bienvenido al teleferico de Merida, a continuacion seleccione la opcion que desea realizar.');
	writeln('');
	writeln('1. Comprar boleto');
	writeln('2. Ver sistema del teleferico');
	writeln('3. Salir');
	readln(opc);
	
		if (opc < 1) or (opc > 3) then
		begin//Begin del if para validar opcion
			writeln('Opcion invalida. Por favor ingrese una opcion valida.');
		end;//End del if para validar la opcion
until (opc >= 1) and (opc <= 3);//Fin del repeat para validar opcion

	case opc of //case de opcion que quiera seleccionar
		
		1: 
		begin//begin principal case opcion 1
			writeln('');
			writeln('Usted ha ingresado a la compra de boletos, a continuacion ingrese los datos solicitados.');
			repeat//repeat para validar el nombre
			writeln('Ingrese su nombre y apellido:');
			readln(nombre);
			validacion_n:= false;
			
				for i := 1 to Length(nombre) do  // For para verificar si el nombre es valido (que no contenga numeros).
				begin//begin del for
					if (not (nombre[i] in ['A'..'Z', 'a'..'z', ' '])) then
					begin//begin del if para validar nombre
						validacion_n := true;
						break;
					end;//end del if para validar nombre
				end;//end del for para validar nombre

				if  validacion_n then// if en caso de que el nombre sea invalido
				begin//begin del if en caso de que el nombre no sea valido
					writeln('El nombre y apellido no pueden contener numeros, ingrese un nombre valido.');
				 end;//end del if en caso de que el nombre no sea valido
			until not validacion_n;//fin del repeat para validar nombre
			
			repeat//repeat para validar cedula
			validar_c := false; 
			writeln('Ingrese su numero de cedula: ');
			readln(cedula);

			for i := 1 to Length(cedula) do//for para validar si la cedula solo son numeros
			begin//begin del for para verificar cedula
				if not (cedula[i] in ['0'..'9']) then
				begin//begin del if para validar
					validar_c := true;
					break;
				end;//end del if para validar cedula
			end;//end del for para verificar cedula

			if validar_c then//if en caso de que la cedula sea invalida
			begin//begin del if en caso de que no sea valida la cedula
				writeln('La entrada no es un número válido. Inténtelo de nuevo.');
			end;//end del if en caso de que no sea valida la cedula
			until not validar_c;
				
			repeat//Repeat para validar la estacion
			repeat//repeat del bucle para validar que la opcion de estacion es un numero
			writeln('Ingrese el numero correspondiente de la estacion donde se encuentra.');
			writeln('1. Barinitas');
			writeln('2. La Montaña');
			writeln('3. La Aguada');
			writeln('4. Loma Redonda');
			writeln('5. Pico Espejo');
			readln(est);
			validar_est:= false;
			
			for i := 1 to Length(est) do//for para validar que estacion sea un numero
			begin//begin del for para validar que estacion sea un numero
				if not (est[i] in ['0'..'9']) then
				begin//begin del if para validar que estacion sea un numero
					validar_est := true;
					break;
				end;//end del if para validar que estacion sea un numero
			end;//end del for para validar que estacion sea un numero

			if validar_est then//if para validar que la estacion sea un numero
			begin//begin del if para validar estacion
				writeln('La estacion ingresada no es un numero valido. Por favor ingrese un numero valido.');
			end;//end del if para validar estacion 
			until not validar_est;//fin del repeat para validar que estacion sea un numero
			
				if (est < '1') or (est > '5') then//if para validar la estacion
				begin//begin de if para validacion de estacion
					writeln('La estacion ingresada es incorrecta. Por favor ingrese una estacion valida');
				end;//end de validacion de estacion
			until (est >= '1') and (est <= '5');//fin del repeat para validar la estacion
			//rolando, quedaste aqui.
		
		end;//end principal case opcion 1
		
		2:
		begin//begin principal case opcion 2
		
		end;//end principal case opcion 2
	
	end;//end del case para opcion seleccion
		
End.//end principal
