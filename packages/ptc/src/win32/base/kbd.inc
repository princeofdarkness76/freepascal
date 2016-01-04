{
    Free Pascal port of the OpenPTC C++ library.
    Copyright (C) 2001-2003  Nikolay Nikolov (nickysn@users.sourceforge.net)
    Original C++ version by Glenn Fiedler (ptc@gaffer.org)

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
=======
    version 2.1 of the License, or (at your option) any later version.
>>>>>>> graemeg/fixes_2_2
=======
    version 2.1 of the License, or (at your option) any later version.
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
constructor TWin32Keyboard.Create(AWindow: HWND; AThread: DWord; AMultithreaded: Boolean; AEventQueue: TEventQueue);
begin
  FMonitor := nil;
  FEvent := nil;
  inherited Create(AWindow, AThread);
  FMonitor := TWin32Monitor.Create;
  FEvent := TWin32Event.Create;
<<<<<<< HEAD

  { setup defaults }
  FAlt := False;
  FShift := False;
  FControl := False;

  { setup data }
  FEventQueue := AEventQueue;
  FMultithreaded := AMultithreaded;

  { enable buffering }
  FEnabled := True;
end;

destructor TWin32Keyboard.Destroy;
begin
  FEvent.Free;
  FMonitor.Free;
  inherited Destroy;
end;

procedure TWin32Keyboard.Enable;
begin
  { enable buffering }
  FEnabled := True;
end;

procedure TWin32Keyboard.Disable;
begin
  { disable buffering }
  FEnabled := False;
end;

function TWin32Keyboard.WndProc(hWnd: HWND; message: DWord; wParam: WPARAM; lParam: LPARAM): LRESULT;
var
  i: Integer;
  scancode: Integer;
  KeyStateArray: array [0..255] of Byte;
  AsciiBuf: Word;
  press: Boolean;
  uni: Integer;
  TranslatedCharacters, TranslatedWideCharacters: Integer;
  WideStr: WideString;
  KeyCode: Integer;
begin
  Result := 0;
  { check enabled flag }
  if not FEnabled then
    exit;

  { process key message }
  if (message = WM_KEYDOWN) or (message = WM_KEYUP) {Or ((message = WM_SYSKEYDOWN) and ((lParam and (1 shl 29)) <> 0))} then
  begin
    if message = WM_KEYUP then
      press := False
    else
      press := True;

    { update modifiers }
    if wParam = VK_MENU then
      { alt }
      FAlt := press
    else
      if wParam = VK_SHIFT then
        { shift }
        FShift := press
      else
        if wParam = VK_CONTROL then
          { control }
          FControl := press;

    { enter monitor if multithreaded }
    if FMultithreaded then
      FMonitor.Enter;

    uni := -1;

    if GetKeyboardState(@KeyStateArray) then
    begin
      scancode := (lParam shr 16) and $FF;
      {todo: ToUnicode (Windows NT)}
      TranslatedCharacters := ToAscii(wParam, scancode, @KeyStateArray, @AsciiBuf, 0);
      if (TranslatedCharacters = 1) or (TranslatedCharacters = 2) then
      begin
        TranslatedWideCharacters := MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, @AsciiBuf, TranslatedCharacters, nil, 0);
        if TranslatedWideCharacters <> 0 then
        begin
          SetLength(WideStr, TranslatedWideCharacters);
          MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, @AsciiBuf, TranslatedCharacters, @WideStr[1], TranslatedWideCharacters);

          if Length(WideStr) = 1 then
            uni := Ord(WideStr[1]);
        end;
      end;
    end;

    KeyCode := wParam;
    if wParam = VK_RETURN then
      KeyCode := PTCKEY_ENTER;

    { handle key repeat count }
    for i := 1 to lParam and $FFFF do
      { create and insert key object }
      FEventQueue.AddEvent(TPTCKeyEvent.Create(KeyCode, uni, FAlt, FShift, FControl, press));

    { check multithreaded flag }
    if FMultithreaded then
    begin
      { set event }
      FEvent.SetEvent;

      { leave monitor }
      FMonitor.Leave;
    end;
  end;
(*  else
    if message = WM_KEYUP then
      { update modifiers }
      if wParam = VK_MENU then
        { alt up }
        m_alt := False
      else
        if wParam = VK_SHIFT then
          { shift up }
          m_shift := False
        else
          if wParam = VK_CONTROL then
            { control up }
            m_control := False;*)
end;
=======
=======
>>>>>>> origin/fixes_2_2
Constructor TWin32Keyboard.Create(window : HWND; thread : DWord; multithreaded : Boolean; EventQueue : TEventQueue);

