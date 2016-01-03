{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
 Palette example for OpenPTC 1.0 C++ implementation
 Copyright (c) Glenn Fiedler (ptc@gaffer.org)
 This source code is in the public domain
}

program PaletteExample;

{$MODE objfpc}

uses
  ptc;

var
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  console: IPTCConsole;
  surface: IPTCSurface;
  format: IPTCFormat;
  palette: IPTCPalette;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  format: TPTCFormat = nil;
  palette: TPTCPalette = nil;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  data: array [0..255] of Uint32;
  pixels: PUint8;
  width, height: Integer;
  i: Integer;
  x, y, index: Integer;
begin
  try
    try
      { create console }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      console := TPTCConsoleFactory.CreateNew;

      { create format }
      format := TPTCFormatFactory.CreateNew(8);
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
      console := TPTCConsole.Create;

      { create format }
      format := TPTCFormat.Create(8);
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

      { open console }
      console.open('Palette example', format);

      { create surface }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      surface := TPTCSurfaceFactory.CreateNew(console.width, console.height, format);

      { create palette }
      palette := TPTCPaletteFactory.CreateNew;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
      surface := TPTCSurface.Create(console.width, console.height, format);

      { create palette }
      palette := TPTCPalette.Create;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

      { generate palette }
      for i := 0 to 255 do
        data[i] := i;

      { load palette data }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      palette.Load(data);

      { set console palette }
      console.Palette(palette);

      { set surface palette }
      surface.Palette(palette);
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
      palette.load(data);

      { set console palette }
      console.palette(palette);

      { set surface palette }
      surface.palette(palette);
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
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

            { get random color index }
            index := Random(256);

            { draw color [index] at position [x,y] }
            pixels[x + y * width] := index;
          end;
        finally
          { unlock surface }
          surface.unlock;
        end;

        { copy to console }
        surface.copy(console);

        { update console }
        console.update;
      end;
    finally
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
      console.close;
      console.Free;
      surface.Free;
      palette.Free;
      format.Free;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
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
