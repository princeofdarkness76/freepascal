{
    This file is part of the PTCPas framebuffer library
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    Copyright (C) 2007, 2009-2011  Nikolay Nikolov (nickysn@users.sourceforge.net)
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/cpstrnew
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/cpstrnew
=======
    Copyright (C) 2001-2010 Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/cpstrnew

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

constructor TWinCEGDIConsole.Create;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> graemeg/cpstrnew
=======

>>>>>>> graemeg/cpstrnew
=======

>>>>>>> graemeg/cpstrnew
begin
  inherited Create;

  FDisplayWidth := GetSystemMetrics(SM_CXSCREEN);
  FDisplayHeight := GetSystemMetrics(SM_CYSCREEN);
  FDefaultFormat := TPTCFormat.Create(32, $00FF0000, $0000FF00, $000000FF);

  FCopy := TPTCCopy.Create;
  FClear := TPTCClear.Create;
  FArea := TPTCArea.Create;
  FClip := TPTCArea.Create;
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
  SetLength(FModes, 1);
  FModes[0] := TPTCMode.Create(FDisplayWidth, FDisplayHeight, FDefaultFormat);
end;

destructor TWinCEGDIConsole.Destroy;
=======
=======
>>>>>>> graemeg/cpstrnew
  FModes[0] := TPTCMode.Create(FDisplayWidth, FDisplayHeight, FDefaultFormat);
  FModes[1] := TPTCMode.Create;
end;

destructor TWinCEGDIConsole.Destroy;

var
  I: Integer;

<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======

  FModes[0] := TPTCMode.Create(FDisplayWidth, FDisplayHeight, FDefaultFormat);
  FModes[1] := TPTCMode.Create;
end;

destructor TWinCEGDIConsole.Destroy;

var
  I: Integer;

>>>>>>> graemeg/cpstrnew
begin
  Close;

  FWindow.Free;

  FEventQueue.Free;
  FCopy.Free;
  FClear.Free;
<<<<<<< HEAD

  inherited Destroy;
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; APages: Integer = 0);
=======
  FArea.Free;
  FClip.Free;
  FDefaultFormat.Free;

  for I := Low(FModes) to High(FModes) do
    FModes[I].Free;
<<<<<<< HEAD
<<<<<<< HEAD

  inherited Destroy;
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; APages: Integer = 0);

>>>>>>> graemeg/cpstrnew
begin
  Open(ATitle, FDefaultFormat, APages);
end;

<<<<<<< HEAD
procedure TWinCEGDIConsole.Open(const ATitle: string; AFormat: IPTCFormat;
                                APages: Integer = 0);
begin
  Open(ATitle, FDisplayWidth, FDisplayHeight, AFormat, APages);
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; AMode: IPTCMode;
                                APages: Integer = 0);
begin
  Open(ATitle, AMode.Width, AMode.Height, AMode.Format, APages);
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; AWidth, AHeight: Integer;
                                AFormat: IPTCFormat; APages: Integer = 0);
var
  DeviceContext: HDC;
=======
=======

  inherited Destroy;
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; APages: Integer = 0);

=======

  inherited Destroy;
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; APages: Integer = 0);

>>>>>>> graemeg/cpstrnew
begin
  Open(ATitle, FDefaultFormat, APages);
end;

<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
procedure TWinCEGDIConsole.Open(const ATitle: string; const AFormat: TPTCFormat;
                                APages: Integer = 0);

begin
  Open(ATitle, FDisplayWidth, FDisplayHeight, AFormat, APages);
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; const AMode: TPTCMode;
                                APages: Integer = 0);

begin
  Open(ATitle, AMode.Width, AMode.Height, AMode.Format, APages);
end;

procedure TWinCEGDIConsole.Open(const ATitle: string; AWidth, AHeight: Integer;
                                const AFormat: TPTCFormat; APages: Integer = 0);

