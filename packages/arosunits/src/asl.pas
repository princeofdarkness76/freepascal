{
    This file is part of the Free Pascal run time library.
    Copyright (c) 2014 by Free Pascal development team

    asl.library functions

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

unit asl;

{$mode objfpc}

interface

uses
  exec, utility, workbench, agraphics, tagsarray;

const
  ASLNAME: PChar = 'asl.library';
  ASL_TB = TAG_USER + $80000;

// Types of requesters known to ASL, used as arguments to AllocAslRequest()
  ASL_FileRequest       = 0;
  ASL_FontRequest       = 1;
  ASL_ScreenModeRequest = 2;


{****************************************************************************

  ASL File Requester data structures and constants

  This structure must only be allocated by asl.library amd is READ-ONLY!
  Control of the various fields is provided via tags when the requester
  is created with AllocAslRequest() and when it is displayed via
  AslRequest() }

type
  PFileRequester = ^TFileRequester;
  TFileRequester = record
    fr_Reserved0: array[0..3] of byte;
    fr_File: STRPTR;        // User selected file
    fr_Drawer: STRPTR;      // User selected drawer
    fr_Reserved1: array[0..9] of byte;
    fr_LeftEdge: SmallInt;
    fr_TopEdge: SmallInt;   // Requester size/placement on exit
    fr_Width: SmallInt;
    fr_Height: SmallInt;
    fr_Reserved2: array[0..1] of byte;
    fr_NumArgs: LongInt;    // How many files were selected ?
    fr_ArgList: PWBArgList; // Selected files
    fr_UserData: APTR;
    fr_Reserved3: array[0..7] of byte;
    fr_Pattern: STRPTR;     // Pattern on exit
  end;


// File requester tag values, used by AllocAslRequest() and AslRequest()

const
// Window control
  ASLFR_Window        = ASL_TB + 2;   // Parent window
  ASLFR_Screen        = ASL_TB + 40;  // Screen to open on if no window
  ASLFR_PubScreenName = ASL_TB + 41;  // Name of public screen
  ASLFR_PrivateIDCMP  = ASL_TB + 42;  // Allocate private IDCMP?
  ASLFR_IntuiMsgFunc  = ASL_TB + 70;  // function to handle IntuiMessages
  ASLFR_SleepWindow   = ASL_TB + 43;  // Block input in ASLFR_Window?
  ASLFR_UserData      = ASL_TB + 52;  // What to put in fr_UserData
  ASLFR_PopToFront    = ASL_TB + 131; // Make the requester window visible
  ASLFR_Activate      = ASL_TB + 132; // Activate the requester window when

// Text display
  ASLFR_TextAttr     = ASL_TB + 51; // Text font to use for gadget text
  ASLFR_Locale       = ASL_TB + 50; // Locale ASL should use for text
  ASLFR_TitleText    = ASL_TB + 1;  // Title of requester
  ASLFR_PositiveText = ASL_TB + 18; // Positive gadget text
  ASLFR_NegativeText = ASL_TB + 19; // Negative gadget text

// Initial settings
  ASLFR_InitialLeftEdge    = ASL_TB + 3;   // Initial requester coordinates
  ASLFR_InitialTopEdge     = ASL_TB + 4;
  ASLFR_InitialWidth       = ASL_TB + 5;   // Initial requester dimensions
  ASLFR_InitialHeight      = ASL_TB + 6;
  ASLFR_InitialFile        = ASL_TB + 8;   // Initial contents of File gadget
  ASLFR_InitialDrawer      = ASL_TB + 9;   // Initial contents of Drawer gadg.
  ASLFR_InitialPattern     = ASL_TB + 10;  // Initial contents of Pattern gadg.
  ASLFR_InitialShowVolumes = ASL_TB + 130; // Initially, show the volume list (V44)

// Options
  ASLFR_Flags1        = ASL_TB + 20; // Option flags
  ASLFR_Flags2        = ASL_TB + 22; // Additional option flags
  ASLFR_DoSaveMode    = ASL_TB + 44; // Being used for saving?
  ASLFR_DoMultiSelect = ASL_TB + 45; // Do multi-select?
  ASLFR_DoPatterns    = ASL_TB + 46; // Display a Pattern gadget?

// Filtering
  ASLFR_DrawersOnly   = ASL_TB + 47; // Don't display files?
  ASLFR_FilterFunc    = ASL_TB + 49; // function to filter files
  ASLFR_RejectIcons   = ASL_TB + 60; // Display .info files?
  ASLFR_RejectPattern = ASL_TB + 61; // Don't display files matching pat
  ASLFR_AcceptPattern = ASL_TB + 62; // Accept only files matching pat
  ASLFR_FilterDrawers = ASL_TB + 63; // Also filter drawers with patterns
  ASLFR_HookFunc      = ASL_TB + 7;  // Combined callback function

// Sorting
  ASLFR_SetSortBy      = ASL_TB + 124; // Sort criteria (name, date, size)
  ASLFR_GetSortBy      = ASL_TB + 125;
  ASLFR_SetSortDrawers = ASL_TB + 126; // Placement of drawers in the list
  ASLFR_GetSortDrawers = ASL_TB + 127;
  ASLFR_SetSortOrder   = ASL_TB + 128; // Order (ascending or descending)
  ASLFR_GetSortOrder   = ASL_TB + 129;


// Flag bits for the ASLFR_Flags1 tag
  FRB_FILTERFUNC    = 7;
  FRB_INTUIFUNC     = 6;
  FRB_DOSAVEMODE    = 5;
  FRB_PRIVATEIDCMP  = 4;
  FRB_DOMULTISELECT = 3;
  FRB_DOPATTERNS    = 0;

  FRF_FILTERFUNC    = 1 shl FRB_FILTERFUNC;
  FRF_INTUIFUNC     = 1 shl FRB_INTUIFUNC;
  FRF_DOSAVEMODE    = 1 shl FRB_DOSAVEMODE;
  FRF_PRIVATEIDCMP  = 1 shl FRB_PRIVATEIDCMP;
  FRF_DOMULTISELECT = 1 shl FRB_DOMULTISELECT;
  FRF_DOPATTERNS    = 1 shl FRB_DOPATTERNS;

// Flag bits for the ASLFR_Flags2 tag
  FRB_DRAWERSONLY   = 0;
  FRB_FILTERDRAWERS = 1;
  FRB_REJECTICONS   = 2;

  FRF_DRAWERSONLY   = 1 shl FRB_DRAWERSONLY;
  FRF_FILTERDRAWERS = 1 shl FRB_FILTERDRAWERS;
  FRF_REJECTICONS   = 1 shl FRB_REJECTICONS;

// Sort criteria for the ASLFR_SetSortBy/ASLFR_GetSortBy tags
  ASLFRSORTBY_Name = 0;
  ASLFRSORTBY_Date = 1;
  ASLFRSORTBY_Size = 2;

// Drawer placement for the ASLFR_SetSortDrawers/ASLFR_GetSortDrawers tags
  ASLFRSORTDRAWERS_First = 0;
  ASLFRSORTDRAWERS_Mix   = 1;
  ASLFRSORTDRAWERS_Last  = 2;

// Sort order for the ASLFR_SetSortOrder/ASLFR_GetSortOrder tags
  ASLFRSORTORDER_Ascend  = 0;
  ASLFRSORTORDER_Descend = 1;

{****************************************************************************

  ASL Font Requester data structures and constants

  This structure must only be allocated by asl.library amd is READ-ONLY!
  Control of the various fields is provided via tags when the requester
  is created with AllocAslRequest() and when it is displayed via
  AslRequest()}

Type
  PFontRequester = ^TFontRequester;
  TFontRequester = record
    fo_Reserved0: array[0..7] of byte;
    fo_Attr: TTextAttr;    // Returned TextAttr
    fo_FrontPen: byte;     // Returned front pen
    fo_BackPen: byte;      // Returned back pen
    fo_DrawMode: byte;     // Returned drawing mode
    fo_Reserved1: byte;
    fo_UserData: Pointer;  // You can store your own data here
    fo_LeftEdge: SmallInt; // Coordinates Of requester on Exit
    fo_TopEdge: SmallInt;
    fo_Width: SmallInt;
    fo_Height: SmallInt;
    fo_TAttr: TTTextAttr;  // Returned TTextAttr
  end;


// Font requester tag values, used by AllocAslRequest() AND AslRequest()

const
// Window control
  ASLFO_Window        = ASL_TB + 2;   // Parent window
  ASLFO_Screen        = ASL_TB + 40;  // Screen to open on if no window
  ASLFO_PubScreenName = ASL_TB + 41;  // Name of public screen
  ASLFO_PrivateIDCMP  = ASL_TB + 42;  // Allocate private IDCMP?
  ASLFO_IntuiMsgFunc  = ASL_TB + 70;  // function to handle IntuiMessages
  ASLFO_SleepWindow   = ASL_TB + 43;  // Block input in ASLFO_Window?
  ASLFO_UserData      = ASL_TB + 52;  // What to put in fo_UserData
  ASLFO_PopToFront    = ASL_TB + 131; // Make the requester window visible when it opens (V44)
  ASLFO_Activate      = ASL_TB + 132; // Activate the requester window when it opens (V45).

// Text display
  ASLFO_TextAttr     = ASL_TB + 51; // Text font to use for gadget text
  ASLFO_Locale       = ASL_TB + 50; // Locale ASL should use for text
  ASLFO_TitleText    = ASL_TB + 1 ; // Title of requester
  ASLFO_PositiveText = ASL_TB + 18; // Positive gadget text
  ASLFO_NegativeText = ASL_TB + 19; // Negative gadget text

// Initial settings
  ASLFO_InitialLeftEdge = ASL_TB + 3;  // Initial requester coordinates
  ASLFO_InitialTopEdge  = ASL_TB + 4;
  ASLFO_InitialWidth    = ASL_TB + 5;  // Initial requester dimensions
  ASLFO_InitialHeight   = ASL_TB + 6;
  ASLFO_InitialName     = ASL_TB + 10; // Initial contents of Name gadget
  ASLFO_InitialSize     = ASL_TB + 11; // Initial contents of Size gadget
  ASLFO_InitialStyle    = ASL_TB + 12; // Initial font style
  ASLFO_InitialFlags    = ASL_TB + 13; // Initial font flags for TextAttr
  ASLFO_InitialFrontPen = ASL_TB + 14; // Initial front pen
  ASLFO_InitialBackPen  = ASL_TB + 15; // Initial back pen
  ASLFO_InitialDrawMode = ASL_TB + 59; // Initial draw mode

// Options
  ASLFO_Flags      = ASL_TB + 20;  // Option flags
  ASLFO_DoFrontPen = ASL_TB + 44;  // Display Front color selector?
  ASLFO_DoBackPen  = ASL_TB + 45;  // Display Back color selector?
  ASLFO_DoStyle    = ASL_TB + 46;  // Display Style checkboxes?
  ASLFO_DoDrawMode = ASL_TB + 47;  // Display DrawMode cycle gadget?
  ASLFO_SampleText = ASL_TB + 133; // Text to display in font sample area (V45)

// Filtering
  ASLFO_FixedWidthOnly = ASL_TB + 48; // Only allow fixed-width fonts?
  ASLFO_MinHeight      = ASL_TB + 16; // Minimum font height to display
  ASLFO_MaxHeight      = ASL_TB + 17; // Maximum font height to display
  ASLFO_FilterFunc     = ASL_TB + 49; // function to filter fonts
  ASLFO_HookFunc       = ASL_TB + 7;  // Combined callback function
  ASLFO_MaxFrontPen    = ASL_TB + 66; // Max # of colors in front palette
  ASLFO_MaxBackPen     = ASL_TB + 67; // Max # of colors in back palette

// Custom additions
  ASLFO_ModeList  = ASL_TB + 21; // Substitute list for drawmodes
  ASLFO_FrontPens = ASL_TB + 64; // Color table for front pen palette
  ASLFO_BackPens  = ASL_TB + 65; // Color table for back pen palette

// Flag bits for ASLFO_Flags tag
  FOB_DOFRONTPEN     = 0;
  FOB_DOBACKPEN      = 1;
  FOB_DOSTYLE        = 2;
  FOB_DODRAWMODE     = 3;
  FOB_FIXEDWIDTHONLY = 4;
  FOB_PRIVATEIDCMP   = 5;
  FOB_INTUIFUNC      = 6;
  FOB_FILTERFUNC     = 7;

  FOF_DOFRONTPEN     = 1 shl FOB_DOFRONTPEN;
  FOF_DOBACKPEN      = 1 shl FOB_DOBACKPEN;
  FOF_DOSTYLE        = 1 shl FOB_DOSTYLE;
  FOF_DODRAWMODE     = 1 shl FOB_DODRAWMODE;
  FOF_FIXEDWIDTHONLY = 1 shl FOB_FIXEDWIDTHONLY;
  FOF_PRIVATEIDCMP   = 1 shl FOB_PRIVATEIDCMP;
  FOF_INTUIFUNC      = 1 shl FOB_INTUIFUNC;
  FOF_FILTERFUNC     = 1 shl FOB_FILTERFUNC;

{****************************************************************************

  ASL Screen Mode Requester data structures and constants

  This structure must only be allocated by asl.library and is READ-ONLY!
  Control of the various fields is provided via tags when the requester
  is created with AllocAslRequest() and when it is displayed via
  AslRequest() }

type
  PScreenModeRequester = ^TScreenModeRequester;
  TScreenModeRequester = record
    sm_DisplayID: LongWord;     // Display mode ID
    sm_DisplayWidth: LongWord;  // Width Of display IN pixels
    sm_DisplayHeight: LongWord; // Height Of display IN pixels
    sm_DisplayDepth: word;      // Number OF bit-planes OF display
    sm_OverscanType: word;      // TYPE OF overscan OF display
    sm_AutoScroll: WordBool;    // Display should auto-scroll?

    sm_BitMapWidth: LongWord;    // Used TO create your own BitMap
    sm_BitMapHeight: LongWord;

    sm_LeftEdge: SmallInt;       // Coordinates OF requester on Exit
    sm_TopEdge: SmallInt;
    sm_Width: SmallInt;
    sm_Height: SmallInt;

    sm_InfoOpened: WordBool;     // Info window opened on exit?
    sm_InfoLeftEdge: SmallInt;   // Last coordinates OF Info window
    sm_InfoTopEdge: SmallInt;
    sm_InfoWidth: SmallInt;
    sm_InfoHeight: SmallInt;

    sm_UserData: APTR;           // You can store your own data here
  end;

{ An Exec list of custom modes can be added to the list of available modes.
  The DimensionInfo structure must be completely initialized, including the
  Header. See <graphics/displayinfo.h>. Custom mode ID's must be in the range
  $FFFF0000..$FFFFFFFF. Regular properties which apply to your custom modes
  can be added in the dn_PropertyFlags field. Custom properties are not
  allowed. }

  PDisplayMode = ^TDisplayMode;
  TDisplayMode = record
    dm_Node: TNode;                   // see ln_Name
    dm_DimensionInfo: TDimensionInfo; // mode description
    dm_PropertyFlags: LongWord;       // applicable properties
  end;

// ScreenMode requester tag values, used by AllocAslRequest() and AslRequest()
const
// Window control
  ASLSM_Window        = ASL_TB + 2;   // Parent window
  ASLSM_Screen        = ASL_TB + 40;  // Screen to open on if no window
  ASLSM_PubScreenName = ASL_TB + 41;  // Name of public screen
  ASLSM_PrivateIDCMP  = ASL_TB + 42;  // Allocate private IDCMP?
  ASLSM_IntuiMsgFunc  = ASL_TB + 70;  // function to handle IntuiMessages
  ASLSM_SleepWindow   = ASL_TB + 43;  // Block input in ASLSM_Window?
  ASLSM_UserData      = ASL_TB + 52;  // What to put in sm_UserData
  ASLSM_PopToFront    = ASL_TB + 131; // Make the requester window visible  when it opens (V44)
  ASLSM_Activate      = ASL_TB + 132; // Activate the requester window when it opens (V45).

// Text display
  ASLSM_TextAttr     = ASL_TB + 51; // Text font to use for gadget text
  ASLSM_Locale       = ASL_TB + 50; // Locale ASL should use for text
  ASLSM_TitleText    = ASL_TB + 1;  // Title of requester
  ASLSM_PositiveText = ASL_TB + 18; // Positive gadget text
  ASLSM_NegativeText = ASL_TB + 19; // Negative gadget text

// Initial settings
  ASLSM_InitialLeftEdge      = ASL_TB + 3;   // Initial requester coordinates
  ASLSM_InitialTopEdge       = ASL_TB + 4;
  ASLSM_InitialWidth         = ASL_TB + 5;   // Initial requester dimensions
  ASLSM_InitialHeight        = ASL_TB + 6;
  ASLSM_InitialDisplayID     = ASL_TB + 100; // Initial display mode id
  ASLSM_InitialDisplayWidth  = ASL_TB + 101; // Initial display width
  ASLSM_InitialDisplayHeight = ASL_TB + 102; // Initial display height
  ASLSM_InitialDisplayDepth  = ASL_TB + 103; // Initial display depth
  ASLSM_InitialOverscanType  = ASL_TB + 104; // Initial type of overscan
  ASLSM_InitialAutoScroll    = ASL_TB + 105; // Initial autoscroll setting
  ASLSM_InitialInfoOpened    = ASL_TB + 106; // Info wndw initially opened?
  ASLSM_InitialInfoLeftEdge  = ASL_TB + 107; // Initial Info window coords.
  ASLSM_InitialInfoTopEdge   = ASL_TB + 108;

// Options
  ASLSM_DoWidth        = ASL_TB + 109; // Display Width gadget?
  ASLSM_DoHeight       = ASL_TB + 110; // Display Height gadget?
  ASLSM_DoDepth        = ASL_TB + 111; // Display Depth gadget?
  ASLSM_DoOverscanType = ASL_TB + 112; // Display Overscan Type gadget?
  ASLSM_DoAutoScroll   = ASL_TB + 113; // Display AutoScroll gadget?

// Filtering
  ASLSM_PropertyFlags = ASL_TB + 114; // Must have these Property flags
  ASLSM_PropertyMask  = ASL_TB + 115; // Only these should be looked at
  ASLSM_MinWidth      = ASL_TB + 116; // Minimum display width to allow
  ASLSM_MaxWidth      = ASL_TB + 117; // Maximum display width to allow
  ASLSM_MinHeight     = ASL_TB + 118; // Minimum display height to allow
  ASLSM_MaxHeight     = ASL_TB + 119; // Maximum display height to allow
  ASLSM_MinDepth      = ASL_TB + 120; // Minimum display depth
  ASLSM_MaxDepth      = ASL_TB + 121; // Maximum display depth
  ASLSM_FilterFunc    = ASL_TB + 122; // function to filter mode id's

// Custom additions
  ASLSM_CustomSMList = ASL_TB + 123; // Exec list of struct DisplayMode

  ASL_LAST_TAG = ASL_TB + 133;


{ This defines the rendezvous data for setting and querying asl.library's
  defaults for the window size and the file requester sort order. The name
  of the semaphore is given below; it exists only with asl.library V45 and
  IPrefs V45 and beyond.}
  ASL_SEMAPHORE_NAME: PChar = 'asl.library';

type
  PASLSemaphore = ^TASLSemaphore;
  TASLSemaphore = record
    as_Semaphore: TSignalSemaphore;
    as_Version: word;          // Must be >= 45
    as_Size: LongWord;         // Size of this data structure. }
    as_SortBy: byte;           // File requester defaults; name, date or size }
    as_SortDrawers: byte;      // File requester defaults; first, mix or last }
    as_SortOrder: byte;        // File requester defaults; ascending or descending }
    as_SizePosition: byte;     // See below }
    as_RelativeLeft: Smallint; // Window position offset }
    as_RelativeTop: Smallint;
    as_RelativeWidth: byte;    // Window size factor; this is a percentage of the parent window/screen width.
    as_RelativeHeight: byte;
   end;

const
// Default position of the ASL window.
  ASLPOS_DefaultPosition = 0; // Position is calculated according to the builtin rules.
  ASLPOS_CenterWindow    = 1; // Centred within the bounds of the parent window.
  ASLPOS_CenterScreen    = 2; // Centred within the bounds of the parent screen.
  ASLPOS_WindowPosition  = 3; // Relative to the top left corner of the parent window, using the offset values provided in the as_RelativeLeft/as_RelativeTop members.
  ASLPOS_ScreenPosition  = 4; // Relative to the top left corner of the parent screen, using the offset values provided in the as_RelativeLeft/as_RelativeTop members.
  ASLPOS_CenterMouse     = 5; // Directly below the mouse pointer.
  ASLPOS_MASK            = $0F;

// Default size of the ASL window.
  ASLSIZE_DefaultSize  = 0 shl 4; // Size is calculated according to the builtin rules.
  ASLSIZE_RelativeSize = 1 shl 4; // Size is relative to the size of the parent window or screen, using the values provided in
                                  // the as_RelativeWidth/as_RelativeHeight members. The as_RelativeWidth/as_RelativeHeight values are
                                  // taken as percentage, i.e. a value of "50" stands for 50% of the width/height of the parent window/screen.
  ASLSIZE_MASK         = $30;

// Other options.
  ASLOPTION_ASLOverrides = 1 shl 6; // ASL determines placement and size of requester windows; application's choice is ignored.


{****************************************************************************

  Obsolete ASL definitions, here for source code compatibility only.
  Please do NOT use in new code.

    define ASL_V38_NAMES_ONLY to remove these older names
 }
{$define ASL_V38_NAMES_ONLY}
{$ifndef ASL_V38_NAMES_ONLY}
const

  TFileRequesterV38 = record
    rf_Reserved0: array[0..3] of byte;
    rf_File: STRPTR;         // Filename pointer
    rf_Dir: STRPTR;          // Directory name pointer
    rf_Reserved1: array[0..9] of Byte;
    rf_LeftEdge: SmallInt;
    rf_TopEdge: SmallInt;    // Preferred window pos
    rf_Width: SmallInt;
    rf_Height: SmallInt;     // Preferred window size
    rf_Reserved2: array[0..1] of Byte;
    rf_NumArgs: LongInt;     // A-la WB Args, FOR multiselects
    rf_ArgList: PWBArgList;
    rf_UserData: Pointer;    // Applihandle (you may write!!)
    rf_Reserved3: array[0..7] of Byte;
    rf_Pat: STRPTR;          // Pattern match pointer
  end;                       // note - more reserved fields follow

  ASL_Dummy       = TAG_USER + $80000;
  ASL_Hail        = ASL_Dummy + 1;
  ASL_Window      = ASL_Dummy + 2;
  ASL_LeftEdge    = ASL_Dummy + 3;
  ASL_TopEdge     = ASL_Dummy + 4;
  ASL_Width       = ASL_Dummy + 5;
  ASL_Height      = ASL_Dummy + 6;
  ASL_HookFunc    = ASL_Dummy + 7;
  ASL_File        = ASL_Dummy + 8;
  ASL_Dir         = ASL_Dummy + 9;
  ASL_FontName    = ASL_Dummy + 10;
  ASL_FontHeight  = ASL_Dummy + 11;
  ASL_FontStyles  = ASL_Dummy + 12;
  ASL_FontFlags   = ASL_Dummy + 13;
  ASL_FrontPen    = ASL_Dummy + 14;
  ASL_BackPen     = ASL_Dummy + 15;
  ASL_MinHeight   = ASL_Dummy + 16;
  ASL_MaxHeight   = ASL_Dummy + 17;
  ASL_OKText      = ASL_Dummy + 18;
  ASL_CancelText  = ASL_Dummy + 19;
  ASL_FuncFlags   = ASL_Dummy + 20;
  ASL_ModeList    = ASL_Dummy + 21;
  ASL_ExtFlags1   = ASL_Dummy + 22;
  ASL_Pattern     = ASL_FontName;
// remember what I said up there? Do not use these anymore!
  FILB_DOWILDFUNC  = 7;
  FILB_DOMSGFUNC   = 6;
  FILB_SAVE        = 5;
  FILB_NEWIDCMP    = 4;
  FILB_MULTISELECT = 3;
  FILB_PATGAD      = 0;
  FILF_DOWILDFUNC  = 128;
  FILF_DOMSGFUNC   = 64;
  FILF_SAVE        = 32;
  FILF_NEWIDCMP    = 16;
  FILF_MULTISELECT = 8;
  FILF_PATGAD      = 1;
  FIL1B_NOFILES    = 0;
  FIL1B_MATCHDIRS  = 1;
  FIL1F_NOFILES    = 1;
  FIL1F_MATCHDIRS  = 2;
  FONB_FRONTCOLOR  = 0;
  FONB_BACKCOLOR   = 1;
  FONB_STYLES      = 2;
  FONB_DRAWMODE    = 3;
  FONB_FIXEDWIDTH  = 4;
  FONB_NEWIDCMP    = 5;
  FONB_DOMSGFUNC   = 6;
  FONB_DOWILDFUNC  = 7;
  FONF_FRONTCOLOR  = 1;
  FONF_BACKCOLOR   = 2;
  FONF_STYLES      = 4;
  FONF_DRAWMODE    = 8;
  FONF_FIXEDWIDTH  = 16;
  FONF_NEWIDCMP    = 32;
  FONF_DOMSGFUNC   = 64;
  FONF_DOWILDFUNC  = 128;
{$endif ASL_V38_NAMES_ONLY}

var
  ASLBase: PLibrary;

function AllocAslRequestA(ReqType: LongWord; TagList: PTagItem): Pointer; syscall ASLBase 8;
function AllocFileRequest: PFileRequester; syscall ASLBase 5;
function AslRequestA(Requester: Pointer; TagList: PTagItem): LongBool; syscall ASLBase 10;
procedure FreeAslRequest(Requester: Pointer); syscall ASLBase 9;
procedure FreeFileRequest(FileReq: PFileRequester); syscall ASLBase 6;
function RequestFile(FileReq: PFileRequester): LongBool; syscall ASLBase 7;
procedure AbortAslRequest(Requester: Pointer); syscall ASLBase 13;
procedure ActivateAslRequest(Requester: Pointer); syscall ASLBase 14;

function AllocAslRequest(ReqType: LongWord; const Tags: array of const): Pointer;
function AslRequest(Requester: Pointer; const Tags: array of const): LongBool;
function AslRequestTags(Requester: Pointer; const Tags: array of const): LongBool;

implementation

function AllocAslRequest(ReqType: LongWord; const Tags: array of const): Pointer;
var
  TagList: TTagsList;
begin
  AddTags(TagList, Tags);
  AllocAslRequest := AllocAslRequestA(reqType , GetTagPtr(TagList));
end;

function AslRequest(Requester: Pointer; const Tags: array of const): LongBool;
var
  TagList: TTagsList;
begin
  AddTags(TagList, Tags);
  AslRequest := AslRequestA(Requester , GetTagPtr(TagList));
end;

function AslRequestTags(Requester: Pointer; const Tags: array of const): LongBool;
var
  TagList: TTagsList;
begin
  AddTags(TagList, Tags);
  AslRequestTags := AslRequestA(Requester , GetTagPtr(TagList));
end;

initialization
  ASLBase := OpenLibrary(ASLNAME, 36);
finalization
  CloseLibrary(ASLBase);
end.


