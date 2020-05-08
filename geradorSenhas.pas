Program GeradorSenhas;
  var i, b, num: Integer;
  arq: Text;
  caminho: String;
Begin
  Write('Digita o numero de caracteres da senha: ');
  read(num);
  Write('Digita onde o arqivo vai ser salvo: ');
  read(caminho);
  Assign(arq, caminho);
  ReWrite(arq);
  WriteLn(arq, 'Senha:');
  close(arq);
  if (num > 2) then
    for i:= 1 to num do
      Begin
        b:= random(122);
        if (b<48) then
          Repeat
            b:= b + 10;
          until (b>=48);
        if (b>57) and (b<65) then
          b:= b + 26;
        if (b>90) and  (b<97) then
          b:= b + 26;
        Write(chr(b));
        append(arq);
        Write(arq, chr(b));
        close(arq);
      End
  else
    WriteLn('O número tem que ser mayor que 2');
End.
