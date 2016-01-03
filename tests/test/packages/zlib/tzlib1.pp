{ %NOTE=This test requires an installed zlib1 shared library }
{ simple compilation test }
uses
<<<<<<< HEAD
  popuperr,
=======
>>>>>>> graemeg/fixes_2_2
  zlib;
begin
  writeln(zlibVersion);
end.
