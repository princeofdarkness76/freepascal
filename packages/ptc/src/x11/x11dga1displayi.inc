<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{
    This file is part of the PTCPas framebuffer library
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    Copyright (C) 2001-2012 Nikolay Nikolov (nickysn@users.sourceforge.net)
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/cpstrnew
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/cpstrnew
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/cpstrnew
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> origin/cpstrnew
=======
{
    This file is part of the PTCPas framebuffer library
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> origin/cpstrnew
    Original C++ version by Christian Nentwich (c.nentwich@cs.ucl.ac.uk)

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version
    with the following modification:

    As a special exception, the copyright holders of this library give you
    permission to link this library with independent modules to produce an
    executable, regardless of the license terms of these independent modules,and
    to copy and distribute the resulting executable under terms of your choice,
    provided that you also meet, for each linked independent module, the terms
    and conditions of the license of that module. An independent module is a
    module which is not derived from or based on this library. If you modify
    this library, you may extend this exception to your version of the library,
    but you are not obligated to do so. If you do not wish to do so, delete this
    exception statement from your version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}
<<<<<<< HEAD

{$IFDEF ENABLE_X11_EXTENSION_XF86DGA1}

constructor TX11DGA1Display.Create(ADisplay: PDisplay; AScreen: Integer; const AFlags: TX11Flags);
var
  dummy1, dummy2: Integer;
begin
  inherited;
=======
=======
>>>>>>> origin/fixes_2_2
{$IFDEF ENABLE_X11_EXTENSION_XF86DGA1}

Constructor TX11DGA1Display.Create(ADisplay : PDisplay; AScreen : Integer; Const AFlags : TX11Flags);
=======
>>>>>>> origin/cpstrnew

{$IFDEF ENABLE_X11_EXTENSION_XF86DGA1}

<<<<<<< HEAD
Begin
  Inherited;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
constructor TX11DGA1Display.Create(ADisplay: PDisplay; AScreen: Integer; const AFlags: TX11Flags);
var
  dummy1, dummy2: Integer;
begin
  inherited;
>>>>>>> origin/cpstrnew

  LOG('trying to create a DGA 1.0 display');

  FInDirect := False;
  FInMode := False;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  FModeInfo := nil;

  { Check if we are root }
  if fpgeteuid <> 0 then
    raise TPTCError.Create('Have to be root to switch to DGA mode');

  { Check if the DGA extension and VidMode extension can be used }
  if not XF86DGAQueryExtension(FDisplay, @dummy1, @dummy2) then
    raise TPTCError.Create('DGA extension not available');
  if not XF86VidModeQueryExtension(FDisplay, @dummy1, @dummy2) then
    raise TPTCError.Create('VidMode extension not available');
end;

destructor TX11DGA1Display.Destroy;
begin
  Close;
  inherited Destroy;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TX11DGA1Display.Open(ATitle: string; AWidth, AHeight: Integer; AFormat: IPTCFormat; const AOpenGLAttributes: IPTCOpenGLAttributes);
=======
procedure TX11DGA1Display.Open(ATitle: string; AWidth, AHeight: Integer; const AFormat: TPTCFormat);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Open(ATitle: string; AWidth, AHeight: Integer; const AFormat: TPTCFormat);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Open(ATitle: string; AWidth, AHeight: Integer; const AFormat: TPTCFormat);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Open(ATitle: string; AWidth, AHeight: Integer; const AFormat: TPTCFormat);
>>>>>>> origin/cpstrnew
var
  vml: PXF86VidModeModeLine;
  dotclock: Integer;
  i: Integer;
  root: TWindow;
  e: TXEvent;
  found: Boolean;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
  tmpArea: TPTCArea;
>>>>>>> graemeg/cpstrnew
=======
  tmpArea: TPTCArea;
>>>>>>> graemeg/cpstrnew
=======
  tmpArea: TPTCArea;
>>>>>>> graemeg/cpstrnew
=======
  tmpArea: TPTCArea;
>>>>>>> origin/cpstrnew
  r, g, b: Single;
  found_mode: Integer;
  min_diff: Integer;
  d_x, d_y: Integer;
begin
=======
=======
>>>>>>> origin/fixes_2_2
  FModeInfo := Nil;
=======
  FModeInfo := nil;
>>>>>>> origin/cpstrnew

  { Check if we are root }
  if fpgeteuid <> 0 then
    raise TPTCError.Create('Have to be root to switch to DGA mode');

  { Check if the DGA extension and VidMode extension can be used }
  if not XF86DGAQueryExtension(FDisplay, @dummy1, @dummy2) then
    raise TPTCError.Create('DGA extension not available');
  if not XF86VidModeQueryExtension(FDisplay, @dummy1, @dummy2) then
    raise TPTCError.Create('VidMode extension not available');
end;

destructor TX11DGA1Display.Destroy;
begin
  Close;
<<<<<<< HEAD
  Inherited Destroy;
End;

Procedure TX11DGA1Display.Open(ATitle : String; AWidth, AHeight : Integer; Const AFormat : TPTCFormat);

Var
  vml : PXF86VidModeModeLine;
  dotclock : Integer;
  i : Integer;
  root : TWindow;
  e : TXEvent;
  found : Boolean;
  tmpArea : TPTCArea;
  r, g, b : Single;
  found_mode : Integer;
  min_diff : Integer;
  d_x, d_y : Integer;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  inherited Destroy;
end;

procedure TX11DGA1Display.Open(ATitle: string; AWidth, AHeight: Integer; const AFormat: TPTCFormat);
var
  vml: PXF86VidModeModeLine;
  dotclock: Integer;
  i: Integer;
  root: TWindow;
  e: TXEvent;
  found: Boolean;
  tmpArea: TPTCArea;
  r, g, b: Single;
  found_mode: Integer;
  min_diff: Integer;
  d_x, d_y: Integer;
begin
>>>>>>> origin/cpstrnew
  FWidth := AWidth;
  FHeight := AHeight;

  { Get all availabe video modes }
  XF86VidModeGetAllModeLines(FDisplay, FScreen, @FModeInfoNum, @FModeInfo);

  FPreviousMode := -1;
  { Save previous mode }
  New(vml);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  try
    XF86VidModeGetModeLine(FDisplay, FScreen, @dotclock, vml);
    try
      for i := 0 to FModeInfoNum - 1 do
      begin
        if (vml^.hdisplay = FModeInfo[i]^.hdisplay) and
           (vml^.vdisplay = FModeInfo[i]^.vdisplay) then
        begin
          FPreviousMode := i;
          Break;
        end;
      end;
    finally
      if vml^.privsize <> 0 then
        XFree(vml^.c_private);
    end;
  finally
    Dispose(vml);
  end;
  if FPreviousMode = -1 then
    raise TPTCError.Create('Current mode not found in modelist?! Err, this shouldn''t happen :)');
=======
=======
>>>>>>> origin/fixes_2_2
  Try
=======
  try
>>>>>>> origin/cpstrnew
    XF86VidModeGetModeLine(FDisplay, FScreen, @dotclock, vml);
    try
      for i := 0 to FModeInfoNum - 1 do
      begin
        if (vml^.hdisplay = FModeInfo[i]^.hdisplay) and
           (vml^.vdisplay = FModeInfo[i]^.vdisplay) then
        begin
          FPreviousMode := i;
          Break;
        end;
      end;
    finally
      if vml^.privsize <> 0 then
        XFree(vml^.c_private);
    end;
  finally
    Dispose(vml);
<<<<<<< HEAD
  End;
  If FPreviousMode = -1 Then
    Raise TPTCError.Create('Current mode not found in modelist?! Err, this shouldn''t happen :)');
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  end;
  if FPreviousMode = -1 then
    raise TPTCError.Create('Current mode not found in modelist?! Err, this shouldn''t happen :)');
>>>>>>> origin/cpstrnew

  { Find a video mode to set }

  { Normal modesetting first, find exactly matching mode }
  found_mode := -1;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  for i := 0 to FModeInfoNum - 1 do
    if (FModeInfo[i]^.hdisplay = AWidth) and (FModeInfo[i]^.vdisplay = AHeight) then
    begin
      found_mode := i;
      Break;
    end;

  { try to find a mode that matches the width first }
  if found_mode = -1 then
    for i := 0 to FModeInfoNum - 1 do
      if (FModeInfo[i]^.hdisplay = AWidth) and
         (FModeInfo[i]^.vdisplay >= AHeight) then
      begin
        found_mode := i;
        Break;
      end;

  { Next try to match the height }
  if found_mode = -1 then
    for i := 0 to FModeInfoNum - 1 do
      if (FModeInfo[i]^.hdisplay >= AWidth) and
         (FModeInfo[i]^.vdisplay = AHeight) then
      begin
        found_mode := i;
        Break;
      end;

  if found_mode = -1 then
  begin
    { Finally, find the mode that is bigger than the requested one and makes }
    { the least difference }
    min_diff := 987654321;
    for i := 0 to FModeInfoNum - 1 do
      if (FModeInfo[i]^.hdisplay >= AWidth) and (FModeInfo[i]^.vdisplay >= AHeight) then
      begin
        d_x := Sqr(FModeInfo[i]^.hdisplay - AWidth);
        d_y := Sqr(FModeInfo[i]^.vdisplay - AHeight);
        if (d_x + d_y) < min_diff then
        begin
          min_diff := d_x + d_y;
          found_mode := i;
        end;
      end;
  end;

  if found_mode = -1 then
    raise TPTCError.Create('Cannot find a video mode to use');

  if not XF86VidModeSwitchToMode(FDisplay, FScreen, FModeInfo[found_mode]) then
    raise TPTCError.Create('Error switching to requested video mode');
  FDestX := (FModeInfo[found_mode]^.hdisplay div 2) - (AWidth div 2);
  FDestY := (FModeInfo[found_mode]^.vdisplay div 2) - (AHeight div 2);
=======
=======
>>>>>>> origin/fixes_2_2
  For i := 0 To FModeInfoNum - 1 Do
    If (FModeInfo[i]^.hdisplay = AWidth) And (FModeInfo[i]^.vdisplay = AHeight) Then
    Begin
=======
  for i := 0 to FModeInfoNum - 1 do
    if (FModeInfo[i]^.hdisplay = AWidth) and (FModeInfo[i]^.vdisplay = AHeight) then
    begin
>>>>>>> origin/cpstrnew
      found_mode := i;
      Break;
    end;

  { try to find a mode that matches the width first }
  if found_mode = -1 then
    for i := 0 to FModeInfoNum - 1 do
      if (FModeInfo[i]^.hdisplay = AWidth) and
         (FModeInfo[i]^.vdisplay >= AHeight) then
      begin
        found_mode := i;
        Break;
      end;

  { Next try to match the height }
  if found_mode = -1 then
    for i := 0 to FModeInfoNum - 1 do
      if (FModeInfo[i]^.hdisplay >= AWidth) and
         (FModeInfo[i]^.vdisplay = AHeight) then
      begin
        found_mode := i;
        Break;
      end;

  if found_mode = -1 then
  begin
    { Finally, find the mode that is bigger than the requested one and makes }
    { the least difference }
    min_diff := 987654321;
    for i := 0 to FModeInfoNum - 1 do
      if (FModeInfo[i]^.hdisplay >= AWidth) and (FModeInfo[i]^.vdisplay >= AHeight) then
      begin
        d_x := Sqr(FModeInfo[i]^.hdisplay - AWidth);
        d_y := Sqr(FModeInfo[i]^.vdisplay - AHeight);
        if (d_x + d_y) < min_diff then
        begin
          min_diff := d_x + d_y;
          found_mode := i;
        end;
      end;
  end;

  if found_mode = -1 then
    raise TPTCError.Create('Cannot find a video mode to use');

<<<<<<< HEAD
  If Not XF86VidModeSwitchToMode(FDisplay, FScreen, FModeInfo[found_mode]) Then
    Raise TPTCError.Create('Error switching to requested video mode');
  FDestX := (FModeInfo[found_mode]^.hdisplay Div 2) - (AWidth Div 2);
  FDestY := (FModeInfo[found_mode]^.vdisplay Div 2) - (AHeight Div 2);
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  if not XF86VidModeSwitchToMode(FDisplay, FScreen, FModeInfo[found_mode]) then
    raise TPTCError.Create('Error switching to requested video mode');
  FDestX := (FModeInfo[found_mode]^.hdisplay div 2) - (AWidth div 2);
  FDestY := (FModeInfo[found_mode]^.vdisplay div 2) - (AHeight div 2);
>>>>>>> origin/cpstrnew

  XFlush(FDisplay);
  FInMode := True;

  { Check if the requested colour mode is available }
  FFormat := GetX11Format(AFormat);

  { Grab exclusive control over the keyboard and mouse }
  root := XRootWindow(FDisplay, FScreen);
  XGrabKeyboard(FDisplay, root, True, GrabModeAsync, GrabModeAsync, CurrentTime);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  XGrabPointer(FDisplay, root, True, PointerMotionMask or ButtonPressMask or
=======
  XGrabPointer(FDisplay, root, True, PointerMotionMask Or ButtonPressMask Or
>>>>>>> graemeg/fixes_2_2
=======
  XGrabPointer(FDisplay, root, True, PointerMotionMask Or ButtonPressMask Or
>>>>>>> origin/fixes_2_2
=======
  XGrabPointer(FDisplay, root, True, PointerMotionMask or ButtonPressMask or
>>>>>>> origin/cpstrnew
               ButtonReleaseMask, GrabModeAsync, GrabModeAsync, None, None,
               CurrentTime);
  XFlush(FDisplay);

  { Get Display information }
  XF86DGAGetVideo(FDisplay, FScreen, @FDGAAddr, @FDGALineWidth,
                  @FDGABankSize, @FDGAMemSize);

  { Don't have to be root anymore }
{  fpsetuid(fpgetuid);...}

  XF86DGAGetViewPortSize(FDisplay, FScreen, @FDGAWidth, @FDGAHeight);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  if XF86DGAForkApp(FScreen) <> 0 then
    raise TPTCError.Create('cannot do safety fork');

  if XF86DGADirectVideo(FDisplay, FScreen, XF86DGADirectGraphics or
      XF86DGADirectKeyb or XF86DGADirectMouse) = 0 then
    raise TPTCError.Create('cannot switch to DGA mode');

  FInDirect := True;
  FillChar(FDGAAddr^, FDGALineWidth * FDGAHeight * (FFormat.Bits div 8), 0);

  XSelectInput(FDisplay, DefaultRootWindow(FDisplay),
               KeyPressMask or KeyReleaseMask);
=======
=======
>>>>>>> origin/fixes_2_2
  If XF86DGAForkApp(FScreen) <> 0 Then
    Raise TPTCError.Create('cannot do safety fork');
=======
  if XF86DGAForkApp(FScreen) <> 0 then
    raise TPTCError.Create('cannot do safety fork');
>>>>>>> origin/cpstrnew

  if XF86DGADirectVideo(FDisplay, FScreen, XF86DGADirectGraphics or
      XF86DGADirectKeyb or XF86DGADirectMouse) = 0 then
    raise TPTCError.Create('cannot switch to DGA mode');

  FInDirect := True;
  FillChar(FDGAAddr^, FDGALineWidth * FDGAHeight * (FFormat.Bits div 8), 0);

  XSelectInput(FDisplay, DefaultRootWindow(FDisplay),
<<<<<<< HEAD
               KeyPressMask Or KeyReleaseMask);
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
               KeyPressMask or KeyReleaseMask);
>>>>>>> origin/cpstrnew

  XF86DGASetViewPort(FDisplay, FScreen, 0, 0); { Important.. sort of =) }

  found := False;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  repeat
    { Stupid loop. The key }
    { events were causing }
    { problems.. }
    found := XCheckMaskEvent(FDisplay, KeyPressMask or KeyReleaseMask, @e);
  until not found;

  { Create colour map in 8 bit mode }
  if FFormat.Bits = 8 then
  begin
    FColours := GetMem(256 * SizeOf(TXColor));
    if FColours = nil then
      raise TPTCError.Create('Cannot allocate colour map cells');
    FCMap := XCreateColormap(FDisplay, RootWindow(FDisplay, FScreen),
                             DefaultVisual(FDisplay, FScreen), AllocAll);
    if FCMap = 0 then
      raise TPTCError.Create('Cannot create colour map');
  end
  else
    FCMap := 0;

  { Set 332 palette, for now }
  if (FFormat.Bits = 8) and FFormat.Direct then
  begin
    {Taken from PTC 0.72, i hope it's fine}
    for i := 0 to 255 do
    begin
      r := ((i and $E0) shr 5) * 255 / 7;
      g := ((i and $1C) shr 2) * 255 / 7;
      b := (i and $03) * 255 / 3;

      FColours[i].pixel := i;

      FColours[i].red := Round(r) shl 8;
      FColours[i].green := Round(g) shl 8;
      FColours[i].blue := Round(b) shl 8;

      Byte(FColours[i].flags) := DoRed or DoGreen or DoBlue;
    end;
    XStoreColors(FDisplay, FCMap, FColours, 256);
    XF86DGAInstallColormap(FDisplay, FScreen, FCMap);
  end;

  { Set clipping area }
<<<<<<< HEAD
  FClip := TPTCArea.Create(0, 0, FWidth, FHeight);

  FOpen := True;
end;

{ not in DGA mode }
procedure TX11DGA1Display.Open(AWindow: TWindow; AFormat: IPTCFormat);
=======
  tmpArea := TPTCArea.Create(0, 0, FWidth, FHeight);
  try
    FClip.Assign(tmpArea);
  finally
    tmpArea.Free;
  end;
end;

{ not in DGA mode }
procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat);
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
begin
  if AWindow = 0 Then; { Prevent warnings }
  if AFormat = nil Then;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TX11DGA1Display.Open(AWindow: TWindow; AFormat: IPTCFormat; AX, AY, AWidth, AHeight: Integer);
=======
procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat; AX, AY, AWidth, AHeight: Integer);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat; AX, AY, AWidth, AHeight: Integer);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat; AX, AY, AWidth, AHeight: Integer);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat; AX, AY, AWidth, AHeight: Integer);
>>>>>>> origin/cpstrnew
begin
  if (AWindow = 0) or
     (AFormat = Nil) or
     (AX = 0) or
     (AY = 0) or
     (AWidth = 0) or
     (AHeight = 0) Then;
