{
<<<<<<< HEAD
     File:       CommonPanels/NSL.h
 
     Contains:   Interface to API for using the NSL User Interface
 
     Version:    CommonPanels-91~177
 
     Copyright:  © 1997-2008 by Apple Computer, Inc., all rights reserved
=======
     File:       NSL.p
 
     Contains:   Interface to API for using the NSL User Interface
 
     Version:    Technology: Mac OS X
                 Release:    Universal Interfaces 3.4.2
 
     Copyright:  © 1985-2002 by Apple Computer, Inc., all rights reserved
>>>>>>> graemeg/fixes_2_2
 
     Bugs?:      For bug reports, consult the following page on
                 the World Wide Web:
 
<<<<<<< HEAD
                     http://bugs.freepascal.org
 
}
{  Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
{
    Modified for use with Free Pascal
    Version 308
    Please report any bugs to <gpc@microbizz.nl>
}

{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}
=======
                     http://www.freepascal.org/bugs.html
 
}


{
    Modified for use with Free Pascal
    Version 210
    Please report any bugs to <gpc@microbizz.nl>
}

>>>>>>> graemeg/fixes_2_2
{$mode macpas}
{$packenum 1}
{$macro on}
{$inline on}
{$calling mwpascal}

unit NSL;
interface
<<<<<<< HEAD
{$setc UNIVERSAL_INTERFACES_VERSION := $0400}
{$setc GAP_INTERFACES_VERSION := $0308}
=======
{$setc UNIVERSAL_INTERFACES_VERSION := $0342}
{$setc GAP_INTERFACES_VERSION := $0210}
>>>>>>> graemeg/fixes_2_2

{$ifc not defined USE_CFSTR_CONSTANT_MACROS}
    {$setc USE_CFSTR_CONSTANT_MACROS := TRUE}
{$endc}

{$ifc defined CPUPOWERPC and defined CPUI386}
	{$error Conflicting initial definitions for CPUPOWERPC and CPUI386}
{$endc}
{$ifc defined FPC_BIG_ENDIAN and defined FPC_LITTLE_ENDIAN}
	{$error Conflicting initial definitions for FPC_BIG_ENDIAN and FPC_LITTLE_ENDIAN}
{$endc}

<<<<<<< HEAD
{$ifc not defined __ppc__ and defined CPUPOWERPC32}
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC}
>>>>>>> graemeg/fixes_2_2
	{$setc __ppc__ := 1}
{$elsec}
	{$setc __ppc__ := 0}
{$endc}
<<<<<<< HEAD
{$ifc not defined __ppc64__ and defined CPUPOWERPC64}
	{$setc __ppc64__ := 1}
{$elsec}
	{$setc __ppc64__ := 0}
{$endc}
=======
>>>>>>> graemeg/fixes_2_2
{$ifc not defined __i386__ and defined CPUI386}
	{$setc __i386__ := 1}
{$elsec}
	{$setc __i386__ := 0}
{$endc}
<<<<<<< HEAD
{$ifc not defined __x86_64__ and defined CPUX86_64}
	{$setc __x86_64__ := 1}
{$elsec}
	{$setc __x86_64__ := 0}
{$endc}
{$ifc not defined __arm__ and defined CPUARM}
	{$setc __arm__ := 1}
{$elsec}
	{$setc __arm__ := 0}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$ifc not defined __arm64__ and defined CPUAARCH64}
  {$setc __arm64__ := 1}
{$elsec}
  {$setc __arm64__ := 0}
{$endc}
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew

{$ifc defined cpu64}
  {$setc __LP64__ := 1}
{$elsec}
  {$setc __LP64__ := 0}
{$endc}

=======
>>>>>>> graemeg/fixes_2_2

{$ifc defined __ppc__ and __ppc__ and defined __i386__ and __i386__}
	{$error Conflicting definitions for __ppc__ and __i386__}
{$endc}

{$ifc defined __ppc__ and __ppc__}
	{$setc TARGET_CPU_PPC := TRUE}