var
  DeviceContext: HDC;
  tmp: TPTCArea;

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
begin
  LOG('TWinCEGDIConsole.Open');

  if FBitmap <> 0 then
  begin
    DeleteObject(FBitmap);
    FBitmap := 0;
  end;
  FreeAndNil(FWindow);
  FreeAndNil(FBitmapInfo);
  FreeAndNil(FKeyboard);
  FreeAndNil(FMouse);
  FreeAndNil(FEventQueue);

  LOG('creating window');
  FWindow := TWinCEWindow.Create('PTC_GDI_WINDOWED_FIXED',
                                 ATitle,
                                 0,
                                 WS_VISIBLE {Or WS_SYSMENU or WS_CAPTION},
                                 SW_SHOWNORMAL,
                                 0, 0,
                                 FDisplayWidth, FDisplayHeight,
				 @WndProc);
  LOG('window created successfully');

  FBitmapInfo := TWinCEBitmapInfo.Create(FDisplayWidth, FDisplayHeight);

  LOG('trying to create a dib section');
  DeviceContext := GetDC(FWindow.WindowHandle);
  if DeviceContext = 0 then
    raise TPTCError.Create('could not get device context of window');
  FBitmap := CreateDIBSection(DeviceContext,
                              FBitmapInfo.BMI^,
                              DIB_RGB_COLORS,
                              FBitmapPixels,
                              0, 0);
  ReleaseDC(FWindow.WindowHandle, DeviceContext);
  if FBitmap = 0 then
    raise TPTCError.Create('could not create dib section');

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  FArea := TPTCArea.Create(0, 0, FDisplayWidth, FDisplayHeight);
  FClip := FArea;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  tmp := TPTCArea.Create(0, 0, FDisplayWidth, FDisplayHeight);
  try
    FArea.Assign(tmp);
    FClip.Assign(tmp);
  finally
    tmp.Free;
  end;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

  FEventQueue := TEventQueue.Create;
  FKeyboard := TWinCEKeyboard.Create(FEventQueue);
  FMouse := TWinCEMouse.Create(FEventQueue, False, FDisplayWidth, FDisplayHeight);

  FWindow.Update;

  {todo...}
  FOpen := True;
  LOG('console open succeeded');
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

procedure TWinCEGDIConsole.Close;
=======

procedure TWinCEGDIConsole.Close;

>>>>>>> graemeg/cpstrnew
=======

procedure TWinCEGDIConsole.Close;

>>>>>>> graemeg/cpstrnew
=======

procedure TWinCEGDIConsole.Close;

>>>>>>> graemeg/cpstrnew
begin
  LOG('TWinCEGDIConsole.Close');

  FreeAndNil(FKeyboard);
  FreeAndNil(FMouse);
  FreeAndNil(FEventQueue);

  FBitmapPixels := nil; { just in case... }
  FreeAndNil(FBitmapInfo);
  if FBitmap <> 0 then
  begin
    DeleteObject(FBitmap);
    FBitmap := 0;
  end;
  FreeAndNil(FWindow);

  {todo...}

  FOpen := False;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

procedure TWinCEGDIConsole.Copy(ASurface: IPTCSurface);
=======

procedure TWinCEGDIConsole.Copy(ASurface: TPTCBaseSurface);

>>>>>>> graemeg/cpstrnew
=======

procedure TWinCEGDIConsole.Copy(ASurface: TPTCBaseSurface);

=======

procedure TWinCEGDIConsole.Copy(ASurface: TPTCBaseSurface);

begin
  {todo...}
end;

procedure TWinCEGDIConsole.Copy(ASurface: TPTCBaseSurface;
                                const ASource, ADestination: TPTCArea);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

<<<<<<< HEAD
procedure TWinCEGDIConsole.Copy(ASurface: TPTCBaseSurface;
                                const ASource, ADestination: TPTCArea);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

<<<<<<< HEAD
<<<<<<< HEAD
procedure TWinCEGDIConsole.Copy(ASurface: IPTCSurface;
                                ASource, ADestination: IPTCArea);
=======
procedure TWinCEGDIConsole.Copy(ASurface: TPTCBaseSurface;
                                const ASource, ADestination: TPTCArea);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Load(const APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
<<<<<<< HEAD
                                AFormat: IPTCFormat;
                                APalette: IPTCPalette);
