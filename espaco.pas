Program Pzim;
	Var
		x, y, ponto, xnave, ynave: integer;
	Begin
		//fazer o céu
		for x:= 1 to 80 do
			begin
				for y:= 1 to 25 do
					begin
						ponto := random(7);
						gotoxy(x, y);
						if ponto = 1 then
							Write('.');
					end;
			end;
		//fazer a nave
		y:= 10;
		for x:= 1 to 75 do
			begin
				gotoxy(x, y);
				write('|-|->');
				delay(100);
				gotoxy(x, y);
				ponto:= random (7);
				if (ponto = 1) then
					write('.')
				else
					write(' ');
			end;
	End.
		