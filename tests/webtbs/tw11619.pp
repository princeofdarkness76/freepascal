{ %norun }

<<<<<<< HEAD
{$inline on}
program TEST;
{$EXTENDEDSYNTAX OFF}
VAR
   IO: WORD; { or LONGINT if wanted }

function test: word; inline;
begin
  test:=1;
  writeln(io);
end;

BEGIN
   IO:=test;
END.
=======
program TEST;
{$EXTENDEDSYNTAX OFF}
USES
  DOS;
VAR
  IO: WORD; { or LONGINT if wanted }
BEGIN
  IO:=IORESULT;
END.


>>>>>>> graemeg/fixes_2_2
