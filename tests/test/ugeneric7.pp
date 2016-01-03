{$mode objfpc}

unit ugeneric7;

  interface

    type
      generic tgeneric<t> = class
<<<<<<< HEAD
        l : longint;
=======
>>>>>>> graemeg/fixes_2_2
        field : t;
        procedure test;
      end;

  implementation

{$R-}
    procedure tgeneric.test;
<<<<<<< HEAD
=======
      var
        l : longint;
>>>>>>> graemeg/fixes_2_2
      begin
        l:=1234;
{$R+}
        field:=l;
{$R-}
        writeln(byte(field));
      end;
{$R+}
end.
