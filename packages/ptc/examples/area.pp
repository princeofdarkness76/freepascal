{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
 Area example for OpenPTC 1.0 C++ implementation
 Copyright (c) Glenn Fiedler (ptc@gaffer.org)
 This source code is in the public domain
}

program AreaExample;

{$MODE objfpc}

uses
  ptc;

var
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  console: IPTCConsole;
  format: IPTCFormat;
  surface: IPTCSurface;
=======
  console: TPTCConsole = nil;
  format: TPTCFormat = nil;
  surface: TPTCSurface = nil;
>>>>>>> graemeg/cpstrnew
=======
  console: TPTCConsole = nil;
  format: TPTCFormat = nil;
  surface: TPTCSurface = nil;
>>>>>>> graemeg/cpstrnew
=======
  console: TPTCConsole = nil;
  format: TPTCFormat = nil;
  surface: TPTCSurface = nil;
>>>>>>> graemeg/cpstrnew
=======
  console: TPTCConsole = nil;
  format: TPTCFormat = nil;
  surface: TPTCSurface = nil;
>>>>>>> origin/cpstrnew
  pixels: PDWord;
  width, height: Integer;
  i: Integer;
  x, y, r, g, b: Integer;
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
      { create console }
      console := TPTCConsoleFactory.CreateNew;

      { create format }
      format := TPTCFormatFactory.CreateNew(32, $00FF0000, $0000FF00, $000000FF);

      { create console }
      console.open('Area example', format);

      { create surface half the size of the console }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      surface := TPTCSurfaceFactory.CreateNew(console.width div 2, console.height div 2, format);
=======
      surface := TPTCSurface.Create(console.width div 2, console.height div 2, format);
>>>>>>> graemeg/cpstrnew
=======
      surface := TPTCSurface.Create(console.width div 2, console.height div 2, format);
>>>>>>> graemeg/cpstrnew
=======
      surface := TPTCSurface.Create(console.width div 2, console.height div 2, format);
>>>>>>> graemeg/cpstrnew
=======
      surface := TPTCSurface.Create(console.width div 2, console.height div 2, format);
>>>>>>> origin/cpstrnew

      { setup destination area }
      x := console.width div 4;
      y := console.height div 4;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      area := TPTCAreaFactory.CreateNew(x, y, x + surface.width, y + surface.height);
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
      area := TPTCArea.Create(x, y, x + surface.width, y + surface.height);
>>>>>>> graemeg/cpstrnew

      { loop until a key is pressed }
      while not console.KeyPressed do
      begin
        { lock surface }
        pixels := surface.lock;
        try
          { get surface dimensions }
          width := surface.width;
          height := surface.height;

          { draw random pixels }
          for i := 1 to 100 do
          begin
            { get random position }
            x := Random(width);
            y := Random(height);

            { get random color }
            r := Random(256);
            g := Random(256);
            b := Random(256);

            { draw color [r,g,b] at position [x,y] }
            pixels[x + y * width] := (r shl 16) + (g shl 8) + b;
          end;
        finally
          { unlock surface }
          surface.unlock;
        end;

        { copy surface to console destination area }
        surface.copy(console, surface.area, area);

        { update console area }
        console.update;
      end;
    finally
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if Assigned(console) then
        console.close;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
      console.close;
      console.Free;
      surface.Free;
      format.Free;
      area.Free;
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
