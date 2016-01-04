{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
 Tunnel demo for OpenPTC 1.0 C++ API
 Originally coded by Thomas Rizos (rizos@swipnet.se)
 Adapted for OpenPTC by Glenn Fiedler (ptc@gaffer.org)
 This source code is licensed under the GNU GPL
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
program Tunnel;

{$MODE objfpc}

uses
  ptc, Math;

type
  { tunnel class }
  TTunnel = class
    public
    constructor Create;
    destructor Destroy; override;
    procedure setup;
    procedure draw(buffer: PUint32; t: Single);
    private
    { tunnel data }
    tunnel: PUint32;
    texture: PUint8;
  end;

constructor TTunnel.Create;
begin
=======
=======
>>>>>>> origin/fixes_2_2
Program Tunnel;
=======
program Tunnel;
>>>>>>> origin/cpstrnew

{$MODE objfpc}

uses
  ptc, Math;

type
  { tunnel class }
  TTunnel = class
    public
    constructor Create;
    destructor Destroy; override;
    procedure setup;
    procedure draw(buffer: PUint32; t: Single);
    private
    { tunnel data }
    tunnel: PUint32;
    texture: PUint8;
  end;

<<<<<<< HEAD
Constructor TTunnel.Create;

Begin
  tunnel := Nil;
  texture := Nil;
  
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
constructor TTunnel.Create;
begin
>>>>>>> origin/cpstrnew
  { allocate tables }
  tunnel := GetMem(320*200*SizeOf(Uint32));
  texture := GetMem(256*256*2*SizeOf(Uint8));

  { setup }
  setup;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
end;

destructor TTunnel.Destroy;
begin
  { free tables }
  FreeMem(tunnel);
  FreeMem(texture);

  inherited Destroy;
end;

procedure TTunnel.setup;
var
  index: Integer;
  x, y: Integer;
  angle, angle1, angle2, radius, u, v: Double;
begin
  { tunnel index }
  index := 0;

  { generate tunnel table }
  for y := 100 DownTo -99 do
    for x := -160 to 159 do
    begin
=======
=======
>>>>>>> origin/fixes_2_2
End;

Destructor TTunnel.Destroy;
=======
end;
>>>>>>> origin/cpstrnew

destructor TTunnel.Destroy;
begin
  { free tables }
  FreeMem(tunnel);
  FreeMem(texture);

  inherited Destroy;
end;

procedure TTunnel.setup;
var
  index: Integer;
  x, y: Integer;
  angle, angle1, angle2, radius, u, v: Double;
begin
  { tunnel index }
  index := 0;

  { generate tunnel table }
<<<<<<< HEAD
  For y := 100 DownTo -99 Do
    For x := -160 To 159 Do
    Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  for y := 100 DownTo -99 do
    for x := -160 to 159 do
    begin
>>>>>>> origin/cpstrnew
      { calculate angle from center }
      angle := arctan2(y, x) * 256 / pi / 2;

      { calculate radius from center }
      radius := sqrt(x * x + y * y);

      { clamp radius to minimum }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if radius < 1 then
        radius := 1;
=======
      If radius < 1 Then
	radius := 1;
>>>>>>> graemeg/fixes_2_2
=======
      If radius < 1 Then
	radius := 1;
>>>>>>> origin/fixes_2_2
=======
      if radius < 1 then
        radius := 1;
>>>>>>> origin/cpstrnew

      { texture coordinates }
      u := angle;
      v := 6000 / radius;

      { calculate texture index for (u,v) }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      tunnel[index] := (Trunc(v) and $FF) * 256 + (Trunc(u) and $FF);
      Inc(index);
    end;
=======
      tunnel[index] := (Trunc(v) And $FF) * 256 + (Trunc(u) And $FF);
      Inc(index);
    End;
>>>>>>> graemeg/fixes_2_2
=======
      tunnel[index] := (Trunc(v) And $FF) * 256 + (Trunc(u) And $FF);
      Inc(index);
    End;
>>>>>>> origin/fixes_2_2
=======
      tunnel[index] := (Trunc(v) and $FF) * 256 + (Trunc(u) and $FF);
      Inc(index);
    end;
>>>>>>> origin/cpstrnew

  { generate blue plasma texture }
  index := 0;
  angle2 := pi * 2/256 * 230;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  for y := 0 to 256 * 2 - 1 do
  begin
    angle1 := pi * 2/256 * 100;
    for x := 0 to 256-1 do
    begin
      texture[index] := Trunc(sin(angle1)*80 + sin(angle2)*40 + 128);
      angle1 := angle1 + pi*2/256*3;
      Inc(index);
    end;
    angle2 := angle2 + pi * 2/256 *2;
  end;
end;

procedure TTunnel.draw(buffer: PUint32; t: Single);
var
  x, y: Integer;
  scroll: Uint32;
  i: Integer;
begin
=======
=======
>>>>>>> origin/fixes_2_2
  For y := 0 To 256 * 2 - 1 Do
  Begin
=======
  for y := 0 to 256 * 2 - 1 do
  begin
>>>>>>> origin/cpstrnew
    angle1 := pi * 2/256 * 100;
    for x := 0 to 256-1 do
    begin
      texture[index] := Trunc(sin(angle1)*80 + sin(angle2)*40 + 128);
      angle1 := angle1 + pi*2/256*3;
      Inc(index);
    end;
    angle2 := angle2 + pi * 2/256 *2;
<<<<<<< HEAD
  End;
End;

Procedure TTunnel.draw(buffer : PUint32; t : Single);

Var
  x, y : Integer;
  scroll : Uint32;
  i : Integer;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  end;
end;

procedure TTunnel.draw(buffer: PUint32; t: Single);
var
  x, y: Integer;
  scroll: Uint32;
  i: Integer;
begin
>>>>>>> origin/cpstrnew
  { tunnel control functions }
  x := Trunc(sin(t) * 99.9);
  y := Trunc(t * 200);

  { calculate tunnel scroll offset }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  scroll := ((y and $FF) shl 8) + (x and $FF);

  { loop through each pixel }
  for i := 0 to 64000-1 do
    { lookup tunnel texture }
    buffer[i] := texture[tunnel[i] + scroll];
end;

var
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  format: IPTCFormat;
  console: IPTCConsole;
  surface: IPTCSurface;
=======
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
>>>>>>> graemeg/cpstrnew
=======
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
>>>>>>> graemeg/cpstrnew
=======
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
>>>>>>> graemeg/cpstrnew
=======
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
>>>>>>> origin/cpstrnew
  TheTunnel: TTunnel = nil;
  time, delta: Single;
  buffer: PUint32;
begin
  try
    try
      { create format }
      format := TPTCFormatFactory.CreateNew(32, $00FF0000, $0000FF00, $000000FF);

      { create console }
      console := TPTCConsoleFactory.CreateNew;
=======
=======
>>>>>>> origin/fixes_2_2
  scroll := ((y And $FF) Shl 8) + (x And $FF);
=======
  scroll := ((y and $FF) shl 8) + (x and $FF);
>>>>>>> origin/cpstrnew

  { loop through each pixel }
  for i := 0 to 64000-1 do
    { lookup tunnel texture }
    buffer[i] := texture[tunnel[i] + scroll];
end;

var
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  TheTunnel: TTunnel = nil;
  time, delta: Single;
  buffer: PUint32;
begin
  try
    try
      { create format }
      format := TPTCFormat.Create(32, $00FF0000, $0000FF00, $000000FF);

      { create console }
      console := TPTCConsole.Create;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

      { open console }
      console.open('Tunnel demo', 320, 200, format);

      { create surface }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      surface := TPTCSurfaceFactory.CreateNew(320, 200, format);
=======
      surface := TPTCSurface.Create(320, 200, format);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew

=======
      surface := TPTCSurface.Create(320, 200, format);
<<<<<<< HEAD
    
>>>>>>> graemeg/fixes_2_2
=======
      surface := TPTCSurface.Create(320, 200, format);
    
>>>>>>> origin/fixes_2_2
=======

>>>>>>> origin/cpstrnew
      { create tunnel }
      TheTunnel := TTunnel.Create;

      { time data }
      time := 0;
      delta := 0.03;

      { loop until a key is pressed }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      while not console.KeyPressed do
      begin
        { lock surface }
        buffer := surface.lock;
        try
          { draw tunnel }
          TheTunnel.draw(buffer, time);
        finally
          { unlock surface }
          surface.unlock;
        end;
=======
=======
>>>>>>> origin/fixes_2_2
      While Not console.KeyPressed Do
      Begin
=======
      while not console.KeyPressed do
      begin
>>>>>>> origin/cpstrnew
        { lock surface }
        buffer := surface.lock;
        try
          { draw tunnel }
          TheTunnel.draw(buffer, time);
        finally
          { unlock surface }
          surface.unlock;
<<<<<<< HEAD
	End;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
        end;
>>>>>>> origin/cpstrnew

        { copy to console }
        surface.copy(console);

        { update console }
        console.update;

        { update time }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        time := time + delta;
      end;
    finally
      TheTunnel.Free;
<<<<<<< HEAD
      if Assigned(console) then
        console.close;
=======
=======
=======
>>>>>>> origin/fixes_2_2
        time += delta;
      End;
    Finally
=======
        time := time + delta;
      end;
    finally
>>>>>>> origin/cpstrnew
      TheTunnel.Free;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
      surface.Free;
      console.close;
      console.Free;
      format.Free;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
    end;
  except
    on error: TPTCError do
      { report error }
      error.report;
  end;
end.
=======
=======
>>>>>>> origin/fixes_2_2
    End;
  Except
    On error : TPTCError Do
      { report error }
      error.report;
  End;
End.
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
    end;
  except
    on error: TPTCError do
      { report error }
      error.report;
  end;
end.
>>>>>>> origin/cpstrnew
