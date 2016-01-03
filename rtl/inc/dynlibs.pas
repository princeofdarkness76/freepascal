{
    This file is part of the Free Pascal run time library.
    Copyright (c) 1999-2000 by the Free Pascal development team

    Implements OS-independent loading of dynamic libraries.

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}
{$IFDEF FPC}
{$MODE OBJFPC}
{$ENDIF}

unit dynlibs;

interface

Type
  TLibHandle = System.TLibHandle;

Const
  NilHandle = System.NilHandle;
  SharedSuffix = System.SharedSuffix;

Function SafeLoadLibrary(const Name : RawByteString) : TLibHandle; inline;
Function LoadLibrary(const Name : RawByteString) : TLibHandle; inline;
Function SafeLoadLibrary(const Name : UnicodeString) : TLibHandle; inline;
Function LoadLibrary(const Name : UnicodeString) : TLibHandle; inline;

<<<<<<< HEAD
Function GetProcedureAddress(Lib : TlibHandle; const ProcName : AnsiString) : {$ifdef cpui8086}FarPointer{$else}Pointer{$endif}; inline;
Function GetProcedureAddress(Lib : TLibHandle; Ordinal: TOrdinalEntry) : {$ifdef cpui8086}FarPointer{$else}Pointer{$endif}; inline;
Function UnloadLibrary(Lib : TLibHandle) : Boolean; inline;
Function GetLoadErrorStr: string; inline;

// Kylix/Delphi compability

<<<<<<< HEAD
<<<<<<< HEAD
Function FreeLibrary(Lib : TLibHandle) : Boolean; inline;
Function GetProcAddress(Lib : TlibHandle; const ProcName : AnsiString) : {$ifdef cpui8086}FarPointer{$else}Pointer{$endif}; inline;
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
Function SafeLoadLibrary(const Name : AnsiString) : TLibHandle;
Function LoadLibrary(const Name : AnsiString) : TLibHandle;
Function GetProcedureAddress(Lib : TlibHandle; const ProcName : AnsiString) : Pointer;
Function UnloadLibrary(Lib : TLibHandle) : Boolean;

// Kylix/Delphi compability

Function FreeLibrary(Lib : TLibHandle) : Boolean;
Function GetProcAddress(Lib : TlibHandle; const ProcName : AnsiString) : Pointer;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

Type
  HModule = TLibHandle; 

Implementation


{ Should define a procedure InitDynLibs which sets up the DynLibs manager; optionally a
  DoneDynLibs can be defined which is called during finalization }
{$i dynlibs.inc}

Function SafeLoadLibrary(const Name : RawByteString) : TLibHandle;
begin
  Result:=System.SafeLoadLibrary(Name);
end;

Function LoadLibrary(const Name : RawByteString) : TLibHandle;
begin
  Result:=System.LoadLibrary(Name);
end;

<<<<<<< HEAD
<<<<<<< HEAD
Function SafeLoadLibrary(const Name : UnicodeString) : TLibHandle;
begin
  Result:=System.SafeLoadLibrary(Name);
end;
=======
Function GetProcAddress(Lib : TlibHandle; const ProcName : AnsiString) : Pointer;
>>>>>>> graemeg/cpstrnew
=======
Function GetProcAddress(Lib : TlibHandle; const ProcName : AnsiString) : Pointer;
>>>>>>> graemeg/cpstrnew

Function LoadLibrary(const Name : UnicodeString) : TLibHandle;
begin
  Result:=System.LoadLibrary(Name);
end;

<<<<<<< HEAD
<<<<<<< HEAD
=======
Function SafeLoadLibrary(const Name : AnsiString) : TLibHandle;
>>>>>>> graemeg/cpstrnew
=======
Function SafeLoadLibrary(const Name : AnsiString) : TLibHandle;
>>>>>>> graemeg/cpstrnew

Function GetProcedureAddress(Lib : TLibHandle; const ProcName: AnsiString) : {$ifdef cpui8086}FarPointer{$else}Pointer{$endif};
begin
  Result:=System.GetProcedureAddress(Lib, ProcName);
end;

<<<<<<< HEAD
Function GetProcedureAddress(Lib : TLibHandle; Ordinal : TOrdinalEntry) : {$ifdef cpui8086}FarPointer{$else}Pointer{$endif};
begin
  Result:=System.GetProcedureAddress(Lib, Ordinal);
end;
=======
Function GetProcAddress(Lib : TlibHandle; const ProcName : AnsiString) : Pointer;
>>>>>>> graemeg/cpstrnew

Function UnloadLibrary(Lib : TLibHandle) : Boolean;
begin
  Result:=System.UnloadLibrary(Lib);
end;

<<<<<<< HEAD
Function GetLoadErrorStr: String;
begin
  Result:=System.GetLoadErrorStr;
end;
=======
Function SafeLoadLibrary(const Name : AnsiString) : TLibHandle;
>>>>>>> graemeg/cpstrnew

Function FreeLibrary(Lib : TLibHandle) : Boolean;

begin
  Result:=System.FreeLibrary(lib);
end;

Function GetProcAddress(Lib : TlibHandle; const ProcName : AnsiString) : {$ifdef cpui8086}FarPointer{$else}Pointer{$endif};

begin
  Result:=System.GetProcedureAddress(Lib,Procname);
end;

initialization
  InitDynLibs;
finalization
{$if declared(DoneDynLibs)}
  DoneDynLibs;
{$endif}
end.