end;

procedure TX11DGA1Display.Close;
begin
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  FOpen := False;

=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  if FInDirect then
  begin
    FInDirect := False;
    XF86DGADirectVideo(FDisplay, FScreen, 0);
  end;

  if FInMode then
  begin
=======
=======
>>>>>>> origin/fixes_2_2
  Repeat
=======
  repeat
>>>>>>> origin/cpstrnew
    { Stupid loop. The key }
    { events were causing }
    { problems.. }
    found := XCheckMaskEvent(FDisplay, KeyPressMask or KeyReleaseMask, @e);
  until not found;

  { Create colour map in 8 bit mode }
  if FFormat.Bits = 8 then
  begin
    FColours := GetMem(256 * SizeOf(TXColor));
    if FColours = nil then
      raise TPTCError.Create('Cannot allocate colour map cells');
    FCMap := XCreateColormap(FDisplay, RootWindow(FDisplay, FScreen),
                             DefaultVisual(FDisplay, FScreen), AllocAll);
    if FCMap = 0 then
      raise TPTCError.Create('Cannot create colour map');
  end
  else
    FCMap := 0;

  { Set 332 palette, for now }
  if (FFormat.Bits = 8) and FFormat.Direct then
  begin
    {Taken from PTC 0.72, i hope it's fine}
    for i := 0 to 255 do
    begin
      r := ((i and $E0) shr 5) * 255 / 7;
      g := ((i and $1C) shr 2) * 255 / 7;
      b := (i and $03) * 255 / 3;

      FColours[i].pixel := i;

      FColours[i].red := Round(r) shl 8;
      FColours[i].green := Round(g) shl 8;
      FColours[i].blue := Round(b) shl 8;

      Byte(FColours[i].flags) := DoRed or DoGreen or DoBlue;
    end;
    XStoreColors(FDisplay, FCMap, FColours, 256);
    XF86DGAInstallColormap(FDisplay, FScreen, FCMap);
  end;

  { Set clipping area }
  tmpArea := TPTCArea.Create(0, 0, FWidth, FHeight);
  try
    FClip.Assign(tmpArea);
  finally
    tmpArea.Free;
  end;
end;

{ not in DGA mode }
procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat);
begin
  if AWindow = 0 Then; { Prevent warnings }
  if AFormat = nil Then;
