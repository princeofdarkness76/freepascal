{
    Free Pascal port of the OpenPTC C++ library.
<<<<<<< HEAD
<<<<<<< HEAD
    Copyright (C) 2001-2007, 2009-2012  Nikolay Nikolov (nickysn@users.sourceforge.net)
=======
    Copyright (C) 2001-2006  Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> graemeg/fixes_2_2
=======
    Copyright (C) 2001-2006  Nikolay Nikolov (nickysn@users.sourceforge.net)
>>>>>>> origin/fixes_2_2
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

{$MODE objfpc}
{$MACRO ON}
{$UNDEF ENABLE_C_API}

{$H+}

{$IFDEF UNIX}

  { X11 extensions we want to enable at compile time }
<<<<<<< HEAD
<<<<<<< HEAD
  {$INCLUDE x11/x11extensions.inc}
=======
  {$INCLUDE x11/extensions.inc}
>>>>>>> graemeg/fixes_2_2
=======
  {$INCLUDE x11/extensions.inc}
>>>>>>> origin/fixes_2_2

  {$IFDEF ENABLE_X11_EXTENSION_XF86DGA1}
    {$DEFINE ENABLE_X11_EXTENSION_XF86DGA}
  {$ENDIF ENABLE_X11_EXTENSION_XF86DGA1}
  {$IFDEF ENABLE_X11_EXTENSION_XF86DGA2}
    {$DEFINE ENABLE_X11_EXTENSION_XF86DGA}
  {$ENDIF ENABLE_X11_EXTENSION_XF86DGA2}

{$ENDIF UNIX}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
unit ptc;

interface

{$IFNDEF FPDOC}
uses
  Hermes;
{$ENDIF FPDOC}

const
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  PTCPAS_VERSION = 'PTCPas 0.99.14';
=======
  PTCPAS_VERSION = 'PTCPas 0.99.11';
>>>>>>> graemeg/cpstrnew
=======
  PTCPAS_VERSION = 'PTCPas 0.99.11';
>>>>>>> graemeg/cpstrnew
=======
  PTCPAS_VERSION = 'PTCPas 0.99.11';
>>>>>>> graemeg/cpstrnew
=======
  PTCPAS_VERSION = 'PTCPas 0.99.11';
>>>>>>> origin/cpstrnew

type
=======
=======
>>>>>>> origin/fixes_2_2
Unit ptc;
=======
unit ptc;
>>>>>>> origin/cpstrnew

interface

{$IFNDEF FPDOC}
uses
  Hermes;
{$ENDIF FPDOC}

const
  PTCPAS_VERSION = 'PTCPas 0.99.11';

<<<<<<< HEAD
Type
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
type
>>>>>>> origin/cpstrnew
  PUint8  = ^Uint8;
  PUint16 = ^Uint16;
  PUint32 = ^Uint32;
  PUint64 = ^Uint64;
  PSint8  = ^Sint8;
  PSint16 = ^Sint16;
  PSint32 = ^Sint32;
  PSint64 = ^Sint64;
  Uint8  = Byte;
  Uint16 = Word;
  Uint32 = DWord;
  Uint64 = QWord;
  Sint8  = ShortInt;
  Sint16 = SmallInt;
  Sint32 = LongInt;
  Sint64 = Int64;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$INCLUDE core/coreinterface.inc}
=======
{$INCLUDE coreinterface.inc}
>>>>>>> graemeg/fixes_2_2
=======
{$INCLUDE coreinterface.inc}
>>>>>>> origin/fixes_2_2
=======
{$INCLUDE core/coreinterface.inc}
>>>>>>> origin/cpstrnew

{$IFNDEF FPDOC}

{$IFDEF ENABLE_C_API}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
{$INCLUDE c_api/capi_index.inc}
{$INCLUDE c_api/capi_errord.inc}
{$INCLUDE c_api/capi_exceptd.inc}
{$INCLUDE c_api/capi_aread.inc}
{$INCLUDE c_api/capi_colord.inc}
{$INCLUDE c_api/capi_cleard.inc}
{$INCLUDE c_api/capi_clipperd.inc}
{$INCLUDE c_api/capi_copyd.inc}
{$INCLUDE c_api/capi_keyd.inc}
{$INCLUDE c_api/capi_formatd.inc}
{$INCLUDE c_api/capi_paletted.inc}
{$INCLUDE c_api/capi_surfaced.inc}
{$INCLUDE c_api/capi_consoled.inc}
{$INCLUDE c_api/capi_moded.inc}
{$INCLUDE c_api/capi_timerd.inc}
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
{$INCLUDE c_api/index.pp}
{$INCLUDE c_api/errord.pp}
{$INCLUDE c_api/exceptd.pp}
{$INCLUDE c_api/aread.pp}
{$INCLUDE c_api/colord.pp}
{$INCLUDE c_api/cleard.pp}
{$INCLUDE c_api/clipperd.pp}
{$INCLUDE c_api/copyd.pp}
{$INCLUDE c_api/keyd.pp}
{$INCLUDE c_api/formatd.pp}
{$INCLUDE c_api/paletted.pp}
{$INCLUDE c_api/surfaced.pp}
{$INCLUDE c_api/consoled.pp}
{$INCLUDE c_api/moded.pp}
{$INCLUDE c_api/timerd.pp}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/cpstrnew
{$ENDIF ENABLE_C_API}

