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

    P:=AddPackage('pthreads');
{$ifdef ALLPACKAGES}
<<<<<<< HEAD
    P.Directory:=ADirectory;
{$endif ALLPACKAGES}
    P.Version:='3.1.1';
    P.OSes := [beos,haiku,freebsd,darwin,iphonesim,solaris,netbsd,openbsd,linux,aix,dragonfly];
    P.SourcePath.Add('src');
    P.IncludePath.Add('src');
=======
    P.Directory:='pthreads';
{$endif ALLPACKAGES}
    P.Version:='2.2.4';
    P.SourcePath.Add('src');
>>>>>>> graemeg/fixes_2_2

    T:=P.Targets.AddUnit('pthreads.pp');
    with T.Dependencies do
      begin
        AddInclude('pthrlinux.inc',[Linux]);
        AddInclude('pthrbeos.inc',[Beos]);
        AddInclude('pthrsnos.inc',[Solaris]);
        AddInclude('pthrbsd.inc',AllBSDOses);
<<<<<<< HEAD
        AddInclude('pthraix.inc',[AIX]);
=======
>>>>>>> graemeg/fixes_2_2
      end;

{$ifndef ALLPACKAGES}
    Run;
    end;
end.
{$endif ALLPACKAGES}
