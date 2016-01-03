<<<<<<< HEAD
<<<<<<< HEAD

unit tval1;

{$mode fpc}

interface

function TestAllVal1 : boolean;

implementation

uses
  tvalc;

type
  IntegerType = longint;

{$i tval.inc}


function TestAllVal1 : boolean;
begin
  Writeln('Test val for longint type');
  TestAllVal1:=TestAll;
end;

end.
=======
=======
>>>>>>> origin/fixes_2_2

unit tval1;

{$mode fpc}

interface

function TestAllVal1 : boolean;

implementation

uses
  tvalc;

type
  IntegerType = longint;

{$i tval.inc}


function TestAllVal1 : boolean;
begin
  Writeln('Test val for longint type');
  TestAllVal1:=TestAll;
end;

end.
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
