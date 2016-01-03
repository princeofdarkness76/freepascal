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
<<<<<<< HEAD
    P:=AddPackage('cairo');
{$ifdef ALLPACKAGES}
    P.Directory:=ADirectory;
{$endif ALLPACKAGES}
    P.Version:='3.1.1';
    P.Author :=  'Library:  University of Southern California + Red Hat Inc., header: Luiz AmXrico Pereira CXmara';
    P.License := 'Library: MPL 1.1 + LGPL-2.1, header: LGPL with modification, ';
    P.HomepageURL := 'www.freepascal.org';
    P.OSes := [beos,haiku,freebsd,solaris,netbsd,openbsd,linux,win32,win64,aix,dragonfly];
    // Do not build cairo on iPhone (=arm-darwin)
    if Defaults.CPU<>arm then
      P.OSes := P.OSes + [darwin];

    P.Email := '';
    P.Description := 'a vector graphics library with display and print output';
    P.NeedLibC:= true;

=======

    P:=AddPackage('cairo');
{$ifdef ALLPACKAGES}
    P.Directory:='cairo';
{$endif ALLPACKAGES}
    P.Version:='2.2.4';
>>>>>>> graemeg/fixes_2_2
    P.SourcePath.Add('src');

    P.Dependencies.Add('x11',AllUnixOSes);
    P.Dependencies.Add('fcl-image');

    T:=P.Targets.AddUnit('cairo.pp');
<<<<<<< HEAD
    T:=P.Targets.AddUnit('cairogobject.pp');
=======
>>>>>>> graemeg/fixes_2_2
    T:=P.Targets.AddUnit('cairoft.pp');
    with T.Dependencies do
      begin
        AddUnit('cairo');
<<<<<<< HEAD
=======
        AddUnit('freetypeh');
>>>>>>> graemeg/fixes_2_2
      end;
   T:=P.Targets.AddUnit('cairoxlib.pp',AllUnixOSes);
    with T.Dependencies do
      begin
        AddUnit('cairo');
<<<<<<< HEAD
      end;
   T:=P.Targets.AddUnit('cairowin32.pp',AllWindowsOses);
    with T.Dependencies do
        AddUnit('cairo');
=======
        AddUnit('xlib');
        AddUnit('xrender');
      end;
   T:=P.Targets.AddUnit('cairowin32.pp',AllWindowOses);
    with T.Dependencies do
      begin
        AddUnit('cairo');
        AddUnit('windows');
      end;
>>>>>>> graemeg/fixes_2_2
{$ifndef ALLPACKAGES}
    Run;
    end;
end.
{$endif ALLPACKAGES}