var
  console_pixels: Pointer;
=======
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette);
var
  Area_: TPTCArea;
  console_pixels: Pointer;

>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.Load(const APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette);
var
  Area_: TPTCArea;
  console_pixels: Pointer;

>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.Load(const APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette);
var
  Area_: TPTCArea;
  console_pixels: Pointer;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen(    'TWinCEGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette)');
  CheckUnlocked('TWinCEGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette)');
  if Clip.Equals(Area) then
  begin
    try
      console_pixels := Lock;
      try
        FCopy.Request(AFormat, Format);
        FCopy.Palette(APalette, Palette);
        FCopy.Copy(APixels, 0, 0, AWidth, AHeight, APitch, console_pixels, 0, 0,
                    Width, Height, Pitch);
      finally
        Unlock;
      end;
    except
      on error: TPTCError do
        raise TPTCError.Create('failed to load pixels to console', error);
    end;
  end
  else
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, TPTCArea.Create(0, 0, width, height), Area);
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  begin
    Area_ := TPTCArea.Create(0, 0, width, height);
    try
      Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, Area_, Area);
    finally
      Area_.Free;
    end;
  end;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
end;

procedure TWinCEGDIConsole.Load(const APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                AFormat: IPTCFormat;
                                APalette: IPTCPalette;
                                ASource, ADestination: IPTCArea);
var
  console_pixels: Pointer;
  clipped_source, clipped_destination: IPTCArea;
begin
  CheckOpen(    'TWinCEGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  CheckUnlocked('TWinCEGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  try
    console_pixels := Lock;
    try
      TPTCClipper.Clip(ASource, TPTCArea.Create(0, 0, AWidth, AHeight), clipped_source, ADestination, Clip, clipped_destination);
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette;
                                const ASource, ADestination: TPTCArea);
var
  console_pixels: Pointer;
  clipped_source, clipped_destination: TPTCArea;
  tmp: TPTCArea;

begin
  CheckOpen(    'TWinCEGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
  CheckUnlocked('TWinCEGDIConsole.Load(APixels, AWidth, AHeight, APitch, AFormat, APalette, ASource, ADestination)');
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
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
      FCopy.request(AFormat, Format);
      FCopy.palette(APalette, Palette);
      FCopy.copy(APixels, clipped_source.left, clipped_source.top, clipped_source.width, clipped_source.height, APitch,
                 console_pixels, clipped_destination.left, clipped_destination.top, clipped_destination.width, clipped_destination.height, Pitch);
    finally
      Unlock;
<<<<<<< HEAD
=======
      clipped_source.Free;
      clipped_destination.Free;
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
      raise TPTCError.Create('failed to load pixels to console area', error);
  end;
end;

procedure TWinCEGDIConsole.Save(APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                AFormat: IPTCFormat;
                                APalette: IPTCPalette);
=======
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette);

>>>>>>> graemeg/cpstrnew
=======
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Save(APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
<<<<<<< HEAD
<<<<<<< HEAD
                                AFormat: IPTCFormat;
                                APalette: IPTCPalette;
                                ASource, ADestination: IPTCArea);
=======
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

<<<<<<< HEAD
function TWinCEGDIConsole.Lock: Pointer;
=======
=======
procedure TWinCEGDIConsole.Save(APixels: Pointer;
                                AWidth, AHeight, APitch: Integer;
>>>>>>> graemeg/cpstrnew
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette;
                                const ASource, ADestination: TPTCArea);

begin
  {todo...}
end;

function TWinCEGDIConsole.Lock: Pointer;

<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
                                const AFormat: TPTCFormat;
                                const APalette: TPTCPalette;
                                const ASource, ADestination: TPTCArea);

begin
  {todo...}
end;

function TWinCEGDIConsole.Lock: Pointer;

>>>>>>> graemeg/cpstrnew
begin
  Result := FBitmapPixels; // todo...
  FLocked := True;
end;
<<<<<<< HEAD
<<<<<<< HEAD