{$ENDIF FPDOC}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
implementation

{$IFDEF GO32V2}
uses
  textfx2, vesa, vga, cga, timeunit, crt, go32fix, mouse33h;
{$ENDIF GO32V2}

{$IF defined(WIN32) OR defined(WIN64)}
uses
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  Windows, p_ddraw, glext;
=======
  Windows, p_ddraw;
>>>>>>> graemeg/cpstrnew
=======
  Windows, p_ddraw;
>>>>>>> graemeg/cpstrnew
=======
  Windows, p_ddraw;
>>>>>>> graemeg/cpstrnew
=======
  Windows, p_ddraw;
>>>>>>> origin/cpstrnew
{$ENDIF defined(WIN32) OR defined(WIN64)}

{$IFDEF WinCE}
uses
=======
=======
>>>>>>> origin/fixes_2_2
Implementation
=======
implementation
>>>>>>> origin/cpstrnew

{$IFDEF GO32V2}
uses
  textfx2, vesa, vga, cga, timeunit, crt, go32fix, mouse33h;
{$ENDIF GO32V2}

{$IF defined(WIN32) OR defined(WIN64)}
uses
  Windows, p_ddraw;
{$ENDIF defined(WIN32) OR defined(WIN64)}

{$IFDEF WinCE}
<<<<<<< HEAD
Uses
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
uses
>>>>>>> origin/cpstrnew
  Windows, p_gx;
{$ENDIF WinCE}

{$IFDEF UNIX}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
uses
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  BaseUnix, Unix, ctypes, x, xlib, xutil, xatom, keysym, xkblib
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  BaseUnix, Unix, ctypes, x, xlib, xutil, xatom, keysym
>>>>>>> graemeg/cpstrnew
=======
Uses
=======
uses
>>>>>>> origin/cpstrnew
  BaseUnix, Unix, ctypes, x, xlib, xutil, xatom, keysym
>>>>>>> graemeg/fixes_2_2
=======
Uses
  BaseUnix, Unix, ctypes, x, xlib, xutil, xatom, keysym
>>>>>>> origin/fixes_2_2
  {$IFDEF ENABLE_X11_EXTENSION_XRANDR}
  , xrandr
  {$ENDIF ENABLE_X11_EXTENSION_XRANDR}
  {$IFDEF ENABLE_X11_EXTENSION_XF86VIDMODE}
  , xf86vmode
  {$ENDIF ENABLE_X11_EXTENSION_XF86VIDMODE}
  {$IFDEF ENABLE_X11_EXTENSION_XF86DGA}
  , xf86dga
  {$ENDIF ENABLE_X11_EXTENSION_XF86DGA}
  {$IFDEF ENABLE_X11_EXTENSION_XSHM}
  , xshm, ipc
  {$ENDIF ENABLE_X11_EXTENSION_XSHM}
<<<<<<< HEAD
<<<<<<< HEAD
  {$IFDEF ENABLE_X11_EXTENSION_GLX}
  , glx
  {$ENDIF ENABLE_X11_EXTENSION_GLX}
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
  ;
{$ENDIF UNIX}

{ this little procedure is not a good reason to include the whole sysutils
  unit :) }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
procedure FreeAndNil(var q);
var
  tmp: TObject;
begin
<<<<<<< HEAD
  tmp := TObject(q);
  Pointer(q) := nil;
  tmp.Free;
end;

procedure FreeMemAndNil(var q);
var
  tmp: Pointer;
begin
  tmp := Pointer(q);
  Pointer(q) := nil;
  if tmp <> nil then
    FreeMem(tmp);
end;

function IntToStr(Value: Integer): string;
begin
  System.Str(Value, Result);
end;

function IntToStr(Value: Int64): string;
begin
  System.Str(Value, Result);
end;

function IntToStr(Value: QWord): string;
begin
  System.Str(Value, Result);
end;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

{$INCLUDE core/log.inc}

=======

{$INCLUDE core/log.inc}

>>>>>>> graemeg/cpstrnew
=======

