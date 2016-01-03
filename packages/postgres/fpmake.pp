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

    P:=AddPackage('postgres');
<<<<<<< HEAD
    P.ShortName:='pgr';
{$ifdef ALLPACKAGES}
    P.Directory:=ADirectory;
{$endif ALLPACKAGES}
    P.Version:='3.1.1';
    P.SourcePath.Add('src');
    P.OSes := AllUnixOSes-[qnx]+AllWindowsOSes;

    P.IncludePath.Add('src');
=======
{$ifdef ALLPACKAGES}
    P.Directory:='postgres';
{$endif ALLPACKAGES}
    P.Version:='2.2.4';
    P.SourcePath.Add('src');
>>>>>>> graemeg/fixes_2_2

    T:=P.Targets.AddUnit('dllistdyn.pp');
      with T.Dependencies do
        begin
          AddInclude('dllisttypes.inc');
        end;
    T:=P.Targets.AddUnit('dllist.pp');
      with T.Dependencies do
        begin
          AddInclude('dllisttypes.inc');
        end;
    T:=P.Targets.AddUnit('postgres3dyn.pp');
      with T.Dependencies do
        begin
          AddInclude('postgres3types.inc');
          AddUnit('dllistdyn');
        end;
<<<<<<< HEAD
    T.ResourceStrings := True;
=======
>>>>>>> graemeg/fixes_2_2
    T:=P.Targets.AddUnit('postgres3.pp');
      with T.Dependencies do
        begin
          AddInclude('postgres3types.inc');
          AddUnit('dllist');
        end;
    T:=P.Targets.AddUnit('postgres.pp');
      with T.Dependencies do
        begin
          AddUnit('dllist');
        end;

<<<<<<< HEAD
    P.Sources.AddSrc('README.txt');

    P.ExamplePath.Add('examples');
    P.Targets.AddExampleProgram('testpg2.pp');
    P.Targets.AddExampleProgram('testpg1.pp');
    P.Sources.AddExampleFiles('examples/*',P.Directory,false,'.');

=======
>>>>>>> graemeg/fixes_2_2
{$ifndef ALLPACKAGES}
    Run;
    end;
end.
{$endif ALLPACKAGES}