procedure TWinCEGDIConsole.Unlock;
<<<<<<< HEAD
begin
  FLocked := False;
end;

procedure TWinCEGDIConsole.Clear;
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Clear(AColor: IPTCColor);
=======
=======

procedure TWinCEGDIConsole.Unlock;
>>>>>>> graemeg/cpstrnew

=======

procedure TWinCEGDIConsole.Unlock;

>>>>>>> graemeg/cpstrnew
begin
  FLocked := False;
end;

procedure TWinCEGDIConsole.Clear;

begin
  {todo...}
end;

procedure TWinCEGDIConsole.Clear(const AColor: TPTCColor);

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TWinCEGDIConsole.Clear(AColor: IPTCColor;
                                 AArea: IPTCArea);
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Configure(const AFileName: string);
var
  F: Text;
  S: string;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
procedure TWinCEGDIConsole.Clear(const AColor: TPTCColor;
                                 const AArea: TPTCArea);

begin
  {todo...}
end;

procedure TWinCEGDIConsole.Configure(const AFileName: String);

var
  F: Text;
  S: string;

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
begin
  AssignFile(F, AFileName);
  {$push}{$I-}
  Reset(F);
<<<<<<< HEAD
  {$pop}
=======
  {$I+}
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  if IOResult <> 0 then
    exit;
  while not EoF(F) do
  begin
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    {$push}{$I-}
    Readln(F, S);
    {$pop}
=======
    {$I-}
    Readln(F, S);
    {$I+}
>>>>>>> graemeg/cpstrnew
=======
    {$I-}
    Readln(F, S);
    {$I+}
>>>>>>> graemeg/cpstrnew
=======
    {$I-}
    Readln(F, S);
    {$I+}
>>>>>>> graemeg/cpstrnew
    if IOResult <> 0 then
      Break;
    Option(S);
  end;
  CloseFile(F);
end;
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
function TWinCEGDIConsole.Option(const AOption: string): Boolean;
=======
function TWinCEGDIConsole.Option(const AOption: String): Boolean;

>>>>>>> graemeg/cpstrnew
=======
function TWinCEGDIConsole.Option(const AOption: String): Boolean;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.Option(const AOption: String): Boolean;

>>>>>>> graemeg/cpstrnew
begin
  LOG('console option', AOption);

  // todo...

  Result := FCopy.Option(AOption);
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

procedure TWinCEGDIConsole.Palette(APalette: IPTCPalette);
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Clip(AArea: IPTCArea);
begin
  CheckOpen('TWinCEGDIConsole.Clip(AArea)');

  FClip := TPTCClipper.Clip(AArea, FArea);
end;

function TWinCEGDIConsole.Clip: IPTCArea;
=======

=======

>>>>>>> graemeg/cpstrnew
procedure TWinCEGDIConsole.Palette(const APalette: TPTCPalette);

=======

procedure TWinCEGDIConsole.Palette(const APalette: TPTCPalette);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Clip(const AArea: TPTCArea);

var
  tmp: TPTCArea;

begin
  CheckOpen('TWinCEGDIConsole.Clip(AArea)');

  tmp := TPTCClipper.Clip(AArea, FArea);
  try
    FClip.Assign(tmp);
  finally
    tmp.Free;
  end;
end;

function TWinCEGDIConsole.Clip: TPTCArea;

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.Clip');
  Result := FClip;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.Palette: IPTCPalette;
begin
  {todo...}
end;

function TWinCEGDIConsole.Modes: TPTCModeList;
begin
  Result := FModes;
end;

procedure TWinCEGDIConsole.Flush;
=======

function TWinCEGDIConsole.Palette: TPTCPalette;

=======

function TWinCEGDIConsole.Palette: TPTCPalette;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.Palette: TPTCPalette;

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

function TWinCEGDIConsole.Modes: PPTCMode;

begin
  Result := @FModes[0];
end;
<<<<<<< HEAD
<<<<<<< HEAD

procedure TWinCEGDIConsole.Flush;

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

procedure TWinCEGDIConsole.Finish;
<<<<<<< HEAD
=======

