Program Nave;
  Var
    naveX, naveY, tiroX, tiroY, alvoX, alvoY, i, contagem: Integer;
    a: char;
    alvo: array [1..5,1..2] of char;
Begin
 
  alvo[1, 1]:= '#';
  alvo[2, 1]:= '*';
  alvo[3, 1]:= '|';
  alvo[4, 1]:= '*';
  alvo[5, 1]:= '#';
  alvo[1, 2]:= 'v';
  alvo[2, 2]:= 'v';
  alvo[3, 2]:= 'v';
  alvo[4, 2]:= 'v';
  alvo[5, 2]:= 'v';
  naveX := 1;
  naveY := 1;
  gotoXY(naveX, naveY);
  WriteLn('-(\|/)-');
  alvoX:= Random(70);
  alvoY:= 24;
  gotoXY(alvoX, alvoY);
  for i:= 1 to 5 do
    Begin
      if (alvo[i, 2] = 'v') then
        Write(alvo[i, 1])
      else
        Write(' ');
    End;
  Repeat
    a := readKey;
    //hpkm
    Case a of
      'H':
        Begin
          naveY:= naveY - 1;
          clrScr;
          gotoXY(naveX, naveY);
          WriteLn('-(\|/)-');
          gotoXY(alvoX, alvoY);
          for i:= 1 to 5 do
            Begin
              if (alvo[i, 2] = 'v') then
                Write(alvo[i, 1])
              else
                Write(' ');
            End;
        End;
      'P':
        Begin
          naveY:= naveY + 1;
          clrScr;
          gotoXY(naveX, naveY);
          WriteLn('-(\|/)-');
          gotoXY(alvoX, alvoY);
          for i:= 1 to 5 do
            Begin
              if (alvo[i, 2] = 'v') then
                Write(alvo[i, 1])
              else
                Write(' ');
            End;
        End;
      'K':
        Begin
          naveX:= naveX - 1;
          clrScr;
          gotoXY(naveX, naveY);
          WriteLn('-(\|/)-');
          gotoXY(alvoX, alvoY);
          for i:= 1 to 5 do
            Begin
              if (alvo[i, 2] = 'v') then
                Write(alvo[i, 1])
              else
                Write(' ');
            End;
        End;
      'M':
        Begin
          naveX:= naveX + 1;
          clrScr;
          gotoXY(naveX, naveY);
          WriteLn('-(\|/)-');
          gotoXY(alvoX, alvoY);
          for i:= 1 to 5 do
            Begin
              if (alvo[i, 2] = 'v') then
                Write(alvo[i, 1])
              else
                Write(' ');
            End;
        End;
      ' ':
        Begin
          clrScr;
          WriteLn(#7);
          for tiroY := naveY to alvoY do
            begin
              tiroX := naveX+3;
              gotoXY(naveX, naveY);
              WriteLn('-(\|/)-');
              gotoXY(alvoX, alvoY);
              for i:= 1 to 5 do
                Begin
                  if (alvo[i, 2] = 'v') then
                    Write(alvo[i, 1])
                  else
                    Write(' ');
                End;
              gotoXY(tiroX, tiroY);
              WriteLn('|');
              delay(50);
              clrScr;
            End;
          gotoXY(naveX, naveY);
          WriteLn('-(\|/)-');
          if (tiroX = alvoX) or (tiroX = alvoX+1) or (tiroX = alvoX+2) or (tiroX = alvoX+3) or (tiroX = alvoX+4) then
            Begin
              if (alvo[tiroX - alvoX + 1, 2] = 'v') then
                contagem:= contagem + 1;
              alvo[tiroX - alvoX + 1, 2]:= 'f';
              alvoX:= Random(70);
              gotoXY(alvoX, alvoY);
              for i:= 1 to 5 do
                Begin
                  if (alvo[i, 2] = 'v') then
                    Write(alvo[i, 1])
                  else
                    Write(' ');
                End;
            End
          else
            Begin
              alvoY := alvoY - 1;
              gotoXY(alvoX, alvoY);
              for i:= 1 to 5 do
                Begin
                  if (alvo[i, 2] = 'v') then
                    Write(alvo[i, 1])
                  else
                    Write(' ');
                End;
              if (alvoY = naveY) then
                Begin
                  clrScr;
                  WriteLn('Perdeu');
                  a := 's';
                End;
            End;
          if (contagem = 5) then
            Begin
              ClrScr;
              WriteLn('Ganhou');
            End;
        End;
    End;
  Until(contagem = 5) or (a = 's');
End.
