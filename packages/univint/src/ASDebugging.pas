{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     File:       OpenScripting/ASDebugging.h
 
     Contains:   AppleScript Debugging Interfaces.
 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     Version:    OSA-148~28
=======
     Version:    OSA-136~14
>>>>>>> graemeg/cpstrnew
=======
     Version:    OSA-136~14
>>>>>>> graemeg/cpstrnew
=======
     Version:    OSA-136~14
>>>>>>> graemeg/cpstrnew
=======
     Version:    OSA-136~14
>>>>>>> origin/cpstrnew
 
     Copyright:  � 1992-2008 by Apple Computer, Inc., all rights reserved
=======
=======
>>>>>>> origin/fixes_2_2
     File:       ASDebugging.p
=======
     File:       OpenScripting/ASDebugging.h
>>>>>>> origin/fixes_2.4
=======
     File:       OpenScripting/ASDebugging.h
>>>>>>> origin/cpstrnew
 
     Contains:   AppleScript Debugging Interfaces.
 
     Version:    OSA-136~14
 
<<<<<<< HEAD
<<<<<<< HEAD
     Copyright:  � 1992-2002 by Apple Computer, Inc., all rights reserved
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
     Copyright:  � 1992-2008 by Apple Computer, Inc., all rights reserved
>>>>>>> origin/fixes_2.4
=======
     Copyright:  � 1992-2008 by Apple Computer, Inc., all rights reserved
>>>>>>> origin/cpstrnew
 
     Bugs?:      For bug reports, consult the following page on
                 the World Wide Web:
 
<<<<<<< HEAD
<<<<<<< HEAD
                     http://bugs.freepascal.org
 
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{  Pascal Translation Updated: Gorazd Krosl <gorazd_1957@yahoo.ca>, October 2009 }
{  Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2012 }
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{ Pascal Translation Updated: Gorazd Krosl <gorazd_1957@yahoo.ca>, October 2009 }

>>>>>>> graemeg/cpstrnew
{
    Modified for use with Free Pascal
    Version 308
    Please report any bugs to <gpc@microbizz.nl>
}

{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}
=======
=======
>>>>>>> origin/fixes_2_2
                     http://www.freepascal.org/bugs.html
 
}

{ Pascal Translation Updated: Gorazd Krosl <gorazd_1957@yahoo.ca>, October 2009 }

{
    Modified for use with Free Pascal
    Version 308
    Please report any bugs to <gpc@microbizz.nl>
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}
>>>>>>> origin/fixes_2.4
=======
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}
>>>>>>> origin/cpstrnew
{$mode macpas}
{$packenum 1}
{$macro on}
{$inline on}
{$calling mwpascal}

unit ASDebugging;
interface
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$setc UNIVERSAL_INTERFACES_VERSION := $0400}
{$setc GAP_INTERFACES_VERSION := $0308}
=======
{$setc UNIVERSAL_INTERFACES_VERSION := $0342}
{$setc GAP_INTERFACES_VERSION := $0210}
>>>>>>> graemeg/fixes_2_2
=======
{$setc UNIVERSAL_INTERFACES_VERSION := $0342}
{$setc GAP_INTERFACES_VERSION := $0210}
>>>>>>> origin/fixes_2_2
=======
{$setc UNIVERSAL_INTERFACES_VERSION := $0400}
{$setc GAP_INTERFACES_VERSION := $0308}
>>>>>>> origin/fixes_2.4
=======
{$setc UNIVERSAL_INTERFACES_VERSION := $0400}
{$setc GAP_INTERFACES_VERSION := $0308}
>>>>>>> origin/cpstrnew

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$ifc not defined __ppc__ and defined CPUPOWERPC32}
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC}
>>>>>>> graemeg/fixes_2_2
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC}
>>>>>>> origin/fixes_2_2
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC32}
>>>>>>> origin/fixes_2.4
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC32}
>>>>>>> origin/cpstrnew
	{$setc __ppc__ := 1}
{$elsec}
	{$setc __ppc__ := 0}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{$ifc not defined __ppc64__ and defined CPUPOWERPC64}
	{$setc __ppc64__ := 1}
{$elsec}
	{$setc __ppc64__ := 0}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{$ifc not defined __i386__ and defined CPUI386}
	{$setc __i386__ := 1}
{$elsec}
	{$setc __i386__ := 0}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
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
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew

{$ifc defined cpu64}
  {$setc __LP64__ := 1}
{$elsec}
  {$setc __LP64__ := 0}
{$endc}

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew

