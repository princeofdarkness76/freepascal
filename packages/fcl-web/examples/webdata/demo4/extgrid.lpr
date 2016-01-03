program extgrid;

{$mode objfpc}{$H+}

uses
  {$ifdef unix}cwstring,xmliconv,{$endif}
  fpCGI, wmjsonusers, wmxmlusers, dmusers;

{$IFDEF WINDOWS}{$R extgrid.rc}{$ENDIF}

<<<<<<< HEAD
{$R *.res}

=======
>>>>>>> graemeg/cpstrnew
begin
  Application.Initialize;
  Application.Run;
end.