end;

procedure TX11DGA1Display.Open(AWindow: TWindow; const AFormat: TPTCFormat; AX, AY, AWidth, AHeight: Integer);
begin
  if (AWindow = 0) or
     (AFormat = Nil) or
     (AX = 0) or
     (AY = 0) or
     (AWidth = 0) or
     (AHeight = 0) Then;
end;

procedure TX11DGA1Display.Close;
begin
  if FInDirect then
  begin
    FInDirect := False;
    XF86DGADirectVideo(FDisplay, FScreen, 0);
  end;

<<<<<<< HEAD
  If FInMode Then
  Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  if FInMode then
  begin
>>>>>>> origin/cpstrnew
    FInMode := False;
    XF86VidModeSwitchToMode(FDisplay, FScreen, FModeInfo[FPreviousMode]);
    XUngrabKeyboard(FDisplay, CurrentTime);
    XUngrabPointer(FDisplay, CurrentTime);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  end;

  if FDisplay <> nil then
    XFlush(FDisplay);

  if FCMap <> 0 then
  begin
    XFreeColormap(FDisplay, FCMap);
    FCMap := 0;
  end;

  FreeMemAndNil(FColours);

  if FModeInfo <> nil then
  begin
    XFree(FModeInfo);
    FModeInfo := nil;
  end;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TX11DGA1Display.GetModes(var AModes: TPTCModeList);