{$INCLUDE core/log.inc}

>>>>>>> graemeg/cpstrnew
=======

{$INCLUDE core/log.inc}

>>>>>>> graemeg/cpstrnew
=======

{$INCLUDE core/log.inc}

>>>>>>> origin/cpstrnew
{$INCLUDE core/coreimplementation.inc}
=======
=======
>>>>>>> origin/fixes_2_2
Procedure FreeAndNil(Var q);

Var
  tmp : TObject;

Begin
=======
>>>>>>> origin/cpstrnew
  tmp := TObject(q);
  Pointer(q) := nil;
  tmp.Free;
end;

procedure FreeMemAndNil(var q);
var
  tmp: Pointer;
begin
  tmp := Pointer(q);
  Pointer(q) := nil;
  if tmp <> nil then
    FreeMem(tmp);
end;

function IntToStr(Value: Integer): string;
begin
  System.Str(Value, Result);
end;

function IntToStr(Value: Int64): string;
begin
  System.Str(Value, Result);
end;

function IntToStr(Value: QWord): string;
begin
  System.Str(Value, Result);
end;

{$INCLUDE core/log.inc}

<<<<<<< HEAD
{$IFDEF WIN32}
{$INCLUDE win32/base/cursor.inc}
{$ENDIF WIN32}

{$INCLUDE coreimplementation.inc}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
{$INCLUDE core/coreimplementation.inc}
>>>>>>> origin/cpstrnew

{$IFDEF GO32V2}
{$INCLUDE dos/includes.inc}
{$ENDIF GO32V2}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$IF defined(Win32) OR defined(Win64)}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$INCLUDE win32/base/win32cursord.inc}
{$INCLUDE win32/base/win32cursormoded.inc}
{$INCLUDE win32/base/win32monitord.inc}
{$INCLUDE win32/base/win32eventd.inc}
{$INCLUDE win32/base/win32windowd.inc}
{$INCLUDE win32/base/win32hookd.inc}
{$INCLUDE win32/base/win32kbdd.inc}
{$INCLUDE win32/base/win32moused.inc}
{$INCLUDE win32/base/win32resized.inc}
{$INCLUDE win32/directx/win32directxhookd.inc}
{$INCLUDE win32/directx/win32directxlibraryd.inc}
{$INCLUDE win32/directx/win32directxdisplayd.inc}
{$INCLUDE win32/directx/win32directxprimaryd.inc}
{$INCLUDE win32/directx/win32directxconsoled.inc}
{$INCLUDE win32/gdi/win32dibd.inc}
{$INCLUDE win32/gdi/win32modesetterd.inc}
{$INCLUDE win32/gdi/win32openglwindowd.inc}
{$INCLUDE win32/gdi/win32gdihookd.inc}
{$INCLUDE win32/gdi/win32gdiconsoled.inc}

