program tw18567;

{$mode delphi}

type
  TSomeRecord <TData> = record
    data: TData;
<<<<<<< HEAD
<<<<<<< HEAD
    class operator Explicit(a: TData) : TSomeRecord <TData>;
  end;

  class operator TSomeRecord <TData>.Explicit (a: TData): TSomeRecord <TData>;
=======
=======
>>>>>>> graemeg/cpstrnew
    class operator Explicit(a: TData) : TSomeRecord;
  end;

  class operator TSomeRecord <TData>.Explicit (a: TData): TSomeRecord;
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  begin

  end;

begin
<<<<<<< HEAD
<<<<<<< HEAD
end.
=======
end.
>>>>>>> graemeg/cpstrnew
=======
end.
>>>>>>> graemeg/cpstrnew