procedure TWinCEGDIConsole.Flush;

>>>>>>> graemeg/cpstrnew
=======

procedure TWinCEGDIConsole.Flush;

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
end;

<<<<<<< HEAD
<<<<<<< HEAD
function TWinCEGDIConsole.WndProc(Ahwnd: HWND; AuMsg: UINT; AwParam: WPARAM; AlParam: LPARAM): LRESULT;
=======
=======
procedure TWinCEGDIConsole.Finish;
>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.Finish;
>>>>>>> graemeg/cpstrnew

begin
  {todo...}
end;

function TWinCEGDIConsole.WndProc(Ahwnd: HWND; AuMsg: UINT; AwParam: WPARAM; AlParam: LPARAM): LRESULT;

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
begin
  case AuMsg of
  WM_CLOSE: begin
    LOG('TWinCEGDIConsole.WndProc: WM_CLOSE');
    Halt(0);
  end;
  WM_KEYDOWN, WM_KEYUP: begin
    if FKeyboard <> nil then
      Result := FKeyboard.WndProc(Ahwnd, AuMsg, AwParam, AlParam)
    else
      Result := 0;
    exit;
  end;
  WM_MOUSEMOVE,
  WM_LBUTTONDOWN, WM_LBUTTONUP, WM_LBUTTONDBLCLK,
  WM_MBUTTONDOWN, WM_MBUTTONUP, WM_MBUTTONDBLCLK,
  WM_RBUTTONDOWN, WM_RBUTTONUP, WM_RBUTTONDBLCLK: begin
    if FMouse <> nil then
      Result := FMouse.WndProc(Ahwnd, AuMsg, AwParam, AlParam)
    else
      Result := 0;
    exit;
  end;
  else
    Result := DefWindowProcW(Ahwnd, AuMsg, AwParam, AlParam);
  end;
end;

procedure TWinCEGDIConsole.Update;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
var
  ClientRect: RECT;
  DeviceContext, DeviceContext2: HDC;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

var
  ClientRect: RECT;
  DeviceContext, DeviceContext2: HDC;

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
begin
  CheckOpen(    'TWinCEGDIConsole.Update');
  CheckUnlocked('TWinCEGDIConsole.Update');

  FWindow.Update;

  DeviceContext := GetDC(FWindow.WindowHandle);

  if DeviceContext <> 0 then
  begin
    if GetClientRect(FWindow.WindowHandle, @ClientRect) then
    begin
      DeviceContext2 := CreateCompatibleDC(DeviceContext);
      if DeviceContext2 <> 0 then
      begin
        SelectObject(DeviceContext2, FBitmap);

        StretchBlt(DeviceContext,
                   0, 0, ClientRect.right, ClientRect.bottom,
                   DeviceContext2,
                   0, 0, FBitmapInfo.Width, FBitmapInfo.Height,
                   SRCCOPY);

        DeleteDC(DeviceContext2);
      end;
    end;

    ReleaseDC(FWindow.WindowHandle, DeviceContext);
  end;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

procedure TWinCEGDIConsole.Update(AArea: IPTCArea);
=======

procedure TWinCEGDIConsole.Update(const AArea: TPTCArea);

>>>>>>> graemeg/cpstrnew
=======

procedure TWinCEGDIConsole.Update(const AArea: TPTCArea);

>>>>>>> graemeg/cpstrnew
=======

procedure TWinCEGDIConsole.Update(const AArea: TPTCArea);

>>>>>>> graemeg/cpstrnew
begin
  {todo...}
  Update;
end;
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
function TWinCEGDIConsole.NextEvent(out AEvent: IPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;
=======
function TWinCEGDIConsole.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;

>>>>>>> graemeg/cpstrnew
=======
function TWinCEGDIConsole.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.NextEvent(var AEvent: TPTCEvent; AWait: Boolean; const AEventMask: TPTCEventMask): Boolean;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.NextEvent');
//  CheckUnlocked('TWinCEGDIConsole.NextEvent');

<<<<<<< HEAD
=======
  FreeAndNil(AEvent);
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
  repeat
    { update window }
    FWindow.Update;

    { try to find an event that matches the EventMask }
    AEvent := FEventQueue.NextEvent(AEventMask);
  until (not AWait) or (AEvent <> Nil);
  Result := AEvent <> nil;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): IPTCEvent;
