{
Ported to FPC by Nikolay Nikolov (nickysn@users.sourceforge.net)
}

{
  Texture warp demo for OpenPTC 1.0 C++ API
  Copyright (c) 1998 Jonathan Matthew
  This source code is licensed under the GNU GPL
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
program TexWarp;

{$MODE objfpc}

uses
  ptc;

const
{ colour balance values.  change these if you don't like the colouring }
{ of the texture. }
  red_balance: Uint32 = 2;
  green_balance: Uint32 = 3;
  blue_balance: Uint32 = 1;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure blur(s: IPTCSurface);
=======
procedure blur(s: TPTCSurface);
>>>>>>> graemeg/cpstrnew
=======
procedure blur(s: TPTCSurface);
>>>>>>> graemeg/cpstrnew
=======
procedure blur(s: TPTCSurface);
>>>>>>> graemeg/cpstrnew
=======
procedure blur(s: TPTCSurface);
>>>>>>> origin/cpstrnew
var
  d: PUint8;
  pitch: Integer;
  spack, r: Integer;
begin
  { lock surface }
  d := s.lock;

  try
=======
=======
>>>>>>> origin/fixes_2_2
Program TexWarp;
=======
program TexWarp;
>>>>>>> origin/cpstrnew

{$MODE objfpc}

uses
  ptc;

const
{ colour balance values.  change these if you don't like the colouring }
{ of the texture. }
  red_balance: Uint32 = 2;
  green_balance: Uint32 = 3;
  blue_balance: Uint32 = 1;

procedure blur(s: TPTCSurface);
var
  d: PUint8;
  pitch: Integer;
  spack, r: Integer;
begin
  { lock surface }
  d := s.lock;
<<<<<<< HEAD
  
  Try
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======

  try
>>>>>>> origin/cpstrnew
    pitch := s.pitch;
    spack := (s.height - 1) * pitch;

    { first pixel }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    for r := 0 to 3 do
      d[r] := (d[pitch + r] + d[r + 4] + d[spack + r] + d[pitch - 4 + r]) div 4;

    { rest of first line }
    for r := 4 to pitch - 1 do
      d[r] := (d[r + pitch] + d[r + 4] + d[r - 4] + d[spack + r]) div 4;

    { rest of surface except last line }
    for r := pitch to ((s.height - 1) * pitch) - 1 do
      d[r] := (d[r - pitch] + d[r + pitch] + d[r + 4] + d[r - 4]) div 4;

    { last line except last pixel }
    for r := (s.height - 1) * pitch to (s.height * s.pitch) - 5 do
      d[r] := (d[r - pitch] + d[r + 4] + d[r - 4] + d[r - spack]) div 4;

    { last pixel }
    for r := (s.height * s.pitch) - 4 to s.height * s.pitch - 1 do
      d[r] := (d[r - pitch] + d[r - 4] + d[r - spack] + d[r + 4 - pitch]) div 4;

  finally
    s.unlock;
  end;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure generate(surface: IPTCSurface);
=======
procedure generate(surface: TPTCSurface);
>>>>>>> graemeg/cpstrnew
=======
procedure generate(surface: TPTCSurface);
>>>>>>> graemeg/cpstrnew
=======
procedure generate(surface: TPTCSurface);
>>>>>>> graemeg/cpstrnew
=======
procedure generate(surface: TPTCSurface);
>>>>>>> origin/cpstrnew
var
  dest: PUint32;
  i: Integer;
  x, y: Integer;
  d: PUint32;
  cv: Uint32;
  r, g, b: Uint8;
begin
  { draw random dots all over the surface }
  dest := surface.lock;
  try
    for i := 0 to surface.width * surface.height - 1 do
    begin
      x := Random(surface.width);
      y := Random(surface.height);
      d := dest + (y * surface.width) + x;
      cv := (Random(100) shl 16) or (Random(100) shl 8) or Random(100);
      d^ := cv;
    end;
  finally
    surface.unlock;
  end;

  { blur the surface }
  for i := 1 to 5 do
    blur(surface);

  { multiply the color values }
  dest := surface.lock;
  try
    for i := 0 to surface.width * surface.height - 1 do
    begin
      cv := dest^;
      r := (cv shr 16) and 255;
      g := (cv shr 8) and 255;
      b := cv and 255;
      r := r * red_balance;
      g := g * green_balance;
      b := b * blue_balance;
      if r > 255 then
        r := 255;
      if g > 255 then
        g := 255;
      if b > 255 then
        b := 255;
      dest^ := (r shl 16) or (g shl 8) or b;
      Inc(dest);
    end;
  finally
    surface.unlock;
  end;
end;

procedure grid_map(grid: PUint32; xbase, ybase, xmove, ymove, amp: Single);
var
  x, y: Integer;
  a, b, id: Single;
begin
  a := 0;
  for y := 0 to 25 do
  begin
    b := 0;
    for x := 0 to 40 do
    begin
=======
=======
>>>>>>> origin/fixes_2_2
    For r := 0 To 3 Do
      d[r] := (d[pitch + r] + d[r + 4] + d[spack + r] + d[pitch - 4 + r]) Div 4;
=======
    for r := 0 to 3 do
      d[r] := (d[pitch + r] + d[r + 4] + d[spack + r] + d[pitch - 4 + r]) div 4;
>>>>>>> origin/cpstrnew

    { rest of first line }
    for r := 4 to pitch - 1 do
      d[r] := (d[r + pitch] + d[r + 4] + d[r - 4] + d[spack + r]) div 4;

    { rest of surface except last line }
    for r := pitch to ((s.height - 1) * pitch) - 1 do
      d[r] := (d[r - pitch] + d[r + pitch] + d[r + 4] + d[r - 4]) div 4;

    { last line except last pixel }
    for r := (s.height - 1) * pitch to (s.height * s.pitch) - 5 do
      d[r] := (d[r - pitch] + d[r + 4] + d[r - 4] + d[r - spack]) div 4;

    { last pixel }
    for r := (s.height * s.pitch) - 4 to s.height * s.pitch - 1 do
      d[r] := (d[r - pitch] + d[r - 4] + d[r - spack] + d[r + 4 - pitch]) div 4;

  finally
    s.unlock;
  end;
end;

procedure generate(surface: TPTCSurface);
var
  dest: PUint32;
  i: Integer;
  x, y: Integer;
  d: PUint32;
  cv: Uint32;
  r, g, b: Uint8;
begin
  { draw random dots all over the surface }
  dest := surface.lock;
  try
    for i := 0 to surface.width * surface.height - 1 do
    begin
      x := Random(surface.width);
      y := Random(surface.height);
      d := dest + (y * surface.width) + x;
      cv := (Random(100) shl 16) or (Random(100) shl 8) or Random(100);
      d^ := cv;
    end;
  finally
    surface.unlock;
  end;

  { blur the surface }
  for i := 1 to 5 do
    blur(surface);

  { multiply the color values }
  dest := surface.lock;
  try
    for i := 0 to surface.width * surface.height - 1 do
    begin
      cv := dest^;
      r := (cv shr 16) and 255;
      g := (cv shr 8) and 255;
      b := cv and 255;
      r := r * red_balance;
      g := g * green_balance;
      b := b * blue_balance;
      if r > 255 then
        r := 255;
      if g > 255 then
        g := 255;
      if b > 255 then
        b := 255;
      dest^ := (r shl 16) or (g shl 8) or b;
      Inc(dest);
    end;
  finally
    surface.unlock;
  end;
end;

procedure grid_map(grid: PUint32; xbase, ybase, xmove, ymove, amp: Single);
var
  x, y: Integer;
  a, b, id: Single;
begin
  a := 0;
  for y := 0 to 25 do
  begin
    b := 0;
<<<<<<< HEAD
    For x := 0 To 40 Do
    Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
    for x := 0 to 40 do
    begin
>>>>>>> origin/cpstrnew
      { it should be noted that there is no scientific basis for }
      { the following three lines :) }
      grid[0] := Uint32(Trunc((xbase * 14 + x*4 + xmove*sin(b)+sin(cos(a)*sin(amp))*15) * 65536));
      grid[1] := Uint32(Trunc((ybase * 31 + y*3 + ymove*cos(b)*sin(sin(a)*cos(amp))*30) * 65536));
      id := (cos(xbase) + sin(ybase) + cos(a*xmove*0.17) + sin(b*ymove*0.11)) * amp * 23;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if id < -127 then
        grid[2] := 0
      else
        if id > 127 then
          grid[2] := 255 shl 16
        else
          grid[2] := (128 shl 16) + Trunc(id * 65536.0);
      Inc(grid, 3);
      b := b + pi / 30;
    end;
    a := a + pi / 34;
  end;
end;

procedure make_light_table(lighttable: PUint8);
var
  i, j: Integer;
  tv: Integer;
begin
  for i := 0 to 255 do
    for j := 0 to 255 do
    begin
      { light table goes from 0 to i*2. }
      tv := (i * j) div 128;
      if tv > 255 then
        tv := 255;
      lighttable[(j * 256) + i] := tv;
    end;
end;

{ if you want to see how to do this properly, look at the tunnel3d demo. }
{ (not included in this distribution :) }
procedure texture_warp(dest, grid, texture: PUint32; lighttable: PUint8);
var
  utl, utr, ubl, ubr: Integer;
  vtl, vtr, vbl, vbr: Integer;
  itl, itr, ibl, ibr: Integer;
  dudx, dvdx, didx, dudy, dvdy, didy, ddudy, ddvdy, ddidy: Integer;
  dudx2, dvdx2, didx2: Integer;
  bx, by, px, py: Integer;
  uc, vc, ic, ucx, vcx, icx: Integer;

  edi: Uint32;
  texel: Uint32;

  cbp, dp: PUint32;
  dpix: Uint32;

  ltp: PUint8;
begin
  cbp := grid;
  for by := 0 to 24 do
  begin
    for bx := 0 to 39 do
    begin
=======
=======
>>>>>>> origin/fixes_2_2
      If id < -127 Then
=======
      if id < -127 then
>>>>>>> origin/cpstrnew
        grid[2] := 0
      else
        if id > 127 then
          grid[2] := 255 shl 16
        else
          grid[2] := (128 shl 16) + Trunc(id * 65536.0);
      Inc(grid, 3);
      b := b + pi / 30;
    end;
    a := a + pi / 34;
  end;
end;

procedure make_light_table(lighttable: PUint8);
var
  i, j: Integer;
  tv: Integer;
begin
  for i := 0 to 255 do
    for j := 0 to 255 do
    begin
      { light table goes from 0 to i*2. }
      tv := (i * j) div 128;
      if tv > 255 then
        tv := 255;
      lighttable[(j * 256) + i] := tv;
    end;
end;

{ if you want to see how to do this properly, look at the tunnel3d demo. }
{ (not included in this distribution :) }
procedure texture_warp(dest, grid, texture: PUint32; lighttable: PUint8);
var
  utl, utr, ubl, ubr: Integer;
  vtl, vtr, vbl, vbr: Integer;
  itl, itr, ibl, ibr: Integer;
  dudx, dvdx, didx, dudy, dvdy, didy, ddudy, ddvdy, ddidy: Integer;
  dudx2, dvdx2, didx2: Integer;
  bx, by, px, py: Integer;
  uc, vc, ic, ucx, vcx, icx: Integer;

  edi: Uint32;
  texel: Uint32;

  cbp, dp: PUint32;
  dpix: Uint32;

  ltp: PUint8;
begin
  cbp := grid;
<<<<<<< HEAD
  For by := 0 To 24 Do
  Begin
    For bx := 0 To 39 Do
    Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  for by := 0 to 24 do
  begin
    for bx := 0 to 39 do
    begin
>>>>>>> origin/cpstrnew
      utl := Integer(cbp^);
      vtl := Integer((cbp + 1)^);
      itl := Integer((cbp + 2)^);
      utr := Integer((cbp + (1 * 3))^);
      vtr := Integer((cbp + (1 * 3) + 1)^);
      itr := Integer((cbp + (1 * 3) + 2)^);
      ubl := Integer((cbp + (41 * 3))^);
      vbl := Integer((cbp + (41 * 3) + 1)^);
      ibl := Integer((cbp + (41 * 3) + 2)^);
      ubr := Integer((cbp + (42 * 3))^);
      vbr := Integer((cbp + (42 * 3) + 1)^);
      ibr := Integer((cbp + (42 * 3) + 2)^);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
      dudx := (utr - utl) div 8;
      dvdx := (vtr - vtl) div 8;
      didx := (itr - itl) div 8;
      dudx2 := (ubr - ubl) div 8;
      dvdx2 := (vbr - vbl) div 8;
      didx2 := (ibr - ibl) div 8;
      dudy := (ubl - utl) div 8;
      dvdy := (vbl - vtl) div 8;
      didy := (ibl - itl) div 8;
      ddudy := (dudx2 - dudx) div 8;
      ddvdy := (dvdx2 - dvdx) div 8;
      ddidy := (didx2 - didx) div 8;
<<<<<<< HEAD
      uc := utl;
      vc := vtl;
      ic := itl;
      for py := 0 to 7 do
      begin
        ucx := uc;
        vcx := vc;
        icx := ic;
        dp := dest + (((by * 8 + py)*320) + (bx * 8));
        for px := 0 to 7 do
        begin

          { get light table pointer for current intensity }
          ltp := lighttable + ((icx and $FF0000) shr 8);

          { get texel }
          edi := ((ucx and $FF0000) shr 16) + ((vcx and $FF0000) shr 8);
          texel := texture[edi];

          { calculate actual colour }
          dpix := ltp[(texel shr 16) and 255];
          dpix := dpix shl 8;
          dpix := dpix or ltp[(texel shr 8) and 255];
          dpix := dpix shl 8;
          dpix := dpix or ltp[texel and 255];

          dp^ := dpix;
          Inc(dp);

          Inc(ucx, dudx);
          Inc(vcx, dvdx);
          Inc(icx, didx);
        end;
        Inc(uc, dudy);
        Inc(vc, dvdy);
        Inc(ic, didy);
        Inc(dudx, ddudy);
        Inc(dvdx, ddvdy);
        Inc(didx, ddidy);
      end;
      Inc(cbp, 3);
    end;
    Inc(cbp, 3);
  end;
end;

var
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  format: IPTCFormat;
  texture: IPTCSurface;
  surface: IPTCSurface;
  console: IPTCConsole;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  format: TPTCFormat = nil;
  texture: TPTCSurface = nil;
  surface: TPTCSurface = nil;
  console: TPTCConsole = nil;
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
  lighttable: PUint8 = nil;
  { texture grid }
  grid: array [0..41*26*3-1] of Uint32;
  xbase, ybase, xmove, ymove, amp, dct, dxb, dyb, dxm, dym, sa: Single;

  p1, p2: PUint32;
begin
  try
    try
      { create format }
<<<<<<< HEAD
      format := TPTCFormatFactory.CreateNew(32, $00FF0000, $0000FF00, $000000FF);
=======
      format := TPTCFormat.Create(32, $00FF0000, $0000FF00, $000000FF);
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

      { create texture surface }
      texture := TPTCSurfaceFactory.CreateNew(256, 256, format);
=======
=======
>>>>>>> origin/fixes_2_2
      dudx := (utr - utl) Div 8;
      dvdx := (vtr - vtl) Div 8;
      didx := (itr - itl) Div 8;
      dudx2 := (ubr - ubl) Div 8;
      dvdx2 := (vbr - vbl) Div 8;
      didx2 := (ibr - ibl) Div 8;
      dudy := (ubl - utl) Div 8;
      dvdy := (vbl - vtl) Div 8;
      didy := (ibl - itl) Div 8;
      ddudy := (dudx2 - dudx) Div 8;
      ddvdy := (dvdx2 - dvdx) Div 8;
      ddidy := (didx2 - didx) Div 8;
=======
>>>>>>> origin/cpstrnew
      uc := utl;
      vc := vtl;
      ic := itl;
      for py := 0 to 7 do
      begin
        ucx := uc;
        vcx := vc;
        icx := ic;
        dp := dest + (((by * 8 + py)*320) + (bx * 8));
        for px := 0 to 7 do
        begin

          { get light table pointer for current intensity }
          ltp := lighttable + ((icx and $FF0000) shr 8);

          { get texel }
          edi := ((ucx and $FF0000) shr 16) + ((vcx and $FF0000) shr 8);
          texel := texture[edi];

          { calculate actual colour }
          dpix := ltp[(texel shr 16) and 255];
          dpix := dpix shl 8;
          dpix := dpix or ltp[(texel shr 8) and 255];
          dpix := dpix shl 8;
          dpix := dpix or ltp[texel and 255];

          dp^ := dpix;
          Inc(dp);

          Inc(ucx, dudx);
          Inc(vcx, dvdx);
          Inc(icx, didx);
        end;
        Inc(uc, dudy);
        Inc(vc, dvdy);
        Inc(ic, didy);
        Inc(dudx, ddudy);
        Inc(dvdx, ddvdy);
        Inc(didx, ddidy);
      end;
      Inc(cbp, 3);
    end;
    Inc(cbp, 3);
  end;
end;

var
  format: TPTCFormat = nil;
  texture: TPTCSurface = nil;
  surface: TPTCSurface = nil;
  console: TPTCConsole = nil;
  lighttable: PUint8 = nil;
  { texture grid }
  grid: array [0..41*26*3-1] of Uint32;
  xbase, ybase, xmove, ymove, amp, dct, dxb, dyb, dxm, dym, sa: Single;

  p1, p2: PUint32;
begin
  try
    try
      { create format }
      format := TPTCFormat.Create(32, $00FF0000, $0000FF00, $000000FF);

      { create texture surface }
      texture := TPTCSurface.Create(256, 256, format);
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

      { create texture }
      generate(texture);

      { create lighttable }
      lighttable := GetMem(256 * 256);
      make_light_table(lighttable);

      { create console }
<<<<<<< HEAD
<<<<<<< HEAD
      console := TPTCConsoleFactory.CreateNew;
=======
      console := TPTCConsole.Create;
>>>>>>> graemeg/fixes_2_2
=======
      console := TPTCConsole.Create;
>>>>>>> origin/fixes_2_2

      { open console }
      console.open('Warp demo', 320, 200, format);

      { create drawing surface }
<<<<<<< HEAD
<<<<<<< HEAD
      surface := TPTCSurfaceFactory.CreateNew(320, 200, format);
=======
      surface := TPTCSurface.Create(320, 200, format);
>>>>>>> graemeg/fixes_2_2
=======
      surface := TPTCSurface.Create(320, 200, format);
>>>>>>> origin/fixes_2_2

      { control values }
      xbase := 0;
      ybase := 0;
      xmove := 0;
      ymove := 0;
      amp := 0;
      dct := 0.024;
      dxb := 0.031;
      dyb := -0.019;
      dxm := 0.015;
      dym := -0.0083;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

      { main loop }
      while not console.KeyPressed do
      begin

=======
=======
>>>>>>> origin/fixes_2_2
    
      { main loop }
      While Not console.KeyPressed Do
      Begin
    
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======

      { main loop }
      while not console.KeyPressed do
      begin

>>>>>>> origin/cpstrnew
        { create texture mapping grid }
        grid_map(grid, xbase, ybase, xmove, ymove*3, amp);

        p1 := surface.lock;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        try
          p2 := texture.lock;
          try
            { map texture to drawing surface }
            texture_warp(p1, grid, p2, lighttable);
          finally
            texture.unlock;
          end;
        finally
          surface.unlock;
        end;
=======
=======
>>>>>>> origin/fixes_2_2
	Try
	  p2 := texture.lock;
	  Try
=======
        try
          p2 := texture.lock;
          try
>>>>>>> origin/cpstrnew
            { map texture to drawing surface }
            texture_warp(p1, grid, p2, lighttable);
          finally
            texture.unlock;
          end;
        finally
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
        surface.copy(console);

        { update console }
        console.update;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

        { move control values (limit them so it doesn't go too far) }
        xbase := xbase + dxb;
        if xbase > pi then
          dxb := -dxb;
        if xbase < (-pi) then
          dxb := -dxb;

        ybase := ybase + dyb;
        if ybase > pi then
          dyb := -dyb;
        if ybase < (-pi) then
          dyb := -dyb;

        xmove := xmove + dxm;
        if xmove > pi then
          dxm := -dxm;
        if xmove < (-pi) then
          dxm := -dxm;

        ymove := ymove + dym;
        if ymove > pi then
          dym := -dym;
        if ymove < (-pi) then
          dym := -dym;

        amp := amp + dct;
        sa := sin(amp);
        if (sa > -0.0001) and (sa < 0.0001) then
        begin
          if amp > 8.457547 then
            dct := -dct;
          if amp < -5.365735 then
            dct := -dct;
        end;
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
=======
=======
>>>>>>> origin/fixes_2_2
      
=======

>>>>>>> origin/cpstrnew
        { move control values (limit them so it doesn't go too far) }
        xbase := xbase + dxb;
        if xbase > pi then
          dxb := -dxb;
        if xbase < (-pi) then
          dxb := -dxb;

        ybase := ybase + dyb;
        if ybase > pi then
          dyb := -dyb;
        if ybase < (-pi) then
          dyb := -dyb;

        xmove := xmove + dxm;
        if xmove > pi then
          dxm := -dxm;
        if xmove < (-pi) then
          dxm := -dxm;

        ymove := ymove + dym;
        if ymove > pi then
          dym := -dym;
        if ymove < (-pi) then
          dym := -dym;

        amp := amp + dct;
        sa := sin(amp);
<<<<<<< HEAD
        If (sa > -0.0001) And (sa < 0.0001) Then
        Begin
          If amp > 8.457547 Then
	    dct := -dct;
	  If amp < -5.365735 Then
	    dct := -dct;
        End;
      End;
    Finally
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
        if (sa > -0.0001) and (sa < 0.0001) then
        begin
          if amp > 8.457547 then
            dct := -dct;
          if amp < -5.365735 then
            dct := -dct;
        end;
      end;
    finally
>>>>>>> origin/cpstrnew
      console.close;
      console.Free;
      surface.Free;
      texture.Free;
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
=======
>>>>>>> origin/cpstrnew
      FreeMem(lighttable);
    end;
  except
    on e: TPTCError do
<<<<<<< HEAD
      e.report;
  end;
end.
=======
=======
>>>>>>> origin/fixes_2_2
      If assigned(lighttable) Then
        FreeMem(lighttable);
    End;
  Except
    On e : TPTCError Do
      e.report;
  End;
End.
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
      e.report;
  end;
end.
>>>>>>> origin/cpstrnew
