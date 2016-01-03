{
<<<<<<< HEAD
     File:       Print/PMApplication.h
 
     Contains:   Carbon Printing Manager Interfaces.
 
     Copyright  (c) 1998-2008 Apple Inc. All Rights Reserved.
=======
     File:       PMApplication.p
 
     Contains:   Carbon Printing Manager Interfaces.
 
     Version:    Technology: Mac OS X
                 Release:    Universal Interfaces 3.4.2
 
     Copyright:  © 1998-2002 by Apple Computer, Inc., all rights reserved
>>>>>>> graemeg/fixes_2_2
 
     Bugs?:      For bug reports, consult the following page on
                 the World Wide Web:
 
<<<<<<< HEAD
                     http://bugs.freepascal.org
 
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{  Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
{  Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2012 }
=======
{    Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{    Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{    Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{    Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> origin/cpstrnew
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

unit PMApplication;
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
=======
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
>>>>>>> origin/cpstrnew
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
<<<<<<< HEAD
	{$setc TARGET_CPU_ARM64 := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
	{$setc TARGET_OS_EMBEDDED := FALSE}
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
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
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{$ifc defined(iphonesim)}
 	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := TRUE}
<<<<<<< HEAD
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	{$setc TARGET_OS_EMBEDDED := FALSE}
=======
>>>>>>> graemeg/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	{$setc TARGET_CPU_ARM64 := FALSE}
{$ifc defined(iphonesim)}
 	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := TRUE}
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
	{$setc TARGET_OS_EMBEDDED := FALSE}
=======
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
>>>>>>> graemeg/cpstrnew
=======
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
>>>>>>> graemeg/cpstrnew
{$elifc defined __arm__ and __arm__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := TRUE}
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
<<<<<<< HEAD
	{$setc TARGET_OS_EMBEDDED := TRUE}
{$elsec}
	{$error __ppc__ nor __ppc64__ nor __i386__ nor __x86_64__ nor __arm__ nor __arm64__ is defined.}
=======
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
>>>>>>> graemeg/cpstrnew
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
{$elsec}
=======
=======
>>>>>>> graemeg/cpstrnew
{$elsec}
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
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
uses MacTypes,Dialogs,QuickdrawTypes,PMDefinitions,CFBase;
{$endc} {not MACOSALLINCLUDE}
<<<<<<< HEAD
<<<<<<< HEAD


{$ifc TARGET_OS_MAC}
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew

{$ALIGN POWER}

<<<<<<< HEAD
=======

{$ALIGN POWER}

>>>>>>> graemeg/cpstrnew
{$ifc not TARGET_CPU_64}
=======
{$ifc TARGET_OS_MAC}
>>>>>>> graemeg/cpstrnew

{$ALIGN POWER}

<<<<<<< HEAD
=======

{$ALIGN POWER}

{$ifc not TARGET_CPU_64}

{ Callbacks }

>>>>>>> graemeg/cpstrnew
=======
{$ifc not TARGET_CPU_64}

{ Callbacks }

>>>>>>> graemeg/cpstrnew
=======


{$ifc TARGET_OS_MAC}

{$ALIGN POWER}

{$ifc not TARGET_CPU_64}

{ Callbacks }

>>>>>>> origin/cpstrnew
type
	PMSheetDoneProcPtr = procedure( printSession: PMPrintSession; documentWindow: WindowRef; accepted: Boolean );
	PMSheetDoneUPP = PMSheetDoneProcPtr;

{
 *  NewPMSheetDoneUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function NewPMSheetDoneUPP( userRoutine: PMSheetDoneProcPtr ): PMSheetDoneUPP; external name '_NewPMSheetDoneUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

{
 *  DisposePMSheetDoneUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
procedure DisposePMSheetDoneUPP( userUPP: PMSheetDoneUPP ); external name '_DisposePMSheetDoneUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

{
 *  InvokePMSheetDoneUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
procedure InvokePMSheetDoneUPP( printSession: PMPrintSession; documentWindow: WindowRef; accepted: Boolean; userUPP: PMSheetDoneUPP ); external name '_InvokePMSheetDoneUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

{$ifc PM_USE_SESSION_APIS}
{ Print loop }
{
 *  PMSessionBeginCGDocument()
<<<<<<< HEAD
<<<<<<< HEAD
 *  
 *  Summary:
 *    Begin a new print job that uses only drawing to a CoreGraphics
 *    context.
 *  
 *  Discussion:
 *    This is an updated version of the function
 *    PMSessionBeginDocument. The functionality is identical to
 *    PMSessionBeginDocument except that during a print job, the caller
 *    cannot obtain a Quickdraw grafPort for the printing context but
 *    can only obtain a Quartz graphics context (CGContextRef). This
 *    function should be used in conjunction with
 *    PMSessionGetCGGraphicsContext instead of
 *    PMSessionGetGraphicsContext.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.4 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.4 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionBeginCGDocument( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat ): OSStatus; external name '_PMSessionBeginCGDocument';
(* AVAILABLE_MAC_OS_X_VERSION_10_4_AND_LATER *)

{
 *  PMSessionEndDocument()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionEndDocument( printSession: PMPrintSession ): OSStatus; external name '_PMSessionEndDocument';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionBeginPage()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionBeginPage( printSession: PMPrintSession; pageFormat: PMPageFormat; pageFrame: PMRectPtr ): OSStatus; external name '_PMSessionBeginPage';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *  
 *  Summary:
 *    Begin a new print job that uses only drawing to a CoreGraphics
 *    context.
 *  
 *  Discussion:
 *    This is an updated version of the function
 *    PMSessionBeginDocument. The functionality is identical to
 *    PMSessionBeginDocument except that during a print job, the caller
 *    cannot obtain a Quickdraw grafPort for the printing context but
 *    can only obtain a Quartz graphics context (CGContextRef). This
 *    function should be used in conjunction with
 *    PMSessionGetCGGraphicsContext instead of
 *    PMSessionGetGraphicsContext.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.4 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.4 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionBeginCGDocument( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat ): OSStatus; external name '_PMSessionBeginCGDocument';
(* AVAILABLE_MAC_OS_X_VERSION_10_4_AND_LATER *)
>>>>>>> graemeg/cpstrnew

{
 *  PMSessionEndDocument()
=======
 *  
 *  Summary:
 *    Begin a new print job that uses only drawing to a CoreGraphics
 *    context.
 *  
 *  Discussion:
 *    This is an updated version of the function
 *    PMSessionBeginDocument. The functionality is identical to
 *    PMSessionBeginDocument except that during a print job, the caller
 *    cannot obtain a Quickdraw grafPort for the printing context but
 *    can only obtain a Quartz graphics context (CGContextRef). This
 *    function should be used in conjunction with
 *    PMSessionGetCGGraphicsContext instead of
 *    PMSessionGetGraphicsContext.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.4 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.4 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionBeginCGDocument( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat ): OSStatus; external name '_PMSessionBeginCGDocument';
(* AVAILABLE_MAC_OS_X_VERSION_10_4_AND_LATER *)
=======
uses MacTypes,Quickdraw,PMDefinitions,PMCore,Dialogs;


{$ALIGN MAC68K}

{ Callbacks }

type
{$ifc TYPED_FUNCTION_POINTERS}
	PMItemProcPtr = procedure(theDialog: DialogRef; item: SInt16);
{$elsec}
	PMItemProcPtr = ProcPtr;
{$endc}

{$ifc TYPED_FUNCTION_POINTERS}
	PMPrintDialogInitProcPtr = procedure(printSettings: PMPrintSettings; var theDialog: PMDialog);
{$elsec}
	PMPrintDialogInitProcPtr = ProcPtr;
{$endc}

{$ifc TYPED_FUNCTION_POINTERS}
	PMPageSetupDialogInitProcPtr = procedure(pageFormat: PMPageFormat; var theDialog: PMDialog);
{$elsec}
	PMPageSetupDialogInitProcPtr = ProcPtr;
{$endc}

{$ifc TYPED_FUNCTION_POINTERS}
	PMSheetDoneProcPtr = procedure(printSession: PMPrintSession; documentWindow: WindowRef; accepted: boolean);
{$elsec}
	PMSheetDoneProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	PMItemUPP = ^SInt32; { an opaque UPP }
{$elsec}
	PMItemUPP = UniversalProcPtr;
{$endc}	
{$ifc OPAQUE_UPP_TYPES}
	PMPrintDialogInitUPP = ^SInt32; { an opaque UPP }
{$elsec}
	PMPrintDialogInitUPP = UniversalProcPtr;
{$endc}	
{$ifc OPAQUE_UPP_TYPES}
	PMPageSetupDialogInitUPP = ^SInt32; { an opaque UPP }
{$elsec}
	PMPageSetupDialogInitUPP = UniversalProcPtr;
{$endc}	
{$ifc OPAQUE_UPP_TYPES}
	PMSheetDoneUPP = ^SInt32; { an opaque UPP }
{$elsec}
	PMSheetDoneUPP = UniversalProcPtr;
{$endc}	

const
	uppPMItemProcInfo = $000002C0;
	uppPMPrintDialogInitProcInfo = $000003C0;
	uppPMPageSetupDialogInitProcInfo = $000003C0;
	uppPMSheetDoneProcInfo = $000007C0;
	{
	 *  NewPMItemUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   not available
	 *    CarbonLib:        in CarbonLib 1.0 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function NewPMItemUPP(userRoutine: PMItemProcPtr): PMItemUPP; external name '_NewPMItemUPP';
{
 *  NewPMPrintDialogInitUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewPMPrintDialogInitUPP(userRoutine: PMPrintDialogInitProcPtr): PMPrintDialogInitUPP; external name '_NewPMPrintDialogInitUPP';
{
 *  NewPMPageSetupDialogInitUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewPMPageSetupDialogInitUPP(userRoutine: PMPageSetupDialogInitProcPtr): PMPageSetupDialogInitUPP; external name '_NewPMPageSetupDialogInitUPP';
{
 *  NewPMSheetDoneUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewPMSheetDoneUPP(userRoutine: PMSheetDoneProcPtr): PMSheetDoneUPP; external name '_NewPMSheetDoneUPP';
{
 *  DisposePMItemUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposePMItemUPP(userUPP: PMItemUPP); external name '_DisposePMItemUPP';
{
 *  DisposePMPrintDialogInitUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposePMPrintDialogInitUPP(userUPP: PMPrintDialogInitUPP); external name '_DisposePMPrintDialogInitUPP';
{
 *  DisposePMPageSetupDialogInitUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposePMPageSetupDialogInitUPP(userUPP: PMPageSetupDialogInitUPP); external name '_DisposePMPageSetupDialogInitUPP';
{
 *  DisposePMSheetDoneUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposePMSheetDoneUPP(userUPP: PMSheetDoneUPP); external name '_DisposePMSheetDoneUPP';
{
 *  InvokePMItemUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokePMItemUPP(theDialog: DialogRef; item: SInt16; userRoutine: PMItemUPP); external name '_InvokePMItemUPP';
{
 *  InvokePMPrintDialogInitUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokePMPrintDialogInitUPP(printSettings: PMPrintSettings; var theDialog: PMDialog; userRoutine: PMPrintDialogInitUPP); external name '_InvokePMPrintDialogInitUPP';
{
 *  InvokePMPageSetupDialogInitUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokePMPageSetupDialogInitUPP(pageFormat: PMPageFormat; var theDialog: PMDialog; userRoutine: PMPageSetupDialogInitUPP); external name '_InvokePMPageSetupDialogInitUPP';
{
 *  InvokePMSheetDoneUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokePMSheetDoneUPP(printSession: PMPrintSession; documentWindow: WindowRef; accepted: boolean; userRoutine: PMSheetDoneUPP); external name '_InvokePMSheetDoneUPP';
{$ifc PM_USE_SESSION_APIS}
{ Print loop }
{
 *  PMSessionBeginDocument()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionBeginDocument(printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat): OSStatus; external name '_PMSessionBeginDocument';
>>>>>>> graemeg/fixes_2_2

{
 *  PMSessionEndDocument()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionEndDocument( printSession: PMPrintSession ): OSStatus; external name '_PMSessionEndDocument';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionBeginPage()
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
<<<<<<< HEAD
 }
<<<<<<< HEAD
function PMSessionEndPage( printSession: PMPrintSession ): OSStatus; external name '_PMSessionEndPage';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

(*
#pragma mark
#pragma mark Dialogs
#pragma mark
*)

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionEndDocument(printSession: PMPrintSession): OSStatus; external name '_PMSessionEndDocument';

{
 *  PMSessionBeginPage()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionBeginPage(printSession: PMPrintSession; pageFormat: PMPageFormat; pageFrame: PMRectPtr): OSStatus; external name '_PMSessionBeginPage';

{
 *  PMSessionEndPage()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionEndPage(printSession: PMPrintSession): OSStatus; external name '_PMSessionEndPage';

{ Session Printing Dialogs }
>>>>>>> graemeg/fixes_2_2
{
 *  PMSessionPageSetupDialog()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionPageSetupDialog( printSession: PMPrintSession; pageFormat: PMPageFormat; var accepted: Boolean ): OSStatus; external name '_PMSessionPageSetupDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionPrintDialog()
=======
function PMSessionEndDocument( printSession: PMPrintSession ): OSStatus; external name '_PMSessionEndDocument';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionBeginPage()
>>>>>>> graemeg/cpstrnew
=======
 }
function PMSessionBeginPage( printSession: PMPrintSession; pageFormat: PMPageFormat; pageFrame: PMRectPtr ): OSStatus; external name '_PMSessionBeginPage';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionEndPage()
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
<<<<<<< HEAD
<<<<<<< HEAD
function PMSessionPrintDialog( printSession: PMPrintSession; printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: Boolean ): OSStatus; external name '_PMSessionPrintDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionUseSheets()
 *  
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.2 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionUseSheets( printSession: PMPrintSession; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMSessionUseSheets';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

{
 *  PMShowPageSetupDialogAsSheet()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPageSetupDialogAsSheet( printSession: PMPrintSession; pageFormat: PMPageFormat; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMShowPageSetupDialogAsSheet';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)


{
 *  PMShowPrintDialogWithOptions()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPrintDialogWithOptions( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat; printDialogOptions: PMPrintDialogOptionFlags; var accepted: Boolean ): OSStatus; external name '_PMShowPrintDialogWithOptions';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)

{
 *  PMShowPrintDialogWithOptionsAsSheet()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPrintDialogWithOptionsAsSheet( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat; printDialogOptions: PMPrintDialogOptionFlags; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMShowPrintDialogWithOptionsAsSheet';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)

(*
#pragma mark
#pragma mark Presets
#pragma mark
*)

{ Presets }
{
 *  PMSessionEnablePrinterPresets()
 *  
 *  Summary:
 *    Enable the use of printer presets in the print dialog.
<<<<<<< HEAD
 *  
 *  Discussion:
 *    Displaying the print dialog on a session after making this call
 *    will show the presets available for the specified graphics type.
 *  
 *  Parameters:
 *    
 *    session:
 *      The session that will be used to present the print dialog.
 *    
 *    graphicsType:
 *      The printer presets in the dialog should be suitable for
 *      rendering this type of graphic. Currently defined graphics
 *      types are: "Photo"
 *  
 *  Availability:
 *    Mac OS X:         in version 10.2 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.2 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionEnablePrinterPresets( session: PMPrintSession; graphicsType: CFStringRef ): OSStatus; external name '_PMSessionEnablePrinterPresets';
(* AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER *)

{
 *  PMSessionDisablePrinterPresets()
 *  
 *  Summary:
 *    Disable the use of printer presets in the print dialog.
 *  
 *  Parameters:
 *    
 *    session:
 *      The session that will be used to present the print dialog.
 *  
=======
=======
function PMSessionBeginPage( printSession: PMPrintSession; pageFormat: PMPageFormat; pageFrame: PMRectPtr ): OSStatus; external name '_PMSessionBeginPage';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionEndPage()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionEndPage( printSession: PMPrintSession ): OSStatus; external name '_PMSessionEndPage';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

(*
#pragma mark
#pragma mark Dialogs
#pragma mark
*)

{
 *  PMSessionPageSetupDialog()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionPageSetupDialog( printSession: PMPrintSession; pageFormat: PMPageFormat; var accepted: Boolean ): OSStatus; external name '_PMSessionPageSetupDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionPrintDialog()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionPrintDialog( printSession: PMPrintSession; printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: Boolean ): OSStatus; external name '_PMSessionPrintDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionUseSheets()
 *  
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.2 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionUseSheets( printSession: PMPrintSession; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMSessionUseSheets';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

{
 *  PMShowPageSetupDialogAsSheet()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPageSetupDialogAsSheet( printSession: PMPrintSession; pageFormat: PMPageFormat; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMShowPageSetupDialogAsSheet';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)


{
 *  PMShowPrintDialogWithOptions()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPrintDialogWithOptions( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat; printDialogOptions: PMPrintDialogOptionFlags; var accepted: Boolean ): OSStatus; external name '_PMShowPrintDialogWithOptions';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)

{
 *  PMShowPrintDialogWithOptionsAsSheet()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPrintDialogWithOptionsAsSheet( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat; printDialogOptions: PMPrintDialogOptionFlags; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMShowPrintDialogWithOptionsAsSheet';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)

(*
#pragma mark
#pragma mark Presets
#pragma mark
*)

{ Presets }
{
 *  PMSessionEnablePrinterPresets()
 *  
 *  Summary:
 *    Enable the use of printer presets in the print dialog.
>>>>>>> graemeg/cpstrnew
 *  
 *  Discussion:
 *    Displaying the print dialog on a session after making this call
 *    will show the presets available for the specified graphics type.
 *  
=======
function PMSessionEndPage( printSession: PMPrintSession ): OSStatus; external name '_PMSessionEndPage';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

(*
#pragma mark
#pragma mark Dialogs
#pragma mark
*)

{
 *  PMSessionPageSetupDialog()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionPageSetupDialog( printSession: PMPrintSession; pageFormat: PMPageFormat; var accepted: Boolean ): OSStatus; external name '_PMSessionPageSetupDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionPrintDialog()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionPrintDialog( printSession: PMPrintSession; printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: Boolean ): OSStatus; external name '_PMSessionPrintDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  PMSessionUseSheets()
 *  
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        in CarbonLib 1.2 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionUseSheets( printSession: PMPrintSession; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMSessionUseSheets';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

{
 *  PMShowPageSetupDialogAsSheet()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPageSetupDialogAsSheet( printSession: PMPrintSession; pageFormat: PMPageFormat; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMShowPageSetupDialogAsSheet';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)


{
 *  PMShowPrintDialogWithOptions()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPrintDialogWithOptions( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat; printDialogOptions: PMPrintDialogOptionFlags; var accepted: Boolean ): OSStatus; external name '_PMShowPrintDialogWithOptions';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)

{
 *  PMShowPrintDialogWithOptionsAsSheet()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function PMShowPrintDialogWithOptionsAsSheet( printSession: PMPrintSession; printSettings: PMPrintSettings; pageFormat: PMPageFormat; printDialogOptions: PMPrintDialogOptionFlags; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP ): OSStatus; external name '_PMShowPrintDialogWithOptionsAsSheet';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)

(*
#pragma mark
#pragma mark Presets
#pragma mark
*)

{ Presets }
{
 *  PMSessionEnablePrinterPresets()
 *  
 *  Summary:
 *    Enable the use of printer presets in the print dialog.
 *  
 *  Discussion:
 *    Displaying the print dialog on a session after making this call
 *    will show the presets available for the specified graphics type.
 *  
 *  Parameters:
 *    
 *    session:
 *      The session that will be used to present the print dialog.
 *    
 *    graphicsType:
 *      The printer presets in the dialog should be suitable for
 *      rendering this type of graphic. Currently defined graphics
 *      types are: "Photo"
 *  
 *  Availability:
 *    Mac OS X:         in version 10.2 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.2 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionEnablePrinterPresets( session: PMPrintSession; graphicsType: CFStringRef ): OSStatus; external name '_PMSessionEnablePrinterPresets';
(* AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER *)

{
 *  PMSessionDisablePrinterPresets()
 *  
 *  Summary:
 *    Disable the use of printer presets in the print dialog.
 *  
>>>>>>> origin/cpstrnew
 *  Parameters:
 *    
 *    session:
 *      The session that will be used to present the print dialog.
<<<<<<< HEAD
 *    
 *    graphicsType:
 *      The printer presets in the dialog should be suitable for
 *      rendering this type of graphic. Currently defined graphics
 *      types are: "Photo"
=======
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.2 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.2 and later
 *    Non-Carbon CFM:   not available
 }
<<<<<<< HEAD
function PMSessionEnablePrinterPresets( session: PMPrintSession; graphicsType: CFStringRef ): OSStatus; external name '_PMSessionEnablePrinterPresets';
(* AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER *)

{
 *  PMSessionDisablePrinterPresets()
 *  
 *  Summary:
 *    Disable the use of printer presets in the print dialog.
 *  
 *  Parameters:
 *    
 *    session:
 *      The session that will be used to present the print dialog.
 *  
>>>>>>> graemeg/cpstrnew
 *  Availability:
 *    Mac OS X:         in version 10.2 and later in Carbon.framework  [32-bit only]
 *    CarbonLib:        not available in CarbonLib 1.x, is available on Mac OS X version 10.2 and later
 *    Non-Carbon CFM:   not available
 }
function PMSessionDisablePrinterPresets( session: PMPrintSession ): OSStatus; external name '_PMSessionDisablePrinterPresets';
(* AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER *)

=======
function PMSessionDisablePrinterPresets( session: PMPrintSession ): OSStatus; external name '_PMSessionDisablePrinterPresets';
(* AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER *)

>>>>>>> origin/cpstrnew
{$endc} {PM_USE_SESSION_APIS}

{$endc} {not TARGET_CPU_64}

{$endc} {TARGET_OS_MAC}
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionPageSetupDialog(printSession: PMPrintSession; pageFormat: PMPageFormat; var accepted: boolean): OSStatus; external name '_PMSessionPageSetupDialog';

{
 *  PMSessionPrintDialog()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionPrintDialog(printSession: PMPrintSession; printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: boolean): OSStatus; external name '_PMSessionPrintDialog';

{
 *  PMSessionPageSetupDialogInit()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionPageSetupDialogInit(printSession: PMPrintSession; pageFormat: PMPageFormat; var newDialog: PMDialog): OSStatus; external name '_PMSessionPageSetupDialogInit';

{
 *  PMSessionPrintDialogInit()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionPrintDialogInit(printSession: PMPrintSession; printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var newDialog: PMDialog): OSStatus; external name '_PMSessionPrintDialogInit';

{
 *  PMSessionPrintDialogMain()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionPrintDialogMain(printSession: PMPrintSession; printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: boolean; myInitProc: PMPrintDialogInitUPP): OSStatus; external name '_PMSessionPrintDialogMain';

{
 *  PMSessionPageSetupDialogMain()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionPageSetupDialogMain(printSession: PMPrintSession; pageFormat: PMPageFormat; var accepted: boolean; myInitProc: PMPageSetupDialogInitUPP): OSStatus; external name '_PMSessionPageSetupDialogMain';

{**********************}
{  Sheets are not available on classic. }
{**********************}
{
 *  PMSessionUseSheets()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.2 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSessionUseSheets(printSession: PMPrintSession; documentWindow: WindowRef; sheetDoneProc: PMSheetDoneUPP): OSStatus; external name '_PMSessionUseSheets';

{$elsec}
{ Print loop }
{
 *  PMBeginDocument()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMBeginDocument(printSettings: PMPrintSettings; pageFormat: PMPageFormat; var printContext: PMPrintContext): OSStatus; external name '_PMBeginDocument';

{
 *  PMEndDocument()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMEndDocument(printContext: PMPrintContext): OSStatus; external name '_PMEndDocument';

{
 *  PMBeginPage()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMBeginPage(printContext: PMPrintContext; const (*var*) pageFrame: PMRect): OSStatus; external name '_PMBeginPage';

{
 *  PMEndPage()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMEndPage(printContext: PMPrintContext): OSStatus; external name '_PMEndPage';

{ Printing Dialogs }
{
 *  PMPageSetupDialog()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPageSetupDialog(pageFormat: PMPageFormat; var accepted: boolean): OSStatus; external name '_PMPageSetupDialog';

{
 *  PMPrintDialog()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPrintDialog(printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: boolean): OSStatus; external name '_PMPrintDialog';

{
 *  PMPageSetupDialogInit()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPageSetupDialogInit(pageFormat: PMPageFormat; var newDialog: PMDialog): OSStatus; external name '_PMPageSetupDialogInit';

{**********************}
{  PMPrintDialogInit is not recommended. You should instead use }
{  PMPrintDialogInitWithPageFormat or PMSessionPrintDialogInit }
{**********************}
{
 *  PMPrintDialogInit()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPrintDialogInit(printSettings: PMPrintSettings; var newDialog: PMDialog): OSStatus; external name '_PMPrintDialogInit';

{
 *  PMPrintDialogInitWithPageFormat()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPrintDialogInitWithPageFormat(printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var newDialog: PMDialog): OSStatus; external name '_PMPrintDialogInitWithPageFormat';

{
 *  PMPrintDialogMain()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPrintDialogMain(printSettings: PMPrintSettings; constPageFormat: PMPageFormat; var accepted: boolean; myInitProc: PMPrintDialogInitUPP): OSStatus; external name '_PMPrintDialogMain';

{
 *  PMPageSetupDialogMain()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMPageSetupDialogMain(pageFormat: PMPageFormat; var accepted: boolean; myInitProc: PMPageSetupDialogInitUPP): OSStatus; external name '_PMPageSetupDialogMain';

{$endc}  {PM_USE_SESSION_APIS}

{ Printing Dialog accessors }
{
 *  PMGetDialogPtr()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMGetDialogPtr(pmDialog_: PMDialog; var theDialog: DialogRef): OSStatus; external name '_PMGetDialogPtr';

{
 *  PMGetModalFilterProc()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMGetModalFilterProc(pmDialog_: PMDialog; var filterProc: ModalFilterUPP): OSStatus; external name '_PMGetModalFilterProc';

{
 *  PMSetModalFilterProc()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSetModalFilterProc(pmDialog_: PMDialog; filterProc: ModalFilterUPP): OSStatus; external name '_PMSetModalFilterProc';

{
 *  PMGetItemProc()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMGetItemProc(pmDialog_: PMDialog; var itemProc: PMItemUPP): OSStatus; external name '_PMGetItemProc';

{
 *  PMSetItemProc()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSetItemProc(pmDialog_: PMDialog; itemProc: PMItemUPP): OSStatus; external name '_PMSetItemProc';

{
 *  PMGetDialogAccepted()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMGetDialogAccepted(pmDialog_: PMDialog; var process: boolean): OSStatus; external name '_PMGetDialogAccepted';

{
 *  PMSetDialogAccepted()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSetDialogAccepted(pmDialog_: PMDialog; process: boolean): OSStatus; external name '_PMSetDialogAccepted';

{
 *  PMGetDialogDone()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMGetDialogDone(pmDialog_: PMDialog; var done: boolean): OSStatus; external name '_PMGetDialogDone';

{
 *  PMSetDialogDone()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function PMSetDialogDone(pmDialog_: PMDialog; done: boolean): OSStatus; external name '_PMSetDialogDone';

{$ALIGN MAC68K}


end.
>>>>>>> graemeg/fixes_2_2
