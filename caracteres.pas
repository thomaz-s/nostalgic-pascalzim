Program Pzim ;
	Var
		x, y, i: Integer;
Begin;
	x:=1;
	y:=1;
	For i:= 1 to 255 do
		Begin
			GotoXY(x,y);
			Write(i, ': ', chr(i));
			y:= y+1;
			If (y > 25) Then
				Begin
					x:= x + 8;
					y:= 1;
				End;
		End;
End.