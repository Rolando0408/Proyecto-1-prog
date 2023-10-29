Program teleferico;
Uses crt;
Var 
  i: integer;
  nombre, cedula, est, tramo, opc_t,opc, n_inicio, n_llegada: string;
  validar_n, validar_l: boolean;
const
b_general= 20;
b_especial= 12;
  
Begin//Begin principal
repeat//Para validar la opcion
repeat//para validar que opc sea numero
	writeln('Bienvenido al teleferico de Merida, a continuacion seleccione la opcion que desea realizar.');
	writeln('');
	writeln('1. Comprar boleto');
	writeln('2. Ver sistema del teleferico');
	writeln('3. Salir');
	readln(opc);
	validar_n:= false;
	
        for i := 1 to Length(opc) do
        begin//for para verificar que la opcion ingresada al inicio sea un numero
            if not (opc[i] in ['0'..'9']) then
            begin
                validar_n := true;
                break;
            end;
        end;//end del for para verificar que la opcion ingresada al inicio sea un numero

        if validar_n then
            writeln('La opcion ingresada no es un numero valido. Por favor ingrese una opcion valida.')
until not validar_n;//fin del repeat que valida que sea un numero
	
		if (opc < '1') or (opc > '3') then
		begin//Begin del if para validar opcion
			writeln('Opcion invalida. Por favor ingrese una opcion valida.');
		end;//End del if para validar la opcion
		
