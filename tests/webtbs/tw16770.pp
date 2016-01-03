{ %result=201 }

{$mode delphi}
{$r+}
<<<<<<< HEAD
var
  Count: Word;

procedure Test;
var
  I: Integer;

begin
=======
procedure Test;
var
  Count: Word;
  I: Integer;

begin
  Count := 0;

>>>>>>> graemeg/cpstrnew
  for I := 0 to Pred(Count) do
    begin
      WriteLn(I);
      break;
    end;
end;

begin
<<<<<<< HEAD
  Count := 0;

=======
>>>>>>> graemeg/cpstrnew
  test;
end.

