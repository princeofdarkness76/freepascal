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

    P:=AddPackage('unixutil');
{$ifdef ALLPACKAGES}
    P.Directory:=ADirectory;
{$endif ALLPACKAGES}
<<<<<<< HEAD
    P.Version:='3.1.1';
    P.OSes:=[Linux];
    P.CPUs:=[i386];
    P.Dependencies.add('libc');
=======
    P.Version:='2.2.2-0';
    P.OSes:=[Linux];
    P.CPUs:=[i386];
>>>>>>> graemeg/cpstrnew
    P.SourcePath.Add('src');
    T:=P.Targets.AddUnit('unixutils.pp');

{$ifndef ALLPACKAGES}
    Run;
    end;
end.
{$endif ALLPACKAGES}
