{ %CPU=arm }
procedure p; assembler;
  var
    i : longint;
  asm
<<<<<<< HEAD
{$ifndef CPUTHUMB}
    mla r0,r1,r2,r3
{$endif CPUTHUMB}
=======
    mla r0,r1,r2,r3
>>>>>>> graemeg/fixes_2_2
  end;

begin
end.
