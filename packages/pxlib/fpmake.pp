{$ifndef ALLPACKAGES}
{$mode objfpc}{$H+}
program fpmake;

uses fpmkunit;

Var
  P : TPackage;
  T : TTarget;
begin
  With Installer do
    begin
{$endif ALLPACKAGES}
    P:=AddPackage('pxlib');
{$ifdef ALLPACKAGES}
    P.Directory:=ADirectory;
{$endif ALLPACKAGES}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    P.OSes:=[Linux,beos,haiku,win32,freebsd,openbsd,netbsd,dragonfly];
    P.Version:='3.1.1';
    T:=P.Targets.AddUnit('src/pxlib.pp');
    T:=P.Targets.AddExampleunit('examples/ppxview.pp');
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
    P.OSes:=[Linux,beos,win32,darwin,freebsd,openbsd,netbsd];
    P.Version:='2.2.2-0';
    T:=P.Targets.AddUnit('src/pxlib.pp');
      T.OSes:=[Linux,beos,win32,darwin,freebsd,openbsd,netbsd];
    T:=P.Targets.AddExampleunit('examples/ppxview.pp');
      T.OSes:=[Linux,beos,win32,darwin,freebsd,openbsd,netbsd];
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
{$ifndef ALLPACKAGES}
    Run;
    end;
end.
{$endif ALLPACKAGES}