until (opc >= '1') and (opc <= '3');//Fin del repeat para validar opcion

	case opc of //case de opcion que quiera seleccionar
		
		'1': 
		begin//begin principal case opcion 1
			writeln('');
			writeln('Usted ha ingresado a la compra de boletos, a continuacion ingrese los datos solicitados.');
			repeat//repeat para validar el nombre
			writeln('Ingrese su nombre y apellido:');
			readln(nombre);
			validar_l:= false;
			
				for i := 1 to Length(nombre) do  // For para verificar si el nombre es valido (que no contenga numeros).
				begin//begin del for
					if (not (nombre[i] in ['A'..'Z', 'a'..'z', ' '])) then
					begin//begin del if para validar nombre
						validar_l := true;
						break;
					end;//end del if para validar nombre
				end;//end del for para validar nombre

				if  validar_l then// if en caso de que el nombre sea invalido
				begin//begin del if en caso de que el nombre no sea valido
					writeln('El nombre y apellido no pueden contener numeros, ingrese un nombre valido.');
				 end;//end del if en caso de que el nombre no sea valido
			until not validar_l;//fin del repeat para validar nombre
			
			repeat//repeat para validar cedula
			validar_n := false; 
			writeln('Ingrese su numero de cedula: ');
			readln(cedula);

			for i := 1 to Length(cedula) do//for para validar si la cedula solo son numeros
			begin//begin del for para verificar cedula
				if not (cedula[i] in ['0'..'9']) then
				begin//begin del if para validar
					validar_n := true;
					break;
				end;//end del if para validar cedula
			end;//end del for para verificar cedula

			if validar_n then//if en caso de que la cedula sea invalida
			begin//begin del if en caso de que no sea valida la cedula
				writeln('La cedula ingresada solo debe contener numeros. Por favor ingrese un numero de cedula valido.');
			end;//end del if en caso de que no sea valida la cedula
			until not validar_n;
			
			repeat//Para validar la estacion
			repeat//para ver si la estacion ingresada es de las disponibles
			writeln('Ingrese el numero de la estacion donde se encuentra:');
			writeln('1. Barinitas');
			writeln('2. La montaña');
			writeln('3. La aguada');
			writeln('4. Loma redonda');
			writeln('5. Pico espejo');
			readln(est);
			validar_n:= false;
				
				if (est < '1') or (est > '5') then
				begin
					writeln('La estacion ingresada no es valida. Por favor infgrese una estacion valida');
				end;
			until (est >= '1') and (est <= '5');
			
			case est of//case para alojar el nombre de la estacionj de salida
			
				'1':
				begin//principal de la opcion 1 de n_inicio
					n_inicio:= 'Barinitas';
				end;//principal de la opcionj 1  de n_inicio
			
				'2':
				begin
					n_inicio:= 'La montaña';
				end;
				
				'3':
				begin
					n_inicio:= 'La aguada';
				end;
				
				'4':
				begin
					n_inicio:= 'Loma redonda';
				end;
				
				'5':
				begin
					n_inicio:= 'Pico espejo';
				end;
			
			end;//end principal para el case de alojar nombre
			 
				
				for i := 1 to Length(est) do//For para verificar que la estacion sean solo numeros
				begin//begin rpincipal del for
					if not (est[i] in ['0'..'9']) then
					begin
						validar_n := true;
						break;
					end;
				end;//end principal del for

				if validar_n then
				begin
					writeln('La estacion no es un numero valido. Por favvor ingrese un numero valido .');
				end;
			until not validar_n;//fin del repeat para validar que la estacion sea un numero
			
			repeat//repetir para poder moverse entre tramos
				case est of//case para mostrar estaciones y permitir al usuario moverse entre tramos
					'1': begin//begin principal de la opcion 1
						repeat//Repeat para la validar que el tramo sea un numero
							writeln('Estacion actual: Barinitas');
							writeln('Tramos disponibles:');
							writeln('1. Barinitas - La montaña');
							writeln('6. Salir del teleferico');
							readln(tramo);
							validar_n:= false;
							n_llegada:= 'Barinitas';
							
							for i := 1 to Length(tramo) do
							begin//begin principal del for para validar el tramo
								if not (tramo[i] in ['0'..'9']) then
								begin
									validar_n := true;
									break;
								end;
							end;//end principal del for para validar el tramo

							if validar_n then
								writeln('El tramo no es un número válido. Por favor ingrese un numero valido.')
	
						until not validar_n;//Fin del repeat para que estacion sea solo un numero

						if (tramo <> '1') and (tramo <> '6') then
						begin
							writeln('Opcion no valida. Elige una opcion disponible.');
						end
						else if tramo ='1' then
						begin
							est := '2';
						end
						else if tramo = '6' then
							break;
					end;//end principal de la opcion 1
					'2': begin//begin principal de la opcion 2
						repeat
							writeln('Estacion actual: La montaña');
							writeln('Tramos disponibles:');
							writeln('1. La montaña - Barinitas');
							writeln('2. La montaña - La aguada');
							writeln('6. Salir del teleferico');
							readln(tramo);
							validar_n:= false;
							n_llegada:= 'La montaña';
						
							for i := 1 to Length(tramo) do
								begin//begin principal del for para validar el tramo
									if not (tramo[i] in ['0'..'9']) then
									begin
										validar_n := true;
										break;
									end;
								end;//end principal del for para validar el tramo

								if validar_n then
									writeln('El tramo no es un número válido. Por favor ingrese un numero valido.')
	
							until not validar_n;//Fin del repeat para que estacion sea solo un numero

							if (tramo <> '1') and (tramo <> '2') and (tramo <> '6') then//if para validar la opcion ingresada
							begin
								writeln('Opcion no valida. Elige una opcion disponible.');
							end//fin del if para validar la opcion ingresada
							else if tramo = '1' then//else if para cambiar entre tramos segun las opciones ingresadas
							begin
								est := '1';
							end
							else if tramo = '2' then
							begin
								est := '3';
							end
							else if tramo = '6' then
								break;
						end;//end principal de la opcion 2
					
					'3': begin//begin principal de la opcion 3
						repeat
						writeln('Estacion actual: La aguada');
						writeln('Tramos disponibles:');
						writeln('2. La aguada - La montaña');
						writeln('3. La aguada - Loma redonda');
						writeln('6. Salir del teleferico');
						readln(tramo);
						validar_n:= false;
						n_llegada:= 'La Aguada';
			
							for i := 1 to Length(tramo) do
							begin//begin principal del for para validar el tramo
								if not (tramo[i] in ['0'..'9']) then
								begin
									validar_n := true;
									break;
								end;
							end;//end principal del for para validar el tramo

							if validar_n then
								writeln('El tramo no es un número válido. Por favor ingrese un numero valido.')
	
						until not validar_n;//Fin del repeat para que estacion sea solo un numero

						if (tramo <> '2') and (tramo <> '3') and (tramo <> '6') then
						begin
							writeln('Opcion no valida. Elige una opcion disponible.');
						end
						else if tramo = '2' then
						begin	
							est := '2';
						end
						else if tramo = '3' then
						begin	
							est := '4';
						end
						else if tramo = '6' then
							break;
					end;//end principal de la opcion 3
					
					'4': begin//begin principal de la opcion 4 
						repeat
						writeln('Estacion actual: Loma redonda');
						writeln('Tramos disponibles:');
						writeln('3. Loma redonda - La aguada');
						writeln('4. Loma redonda - Pico espejo');
						writeln('6. Salir del teleferico');
						readln(tramo);
						validar_n:= false;
						n_llegada:= 'Loma redonda';
							
							for i := 1 to Length(tramo) do
							begin//begin principal del for para validar el tramo
								if not (tramo[i] in ['0'..'9']) then
								begin
									validar_n := true;
									break;
								end;
							end;//end principal del for para validar el tramo

							if validar_n then
								writeln('El tramo no es un número válido. Por favor ingrese un numero valido.')
	
						until not validar_n;//Fin del repeat para que estacion sea solo un numero

						if (tramo <> '3') and (tramo <> '4') and (tramo <> '6') then
						begin
							writeln('Opcion no valida. Elige una opcion disponible.');
						end
						else if tramo = '3' then
						begin	
							est := '3';
						end
						else if tramo = '4' then
						begin	
							est := '5';
						end
						else if tramo = '6' then
							break;
					end;//end principal de la opcion 4
            
            '5': begin//begin ptincipal opcion 5
				repeat
					writeln('Estacion actual: Pico espejo');
					writeln('Tramos disponibles:');
					writeln('4. Pico espejo - Loma redonda');
					writeln('5. Pico espejo - Salir del teleferico');
					readln(tramo);
					validar_n:= false;
					n_llegada:= 'Pico espejo';
							
						for i := 1 to Length(tramo) do
						begin//begin principal del for para validar el tramo
							if not (tramo[i] in ['0'..'9']) then
									begin
								validar_n := true;
								break;
								end;
						end;//end principal del for para validar el tramo

						if validar_n then
							writeln('El tramo no es un número válido. Por favor ingrese un numero valido.')
					until not validar_n;//Fin del repeat para que estacion sea solo un numero

					if (tramo <> '4') and (tramo <> '5') then
					begin
						writeln('Opcion no valida. Elige una opcion disponible.');
					end
					else if tramo = '4' then
					begin
						est := '4';
					end
					else if (tramo = '5') or (tramo = '6') then
					begin
						writeln('Ya se recorrieron todos los tramos.');
						break;
					end;
					
				end;//end principal opcion 5
				
			end;//end principal del case para moverse entre tramos
			
			repeat//para validar que la opcion ingresada sea solo un numero.
			writeln('¿Deseas continuar entre tramos?');
			writeln('1. Si');
			writeln('2. No');
			readln(opc_t);
			validar_n:= false;
			
			for i := 1 to Length(opc_t) do
			begin
				if not (opc_t[i] in ['0'..'9']) then
				begin
					validar_n := true;
					break;
				end;
			end;

			if validar_n then
			begin
				writeln('La opcion no es un numero valido. Por favor ingrese un numero valido.');
			end;
			
			until not validar_n;//fin del repeat para validar que la opc_t sea un numero
			
				if (opc_t <> '1') and (opc_t <> '2') then
				begin
					writeln('La opcion ingresada es invalida. Por favor ingrese una opcion valida.');
				end;		
			until (opc_t =  '2');//fin del repeat para moverse entre tramos
			
			writeln('Salio desde ', n_inicio, ', hizo su recorrido y llego hasta ', n_llegada);//probando si funciona para guardar el nombre, borrar luego

		end;//end principal case opcion 1
		
		'2':
		begin//begin principal case opcion 2
		
		end;//end principal case opcion 2
	
	end;//end del case para opcion seleccion
		
End.//end principal
