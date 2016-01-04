<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
{
    This file is part of the PTCPas framebuffer library
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)

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

constructor TGDIConsole.Create;
begin
  inherited Create;

  FCursorMode := CURSOR_DEFAULT;

  FDisplayWidth := GetSystemMetrics(SM_CXSCREEN);
  FDisplayHeight := GetSystemMetrics(SM_CYSCREEN);
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
Constructor TGDIConsole.Create;

Begin
  Inherited Create;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew

  FDefaultWidth := 320;
  FDefaultHeight := 200;
  FDefaultFormat := TPTCFormat.Create(32, $00FF0000, $0000FF00, $000000FF);

  FCopy := TPTCCopy.Create;
  FClear := TPTCClear.Create;
  FArea := TPTCArea.Create;
  FClip := TPTCArea.Create;
  FPalette := TPTCPalette.Create;

  FOpen := False;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  FModes[0] := TPTCMode.Create(FDisplayWidth, FDisplayHeight, FDefaultFormat);
  FModes[1] := TPTCMode.Create;

  { configure console }
  Configure('ptcpas.cfg');
end;

destructor TGDIConsole.Destroy;
var
  I: Integer;
begin
=======
=======
>>>>>>> origin/fixes_2_2
=======
  FModes[0] := TPTCMode.Create(FDisplayWidth, FDisplayHeight, FDefaultFormat);
  FModes[1] := TPTCMode.Create;

>>>>>>> origin/cpstrnew
  { configure console }
  Configure('ptcpas.cfg');
end;

<<<<<<< HEAD
Destructor TGDIConsole.Destroy;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
destructor TGDIConsole.Destroy;
var
  I: Integer;
begin
>>>>>>> origin/cpstrnew
  Close;

  {...}

  FWin32DIB.Free;
  FWindow.Free;
  FPalette.Free;
  FEventQueue.Free;
  FCopy.Free;
  FClear.Free;
  FArea.Free;
  FClip.Free;
  FDefaultFormat.Free;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  for I := Low(FModes) to High(FModes) do
    FModes[I].Free;

  inherited Destroy;
end;

procedure TGDIConsole.Open(const ATitle: string; APages: Integer = 0);
begin
  Open(ATitle, FDefaultFormat, APages);
end;

procedure TGDIConsole.Open(const ATitle: string; const AFormat: TPTCFormat;
               APages: Integer = 0);
begin
  Open(ATitle, FDefaultWidth, FDefaultHeight, AFormat, APages);
end;

procedure TGDIConsole.Open(const ATitle: string; const AMode: TPTCMode;
                           APages: Integer = 0);
begin
  Open(ATitle, AMode.Width, AMode.Height, AMode.Format, APages);
end;

procedure TGDIConsole.Open(const ATitle: string; AWidth, AHeight: Integer;
               const AFormat: TPTCFormat; APages: Integer = 0);
var
  tmp: TPTCArea;
begin
  if FOpen then
=======
=======
>>>>>>> origin/fixes_2_2
  Inherited Destroy;
End;
=======
  for I := Low(FModes) to High(FModes) do
    FModes[I].Free;
>>>>>>> origin/cpstrnew

  inherited Destroy;
end;

procedure TGDIConsole.Open(const ATitle: string; APages: Integer = 0);
begin
  Open(ATitle, FDefaultFormat, APages);
end;

procedure TGDIConsole.Open(const ATitle: string; const AFormat: TPTCFormat;
               APages: Integer = 0);
begin
  Open(ATitle, FDefaultWidth, FDefaultHeight, AFormat, APages);
end;

procedure TGDIConsole.Open(const ATitle: string; const AMode: TPTCMode;
                           APages: Integer = 0);
begin
  Open(ATitle, AMode.Width, AMode.Height, AMode.Format, APages);
<<<<<<< HEAD
End;

