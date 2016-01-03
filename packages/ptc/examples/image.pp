{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
 Image example for OpenPTC 1.0 C++ implementation
 Copyright (c) Glenn Fiedler (ptc@gaffer.org)
 This source code is in the public domain
}

program ImageExample;

{$MODE objfpc}

uses
  SysUtils, ptc;

<<<<<<< HEAD
<<<<<<< HEAD
procedure load(surface: IPTCSurface; filename: String);
=======
procedure load(surface: TPTCSurface; filename: String);
>>>>>>> graemeg/cpstrnew
=======
procedure load(surface: TPTCSurface; filename: String);
>>>>>>> graemeg/cpstrnew
var
  F: File;
  width, height: Integer;
  pixels: PByte = nil;
  y: Integer;
<<<<<<< HEAD
<<<<<<< HEAD
  img_format: IPTCFormat;
=======
  img_format: TPTCFormat = nil;
  img_palette: TPTCPalette = nil;
>>>>>>> graemeg/cpstrnew
=======
  img_format: TPTCFormat = nil;
  img_palette: TPTCPalette = nil;
>>>>>>> graemeg/cpstrnew
begin
  { open image file }
  AssignFile(F, filename);
  Reset(F, 1);

  try
    { skip header }
    Seek(F, 18);

    { get surface dimensions }
    width := surface.width;
    height := surface.height;

    { allocate image pixels }
    pixels := GetMem(width * height * 3);

    { read image pixels one line at a time }
    for y := height - 1 DownTo 0 do
      BlockRead(F, pixels[width * y * 3], width * 3);

    { load pixels to surface }
    {$IFDEF FPC_LITTLE_ENDIAN}
<<<<<<< HEAD
<<<<<<< HEAD
    img_format := TPTCFormatFactory.CreateNew(24, $00FF0000, $0000FF00, $000000FF);
    {$ELSE FPC_LITTLE_ENDIAN}
    img_format := TPTCFormatFactory.CreateNew(24, $000000FF, $0000FF00, $00FF0000);
    {$ENDIF FPC_LITTLE_ENDIAN}
    surface.Load(pixels, width, height, width * 3, img_format, TPTCPaletteFactory.CreateNew);
=======
=======
>>>>>>> graemeg/cpstrnew
    img_format := TPTCFormat.Create(24, $00FF0000, $0000FF00, $000000FF);
    {$ELSE FPC_LITTLE_ENDIAN}
    img_format := TPTCFormat.Create(24, $000000FF, $0000FF00, $00FF0000);
    {$ENDIF FPC_LITTLE_ENDIAN}
    img_palette := TPTCPalette.Create;
    surface.load(pixels, width, height, width * 3, img_format, img_palette);
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

  finally
    CloseFile(F);

    { free image pixels }
    FreeMem(pixels);
<<<<<<< HEAD
<<<<<<< HEAD
=======

    img_palette.Free;
    img_format.Free;
>>>>>>> graemeg/cpstrnew
=======

    img_palette.Free;
    img_format.Free;
>>>>>>> graemeg/cpstrnew
  end;
end;

var
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
begin
  try
    try
      { create console }
<<<<<<< HEAD
<<<<<<< HEAD
      console := TPTCConsoleFactory.CreateNew;

      { create format }
      format := TPTCFormatFactory.CreateNew(32, $00FF0000, $0000FF00, $000000FF);
=======
=======
>>>>>>> graemeg/cpstrnew
      console := TPTCConsole.Create;

      { create format }
      format := TPTCFormat.Create(32, $00FF0000, $0000FF00, $000000FF);
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

      try
        { try to open the console matching the image resolution }
        console.open('Image example', 320, 200, format);
      except
        on TPTCError do
          { fallback to the default resolution }
          console.open('Image example', format);
      end;

      { create surface }
<<<<<<< HEAD
<<<<<<< HEAD
      surface := TPTCSurfaceFactory.CreateNew(320, 200, format);
=======
      surface := TPTCSurface.Create(320, 200, format);
>>>>>>> graemeg/cpstrnew
=======
      surface := TPTCSurface.Create(320, 200, format);
>>>>>>> graemeg/cpstrnew

      { load image to surface }
      load(surface, 'image.tga');

      { copy surface to console }
      surface.copy(console);

      { update console }
      console.update;

      { read key }
      console.ReadKey;

    finally
      { close console }
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
