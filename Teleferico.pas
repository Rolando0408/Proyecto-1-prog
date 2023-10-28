Program teleferico;
Uses crt;
Var 
  opc, est: integer;
  nombre, cedula: string;

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
			writeln('Ingrese su nombre y apellido:');
			readln(nombre);
			writeln('Ingrese su Cedula de identidad');
			readln(cedula);
			repeat//Repeat para validar la estacion
			writeln('Ingrese el numero correspondiente de la estacion donde se encuentra.');
			writeln('1. Barinitas');
			writeln('2. La Montaña');
			writeln('3. La Aguada');
			writeln('4. Loma Redonda');
			writeln('5. Pico Espejo');
			readln(est);
			
				if (est < 1) or (est > 5) then//if para validar la estacion
				begin//begin de if para validacion de estacion
					writeln('La estacion ingresada es incorrecta. Por favor ungrese una estacion valida');
				end;//end de validacion de estacion
			until (est >= 1) and (est <= 5);//fin del repeat para validar la estacion
		
		end;//end principal case opcion 1
		
		2:
		begin//begin principal case opcion 2
		
		end;//end principal case opcion 2
	
	end;//end del case para opcion seleccion
		
End.//end principal