{$INCLUDE win32/base/win32cursor.inc}
{$INCLUDE win32/base/win32monitor.inc}
{$INCLUDE win32/base/win32event.inc}
{$INCLUDE win32/base/win32window.inc}
{$INCLUDE win32/base/win32hook.inc}
{$INCLUDE win32/base/win32kbd.inc}
{$INCLUDE win32/base/win32mousei.inc}
{$INCLUDE win32/base/win32resizei.inc}
{$INCLUDE win32/directx/win32directxcheck.inc}
{$INCLUDE win32/directx/win32directxtranslate.inc}
{$INCLUDE win32/directx/win32directxhook.inc}
{$INCLUDE win32/directx/win32directxlibrary.inc}
{$INCLUDE win32/directx/win32directxdisplay.inc}
{$INCLUDE win32/directx/win32directxprimary.inc}
{$INCLUDE win32/directx/win32directxconsolei.inc}
{$INCLUDE win32/gdi/win32dibi.inc}
{$INCLUDE win32/gdi/win32modesetteri.inc}
{$INCLUDE win32/gdi/win32openglwindowi.inc}
{$INCLUDE win32/gdi/win32gdihooki.inc}
{$INCLUDE win32/gdi/win32gdiconsolei.inc}
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{$INCLUDE win32/base/cursord.inc}
{$INCLUDE win32/base/cursormoded.inc}
=======
{$IFDEF Win32}
>>>>>>> graemeg/fixes_2_2
=======
{$IFDEF Win32}
>>>>>>> origin/fixes_2_2
=======
{$IF defined(Win32) OR defined(Win64)}
{$INCLUDE win32/base/cursord.inc}
{$INCLUDE win32/base/cursormoded.inc}
>>>>>>> origin/cpstrnew
{$INCLUDE win32/base/monitord.inc}
{$INCLUDE win32/base/eventd.inc}
{$INCLUDE win32/base/windowd.inc}
{$INCLUDE win32/base/hookd.inc}
{$INCLUDE win32/base/kbdd.inc}
{$INCLUDE win32/base/moused.inc}
{$INCLUDE win32/directx/hookd.inc}
{$INCLUDE win32/directx/libraryd.inc}
{$INCLUDE win32/directx/displayd.inc}
{$INCLUDE win32/directx/primaryd.inc}
{$INCLUDE win32/directx/directxconsoled.inc}
{$INCLUDE win32/gdi/win32dibd.inc}
{$INCLUDE win32/gdi/gdiconsoled.inc}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$INCLUDE win32/base/cursor.inc}
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
{$INCLUDE win32/base/cursor.inc}
>>>>>>> origin/cpstrnew
{$INCLUDE win32/base/monitor.inc}
{$INCLUDE win32/base/event.inc}
{$INCLUDE win32/base/window.inc}
{$INCLUDE win32/base/hook.inc}
{$INCLUDE win32/base/kbd.inc}
{$INCLUDE win32/base/mousei.inc}
{$INCLUDE win32/directx/check.inc}
{$INCLUDE win32/directx/translate.inc}
{$INCLUDE win32/directx/hook.inc}
{$INCLUDE win32/directx/library.inc}
{$INCLUDE win32/directx/display.inc}
{$INCLUDE win32/directx/primary.inc}
{$INCLUDE win32/directx/directxconsolei.inc}
{$INCLUDE win32/gdi/win32dibi.inc}
{$INCLUDE win32/gdi/gdiconsolei.inc}
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
{$ENDIF defined(Win32) OR defined(Win64)}
=======
{$ENDIF Win32}
>>>>>>> graemeg/fixes_2_2
=======
{$ENDIF Win32}
>>>>>>> origin/fixes_2_2
=======
{$ENDIF defined(Win32) OR defined(Win64)}
>>>>>>> origin/cpstrnew

{$IFDEF WinCE}
{$INCLUDE wince/includes.inc}
{$ENDIF WinCE}

{$IFDEF UNIX}
<<<<<<< HEAD
<<<<<<< HEAD
{$INCLUDE x11/x11includes.inc}
{$ENDIF UNIX}

{$INCLUDE core/consolei.inc}
=======
=======
>>>>>>> origin/fixes_2_2
{$INCLUDE x11/includes.inc}
{$ENDIF UNIX}

<<<<<<< HEAD
{$INCLUDE consolei.inc}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
{$INCLUDE core/consolei.inc}
>>>>>>> origin/cpstrnew

{$IFDEF ENABLE_C_API}
{$INCLUDE c_api/except.pp}
{$INCLUDE c_api/error.pp}
{$INCLUDE c_api/area.pp}
{$INCLUDE c_api/color.pp}
{$INCLUDE c_api/clear.pp}
{$INCLUDE c_api/clipper.pp}
{$INCLUDE c_api/copy.pp}
{$INCLUDE c_api/key.pp}
{$INCLUDE c_api/format.pp}
{$INCLUDE c_api/palette.pp}
{$INCLUDE c_api/surface.pp}
{$INCLUDE c_api/console.pp}
{$INCLUDE c_api/mode.pp}
{$INCLUDE c_api/timer.pp}
{$ENDIF ENABLE_C_API}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
initialization
  {$IFDEF ENABLE_C_API}
  ptc_error_handler_function := @ptc_error_handler_default;
  {$ENDIF ENABLE_C_API}
  {$IF defined(WIN32) OR defined(WIN64)}
  TWin32Hook_Monitor := TWin32Monitor.Create;
  {$ENDIF defined(WIN32) OR defined(WIN64)}

finalization
  {$IF defined(WIN32) OR defined(WIN64)}
  FreeAndNil(TWin32Hook_Monitor);
  {$ENDIF defined(WIN32) OR defined(WIN64)}

end.
=======
=======
>>>>>>> origin/fixes_2_2
Initialization

Begin
=======
initialization
>>>>>>> origin/cpstrnew
  {$IFDEF ENABLE_C_API}
  ptc_error_handler_function := @ptc_error_handler_default;
  {$ENDIF ENABLE_C_API}
  {$IF defined(WIN32) OR defined(WIN64)}
  TWin32Hook_Monitor := TWin32Monitor.Create;
  {$ENDIF defined(WIN32) OR defined(WIN64)}

finalization
  {$IF defined(WIN32) OR defined(WIN64)}
  FreeAndNil(TWin32Hook_Monitor);
  {$ENDIF defined(WIN32) OR defined(WIN64)}

<<<<<<< HEAD
End.
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
end.
>>>>>>> origin/cpstrnew