begin
  SetLength(AModes, 0);
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
procedure TX11DGA1Display.GetModes(var AModes: TPTCModeDynArray);
begin
  SetLength(AModes, 1);
  AModes[0] := TPTCMode.Create;
>>>>>>> graemeg/cpstrnew
  {todo...}
end;

procedure TX11DGA1Display.Update;
begin
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TX11DGA1Display.Update(AArea: IPTCArea);
=======
procedure TX11DGA1Display.Update(const AArea: TPTCArea);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Update(const AArea: TPTCArea);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Update(const AArea: TPTCArea);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Update(const AArea: TPTCArea);
>>>>>>> origin/cpstrnew
begin
end;

procedure TX11DGA1Display.HandleEvents;
var
  e: TXEvent;
  NewFocus: Boolean;
  NewFocusSpecified: Boolean;

  function UsefulEventsPending: Boolean;
  var
    tmpEvent: TXEvent;
  begin
    if XCheckTypedEvent(FDisplay, ClientMessage, @tmpEvent) then
    begin
      Result := True;
      XPutBackEvent(FDisplay, @tmpEvent);
      exit;
    end;

    if XCheckMaskEvent(FDisplay, FocusChangeMask or
                       KeyPressMask or KeyReleaseMask or
                       ButtonPressMask or ButtonReleaseMask or
                       PointerMotionMask or ExposureMask, @tmpEvent) then
    begin
      Result := True;
      XPutBackEvent(FDisplay, @tmpEvent);
      exit;
    end;

    Result := False;
  end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  procedure HandleKeyEvent;
  var
    sym: TKeySym;
    sym_modded: TKeySym; { modifiers like shift are taken into account here }
    press: Boolean;
    alt, shift, ctrl: Boolean;
    uni: Integer;
    key: TPTCKeyEvent;
    buf: array [1..16] of Char;
  begin
    sym := XLookupKeySym(@e.xkey, 0);
    XLookupString(@e.xkey, @buf, SizeOf(buf), @sym_modded, Nil);
    uni := X11ConvertKeySymToUnicode(sym_modded);
    alt := (e.xkey.state and Mod1Mask) <> 0;
    shift := (e.xkey.state and ShiftMask) <> 0;
    ctrl := (e.xkey.state and ControlMask) <> 0;
    if e._type = KeyPress then
      press := True
    else
      press := False;

    key := nil;
    case sym shr 8 of
      0: key := TPTCKeyEvent.Create(FNormalKeys[sym and $FF], uni, alt, shift, ctrl, press);
      $FF: key := TPTCKeyEvent.Create(FFunctionKeys[sym and $FF], uni, alt, shift, ctrl, press);
      else
        key := TPTCKeyEvent.Create;
    end;
    FEventQueue.AddEvent(key);
  end;

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
begin
  NewFocusSpecified := False;
  while UsefulEventsPending do
  begin
    XNextEvent(FDisplay, @e);
    case e._type of
      FocusIn: begin
        NewFocus := True;
        NewFocusSpecified := True;
      end;
      FocusOut: begin
        NewFocus := False;
        NewFocusSpecified := True;
      end;
      ClientMessage: begin
{        if (e.xclient.format = 32) and (TAtom(e.xclient.data.l[0]) = m_atom_close) then
          Halt(0);}
      end;
      Expose: begin
        {...}
      end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      KeyPress, KeyRelease: HandleKeyEvent(e.xkey);
