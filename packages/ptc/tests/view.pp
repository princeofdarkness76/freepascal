{$MODE objfpc}

uses
  SysUtils, ptc;

{$I endian.inc}

var
<<<<<<< HEAD
<<<<<<< HEAD
  console: IPTCConsole;
  surface: IPTCSurface;
  format: IPTCFormat;
=======
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  format: TPTCFormat = nil;
>>>>>>> graemeg/cpstrnew
=======
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  format: TPTCFormat = nil;
>>>>>>> graemeg/cpstrnew
  pixels: PUint8;
  I: Integer;
  F: File;
begin
  try
    try
<<<<<<< HEAD
<<<<<<< HEAD
      console := TPTCConsoleFactory.CreateNew;

      {$IFDEF FPC_LITTLE_ENDIAN}
      format := TPTCFormatFactory.CreateNew(24, $00FF0000, $0000FF00, $000000FF);
      {$ELSE FPC_LITTLE_ENDIAN}
      format := TPTCFormatFactory.CreateNew(24, $000000FF, $0000FF00, $00FF0000);
      {$ENDIF FPC_LITTLE_ENDIAN}
      surface := TPTCSurfaceFactory.CreateNew(320, 200, format);
=======
      console := TPTCConsole.Create;

      {$IFDEF FPC_LITTLE_ENDIAN}
      format := TPTCFormat.Create(24, $00FF0000, $0000FF00, $000000FF);
      {$ELSE FPC_LITTLE_ENDIAN}
      format := TPTCFormat.Create(24, $000000FF, $0000FF00, $00FF0000);
      {$ENDIF FPC_LITTLE_ENDIAN}
      surface := TPTCSurface.Create(320, 200, format);
>>>>>>> graemeg/cpstrnew

      console.open('test', surface.width, surface.height, format);

=======
      console := TPTCConsole.Create;

      {$IFDEF FPC_LITTLE_ENDIAN}
      format := TPTCFormat.Create(24, $00FF0000, $0000FF00, $000000FF);
      {$ELSE FPC_LITTLE_ENDIAN}
      format := TPTCFormat.Create(24, $000000FF, $0000FF00, $00FF0000);
      {$ENDIF FPC_LITTLE_ENDIAN}
      surface := TPTCSurface.Create(320, 200, format);

      console.open('test', surface.width, surface.height, format);

>>>>>>> graemeg/cpstrnew
      for I := 1 to 100 do
      begin
        Writeln('test', I, '.raw');
        AssignFile(F, 'test' + IntToStr(I) + '.raw');
        Reset(F, 1);
        try
          pixels := surface.lock;
          try
            BlockRead(F, pixels^, surface.height * surface.pitch);
          finally
            surface.unlock;
          end;
        finally
          CloseFile(F);
        end;
        surface.copy(console);
        console.update;
        console.ReadKey;
      end;
    finally
<<<<<<< HEAD
<<<<<<< HEAD
      if Assigned(console) then
        console.close;
=======
=======
>>>>>>> graemeg/cpstrnew
      console.close;
      console.Free;
      surface.Free;
      format.Free;
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
    end;
  except
    on error: TPTCError do
      { report error }
      error.report;
  end;
end.
