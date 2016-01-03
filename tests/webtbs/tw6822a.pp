{ %norun }
<<<<<<< HEAD
{ %needlibrary }
=======
>>>>>>> graemeg/fixes_2_2
library tw6822a;
{$mode objfpc}{$H+}

uses
<<<<<<< HEAD
  popuperr,
  uw6822a;

begin
{$ifndef wince}
  writeln('hello from library');
{$endif wince}
=======
  uw6822a;

begin
  writeln('hello from library');
>>>>>>> graemeg/fixes_2_2
end.
