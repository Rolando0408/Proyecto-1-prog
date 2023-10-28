Program teleferico;
Uses crt;
Var 
  opc: integer;
Begin//Begin principal
repeat//Para validar la opcion
	writeln('Bienvenido al teleferico de Merida, a continuacion seleccione la opcion que desea realizar.');
	writeln('1. Comprar boleto');
	writeln('2. Ver sistema del teleferico');
	writeln('3. Salir');
	readln(opc);
	
		if (opc < 1) or (opc > 3) then
		begin//Begin del if para validar opcion
			writeln('Opcion invalida. Por favor ingrese una opcion valida.');
		end;//End del if para validar la opcion
until (opc >= 1) and (opc <= 3);//Fin del repeat para validar opcion

End.//end principal