Begin
  m_monitor := Nil;
  m_event := Nil;
  Inherited Create(window, thread);
  m_monitor := TWin32Monitor.Create;
  m_event := TWin32Event.Create;
=======
>>>>>>> origin/cpstrnew

  { setup defaults }
  FAlt := False;
  FShift := False;
  FControl := False;

  { setup data }
  FEventQueue := AEventQueue;
  FMultithreaded := AMultithreaded;

  { enable buffering }
  FEnabled := True;
end;

destructor TWin32Keyboard.Destroy;
begin
  FEvent.Free;
  FMonitor.Free;
  inherited Destroy;
end;

procedure TWin32Keyboard.Enable;
begin
  { enable buffering }
  FEnabled := True;
end;

procedure TWin32Keyboard.Disable;
begin
  { disable buffering }
  FEnabled := False;
end;

function TWin32Keyboard.WndProc(hWnd: HWND; message: DWord; wParam: WPARAM; lParam: LPARAM): LRESULT;
var
  i: Integer;
  scancode: Integer;
  KeyStateArray: array [0..255] of Byte;
  AsciiBuf: Word;
  press: Boolean;
  uni: Integer;
  TranslatedCharacters, TranslatedWideCharacters: Integer;
  WideStr: WideString;
  KeyCode: Integer;
begin
  Result := 0;
  { check enabled flag }
  if not FEnabled then
    exit;

  { process key message }
  if (message = WM_KEYDOWN) or (message = WM_KEYUP) {Or ((message = WM_SYSKEYDOWN) and ((lParam and (1 shl 29)) <> 0))} then
  begin
    if message = WM_KEYUP then
      press := False
    else
      press := True;

    { update modifiers }
    if wParam = VK_MENU then
      { alt }
      FAlt := press
    else
      if wParam = VK_SHIFT then
        { shift }
        FShift := press
      else
        if wParam = VK_CONTROL then
          { control }
          FControl := press;

    { enter monitor if multithreaded }
    if FMultithreaded then
      FMonitor.Enter;

    uni := -1;

    if GetKeyboardState(@KeyStateArray) then
    begin
      scancode := (lParam shr 16) and $FF;
      {todo: ToUnicode (Windows NT)}
      TranslatedCharacters := ToAscii(wParam, scancode, @KeyStateArray, @AsciiBuf, 0);
      if (TranslatedCharacters = 1) or (TranslatedCharacters = 2) then
      begin
        TranslatedWideCharacters := MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, @AsciiBuf, TranslatedCharacters, nil, 0);
        if TranslatedWideCharacters <> 0 then
        begin
          SetLength(WideStr, TranslatedWideCharacters);
          MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, @AsciiBuf, TranslatedCharacters, @WideStr[1], TranslatedWideCharacters);

          if Length(WideStr) = 1 then
            uni := Ord(WideStr[1]);
        end;
      end;
    end;

    KeyCode := wParam;
    if wParam = VK_RETURN then
      KeyCode := PTCKEY_ENTER;

    { handle key repeat count }
    for i := 1 to lParam and $FFFF do
      { create and insert key object }
      FEventQueue.AddEvent(TPTCKeyEvent.Create(KeyCode, uni, FAlt, FShift, FControl, press));

    { check multithreaded flag }
    if FMultithreaded then
    begin
      { set event }
      FEvent.SetEvent;

      { leave monitor }
      FMonitor.Leave;
    end;
  end;
(*  else
    if message = WM_KEYUP then
      { update modifiers }
      if wParam = VK_MENU then
        { alt up }
        m_alt := False
      else
        if wParam = VK_SHIFT then
          { shift up }
          m_shift := False
        else
          if wParam = VK_CONTROL then
            { control up }
            m_control := False;*)
<<<<<<< HEAD
End;

(*Procedure TWin32Keyboard.insert(_key : TPTCKeyEvent);

Begin
  { check for overflow }
  If (m_head <> (m_tail - 1)) And
    ((m_tail <> 0) Or (m_head <> High(m_buffer))) Then
  Begin
    { insert key at head }
    m_buffer[m_head] := _key;

    { increase head }
    Inc(m_head);

    { wrap head from end to start }
    If m_head > High(m_buffer) Then
      m_head := Low(m_buffer);
  End;
End;

Function TWin32Keyboard.remove : TPTCKeyEvent;

Begin
  { return key data from tail }
  remove := m_buffer[m_tail];

  { increase tail }
  Inc(m_tail);

  { wrap tail from end to start }
  If m_tail > High(m_buffer) Then
    m_tail := Low(m_buffer);
End;

Function TWin32Keyboard.ready : Boolean;

Begin
  ready := m_head <> m_tail;
End;
*)
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end;
>>>>>>> origin/cpstrnew
