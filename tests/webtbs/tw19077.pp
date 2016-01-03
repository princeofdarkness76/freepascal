uses
  math;
var
  c : currency;
begin
<<<<<<< HEAD
{$ifdef FPC_HAS_TYPE_EXTENDED}
=======
>>>>>>> graemeg/cpstrnew
  c:=1.5625;
  c:=RoundTo(c,-1);
  if c<>1.6 then
    halt(1);
  writeln('ok');
<<<<<<< HEAD
{$endif FPC_HAS_TYPE_EXTENDED}
=======
>>>>>>> graemeg/cpstrnew
end.


