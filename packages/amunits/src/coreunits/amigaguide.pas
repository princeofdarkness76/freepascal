{
    This file is part of the Free Pascal run time library.

    A file in Amiga system run time library.
    Copyright (c) 1998-2003 by Nils Sjoholm
    member of the Amiga RTL development team.

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

{
    History:

    Added functions and procedures with array of const.
    For use with fpc 1.0.7. They are in systemvartags.
    10 Nov 2002.

    Added the defines use_amiga_smartlink and
    use_auto_openlib. Implemented opening of
    the library.
    13 Jan 2003.

    Update for AmigaOs 3.9.
    Added a const and a member to record tXRef;
    Changed startupcode for library.
    26 Jan 2003.

    Changed cardinal to longword.
    09 Feb 2003.

    nils.sjoholm@mailbox.swipnet.se
}

{$PACKRECORDS 2}
unit amigaguide;

INTERFACE

uses exec,amigados, intuition, utility;

const
 APSH_TOOL_ID           = 11000;
 StartupMsgID           = (APSH_TOOL_ID+1) ;      { Startup message }
 LoginToolID            = (APSH_TOOL_ID+2) ;      { Login a tool SIPC port }
 LogoutToolID           = (APSH_TOOL_ID+3) ;      { Logout a tool SIPC port }
 ShutdownMsgID          = (APSH_TOOL_ID+4) ;      { Shutdown message }
 ActivateToolID         = (APSH_TOOL_ID+5) ;      { Activate tool }
 DeactivateToolID       = (APSH_TOOL_ID+6) ;      { Deactivate tool }
 ActiveToolID           = (APSH_TOOL_ID+7) ;      { Tool Active }
 InactiveToolID         = (APSH_TOOL_ID+8) ;      { Tool Inactive }
 ToolStatusID           = (APSH_TOOL_ID+9) ;      { Status message }
 ToolCmdID              = (APSH_TOOL_ID+10);      { Tool command message }
 ToolCmdReplyID         = (APSH_TOOL_ID+11);      { Reply to tool command }
 ShutdownToolID         = (APSH_TOOL_ID+12);      { Shutdown tool }

{ Attributes accepted by GetAmigaGuideAttr() }
 AGA_Dummy              = (TAG_USER)   ;
 AGA_Path               = (AGA_Dummy+1);
 AGA_XRefList           = (AGA_Dummy+2);
 AGA_Activate           = (AGA_Dummy+3);
 AGA_Context            = (AGA_Dummy+4);

 AGA_HelpGroup          = (AGA_Dummy+5);
    { (ULONG) Unique identifier }

 AGA_Reserved1          = (AGA_Dummy+6);
 AGA_Reserved2          = (AGA_Dummy+7);
 AGA_Reserved3          = (AGA_Dummy+8);

 AGA_ARexxPort          = (AGA_Dummy+9);
    { (struct MsgPort *) Pointer to the ARexx message port (V40) }

 AGA_ARexxPortName      = (AGA_Dummy+10);
   { (STRPTR) Used to specify the ARexx port name (V40) (not copied) }

 AGA_Secure             = (AGA_Dummy+11);
   { (BOOL) Disable "ONOPEN", "ONCLOSE" and "LINK RX", "LINK RXS", "LINK SYSTEM" commands (V41) }

Type
    AMIGAGUIDECONTEXT = Pointer;

 pAmigaGuideMsg = ^tAmigaGuideMsg;
 tAmigaGuideMsg = record
    agm_Msg     : tMessage;                     { Embedded Exec message structure }
    agm_Type    : ULONG;                        { Type of message }
    agm_Data    : Pointer;                      { Pointer to message data }
    agm_DSize,                                  { Size of message data }
    agm_DType,                                  { Type of message data }
    agm_Pri_Ret,                                { Primary return value }
    agm_Sec_Ret : ULONG;                        { Secondary return value }
    agm_System1,
    agm_System2 : Pointer;
 end;

{ Allocation description structure }
  pNewAmigaGuide = ^tNewAmigaGuide;
  tNewAmigaGuide = record
    nag_Lock  : BPTR;                           { Lock on the document directory }
    nag_Name  : STRPTR;                         { Name of document file }
    nag_Screen : pScreen;                       { Screen to place windows within }
    nag_PubScreen,                              { Public screen name to open on }
    nag_HostPort,                               { Application's ARexx port name }
    nag_ClientPort,                             { Name to assign to the clients ARexx port }
    nag_BaseName  : STRPTR;                     { Base name of the application }
    nag_Flags  : ULONG;                         { Flags }
    nag_Context: Pointer;                       { NULL terminated context table }
    nag_Node   : STRPTR;                        { Node to align on first (defaults to Main) }
    nag_Line   : Longint;                       { Line to align on }
    nag_Extens : pTagItem;                      { Tag array extension }
    nag_Client : Pointer;                       { Private! MUST be NULL }
  END;

CONST
{ public Client flags }
    HTF_LOAD_INDEX = 0;                 { Force load the index at init time }
    HTF_LOAD_ALL   = 2;                 { Force load the entire database at init }
    HTF_CACHE_NODE = 3;                 { Cache each node as visited }
    HTF_CACHE_DB   = 8;                 { Keep the buffers around UNTIL expunge }
    HTF_UNIQUE     = 32768;             { Unique ARexx port name }
    HTF_NOACTIVATE = 65536;             { Don't activate window }

    HTFC_SYSGADS   = $80000000;

{ Callback function ID's }
    HTH_OPEN       = 0;
    HTH_CLOSE      = 1;

    HTERR_NOT_ENOUGH_MEMORY       =  100;
    HTERR_CANT_OPEN_DATABASE      =  101;
    HTERR_CANT_FIND_NODE          =  102;
    HTERR_CANT_OPEN_NODE          =  103;
    HTERR_CANT_OPEN_WINDOW        =  104;
    HTERR_INVALID_COMMAND         =  105;
    HTERR_CANT_COMPLETE           =  106;
    HTERR_PORT_CLOSED             =  107;
    HTERR_CANT_CREATE_PORT        =  108;
    HTERR_KEYWORD_NOT_FOUND       =  113;

Type
{ Cross reference node }
  pXRef = ^tXRef;
  tXRef = record
    xr_Node   : tNode;            { Embedded node }
    xr_Pad    : WORD;             { Padding }
    xr_DF     : Pointer;          { Document defined in }
    xr_File,                      { Name of document file }
    xr_Name   : STRPTR;           { Name of item }
    xr_Line   : Longint;          { Line defined at }
    xr_Reserved : array [0..1] of Ulong;
   END;

CONST
{ Types of cross reference nodes }
    XR_GENERIC     = 0;
    XR_FUNCTION    = 1;
    XR_COMMAND     = 2;
    XR_INCLUDE     = 3;
    XR_MACRO       = 4;
    XR_STRUCT      = 5;
    XR_FIELD       = 6;
    XR_TYPEDEF     = 7;
    XR_DEFINE      = 8;

Type
{ Callback handle }
   pAmigaGuideHost = ^tAmigaGuideHost;
   tAmigaGuideHost = record
    agh_Dispatcher  : tHook;         { Dispatcher }
    agh_Reserved,                 { Must be 0 }
    agh_Flags,
    agh_UseCnt      : ULONG;                   { Number of open nodes }
    agh_SystemData,                        { Reserved for system use }
    agh_UserData    : Pointer;                  { Anything you want... }
   END;

CONST
{ Methods }
    HM_FindNode    = 1 ;
    HM_OpenNode    = 2 ;
    HM_CloseNode   = 3 ;
    HM_Expunge     = 10;              { Expunge DataBase }

Type
{ HM_FindNode }
   popFindHost = ^topFindHost;
   topFindHost = record
    MethodID  : ULONG;
    ofh_Attrs : pTagItem;           {  R: Additional attributes }
    ofh_Node,                    {  R: Name of node }
    ofh_TOC,                     {  W: Table of Contents }
    ofh_Title,                   {  W: Title to give to the node }
    ofh_Next,                    {  W: Next node to browse to }
    ofh_Prev  : STRPTR;          {  W: Previous node to browse to }
   END;

{ HM_OpenNode, HM_CloseNode }
   popNodeIO = ^topNodeIO;
   topNodeIO = record
    MethodID  : ULONG;
    onm_Attrs : pTagItem;          {  R: Additional attributes }
    onm_Node,                    {  R: Node name AND arguments }
    onm_FileName,                {  W: File name buffer }
    onm_DocBuffer : STRPTR;               {  W: Node buffer }
    onm_BuffLen : ULONG;                  {  W: Size of buffer }
    onm_Flags : ULONG;                    { RW: Control flags }
   END;

CONST
{ onm_Flags }
    HTNF_KEEP      = 0; { Don't flush this node UNTIL database is
                                 * closed. }
    HTNF_Reserved1 = 2 ; { Reserved for system use }
    HTNF_Reserved2 = 4 ; { Reserved for system use }
    HTNF_ASCII     = 8 ; { Node is straight ASCII }
    HTNF_Reserved3 = 16; { Reserved for system use }
    HTNF_CLEAN     = 32; { Remove the node from the database }
    HTNF_DONE      = 64; { Done with node }

{ onm_Attrs }
    HTNA_Dummy     = TAG_USER;
    HTNA_Screen    = (TAG_USER + 1);  { Screen that window resides in }
    HTNA_Pens      = (TAG_USER + 2);  { Pen array (from DrawInfo) }
    HTNA_Rectangle = (TAG_USER + 3);  { Window box }

    HTNA_HelpGroup = (HTNA_Dummy+5);  { (ULONG) unique identifier }


Type
{ HM_Expunge }
  popExpungeNode = ^topExpungeNode;
  topExpungeNode = record
    MethodID  : ULONG;
    oen_Attrs : pTagItem;          {  R: Additional attributes }
  END;

VAR AmigaGuideBase : pLibrary;

const
    AMIGAGUIDENAME : Pchar = 'amigaguide.library';

FUNCTION AddAmigaGuideHostA(h : pHook location 'a0'; name : pCHAR location 'd0'; attrs : pTagItem location 'a1') : POINTER; syscall AmigaGuideBase 138;
FUNCTION AmigaGuideSignal(cl : POINTER location 'a0') : ULONG; syscall AmigaGuideBase 072;
PROCEDURE CloseAmigaGuide(cl : POINTER location 'a0'); syscall AmigaGuideBase 066;
PROCEDURE ExpungeXRef; syscall AmigaGuideBase 132;
FUNCTION GetAmigaGuideAttr(tag : ULONG location 'd0'; cl : POINTER location 'a0'; storage : POINTER location 'a1') : LONGINT; syscall AmigaGuideBase 114;
FUNCTION GetAmigaGuideMsg(cl : POINTER location 'a0') : pAmigaGuideMsg; syscall AmigaGuideBase 078;
FUNCTION GetAmigaGuideString(id : LONGINT location 'd0') : pCHAR; syscall AmigaGuideBase 210;
FUNCTION LoadXRef(lock : LONGINT location 'a0'; name : pCHAR location 'a1') : LONGINT; syscall AmigaGuideBase 126;
FUNCTION LockAmigaGuideBase(handle : POINTER location 'a0') : LONGINT; syscall AmigaGuideBase 036;
FUNCTION OpenAmigaGuideA(nag : pNewAmigaGuide location 'a0'; taglist : pTagItem location 'a1') : POINTER; syscall AmigaGuideBase 054;
FUNCTION OpenAmigaGuideAsyncA(nag : pNewAmigaGuide location 'a0'; attrs : pTagItem location 'd0') : POINTER; syscall AmigaGuideBase 060;
FUNCTION RemoveAmigaGuideHostA(hh : POINTER location 'a0'; attrs : pTagItem location 'a1') : LONGINT; syscall AmigaGuideBase 144;
PROCEDURE ReplyAmigaGuideMsg(amsg : pAmigaGuideMsg location 'a0'); syscall AmigaGuideBase 084;
FUNCTION SendAmigaGuideCmdA(cl : POINTER location 'a0'; cmd : pCHAR location 'd0'; attrs : pTagItem location 'd1') : LONGINT; syscall AmigaGuideBase 102;
FUNCTION SendAmigaGuideContextA(cl : POINTER location 'a0'; attrs : pTagItem location 'd0') : LONGINT; syscall AmigaGuideBase 096;
FUNCTION SetAmigaGuideAttrsA(cl : POINTER location 'a0'; attrs : pTagItem location 'a1') : LONGINT; syscall AmigaGuideBase 108;
FUNCTION SetAmigaGuideContextA(cl : POINTER location 'a0'; id : ULONG location 'd0'; attrs : pTagItem location 'd1') : LONGINT; syscall AmigaGuideBase 090;
PROCEDURE UnlockAmigaGuideBase(key : LONGINT location 'd0'); syscall AmigaGuideBase 042;

{Here we read how to compile this unit}
{You can remove this include and use a define instead}
{$I useautoopenlib.inc}
{$ifdef use_init_openlib}
procedure InitAMIGAGUIDELibrary;
{$endif use_init_openlib}

{This is a variable that knows how the unit is compiled}
var
    AMIGAGUIDEIsCompiledHow : longint;

IMPLEMENTATION

{$ifndef dont_use_openlib}
uses amsgbox;
{$endif dont_use_openlib}


const
    { Change VERSION and LIBVERSION to proper values }

    VERSION : string[2] = '0';
    LIBVERSION : longword = 0;

{$ifdef use_init_openlib}
  {$Info Compiling initopening of amigaguide.library}
  {$Info don't forget to use InitAMIGAGUIDELibrary in the beginning of your program}

var
    amigaguide_exit : Pointer;

procedure CloseamigaguideLibrary;
begin
    ExitProc := amigaguide_exit;
    if AmigaGuideBase <> nil then begin
        CloseLibrary(AmigaGuideBase);
        AmigaGuideBase := nil;
    end;
end;

procedure InitAMIGAGUIDELibrary;
begin
    AmigaGuideBase := nil;
    AmigaGuideBase := OpenLibrary(AMIGAGUIDENAME,LIBVERSION);
    if AmigaGuideBase <> nil then begin
        amigaguide_exit := ExitProc;
        ExitProc := @CloseamigaguideLibrary;
    end else begin
        MessageBox('FPC Pascal Error',
        'Can''t open amigaguide.library version ' + VERSION + #10 +
        'Deallocating resources and closing down',
        'Oops');
        halt(20);
    end;
end;

begin
    AMIGAGUIDEIsCompiledHow := 2;
{$endif use_init_openlib}

{$ifdef use_auto_openlib}
  {$Info Compiling autoopening of amigaguide.library}

var
    amigaguide_exit : Pointer;

procedure CloseamigaguideLibrary;
begin
    ExitProc := amigaguide_exit;
    if AmigaGuideBase <> nil then begin
        CloseLibrary(AmigaGuideBase);
        AmigaGuideBase := nil;
    end;
end;

begin
    AmigaGuideBase := nil;
    AmigaGuideBase := OpenLibrary(AMIGAGUIDENAME,LIBVERSION);
    if AmigaGuideBase <> nil then begin
        amigaguide_exit := ExitProc;
        ExitProc := @CloseamigaguideLibrary;
        AMIGAGUIDEIsCompiledHow := 1;
    end else begin
        MessageBox('FPC Pascal Error',
        'Can''t open amigaguide.library version ' + VERSION + #10 +
        'Deallocating resources and closing down',
        'Oops');
        halt(20);
    end;

{$endif use_auto_openlib}

{$ifdef dont_use_openlib}
begin
    AMIGAGUIDEIsCompiledHow := 3;
   {$Warning No autoopening of amigaguide.library compiled}
   {$Warning Make sure you open amigaguide.library yourself}
{$endif dont_use_openlib}


END. (* UNIT AMIGAGUIDE *)



