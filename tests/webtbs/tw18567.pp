program tw18567;

{$mode delphi}

type
  TSomeRecord <TData> = record
    data: TData;
<<<<<<< HEAD
    class operator Explicit(a: TData) : TSomeRecord <TData>;
  end;

  class operator TSomeRecord <TData>.Explicit (a: TData): TSomeRecord <TData>;
=======
    class operator Explicit(a: TData) : TSomeRecord;
  end;

  class operator TSomeRecord <TData>.Explicit (a: TData): TSomeRecord;
>>>>>>> graemeg/cpstrnew
  begin

  end;

begin
<<<<<<< HEAD
end.
=======
end.
>>>>>>> graemeg/cpstrnew