<<<<<<< HEAD
	{$setc TARGET_CPU_PPC64 := FALSE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_CPU_ARM64 := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
	{$setc TARGET_OS_EMBEDDED := FALSE}
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_CPU_ARM64 := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
	{$setc TARGET_OS_EMBEDDED := FALSE}
=======
=======
=======
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
>>>>>>> graemeg/cpstrnew
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
>>>>>>> graemeg/cpstrnew
=======
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
>>>>>>> origin/cpstrnew
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
<<<<<<< HEAD
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{$elifc defined __i386__ and __i386__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := TRUE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	{$setc TARGET_CPU_ARM64 := FALSE}
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{$ifc defined(iphonesim)}
 	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := TRUE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
	{$setc TARGET_OS_EMBEDDED := FALSE}
{$elifc defined __x86_64__ and __x86_64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := TRUE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_CPU_ARM64 := FALSE}
=======
>>>>>>> graemeg/cpstrnew
{$ifc defined(iphonesim)}
 	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := TRUE}
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
<<<<<<< HEAD
	{$setc TARGET_OS_EMBEDDED := FALSE}
{$elifc defined __arm__ and __arm__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := TRUE}
	{$setc TARGET_CPU_ARM64 := FALSE}
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
	{$setc TARGET_OS_EMBEDDED := TRUE}
{$elifc defined __arm64__ and __arm64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_CPU_ARM64 := TRUE}
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
	{$setc TARGET_OS_EMBEDDED := TRUE}
{$elsec}
	{$error __ppc__ nor __ppc64__ nor __i386__ nor __x86_64__ nor __arm__ nor __arm64__ is defined.}
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
{$elsec}
=======
{$elsec}
=======
{$elsec}
>>>>>>> graemeg/cpstrnew
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
{$elifc defined __x86_64__ and __x86_64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := TRUE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elifc defined __arm__ and __arm__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := TRUE}
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elsec}
	{$error __ppc__ nor __ppc64__ nor __i386__ nor __x86_64__ nor __arm__ is defined.}
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
{$elsec}
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
{$elifc defined __x86_64__ and __x86_64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := TRUE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elifc defined __arm__ and __arm__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := TRUE}
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elsec}
	{$error __ppc__ nor __ppc64__ nor __i386__ nor __x86_64__ nor __arm__ is defined.}
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
{$elsec}
>>>>>>> origin/cpstrnew
  {$setc TARGET_CPU_64 := FALSE}
{$endc}
=======
	{$setc TARGET_CPU_X86 := FALSE}
{$elifc defined __i386__ and __i386__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_X86 := TRUE}
{$elsec}
	{$error Neither __ppc__ nor __i386__ is defined.}
{$endc}
{$setc TARGET_CPU_PPC_64 := FALSE}
>>>>>>> graemeg/fixes_2_2

{$ifc defined FPC_BIG_ENDIAN}
	{$setc TARGET_RT_BIG_ENDIAN := TRUE}
	{$setc TARGET_RT_LITTLE_ENDIAN := FALSE}
{$elifc defined FPC_LITTLE_ENDIAN}
	{$setc TARGET_RT_BIG_ENDIAN := FALSE}
	{$setc TARGET_RT_LITTLE_ENDIAN := TRUE}
{$elsec}
	{$error Neither FPC_BIG_ENDIAN nor FPC_LITTLE_ENDIAN are defined.}
{$endc}
{$setc ACCESSOR_CALLS_ARE_FUNCTIONS := TRUE}
{$setc CALL_NOT_IN_CARBON := FALSE}
{$setc OLDROUTINENAMES := FALSE}
{$setc OPAQUE_TOOLBOX_STRUCTS := TRUE}
{$setc OPAQUE_UPP_TYPES := TRUE}
{$setc OTCARBONAPPLICATION := TRUE}
{$setc OTKERNEL := FALSE}
{$setc PM_USE_SESSION_APIS := TRUE}
{$setc TARGET_API_MAC_CARBON := TRUE}
{$setc TARGET_API_MAC_OS8 := FALSE}
{$setc TARGET_API_MAC_OSX := TRUE}
{$setc TARGET_CARBON := TRUE}
{$setc TARGET_CPU_68K := FALSE}
{$setc TARGET_CPU_MIPS := FALSE}
{$setc TARGET_CPU_SPARC := FALSE}
<<<<<<< HEAD
=======
{$setc TARGET_OS_MAC := TRUE}
>>>>>>> graemeg/fixes_2_2
{$setc TARGET_OS_UNIX := FALSE}
{$setc TARGET_OS_WIN32 := FALSE}
{$setc TARGET_RT_MAC_68881 := FALSE}
{$setc TARGET_RT_MAC_CFM := FALSE}
{$setc TARGET_RT_MAC_MACHO := TRUE}
{$setc TYPED_FUNCTION_POINTERS := TRUE}
{$setc TYPE_BOOL := FALSE}
{$setc TYPE_EXTENDED := FALSE}
{$setc TYPE_LONGLONG := TRUE}
uses MacTypes,Events,NSLCore;
<<<<<<< HEAD
{$endc} {not MACOSALLINCLUDE}