{$ifc defined __ppc__ and __ppc__ and defined __i386__ and __i386__}
	{$error Conflicting definitions for __ppc__ and __i386__}
{$endc}

{$ifc defined __ppc__ and __ppc__}
	{$setc TARGET_CPU_PPC := TRUE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
	{$setc TARGET_CPU_PPC64 := FALSE}
>>>>>>> origin/cpstrnew
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
>>>>>>> origin/cpstrnew
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
=======
>>>>>>> origin/cpstrnew
{$ifc defined(iphonesim)}
 	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := TRUE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
<<<<<<< HEAD
	{$setc TARGET_OS_EMBEDDED := FALSE}
=======
>>>>>>> graemeg/cpstrnew
{$elifc defined __x86_64__ and __x86_64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := TRUE}
	{$setc TARGET_CPU_ARM := FALSE}
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
{$elifc defined __arm__ and __arm__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := TRUE}
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
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
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
=======
{$elsec}
=======
{$elsec}
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
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
=======
>>>>>>> origin/fixes_2_2
=======
	{$setc TARGET_CPU_PPC64 := FALSE}
>>>>>>> origin/fixes_2.4
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
{$elifc defined __i386__ and __i386__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := TRUE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
{$ifc defined(iphonesim)}
 	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := TRUE}
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
  {$setc TARGET_CPU_64 := FALSE}
{$endc}
<<<<<<< HEAD
{$setc TARGET_CPU_PPC_64 := FALSE}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
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
  {$setc TARGET_CPU_64 := FALSE}
{$endc}
>>>>>>> origin/cpstrnew

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
{$setc TARGET_OS_MAC := TRUE}
>>>>>>> graemeg/fixes_2_2
=======
{$setc TARGET_OS_MAC := TRUE}
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
uses MacTypes,AEDataModel,OSA,Files,Components,AppleEvents,AppleScript,CFBase,CFData,CFURL;
{$endc} {not MACOSALLINCLUDE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

{$ifc TARGET_OS_MAC}

<<<<<<< HEAD
{$ALIGN POWER}
=======
>>>>>>> graemeg/cpstrnew

<<<<<<< HEAD
=======
{$ifc TARGET_OS_MAC}
=======
>>>>>>> origin/cpstrnew

<<<<<<< HEAD
{$ALIGN POWER}

<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{$ifc TARGET_OS_MAC}

{$ALIGN POWER}

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
=======
=======
>>>>>>> origin/fixes_2_2
uses MacTypes,AEDataModel,OSA,Files,Components,AppleEvents,AppleScript;


{$ALIGN MAC68K}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
uses MacTypes,AEDataModel,OSA,Files,Components,AppleEvents,AppleScript,CFBase,CFData,CFURL;
{$endc} {not MACOSALLINCLUDE}


=======
uses MacTypes,AEDataModel,OSA,Files,Components,AppleEvents,AppleScript,CFBase,CFData,CFURL;
{$endc} {not MACOSALLINCLUDE}


>>>>>>> origin/cpstrnew
{$ifc TARGET_OS_MAC}

{$ALIGN POWER}

<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew

{*************************************************************************
    Mode Flags
*************************************************************************}
{    This mode flag can be passed to OSASetProperty or OSASetHandler
    and will prevent properties or handlers from being defined in a context
    that doesn't already have bindings for them. An error is returned if
    a current binding doesn't already exist. 
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
const
	kOSAModeDontDefine = $0001;

{*************************************************************************
    Component Selectors
*************************************************************************}
const
	kASSelectSetPropertyObsolete = $1101;
	kASSelectGetPropertyObsolete = $1102;
	kASSelectSetHandlerObsolete = $1103;
	kASSelectGetHandlerObsolete = $1104;
	kASSelectGetAppTerminologyObsolete = $1105;
	kASSelectSetProperty = $1106;
	kASSelectGetProperty = $1107;
	kASSelectSetHandler = $1108;
	kASSelectGetHandler = $1109;
	kASSelectGetAppTerminology = $110A;
	kASSelectGetSysTerminology = $110B;
	kASSelectGetPropertyNames = $110C;
	kASSelectGetHandlerNames = $110D;

{*************************************************************************
    Context Accessors
*************************************************************************}
{
 *  OSASetProperty()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSASetProperty( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID ): OSAError; external name '_OSASetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2

=======
>>>>>>> origin/fixes_2.4
const
	kOSAModeDontDefine = $0001;

{*************************************************************************
=======
const
	kOSAModeDontDefine = $0001;

{*************************************************************************
>>>>>>> origin/cpstrnew
    Component Selectors
*************************************************************************}
const
	kASSelectSetPropertyObsolete = $1101;
	kASSelectGetPropertyObsolete = $1102;
	kASSelectSetHandlerObsolete = $1103;
	kASSelectGetHandlerObsolete = $1104;
	kASSelectGetAppTerminologyObsolete = $1105;
<<<<<<< HEAD
<<<<<<< HEAD
	kASSelectSetProperty		= $1106;
	kASSelectGetProperty		= $1107;
	kASSelectSetHandler			= $1108;
	kASSelectGetHandler			= $1109;
	kASSelectGetAppTerminology	= $110A;
	kASSelectGetSysTerminology	= $110B;
	kASSelectGetPropertyNames	= $110C;
	kASSelectGetHandlerNames	= $110D;

	{	*************************************************************************
	    Context Accessors
	*************************************************************************	}
	{
	 *  OSASetProperty()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
	 *    CarbonLib:        in CarbonLib 1.0 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function OSASetProperty(scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID): OSAError; external name '_OSASetProperty';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
>>>>>>> origin/cpstrnew
	kASSelectSetProperty = $1106;
	kASSelectGetProperty = $1107;
	kASSelectSetHandler = $1108;
	kASSelectGetHandler = $1109;
	kASSelectGetAppTerminology = $110A;
	kASSelectGetSysTerminology = $110B;
	kASSelectGetPropertyNames = $110C;
	kASSelectGetHandlerNames = $110D;

{*************************************************************************
    Context Accessors
*************************************************************************}
<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  OSASetProperty()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function OSAGetProperty( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; var resultingScriptValueID: OSAID ): OSAError; external name '_OSAGetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
>>>>>>> origin/fixes_2.4
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSASetProperty( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID ): OSAError; external name '_OSASetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  OSAGetProperty()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function OSAGetProperty(scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; var resultingScriptValueID: OSAID): OSAError; external name '_OSAGetProperty';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
function OSASetProperty( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID ): OSAError; external name '_OSASetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  OSAGetProperty()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function OSAGetProperty( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) variableName: AEDesc; var resultingScriptValueID: OSAID ): OSAError; external name '_OSAGetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  OSAGetPropertyNames()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetPropertyNames( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; var resultingPropertyNames: AEDescList ): OSAError; external name '_OSAGetPropertyNames';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function OSAGetPropertyNames(scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; var resultingPropertyNames: AEDescList): OSAError; external name '_OSAGetPropertyNames';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function OSAGetPropertyNames( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; var resultingPropertyNames: AEDescList ): OSAError; external name '_OSAGetPropertyNames';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  OSASetHandler()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSASetHandler( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) handlerName: AEDesc; compiledScriptID: OSAID ): OSAError; external name '_OSASetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function OSASetHandler(scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) handlerName: AEDesc; compiledScriptID: OSAID): OSAError; external name '_OSASetHandler';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function OSASetHandler( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) handlerName: AEDesc; compiledScriptID: OSAID ): OSAError; external name '_OSASetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  OSAGetHandler()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetHandler( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) handlerName: AEDesc; var resultingCompiledScriptID: OSAID ): OSAError; external name '_OSAGetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function OSAGetHandler(scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) handlerName: AEDesc; var resultingCompiledScriptID: OSAID): OSAError; external name '_OSAGetHandler';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function OSAGetHandler( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; const (*var*) handlerName: AEDesc; var resultingCompiledScriptID: OSAID ): OSAError; external name '_OSAGetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  OSAGetHandlerNames()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetHandlerNames( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; var resultingHandlerNames: AEDescList ): OSAError; external name '_OSAGetHandlerNames';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


//#if !__LP64__
{$ifc not TARGET_CPU_64}
{
 *  OSAGetAppTerminology()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    use OSACopyScriptingDefinition instead.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetAppTerminology( scriptingComponent: ComponentInstance; modeFlags: SInt32; var fileSpec: FSSpec; terminologyID: SInt16; var didLaunch: Boolean; var terminologyList: AEDesc ): OSAError; external name '_OSAGetAppTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} { TARGET_CPU_64 }

{
 *  OSAGetSysTerminology()
 *  
 *  Discussion:
 *    A terminology ID is derived from script code and language code as
 *    follows: terminologyID = ((scriptCode & 0x7F) << 8) | (langCode &
 *    0xFF)
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetSysTerminology( scriptingComponent: ComponentInstance; modeFlags: SInt32; terminologyID: SInt16; var terminologyList: AEDesc ): OSAError; external name '_OSAGetSysTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  OSACopyScriptingDefinition()
 *  
 *  Discussion:
 *    Gets the scripting definition of the specified bundle.  See
 *    sdef(5) for details of the sdef format.
 *  
 *  Parameters:
 *    
 *    ref:
 *      The file (or bundle) to look in.
 *    
 *    modeFlags:
 *      There are no flags defined at this time; pass 0.
 *    
 *    sdef:
 *      The resulting sdef as XML data.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.4 and later in Carbon.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function OSACopyScriptingDefinition( const (*var*) ref: FSRef; modeFlags: SInt32; var sdef: CFDataRef ): OSAError; external name '_OSACopyScriptingDefinition';
(* AVAILABLE_MAC_OS_X_VERSION_10_4_AND_LATER *)


{
 *  OSACopyScriptingDefinitionFromURL()
 *  
 *  Discussion:
 *    Gets the scripting definition of the specified URL.  See sdef(5)
 *    for details of the sdef format.  If used with a file: URL, this
 *    call is equivalent to OSACopyScriptingDefinition.
 *  
 *  Parameters:
 *    
 *    url:
 *      The URL to look in; this should be a file: or eppc: URL.
 *    
 *    modeFlags:
 *      There are no flags defined at this time; pass 0.
 *    
 *    sdef:
 *      The resulting sdef as XML data.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function OSACopyScriptingDefinitionFromURL( url: CFURLRef; modeFlags: SInt32; var sdef: CFDataRef ): OSAError; external name '_OSACopyScriptingDefinitionFromURL';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)


{*************************************************************************
    Obsolete versions provided for backward compatibility:
}
//#if !__LP64__
{$ifc not TARGET_CPU_64}
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetHandlerNames( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; var resultingHandlerNames: AEDescList ): OSAError; external name '_OSAGetHandlerNames';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


//#if !__LP64__
{$ifc not TARGET_CPU_64}
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetHandlerNames( scriptingComponent: ComponentInstance; modeFlags: SInt32; contextID: OSAID; var resultingHandlerNames: AEDescList ): OSAError; external name '_OSAGetHandlerNames';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


//#if !__LP64__
{$ifc not TARGET_CPU_64}
{
 *  OSAGetAppTerminology()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    use OSACopyScriptingDefinition instead.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetAppTerminology( scriptingComponent: ComponentInstance; modeFlags: SInt32; var fileSpec: FSSpec; terminologyID: SInt16; var didLaunch: Boolean; var terminologyList: AEDesc ): OSAError; external name '_OSAGetAppTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} { TARGET_CPU_64 }

>>>>>>> origin/cpstrnew
{
 *  OSAGetAppTerminology()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    use OSACopyScriptingDefinition instead.
 *  
 *  Discussion:
 *    A terminology ID is derived from script code and language code as
 *    follows: terminologyID = ((scriptCode & 0x7F) << 8) | (langCode &
 *    0xFF)
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetAppTerminology( scriptingComponent: ComponentInstance; modeFlags: SInt32; var fileSpec: FSSpec; terminologyID: SInt16; var didLaunch: Boolean; var terminologyList: AEDesc ): OSAError; external name '_OSAGetAppTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} { TARGET_CPU_64 }

{
 *  OSAGetSysTerminology()
 *  
 *  Discussion:
 *    A terminology ID is derived from script code and language code as
 *    follows: terminologyID = ((scriptCode & 0x7F) << 8) | (langCode &
 *    0xFF)
 *  
 *  Availability:
=======
>>>>>>> origin/cpstrnew
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function OSAGetSysTerminology( scriptingComponent: ComponentInstance; modeFlags: SInt32; terminologyID: SInt16; var terminologyList: AEDesc ): OSAError; external name '_OSAGetSysTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{
 *  OSACopyScriptingDefinition()
 *  
 *  Discussion:
 *    Gets the scripting definition of the specified bundle.  See
 *    sdef(5) for details of the sdef format.
 *  
 *  Parameters:
 *    
 *    ref:
 *      The file (or bundle) to look in.
 *    
 *    modeFlags:
 *      There are no flags defined at this time; pass 0.
 *    
 *    sdef:
 *      The resulting sdef as XML data.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.4 and later in Carbon.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function OSACopyScriptingDefinition( const (*var*) ref: FSRef; modeFlags: SInt32; var sdef: CFDataRef ): OSAError; external name '_OSACopyScriptingDefinition';
(* AVAILABLE_MAC_OS_X_VERSION_10_4_AND_LATER *)


{
 *  OSACopyScriptingDefinitionFromURL()
 *  
 *  Discussion:
 *    Gets the scripting definition of the specified URL.  See sdef(5)
 *    for details of the sdef format.  If used with a file: URL, this
 *    call is equivalent to OSACopyScriptingDefinition.
 *  
 *  Parameters:
 *    
 *    url:
 *      The URL to look in; this should be a file: or eppc: URL.
 *    
 *    modeFlags:
 *      There are no flags defined at this time; pass 0.
 *    
 *    sdef:
 *      The resulting sdef as XML data.
 *  
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in Carbon.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function OSACopyScriptingDefinitionFromURL( url: CFURLRef; modeFlags: SInt32; var sdef: CFDataRef ): OSAError; external name '_OSACopyScriptingDefinitionFromURL';
(* AVAILABLE_MAC_OS_X_VERSION_10_5_AND_LATER *)


{*************************************************************************
    Obsolete versions provided for backward compatibility:
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
//#if !__LP64__
{$ifc not TARGET_CPU_64}
>>>>>>> origin/fixes_2.4
=======
//#if !__LP64__
{$ifc not TARGET_CPU_64}
>>>>>>> origin/cpstrnew
{
 *  ASSetProperty()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function ASSetProperty( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID ): OSAError; external name '_ASSetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function ASSetProperty(scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID): OSAError; external name '_ASSetProperty';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function ASSetProperty( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) variableName: AEDesc; scriptValueID: OSAID ): OSAError; external name '_ASSetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  ASGetProperty()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function ASGetProperty( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) variableName: AEDesc; var resultingScriptValueID: OSAID ): OSAError; external name '_ASGetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function ASGetProperty(scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) variableName: AEDesc; var resultingScriptValueID: OSAID): OSAError; external name '_ASGetProperty';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function ASGetProperty( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) variableName: AEDesc; var resultingScriptValueID: OSAID ): OSAError; external name '_ASGetProperty';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  ASSetHandler()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function ASSetHandler( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) handlerName: AEDesc; compiledScriptID: OSAID ): OSAError; external name '_ASSetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function ASSetHandler(scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) handlerName: AEDesc; compiledScriptID: OSAID): OSAError; external name '_ASSetHandler';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function ASSetHandler( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) handlerName: AEDesc; compiledScriptID: OSAID ): OSAError; external name '_ASSetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  ASGetHandler()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function ASGetHandler( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) handlerName: AEDesc; var resultingCompiledScriptID: OSAID ): OSAError; external name '_ASGetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function ASGetHandler(scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) handlerName: AEDesc; var resultingCompiledScriptID: OSAID): OSAError; external name '_ASGetHandler';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function ASGetHandler( scriptingComponent: ComponentInstance; contextID: OSAID; const (*var*) handlerName: AEDesc; var resultingCompiledScriptID: OSAID ): OSAError; external name '_ASGetHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{
 *  ASGetAppTerminology()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
function ASGetAppTerminology( scriptingComponent: ComponentInstance; var fileSpec: FSSpec; terminologID: SInt16; var didLaunch: Boolean; var terminologyList: AEDesc ): OSAError; external name '_ASGetAppTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
>>>>>>> origin/fixes_2.4
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
<<<<<<< HEAD
function ASGetAppTerminology(scriptingComponent: ComponentInstance; var fileSpec: FSSpec; terminologID: SInt16; var didLaunch: boolean; var terminologyList: AEDesc): OSAError; external name '_ASGetAppTerminology';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only]
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in AppleScriptLib 1.1 and later
 }
>>>>>>> origin/cpstrnew
function ASGetAppTerminology( scriptingComponent: ComponentInstance; var fileSpec: FSSpec; terminologID: SInt16; var didLaunch: Boolean; var terminologyList: AEDesc ): OSAError; external name '_ASGetAppTerminology';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
{ Errors:
        errOSASystemError       operation failed
    }
{************************************************************************}


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$endc}	{ TARGET_CPU_64 }

{$endc} {TARGET_OS_MAC}
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
=======
>>>>>>> origin/fixes_2_2
{$ALIGN MAC68K}
=======
{$endc}	{ TARGET_CPU_64 }
>>>>>>> origin/fixes_2.4
=======
{$endc}	{ TARGET_CPU_64 }
>>>>>>> origin/cpstrnew

{$endc} {TARGET_OS_MAC}
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
{$endc} {not MACOSALLINCLUDE}
>>>>>>> origin/fixes_2.4
=======
{$endc} {not MACOSALLINCLUDE}
>>>>>>> origin/cpstrnew
