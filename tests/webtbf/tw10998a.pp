{ %fail }

program statictest;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$mode delphi}
=======
{$mode delphi}{$STATIC ON}
>>>>>>> graemeg/fixes_2_2
=======
{$mode delphi}{$STATIC ON}
>>>>>>> origin/fixes_2_2
=======
{$mode delphi}
>>>>>>> origin/cpstrnew

type
  TMyClass = class
  public
    class procedure StaticCall; static;
  end;

class procedure TMyClass.StaticCall;
begin
  WriteLn('Static method was called!');
  writeln(ptruint(self));
end;

begin
  TMyClass.StaticCall;
end.
