{$mode objfpc}
{$H+}
program testtimer;

uses 
{$ifdef unix}
  cthreads,
{$endif}
  sysutils,classes,custapp,fptimer;

Type
  TTestTimerApp = Class(TCustomApplication)
  Private
    FTimer : TFPTimer;
    FCount : Integer;
    FTick : Integer;
<<<<<<< HEAD
    N : TDateTime;
=======
>>>>>>> graemeg/fixes_2_2
  Public  
    Procedure DoRun; override;
    Procedure DoTick(Sender : TObject);
  end;

Procedure TTestTimerApp.DoRun; 

begin
  FTimer:=TFPTimer.Create(Self);
  FTimer.Interval:=100;
  FTimer.OnTimer:=@DoTick;
  FTimer.Enabled:=True;
  Try
    FTick:=0;
    FCount:=0;
<<<<<<< HEAD
    N:=Now;
    While (FCount<10) do
      begin
      Inc(FTick);
      Sleep(1);
      CheckSynchronize; // Needed, because we are not running in a GUI loop.
=======
    While (FCount<10) do
      begin
      Inc(FTick);
      CheckSynchronize; // Needed, because we are not running in a GUI loop.
      Sleep(1);
>>>>>>> graemeg/fixes_2_2
      end;
  Finally
    FTimer.Enabled:=False;
    FreeAndNil(FTimer);
  end;
  Terminate;
end;

Procedure TTestTimerApp.DoTick(Sender : TObject);

<<<<<<< HEAD
Var
  D : TDateTime;

begin
  Inc(FCount);
  D:=Now-N;
  Writeln('Received timer event ',FCount,' after ',FTick,' ticks. (Elapsed time: ',FormatDateTime('ss.zzz',D),')');
  FTick:=0;
  N:=Now;
=======
begin
  Inc(FCount);
  Writeln('Received timer event ',FCount,' after ',FTick,' ticks.');
  FTick:=0;
>>>>>>> graemeg/fixes_2_2
end;
        

begin
  With TTestTimerApp.Create(Nil) do
    Try
      Run
    finally
      Free;
    end;  
end.