Procedure TGDIConsole.Open(Const ATitle : String; AWidth, AHeight : Integer;
               Const AFormat : TPTCFormat; APages : Integer = 0);

Var
  tmp : TPTCArea;

Begin
  If FOpen Then
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;

procedure TGDIConsole.Open(const ATitle: string; AWidth, AHeight: Integer;
               const AFormat: TPTCFormat; APages: Integer = 0);
var
  tmp: TPTCArea;
begin
  if FOpen then
>>>>>>> origin/cpstrnew
    Close;

(*  FWindow := TWin32Window.Create('PTC_GDI_FULLSCREEN',
                                 ATitle,
                                 WS_EX_TOPMOST,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                 DWord(WS_POPUP or WS_SYSMENU or WS_VISIBLE), // fpc windows RTL bug - WS_POPUP should be a DWord!!!
=======
                                 DWord(WS_POPUP Or WS_SYSMENU Or WS_VISIBLE), // fpc windows RTL bug - WS_POPUP should be a DWord!!!
>>>>>>> graemeg/fixes_2_2
=======
                                 DWord(WS_POPUP Or WS_SYSMENU Or WS_VISIBLE), // fpc windows RTL bug - WS_POPUP should be a DWord!!!
>>>>>>> origin/fixes_2_2
=======
                                 DWord(WS_POPUP or WS_SYSMENU or WS_VISIBLE), // fpc windows RTL bug - WS_POPUP should be a DWord!!!
>>>>>>> origin/cpstrnew
                                 SW_NORMAL,
                                 0, 0,
                                 GetSystemMetrics(SM_CXSCREEN),
                                 GetSystemMetrics(SM_CYSCREEN),
                                 False, False);*)

  FWindow := TWin32Window.Create('PTC_GDI_WINDOWED_FIXED',
                                 ATitle,
                                 0,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                 WS_VISIBLE or WS_SYSMENU or WS_CAPTION or WS_MINIMIZEBOX,
=======
                                 WS_VISIBLE Or WS_SYSMENU Or WS_CAPTION Or WS_MINIMIZEBOX,
>>>>>>> graemeg/fixes_2_2
=======
                                 WS_VISIBLE Or WS_SYSMENU Or WS_CAPTION Or WS_MINIMIZEBOX,
>>>>>>> origin/fixes_2_2
=======
                                 WS_VISIBLE or WS_SYSMENU or WS_CAPTION or WS_MINIMIZEBOX,
>>>>>>> origin/cpstrnew
                                 SW_NORMAL,
                                 CW_USEDEFAULT, CW_USEDEFAULT,
                                 AWidth, AHeight,
                                 {m_center_window}False,
                                 False);

(*  FWindow := TWin32Window.Create('PTC_GDI_WINDOWED_RESIZABLE',
                                 ATitle,
                                 0,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                 WS_OVERLAPPEDWINDOW or WS_VISIBLE,
=======
                                 WS_OVERLAPPEDWINDOW Or WS_VISIBLE,
>>>>>>> graemeg/fixes_2_2
=======
                                 WS_OVERLAPPEDWINDOW Or WS_VISIBLE,
>>>>>>> origin/fixes_2_2
=======
                                 WS_OVERLAPPEDWINDOW or WS_VISIBLE,
>>>>>>> origin/cpstrnew
                                 SW_NORMAL,
                                 CW_USEDEFAULT, CW_USEDEFAULT,
                                 AWidth, AHeight,
                                 {m_center_window}False,
                                 False);*)

  FWin32DIB := TWin32DIB.Create(AWidth, AHeight);

  FreeAndNil(FKeyboard);
  FreeAndNil(FMouse);
  FreeAndNil(FEventQueue);
  FEventQueue := TEventQueue.Create;
  FKeyboard := TWin32Keyboard.Create(FWindow.Handle, FWindow.Thread, False, FEventQueue);
  FMouse := TWin32Mouse.Create(FWindow.Handle, FWindow.Thread, False, FEventQueue, {FFullScreen}False, AWidth, AHeight);

  tmp := TPTCArea.Create(0, 0, AWidth, AHeight);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  try
    FArea.Assign(tmp);
    FClip.Assign(tmp);
  finally
    tmp.Free;
  end;
