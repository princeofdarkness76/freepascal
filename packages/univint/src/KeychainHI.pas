{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     File:       SecurityHI/KeychainHI.h
 
     Contains:   Keychain API's with Human Interfaces
 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     Version:    SecurityHI-55002~751
=======
     Version:    SecurityHI-36638~75
>>>>>>> graemeg/cpstrnew
=======
     Version:    SecurityHI-36638~75
>>>>>>> graemeg/cpstrnew
=======
     Version:    SecurityHI-36638~75
>>>>>>> graemeg/cpstrnew
=======
     Version:    SecurityHI-36638~75
>>>>>>> origin/cpstrnew
 
     Copyright:  � 2000-2008 by Apple Inc., all rights reserved
=======
=======
>>>>>>> origin/fixes_2_2
     File:       KeychainHI.p
=======
     File:       SecurityHI/KeychainHI.h
>>>>>>> origin/fixes_2.4
=======
     File:       SecurityHI/KeychainHI.h
>>>>>>> origin/cpstrnew
 
     Contains:   Keychain API's with Human Interfaces
 
     Version:    SecurityHI-36638~75
 
<<<<<<< HEAD
<<<<<<< HEAD
     Copyright:  � 2000-2002 by Apple Computer, Inc., all rights reserved
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
     Copyright:  � 2000-2008 by Apple Inc., all rights reserved
>>>>>>> origin/fixes_2.4
=======
     Copyright:  � 2000-2008 by Apple Inc., all rights reserved
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
=======
>>>>>>> origin/fixes_2_2
                     http://www.freepascal.org/bugs.html
 
}
=======
>>>>>>> origin/cpstrnew
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
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

unit KeychainHI;
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
=======
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
>>>>>>> graemeg/cpstrnew
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
<<<<<<< HEAD
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew
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
>>>>>>> graemeg/cpstrnew
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
>>>>>>> origin/cpstrnew
{$endc}