=======
      KeyPress, KeyRelease: HandleKeyEvent;
>>>>>>> graemeg/cpstrnew
=======
      KeyPress, KeyRelease: HandleKeyEvent;
>>>>>>> graemeg/cpstrnew
=======
      KeyPress, KeyRelease: HandleKeyEvent;
>>>>>>> graemeg/cpstrnew
=======
      KeyPress, KeyRelease: HandleKeyEvent;
>>>>>>> origin/cpstrnew
      ButtonPress, ButtonRelease: begin
        {...}
      end;
      MotionNotify: begin
        {...}
      end;
    end;
  end;
//  HandleChangeFocus(NewFocus);
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
function TX11DGA1Display.NextEvent(out AEvent: IPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;
var
  tmpEvent: TXEvent;
begin
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
function TX11DGA1Display.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;
var
  tmpEvent: TXEvent;
begin
  FreeAndNil(AEvent);
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
  repeat
=======
=======
>>>>>>> origin/fixes_2_2
  End;
=======
  end;
>>>>>>> origin/cpstrnew

  if FDisplay <> nil then
    XFlush(FDisplay);

  if FCMap <> 0 then
  begin
    XFreeColormap(FDisplay, FCMap);
    FCMap := 0;
  end;

  FreeMemAndNil(FColours);

  if FModeInfo <> nil then
  begin
    XFree(FModeInfo);
    FModeInfo := nil;
  end;
end;

procedure TX11DGA1Display.GetModes(var AModes: TPTCModeDynArray);
begin
  SetLength(AModes, 1);
  AModes[0] := TPTCMode.Create;
  {todo...}
end;

procedure TX11DGA1Display.Update;
begin
end;

procedure TX11DGA1Display.Update(const AArea: TPTCArea);
begin
end;

procedure TX11DGA1Display.HandleEvents;
var
  e: TXEvent;
  NewFocus: Boolean;
  NewFocusSpecified: Boolean;

  function UsefulEventsPending: Boolean;
  var
    tmpEvent: TXEvent;
  begin
    if XCheckTypedEvent(FDisplay, ClientMessage, @tmpEvent) then
    begin
      Result := True;
      XPutBackEvent(FDisplay, @tmpEvent);
      exit;
    end;

    if XCheckMaskEvent(FDisplay, FocusChangeMask or
                       KeyPressMask or KeyReleaseMask or
                       ButtonPressMask or ButtonReleaseMask or
                       PointerMotionMask or ExposureMask, @tmpEvent) then
    begin
      Result := True;
      XPutBackEvent(FDisplay, @tmpEvent);
      exit;
    end;

    Result := False;
  end;

  procedure HandleKeyEvent;
  var
    sym: TKeySym;
    sym_modded: TKeySym; { modifiers like shift are taken into account here }
    press: Boolean;
    alt, shift, ctrl: Boolean;
    uni: Integer;
    key: TPTCKeyEvent;
    buf: array [1..16] of Char;
  begin
    sym := XLookupKeySym(@e.xkey, 0);
    XLookupString(@e.xkey, @buf, SizeOf(buf), @sym_modded, Nil);
    uni := X11ConvertKeySymToUnicode(sym_modded);
    alt := (e.xkey.state and Mod1Mask) <> 0;
    shift := (e.xkey.state and ShiftMask) <> 0;
    ctrl := (e.xkey.state and ControlMask) <> 0;
    if e._type = KeyPress then
      press := True
    else
      press := False;

    key := nil;
    case sym shr 8 of
      0: key := TPTCKeyEvent.Create(FNormalKeys[sym and $FF], uni, alt, shift, ctrl, press);
      $FF: key := TPTCKeyEvent.Create(FFunctionKeys[sym and $FF], uni, alt, shift, ctrl, press);
      else
        key := TPTCKeyEvent.Create;
    end;
    FEventQueue.AddEvent(key);
  end;

begin
  NewFocusSpecified := False;
  while UsefulEventsPending do
  begin
    XNextEvent(FDisplay, @e);
    case e._type of
      FocusIn: begin
        NewFocus := True;
        NewFocusSpecified := True;
      end;
      FocusOut: begin
        NewFocus := False;
        NewFocusSpecified := True;
      end;
      ClientMessage: begin
{        if (e.xclient.format = 32) and (TAtom(e.xclient.data.l[0]) = m_atom_close) then
          Halt(0);}
      end;
      Expose: begin
        {...}
      end;
      KeyPress, KeyRelease: HandleKeyEvent;
      ButtonPress, ButtonRelease: begin
        {...}
      end;
      MotionNotify: begin
        {...}
      end;
    end;
  end;
//  HandleChangeFocus(NewFocus);
end;

function TX11DGA1Display.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;
var
  tmpEvent: TXEvent;
begin
  FreeAndNil(AEvent);
<<<<<<< HEAD
  Repeat
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  repeat
>>>>>>> origin/cpstrnew
    { process all events from the X queue and put them on our FEventQueue }
    HandleEvents;

    { try to find an event that matches the EventMask }
    AEvent := FEventQueue.NextEvent(AEventMask);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if AWait and (AEvent = Nil) then
    begin
      { if the X event queue is empty, block until an event is received }
      XPeekEvent(FDisplay, @tmpEvent);
    end;
  until (not AWait) or (AEvent <> Nil);
  Result := AEvent <> nil;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
function TX11DGA1Display.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): IPTCEvent;
=======
function TX11DGA1Display.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
>>>>>>> graemeg/cpstrnew
=======
function TX11DGA1Display.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
>>>>>>> graemeg/cpstrnew
=======
function TX11DGA1Display.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
>>>>>>> graemeg/cpstrnew
=======
function TX11DGA1Display.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
>>>>>>> origin/cpstrnew
var
  tmpEvent: TXEvent;
