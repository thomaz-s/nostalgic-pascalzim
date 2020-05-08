Program Pzim ;
	const
		n = 1000;
		m = 5;
	var
		i, j: integer;
		numeros: array [1..n] of integer;
 Begin
	for i:= 1 to n do
		numeros[i]:= random(m);
	for j:= 0 to m do
		begin
			for i:= 1 to n do
				if numeros[i] = j then
					write(j);
			writeLn;
		end;
 End.