{$ifc TARGET_OS_MAC}
=======
>>>>>>> graemeg/fixes_2_2

{$ALIGN MAC68K}


type
<<<<<<< HEAD
	NSLDialogOptionFlags = UInt32;
const
	kNSLDefaultNSLDlogOptions = $00000000; { use defaults for all the options }
	kNSLNoURLTEField = $00000001; { don't show url text field for manual entry }
	kNSLAddServiceTypes = $00000002; { add the service type if a user enters an incomplete URL }
	kNSLClientHandlesRecents = $00000004; { Stops NSLStandardGetURL from adding the selection to the recent items folder }
=======
	NSLDialogOptionFlags 		= UInt32;
const
	kNSLDefaultNSLDlogOptions	= $00000000;					{  use defaults for all the options  }
	kNSLNoURLTEField			= $00000001;					{  don't show url text field for manual entry  }
	kNSLAddServiceTypes			= $00000002;					{  add the service type if a user enters an incomplete URL  }
	kNSLClientHandlesRecents	= $00000004;					{  Stops NSLStandardGetURL from adding the selection to the recent items folder  }
>>>>>>> graemeg/fixes_2_2


type
	NSLDialogOptionsPtr = ^NSLDialogOptions;
	NSLDialogOptions = record
<<<<<<< HEAD
		version: UInt16;
		dialogOptionFlags: NSLDialogOptionFlags;    { option flags for affecting the dialog's behavior }
		windowTitle: Str255;
		actionButtonLabel: Str255;      { label of the default button (or null string for default) }
		cancelButtonLabel: Str255;      { label of the cancel button (or null string for default) }
		message: Str255;                { custom message prompt (or null string for default) }
	end;
type
	NSLURLFilterProcPtr = function( url: CStringPtr; var displayString: Str255 ): Boolean;
{ you can provide for calls to NSLStandardGetURL}
type
	NSLEventProcPtr = procedure( var newEvent: EventRecord; userContext: UnivPtr );
	NSLURLFilterUPP = NSLURLFilterProcPtr;
	NSLEventUPP = NSLEventProcPtr;
{
 *  NewNSLURLFilterUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewNSLURLFilterUPP( userRoutine: NSLURLFilterProcPtr ): NSLURLFilterUPP; external name '_NewNSLURLFilterUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
		version:				UInt16;
		dialogOptionFlags:		NSLDialogOptionFlags;					{  option flags for affecting the dialog's behavior  }
		windowTitle:			Str255;
		actionButtonLabel:		Str255;									{  label of the default button (or null string for default)  }
		cancelButtonLabel:		Str255;									{  label of the cancel button (or null string for default)  }
		message:				Str255;									{  custom message prompt (or null string for default)  }
	end;

{$ifc TYPED_FUNCTION_POINTERS}
	NSLURLFilterProcPtr = function(url: CStringPtr; var displayString: Str255): boolean;
{$elsec}
	NSLURLFilterProcPtr = ProcPtr;
{$endc}

	{  you can provide for calls to NSLStandardGetURL }
{$ifc TYPED_FUNCTION_POINTERS}
	NSLEventProcPtr = procedure(var newEvent: EventRecord; userContext: UnivPtr);
{$elsec}
	NSLEventProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	NSLURLFilterUPP = ^SInt32; { an opaque UPP }
{$elsec}
	NSLURLFilterUPP = UniversalProcPtr;
{$endc}	
{$ifc OPAQUE_UPP_TYPES}
	NSLEventUPP = ^SInt32; { an opaque UPP }
{$elsec}
	NSLEventUPP = UniversalProcPtr;
{$endc}	

const
	uppNSLURLFilterProcInfo = $000003D0;
	uppNSLEventProcInfo = $000003C0;
	{
	 *  NewNSLURLFilterUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   available as macro/inline
	 *    CarbonLib:        in CarbonLib 1.0 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function NewNSLURLFilterUPP(userRoutine: NSLURLFilterProcPtr): NSLURLFilterUPP; external name '_NewNSLURLFilterUPP'; { old name was NewNSLURLFilterProc }
>>>>>>> graemeg/fixes_2_2
{
 *  NewNSLEventUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewNSLEventUPP( userRoutine: NSLEventProcPtr ): NSLEventUPP; external name '_NewNSLEventUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewNSLEventUPP(userRoutine: NSLEventProcPtr): NSLEventUPP; external name '_NewNSLEventUPP'; { old name was NewNSLEventProc }
>>>>>>> graemeg/fixes_2_2
{
 *  DisposeNSLURLFilterUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeNSLURLFilterUPP( userUPP: NSLURLFilterUPP ); external name '_DisposeNSLURLFilterUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeNSLURLFilterUPP(userUPP: NSLURLFilterUPP); external name '_DisposeNSLURLFilterUPP';
>>>>>>> graemeg/fixes_2_2
{
 *  DisposeNSLEventUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeNSLEventUPP( userUPP: NSLEventUPP ); external name '_DisposeNSLEventUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeNSLEventUPP(userUPP: NSLEventUPP); external name '_DisposeNSLEventUPP';
>>>>>>> graemeg/fixes_2_2
{
 *  InvokeNSLURLFilterUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function InvokeNSLURLFilterUPP( url: CStringPtr; var displayString: Str255; userUPP: NSLURLFilterUPP ): Boolean; external name '_InvokeNSLURLFilterUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function InvokeNSLURLFilterUPP(url: CStringPtr; var displayString: Str255; userRoutine: NSLURLFilterUPP): boolean; external name '_InvokeNSLURLFilterUPP'; { old name was CallNSLURLFilterProc }
>>>>>>> graemeg/fixes_2_2
{
 *  InvokeNSLEventUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure InvokeNSLEventUPP( var newEvent: EventRecord; userContext: UnivPtr; userUPP: NSLEventUPP ); external name '_InvokeNSLEventUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokeNSLEventUPP(var newEvent: EventRecord; userContext: UnivPtr; userRoutine: NSLEventUPP); external name '_InvokeNSLEventUPP'; { old name was CallNSLEventProc }
>>>>>>> graemeg/fixes_2_2
{ <--- function returns OSStatus of the operation.  noErr will be returned if valid, kNSLUserCanceled will be returned if the user cancels }
{ ---> dialogOptions }
{ ---> eventProc }
{ ---> eventProcContextPtr }
{ ---> filterProc }
{ ---> serviceTypeList }
{ <--- userSelectedURL }
{ NSLDialogOptions* dialogOptions }
{
   dialogOptions is a user defined structure defining the look, feel and operation of NSLStandardGetURL dialog
   default behavior can be achieved by passing in a pointer to a structure that has been filled out by a previous
   call to NSLGetDefaultDialogOptions or by passing in NULL.
}
{ NSLEventUPP eventProc }
{
   the eventProc is a callback NSLURLFilterUPP that will
   get called with Events that the dialog doesn't handle.  If you pass in nil,
   you won't get update events while the NSLStandardGetURL dialog is open.
}
{ void* eventProcContextPtr }
<<<<<<< HEAD
{ you can provide a pointer to some contextual data that you want to have sent to your eventProc filter}
=======
{  you can provide a pointer to some contextual data that you want to have sent to your eventProc filter }
>>>>>>> graemeg/fixes_2_2
{ NSLURLFilterProcPtr filterProc }
{
   the filter param is a callback NSLURLFilterUPP that
   will get called (if not nil) for each url that is going to be displayed in
   the dialog's result list.  A result of false will not include the url for the
   user to select from.  You also have the option of handling the way the url looks
   in the dialog listing by copying the preferred name into the displayString
   parameter.  (If left alone, NSLStandardGetURL dialog will strip the service type
   portion off the url).
}
{ char* serviceTypeList }
{
   the serviceTypeList parameter is a null terminated string that will 
   directly affect the contents of the services popup in the dialog.
   The structure of this string is a set of tuples as follows:
   Name of ServiceType as to be represented in the popup followed by
   a comma delimted list of service descriptors (ie http,https) that will
   used in the search of that type.  Each comma delimited tuple is delimited
   by semi-colons.
}
{
   For example:
   If you want to search for services of type http (web), https (secure web),
   and ftp, you could pass in the string "Web Servers,http,https;FTP Servers,ftp".
   This would result in a popup list with two items ("Web Servers" and "FTP Servers")
   and searches performed on them will provide results of type http and https for the
   first, and ftp for the second.
}

{
   Results list Icons:
   NSLStandardGetURL provides icons in its listings for the following types:
   "http", "https", "ftp", "afp", "lpr", "LaserWriter", "AFPServer"
   any other types will get a generic icon.  However, you can provide icons
   if you wish by including an '#ics8' resource id at the end of your comma
   delimited list.  The dialog will then use that icon if found in its results
   list.  This icon will be used for all types in a tuple.
   For example:
   The param "Web Servers,http,https;Telnet Servers,telnet;NFS Servers,nfs,129"
   would result in lists of http and https services to be shown with their default
   icons, telnet servers would be shown with the default misc. icon and nfs
   servers would be shown with your icon at resource id 129.
}

{ char** url }
{
   pass in the address of a char* and it will point to the resulting url.  If the user
   cancels (the function returns false), the pointer will be set to nil.  If the function
   returns true (user selected a url), then you must call NSLFreeURL on the pointer when
   you are done with it.
}
{
   Call this to have the user select a url based service from a dialog.
   Function takes on input an optional filter proc, a serviceTypeList, and an address to a Ptr.
   Function sets the value of the Ptr to a newly created c-style null terminated string
   containing the user's choice of URL.
}

{
 *  NSLStandardGetURL()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 }
function NSLStandardGetURL( dialogOptions: NSLDialogOptionsPtr { can be NULL }; eventProc: NSLEventUPP { can be NULL }; eventProcContextPtr: UnivPtr { can be NULL }; filterProc: NSLURLFilterUPP { can be NULL }; serviceTypeList: CStringPtr; var userSelectedURL: CStringPtr ): OSStatus; external name '_NSLStandardGetURL';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NSLStandardGetURL(dialogOptions: NSLDialogOptionsPtr; eventProc: NSLEventUPP; eventProcContextPtr: UnivPtr; filterProc: NSLURLFilterUPP; serviceTypeList: CStringPtr; var userSelectedURL: CStringPtr): OSStatus; external name '_NSLStandardGetURL';
>>>>>>> graemeg/fixes_2_2

{
 *  NSLGetDefaultDialogOptions()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 }
function NSLGetDefaultDialogOptions( var dialogOptions: NSLDialogOptions ): OSStatus; external name '_NSLGetDefaultDialogOptions';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NSLGetDefaultDialogOptions(var dialogOptions: NSLDialogOptions): OSStatus; external name '_NSLGetDefaultDialogOptions';
>>>>>>> graemeg/fixes_2_2

{ <--- function returns null (useful for setting variable at same time as freeing it }
{ ---> url is memory created by a call to NSLStandardGetURL }
{
 *  NSLFreeURL()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 }
function NSLFreeURL( url: CStringPtr ): CStringPtr; external name '_NSLFreeURL';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NSLFreeURL(url: CStringPtr): CStringPtr; external name '_NSLFreeURL';
>>>>>>> graemeg/fixes_2_2

{ <--- function returns kNSLErrNullPtrError, file mgr errors, or resource mgr errors }
{ ---> folderSelectorType is one of the well-known folders defined in Folders.h }
{ ---> url is any valid url }
{ ---> userFriendlyName is used for the file name and the display name (in the UI) }
{
 *  NSLSaveURLAliasToFolder()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 }
function NSLSaveURLAliasToFolder( folderSelectorType: OSType; url: ConstCStringPtr; userFriendlyName: ConstCStringPtr ): OSErr; external name '_NSLSaveURLAliasToFolder';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{$endc} {TARGET_OS_MAC}

{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
 *    Non-Carbon CFM:   in NSLPPCLib 1.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function NSLSaveURLAliasToFolder(folderSelectorType: OSType; url: ConstCStringPtr; userFriendlyName: ConstCStringPtr): OSErr; external name '_NSLSaveURLAliasToFolder';


{$ALIGN MAC68K}


end.
>>>>>>> graemeg/fixes_2_2