{$ifc defined __LP64__ and __LP64__ }
  {$setc TARGET_CPU_64 := TRUE}
{$elsec}
  {$setc TARGET_CPU_64 := FALSE}
{$endc}
=======
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
=======
	{$setc TARGET_CPU_PPC64 := FALSE}
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
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
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
uses MacTypes,CFBase,KeychainCore,CFString,CFArray,CFDate;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{$endc} {not MACOSALLINCLUDE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD


{$ifc TARGET_OS_MAC}
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
=======
{$endc} {not MACOSALLINCLUDE}


{$ifc TARGET_OS_MAC}
>>>>>>> origin/cpstrnew

{ High-level interface for storing passwords }
{
 *  KCAddAppleSharePassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddAppleSharePassword( var serverSignature: AFPServerSignature; serverAddress: StringPtr; serverName: StringPtr; volumeName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew

<<<<<<< HEAD

<<<<<<< HEAD
{
 *  KCAddInternetPassword()   *** DEPRECATED ***
=======
=======
>>>>>>> graemeg/cpstrnew
{$ifc TARGET_OS_MAC}

{ High-level interface for storing passwords }
{
 *  KCAddAppleSharePassword()   *** DEPRECATED ***
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======


{
 *  KCAddInternetPassword()   *** DEPRECATED ***
>>>>>>> origin/cpstrnew
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
// function KCAddInternetPassword( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
=======
// function KCAddAppleSharePassword( var serverSignature: AFPServerSignature; serverAddress: StringPtr; serverName: StringPtr; volumeName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
>>>>>>> graemeg/cpstrnew
=======
// function KCAddAppleSharePassword( var serverSignature: AFPServerSignature; serverAddress: StringPtr; serverName: StringPtr; volumeName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
>>>>>>> graemeg/cpstrnew
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;

<<<<<<< HEAD

{
<<<<<<< HEAD
<<<<<<< HEAD
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
=======
 *  KCAddInternetPassword()   *** DEPRECATED ***
>>>>>>> graemeg/cpstrnew
=======
 *  KCAddInternetPassword()   *** DEPRECATED ***
>>>>>>> graemeg/cpstrnew
=======
{$ifc TARGET_OS_MAC}

{ High-level interface for storing passwords }
{
 *  KCAddAppleSharePassword()   *** DEPRECATED ***
>>>>>>> origin/cpstrnew
=======
// function KCAddInternetPassword( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
>>>>>>> origin/cpstrnew
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
// overloading not available
// function KCAddInternetPasswordWithPath( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; path: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
<<<<<<< HEAD
=======
=======
>>>>>>> graemeg/cpstrnew
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddInternetPassword( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddAppleSharePassword( var serverSignature: AFPServerSignature; serverAddress: StringPtr; serverName: StringPtr; volumeName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
>>>>>>> origin/cpstrnew
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
<<<<<<< HEAD
<<<<<<< HEAD
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
=======
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> graemeg/cpstrnew
=======
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddGenericPassword( serviceName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{ Low-level interface for storing keychain items }
{
 *  KCAddItem()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainItemCreateFromContent
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
<<<<<<< HEAD
=======
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
// overloading not available
// function KCAddInternetPasswordWithPath( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; path: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
=======
>>>>>>> graemeg/cpstrnew
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
<<<<<<< HEAD
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
=======
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> graemeg/cpstrnew
=======
 *  KCAddInternetPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
// overloading not available
// function KCAddInternetPasswordWithPath( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; path: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
=======
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddInternetPassword( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
>>>>>>> origin/cpstrnew
=======
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function KCAddItem( item: KCItemRef ): OSStatus; external name '_KCAddItem';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Managing keychains }
{
 *  KCUnlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
//function KCUnlock( keychain: KCRef { can be NULL }; password: StringPtr { can be NULL } ): OSStatus;
//AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCCreateKeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCCreateKeychain( password: StringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus;
>>>>>>> origin/cpstrnew
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
<<<<<<< HEAD
<<<<<<< HEAD
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
=======
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> origin/cpstrnew
=======
 *  KCChangeSettings()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainSetSettings
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
// overloading not available
// function KCAddInternetPasswordWithPath( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; path: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
=======
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function KCChangeSettings( keychain: KCRef ): OSStatus; external name '_KCChangeSettings';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcunlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> origin/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
>>>>>>> origin/cpstrnew
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddGenericPassword( serviceName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{ Low-level interface for storing keychain items }
=======
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddinternetpassword( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpasswordwithpath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function kcaddinternetpasswordwithpath( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; path: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpasswordwithpath';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddgenericpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddgenericpassword( serviceName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddgenericpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Working with certificates }
>>>>>>> origin/cpstrnew
{
 *  KCAddItem()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainItemCreateFromContent
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function KCAddItem( item: KCItemRef ): OSStatus; external name '_KCAddItem';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD


=======


>>>>>>> graemeg/cpstrnew
=======


>>>>>>> graemeg/cpstrnew
=======


>>>>>>> origin/cpstrnew
{ Managing keychains }
{
 *  KCUnlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
//function KCUnlock( keychain: KCRef { can be NULL }; password: StringPtr { can be NULL } ): OSStatus;
//AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCCreateKeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCCreateKeychain( password: StringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCChangeSettings()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainSetSettings
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function KCChangeSettings( keychain: KCRef ): OSStatus; external name '_KCChangeSettings';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)
=======
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
>>>>>>> origin/cpstrnew


{
 *  kcunlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


=======
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddinternetpassword( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpasswordwithpath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function kcaddinternetpasswordwithpath( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; path: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpasswordwithpath';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddgenericpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddgenericpassword( serviceName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddgenericpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Working with certificates }
>>>>>>> origin/cpstrnew
{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
=======
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
=======


{$ifc TARGET_OS_MAC}

{ High-level interface for storing passwords }
{
 *  KCAddAppleSharePassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> graemeg/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
<<<<<<< HEAD
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
=======
// overloading not available
// function KCAddAppleSharePassword( var serverSignature: AFPServerSignature; serverAddress: StringPtr; serverName: StringPtr; volumeName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddInternetPassword()   *** DEPRECATED ***
>>>>>>> graemeg/cpstrnew
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
<<<<<<< HEAD
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
=======
// overloading not available
// function KCAddInternetPassword( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
>>>>>>> graemeg/cpstrnew
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
>>>>>>> graemeg/cpstrnew
=======
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
=======
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
// overloading not available
// function KCAddInternetPasswordWithPath( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; path: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;
=======
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
>>>>>>> origin/cpstrnew


{
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddGenericPassword( serviceName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{ Low-level interface for storing keychain items }
{
 *  KCAddItem()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainItemCreateFromContent
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function KCAddItem( item: KCItemRef ): OSStatus; external name '_KCAddItem';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Managing keychains }
{
 *  KCUnlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
>>>>>>> graemeg/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
<<<<<<< HEAD
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
=======
// overloading not available
//function KCUnlock( keychain: KCRef { can be NULL }; password: StringPtr { can be NULL } ): OSStatus;
//AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCCreateKeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
>>>>>>> graemeg/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
<<<<<<< HEAD
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
=======
// overloading not available
// function KCCreateKeychain( password: StringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCChangeSettings()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainSetSettings
>>>>>>> graemeg/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
<<<<<<< HEAD
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
>>>>>>> graemeg/cpstrnew
function kcaddinternetpassword( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpasswordwithpath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function kcaddinternetpasswordwithpath( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; path: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpasswordwithpath';
=======
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function KCChangeSettings( keychain: KCRef ): OSStatus; external name '_KCChangeSettings';
>>>>>>> graemeg/cpstrnew
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
<<<<<<< HEAD
 *  kcaddgenericpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
=======
 *  kcunlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
>>>>>>> graemeg/cpstrnew
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
<<<<<<< HEAD
=======
function kcaddinternetpassword( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpasswordwithpath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function kcaddinternetpasswordwithpath( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; path: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpasswordwithpath';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddgenericpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
>>>>>>> graemeg/cpstrnew
function kcaddgenericpassword( serviceName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddgenericpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Working with certificates }
{
 *  KCFindX509Certificates()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }

=======
=======
>>>>>>> origin/fixes_2_2
=======
{$endc} {not MACOSALLINCLUDE}
>>>>>>> origin/fixes_2.4


{$ifc TARGET_OS_MAC}

{ High-level interface for storing passwords }
{
 *  KCAddAppleSharePassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddAppleSharePassword( var serverSignature: AFPServerSignature; serverAddress: StringPtr; serverName: StringPtr; volumeName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddInternetPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddInternetPassword( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddInternetPasswordWithPath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
// overloading not available
// function KCAddInternetPasswordWithPath( serverName: StringPtr; securityDomain: StringPtr; accountName: StringPtr; path: StringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCAddGenericPassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCAddGenericPassword( serviceName: StringPtr; accountName: StringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{ Low-level interface for storing keychain items }
{
 *  KCAddItem()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainItemCreateFromContent
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function KCAddItem( item: KCItemRef ): OSStatus; external name '_KCAddItem';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Managing keychains }
{
 *  KCUnlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
//function KCUnlock( keychain: KCRef { can be NULL }; password: StringPtr { can be NULL } ): OSStatus;
//AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCCreateKeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
// overloading not available
// function KCCreateKeychain( password: StringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus;
// AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6;


{
 *  KCChangeSettings()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainSetSettings
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function KCChangeSettings( keychain: KCRef ): OSStatus; external name '_KCChangeSettings';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcunlock()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainUnlock
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcunlock( keychain: KCRef { can be NULL }; password: ConstCStringPtr { can be NULL } ): OSStatus; external name '_kcunlock';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kccreatekeychain()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainCreate
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kccreatekeychain( password: ConstCStringPtr { can be NULL }; keychain: KCRefPtr { can be NULL } ): OSStatus; external name '_kccreatekeychain';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddapplesharepassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddapplesharepassword( var serverSignature: AFPServerSignature; serverAddress: ConstCStringPtr; serverName: ConstCStringPtr; volumeName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddapplesharepassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddinternetpassword( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddinternetpasswordwithpath()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddInternetPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
function kcaddinternetpasswordwithpath( serverName: ConstCStringPtr; securityDomain: ConstCStringPtr; accountName: ConstCStringPtr; path: ConstCStringPtr; port: UInt16; protocol: OSType; authType: OSType; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddinternetpasswordwithpath';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{
 *  kcaddgenericpassword()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use SecKeychainAddGenericPassword
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework but deprecated in 10.6
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in KeychainLib 1.0 and later
 }
function kcaddgenericpassword( serviceName: ConstCStringPtr; accountName: ConstCStringPtr; passwordLength: UInt32; passwordData: {const} UnivPtr; item: KCItemRefPtr { can be NULL } ): OSStatus; external name '_kcaddgenericpassword';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_6 *)


{ Working with certificates }
{
 *  KCFindX509Certificates()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
<<<<<<< HEAD
function KCFindX509Certificates(keychain: KCRef; name: CFStringRef; emailAddress: CFStringRef; options: KCCertSearchOptions; certificateItems: CFMutableArrayRefPtr): OSStatus; external name '_KCFindX509Certificates';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======

>>>>>>> origin/fixes_2.4

{
 *  KCChooseCertificate()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
=======
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
>>>>>>> origin/cpstrnew

{$endc} {TARGET_OS_MAC}
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 *    CarbonLib:        not available
=======
>>>>>>> origin/fixes_2.4
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
=======
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in KeychainLib 2.0 and later
 }
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
