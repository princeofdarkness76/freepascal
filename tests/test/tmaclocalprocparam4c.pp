{ %norun }

{$mode tp}
{$modeswitch nestedprocvars}

type
  tprocedure = procedure;

<<<<<<< HEAD
procedure test(p: codepointer);
=======
procedure test(p: pointer);
>>>>>>> graemeg/cpstrnew

  procedure nested;
    begin
    end;

begin
  { this should be a plain pointer }
  test(@nested);
end;

begin
end.
