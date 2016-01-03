{
<<<<<<< HEAD
     File:       QuickTime/QTML.h
 
     Contains:   QuickTime Cross-platform specific interfaces
 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     Version:    QuickTime 7.7.1
 
     Copyright:  © 1997-2012 by Apple Inc., all rights reserved.
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1997-2008 by Apple Inc., all rights reserved.
>>>>>>> graemeg/cpstrnew
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1997-2008 by Apple Inc., all rights reserved.
>>>>>>> graemeg/cpstrnew
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1997-2008 by Apple Inc., all rights reserved.
>>>>>>> graemeg/cpstrnew
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1997-2008 by Apple Inc., all rights reserved.
>>>>>>> origin/cpstrnew
=======
     File:       QTML.p
 
     Contains:   QuickTime Cross-platform specific interfaces
 
     Version:    Technology: QuickTime 5.0
                 Release:    Universal Interfaces 3.4.2
 
     Copyright:  © 1997-2002 by Apple Computer, Inc., all rights reserved.
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
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
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

unit QTML;
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
=======
>>>>>>> graemeg/cpstrnew
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
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
=======
>>>>>>> origin/cpstrnew
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
{$elifc defined __ppc64__ and __ppc64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := TRUE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
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
<<<<<<< HEAD
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
	{$setc TARGET_OS_EMBEDDED := FALSE}
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
=======
{$elsec}
	{$error __ppc__ nor __ppc64__ nor __i386__ nor __x86_64__ nor __arm__ is defined.}
>>>>>>> graemeg/cpstrnew
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
<<<<<<< HEAD
{$elsec}
=======
{$elsec}
	{$error __ppc__ nor __ppc64__ nor __i386__ nor __x86_64__ nor __arm__ is defined.}
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
{$elsec}
>>>>>>> graemeg/cpstrnew
=======
{$elsec}
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
<<<<<<< HEAD
uses MacTypes;
{$endc} {not MACOSALLINCLUDE}
<<<<<<< HEAD
=======

>>>>>>> origin/cpstrnew

{$ifc TARGET_OS_MAC}

<<<<<<< HEAD
{$ifc TARGET_OS_MAC}

{ QuickTime is not available to 64-bit clients }

=======
{ QuickTime is not available to 64-bit clients }

>>>>>>> origin/cpstrnew
{$ifc not TARGET_CPU_64}
=======
uses MacTypes,Quickdraw,Events,MacMemory,MacWindows,OSUtils,Files;


{$ALIGN MAC68K}

{$ifc CALL_NOT_IN_CARBON}
>>>>>>> graemeg/fixes_2_2
{
 *  QTMLYieldCPU()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 3.0 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLYieldCPU; external name '_QTMLYieldCPU';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ QTMLYieldCPUTime flags}
const
	kQTMLHandlePortEvents = 1 shl 0; { ask for event handling during the yield}
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLYieldCPU; external name '_QTMLYieldCPU';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLYieldCPUTime()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 3.0 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLYieldCPUTime( milliSeconds: SIGNEDLONG; flags: UNSIGNEDLONG ); external name '_QTMLYieldCPUTime';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


type
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	QTMLMutex = ^OpaqueQTMLMutex; { an opaque type }
	OpaqueQTMLMutex = record end;
	QTMLMutexPtr = ^QTMLMutex; { when a var xx:QTMLMutex parameter can be nil, it is changed to xx: QTMLMutexPtr }
	QTMLSyncVar = ^OpaqueQTMLSyncVar; { an opaque type }
	OpaqueQTMLSyncVar = record end;
=======
	QTMLMutex = ^SInt32; { an opaque type }
	QTMLMutexPtr = ^QTMLMutex; { when a var xx:QTMLMutex parameter can be nil, it is changed to xx: QTMLMutexPtr }
	QTMLSyncVar = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	QTMLMutex = ^SInt32; { an opaque type }
	QTMLMutexPtr = ^QTMLMutex; { when a var xx:QTMLMutex parameter can be nil, it is changed to xx: QTMLMutexPtr }
	QTMLSyncVar = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	QTMLMutex = ^SInt32; { an opaque type }
	QTMLMutexPtr = ^QTMLMutex; { when a var xx:QTMLMutex parameter can be nil, it is changed to xx: QTMLMutexPtr }
	QTMLSyncVar = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	QTMLMutex = ^SInt32; { an opaque type }
	QTMLMutexPtr = ^QTMLMutex; { when a var xx:QTMLMutex parameter can be nil, it is changed to xx: QTMLMutexPtr }
	QTMLSyncVar = ^SInt32; { an opaque type }
>>>>>>> origin/cpstrnew
	QTMLSyncVarPtr = ^QTMLSyncVar;  { when a var xx:QTMLSyncVar parameter can be nil, it is changed to xx: QTMLSyncVarPtr }
{ InitializeQTML flags}
const
	kInitializeQTMLNoSoundFlag = 1 shl 0; { flag for requesting no sound when calling InitializeQTML}
	kInitializeQTMLUseGDIFlag = 1 shl 1; { flag for requesting GDI when calling InitializeQTML}
	kInitializeQTMLDisableDirectSound = 1 shl 2; { disables QTML's use of DirectSound}
	kInitializeQTMLUseExclusiveFullScreenModeFlag = 1 shl 3; { later than QTML 3.0: qtml starts up in exclusive full screen mode}
	kInitializeQTMLDisableDDClippers = 1 shl 4; { flag for requesting QTML not to use DirectDraw clipper objects; QTML 5.0 and later}
	kInitializeQTMLEnableDoubleBufferedSurface = 1 shl 6; { flag for requesting QuickTime use a double-buffered destination surface; QT6.4 and later}

{
 *  InitializeQTML()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLYieldCPUTime(milliSeconds: SInt32; flags: UInt32); external name '_QTMLYieldCPUTime';

{$endc}  {CALL_NOT_IN_CARBON}


type
	QTMLMutex    = ^SInt32; { an opaque 32-bit type }
	QTMLMutexPtr = ^QTMLMutex;  { when a var xx:QTMLMutex parameter can be nil, it is changed to xx: QTMLMutexPtr }
{$ifc NOT (TARGET_OS_MAC AND TARGET_API_MAC_OS8)}
	QTMLSyncVar    = ^SInt32; { an opaque 32-bit type }
	QTMLSyncVarPtr = ^QTMLSyncVar;  { when a var xx:QTMLSyncVar parameter can be nil, it is changed to xx: QTMLSyncVarPtr }

const
	kInitializeQTMLNoSoundFlag	= $00000001;					{  flag for requesting no sound when calling InitializeQTML }
	kInitializeQTMLUseGDIFlag	= $00000002;					{  flag for requesting GDI when calling InitializeQTML }
	kInitializeQTMLDisableDirectSound = $00000004;				{  disables QTML's use of DirectSound }
	kInitializeQTMLUseExclusiveFullScreenModeFlag = $00000008;	{  later than QTML 3.0: qtml starts up in exclusive full screen mode }
	kInitializeQTMLDisableDDClippers = $00000010;				{  flag for requesting QTML not to use DirectDraw clipper objects; QTML 5.0 and later }

	kQTMLHandlePortEvents		= $00000001;					{  flag for requesting requesting QTML to handle events }
	kQTMLNoIdleEvents			= $00000002;					{  flag for requesting requesting QTML not to send Idle Events }

{$ifc CALL_NOT_IN_CARBON}
	{
	 *  InitializeQTML()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   not available
	 *    CarbonLib:        not available
	 *    Mac OS X:         not available
	 *    Windows:          in qtmlClient.lib 3.0 and later
	 	}
function InitializeQTML(flag: SInt32): OSErr; external name '_InitializeQTML';
>>>>>>> graemeg/fixes_2_2

{
 *  TerminateQTML()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }


{ CreatePortAssociation flags}
const
	kQTMLNoIdleEvents = 1 shl 1; { ask for a non-auto-idled port to be created}
	kQTMLNoDoubleBufferPort = 1 shl 2; { ask for QTML not to double-buffer this port}

const
	kQTMLIsDoubleBuffered = 'UsesDoubleBuffer';
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure TerminateQTML; external name '_TerminateQTML';


>>>>>>> graemeg/fixes_2_2
{
 *  CreatePortAssociation()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function CreatePortAssociation(theWnd: UnivPtr; storage: Ptr; flags: SInt32): GrafPtr; external name '_CreatePortAssociation';
>>>>>>> graemeg/fixes_2_2

{
 *  DestroyPortAssociation()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure DestroyPortAssociation(cgp: CGrafPtr); external name '_DestroyPortAssociation';
>>>>>>> graemeg/fixes_2_2


{
 *  QTMLGrabMutex()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 3.0 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLGrabMutex( mu: QTMLMutex ); external name '_QTMLGrabMutex';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLGrabMutex(mu: QTMLMutex); external name '_QTMLGrabMutex';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLTryGrabMutex()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 4.1 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 4.1 and later
 }
function QTMLTryGrabMutex( mu: QTMLMutex ): Boolean; external name '_QTMLTryGrabMutex';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 4.1 and later
 }
function QTMLTryGrabMutex(mu: QTMLMutex): boolean; external name '_QTMLTryGrabMutex';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLReturnMutex()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 3.0 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLReturnMutex( mu: QTMLMutex ); external name '_QTMLReturnMutex';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLReturnMutex(mu: QTMLMutex); external name '_QTMLReturnMutex';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLCreateMutex()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 3.0 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLCreateMutex: QTMLMutex; external name '_QTMLCreateMutex';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLCreateMutex: QTMLMutex; external name '_QTMLCreateMutex';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLDestroyMutex()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 3.0 and later
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLDestroyMutex( mu: QTMLMutex ); external name '_QTMLDestroyMutex';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLDestroyMutex(mu: QTMLMutex); external name '_QTMLDestroyMutex';
>>>>>>> graemeg/fixes_2_2


{
 *  QTMLCreateSyncVar()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLCreateSyncVar: QTMLSyncVarPtr; external name '_QTMLCreateSyncVar';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLDestroySyncVar()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLDestroySyncVar(p: QTMLSyncVarPtr); external name '_QTMLDestroySyncVar';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLTestAndSetSyncVar()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLTestAndSetSyncVar(sync: QTMLSyncVarPtr): SInt32; external name '_QTMLTestAndSetSyncVar';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLWaitAndSetSyncVar()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLWaitAndSetSyncVar(sync: QTMLSyncVarPtr); external name '_QTMLWaitAndSetSyncVar';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLResetSyncVar()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLResetSyncVar(sync: QTMLSyncVarPtr); external name '_QTMLResetSyncVar';
>>>>>>> graemeg/fixes_2_2


{
 *  InitializeQHdr()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure InitializeQHdr(var qhdr_: QHdr); external name '_InitializeQHdr';
>>>>>>> graemeg/fixes_2_2

{
 *  TerminateQHdr()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure TerminateQHdr(var qhdr_: QHdr); external name '_TerminateQHdr';
>>>>>>> graemeg/fixes_2_2


{
 *  QTMLAcquireWindowList()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLAcquireWindowList; external name '_QTMLAcquireWindowList';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLReleaseWindowList()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLReleaseWindowList; external name '_QTMLReleaseWindowList';
>>>>>>> graemeg/fixes_2_2

{
   These routines are here to support "interrupt level" code
      These are dangerous routines, only use if you know what you are doing.
}

{
 *  QTMLRegisterInterruptSafeThread()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLRegisterInterruptSafeThread(threadID: UInt32; threadInfo: UnivPtr): SInt32; external name '_QTMLRegisterInterruptSafeThread';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLUnregisterInterruptSafeThread()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLUnregisterInterruptSafeThread(threadID: UInt32): SInt32; external name '_QTMLUnregisterInterruptSafeThread';
>>>>>>> graemeg/fixes_2_2


{
 *  NativeEventToMacEvent()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }


{$ifc TARGET_OS_WIN32}
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function NativeEventToMacEvent(nativeEvent: UnivPtr; var macEvent: EventRecord): SInt32; external name '_NativeEventToMacEvent';

{$endc}  {CALL_NOT_IN_CARBON}
{$ifc TARGET_OS_WIN32}
{$ifc CALL_NOT_IN_CARBON}
>>>>>>> graemeg/fixes_2_2
{
 *  WinEventToMacEvent()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function WinEventToMacEvent(winMsg: UnivPtr; var macEvent: EventRecord): SInt32; external name '_WinEventToMacEvent';

{
 *  IsTaskBarVisible()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
 *    M *    Mac OS X:         not available
 *    CarbonLib:        not available
>>>>>>> graemeg/cpstrnew
=======
 *    M *    Mac OS X:         not available
 *    CarbonLib:        not available
>>>>>>> graemeg/cpstrnew
=======
 *    M *    Mac OS X:         not available
 *    CarbonLib:        not available
>>>>>>> graemeg/cpstrnew
=======
 *    M *    Mac OS X:         not available
 *    CarbonLib:        not available
>>>>>>> origin/cpstrnew
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew

const
	kDDSurfaceLocked = 1 shl 0;
	kDDSurfaceStatic = 1 shl 1;
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

{
 *  QTGetDDObject()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

const
	kDDSurfaceLocked = 1 shl 0;
	kDDSurfaceStatic = 1 shl 1;
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew

{
 *  QTGetDDObject()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function IsTaskBarVisible: boolean; external name '_IsTaskBarVisible';

{
 *  ShowHideTaskBar()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure ShowHideTaskBar(showIt: boolean); external name '_ShowHideTaskBar';

{$endc}  {CALL_NOT_IN_CARBON}

const
	kDDSurfaceLocked			= $00000001;
	kDDSurfaceStatic			= $00000002;

{$ifc CALL_NOT_IN_CARBON}
	{
	 *  QTGetDDObject()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   not available
	 *    CarbonLib:        not available
	 *    Mac OS X:         not available
	 *    Windows:          in qtmlClient.lib 3.0 and later
	 	}
function QTGetDDObject(var lpDDObject: UnivPtr): OSErr; external name '_QTGetDDObject';
>>>>>>> graemeg/fixes_2_2

{
 *  QTSetDDObject()
 *  
 *  Availability:
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTSetDDObject(lpNewDDObject: UnivPtr): OSErr; external name '_QTSetDDObject';
>>>>>>> graemeg/fixes_2_2

{
 *  QTSetDDPrimarySurface()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTSetDDPrimarySurface(lpNewDDSurface: UnivPtr; flags: UInt32): OSErr; external name '_QTSetDDPrimarySurface';
>>>>>>> graemeg/fixes_2_2


{
 *  QTMLGetVolumeRootPath()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLGetVolumeRootPath(fullPath: CStringPtr; volumeRootPath: CStringPtr; volumeRootLen: UInt32): OSErr; external name '_QTMLGetVolumeRootPath';
>>>>>>> graemeg/fixes_2_2


{
 *  QTMLSetWindowWndProc()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
procedure QTMLSetWindowWndProc(theWindow: WindowRef; windowProc: UnivPtr); external name '_QTMLSetWindowWndProc';
>>>>>>> graemeg/fixes_2_2

{
 *  QTMLGetWindowWndProc()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }


{$endc}  { TARGET_OS_WIN32 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLGetWindowWndProc(theWindow: WindowRef): Ptr; external name '_QTMLGetWindowWndProc';

{$endc}  {CALL_NOT_IN_CARBON}
{$endc}  {TARGET_OS_WIN32}
{$ifc CALL_NOT_IN_CARBON}
>>>>>>> graemeg/fixes_2_2
{
 *  QTMLGetCanonicalPathName()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }


const
	kFullNativePath = 0;
	kFileNameOnly = 1 shl 0;
	kDirectoryPathOnly = 1 shl 1;
	kUFSFullPathName = 1 shl 2;
	kTryVDIMask = 1 shl 3; {    Used in NativePathNameToFSSpec to specify to search VDI mountpoints}
	kFullPathSpecifiedMask = 1 shl 4; {    the passed in name is a fully qualified full path}

{
 *  FSSpecToNativePathName()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }


const
	kErrorIfFileNotFound = 1 shl 31;

{
 *  NativePathNameToFSSpec()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }

=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 3.0 and later
 }
function QTMLGetCanonicalPathName(inName: CStringPtr; outName: CStringPtr; outLen: UInt32): OSErr; external name '_QTMLGetCanonicalPathName';

{$endc}  {CALL_NOT_IN_CARBON}

const
	kFullNativePath				= 0;
	kFileNameOnly				= $01;
	kDirectoryPathOnly			= $02;
	kUFSFullPathName			= $04;
	kTryVDIMask					= $08;							{     Used in NativePathNameToFSSpec to specify to search VDI mountpoints }
	kFullPathSpecifiedMask		= $10;							{     the passed in name is a fully qualified full path }

{$ifc CALL_NOT_IN_CARBON}
	{
	 *  FSSpecToNativePathName()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   not available
	 *    CarbonLib:        not available
	 *    Mac OS X:         not available
	 *    Windows:          in qtmlClient.lib 3.0 and later
	 	}
function FSSpecToNativePathName(const (*var*) inFile: FSSpec; outName: CStringPtr; outLen: UInt32; flags: SInt32): OSErr; external name '_FSSpecToNativePathName';

{$endc}  {CALL_NOT_IN_CARBON}

const
	kErrorIfFileNotFound		= $80000000;

{$ifc CALL_NOT_IN_CARBON}
	{
	 *  NativePathNameToFSSpec()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   not available
	 *    CarbonLib:        not available
	 *    Mac OS X:         not available
	 *    Windows:          in qtmlClient.lib 3.0 and later
	 	}
function NativePathNameToFSSpec(inName: CStringPtr; var outFile: FSSpec; flags: SInt32): OSErr; external name '_NativePathNameToFSSpec';
>>>>>>> graemeg/fixes_2_2

{
 *  QTGetAliasInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *    Windows:          in qtmlClient.lib 5.0 and later
 }

{$endc} {not TARGET_CPU_64}

{$endc} {TARGET_OS_MAC}

{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 *    Windows:          in qtmlClient.lib 5.0 and later
 }
function QTGetAliasInfo(alias: AliasHandle; index: AliasInfoType; outBuf: CStringPtr; bufLen: SInt32; var outLen: SInt32; flags: UInt32): OSErr; external name '_QTGetAliasInfo';

{$endc}  {CALL_NOT_IN_CARBON}
{$endc}

{$ALIGN MAC68K}


end.
>>>>>>> graemeg/fixes_2_2