begin
  repeat
=======
=======
>>>>>>> origin/fixes_2_2
    If AWait And (AEvent = Nil) Then
    Begin
      { if the X event queue is empty, block until an event is received }
      XPeekEvent(FDisplay, @tmpEvent);
    End;
  Until (Not AWait) Or (AEvent <> Nil);
  Result := AEvent <> Nil;
End;

Function TX11DGA1Display.PeekEvent(AWait : Boolean; Const AEventMask : TPTCEventMask) : TPTCEvent;

Var
  tmpEvent : TXEvent;

Begin
  Repeat
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
    if AWait and (AEvent = Nil) then
    begin
      { if the X event queue is empty, block until an event is received }
      XPeekEvent(FDisplay, @tmpEvent);
    end;
  until (not AWait) or (AEvent <> Nil);
  Result := AEvent <> nil;
end;

function TX11DGA1Display.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
var
  tmpEvent: TXEvent;
begin
  repeat
>>>>>>> origin/cpstrnew
    { process all events from the X queue and put them on our FEventQueue }
    HandleEvents;

    { try to find an event that matches the EventMask }
    Result := FEventQueue.PeekEvent(AEventMask);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if AWait and (Result = Nil) then
    begin
      { if the X event queue is empty, block until an event is received }
      XPeekEvent(FDisplay, @tmpEvent);
    end;
  until (not AWait) or (Result <> Nil);
