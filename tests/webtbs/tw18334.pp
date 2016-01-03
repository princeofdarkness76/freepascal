{ %cpu=arm }
{ %norun }

procedure test; assembler;
  asm
<<<<<<< HEAD
<<<<<<< HEAD
(* not sure which CPUs really support it (FK) *)
{$ifdef CPU_ARMV7M}
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
    cps #0
    cpsie aif, #0
    cpsid aif, #0
    cpsie aif
    cpsid aif
<<<<<<< HEAD
<<<<<<< HEAD
{$endif CPU_ARMV7M}
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  end;

begin
end.
