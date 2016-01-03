<<<<<<< HEAD
{ %target=darwin,linux,freebsd,solaris,beos,haiku,aix,android }
{ %NEEDLIBRARY }
{ %delfiles=tw16263a }
=======
{ %target=darwin,linux,freebsd,solaris,beos,haiku }
{ %NEEDLIBRARY }
>>>>>>> graemeg/cpstrnew

{$mode delphi}
program MainApp;

uses
  dynlibs,
  Math;

const
{$ifdef windows}
  libname='tw16263a.dll';
{$else}
<<<<<<< HEAD
  libname = './libtw16263a.'+SharedSuffix;
=======
  {$ifdef darwin}
  libname = './libtw16263a.dylib';
  {$else darwin}
  libname = './libtw16263a.so';
  {$endif darwin}
>>>>>>> graemeg/cpstrnew
{$endif}

var
  hdl: TLibHandle; 
begin
  // the library will perform a div-by-zero in its init code
  setexceptionmask([exZeroDivide]);
  hdl := loadlibrary(libname);
  if (hdl=nilhandle) then
    halt(1);
  unloadlibrary(hdl);
end.
