Program teleferico;
Uses crt;
Var 
  b_exvendidos, ventas, b_gvendidos, b_evendidos, b_vendidos, i, nboleto, c_ninos, c_viejos, e_ninos, n_especial, c_especial, c_ex, boleto_g, n_normales,val_int, b_disp: integer;
  nombre, cedula, est, tramo, opc_t, opc, n_inicio, n_llegada, opc_n, opc_v, val_str, cn_str, edad_str,vie_str: string;
  validar_n, validar_l, n_val: boolean;
  p_total, p_general, p_especial,total_v, total_g, total_e: real;
const
b_general= 20;
b_especial= 12;
  
Begin//Begin principal
total_v:= 0;
total_e:= 0;//iniciando monos de ventas totales en 0 
total_g:= 0;
b_disp:= 60;//boletos disponibles
b_vendidos:= 0;//iniciando boletos en 0
b_gvendidos:= 0;
b_exvendidos:= 0;
b_evendidos:= 0;
ventas:= 0;


repeat//Para repetir todo el proceso de compras
repeat//Para validar la opcion
repeat//para validar que opc sea numero
	writeln('');
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
        begin
			ClrScr;
			writeln('');
            writeln('La opcion ingresada no es un numero valido. Por favor ingrese una opcion valida.');
        end;
            
until not validar_n;//fin del repeat que valida que sea un numero
	
		if (opc < '1') or (opc > '3') then
		begin//Begin del if para validar opcion
			ClrScr;
			writeln('');
			writeln('Opcion invalida. Por favor ingrese una opcion valida.');
		end;//End del if para validar la opcion
		
