{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
 Fire demo for OpenPTC 1.0 C++ API
 Copyright (c) Glenn Fiedler (ptc@gaffer.org)
 This source code is licensed under the GNU GPL
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
program Fire;

{$MODE objfpc}

uses
  ptc;

function pack(r, g, b: Uint32): Uint32;
begin
  { pack color integer }
  pack := (r shl 16) or (g shl 8) or b;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure generate(palette: IPTCPalette);
=======
procedure generate(palette: TPTCPalette);
>>>>>>> graemeg/cpstrnew
=======
procedure generate(palette: TPTCPalette);
>>>>>>> graemeg/cpstrnew
=======
procedure generate(palette: TPTCPalette);
>>>>>>> graemeg/cpstrnew
=======
procedure generate(palette: TPTCPalette);
>>>>>>> origin/cpstrnew
var
  data: PUint32;
  i, c: Integer;
begin
  { lock palette data }
  data := palette.Lock;

  try
    { black to red }
    i := 0;
    c := 0;
    while i < 64 do
    begin
      data[i] := pack(c, 0, 0);
      Inc(c, 4);
      Inc(i);
    end;

    { red to yellow }
    c := 0;
    while i < 128 do
    begin
      data[i] := pack(255, c, 0);
      Inc(c, 4);
      Inc(i);
    end;

    { yellow to white }
    c := 0;
    while i < {192}128 do
    begin
      data[i] := pack(255, 255, c);
      Inc(c, 4);
      Inc(i);
    end;

    { white }
    while i < 256 do
    begin
      data[i] := pack(255, 255, 255);
      Inc(i);
    end;

  finally
    { unlock palette }
<<<<<<< HEAD
    palette.Unlock;
=======
    palette.unlock;
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
end;

var
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  format: IPTCFormat;
  console: IPTCConsole;
  surface: IPTCSurface;
  palette: IPTCPalette;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  palette: TPTCPalette = nil;
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
  state: Integer;
  intensity: Single;
  pixels, pixel, p: PUint8;
  width, height: Integer;
  x, y: Integer;
  top, bottom, c1, c2: Uint32;
  generator: PUint8;
  color: Integer;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  area: IPTCArea;
=======
  area: TPTCArea = nil;
>>>>>>> graemeg/cpstrnew
=======
  area: TPTCArea = nil;
>>>>>>> graemeg/cpstrnew
=======
  area: TPTCArea = nil;
>>>>>>> graemeg/cpstrnew
=======
  area: TPTCArea = nil;
>>>>>>> origin/cpstrnew
begin
  try
    try
      { create format }
      format := TPTCFormatFactory.CreateNew(8);

      { create console }
      console := TPTCConsoleFactory.CreateNew;
=======
=======
>>>>>>> origin/fixes_2_2
Program Fire;
=======
program Fire;
>>>>>>> origin/cpstrnew

{$MODE objfpc}

uses
  ptc;

function pack(r, g, b: Uint32): Uint32;
begin
  { pack color integer }
  pack := (r shl 16) or (g shl 8) or b;
end;

procedure generate(palette: TPTCPalette);
var
  data: PUint32;
  i, c: Integer;
begin
  { lock palette data }
  data := palette.lock;

  try
    { black to red }
    i := 0;
    c := 0;
    while i < 64 do
    begin
      data[i] := pack(c, 0, 0);
      Inc(c, 4);
      Inc(i);
    end;

    { red to yellow }
    c := 0;
    while i < 128 do
    begin
      data[i] := pack(255, c, 0);
      Inc(c, 4);
      Inc(i);
    end;

    { yellow to white }
    c := 0;
    while i < {192}128 do
    begin
      data[i] := pack(255, 255, c);
      Inc(c, 4);
      Inc(i);
    end;

    { white }
    while i < 256 do
    begin
      data[i] := pack(255, 255, 255);
      Inc(i);
    end;

  finally
    { unlock palette }
    palette.unlock;
  end;
end;

var
  format: TPTCFormat = nil;
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  palette: TPTCPalette = nil;
  state: Integer;
  intensity: Single;
  pixels, pixel, p: PUint8;
  width, height: Integer;
  x, y: Integer;
  top, bottom, c1, c2: Uint32;
  generator: PUint8;
  color: Integer;
  area: TPTCArea = nil;
begin
  try
    try
      { create format }
      format := TPTCFormat.Create(8);

      { create console }
      console := TPTCConsole.Create;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

      { open console }
      console.open('Fire demo', 320, 200, format);

      { create surface }
<<<<<<< HEAD
<<<<<<< HEAD
      surface := TPTCSurfaceFactory.CreateNew(320, 208, format);

      { create palette }
      palette := TPTCPaletteFactory.CreateNew;
=======
=======
>>>>>>> origin/fixes_2_2
      surface := TPTCSurface.Create(320, 208, format);

      { create palette }
      palette := TPTCPalette.Create;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

      { generate palette }
      generate(palette);

      { set console palette }
      console.palette(palette);

      { set surface palette }
      surface.palette(palette);

      { flame data }
      state := 0;
      intensity := 0;

      { setup copy area }
<<<<<<< HEAD
<<<<<<< HEAD
      area := TPTCAreaFactory.CreateNew(0, 0, 320, 200);

      { main loop }
      repeat
        { lower flame on keypress }
        if console.KeyPressed then
          state := 2;

        { state machine }
        case state of
          0: begin
            { raise flame }
            intensity := intensity + 0.007;

            { maximum flame height }
            if intensity > 0.8 then
              state := 1;
          end;
          1: begin
            { constant flame }
          end;
          2: begin
=======
=======
>>>>>>> origin/fixes_2_2
      area := TPTCArea.Create(0, 0, 320, 200);

      { main loop }
      repeat
        { lower flame on keypress }
        if console.KeyPressed then
          state := 2;

        { state machine }
        case state of
          0: begin
            { raise flame }
            intensity := intensity + 0.007;

            { maximum flame height }
            if intensity > 0.8 then
              state := 1;
          end;
          1: begin
            { constant flame }
<<<<<<< HEAD
          End;
          2 : Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
          end;
          2: begin
>>>>>>> origin/cpstrnew
            { lower flame }
            intensity := intensity - 0.005;

            { exit program when flame is out }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            if intensity < 0.01 then
            begin
              console.close;
              exit;
            end;
          end;
        end;

        { lock surface pixels }
        pixels := surface.lock;

        try
=======
=======
>>>>>>> origin/fixes_2_2
            If intensity < 0.01 Then
            Begin
=======
            if intensity < 0.01 then
            begin
>>>>>>> origin/cpstrnew
              console.close;
              exit;
            end;
          end;
        end;

        { lock surface pixels }
        pixels := surface.lock;
<<<<<<< HEAD
	
	Try
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======

        try
>>>>>>> origin/cpstrnew
          { get surface dimensions }
          width := surface.width;
          height := surface.height;

          { flame vertical loop }
          y := 1;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          while y < height - 4 do
          begin
=======
          While y < height - 4 Do
          Begin
>>>>>>> graemeg/fixes_2_2
=======
          While y < height - 4 Do
          Begin
>>>>>>> origin/fixes_2_2
=======
          while y < height - 4 do
          begin
>>>>>>> origin/cpstrnew
            { current pixel pointer }
            pixel := pixels + y * width;

            { flame horizontal loop }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            for x := 0 to width - 1 do
            begin
              { sum top pixels }
              p := pixel + (width shl 1);
=======
=======
>>>>>>> origin/fixes_2_2
            For x := 0 To width - 1 Do
            Begin
              { sum top pixels }
              p := pixel + (width Shl 1);
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
            for x := 0 to width - 1 do
            begin
              { sum top pixels }
              p := pixel + (width shl 1);
>>>>>>> origin/cpstrnew
              top := p^;
              Inc(top, (p - 1)^);
              Inc(top, (p + 1)^);

              { bottom pixel }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
              bottom := (pixel + (width shl 2))^;

              { combine pixels }
              c1 := (top + bottom) shr 2;
              if c1 > 1 then
                Dec(c1);

              { interpolate }
              c2 := (c1 + bottom) shr 1;
=======
=======
>>>>>>> origin/fixes_2_2
              bottom := (pixel + (width Shl 2))^;
=======
              bottom := (pixel + (width shl 2))^;
>>>>>>> origin/cpstrnew

              { combine pixels }
              c1 := (top + bottom) shr 2;
              if c1 > 1 then
                Dec(c1);

              { interpolate }
<<<<<<< HEAD
              c2 := (c1 + bottom) Shr 1;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
              c2 := (c1 + bottom) shr 1;
>>>>>>> origin/cpstrnew

              { store pixels }
              pixel^ := c1;
              (pixel + width)^ := c2;

              { next pixel }
              Inc(pixel);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            end;
            Inc(y, 2);
          end;
=======
            End;
            Inc(y, 2);
          End;
>>>>>>> graemeg/fixes_2_2
=======
            End;
            Inc(y, 2);
          End;
>>>>>>> origin/fixes_2_2
=======
            end;
            Inc(y, 2);
          end;
>>>>>>> origin/cpstrnew

          { setup flame generator pointer }
          generator := pixels + width * (height - 4);

          { update flame generator bar }
          x := 0;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          while x < width do
          begin
=======
          While x < width Do
          Begin
>>>>>>> graemeg/fixes_2_2
=======
          While x < width Do
          Begin
>>>>>>> origin/fixes_2_2
=======
          while x < width do
          begin
>>>>>>> origin/cpstrnew
            { random block color taking intensity into account }
            color := random(Integer(Trunc(255 * intensity)));

            { write 4x4 color blocks }
            (generator + 0)^             := color;
            (generator + 1)^             := color;
            (generator + 2)^             := color;
            (generator + 3)^             := color;
            (generator + width + 0)^     := color;
            (generator + width + 1)^     := color;
            (generator + width + 2)^     := color;
            (generator + width + 3)^     := color;
            (generator + width * 2 + 0)^ := color;
            (generator + width * 2 + 1)^ := color;
            (generator + width * 2 + 2)^ := color;
            (generator + width * 2 + 3)^ := color;
            (generator + width * 3 + 0)^ := color;
            (generator + width * 3 + 1)^ := color;
            (generator + width * 3 + 2)^ := color;
            (generator + width * 3 + 3)^ := color;

            { next block }
            Inc(generator, 4);
            Inc(x, 4);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          end;

        finally
          { unlock surface }
          surface.unlock;
        end;
=======
=======
>>>>>>> origin/fixes_2_2
          End;
=======
          end;
>>>>>>> origin/cpstrnew

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

        { copy surface to console }
        surface.copy(console, area, area);

        { update console }
        console.update;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      until False;

    finally
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if Assigned(console) then
        console.Close;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
=======
      Until False;
      
    Finally
>>>>>>> graemeg/fixes_2_2
=======
      Until False;
      
    Finally
>>>>>>> origin/fixes_2_2
=======
      until False;

    finally
>>>>>>> origin/cpstrnew
      console.Free;
      surface.Free;
      format.Free;
      palette.Free;
      area.Free;
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