=======
=======
>>>>>>> origin/fixes_2_2
  Try
=======
  try
>>>>>>> origin/cpstrnew
    FArea.Assign(tmp);
    FClip.Assign(tmp);
  finally
    tmp.Free;
<<<<<<< HEAD
  End;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  end;
>>>>>>> origin/cpstrnew

  FWindow.Update;

  FTitle := ATitle;

  FOpen := True;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
end;

procedure TGDIConsole.Close;
begin
  if not FOpen then
    exit;
=======
=======
>>>>>>> origin/fixes_2_2
End;

Procedure TGDIConsole.Close;

Begin
  If Not FOpen Then
    Exit;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;

procedure TGDIConsole.Close;
begin
  if not FOpen then
    exit;
>>>>>>> origin/cpstrnew

  {...}

  FreeAndNil(FKeyboard);
  FreeAndNil(FMouse);

  FreeAndNil(FWin32DIB);
  FreeAndNil(FWindow);

  FreeAndNil(FEventQueue);

  FTitle := '';

  FOpen := False;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
end;

procedure TGDIConsole.Copy(ASurface: TPTCBaseSurface);
begin
  // todo...
end;

procedure TGDIConsole.Copy(ASurface: TPTCBaseSurface;
                           const ASource, ADestination: TPTCArea);
begin
  // todo...
end;

procedure TGDIConsole.Load(const APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette);
var
  Area_: TPTCArea;
  console_pixels: Pointer;
begin
  CheckOpen(    'TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette)');
  CheckUnlocked('TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette)');
  if Clip.Equals(Area) then
  begin
    try
      console_pixels := Lock;
      try
=======
=======
>>>>>>> origin/fixes_2_2
End;

Procedure TGDIConsole.Copy(Var ASurface : TPTCBaseSurface);
=======
end;
>>>>>>> origin/cpstrnew

procedure TGDIConsole.Copy(ASurface: TPTCBaseSurface);
begin
  // todo...
end;

procedure TGDIConsole.Copy(ASurface: TPTCBaseSurface;
                           const ASource, ADestination: TPTCArea);
begin
  // todo...
end;

procedure TGDIConsole.Load(const APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette);
var
  Area_: TPTCArea;
  console_pixels: Pointer;
begin
  CheckOpen(    'TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette)');
  CheckUnlocked('TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette)');
  if Clip.Equals(Area) then
  begin
    try
      console_pixels := Lock;
<<<<<<< HEAD
      Try
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
      try
>>>>>>> origin/cpstrnew
        FCopy.Request(AFormat, Format);
        FCopy.Palette(APalette, Palette);
        FCopy.Copy(APixels, 0, 0, AWidth, AHeight, APitch, console_pixels, 0, 0,
                    Width, Height, Pitch);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      finally
        Unlock;
      end;
    except
      on error: TPTCError do
        raise TPTCError.Create('failed to load pixels to console', error);
    end;
  end
  else
  begin
    Area_ := TPTCArea.Create(0, 0, width, height);
    try
      Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, Area_, Area);
    finally
      Area_.Free;
    end;
  end;
end;

procedure TGDIConsole.Load(const APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette;
                           const ASource, ADestination: TPTCArea);
var
  console_pixels: Pointer;
  clipped_source, clipped_destination: TPTCArea;
  tmp: TPTCArea;
