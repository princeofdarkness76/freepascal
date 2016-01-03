unit wmext; 

{$mode objfpc}{$H+}

interface

uses
<<<<<<< HEAD
  Classes, SysUtils, HTTPDefs, websession, fpHTTP, fpWeb, 
=======
  Classes, SysUtils, FileUtil, LResources, HTTPDefs, websession, fpHTTP, fpWeb, 
>>>>>>> graemeg/cpstrnew
    fpjsonrpc, webjsonrpc, fpextdirect, fpjson;

type

  { TDemoClass }

  TDemoClass = class(TExtDirectModule)
    Add: TJSONRPCHandler;
    procedure AddExecute(Sender: TObject; const Params: TJSONData; out
      Res: TJSONData);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  DemoClass: TDemoClass;

implementation

<<<<<<< HEAD
{$R *.lfm}

=======
>>>>>>> graemeg/cpstrnew
{ TDemoClass }

procedure TDemoClass.AddExecute(Sender: TObject;
  const Params: TJSONData; out Res: TJSONData);

Var
  A,B : TJSONData;

begin
  If (Params is TJSONArray) then
    begin
    A:=TJSONArray(Params).Items[0];
    B:=TJSONArray(Params).Items[1];
    Res:=TJSONFLoatNumber.Create(B.AsFloat+A.AsFloat);
    end;
end;

initialization
<<<<<<< HEAD
=======
  {$I wmext.lrs}

>>>>>>> graemeg/cpstrnew
  RegisterHTTPModule('demo', TDemoClass);
end.