until (opc >= '1') and (opc <= '3');//Fin del repeat para validar opcion

	case opc of //case de opcion que quiera seleccionar
		
		'1': 
		begin//begin principal case opcion 1
		ClrScr;
		if (b_disp > 0) then
		begin
			writeln('');
			writeln('Usted ha ingresado a la compra de boletos, a continuacion ingrese los datos solicitados.');
			repeat//repeat para validar el nombre
			writeln('');
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
					ClrScr;
					writeln('');
					writeln('El nombre y apellido no pueden contener numeros, ingrese un nombre valido.');
				 end;//end del if en caso de que el nombre no sea valido
			until not validar_l;//fin del repeat para validar nombre
			
			repeat//repeat para validar cedula
			validar_n := false; 
			writeln('');
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
				ClrScr;
				writeln('');
				writeln('La cedula ingresada solo debe contener numeros. Por favor ingrese un numero de cedula valido.');
			end;//end del if en caso de que no sea valida la cedula
			until not validar_n;
			
			ClrScr;
			repeat//Para validar la estacion
			repeat//para ver si la estacion ingresada es de las disponibles
			writeln('A continuacion podra observar todo nuestro sistema de estaciones y tramos!');
			writeln('');
			writeln('|----------------------------|   |----------------------------|');
			writeln('|---------Estaciones---------|   |-----------Tramos-----------|');
			writeln('|----------------------------|   |----------------------------|');
			writeln('| 1- Barinitas               |   |   Barinitas > La Montana   |');
			writeln('| 2- La Montana              |   |   La Montana > La Aguada   |');
			writeln('| 3- La Aguada               |   |  La Aguada > Loma Redonda  |');
			writeln('| 4- Loma Redonda            |   | Loma Redonda > Pico Espejo |');
			writeln('| 5- Pico Espejo             |   |----------------------------|');
			writeln('|----------------------------|');
			writeln('');
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
					ClrScr;
					writeln('');
					writeln('La estacion ingresada no es valida. Por favor ingrese una estacion valida');
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
			ClrScr;
				case est of//case para mostrar estaciones y permitir al usuario moverse entre tramos
					'1': begin//begin principal de la opcion 1
						repeat//Repeat para la validar que el tramo sea un numero
							writeln('');
							writeln('Estacion actual: Barinitas');
							writeln('');
							writeln('Ingrese el tramo que desee recorrer:');
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
							writeln('');
							writeln('Estacion actual: La montaña');
							writeln('');
							writeln('Ingrese el tramo que desee recorrer:');
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
						writeln('');
						writeln('Estacion actual: La aguada');
						writeln('');
						writeln('Ingrese el tramo que desee recorrer:');
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
						writeln('');
						writeln('Estacion actual: Loma redonda');
						writeln('');
						writeln('Ingrese el tramo que desee recorrer:');
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
					writeln('');
					writeln('Estacion actual: Pico espejo');
					writeln('');
					writeln('Ingrese el tramo que desee recorrer:');
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
			writeln('');
			writeln('¿Deseas continuar entre tramos?');
			writeln('');
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
				ClrScr;
				writeln('');
				writeln('La opcion no es un numero valido. Por favor ingrese un numero valido.');
			end;
			
			until not validar_n;//fin del repeat para validar que la opc_t sea un numero
			
				if (opc_t <> '1') and (opc_t <> '2') then
				begin
					ClrScr;
					writeln('');
					writeln('La opcion ingresada es invalida. Por favor ingrese una opcion valida.');
				end;		
			until (opc_t = '2');//fin del repeat para moverse entre tramos
			
			ClrScr;
			repeat//repeat para validar que el numero de boletos no exceda el limite
			repeat//para validar que el caracter ingresado sea entero
			writeln('');
			writeln('En este momento poseemos ', b_disp, ' boletos disponibles');
			writeln('');
			writeln('Estas son nuestras tarifas de precio');
			writeln('');
			writeln('Boleto general: $.', b_general);
			writeln('Boleto especial (personas tercera edad y niños entre 3 y 12 años): $.', b_especial);
			writeln('Niños menores a 3 años exonerados');
			writeln('');
			writeln('Por favor, ingrese la cantidad de boletas que desea comprar');//Ingresando cantidad de boletos
			readln(val_str);
			n_val := true;
			
			Val(val_str, nboleto, val_int);//funcion para cambiar un numero a una string

			if val_int <> 0 then//verificar si se dio el cambio
			begin
				ClrScr;
				writeln('');
				writeln('La entrada no es un número entero. Por favor, intenta de nuevo.');
				n_val := false; //si no se da el cambio, se coloca false para repetir el bucle
			end;//fin de la verificacion
		until n_val;//fin del repeat para validar que sea un numero entero
			
				if (nboleto < 1) or (nboleto > b_disp) then//para validar que los boletos pedidos noi sean mas de los disponibles
				begin
					ClrScr;
					writeln('');
					writeln('La cantidad de boletos es invalida para nuestras condiciones, por favor, ingrese una cantidad dentro del limite');
				end;//fin para validar cant disponible
			
			until (nboleto >= 1) and (nboleto <= b_disp);//hasta que sea un numero menor al limite de boletos disp
			
			ClrScr;
			repeat//Validar opcion de niños
			writeln('');
			writeln('Estan incluidos niños?');
			writeln('');
			writeln('1.Si');
			writeln('2.No');
			readln(opc_n);
		
				if (opc_n <> '1') and (opc_n <> '2') then
				begin
					ClrScr;
					writeln('La opcion seleccionada es inválida, seleccione una opcion válida');
				end;
		
			until (opc_n = '1') or (opc_n = '2');//hasta que la opcion cumpla las condiciones
		
		if (opc_n = '1') then
		begin //begin if opcion 1 niños
		ClrScr;
			repeat//para validar que el numero es entero
			repeat//para validar que la cantidad de niños no sea mayor a los boletos pedidos
			writeln('');
			writeln('Cuantos niños estan incluidos');
			readln(cn_str);
			n_val := true;
			Val(cn_str, c_ninos, val_int);

			if val_int <> 0 then//if de validacion 
			begin
				ClrScr;
				writeln('');
				writeln('El numero que ingreso no es valido. Po favor ingrese un numero entero valido.');
				n_val := false; // Establecer n_val en falso para repetir el bucle
			end;//fin del if de validacion
		until n_val;//fin del repeat para validar el numero entero
		
			if (c_ninos > nboleto) then//Para verificar que no pase la cantidad de boletos disponibles
				begin
					ClrScr;
					writeln('');
					writeln('La cantidad ingresada excede el numero de boletos disponibles, por favor ingrese una cantidad valida');
				end;//end del if para validar disponibilidad
			until (c_ninos <= nboleto);
			
			i := 0;
			n_especial := 0;
			c_ex := 0;
				
				ClrScr;
				repeat//repeat para pedir la edad de los niños ingresados
				repeat//para validar que el numero ingresado sea entero
				writeln('');
				writeln('Ingrese la edad del niño ', i+1);
				readln(edad_str);
				n_val := true;
				Val(edad_str, e_ninos, val_int);

					if val_int <> 0 then
					begin
						ClrScr;
						writeln('');
						writeln('La entrada no es un número entero. Por favor, intenta de nuevo.');
						n_val := false; // Establecer n_val en falso para repetir el bucle
					end;
					
				until n_val;
						
				if (e_ninos <= 12) and (e_ninos >= 3) then
				begin
					n_especial := n_especial + 1;
				end
				
				else if (e_ninos < 3) and (e_ninos >= 0) then
				begin
					c_ex := c_ex + 1;
				end;
			
				i := i + 1;
				until c_ninos = i;//hasta que el contador sea igual a la cantidad de niños 	
			
				n_normales:= c_ninos - (c_ex + n_especial);//Calculando niños que pagan boleto general
				
			end; //opcion 1 niños
			
			if (c_ninos < nboleto) then
			begin//begin del if en caso de que aun queden boletos para 3ra edad despues de la cant de niños
			ClrScr;
			repeat//para validar que la opcion sea valida
			repeat//para validar que la opcion ingresada es un numero
			writeln('');
			writeln('Estan incluidas personas de tercera edad?');
			writeln('');
			writeln('1.Si');
			writeln('2.No');
			readln(opc_v);
			validar_n := false;

			for i := 1 to Length(opc_v) do//for para verificar que el valor ingresado sea un numero
			begin
				if not (opc_v[i] in ['0'..'9']) then
				begin
					validar_n := true;
					break;
				end;
			end;

			if validar_n then
			begin
				ClrScr;
				writeln('');
				writeln('La opcion ingresada no es un numero valido. Ingrese una opcion valida.');
			end;

			until not validar_n;//fin del bucle para verificar
		
			if (opc_v <> '1') and (opc_v <> '2') then
			begin
				ClrScr;
				writeln('');
				writeln('La opcion seleccionada es inválida, seleccione una opcion válida');
			end;
		
			until (opc_v = '1') or (opc_v = '2');//hasta que se cumplan las condiciones
		
				if (opc_v = '1') then
				begin //begin if opcion 1 tercera edad
				ClrScr;
				repeat//para que el numero sea entero
				repeat//para que no exceda los boletos disponibles incluyendo los niños
					writeln('');
					writeln('Cuantas personas de tercera edad estan incluidas?');
					readln(vie_str);
					n_val := true;
					Val(vie_str, c_viejos, val_int);

					if val_int <> 0 then
					begin
						ClrScr;
						writeln('');
						writeln('La entrada no es un número entero. Por favor, intenta de nuevo.');
						n_val := false; // Establecer n_val en falso para repetir el bucle
					end;
				until n_val;
				
				
					if (c_viejos > (nboleto - c_ninos)) then//Para verificar que no pase la cantidad de boletos disponibles
					begin
						ClrScr;
						writeln('');
						writeln('La cantidad ingresada excede el numero de boletos disponibles, por favor ingrese una cantidad valida');
					end;//end del if para validar disponibilidad
				until (c_viejos <= (nboleto - c_ninos));//fin de la validacion de la cantidad pedida
				
				end; // end if opcion 1 tercera edad
				
			end;//Del if en caso de que el numero de boletos se vaya en el de niños
		
		c_especial := n_especial + c_viejos;//calculando cantidad de boletos de 12$
		boleto_g := nboleto - c_especial - c_ex ; //Calculando la cantidad de boletos generales 20$
		
		//calculos de precios 
		p_general:= boleto_g * b_general;
		p_especial:= c_especial * b_especial;
		p_total:= p_especial + p_general;
		
		//Factura
		ClrScr;
		writeln('');
		writeln('----- Factura Teleférico -----');
		writeln('');
		writeln('Nombre: ', nombre);
		writeln('Cedula: ', cedula);
		writeln('------------------');
		writeln('Estacion de salida: ', n_inicio);
		writeln('Estacion de llegada: ', n_llegada);
		writeln('------------------');
		writeln('Cantidad de niños: ', c_ninos);
		writeln('Ninos exonerados: ', c_ex);
		writeln('Niños con descuento: ',n_especial);
		writeln('Niños sin descuento: ', n_normales);
		writeln('Tercera edad: ', c_viejos);
		writeln('------------------');
		writeln('Boletos totales: ', nboleto);
		writeln('Boletos generales: ', boleto_g, '- Monto: $.', p_general:0:2);
		writeln('Boletos especiales: ', c_especial, '- Monto: $.', p_especial:0:2);
		writeln('Boletos exonerados: ', c_ex, '- Monto: $.0');
		writeln('------------------');
		writeln('Total a pagar: ', '- Monto: $.', p_total:0:2);
		writeln('------------------');
		writeln('');
		writeln('Presione la tecla (enter) para continuar...');
		readln();	
		ClrScr;	
		
		b_disp:= b_disp - nboleto;//Restando los boletos comprados a los disponibles en cada viaje
		total_v:= total_v + p_total;//sumando el total de ventas
		total_e:= total_e + p_especial;
		total_g:= total_g + p_general;
		
		end//del if para ver si hay boletos disponibles
		
		else//si los asientos se acaban
			begin
				ClrScr;
				writeln('');
				writeln('Los asientos estan agotados. Vuelva mas tarde.');
			end;
		ventas:= ventas + 1;
		end;//end principal case opcion 1
		
		'2':
		begin//begin principal case opcion 2
		ClrScr;
			writeln('');
			writeln('-----Reporte del dia-----');
			writeln('Ventas realizadas: ',ventas);
			writeln('Asientos disponibles para el proximo viaje: ',b_disp);
			writeln('------------------');
			writeln('Boletos generales vendidos: ', b_gvendidos);
			writeln('Boletos especiales vendidos: ', b_evendidos);
			writeln('Boletos exonerados: ', b_exvendidos);
			writeln('Boletos vendidos: ', b_vendidos); 
			writeln('Todos los boletos han sido cancelados');
			writeln('------------------');
			writeln('Monto total de las ventas de boletos generales. ', b_gvendidos , ' Boletos(20$): $.', total_g:0:2);
			writeln('Monto total de las ventas de boletos especiales. ', b_evendidos,' Boletos(12$): $.', total_e:0:2);
			writeln('Monto total de las ventas: $.', total_v:0:2);
			writeln('------------------');
			writeln('');
			writeln('Presione la tecla (enter) para continuar...');
			readln();
			ClrScr;
		end;//end principal case opcion 2
		
		'3':
		begin//principal opc 3
			ClrScr;
			writeln('Gracias por usar el programa del teleferico. Vuelva pronto.');
			writeln('');
			writeln('Presione la tecla (enter) para continuar...');
			readln();
			ClrScr;
		end;//principal opc 3
	
	end;//end del case para opcion seleccion
	b_vendidos:= b_vendidos + nboleto;
	nboleto:= 0;
	b_gvendidos:= b_gvendidos + boleto_g;
	boleto_g:= 0;
	b_evendidos:= b_evendidos + c_especial;//se van sumando las variables mostradas en sistema
	c_especial:= 0;
	b_exvendidos:= b_exvendidos + c_ex;
	c_ex:= 0;
	c_viejos:= 0;
	c_ninos:=0;					//se hacen 0 las variables para evitar errores al repetir bucle
	n_especial:= 0;
	n_normales:= 0;
until (opc = '3');//fin del bucle de ventas

End.//end principal
