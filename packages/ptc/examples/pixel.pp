{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
 Pixel example for OpenPTC 1.0 C++ API
 Copyright (c) Glenn Fiedler (ptc@gaffer.org)
 This source code is licensed under the GNU GPL
}

program PixelExample;

{$MODE objfpc}

uses
  ptc;

<<<<<<< HEAD
procedure putpixel(surface: IPTCSurface; x, y: Integer; r, g, b: Uint8);
=======
procedure putpixel(surface: TPTCSurface; x, y: Integer; r, g, b: Uint8);
>>>>>>> graemeg/cpstrnew
var
  pixels: PUint32;
  color: Uint32;
begin
  { lock surface }
  pixels := surface.lock;
  try
    { pack the color integer from r,g,b components }
    color := (r shl 16) or (g shl 8) or b;

    { plot the pixel on the surface }
    pixels[x + y * surface.width] := color;
  finally
    { unlock surface }
    surface.unlock;
  end;
end;

var
<<<<<<< HEAD
  console: IPTCConsole;
  surface: IPTCSurface;
  format: IPTCFormat;
=======
  console: TPTCConsole = nil;
  surface: TPTCSurface = nil;
  format: TPTCFormat = nil;
>>>>>>> graemeg/cpstrnew
begin
  try
    try
      { create console }
      console := TPTCConsoleFactory.CreateNew;

      { create format }
      format := TPTCFormatFactory.CreateNew(32, $00FF0000, $0000FF00, $000000FF);

      { open the console }
      console.open('Pixel example', format);

      { create surface matching console dimensions }
      surface := TPTCSurfaceFactory.CreateNew(console.width, console.height, format);

      { plot a white pixel in the middle of the surface }
      putpixel(surface, surface.width div 2, surface.height div 2, 255, 255, 255);

      { copy to console }
      surface.copy(console);

      { update console }
      console.update;

      { read key }
      console.ReadKey;
    finally
<<<<<<< HEAD
      if Assigned(console) then
        console.close;
=======
      console.close;
      console.Free;
      surface.Free;
      format.Free;
>>>>>>> graemeg/cpstrnew
    end;
  except
    on error: TPTCError do
      { report error }
      error.report;
  end;
end.