=======

function TWinCEGDIConsole.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.PeekEvent(AWait: Boolean; const AEventMask: TPTCEventMask): TPTCEvent;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.PeekEvent');
//  CheckUnlocked('TWinCEGDIConsole.PeekEvent');

  repeat
    { update window }
    FWindow.Update;

    { try to find an event that matches the EventMask }
    Result := FEventQueue.PeekEvent(AEventMask);
  until (not AWait) or (Result <> Nil);
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.GetWidth: Integer;
=======

function TWinCEGDIConsole.GetWidth: Integer;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetWidth: Integer;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetWidth: Integer;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetWidth');
  Result := FBitmapInfo.Width;
end;

function TWinCEGDIConsole.GetHeight: Integer;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> graemeg/cpstrnew
=======

>>>>>>> graemeg/cpstrnew
=======

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetHeight');
  Result := FBitmapInfo.Height;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.GetPitch: Integer;
=======

function TWinCEGDIConsole.GetPitch: Integer;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetPitch: Integer;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetPitch: Integer;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetPitch');
  Result := FBitmapInfo.Pitch;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.GetFormat: IPTCFormat;
=======

function TWinCEGDIConsole.GetFormat: TPTCFormat;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetFormat: TPTCFormat;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetFormat: TPTCFormat;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetFormat');
  Result := FBitmapInfo.Format;
end;
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
function TWinCEGDIConsole.GetArea: IPTCArea;
=======
function TWinCEGDIConsole.GetArea: TPTCArea;

>>>>>>> graemeg/cpstrnew
=======
function TWinCEGDIConsole.GetArea: TPTCArea;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetArea: TPTCArea;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetArea');
  Result := FArea;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.GetPages: Integer;
=======

function TWinCEGDIConsole.GetPages: Integer;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetPages: Integer;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetPages: Integer;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetPages');
  Result := 2;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.GetName: string;
=======

function TWinCEGDIConsole.GetName: string;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetName: string;

>>>>>>> graemeg/cpstrnew
begin
  Result := 'WinCE';
end;

function TWinCEGDIConsole.GetTitle: string;
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> graemeg/cpstrnew
=======

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetName: string;

begin
  Result := 'WinCE';
end;

function TWinCEGDIConsole.GetTitle: string;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetTitle');
  Result := FTitle;
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

function TWinCEGDIConsole.GetInformation: string;
=======

function TWinCEGDIConsole.GetInformation: string;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetInformation: string;

>>>>>>> graemeg/cpstrnew
=======

function TWinCEGDIConsole.GetInformation: string;

>>>>>>> graemeg/cpstrnew
begin
  CheckOpen('TWinCEGDIConsole.GetInformation');
  Result := ''; // todo...
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TWinCEGDIConsole.CheckOpen(AMessage: string);
=======
procedure TWinCEGDIConsole.CheckOpen(AMessage: String);

>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.CheckOpen(AMessage: String);

>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.CheckOpen(AMessage: String);

>>>>>>> graemeg/cpstrnew
begin
  if not FOpen then
  try
    raise TPTCError.Create('console is not open');
  except
    on error: TPTCError do
      raise TPTCError.Create(AMessage, error);
  end;
end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
procedure TWinCEGDIConsole.CheckUnlocked(AMessage: string);
=======
procedure TWinCEGDIConsole.CheckUnlocked(AMessage: String);

>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.CheckUnlocked(AMessage: String);

>>>>>>> graemeg/cpstrnew
=======
procedure TWinCEGDIConsole.CheckUnlocked(AMessage: String);

>>>>>>> graemeg/cpstrnew
begin
  if FLocked then
  try
    raise TPTCError.Create('console is locked');
  except
    on error: TPTCError do
      raise TPTCError.Create(AMessage, error);
  end;
end;
