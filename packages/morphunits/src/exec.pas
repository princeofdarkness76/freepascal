{
    This file is part of the Free Pascal run time library.
    Copyright (c) 2004 Karoly Balogh for Genesi S.a.r.l. <www.genesi.lu>

    exec.library interface unit for MorphOS/PowerPC

    MorphOS port was done on a free Pegasos II/G4 machine
    provided by Genesi S.a.r.l. <www.genesi.lu>

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

unit exec;

interface

var
  ExecBase: Pointer;


{ Some types for classic Amiga and AROS compatibility }
type
  STRPTR    = PChar;
  ULONG     = Longword;
  LONG      = Longint;
  APTR      = Pointer;
  BPTR      = Longint;
  BSTR      = Longint;
  BOOL      = Smallint; { I think this could be changed to WordBool (KB) }
  UWORD     = Word;
  WORDBITS  = Word;
  LONGBITS  = Longword;
  PLONGBITS = ^LONGBITS;
  UBYTE     = Byte;
  PULONG    = ^Longword;
  PAPTR     = ^APTR;
  PLONG     = ^LONG;

{ Some constants for classic Amiga and AROS compatibility }
const
  LTrue  : Longint = 1;
  LFalse : Longint = 0;


{ * emulinterface consts from MorphOS SDK * }

const
  TRAP_MASK            = $00ff;
  TRAP_AREA_START      = $ff00;      { * $ff00 .. $ffff area * }
  TRAP_LIB             = $ff00;
  TRAP_LIB_QUICK       = $ff01;
  TRAP_LIBNR           = $ff05;
  TRAP_LIBNR_QUICK     = $ff06;
  TRAP_ISYNC           = $ff0f;
  TRAP_SYNC            = $ff10;
  TRAP_EIEIO           = $ff11;
  TRAP_LIBSR           = $ff12;
  TRAP_LIBSRNR         = $ff13;
  TRAP_LIBD0_D1        = $ff14;
  TRAP_LIBRESTORE      = $ff15;
  TRAP_LIBD0D1SR       = $ff17;
  TRAP_LIBD0D1A0A1SR   = $ff18;

const
  EMULTAG_NAME             = $0;    { * Gives back a Name Ptr * }
  EMULTAG_VERSION          = $1;    { * Gives back a Version  * }
  EMULTAG_REVISION         = $2;    { * Gives back a Revision * }
  EMULTAG_OPCODETABLE      = $3;    { * Gives back the 16 Bit Opcodetable Ptr or NULL * }
  EMULTAG_TYPE             = $4;    { * Gives back the emulation type   * }
  EMULTAG_EMULHANDLE       = $5;    { * Gives back the EmulHandle Ptr   * }
  EMULTAG_EMULHANDLESIZE   = $6;    { * Gives back the EmulHandle Size  * }
  EMULTAG_SUPERHANDLE      = $7;    { * Gives back the SuperHandle Ptr  * }
  EMULTAG_SUPERHANDLESIZE  = $8;    { * Gives back the SuperHandle Size * }

{ * emulinterface structures from MorphOS SDK * }

type
  PEmulLibEntry = ^TEmulLibEntry;
  TEmulLibEntry = packed record
    Trap     : Word;
    Extension: Word;    { * MUST be set to 0 if you create it by hand * }
    Func     : Pointer;
  end;

type
  TEmulRegs = (regD0,regD1,regD2,regD3,regD4,regD5,regD6,regD7,regA0,regA1,regA2,regA3,regA4,regA5,regA6,regA7,regPC,regSR);

type
  PEmulHandle = ^TEmulHandle;
  TEmulHandle = packed record
    reg: array[TEmulRegs] of LongWord;  {* 0x00-0x44 68k emulation registers *}
    SuperHandle: Pointer;               {* 0x48      pointer to SuperHandle  *}
    _Type: ULONG;                       {* 0x4c      EmulHandle type *}
    Flags: ULONG;                       {* 0x50      Flags *}

    EmulFunc: procedure; cdecl;                                  {* 0x54 *}
    EmulCallOS: function(EmulCaos: pointer): ULONG; cdecl;       {* 0x58 *}
    EmulCall68k: function(EmulCaos: pointer): ULONG; cdecl;      {* 0x5c *}
    EmulCallQuick68k: function(EmulCaos: pointer): ULONG; cdecl; {* 0x60 *}
    EmulCallDirectOS: function(arg: LONG): ULONG; cdecl;         {* 0x64 *}
    EmulCallDirect68k: function(arg: Pointer): ULONG; cdecl;     {* 0x68 *}

    OldEmulHandle: PEmulHandle;         {* 0x6c     Here we record the previous EmulHandle *}
    { * TODO: but wait, there's more... * }
  end;

function GetEmulHandle: PEmulHandle;

function REG_D0: DWord;
function REG_D1: DWord;
function REG_D2: DWord;
function REG_D3: DWord;
function REG_D4: DWord;
function REG_D5: DWord;
function REG_D6: DWord;
function REG_D7: DWord;

function REG_A0: Pointer;
function REG_A1: Pointer;
function REG_A2: Pointer;
function REG_A3: Pointer;
function REG_A4: Pointer;
function REG_A5: Pointer;
function REG_A6: Pointer;
function REG_A7: Pointer;

function REG_PC: Pointer;
function REG_SR: DWord;

{ * "dummy" definitions from utility, which we can't include here because it
  *  would create a circular dependency (KB) }
type
  PTagItem = Pointer;
  PHook = Pointer;


{ * exec node definitions (V50)
  *********************************************************************
  * }


type
  PNode = ^TNode;
  TNode = packed record
    ln_Succ: PNode;
    ln_Pred: PNode;
    ln_Type: Byte;
    ln_Pri : ShortInt;
    ln_Name: PChar;
  end;

type
  PMinNode = ^TMinNode;
  TMinNode = packed record
    mln_Succ: PMinNode;
    mln_Pred: PMinNode;
  end;


const
  NT_UNKNOWN      = 0;
  NT_TASK         = 1;
  NT_INTERRUPT    = 2;
  NT_DEVICE       = 3;
  NT_MSGPORT      = 4;
  NT_MESSAGE      = 5;
  NT_FREEMSG      = 6;
  NT_REPLYMSG     = 7;
  NT_RESOURCE     = 8;
  NT_LIBRARY      = 9;
  NT_MEMORY       = 10;
  NT_SOFTINT      = 11;
  NT_FONT         = 12;
  NT_PROCESS      = 13;
  NT_SEMAPHORE    = 14;
  NT_SIGNALSEM    = 15;
  NT_BOOTNODE     = 16;
  NT_KICKMEM      = 17;
  NT_GRAPHICS     = 18;
  NT_DEATHMESSAGE = 19;
  NT_USER         = 254;
  NT_EXTENDED     = 255;



{ * exec list definitions (V50)
  *********************************************************************
  * }


type
  PList = ^TList;
  TList = packed record
    lh_Head    : PNode;
    lh_Tail    : PNode;
    lh_TailPred: PNode;
    lh_Type    : Byte;
    lh_pad     : Byte;
  end;

type
  PMinList = ^TMinList;
  TMinList = packed record
    mlh_Head    : PMinNode;
    mlh_Tail    : PMinNode;
    mlh_TailPred: PMinNode;
  end;



{ * exec alert definitions (V50)
  *********************************************************************
  * }


const
  ACPU_BusErr             = $80000002;
  ACPU_AddressErr         = $80000003;
  ACPU_InstErr            = $80000004;
  ACPU_DivZero            = $80000005;
  ACPU_CHK                = $80000006;
  ACPU_TRAPV              = $80000007;
  ACPU_PrivErr            = $80000008;
  ACPU_Trace              = $80000009;
  ACPU_LineA              = $8000000A;
  ACPU_LineF              = $8000000B;
  ACPU_Format             = $8000000E;
  ACPU_Spurious           = $80000018;
  ACPU_AutoVec1           = $80000019;
  ACPU_AutoVec2           = $8000001A;
  ACPU_AutoVec3           = $8000001B;
  ACPU_AutoVec4           = $8000001C;
  ACPU_AutoVec5           = $8000001D;
  ACPU_AutoVec6           = $8000001E;
  ACPU_AutoVec7           = $8000001F;

  AT_DeadEnd              = $80000000;
  AT_Recovery             = $00000000;

  AG_NoMemory             = $00010000;
  AG_MakeLib              = $00020000;
  AG_OpenLib              = $00030000;
  AG_OpenDev              = $00040000;
  AG_OpenRes              = $00050000;
  AG_IOError              = $00060000;
  AG_NoSignal             = $00070000;
  AG_BadParm              = $00080000;
  AG_CloseLib             = $00090000;
  AG_CloseDev             = $000A0000;
  AG_ProcCreate           = $000B0000;
  AG_MsgPortNotEmpty      = $000C0000  { * V50 * };

  AO_ExecLib              = $00008001;
  AO_GraphicsLib          = $00008002;
  AO_LayersLib            = $00008003;
  AO_Intuition            = $00008004;
  AO_MathLib              = $00008005;
  AO_DOSLib               = $00008007;
  AO_RAMLib               = $00008008;
  AO_IconLib              = $00008009;
  AO_ExpansionLib         = $0000800A;
  AO_DiskfontLib          = $0000800B;
  AO_UtilityLib           = $0000800C;
  AO_KeyMapLib            = $0000800D;

  AO_AudioDev             = $00008010;
  AO_ConsoleDev           = $00008011;
  AO_GamePortDev          = $00008012;
  AO_KeyboardDev          = $00008013;
  AO_TrackDiskDev         = $00008014;
  AO_TimerDev             = $00008015;

  AO_CIARsrc              = $00008020;
  AO_DiskRsrc             = $00008021;
  AO_MiscRsrc             = $00008022;

  AO_BootStrap            = $00008030;
  AO_Workbench            = $00008031;
  AO_DiskCopy             = $00008032;
  AO_GadTools             = $00008033;
  AO_Unknown              = $00008035;


  { *
    * exec.library
    * }
const
  AN_ExecLib              = $01000000;
  AN_ExcptVect            = $01000001;
  AN_BaseChkSum           = $01000002;
  AN_LibChkSum            = $01000003;

  AN_MemCorrupt           = $81000005;
  AN_IntrMem              = $81000006;
  AN_InitAPtr             = $01000007;
  AN_SemCorrupt           = $01000008;

  AN_FreeTwice            = $01000009;
  AN_BogusExcpt           = $8100000A;
  AN_IOUsedTwice          = $0100000B;
  AN_MemoryInsane         = $0100000C;

  AN_IOAfterClose         = $0100000D;
  AN_StackProbe           = $0100000E;
  AN_BadFreeAddr          = $0100000F;
  AN_BadSemaphore         = $01000010;

  { *
    * graphics.library
    * }
const
  AN_GraphicsLib          = $02000000;
  AN_GfxNoMem             = $82010000;
  AN_GfxNoMemMspc         = $82010001;
  AN_LongFrame            = $82010006;
  AN_ShortFrame           = $82010007;
  AN_TextTmpRas           = $02010009;
  AN_BltBitMap            = $8201000A;
  AN_RegionMemory         = $8201000B;
  AN_MakeVPort            = $82010030;
  AN_GfxNewError          = $0200000C;
  AN_GfxFreeError         = $0200000D;

  AN_GfxNoLCM             = $82011234;

  AN_ObsoleteFont         = $02000401;

  { *
    * layers.library
    * }
const
  AN_LayersLib            = $03000000;
  AN_LayersNoMem          = $83010000;

  { *
    * intuition.library
    * }
const
  AN_Intuition            = $04000000;
  AN_GadgetType           = $84000001;
  AN_BadGadget            = $04000001;
  AN_CreatePort           = $84010002;
  AN_ItemAlloc            = $04010003;
  AN_SubAlloc             = $04010004;
  AN_PlaneAlloc           = $84010005;
  AN_ItemBoxTop           = $84000006;
  AN_OpenScreen           = $84010007;
  AN_OpenScrnRast         = $84010008;
  AN_SysScrnType          = $84000009;
  AN_AddSWGadget          = $8401000A;
  AN_OpenWindow           = $8401000B;
  AN_BadState             = $8400000C;
  AN_BadMessage           = $8400000D;
  AN_WeirdEcho            = $8400000E;
  AN_NoConsole            = $8400000F;
  AN_NoISem               = $04000010;
  AN_ISemOrder            = $04000011;

  { *
    * math.library
    * }
const
  AN_MathLib              = $05000000;

  { *
    * dos.library
    * }
const
  AN_DOSLib               = $07000000;
  AN_StartMem             = $07010001;
  AN_EndTask              = $07000002;
  AN_QPktFail             = $07000003;
  AN_AsyncPkt             = $07000004;
  AN_FreeVec              = $07000005;
  AN_DiskBlkSeq           = $07000006;
  AN_BitMap               = $07000007;
  AN_KeyFree              = $07000008;
  AN_BadChkSum            = $07000009;
  AN_DiskError            = $0700000A;
  AN_KeyRange             = $0700000B;
  AN_BadOverlay           = $0700000C;
  AN_BadInitFunc          = $0700000D;
  AN_FileReclosed         = $0700000E;

  { *
    * ramlib.library
    * }
const
  AN_RAMLib               = $08000000;
  AN_BadSegList           = $08000001;

  { *
    * icon.library
    * }
const
  AN_IconLib              = $09000000;

  { *
    * expansion.library
    * }
const
  AN_ExpansionLib         = $0A000000;
  AN_BadExpansionFree     = $0A000001;

  { *
    * diskfont.library
    * }
const
  AN_DiskfontLib          = $0B000000;

  { *
    * audio.device
    * }
const
  AN_AudioDev             = $10000000;

  { *
    * console.device
    * }
const
  AN_ConsoleDev           = $11000000;
  AN_NoWindow             = $11000001;

  { *
    * gameport.device
    * }
const
  AN_GamePortDev          = $12000000;

  { *
    * keyboard.device
    * }
const
  AN_KeyboardDev          = $13000000;

  { *
    * trackdisk.device
    * }
const
  AN_TrackDiskDev         = $14000000;
  AN_TDCalibSeek          = $14000001;
  AN_TDDelay              = $14000002;

  { *
    * timer.device
    * }
const
  AN_TimerDev             = $15000000;
  AN_TMBadReq             = $15000001;
  AN_TMBadSupply          = $15000002;

  { *
    * cia.resource
    * }
const
  AN_CIARsrc              = $20000000;

  { *
    * disk.resource
    * }
const
  AN_DiskRsrc             = $21000000;
  AN_DRHasDisk            = $21000001;
  AN_DRIntNoAct           = $21000002;

  { *
    * misc.resource
    * }
const
  AN_MiscRsrc             = $22000000;

  { *
    * bootstrap
    * }
const
  AN_BootStrap            = $30000000;
  AN_BootError            = $30000001;

  { *
    * Workbench
    * }
const
  AN_Workbench            = $31000000;
  AN_NoFonts              = $B1000001;
  AN_WBBadStartupMsg1     = $31000001;
  AN_WBBadStartupMsg2     = $31000002;
  AN_WBBadIOMsg           = $31000003;
  AN_WBReLayoutToolMenu   = $B1010009;

  { *
    * DiskCopy
    * }
const
  AN_DiskCopy             = $32000000;

  { *
    * toolkit for Intuition
    * }
const
  AN_GadTools             = $33000000;

  { *
    * System utility library
    * }
const
  AN_UtilityLib           = $34000000;

  { *
    * For use by any application that needs it
    * }
const
  AN_Unknown              = $35000000;



{ * exec error definitions (V50)
  *********************************************************************
  * }


const
  IOERR_OPENFAIL      = (-1);
  IOERR_ABORTED       = (-2);
  IOERR_NOCMD         = (-3);
  IOERR_BADLENGTH     = (-4);
  IOERR_BADADDRESS    = (-5);
  IOERR_UNITBUSY      = (-6);
  IOERR_SELFTEST      = (-7);
  IOERR_NOMEMORY      = (-8);



{ * exec resident definitions (V50)
  *********************************************************************
  * }


type
  PResident = ^TResident;
  TResident = packed record
    rt_MatchWord: Word;
    rt_MatchTag : PResident;
    rt_EndSkip  : Pointer;
    rt_Flags    : Byte;
    rt_Version  : Byte;
    rt_Type     : Byte;
    rt_Pri      : Byte;
    rt_Name     : PChar;
    rt_IdString : PChar;
    rt_Init     : Pointer;
    { * Only valid when RTF_EXTENDED is set
      * }
    rt_Revision : Word; { * Revision Entry * }
    rt_Tags     : Pointer;
  end;


const
  RTC_MATCHWORD = $4AFC;

  RTF_AUTOINIT   = (1 Shl 7);
  RTF_EXTENDED   = (1 Shl 6);   { * structure extension is valid * }
  { * rt_Init points to a PPC function which must be defined as
    *
    * struct Library* LIB_Init(struct Library  *MyLibBase,
    *                          BPTR             SegList,
    *                          struct ExecBase *SysBase)
    * }
  RTF_PPC        = (1 Shl 3);
  RTF_AFTERDOS   = (1 Shl 2);
  RTF_SINGLETASK = (1 Shl 1);
  RTF_COLDSTART  = (1 Shl 0);

  RTW_NEVER      = 0;
  RTW_COLDSTART  = 1;



{ * exec memory definitions (V50)
  *********************************************************************
  * }


type
  PMemChunk = ^TMemChunk;
  TMemChunk = packed record
    mc_Next : PMemChunk;
    mc_Bytes: DWord;
  end;

type
  PMemHeader = ^TMemHeader;
  TMemHeader = packed record
    mh_Node      : TNode;
    mh_Attributes: Word;
    mh_First     : PMemChunk;
    mh_Lower     : Pointer;
    mh_Upper     : Pointer;
    mh_Free      : DWord;
  end;

type
  PMemEntry = ^TMemEntry;
  TMemEntry = packed record
    me_Un: packed record
    case Byte of
      0 : (meu_Reqs: DWord);
      1 : (meu_Addr: Pointer)
    end;
    me_Length: DWord;
  end;

type
  PMemList = ^TMemList;
  TMemList = packed record
    ml_Node      : TNode;
    ml_NumEntries: Word;
    ml_ME        : array [0..0] of TMemEntry;
  end;


const
  MEMF_ANY           = 0;
  MEMF_PUBLIC        = (1 Shl 0);
  MEMF_CHIP          = (1 Shl 1);
  MEMF_FAST          = (1 Shl 2);
  MEMF_LOCAL         = (1 Shl 8);
  MEMF_24BITDMA      = (1 Shl 9);
  MEMF_KICK          = (1 Shl 10);
  MEMF_SWAP          = (1 Shl 11); { * Memory that can be swapped out to disk * }

  MEMF_CLEAR         = (1 Shl 16);
  MEMF_LARGEST       = (1 Shl 17);
  MEMF_REVERSE       = (1 Shl 18);
  MEMF_TOTAL         = (1 Shl 19);
  MEMF_SEM_PROTECTED = (1 Shl 20); { * Pools: semaphore protection * }
  MEMF_NO_EXPUNGE    = (1 Shl 31);

  MEM_BLOCKSIZE      = 8;
  MEM_BLOCKMASK      = (MEM_BLOCKSIZE - 1);


type
  PMemHandlerData = ^TMemHandlerData;
  TMemHandlerData = packed record
    memh_RequestSize : DWord;
    memh_RequestFlags: DWord;
    memh_Flags       : DWord;
  end;


const
  MEMHF_RECYCLE   = (1 Shl 0);

  MEM_DID_NOTHING = 0;
  MEM_ALL_DONE    = -1;
  MEM_TRY_AGAIN   = 1;



{ * exec port definitions (V50)
  *********************************************************************
  * }


type
  PMsgPort = ^TMsgPort;
  TMsgPort = packed record
    mp_Node   : TNode;
    mp_Flags  : Byte;
    mp_SigBit : Byte;
    mp_SigTask: Pointer;
    mp_MsgList: TList;
  end;


const
  PF_ACTION  = 3;
  PA_SIGNAL  = 0;
  PA_SOFTINT = 1;
  PA_IGNORE  = 2;


type
  PMessage = ^TMessage;
  TMessage = packed record
    mn_Node     : TNode;
    mn_ReplyPort: PMsgPort;
    mn_Length   : Word;
  end;



{ * exec task definitions (V50)
  *********************************************************************
  * }


type
  PTask = ^TTask;
  TTask = packed record
    tc_Node     : TNode;
    tc_Flags    : Byte;
    tc_State    : Byte;
    tc_IDNestCnt: ShortInt;
    tc_TDNestCnt: ShortInt;
    tc_SigAlloc : DWord;
    tc_SigWait  : DWord;
    tc_SigRecvd : DWord;
    tc_SigExcept: DWord;
    {$IF 0}
      tc_TrapAlloc: Word;
      tc_TrapAble : Word;
    {$ELSE}
      tc_ETask: Pointer;
    {$ENDIF}
    tc_ExceptData: Pointer;
    tc_ExceptCode: Pointer;
    tc_TrapData  : Pointer;
    tc_TrapCode  : Pointer;
    tc_SPReg     : Pointer;
    tc_SPLower   : Pointer;
    tc_SPUpper   : Pointer;
    tc_Switch    : Pointer; { *** OBSOLETE *** }
    tc_Launch    : Pointer; { *** OBSOLETE *** }
    tc_MemEntry  : TList;
    tc_UserData  : Pointer;
  end;


const
  TB_PROCTIME = 0;
  TB_ETASK    = 3;
  TB_STACKCHK = 4;
  TB_EXCEPT   = 5;
  TB_SWITCH   = 6;
  TB_LAUNCH   = 7;

  TF_PROCTIME = (1 Shl TB_PROCTIME);
  TF_ETASK    = (1 Shl TB_ETASK);
  TF_STACKCHK = (1 Shl TB_STACKCHK);
  TF_EXCEPT   = (1 Shl TB_EXCEPT);
  TF_SWITCH   = (1 Shl TB_SWITCH);
  TF_LAUNCH   = (1 Shl TB_LAUNCH);

  TS_INVALID  = 0;
  TS_ADDED    = 1;
  TS_RUN      = 2;
  TS_READY    = 3;
  TS_WAIT     = 4;
  TS_EXCEPT   = 5;
  TS_REMOVED  = 6;

  SIGB_ABORT     = 0;
  SIGB_CHILD     = 1;
  SIGB_BLIT      = 4;
  SIGB_SINGLE    = 4;
  SIGB_INTUITION = 5;
  SIGB_NET       = 7;
  SIGB_DOS       = 8;

  SIGF_ABORT      = (1 Shl SIGB_ABORT);
  SIGF_CHILD      = (1 Shl SIGB_CHILD);
  SIGF_BLIT       = (1 Shl SIGB_BLIT);
  SIGF_SINGLE     = (1 Shl SIGB_SINGLE);
  SIGF_INTUITION  = (1 Shl SIGB_INTUITION);
  SIGF_NET        = (1 Shl SIGB_NET);
  SIGF_DOS        = (1 Shl SIGB_DOS);


type
  PTaskTrapMessage = ^TTaskTrapMessage;
  TTaskTrapMessage = packed record
    Message: TMessage;    { * Message Header * }
    Task   : TTask;       { * connected Task * }
    Version: DWord;       { * version of the structure * }
    TType   : DWord;      { * Exception Type * }
    DAR    : DWord;       { * Exception Address Register * }
    DSISR  : DWord;       { * Exception DSISR Reg * }

    { * This is undiscovered land...
      * never assume a size of this structure
      * }
  end;


const
  VERSION_TASKTRAPMESSAGE = $0;


type
  PETask = ^TETask;
  TETask = packed record
    Message  : TMessage;
    Parent   : PTask;
    UniqueID : DWord;
    Children : TMinList;
    TrapAlloc: Word;
    TrapAble : Word;
    Result1  : DWord;
    Result2  : Pointer;
    MsgPort  : TMsgPort;

    { * Don't touch!!!!!!!!!..there'll be an interface
      * sooner than later.
      * New Entries...most of the above entries
      * are only their for structure compatability.
      * They have no meaning as the OS never supported
      * them.
      * }

    { * A Task Pool for the task.
      * }
    MemPool: Pointer;

    { * PPC's Stack Lower Ptr
      * The initial stack is allocated through
      * AllocVec, so a FreeVec(ETask^.PPCSPLower);
      * would work.
      * If you use PPCStackSwap you must allocate
      * your stack block with AllocVec();
      * }
    PPCSPLower: Pointer;

    { * PPC's Stack Upper Ptr
      * }
    PPCSPUpper : Pointer;
    PPCRegFrame: Pointer;
    PPCLibData : Pointer;

    { * On a PPC exception this msgport
      * is sent an exception msg...
      * the task is stopped until somebody
      * wakes it up again.
      * (asynchron exception interface)
      * If this Port is NULL the message is
      * sent to SysBase->ex_PPCTrapMsgPort.
      * }
    PPCTrapMsgPort: PMsgPort;
    PPCTrapMessage: PTaskTrapMessage;

    { * This is undiscovered land...
      * never assume a size of this structure
      * }
  end;


type
  PTaskInitExtension = ^TTaskInitExtension;
  TTaskInitExtension = packed record
    { * Must be filled with TRAP_PPCTASK
      * }
    Trap     : Word;
    Extension: Word; { * Must be set to 0 * }
    Tags     : Pointer;
  end;

{ * This is normally in utility headers, but in Pascal that would
  * cause a circular dependency, so have it duplicated here... (KB) }
const
  TAG_USER   = 1 Shl 31;

const
  TASKTAG_DUMMY          = (TAG_USER + $100000);

  { * Ptr to an ULONG Errorfield where a better error description
    * can be stored.
    * }
  TASKTAG_ERROR          = (TASKTAG_DUMMY + $0);

  { * Code type
    * can be stored.
    * }
  TASKTAG_CODETYPE       = (TASKTAG_DUMMY + $1);

  { * Start PC
    * code must be of TASKTAG_CODETYPE
    * }
  TASKTAG_PC             = (TASKTAG_DUMMY + $2);

  { * Final PC
    * code must be of TASKTAG_CODETYPE
    * }
  TASKTAG_FINALPC        = (TASKTAG_DUMMY + $3);

  { * Stacksize...Default 8192
    * }
  TASKTAG_STACKSIZE      = (TASKTAG_DUMMY + $4);

  { * Std Stacksize...
    * Default(use the stack defined by tc_SPLower..tc_SPUpper)
    * }
  TASKTAG_STACKSIZE_M68K = (TASKTAG_DUMMY + $5);

  { * specify task name, name is copied
    * }
  TASKTAG_NAME           = (TASKTAG_DUMMY + $6);

  { * tc_UserData
    * }
  TASKTAG_USERDATA       = (TASKTAG_DUMMY + $7);

  { * Task priority
    * }
  TASKTAG_PRI            = (TASKTAG_DUMMY + $8);

  { * Pool's Puddlesize
    * }
  TASKTAG_POOLPUDDLE     = (TASKTAG_DUMMY + $9);

  { * Pool's ThreshSize
    * }
  TASKTAG_POOLTHRESH     = (TASKTAG_DUMMY + $a);

  { * PPC First Argument..gpr3
    * }
  TASKTAG_PPC_ARG1       = (TASKTAG_DUMMY + $10);

  { * PPC First Argument..gpr4
    * }
  TASKTAG_PPC_ARG2       = (TASKTAG_DUMMY + $11);

  { * PPC First Argument..gpr5
    * }
  TASKTAG_PPC_ARG3       = (TASKTAG_DUMMY + $12);

  { * PPC First Argument..gpr6
    * }
  TASKTAG_PPC_ARG4       = (TASKTAG_DUMMY + $13);

  { * PPC First Argument..gpr7
    * }
  TASKTAG_PPC_ARG5       = (TASKTAG_DUMMY + $14);

  { * PPC First Argument..gpr8
    * }
  TASKTAG_PPC_ARG6       = (TASKTAG_DUMMY + $15);

  { * PPC First Argument..gpr9
    * }
  TASKTAG_PPC_ARG7       = (TASKTAG_DUMMY + $16);

  { * PPC First Argument..gpr10
    * }
  TASKTAG_PPC_ARG8       = (TASKTAG_DUMMY + $17);

  { *
    * Startup message to be passed to task/process, ReplyMsg'd at RemTask()
    * ti_Data: struct Message *
    * }
  TASKTAG_STARTUPMSG     = (TASKTAG_DUMMY + $18);

  { *
    * Create internal MsgPort for task/process, deleted at RemTask()
    * ti_Data: struct MsgPort **, can be NULL
    * }
  TASKTAG_TASKMSGPORT    = (TASKTAG_DUMMY + $19);


const
  CODETYPE_M68K = $0;
  { *
    * System V4 ABI
    * }
  CODETYPE_PPC  = $1;

const
  TASKERROR_OK       = 0;
  TASKERROR_NOMEMORY = 1;


  { *
    * Stack swap structure as passed to StackSwap() and PPCStackSwap()
    * }
type
  PStackSwapStruct = ^TStackSwapStruct;
  TStackSwapStruct = packed record
    stk_Lower  : Pointer; { * Lowest byte of stack * }
    stk_Upper  : Pointer; { * Upper end of stack (size + Lowert) * }
    stk_Pointer: Pointer; { * Stack pointer at switch point * }
  end;

type
  PPPCStackSwapArgs = ^TPPCStackSwapArgs;
  TPPCStackSwapArgs = packed record
    Args: Array[0..7] Of DWord; { * The C register arguments from gpr3..gpr11 * }
  end;


  { *
    * NewGetTaskAttrsA(),  NewSetTaskAttrsA() tags
    * }
const
  TASKINFOTYPE_ALLTASK            = $0;
  TASKINFOTYPE_NAME               = $1;
  TASKINFOTYPE_PRI                = $2;
  TASKINFOTYPE_TYPE               = $3;
  TASKINFOTYPE_STATE              = $4;
  TASKINFOTYPE_FLAGS              = $5;
  TASKINFOTYPE_SIGALLOC           = $6;
  TASKINFOTYPE_SIGWAIT            = $7;
  TASKINFOTYPE_SIGRECVD           = $8;
  TASKINFOTYPE_SIGEXCEPT          = $9;
  TASKINFOTYPE_EXCEPTDATA         = $a;
  TASKINFOTYPE_EXCEPTCODE         = $b;
  TASKINFOTYPE_TRAPDATA           = $c;
  TASKINFOTYPE_TRAPCODE           = $d;
  TASKINFOTYPE_STACKSIZE_M68K     = $e;
  TASKINFOTYPE_STACKSIZE          = $f;
  TASKINFOTYPE_USEDSTACKSIZE_M68K = $10;
  TASKINFOTYPE_USEDSTACKSIZE      = $11;
  TASKINFOTYPE_TRAPMSGPORT        = $12;
  TASKINFOTYPE_STARTUPMSG         = $13;
  TASKINFOTYPE_TASKMSGPORT        = $14;
  TASKINFOTYPE_POOLPTR            = $15;
  TASKINFOTYPE_POOLMEMFLAGS       = $16;
  TASKINFOTYPE_POOLPUDDLESIZE     = $17;
  TASKINFOTYPE_POOLTHRESHSIZE     = $18;

  { *
    * Task Scheduler statistics (exec 50.42)
    * }
  TASKINFOTYPE_NICE                  = $19;
  TASKINFOTYPE_AGETICKS              = $1a;
  TASKINFOTYPE_CPUTIME               = $1b;
  TASKINFOTYPE_LASTSECCPUTIME        = $1c;
  TASKINFOTYPE_RECENTCPUTIME         = $1d;
  TASKINFOTYPE_VOLUNTARYCSW          = $1e;
  TASKINFOTYPE_INVOLUNTARYCSW        = $1f;
  TASKINFOTYPE_LASTSECVOLUNTARYCSW   = $20;
  TASKINFOTYPE_LASTSECINVOLUNTARYCSW = $21;
  { * Added in exec 50.45 * }
  TASKINFOTYPE_LAUNCHTIMETICKS       = $22;
  TASKINFOTYPE_LAUNCHTIMETICKS1978   = $23;
  TASKINFOTYPE_PID                   = $24;

  TASKINFOTYPE_68K_NEWFRAME  = $50;

  TASKINFOTYPE_PPC_SRR0      = $100;
  TASKINFOTYPE_PPC_SRR1      = $101;
  TASKINFOTYPE_PPC_LR        = $102;
  TASKINFOTYPE_PPC_CTR       = $103;
  TASKINFOTYPE_PPC_CR        = $104;
  TASKINFOTYPE_PPC_XER       = $105;
  TASKINFOTYPE_PPC_GPR       = $106;
  TASKINFOTYPE_PPC_FPR       = $107;
  TASKINFOTYPE_PPC_FPSCR     = $108;
  TASKINFOTYPE_PPC_VSCR      = $109;
  TASKINFOTYPE_PPC_VMX       = $10a;
  TASKINFOTYPE_PPC_VSAVE     = $10b;
  TASKINFOTYPE_PPC_FRAME     = $10c;
  TASKINFOTYPE_PPC_FRAMESIZE = $10d;
  TASKINFOTYPE_PPC_NEWFRAME  = $10e;

  TASKINFOTAG_DUMMY       = (TAG_USER + $110000);
  { * Used with TASKINFOTYPE_ALLTASK
    * }
  TASKINFOTAG_HOOK        = (TASKINFOTAG_DUMMY + $0);
  { * Used with TASKINFOTYPE_PPC_GPR,TASKINFOTYPE_PPC_FPR,TASKINFOTYPE_PPC_VMX
    * to define the copy area
    * }
  TASKINFOTAG_REGSTART    = (TASKINFOTAG_DUMMY + $1);
  { * Used with TASKINFOTYPE_PPC_GPR,TASKINFOTYPE_PPC_FPR,TASKINFOTYPE_PPC_VMX
    * to define the copy area
    * }
  TASKINFOTAG_REGCOUNT    = (TASKINFOTAG_DUMMY + $2);


  { *
    * NewSetTaskAttrsA(..,@TaskFrame68k,sizeof(TTaskFrame68k),TASKINFOTYPE_68K_NEWFRAME,...);
    * }
type
  PTaskFrame68k = ^TTaskFrame68k;
  TTaskFrame68k = packed record
    PC: Pointer;
    SR: Word;
    Xn: Array[0..14] Of LongInt;
  end;


  { *
    * Don't depend on these
    * }
const
  DEFAULT_PPCSTACKSIZE   = 32768;
  DEFAULT_M68KSTACKSIZE  =  2048;
  DEFAULT_TASKPUDDLESIZE =  4096;
  DEFAULT_TASKTHRESHSIZE =  4096;


{ * exec interrupt definitions (V50)
  *********************************************************************
  * }


type
  PInterrupt = ^TInterrupt;
  TInterrupt = packed record
    is_Node: TNode;
    is_Data: Pointer;
    is_Code: Pointer;
  end;

type
  PIntVector = ^TIntVector;
  TIntVector = packed record
    iv_Data: Pointer;
    iv_Code: Pointer;
    iv_Node: PNode;
  end;

type
  PSoftIntList = ^TSoftIntList;
  TSoftIntList = packed record
    sh_List: TList;
    sh_Pad : Word;
  end;


const
  SIH_PRIMASK = $f0;

  INTB_NMI = 15;
  INTF_NMI = (1 Shl INTB_NMI);



{ * exec semaphore definitions (V50)
  *********************************************************************
  * }


  { *
    * Shouldn't be available public..
    * }
type
  PSemaphoreRequest = ^TSemaphoreRequest;
  TSemaphoreRequest = packed record
    sr_Link  : TMinNode;
    sr_Waiter: PTask;
  end;

type
  PSignalSemaphore = ^TSignalSemaphore;
  TSignalSemaphore = packed record
    ss_Link        : TNode;
    ss_NestCount   : SmallInt;
    ss_WaitQueue   : TMinList;
    ss_MultipleLink: TSemaphoreRequest;
    ss_Owner       : PTask;
    ss_QueueCount  : SmallInt;
  end;

type
  PSemaphoreMessage = ^TSemaphoreMessage;
  TSemaphoreMessage = packed record
    ssm_Message  : TMessage;
    ssm_Semaphore: PSignalSemaphore;
  end;


const
  SM_SHARED    = 1;
  SM_EXCLUSIVE = 0;



{ * exec machine definitions (V50)
  *********************************************************************
  * }


const
  MACHINE_M68k  = $0;
  MACHINE_PPC   = $1;
  MACHINE_NO    = $ffffffff;



{ * exec library definitions (V50)
  *********************************************************************
  * }


const
  LIB_VECTSIZE  = 6;
  LIB_RESERVED  = 4;
  LIB_BASE      = (-LIB_VECTSIZE);
  LIB_USERDEF   = (LIB_BASE - (LIB_RESERVED * LIB_VECTSIZE));
  LIB_NONSTD    = (LIB_USERDEF);

  LIB_OPEN         = -6;
  LIB_CLOSE        = -12;
  LIB_EXPUNGE      = -18;
  LIB_EXTFUNC      = -24;
  LIB_GETQUERYATTR = -24; { * LIBF_QUERY * }


type
  PLibrary = ^TLibrary;
  TLibrary = packed record
    lib_Node    : TNode;
    lib_Flags   : Byte;
    lib_pad     : Byte;
    lib_MegSize : Word;
    lib_PosSize : Word;
    lib_Version : Word;
    lib_Revision: Word;
    lib_IdString: PChar;
    lib_Sum     : DWord;
    lib_OpenCnt : Word;
  end;


const
  LIBF_SUMMING   = (1 Shl 0);
  LIBF_CHANGED   = (1 Shl 1);
  LIBF_SUMUSED   = (1 Shl 2);
  LIBF_DELEXP    = (1 Shl 3);
  { *
    * private
    * }
  LIBF_RAMLIB    = (1 Shl 4);
  { *
    * Needs to be set if the GetQueryAttr function is legal
    * }
  LIBF_QUERYINFO = (1 Shl 5);
  { *
    * The remaining bits are reserved and aren`t allowed to be touched
    * }


  { * NewSetFunction extensions
    * }
const
  SETFUNCTAG_Dummy    = (TAG_USER +$01000000);

  { * Set the machine type of the function
    * Default is 68k
    * }
  SETFUNCTAG_MACHINE  = (SETFUNCTAG_Dummy + $1);

  { * Function type specifier
    * }
  SETFUNCTAG_TYPE     = (SETFUNCTAG_Dummy + $2);

  { * ID String
    * }
  SETFUNCTAG_IDNAME   = (SETFUNCTAG_Dummy + $3);

  { *
    * Set to TRUE if the replaced function will never be used
    * again.
    * }
  SETFUNCTAG_DELETE   = (SETFUNCTAG_Dummy + $4);


  { * See emul/emulinterface.h for more informations
    * }

  { * Save Emulation PPC Registers
    * Call Function
    * Restore Emulation PPC Registers
    * REG_D0 = Result
    * }
const
  SETFUNCTYPE_NORMAL           = 0;
  { * Call Function
    * Must use the global register settings of the emulation
    * REG_D0 = Result
    * }
  SETFUNCTYPE_QUICK            = 1;
  { * Save Emulation PPC Registers
    * Call Function
    * Restore Emulation PPC Registers
    * No Result
    * Needed to replace functions like
    * forbid,obtainsemaphores which are
    * defined as trashing no registers
    * }
  SETFUNCTYPE_NORMALNR         = 2;
  { * Call Function
    * Must use the global register settings of the emulation
    * No Result
    * Needed to replace functions like
    * forbid,obtainsemaphores which are
    * defined as trashing no registers
    * }
  SETFUNCTYPE_QUICKNR          = 3;
  SETFUNCTYPE_NORMALSR         = 4;
  SETFUNCTYPE_NORMALSRNR       = 5;
  SETFUNCTYPE_NORMALD0_D1      = 6;
  SETFUNCTYPE_NORMALRESTORE    = 7;
  SETFUNCTYPE_SYSTEMV          = 8;
  SETFUNCTYPE_NORMALD0D1SR     = 9;
  SETFUNCTYPE_NORMALD0D1A0A1SR = 10;


  { * CreateLibrary extensions
    * }
  LIBTAG_BASE         = (TAG_USER + $01000100);

  { *
    * Function/Vector Array
    * }
  LIBTAG_FUNCTIONINIT = (LIBTAG_BASE+$0);
  { *
    * Struct Init
    * }
  LIBTAG_STRUCTINIT   = (LIBTAG_BASE+$1);
  { *
    * Library Init
    * }
  LIBTAG_LIBRARYINIT  = (LIBTAG_BASE+$2);
  { *
    * Init Code Type
    * }
  LIBTAG_MACHINE      = (LIBTAG_BASE+$3);
  { *
    * Library Base Size
    * }
  LIBTAG_BASESIZE     = (LIBTAG_BASE+$4);
  { *
    * SegList Ptr
    * }
  LIBTAG_SEGLIST      = (LIBTAG_BASE+$5);
  { *
    * Library Priority
    * }
  LIBTAG_PRI          = (LIBTAG_BASE+$6);
  { *
    * Library Type..Library,Device,Resource,whatever
    * }
  LIBTAG_TYPE         = (LIBTAG_BASE+$7);
  { *
    * Library Version
    * (UWORD)
    * }
  LIBTAG_VERSION      = (LIBTAG_BASE+$8);
  { *
    * Library Flags
    * }
  LIBTAG_FLAGS        = (LIBTAG_BASE+$9);
  { *
    * Library Name
    * }
  LIBTAG_NAME         = (LIBTAG_BASE+$a);
  { *
    * Library IDString
    * }
  LIBTAG_IDSTRING     = (LIBTAG_BASE+$b);
  { *
    * AddDevice(),AddLibrary(),AddResource()..
    * depends on LibNode.ln_Type field which
    * can be set by some Init function, Struct Scripts
    * or LIBTAG_TYPE.
    * If you set LIBTAG_PUBLIC the library
    * is added to the right system list.
    * }
  LIBTAG_PUBLIC       = (LIBTAG_BASE+$c);
  { *
    * Library Revision
    * (UWORD)
    * }
  LIBTAG_REVISION     = (LIBTAG_BASE+$d);
  { *
    * Library QueryInfo Flag
    * (Boolean)
    * }
  LIBTAG_QUERYINFO    = (LIBTAG_BASE+$e);

  { * Private
    * don`t touch...floating design
    * }
type
  PFuncEntry = ^TFuncEntry;
  TFuncEntry = packed record
    EmulLibEntry : TEmulLibEntry;
    OldFunction  : Pointer;  { * Needed for bookkeeping * }
  end;

  PFuncOldEntry = ^TFuncOldEntry;
  TFuncOldEntry = packed record
    Command  : Word;
    FuncEntry: PFuncEntry;
  end;


  { *
    * EmulLibEntry.Extension
    * }
const
  FUNCENTRYEXTF_LIBRARY          = $1; { * Entry created by the OS * }

  { *
    * Functionarray first ULONG ID defines the format
    * of the functionarray for MakeFunctions()/MakeLibrary().
    *
    * If there`s not such id the functionarray is a
    * 32Bit 68k function ptr array.
    * (ULONG) $ffffffff stops it
    * }

  { * 68k 16bit relative functionarray ptrs
    * (UWORD) $ffff stops it
    * }

  FUNCARRAY_16BIT_OLD             = $ffffffff;

  { * PPC 32bit functionarray ptrs
    * (ULONG) $ffff stops it
    * }
  FUNCARRAY_32BIT_NATIVE          = $fffefffe;

  { * Starts a functionarray block.
    * This way it`s possible to mix 68k and PPC
    * function definitions.
    * BASE:
    *  FUNCTIONARRAY_BEGIN
    *   FUNCARRAY_32BIT_NATIVE
    *    FUNC0
    *    FUNC1
    *    .
    *    FUNCn
    *    $ffffffff
    *   FUNCn+1  (No ID->32Bit 68k)
    *    FUNCn+2
    *    .
    *    FUNCm
    *    $ffffffff
    *   FUNCARRAY_16BIT_OLD
    *    FUNCm+1-BASE
    *    FUNCm+2-BASE
    *    .
    *    FUNCo-BASE
    *    $ffff
    *  FUNCTIONARRAY_END
    * }

  FUNCARRAY_BEGIN                = $fffdfffd;

  { * Ends a functionarray block.
    * }
  FUNCARRAY_END                  = $fffcfffc;

  { * PPC 32bit Quick functionarray ptrs.
    * These functions must comply to the emulation's
    * register layout which is defined inside the
    * emul/emulregs.h. That means the register layout
    * MUST also be valid during interrupts/task switches.
    * You can't just destroy A7(r31), SR or PC.
    *
    * You shouldn't use this for any normal code
    * as there's no real reason to do so. If you
    * really think you need to use it please ask
    * us first on the dev mailinglist.
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_QUICK_NATIVE   = $fffbfffb;

  { * PPC 32bit QuickNR(No Result) functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_QUICKNR_NATIVE = $fffafffa;

  { * PPC 32bit no result functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_NR_NATIVE      = $fff9fff9;

  { * PPC 32bit SR functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_SR_NATIVE      = $fff8fff8;

  { * PPC 32bit SR(no result) functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_SRNR_NATIVE    = $fff7fff7;

  { * PPC 32bit D0_D1 functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_D0D1_NATIVE    = $fff6fff6;

  { * PPC 32bit Restore1 functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_RESTORE_NATIVE = $fff5fff5;

  { * PPC 32bit SystemV ABI entry
    * these function entries DON'T comply
    * to the amiga register modell REG_D0-A6
    * but comply to the PPC SystemV ABI so
    * you can directly use PPC C Argument
    * parsing. That way you're also not limited
    * with the register count.
    * Such library functions can't be used
    * by 68k emulation, so you can only use
    * them for new code.
    * As we allow these new functions to be
    * used with old functions we keep the
    * 6 bytes function entry steps in the library.
    * Layout is
    *
    * CODE_JMP, &FuncEntry ; Old Entry
    * CODE_ILLEGAL, Function ; SystemV ABI Entry
    *
    *
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_SYSTEMV       = $fff4fff4;

  { * PPC 32bit D0D1SR functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_D0D1SR_NATIVE    = $fff3fff3;

  { * PPC 32bit D0D1A0A1SR functionarray ptrs
    * (ULONG) $ffffffff stops it
    * }
  FUNCARRAY_32BIT_D0D1A0A1SR_NATIVE    = $fff2fff2;



{ * exec device definitions (V50)
  *********************************************************************
  * }


type
  PDevice = ^TDevice;
  TDevice = packed record
    dd_Library: TLibrary;
  end;

type
  PUnit = ^TUnit;
  TUnit = packed record
    unit_MsgPort: TMsgPort;
    unit_flags  : Byte;
    unit_pad    : Byte;
    unit_OpenCnt: Word;
  end;


const
  UNITF_ACTIVE = (1 Shl 0);
  UNITF_INTASK = (1 Shl 1);



{ * exec io definitions (V50)
  *********************************************************************
  * }


type
  PIORequest = ^TIORequest;
  TIORequest = packed record
    io_Message: TMessage;
    io_Device : PDevice;
    io_Unit   : PUnit;
    io_Command: Word;
    io_Flags  : Byte;
    io_Error  : ShortInt;
  end;

type
  PIOStdReq = ^TIOStdReq;
  TIOStdReq = packed record
    io_Message: TMessage;
    io_Device : PDevice;
    io_Unit   : PUnit;
    io_Command: Word;
    io_Flags  : Byte;
    io_Error  : ShortInt;
    io_Actual : DWord;
    io_Length : DWord;
    io_Data   : Pointer;
    io_Offset : DWord;
  end;


const
  DEV_BEGINIO  = -30;
  DEV_ABORTIO  = -36;

  IOB_QUICK  = 0;
  IOF_QUICK  = (1 Shl IOB_QUICK);

  CMD_INVALID = 0;
  CMD_RESET   = 1;
  CMD_READ    = 2;
  CMD_WRITE   = 3;
  CMD_UPDATE  = 4;
  CMD_CLEAR   = 5;
  CMD_STOP    = 6;
  CMD_START   = 7;
  CMD_FLUSH   = 8;
  CMD_NONSTD  = 9;



{ * exec include (V50)
  *********************************************************************
  * }


type
  PExecBase = ^TExecBase;
  TExecBase = packed record
    LIbNode     : TLibrary;
    SoftVer     : Word;
    LowMemChkSum: SmallInt;
    ChkBase     : DWord;
    ColdCapture : Pointer;
    CoolCapture : Pointer;
    WarmCapture : Pointer;
    SysStkUpper : Pointer;
    SysStkLower : Pointer;
    MaxLocMem   : DWord;
    DebugEntry  : Pointer;
    DebugData   : Pointer;
    AlertData   : Pointer;
    MaxExtMem   : Pointer;
    ChkSum      : Word;
    IntVects    : Array[0..15] Of TIntVector;
    ThisTask    : PTask;
    IdleCount   : DWord;
    DispCount   : DWord;
    Quantum     : Word;
    Elapsed     : Word;
    SysFlags    : Word;
    IDNestCnt   : ShortInt;
    TDNestCnt   : ShortInt;
    AttnFlags   : Word;
    AttnResched : Word;
    ResModules  : Pointer;

    TaskTrapCode  : Pointer;
    TaskExceptCode: Pointer;
    TaskExitCode  : Pointer;
    TaskSigAlloc  : DWord;
    TaskTrapAlloc : Word;

    MemList     : TList;
    ResourceList: TList;
    DeviceList  : TList;
    IntrList    : TList;
    LibList     : TList;
    PortList    : TList;
    TaskReady   : TList;
    TaskWait    : TList;
    SoftInts    : Array[0..5] Of TSoftIntList;
    LastAlert   : Array[0..3] Of LongInt;

    VBlankFrequency     : Byte;
    PowerSupplyFrequency: Byte;
    SemaphoreList       : TList;
    KickMemPtr          : Pointer;
    KickTagPtr          : Pointer;
    KickCheckSum        : Pointer;
    ex_Pad0             : Word;
    ex_LaunchPoint      : DWord;
    ex_RamLibPrivate    : Pointer;
    ex_EClockFrequency  : DWord;
    ex_CacheControl     : DWord;
    ex_TaskID           : DWord;

    { * New ABox Emulation Entries
      * }
    ex_EmulHandleSize    : DWord;    { * PPC EmulHandleSize..*private* * }
    ex_PPCTrapMsgPort    : PMsgPort; { * PPC ABox Exception MsgPort..*private* * }
    ex_Reserved1         : Array[0..2] Of DWord;
    ex_MMULock           : Pointer;
    ex_PatchPool         : Pointer;  { * PatchPool Ptr needed by SetFunction..*private* * }
    ex_PPCTaskExitCode   : Pointer;  { * PPC Task exit function * }
    ex_DebugFlags        : DWord;    { * Exec Debug Flags..*private* * }

    ex_MemHandlers       : TMinList;
    ex_MemHandler        : Pointer;
  end;


  { *
    * Outdated 68k cpu informations
    *
    * }
const
  AFB_68010   = 0;
  AFB_68020   = 1;
  AFB_68030   = 2;
  AFB_68040   = 3;
  AFB_68881   = 4;
  AFB_68882   = 5;
  AFB_FPU40   = 6;
  AFB_68060   = 7;
  AFB_PRIVATE = 15;

  AFF_68010   = (1 Shl AFB_68010);
  AFF_68020   = (1 Shl AFB_68020);
  AFF_68030   = (1 Shl AFB_68030);
  AFF_68040   = (1 Shl AFB_68040);
  AFF_68881   = (1 Shl AFB_68881);
  AFF_68882   = (1 Shl AFB_68882);
  AFF_FPU40   = (1 Shl AFB_FPU40);
  AFF_68060   = (1 Shl AFB_68060);
  AFF_PRIVATE = (1 Shl AFB_PRIVATE);

  { *
    * Outdated 68k cache functionality
    * Mostly without function.
    * }
const
  CACRF_EnableI       = (1 Shl 0);
  CACRF_FreezeI       = (1 Shl 1);
  CACRF_ClearI        = (1 Shl 3);
  CACRF_IBE           = (1 Shl 4);
  CACRF_EnableD       = (1 Shl 8);
  CACRF_FreezeD       = (1 Shl 9);
  CACRF_ClearD        = (1 Shl 11);
  CACRF_DBE           = (1 Shl 12);
  CACRF_WriteAllocate = (1 Shl 13);
  CACRF_EnableE       = (1 Shl 30);
  CACRF_CopyBack      = (1 Shl 31);

  DMA_Continue        = (1 Shl 1);
  DMA_NoModify        = (1 Shl 2);
  DMA_ReadFromRAM     = (1 Shl 3);

  SB_SAR  = 15;
  SB_TQE  = 14;
  SB_SINT = 13;

  SF_SAR  = (1 Shl SB_SAR);
  SF_TQE  = (1 Shl SB_TQE);
  SF_SINT = (1 Shl SB_SINT);


  { ****** Debug Flags...(don`t depend on them) ********** }
const
  EXECDEBUGF_INITRESIDENT     = $1;
  EXECDEBUGF_INITCODE         = $2;
  EXECDEBUGF_FINDRESIDENT     = $4;

  EXECDEBUGF_CREATELIBRARY    = $10;
  EXECDEBUGF_SETFUNCTION      = $20;
  EXECDEBUGF_NEWSETFUNCTION   = $40;
  EXECDEBUGF_CHIPRAM          = $80;

  EXECDEBUGF_ADDTASK          = $100;
  EXECDEBUGF_REMTASK          = $200;
  EXECDEBUGF_GETTASKATTR      = $400;
  EXECDEBUGF_SETTASKATTR      = $800;

  EXECDEBUGF_EXCEPTHANDLER    = $1000;
  EXECDEBUGF_ADDDOSNODE       = $2000;
  EXECDEBUGF_PCI              = $4000;
  EXECDEBUGF_RAMLIB           = $8000;

  EXECDEBUGF_NOLOGSERVER      = $10000;
  EXECDEBUGF_NOLOGWINDOW      = $20000;

  { *
    * "env:MorphOS/LogPath" contains the logfile path,
    * If not specified it`s using "ram:.morphoslog"
    * }
  EXECDEBUGF_LOGFILE          = $40000;
  EXECDEBUGF_LOGKPRINTF       = $80000;

  { * Memory Tracking Flags
    * }
  EXECDEBUGF_PERMMEMTRACK     = $100000;
  EXECDEBUGF_MEMTRACK         = $200000;

  { * CyberGuardPPC Flags
    * }
  EXECDEBUGF_CYBERGUARDDEADLY = $400000;

  { * PPCLib Flags
    * }
  EXECDEBUGF_LOADSEG          = $01000000;
  EXECDEBUGF_UNLOADSEG        = $02000000;
  EXECDEBUGF_PPCSTART         = $04000000;

  { * UserFlags
    * }

  { *
    * Enables debug output for cybergraphx
    * }
const
  EXECDEBUGF_CGXDEBUG         = $08000000;

  { *
    * Should be used to control user LibInit/DevInit Debug output
    * }
  EXECDEBUGF_INIT             = $40000000;

  { *
    * Should be used to control logging
    * }
  EXECDEBUGF_LOG              = $80000000;

  { *
    * Execbase list IDs
    * }
  EXECLIST_DEVICE       = 0;
  EXECLIST_INTERRUPT    = 1;
  EXECLIST_LIBRARY      = 2;
  EXECLIST_MEMHANDLER   = 3;
  EXECLIST_MEMHEADER    = 4;
  EXECLIST_PORT         = 5;
  EXECLIST_RESOURCE     = 6;
  EXECLIST_SEMAPHORE    = 7;
  EXECLIST_TASK         = 8;


  { *
    * Execnotify hook message
    * }
type
  PExecNotifyMessage = ^TExecNotifyMessage;
  TExecNotifyMessage = packed record
    MType    : DWord;
    Flags    : DWord;
    Extra    : DWord;
    Extension: Pointer;
  end;


const
  EXECNOTIFYF_REMOVE = (1 Shl 0);  { * if clear, is ADD * }
  EXECNOTIFYF_POST   = (1 Shl 1);  { * if clear, is PRE * }


  { *
    * AddExecNodeTagList tags
    * }
const
  SAL_Dummy    = (TAG_USER + 1000);
  SAL_Type     = (SAL_Dummy + 1);
  SAL_Priority = (SAL_Dummy + 2);
  SAL_Name     = (SAL_Dummy + 3);


function Supervisor(userFunction: Pointer location 'a5'): Cardinal;
SysCall MOS_ExecBase 030;

procedure InitCode(startClass: Cardinal location 'd0';
                   version   : Cardinal location 'd1');
SysCall MOS_ExecBase 072;

procedure InitStruct(initTable: Pointer  location 'a1';
                     memory   : Pointer  location 'a2';
                     size     : Cardinal location 'd0');
SysCall MOS_ExecBase 078;

function MakeLibrary(funcInit  : Pointer  location 'a0';
                     structInit: Pointer  location 'a1';
                     libInit   : Pointer  location 'a2';
                     dataSize  : Cardinal location 'd0';
                     segList   : Cardinal location 'd1'): PLibrary;
SysCall MOS_ExecBase 084;

procedure MakeFunctions(target       : Pointer location 'a0';
                        functionArray: Pointer location 'a1';
                        funcDispBase : Pointer location 'a2');
SysCall MOS_ExecBase 090;

function FindResident(name: PChar location 'a1'): PResident;
SysCall MOS_ExecBase 096;

function InitResident(resident: PResident location 'a1';
                      segList : Cardinal  location 'd1'): Pointer;
SysCall MOS_ExecBase 102;

procedure Alert(alertNum: Cardinal location 'd7');
SysCall MOS_ExecBase 108;

procedure Debug(flags: Cardinal location 'd0');
SysCall MOS_ExecBase 114;

procedure Disable;
SysCall MOS_ExecBase 120;

procedure Enable;
SysCall MOS_ExecBase 126;

procedure Forbid;
SysCall MOS_ExecBase 132;

procedure Permit;
SysCall MOS_ExecBase 138;

function SetSR(newSR: Cardinal location 'd0';
               mask : Cardinal location 'd1'): Cardinal;
SysCall MOS_ExecBase 144;

function SuperState : Pointer;
SysCall MOS_ExecBase 150;

procedure UserState(sysStack: Pointer location 'd0');
SysCall MOS_ExecBase 156;

function SetIntVector(intNumber: LongInt    location 'd0';
                      interrupt: PInterrupt location 'a1'): PInterrupt;
SysCall MOS_ExecBase 162;

procedure AddIntServer(intNumber: LongInt    location 'd0';
                       interrupt: PInterrupt location 'a1');
SysCall MOS_ExecBase 168;

procedure RemIntServer(intNumber: LongInt    location 'd0';
                       interrupt: PInterrupt location 'a1');
SysCall MOS_ExecBase 174;

procedure Cause(interrupt: PInterrupt location 'a1');
SysCall MOS_ExecBase 180;

function Allocate(freeList: PMemHeader location 'a0';
                  byteSize: Cardinal   location 'd0'): Pointer;
SysCall MOS_ExecBase 186;

procedure Deallocate(freeList   : PMemHeader location 'a0';
                     memoryBlock: Pointer    location 'a1';
                     byteSize   : Cardinal   location 'd0');
SysCall MOS_ExecBase 192;

{ * Name changed to avoid conflict with heap manager... * }
function execAllocMem(byteSize    : Cardinal location 'd0';
                      requirements: Cardinal location 'd1'): Pointer;
SysCall MOS_ExecBase 198;

function AllocAbs(byteSize: Cardinal location 'd0';
                  location: Pointer  location 'a1'): Pointer;
SysCall MOS_ExecBase 204;

{ * Name changed to avoid conflict with heap manager... * }
procedure execFreeMem(memoryBlock: Pointer  location 'a1';
                      byteSize   : Cardinal location 'd0');
SysCall MOS_ExecBase 210;

function AvailMem(requirements: Cardinal location 'd1'): Cardinal;
SysCall MOS_ExecBase 216;

function AllocEntry(entry: PMemList location 'a0'): PMemList;
SysCall MOS_ExecBase 222;

procedure FreeEntry(entry: PMemList location 'a0');
SysCall MOS_ExecBase 228;

{ * Name changed to avoid conflict with other System unit call... * }
procedure execInsert(list: PList location 'a0';
                     node: PNode location 'a1';
                     pred: PNode location 'a2');
SysCall MOS_ExecBase 234;

procedure AddHead(list: PList location 'a0';
                  node: PNode location 'a1');
SysCall MOS_ExecBase 240;

procedure AddTail(list: PList location 'a0';
                  node: PNode location 'a1');
SysCall MOS_ExecBase 246;

procedure Remove(node: PNode location 'a1');
SysCall MOS_ExecBase 252;

function RemHead(list: PList location 'a0'): PNode;
SysCall MOS_ExecBase 258;

function RemTail(list: PList location 'a0'): PNode;
SysCall MOS_ExecBase 264;

procedure Enqueue(list: PList location 'a0';
                  node: PNode location 'a1');
SysCall MOS_ExecBase 270;

function FindName(list: PList location 'a0';
                  name: PChar location 'a1'): PNode;
SysCall MOS_ExecBase 276;

function AddTask(task   : PTask   location 'a1';
                 initPC : Pointer location 'a2';
                 finalPC: Pointer location 'a3'): Pointer;
SysCall MOS_ExecBase 282;

procedure RemTask(task: PTask location 'a1');
SysCall MOS_ExecBase 288;

function FindTask(name: PChar location 'a1'): PTask;
SysCall MOS_ExecBase 294;

function SetTaskPri(task    : PTask   location 'a1';
                    priority: LongInt location 'd0'): ShortInt;
SysCall MOS_ExecBase 300;

function SetSignal(newSignals: Cardinal location 'd0';
                   signalSet : Cardinal location 'd1'): Cardinal;
SysCall MOS_ExecBase 306;

function SetExcept(newSignals: Cardinal location 'd0';
                   signalSet : Cardinal location 'd1'): Cardinal;
SysCall MOS_ExecBase 312;

function Wait(signalSet: Cardinal location 'd0'): Cardinal;
SysCall MOS_ExecBase 318;

procedure Signal(task     : PTask    location 'a1';
                 signalSet: Cardinal location 'd0');
SysCall MOS_ExecBase 324;

function AllocSignal(signalNum: LongInt location 'd0'): ShortInt;
SysCall MOS_ExecBase 330;

procedure FreeSignal(signalNum: LongInt location 'd0');
SysCall MOS_ExecBase 336;

function AllocTrap(trapNum: LongInt location 'd0'): LongInt;
SysCall MOS_ExecBase 342;

procedure FreeTrap(trapNum: LongInt location 'd0');
SysCall MOS_ExecBase 348;

procedure AddPort(port: PMsgPort location 'a1');
SysCall MOS_ExecBase 354;

procedure RemPort(port: PMsgPort location 'a1');
SysCall MOS_ExecBase 360;

procedure PutMsg(port   : PMsgPort location 'a0';
                 message: PMessage location 'a1');
SysCall MOS_ExecBase 366;

function GetMsg(port: PMsgPort location 'a0'): PMessage;
SysCall MOS_ExecBase 372;

procedure ReplyMsg(message : PMessage location 'a1');
SysCall MOS_ExecBase 378;

function WaitPort(port: PMsgPort location 'a0'): PMessage;
SysCall MOS_ExecBase 384;

function FindPort(name: PChar location 'a1'): PMsgPort;
SysCall MOS_ExecBase 390;

procedure AddLibrary(libHandle: PLibrary location 'a1');
SysCall MOS_ExecBase 396;

procedure RemLibrary(libHandle: PLibrary location 'a1');
SysCall MOS_ExecBase 402;

function OldOpenLibrary(libName: PChar location 'a1'): PLibrary;
SysCall MOS_ExecBase 408;

procedure CloseLibrary(libHandle: PLibrary location 'a1');
SysCall MOS_ExecBase 414;

function SetFunction(libHandle  : PLibrary location 'a1';
                     funcOffset : LongInt  location 'a0';
                     newFunction: Pointer  location 'd0'): Pointer;
SysCall MOS_ExecBase 420;

procedure SumLibrary(libHandle: PLibrary location 'a1');
SysCall MOS_ExecBase 426;

procedure AddDevice(device: PDevice location 'a1');
SysCall MOS_ExecBase 432;

procedure RemDevice(device: PDevice location 'a1');
SysCall MOS_ExecBase 438;

function OpenDevice(devName  : PChar      location 'a0';
                    numunit  : Cardinal   location 'd0';
                    ioRequest: pIORequest location 'a1';
                    flags    : Cardinal   location 'd1'): ShortInt;
SysCall MOS_ExecBase 444;

procedure CloseDevice(ioRequest: PIORequest location 'a1');
SysCall MOS_ExecBase 450;

function DoIO(ioRequest: PIORequest location 'a1'): ShortInt;
SysCall MOS_ExecBase 456;

procedure SendIO(ioRequest: PIORequest location 'a1');
SysCall MOS_ExecBase 462;

function CheckIO(ioRequest: PIORequest location 'a1'): PIORequest;
SysCall MOS_ExecBase 468;

function WaitIO(ioRequest: PIORequest location 'a1'): ShortInt;
SysCall MOS_ExecBase 474;

procedure AbortIO(ioRequest: PIORequest location 'a1');
SysCall MOS_ExecBase 480;

procedure AddResource(resource: Pointer location 'a1');
SysCall MOS_ExecBase 486;

procedure RemResource(resource: Pointer location 'a1');
SysCall MOS_ExecBase 492;

function OpenResource(resName: PChar location 'a1'): Pointer;
SysCall MOS_ExecBase 498;

procedure RawIOInit;
SysCall MOS_ExecBase 504;

function RawMayGetChar: Char;
SysCall MOS_ExecBase 510;

procedure RawPutChar(d0arg: Char location 'd0');
SysCall MOS_ExecBase 516;

function RawDoFmt(formatString: PChar   location 'a0';
                  dataStream  : Pointer location 'a1';
                  putChProc   : Pointer location 'a2';
                  putChData   : Pointer location 'a3'): Pointer;
SysCall MOS_ExecBase 522;

function GetCC: Cardinal;
SysCall MOS_ExecBase 528;

function TypeOfMem(address: Pointer location 'a1'): Cardinal;
SysCall MOS_ExecBase 534;

function Procure(sigSem: PSignalSemaphore  location 'a0';
                 bidMsg: PSemaphoreMessage location 'a1'): Cardinal;
SysCall MOS_ExecBase 540;

procedure Vacate(sigSem: PSignalSemaphore  location 'a0';
                 bidMsg: PSemaphoreMessage location 'a1');
SysCall MOS_ExecBase 546;

function OpenLibrary(libname: PChar    location 'a1';
                     libver : Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 552;

procedure InitSemaphore(sigSem: PSignalSemaphore location 'a0');
SysCall MOS_ExecBase 558;

procedure ObtainSemaphore(sigSem: PSignalSemaphore location 'a0');
SysCall MOS_ExecBase 564;

procedure ReleaseSemaphore(sigSem: PSignalSemaphore location 'a0');
SysCall MOS_ExecBase 570;

function AttemptSemaphore(sigSem: PSignalSemaphore location 'a0'): Cardinal;
SysCall MOS_ExecBase 576;

procedure ObtainSemaphoreList(sigSem: PList location 'a0');
SysCall MOS_ExecBase 582;

procedure ReleaseSemaphoreList(sigSem: PList location 'a0');
SysCall MOS_ExecBase 588;

function FindSemaphore(sigSem: PChar location 'a1'): PSignalSemaphore;
SysCall MOS_ExecBase 594;

procedure AddSemaphore(sigSem: PSignalSemaphore location 'a1');
SysCall MOS_ExecBase 600;

procedure RemSemaphore(sigSem: PSignalSemaphore location 'a1');
SysCall MOS_ExecBase 606;

function SumKickData: Cardinal;
SysCall MOS_ExecBase 612;

procedure AddMemList(size      : Cardinal location 'd0';
                     attributes: Cardinal location 'd1';
                     pri       : LongInt  location 'd2';
                     base      : Pointer  location 'a0';
                     name      : PChar    location 'a1');
SysCall MOS_ExecBase 618;

procedure CopyMem(source: Pointer  location 'a0';
                  dest  : Pointer  location 'a1';
                  size  : Cardinal location 'd0');
SysCall MOS_ExecBase 624;

procedure CopyMemQuick(source: Pointer  location 'a0';
                       dest  : Pointer  location 'a1';
                       size  : Cardinal location 'd0');
SysCall MOS_ExecBase 630;

procedure CacheClearU;
SysCall MOS_ExecBase 636;

procedure CacheClearE(address: Pointer  location 'a0';
                      length : Cardinal location 'd0';
                      caches : Cardinal location 'd1');
SysCall MOS_ExecBase 642;

function CacheControl(cacheBits: Cardinal location 'd0';
                      cacheMask: Cardinal location 'd1'): Cardinal;
SysCall MOS_ExecBase 648;

function CreateIORequest(port: PMsgPort location 'a0';
                         size: Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 654;

procedure DeleteIORequest(iorequest: Pointer location 'a0');
SysCall MOS_ExecBase 660;

function CreateMsgPort: PMsgPort;
SysCall MOS_ExecBase 666;

procedure DeleteMsgPort(port: PMsgPort location 'a0');
SysCall MOS_ExecBase 672;

procedure ObtainSemaphoreShared(sigSem: PSignalSemaphore location 'a0');
SysCall MOS_ExecBase 678;

function AllocVec(byteSize    : Cardinal location 'd0';
                  requirements: Cardinal location 'd1'): Pointer;
SysCall MOS_ExecBase 684;

procedure FreeVec(memoryBlock: Pointer location 'a1');
SysCall MOS_ExecBase 690;

function CreatePool(requirements: Cardinal location 'd0';
                    puddleSize  : Cardinal location 'd1';
                    threshSize  : Cardinal location 'd2'): Pointer;
SysCall MOS_ExecBase 696;

procedure DeletePool(poolHeader: Pointer location 'a0');
SysCall MOS_ExecBase 702;

function AllocPooled(poolHeader: Pointer  location 'a0';
                     memSize   : Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 708;

function FreePooled(poolHeader: Pointer  location 'a0';
                    memory    : Pointer  location 'a1';
                    memSize   : Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 714;

function AttemptSemaphoreShared(sigSem: pSignalSemaphore location 'a0'): Cardinal;
SysCall MOS_ExecBase 720;

procedure ColdReboot;
SysCall MOS_ExecBase 726;

procedure StackSwap(newStack: PStackSwapStruct location 'a0');
SysCall MOS_ExecBase 732;

function NewGetTaskAttrsA(Task    : PTask    location 'a0';
                          Data    : Pointer  location 'a1';
                          DataSize: Cardinal location 'd0';
                          TType   : Cardinal location 'd1';
                          Tags    : PTagItem location 'a2'): Cardinal;
SysCall MOS_ExecBase 738;

function NewSetTaskAttrsA(Task    : PTask    location 'a0';
                          Data    : Pointer  location 'a1';
                          DataSize: Cardinal location 'd0';
                          TType   : Cardinal location 'd1';
                          Tags    : PTagItem location 'a2'): Cardinal;
SysCall MOS_ExecBase 744;

function CachePreDMA(address   : Pointer  location 'a0';
                     var length: Cardinal location 'a1';
                     flags     : Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 762;

procedure CachePostDMA(address   : Pointer  location 'a0';
                       var length: Cardinal location 'a1';
                       flags     : Cardinal location 'd0');
SysCall MOS_ExecBase 768;

procedure AddMemHandler(memhand: PInterrupt location 'a1');
SysCall MOS_ExecBase 774;

procedure RemMemHandler(memhand: PInterrupt location 'a1');
SysCall MOS_ExecBase 780;

function ObtainQuickVector(interruptCode: Pointer location 'a0'): Cardinal;
SysCall MOS_ExecBase 786;

function NewSetFunction(libHandle  : PLibrary location 'a0';
                        newfunction: Pointer  location 'a1';
                        offset     : LongInt  location 'd0';
                        tags       : PTagItem location 'a2'): Pointer;
SysCall MOS_ExecBase 792;

function NewCreateLibrary(tags: PTagItem location 'a0'): PLibrary;
SysCall MOS_ExecBase 798;

function NewPPCStackSwap(newStack : PStackSwapStruct  location 'a0';
                         sfunction: Pointer           location 'a1';
                         args     : PPPCStackSwapArgs location 'a2'): Cardinal;
SysCall MOS_ExecBase 804;

function TaggedOpenLibrary(d0arg: LongInt location 'd0'): Pointer;
SysCall MOS_ExecBase 810;

function ReadGayle: Cardinal;
SysCall MOS_ExecBase 816;

function VNewRawDoFmt(FmtString: PChar;
                      PutChProc: Pointer;
                      PutChData: PChar;
                      args     : PChar): PChar;
SysCall BaseSysV MOS_ExecBase 822;

procedure CacheFlushDataArea(Address: Pointer  location 'a0';
                             Size   : Cardinal location 'd0');
SysCall MOS_ExecBase 828;

procedure CacheInvalidInstArea(Address: Pointer  location 'a0';
                               Size   : Cardinal location 'd0');
SysCall MOS_ExecBase 834;

procedure CacheInvalidDataArea(Address: Pointer  location 'a0';
                               Size   : Cardinal location 'd0');
SysCall MOS_ExecBase 840;

procedure CacheFlushDataInstArea(Address: Pointer  location 'a0';
                                 Size   : Cardinal location 'd0');
SysCall MOS_ExecBase 846;

procedure CacheTrashCacheArea(Address: Pointer  location 'a0';
                              Size   : Cardinal location 'd0');
SysCall MOS_ExecBase 852;

function AllocTaskPooled(Size: Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 858;

procedure FreeTaskPooled(Address: Pointer  location 'a1';
                         Size   : Cardinal location 'd0');
SysCall MOS_ExecBase 864;

function AllocVecTaskPooled(Size: Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 870;

procedure FreeVecTaskPooled(Address: Pointer location 'a1');
SysCall MOS_ExecBase 876;

procedure FlushPool(poolHeader: Pointer location 'a0');
SysCall MOS_ExecBase 882;

procedure FlushTaskPool;
SysCall MOS_ExecBase 888;

function AllocVecPooled(poolHeader: Pointer  location 'a0';
                        memSize   : Cardinal location 'd0'): Pointer;
SysCall MOS_ExecBase 894;

function NewGetSystemAttrsA(Data    : Pointer  location 'a0';
                            DataSize: Cardinal location 'd0';
                            TType   : Cardinal location 'd1';
                            Tags    : PTagItem location 'a1'): Cardinal;
SysCall MOS_ExecBase 906;

function NewSetSystemAttrsA(Data    : Pointer  location 'a0';
                            DataSize: Cardinal location 'd0';
                            TType   : Cardinal location 'd1';
                            Tags    : PTagItem location 'a1'): Cardinal;
SysCall MOS_ExecBase 912;

function NewCreateTaskA(Tags: PTagItem location 'a0'): PTask;
SysCall MOS_ExecBase 918;

function AllocateAligned(memHeader  : pMemHeader;
                         byteSize   : Cardinal;
                         alignSize  : Cardinal;
                         alignOffset: Cardinal): Pointer;
SysCall BaseSysV MOS_ExecBase 930;

function AllocMemAligned(byteSize   : Cardinal;
                         attributes : Cardinal;
                         alignSize  : Cardinal;
                         alignOffset: Cardinal): Pointer;
SysCall BaseSysV MOS_ExecBase 936;

function AllocVecAligned(byteSize   : Cardinal;
                         attributes : Cardinal;
                         alignSize  : Cardinal;
                         alignOffset: Cardinal): Pointer;
SysCall BaseSysV MOS_ExecBase 942;

procedure AddExecNotify(hook: PHook);
SysCall BaseSysV MOS_ExecBase 948;

procedure RemExecNotify(hook: PHook);
SysCall BaseSysV MOS_ExecBase 954;

function FindExecNode(ttype: Cardinal location 'd0';
                      name : PChar    location 'a0'): PNode;
SysCall MOS_ExecBase 960;

function AddExecNodeA(innode  : Pointer  location 'a0';
                      TagItems: PTagItem location 'a1'): Pointer;
SysCall MOS_ExecBase 966;

function AllocVecDMA(byteSize    : Cardinal location 'd0';
                     requirements: Cardinal location 'd1'): Pointer;
SysCall MOS_ExecBase 972;

procedure FreeVecDMA(memoryBlock: Pointer location 'a1');
SysCall MOS_ExecBase 978;

function AllocPooledAligned(poolHeader : Pointer;
                            byteSize   : Cardinal;
                            alignSize  : Cardinal;
                            alignOffset: Cardinal): Pointer;
SysCall BaseSysV MOS_ExecBase 984;

function AddResident(resident: pResident location 'd0'): LongInt;
SysCall BaseSysV MOS_ExecBase 990;

function FindTaskByPID(processID: Cardinal): PTask;
SysCall BaseSysV MOS_ExecBase 996;

function NewGetTaskAttrs(Task    : PTask;
                         Data    : Pointer;
                         DataSize: Cardinal;
                         TType   : Cardinal;
                         Tags    : array of DWord): Cardinal; Inline;

implementation

function NewGetTaskAttrs(Task    : PTask;
                         Data    : Pointer;
                         DataSize: Cardinal;
                         TType   : Cardinal;
                         Tags    : array of DWord): Cardinal; Inline;
begin
  NewGetTaskAttrs:=NewGetTaskAttrsA(Task,Data,DataSize,TType,@Tags);
end;

function GetEmulHandle: PEmulHandle; assembler; nostackframe;
asm
  mr r3,r2
end;

function REG_D0: DWord; assembler; nostackframe;
asm
  lwz r3,0(r2)
end;

function REG_D1: DWord; assembler; nostackframe;
asm
  lwz r3,4(r2)
end;

function REG_D2: DWord; assembler; nostackframe;
asm
  lwz r3,8(r2)
end;

function REG_D3: DWord; assembler; nostackframe;
asm
  lwz r3,12(r2)
end;

function REG_D4: DWord; assembler; nostackframe;
asm
  lwz r3,16(r2)
end;

function REG_D5: DWord; assembler; nostackframe;
asm
  lwz r3,20(r2)
end;

function REG_D6: DWord; assembler; nostackframe;
asm
  lwz r3,24(r2)
end;

function REG_D7: DWord; assembler; nostackframe;
asm
  lwz r3,28(r2)
end;


function REG_A0: Pointer; assembler; nostackframe;
asm
  lwz r3,32(r2)
end;

function REG_A1: Pointer; assembler; nostackframe;
asm
  lwz r3,36(r2)
end;

function REG_A2: Pointer; assembler; nostackframe;
asm
  lwz r3,40(r2)
end;

function REG_A3: Pointer; assembler; nostackframe;
asm
  lwz r3,44(r2)
end;

function REG_A4: Pointer; assembler; nostackframe;
asm
  lwz r3,48(r2)
end;

function REG_A5: Pointer; assembler; nostackframe;
asm
  lwz r3,52(r2)
end;

function REG_A6: Pointer; assembler; nostackframe;
asm
  lwz r3,56(r2)
end;

function REG_A7: Pointer; assembler; nostackframe;
asm
  lwz r3,60(r2)
end;


function REG_PC: Pointer; assembler; nostackframe;
asm
  lwz r3,64(r2)
end;

function REG_SR: DWord; assembler; nostackframe;
asm
  lwz r3,68(r2)
end;


begin
  ExecBase:=MOS_ExecBase;
end.