begin
  CheckOpen(    'TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  CheckUnlocked('TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  clipped_source := nil;
  clipped_destination := nil;
  try
    console_pixels := Lock;
    try
      clipped_source := TPTCArea.Create;
      clipped_destination := TPTCArea.Create;
      tmp := TPTCArea.Create(0, 0, AWidth, AHeight);
      try
        TPTCClipper.Clip(ASource, tmp, clipped_source, ADestination, Clip, clipped_destination);
      finally
        tmp.Free;
      end;
=======
=======
>>>>>>> origin/fixes_2_2
      Finally
=======
      finally
>>>>>>> origin/cpstrnew
        Unlock;
      end;
    except
      on error: TPTCError do
        raise TPTCError.Create('failed to load pixels to console', error);
    end;
  end
  else
  begin
    Area_ := TPTCArea.Create(0, 0, width, height);
    try
      Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, Area_, Area);
    finally
      Area_.Free;
    end;
  end;
end;

procedure TGDIConsole.Load(const APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette;
                           const ASource, ADestination: TPTCArea);
var
  console_pixels: Pointer;
  clipped_source, clipped_destination: TPTCArea;
  tmp: TPTCArea;
begin
  CheckOpen(    'TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  CheckUnlocked('TGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  clipped_source := nil;
  clipped_destination := nil;
  try
    console_pixels := Lock;
    try
      clipped_source := TPTCArea.Create;
      clipped_destination := TPTCArea.Create;
      tmp := TPTCArea.Create(0, 0, AWidth, AHeight);
      try
        TPTCClipper.Clip(ASource, tmp, clipped_source, ADestination, Clip, clipped_destination);
      finally
        tmp.Free;
<<<<<<< HEAD
      End;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
      end;
>>>>>>> origin/cpstrnew
      FCopy.request(AFormat, Format);
      FCopy.palette(APalette, Palette);
      FCopy.copy(APixels, clipped_source.left, clipped_source.top, clipped_source.width, clipped_source.height, APitch,
                 console_pixels, clipped_destination.left, clipped_destination.top, clipped_destination.width, clipped_destination.height, Pitch);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    finally
      Unlock;
      clipped_source.Free;
      clipped_destination.Free;
    end;
  except
    on error: TPTCError do
      raise TPTCError.Create('failed to load pixels to console area', error);
  end;
end;

procedure TGDIConsole.Save(APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette);
begin
  // todo...
end;

procedure TGDIConsole.Save(APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette;
                           const ASource, ADestination: TPTCArea);
begin
  // todo...
end;

function TGDIConsole.Lock: Pointer;
begin
  Result := FWin32DIB.Pixels; // todo...
  FLocked := True;
end;

procedure TGDIConsole.Unlock;
begin
  FLocked := False;
end;

procedure TGDIConsole.UpdateCursor;
begin
  if not FOpen then
    exit;

  case FCursorMode of
    CURSOR_DEFAULT:
      FCursor := {Not FFullScreen}True;
    CURSOR_SHOW:
      FCursor := True;
    CURSOR_HIDE:
      FCursor := False;
  end;

  { update window cursor }
  FWindow.Cursor(FCursor);

  { hide/show cursor globally if running fullscreen }
{  if FFullscreen then
    if FCursor then
      Win32Cursor_resurrect
    else
      Win32Cursor_kill;}
end;

procedure TGDIConsole.Clear;
begin
  // todo...
end;

procedure TGDIConsole.Clear(const AColor: TPTCColor);
begin
  // todo...
end;

procedure TGDIConsole.Clear(const AColor: TPTCColor;
                            const AArea: TPTCArea);
begin
  // todo...
end;

procedure TGDIConsole.Configure(const AFileName: String);
var
  F: TextFile;
  S: string;
begin
=======
=======
>>>>>>> origin/fixes_2_2
    Finally
=======
    finally
>>>>>>> origin/cpstrnew
      Unlock;
      clipped_source.Free;
      clipped_destination.Free;
    end;
  except
    on error: TPTCError do
      raise TPTCError.Create('failed to load pixels to console area', error);
  end;
end;

procedure TGDIConsole.Save(APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette);
begin
  // todo...
end;

procedure TGDIConsole.Save(APixels: Pointer;
                           AWidth, AHeight, APitch: Integer;
                           const AFormat: TPTCFormat;
                           const APalette: TPTCPalette;
                           const ASource, ADestination: TPTCArea);
begin
  // todo...
end;

function TGDIConsole.Lock: Pointer;
begin
  Result := FWin32DIB.Pixels; // todo...
  FLocked := True;
end;

procedure TGDIConsole.Unlock;
begin
  FLocked := False;
end;

procedure TGDIConsole.UpdateCursor;
begin
  if not FOpen then
    exit;

  case FCursorMode of
    CURSOR_DEFAULT:
      FCursor := {Not FFullScreen}True;
    CURSOR_SHOW:
      FCursor := True;
    CURSOR_HIDE:
      FCursor := False;
  end;

  { update window cursor }
  FWindow.Cursor(FCursor);

  { hide/show cursor globally if running fullscreen }
{  if FFullscreen then
    if FCursor then
      Win32Cursor_resurrect
    else
      Win32Cursor_kill;}
end;

procedure TGDIConsole.Clear;
begin
  // todo...
end;

procedure TGDIConsole.Clear(const AColor: TPTCColor);
begin
  // todo...
end;

procedure TGDIConsole.Clear(const AColor: TPTCColor;
                            const AArea: TPTCArea);
begin
  // todo...
end;

<<<<<<< HEAD
Var
  F : Text;
  S : String;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
procedure TGDIConsole.Configure(const AFileName: String);
var
  F: TextFile;
  S: string;
begin
>>>>>>> origin/cpstrnew
  AssignFile(F, AFileName);
  {$I-}
  Reset(F);
  {$I+}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
  if IOResult <> 0 then
    exit;
  while not EoF(F) do
  begin
<<<<<<< HEAD
    {$I-}
    Readln(F, S);
    {$I+}
    if IOResult <> 0 then
      Break;
    Option(S);
  end;
  CloseFile(F);
end;

function TGDIConsole.Option(const AOption: String): Boolean;
begin
  LOG('console option', AOption);
  Result := True;
  if AOption = 'default cursor' then
  begin
    FCursorMode := CURSOR_DEFAULT;
    UpdateCursor;
    exit;
  end;
  if AOption = 'show cursor' then
  begin
    FCursorMode := CURSOR_SHOW;
    UpdateCursor;
    exit;
  end;
  if AOption = 'hide cursor' then
  begin
    FCursorMode := CURSOR_HIDE;
    UpdateCursor;
    exit;
  end;
  if AOption = 'grab mouse' then
  begin
    FWindow.ConfineCursor(true);
    exit;
  end;
  if AOption = 'ungrab mouse' then
  begin
    FWindow.ConfineCursor(false);
    exit;
  end;

  Result := FCopy.Option(AOption);
end;

procedure TGDIConsole.Palette(const APalette: TPTCPalette);
begin
  // todo...
end;

procedure TGDIConsole.Clip(const AArea: TPTCArea);
var
  tmp: TPTCArea;
begin
  CheckOpen('TGDIConsole.Clip(AArea)');

  tmp := TPTCClipper.Clip(AArea, FArea);
  try
    FClip.Assign(tmp);
  finally
    tmp.Free;
  end;
end;

function TGDIConsole.Clip: TPTCArea;
begin
  CheckOpen('TGDIConsole.Clip');
  Result := FClip;
end;

function TGDIConsole.Palette: TPTCPalette;
begin
  CheckOpen('TGDIConsole.Palette');
  Result := FPalette;
end;

function TGDIConsole.Modes: PPTCMode;
begin
  Result := @FModes[0];
end;

procedure TGDIConsole.Flush;
begin
=======
=======
>>>>>>> origin/fixes_2_2
  If IOResult <> 0 Then
    Exit;
  While Not EoF(F) Do
  Begin
=======
>>>>>>> origin/cpstrnew
    {$I-}
    Readln(F, S);
    {$I+}
    if IOResult <> 0 then
      Break;
    Option(S);
  end;
  CloseFile(F);
end;

function TGDIConsole.Option(const AOption: String): Boolean;
begin
  LOG('console option', AOption);
  Result := True;
  if AOption = 'default cursor' then
  begin
    FCursorMode := CURSOR_DEFAULT;
    UpdateCursor;
    exit;
  end;
  if AOption = 'show cursor' then
  begin
    FCursorMode := CURSOR_SHOW;
    UpdateCursor;
    exit;
  end;
  if AOption = 'hide cursor' then
  begin
    FCursorMode := CURSOR_HIDE;
    UpdateCursor;
    exit;
  end;
  if AOption = 'grab mouse' then
  begin
    FWindow.ConfineCursor(true);
    exit;
  end;
  if AOption = 'ungrab mouse' then
  begin
    FWindow.ConfineCursor(false);
    exit;
  end;

  Result := FCopy.Option(AOption);
end;

procedure TGDIConsole.Palette(const APalette: TPTCPalette);
begin
  // todo...
end;

procedure TGDIConsole.Clip(const AArea: TPTCArea);
var
  tmp: TPTCArea;
begin
  CheckOpen('TGDIConsole.Clip(AArea)');

  tmp := TPTCClipper.Clip(AArea, FArea);
  try
    FClip.Assign(tmp);
  finally
    tmp.Free;
  end;
end;

function TGDIConsole.Clip: TPTCArea;
begin
  CheckOpen('TGDIConsole.Clip');
  Result := FClip;
end;

function TGDIConsole.Palette: TPTCPalette;
begin
  CheckOpen('TGDIConsole.Palette');
  Result := FPalette;
end;

function TGDIConsole.Modes: PPTCMode;
begin
  Result := @FModes[0];
end;

<<<<<<< HEAD
Begin
  // todo...
  Result := Nil;
End;

Procedure TGDIConsole.Flush;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
procedure TGDIConsole.Flush;
begin
>>>>>>> origin/cpstrnew
  CheckOpen(    'TGDIConsole.Flush');
  CheckUnlocked('TGDIConsole.Flush');

  // todo...
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
end;

procedure TGDIConsole.Finish;
begin
=======
=======
>>>>>>> origin/fixes_2_2
End;

Procedure TGDIConsole.Finish;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;

procedure TGDIConsole.Finish;
begin
>>>>>>> origin/cpstrnew
  CheckOpen(    'TGDIConsole.Finish');
  CheckUnlocked('TGDIConsole.Finish');

  // todo...
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
end;

procedure TGDIConsole.Update;
var
  ClientRect: RECT;
  DeviceContext: HDC;
begin
=======
=======
>>>>>>> origin/fixes_2_2
End;

Procedure TGDIConsole.Update;

Var
  ClientRect : RECT;
  DeviceContext : HDC;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;

procedure TGDIConsole.Update;
var
  ClientRect: RECT;
  DeviceContext: HDC;
begin
>>>>>>> origin/cpstrnew
  CheckOpen(    'TGDIConsole.Update');
  CheckUnlocked('TGDIConsole.Update');

  FWindow.Update;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  DeviceContext := GetDC(FWindow.Handle);

  if DeviceContext <> 0 then
  begin
    if GetClientRect(FWindow.Handle, @ClientRect) then
    begin
=======
=======
>>>>>>> origin/fixes_2_2
  DeviceContext := GetDC(FWindow.m_window);

  If DeviceContext <> 0 Then
  Begin
    If GetClientRect(FWindow.m_window, @ClientRect) Then
    Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  DeviceContext := GetDC(FWindow.Handle);

  if DeviceContext <> 0 then
  begin
    if GetClientRect(FWindow.Handle, @ClientRect) then
    begin
>>>>>>> origin/cpstrnew
      StretchDIBits(DeviceContext,
                    0, 0, ClientRect.right, ClientRect.bottom,
                    0, 0, FWin32DIB.Width, FWin32DIB.Height,
                    FWin32DIB.Pixels,
                    FWin32DIB.BMI^,
                    DIB_RGB_COLORS,
                    SRCCOPY);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    end;

    ReleaseDC(FWindow.Handle, DeviceContext);
  end;
end;

procedure TGDIConsole.Update(const AArea: TPTCArea);
begin
  Update;
end;

function TGDIConsole.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;
var
  UseGetMessage: Boolean;
begin
=======
=======
>>>>>>> origin/fixes_2_2
    End;

    ReleaseDC(FWindow.m_window, DeviceContext);
  End;
End;
=======
    end;
>>>>>>> origin/cpstrnew

    ReleaseDC(FWindow.Handle, DeviceContext);
  end;
end;

procedure TGDIConsole.Update(const AArea: TPTCArea);
begin
  Update;
end;

<<<<<<< HEAD
Function TGDIConsole.NextEvent(Var AEvent : TPTCEvent; AWait : Boolean; Const AEventMask : TPTCEventMask) : Boolean;

Begin
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
function TGDIConsole.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;
var
  UseGetMessage: Boolean;
begin
>>>>>>> origin/cpstrnew
  CheckOpen('TGDIConsole.NextEvent');
//  CheckUnlocked('TGDIConsole.NextEvent');

  FreeAndNil(AEvent);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  UseGetMessage := False;
  repeat
    { update window }
    FWindow.Update(False, UseGetMessage);

    { try to find an event that matches the EventMask }
    AEvent := FEventQueue.NextEvent(AEventMask);
    if AWait then
      UseGetMessage := True;
  until (not AWait) or (AEvent <> Nil);
  Result := AEvent <> nil;
end;

function TGDIConsole.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
var
  UseGetMessage: Boolean;
begin
  CheckOpen('TGDIConsole.PeekEvent');
//  CheckUnlocked('TGDIConsole.PeekEvent');

  UseGetMessage := False;
  repeat
    { update window }
    FWindow.Update(False, UseGetMessage);

    { try to find an event that matches the EventMask }
    Result := FEventQueue.PeekEvent(AEventMask);
    if AWait then
      UseGetMessage := True;
  until (not AWait) or (Result <> Nil);
end;

function TGDIConsole.GetWidth: Integer;
begin
  CheckOpen('TGDIConsole.GetWidth');
  Result := FWin32DIB.Width;
end;

function TGDIConsole.GetHeight: Integer;
begin
  CheckOpen('TGDIConsole.GetHeight');
  Result := FWin32DIB.Height;
end;

function TGDIConsole.GetPitch: Integer;
begin
  CheckOpen('TGDIConsole.GetPitch');
  Result := FWin32DIB.Pitch;
end;

function TGDIConsole.GetArea: TPTCArea;
begin
  CheckOpen('TGDIConsole.GetArea');
  Result := FArea;
end;

function TGDIConsole.GetFormat: TPTCFormat;
begin
  CheckOpen('TGDIConsole.GetFormat');
  Result := FWin32DIB.Format;
end;

function TGDIConsole.GetPages: Integer;
begin
  CheckOpen('TGDIConsole.GetPages');
  Result := 2;
end;

function TGDIConsole.GetName: string;
begin
  Result := 'GDI';
end;

function TGDIConsole.GetTitle: string;
begin
  CheckOpen('TGDIConsole.GetTitle');
  Result := FTitle;
end;

function TGDIConsole.GetInformation: string;
begin
  CheckOpen('TGDIConsole.GetInformation');
  Result := ''; // todo...
end;

procedure TGDIConsole.CheckOpen(const AMessage: String);
begin
  if not FOpen then
  try
    raise TPTCError.Create('console is not open');
  except
    on error: TPTCError do
      raise TPTCError.Create(AMessage, error);
  end;
end;

procedure TGDIConsole.CheckUnlocked(const AMessage: String);
begin
  if FLocked then
  try
    raise TPTCError.Create('console is locked');
  except
    on error: TPTCError do
      raise TPTCError.Create(AMessage, error);
  end;
end;
=======
=======
>>>>>>> origin/fixes_2_2
  Repeat
=======
  UseGetMessage := False;
  repeat
>>>>>>> origin/cpstrnew
    { update window }
    FWindow.Update(False, UseGetMessage);

    { try to find an event that matches the EventMask }
    AEvent := FEventQueue.NextEvent(AEventMask);
    if AWait then
      UseGetMessage := True;
  until (not AWait) or (AEvent <> Nil);
  Result := AEvent <> nil;
end;

function TGDIConsole.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;
var
  UseGetMessage: Boolean;
begin
  CheckOpen('TGDIConsole.PeekEvent');
//  CheckUnlocked('TGDIConsole.PeekEvent');

  UseGetMessage := False;
  repeat
    { update window }
    FWindow.Update(False, UseGetMessage);

    { try to find an event that matches the EventMask }
    Result := FEventQueue.PeekEvent(AEventMask);
    if AWait then
      UseGetMessage := True;
  until (not AWait) or (Result <> Nil);
end;

function TGDIConsole.GetWidth: Integer;
begin
  CheckOpen('TGDIConsole.GetWidth');
  Result := FWin32DIB.Width;
end;

function TGDIConsole.GetHeight: Integer;
begin
  CheckOpen('TGDIConsole.GetHeight');
  Result := FWin32DIB.Height;
end;

function TGDIConsole.GetPitch: Integer;
begin
  CheckOpen('TGDIConsole.GetPitch');
  Result := FWin32DIB.Pitch;
end;

function TGDIConsole.GetArea: TPTCArea;
begin
  CheckOpen('TGDIConsole.GetArea');
  Result := FArea;
end;

function TGDIConsole.GetFormat: TPTCFormat;
begin
  CheckOpen('TGDIConsole.GetFormat');
  Result := FWin32DIB.Format;
end;

function TGDIConsole.GetPages: Integer;
begin
  CheckOpen('TGDIConsole.GetPages');
  Result := 2;
end;

function TGDIConsole.GetName: string;
begin
  Result := 'GDI';
end;

function TGDIConsole.GetTitle: string;
begin
  CheckOpen('TGDIConsole.GetTitle');
  Result := FTitle;
end;

function TGDIConsole.GetInformation: string;
begin
  CheckOpen('TGDIConsole.GetInformation');
  Result := ''; // todo...
<<<<<<< HEAD
End;

Procedure TGDIConsole.CheckOpen(AMessage : String);

Begin
  If Not FOpen Then
  Try
    Raise TPTCError.Create('console is not open');
  Except
    On error : TPTCError Do
      Raise TPTCError.Create(AMessage, error);
  End;
End;

Procedure TGDIConsole.CheckUnlocked(AMessage : String);

Begin
  If FLocked Then
  Try
    Raise TPTCError.Create('console is locked');
  Except
    On error : TPTCError Do
      Raise TPTCError.Create(AMessage, error);
  End;
End;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;

procedure TGDIConsole.CheckOpen(const AMessage: String);
begin
  if not FOpen then
  try
    raise TPTCError.Create('console is not open');
  except
    on error: TPTCError do
      raise TPTCError.Create(AMessage, error);
  end;
end;

procedure TGDIConsole.CheckUnlocked(const AMessage: String);
begin
  if FLocked then
  try
    raise TPTCError.Create('console is locked');
  except
    on error: TPTCError do
      raise TPTCError.Create(AMessage, error);
  end;
end;
>>>>>>> origin/cpstrnew