end;


function TX11DGA1Display.Lock: Pointer;
begin
  Result := FDGAAddr + FDGALineWidth * FDestY * (FFormat.Bits div 8) +
                       FDestX * (FFormat.Bits div 8);
end;

procedure TX11DGA1Display.Unlock;
begin
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TX11DGA1Display.Palette(APalette: IPTCPalette);
=======
procedure TX11DGA1Display.Palette(const APalette: TPTCPalette);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Palette(const APalette: TPTCPalette);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Palette(const APalette: TPTCPalette);
>>>>>>> graemeg/cpstrnew
=======
procedure TX11DGA1Display.Palette(const APalette: TPTCPalette);
>>>>>>> origin/cpstrnew
var
  pal: PUint32;
  i: Integer;
begin
  pal := APalette.data;
  if not FFormat.Indexed then
    exit;
  for i := 0 to 255 do
  begin
    FColours[i].pixel := i;

    FColours[i].red := ((pal[i] shr 16) and $FF) shl 8;
    FColours[i].green := ((pal[i] shr 8) and $FF) shl 8;
    FColours[i].blue := (pal[i] and $FF) shl 8;

    Byte(FColours[i].flags) := DoRed or DoGreen or DoBlue;
  end;
  XStoreColors(FDisplay, FCMap, FColours, 256);
  XF86DGAInstallColormap(FDisplay, FScreen, FCMap);
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew

function TX11DGA1Display.GetPitch: Integer;
begin
  Result := FDGALineWidth * (FFormat.Bits div 8);
end;

<<<<<<< HEAD
<<<<<<< HEAD
=======

function TX11DGA1Display.GetPitch: Integer;
begin
  Result := FDGALineWidth * (FFormat.Bits div 8);
end;

>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
function TX11DGA1Display.GetX11Window: TWindow;
begin
  Result := DefaultRootWindow(FDisplay);
end;

function TX11DGA1Display.IsFullScreen: Boolean;
begin
  { DGA is always fullscreen }
  Result := True;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
function TX11DGA1Display.IsOpen: Boolean;
begin
  Result := FOpen;
end;

=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
procedure TX11DGA1Display.SetCursor(AVisible: Boolean);
begin
  {nothing... raise exception if visible=true?}
end;

procedure TX11DGA1Display.SetMouseGrab(AGrabMouse: Boolean);
begin
  {...}
end;
=======
=======
>>>>>>> origin/fixes_2_2
    If AWait And (Result = Nil) Then
    Begin
=======
    if AWait and (Result = Nil) then
    begin
>>>>>>> origin/cpstrnew
      { if the X event queue is empty, block until an event is received }
      XPeekEvent(FDisplay, @tmpEvent);
    end;
  until (not AWait) or (Result <> Nil);
end;


function TX11DGA1Display.Lock: Pointer;
begin
  Result := FDGAAddr + FDGALineWidth * FDestY * (FFormat.Bits div 8) +
                       FDestX * (FFormat.Bits div 8);
end;

procedure TX11DGA1Display.Unlock;
begin
end;

procedure TX11DGA1Display.Palette(const APalette: TPTCPalette);
var
  pal: PUint32;
  i: Integer;
begin
  pal := APalette.data;
  if not FFormat.Indexed then
    exit;
  for i := 0 to 255 do
  begin
    FColours[i].pixel := i;

    FColours[i].red := ((pal[i] shr 16) and $FF) shl 8;
    FColours[i].green := ((pal[i] shr 8) and $FF) shl 8;
    FColours[i].blue := (pal[i] and $FF) shl 8;

    Byte(FColours[i].flags) := DoRed or DoGreen or DoBlue;
  end;
  XStoreColors(FDisplay, FCMap, FColours, 256);
  XF86DGAInstallColormap(FDisplay, FScreen, FCMap);
end;

function TX11DGA1Display.GetPitch: Integer;
begin
  Result := FDGALineWidth * (FFormat.Bits div 8);
end;

function TX11DGA1Display.GetX11Window: TWindow;
begin
  Result := DefaultRootWindow(FDisplay);
end;

function TX11DGA1Display.IsFullScreen: Boolean;
begin
  { DGA is always fullscreen }
  Result := True;
end;

procedure TX11DGA1Display.SetCursor(AVisible: Boolean);
begin
  {nothing... raise exception if visible=true?}
<<<<<<< HEAD
End;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;

procedure TX11DGA1Display.SetMouseGrab(AGrabMouse: Boolean);
begin
  {...}
end;
>>>>>>> origin/cpstrnew

{$ENDIF ENABLE_X11_EXTENSION_XF86DGA1}
