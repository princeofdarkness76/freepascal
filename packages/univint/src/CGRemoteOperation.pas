<<<<<<< HEAD
<<<<<<< HEAD
{ CoreGraphics - CGRemoteOperation.h
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   Copyright (c) 2000-2011 Apple Inc.
   All rights reserved. }
{       Pascal Translation Updated:  Peter N Lewis, <peter@stairways.com.au>, August 2005 }
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2012 }
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, August 2015 }
=======
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
   Copyright (c) 2000-2008 Apple Inc.
   All rights reserved. }
{       Pascal Translation Updated:  Peter N Lewis, <peter@stairways.com.au>, August 2005 }
{       Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
   Copyright (c) 2000-2008 Apple Inc.
   All rights reserved. }
{       Pascal Translation Updated:  Peter N Lewis, <peter@stairways.com.au>, August 2005 }
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
{
 *  CGRemoteOperation.h
 *  CoreGraphics
 *
 *  Copyright (c) 2000 Apple Computer, Inc. All rights reserved.
 *
 }
{       Pascal Translation Updated:  Peter N Lewis, <peter@stairways.com.au>, August 2005 }
{
    Modified for use with Free Pascal
    Version 210
    Please report any bugs to <gpc@microbizz.nl>
}

<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{$mode macpas}
{$packenum 1}
{$macro on}
{$inline on}
{$calling mwpascal}

unit CGRemoteOperation;
interface
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
{$ifc not defined __ppc__ and defined CPUPOWERPC32}
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC}
>>>>>>> graemeg/fixes_2_2
=======
{$ifc not defined __ppc__ and defined CPUPOWERPC}
>>>>>>> origin/fixes_2_2
	{$setc __ppc__ := 1}
{$elsec}
	{$setc __ppc__ := 0}
{$endc}
<<<<<<< HEAD
<<<<<<< HEAD
{$ifc not defined __ppc64__ and defined CPUPOWERPC64}
	{$setc __ppc64__ := 1}
{$elsec}
	{$setc __ppc64__ := 0}
{$endc}
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{$ifc not defined __i386__ and defined CPUI386}
	{$setc __i386__ := 1}
{$elsec}
	{$setc __i386__ := 0}
{$endc}
<<<<<<< HEAD
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
=======
>>>>>>> origin/fixes_2_2

{$ifc defined __ppc__ and __ppc__ and defined __i386__ and __i386__}
	{$error Conflicting definitions for __ppc__ and __i386__}
{$endc}

{$ifc defined __ppc__ and __ppc__}
	{$setc TARGET_CPU_PPC := TRUE}
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
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
=======
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := FALSE}
	{$setc TARGET_CPU_ARM := FALSE}
>>>>>>> origin/cpstrnew
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
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
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
=======
>>>>>>> graemeg/cpstrnew
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
=======
>>>>>>> origin/fixes_2_2
	{$setc TARGET_CPU_X86 := FALSE}
{$elifc defined __i386__ and __i386__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_X86 := TRUE}
{$elsec}
	{$error Neither __ppc__ nor __i386__ is defined.}
{$endc}
{$setc TARGET_CPU_PPC_64 := FALSE}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

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
=======
{$setc TARGET_OS_MAC := TRUE}
>>>>>>> graemeg/fixes_2_2
=======
{$setc TARGET_OS_MAC := TRUE}
>>>>>>> origin/fixes_2_2
{$setc TARGET_OS_UNIX := FALSE}
{$setc TARGET_OS_WIN32 := FALSE}
{$setc TARGET_RT_MAC_68881 := FALSE}
{$setc TARGET_RT_MAC_CFM := FALSE}
{$setc TARGET_RT_MAC_MACHO := TRUE}
{$setc TYPED_FUNCTION_POINTERS := TRUE}
{$setc TYPE_BOOL := FALSE}
{$setc TYPE_EXTENDED := FALSE}
{$setc TYPE_LONGLONG := TRUE}
uses MacTypes,CFMachPort,CGBase,CGGeometry,CGErrors,CFDate;
<<<<<<< HEAD
<<<<<<< HEAD
{$endc} {not MACOSALLINCLUDE}

=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{$ALIGN POWER}


type
	CGEventErr = CGError;
const
<<<<<<< HEAD
<<<<<<< HEAD
	CGEventNoErr				= kCGErrorSuccess;

{ A type representing the number of buttons being set in a synthetic mouse
   event. }

type
	CGButtonCount = UInt32;

{ A type representing the number of scrolling devices being set in a
   synthetic scrolling event. }

type
	CGWheelCount = UInt32;

{ A type representing a character generated by pressing one or more keys on
   a keyboard. }

type
	CGCharCode = UInt16;

{ A type representing the virtual key codes used in keyboard events. }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew

type
	CGKeyCode = UInt16;

<<<<<<< HEAD
{ A client-supplied callback function that’s invoked when an area of the
=======
{ A client-supplied callback function thatÕs invoked when an area of the
>>>>>>> graemeg/cpstrnew
   display is modified or refreshed.

   When an area of the display is modified or refreshed, your callback
   function will be invoked with a count of the number of rectangles in the
   refreshed areas, and a list of the refreshed rectangles. The rectangles
   are in global coordinates.

   To register a screen refresh callback function, call the function
   `CGRegisterScreenRefreshCallback'. Quartz invokes your callback function
   when operations such as drawing, window movement, scrolling, or display
   reconfiguration occur on local displays. When you are finished using a
   callback registration, call `CGUnregisterScreenRefreshCallback' to remove
   it.

   Note that a single rectangle may occupy multiple displays, either by
   overlapping the displays or by residing on coincident displays when
   mirroring is active. You can use the function `CGGetDisplaysWithRect' to
   determine the displays a rectangle occupies. }

type
<<<<<<< HEAD
=======

type
	CGKeyCode = UInt16;

{ A client-supplied callback function thatÕs invoked when an area of the
   display is modified or refreshed.

   When an area of the display is modified or refreshed, your callback
   function will be invoked with a count of the number of rectangles in the
   refreshed areas, and a list of the refreshed rectangles. The rectangles
   are in global coordinates.

   To register a screen refresh callback function, call the function
   `CGRegisterScreenRefreshCallback'. Quartz invokes your callback function
   when operations such as drawing, window movement, scrolling, or display
   reconfiguration occur on local displays. When you are finished using a
   callback registration, call `CGUnregisterScreenRefreshCallback' to remove
   it.

   Note that a single rectangle may occupy multiple displays, either by
   overlapping the displays or by residing on coincident displays when
   mirroring is active. You can use the function `CGGetDisplaysWithRect' to
   determine the displays a rectangle occupies. }

type
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======

type
	CGKeyCode = UInt16;

{ A client-supplied callback function thatÕs invoked when an area of the
   display is modified or refreshed.

   When an area of the display is modified or refreshed, your callback
   function will be invoked with a count of the number of rectangles in the
   refreshed areas, and a list of the refreshed rectangles. The rectangles
   are in global coordinates.

   To register a screen refresh callback function, call the function
   `CGRegisterScreenRefreshCallback'. Quartz invokes your callback function
   when operations such as drawing, window movement, scrolling, or display
   reconfiguration occur on local displays. When you are finished using a
   callback registration, call `CGUnregisterScreenRefreshCallback' to remove
   it.

   Note that a single rectangle may occupy multiple displays, either by
   overlapping the displays or by residing on coincident displays when
   mirroring is active. You can use the function `CGGetDisplaysWithRect' to
   determine the displays a rectangle occupies. }

type
>>>>>>> graemeg/cpstrnew
=======

type
	CGKeyCode = UInt16;

{ A client-supplied callback function thatÕs invoked when an area of the
   display is modified or refreshed.

   When an area of the display is modified or refreshed, your callback
   function will be invoked with a count of the number of rectangles in the
   refreshed areas, and a list of the refreshed rectangles. The rectangles
   are in global coordinates.

   To register a screen refresh callback function, call the function
   `CGRegisterScreenRefreshCallback'. Quartz invokes your callback function
   when operations such as drawing, window movement, scrolling, or display
   reconfiguration occur on local displays. When you are finished using a
   callback registration, call `CGUnregisterScreenRefreshCallback' to remove
   it.

   Note that a single rectangle may occupy multiple displays, either by
   overlapping the displays or by residing on coincident displays when
   mirroring is active. You can use the function `CGGetDisplaysWithRect' to
   determine the displays a rectangle occupies. }

type
>>>>>>> origin/cpstrnew
	CGScreenRefreshCallback = procedure( count: UInt32; {const} rectArray: {variable-size-array} CGRectPtr; userParameter: UnivPtr);

{$ifc TARGET_OS_MAC}

{ Register a callback function to be invoked when local displays are
   refreshed or modified.

   The callback function you register is invoked only if your application
   has an active event loop. The callback is invoked in the same thread of
   execution that is processing events within your application. }

function CGRegisterScreenRefreshCallback( callback: CGScreenRefreshCallback; userInfo: UnivPtr ): CGError; external name '_CGRegisterScreenRefreshCallback';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0,__MAC_10_8,
    __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{ Remove a previously registered callback function invoked when local
   displays are refreshed or modified.

   Both the callback function and the `userInfo' argument must match the
   registered entry to be removed. }

procedure CGUnregisterScreenRefreshCallback( callback: CGScreenRefreshCallback; userInfo: UnivPtr ); external name '_CGUnregisterScreenRefreshCallback';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0,__MAC_10_8,
    __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{ Wait for screen refresh operations.

   In some applications it may be preferable to wait for screen refresh data
   synchronously, using this function. You should call this function in a
   thread other than the main event-processing thread.

   As an alternative, Quartz also supports asynchronous notification --- see
   `CGRegisterScreenRefreshCallback'. If refresh callback functions are
   registered, this function should not be used.

   You must deallocate the returned rectangle array with the function
   `CGReleaseScreenRefreshRects'. }

function CGWaitForScreenRefreshRects( var pRectArray: {variable-size-array} CGRectPtr; var count: UInt32 ): CGError; external name '_CGWaitForScreenRefreshRects';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0,__MAC_10_8, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{$endc}

{ A type for `CGWaitForScreenUpdateRects' specifying the desired types of
   screen update operations. }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
type
	CGScreenUpdateOperation = UInt32;
>>>>>>> graemeg/cpstrnew
=======
type
	CGScreenUpdateOperation = UInt32;
>>>>>>> graemeg/cpstrnew
=======
type
	CGScreenUpdateOperation = UInt32;
>>>>>>> graemeg/cpstrnew
=======
type
	CGScreenUpdateOperation = UInt32;
>>>>>>> origin/cpstrnew
=======
=======
>>>>>>> origin/fixes_2_2
	CGEventNoErr				= 0;


{ Screen refresh or drawing notification }
{
 * Callback function pointer;
 * Declare your callback function in this form.  When an area of the display is
 * modified or refreshed, your callback function will be invoked with a count
 * of the number of rectangles in the refreshed areas, and a list of the refreshed
 * rectangles.  The rectangles are in global coordinates.
 *
 * Your function should not modify, deallocate or free memory pointed to by rectArray.
 *
 * The system continues to accumulate refreshed areas constantly.  Whenever new
 * information is available, your callback function is invoked.The list of rects
 * passed to the callback function are cleared from the accumulated refreshed area
 * when the callback is made.
 *
 * This callback may be triggered by drawing operations, window movement, and
 * display reconfiguration.
 *
 * Bear in mind that a single rectangle may occupy multiple displays,
 * either by overlapping the displays, or by residing on coincident displays
 * when mirroring is active.  Use the CGGetDisplaysWithRect() to determine
 * the displays a rectangle occupies.
 }
type
	CGRectCount = UInt32;
type
	CGScreenRefreshCallback = procedure( count: CGRectCount; {const} rectArray: {variable-size-array} CGRectPtr; userParameter: UnivPtr);

{ Begin Old API }
{
 * Register a callback function to be invoked when an area of the display
 * is refreshed, or modified.  The function is invoked on the same thread
 * of execution that is processing events within your application.
 * userParameter is passed back with each invocation of the callback function.
 }
function CGRegisterScreenRefreshCallback( func: CGScreenRefreshCallback; userParameter: UnivPtr ): CGError; external name '_CGRegisterScreenRefreshCallback';

{
 * Remove a previously registered calback function.
 * Both the function and the userParameter must match the registered entry to be removed.
 }
procedure CGUnregisterScreenRefreshCallback( func: CGScreenRefreshCallback; userParameter: UnivPtr ); external name '_CGUnregisterScreenRefreshCallback';

{
 * In some applications it may be preferable to have a seperate thread wait for screen refresh data.
 * This function should be called on a thread seperate from the event processing thread.
 * If screen refresh callback functions are registered, this function should not be used.
 * The mechanisms are mutually exclusive.
 *
 * Deallocate screen refresh rects using CGReleaseScreenRefreshRects().
 *
 * Returns an error code if parameters are invalid or an error occurs in retrieving
 * dirty screen rects from the server.
 }
function CGWaitForScreenRefreshRects( var pRectArray: {variable-size-array} CGRectPtr; var pCount: CGRectCount ): CGEventErr; external name '_CGWaitForScreenRefreshRects';
{ End Old API }

{ Begin New API }
{
 * Screen refresh operation types.
 * Operations are encoded as bits.
 * All users of this API must support a simple refresh, kCGScreenUpdateOperationRefresh.
 }
type
	CGScreenUpdateOperation = SInt32;
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
const
	kCGScreenUpdateOperationRefresh = 0;
	kCGScreenUpdateOperationMove = 1 shl 0;
	kCGScreenUpdateOperationReducedDirtyRectangleCount = 1 shl 31;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
type
	CGScreenUpdateOperation = UInt32;
=======
>>>>>>> graemeg/cpstrnew

{ A type representing the distance a region on the screen moves in pixel
   units.

   The fields `dX' and `dY' describe the direction of movement. Positive
   values of `dX' indicate movement to the right; negative values indicate
   movement to the left. Positive values of `dY' indicate movement downward;
   negative values indicate movement upward. }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
{ A type representing the distance a region on the screen moves in pixel
   units.

   The fields `dX' and `dY' describe the direction of movement. Positive
   values of `dX' indicate movement to the right; negative values indicate
   movement to the left. Positive values of `dY' indicate movement downward;
   negative values indicate movement upward. }

>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
=======
=======
>>>>>>> origin/fixes_2_2

{
 * Move operation notifications are restricted to changes that move a region by
 * an integer number of pixels.
 *
 * dX and dY describe the direction of movement.
 * Positive values of dX indicate movement to the right.
 * Negative values of dX indicate movement to the left.
 * Positive values of dY indicate movement downward.
 * Negative values of dY indicate movement upward.
 }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
type
	CGScreenUpdateMoveDelta = record
		dX, dY: SInt32;
	end;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{ A type specifying a client-supplied callback function that’s invoked when
=======
{ A type specifying a client-supplied callback function thatÕs invoked when
>>>>>>> graemeg/cpstrnew
=======
{ A type specifying a client-supplied callback function thatÕs invoked when
>>>>>>> graemeg/cpstrnew
=======
{ A type specifying a client-supplied callback function thatÕs invoked when
>>>>>>> graemeg/cpstrnew
=======
{ A type specifying a client-supplied callback function thatÕs invoked when
>>>>>>> origin/cpstrnew
   an area of the display is moved.

   When an area of the display is moved, your callback function will be
   invoked with a count of the number of rectangles in the moved area, and a
   list of the moved rectangles. The rectangles are in global coordinates,
   and describe the area prior to the move operation.

   Your function should not modify, deallocate or free memory pointed to by
   `rectArray'.

   A single rectangle may occupy multiple displays, either by overlapping
   the displays or by residing on coincident displays when mirroring is
   active. Use `CGGetDisplaysWithRect' to determine the displays a rectangle
   occupies. }

type
	CGScreenUpdateMoveCallback = procedure( delta: CGScreenUpdateMoveDelta; count: size_t; {const} rectArray: {variable-size-array} CGRectPtr; userParameter: UnivPtr );

{$ifc TARGET_OS_MAC}
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew

{ Register a callback function to be invoked when an area of the display is
   moved. The callback is invoked on the same thread of execution that is
   processing events within your application. }

function CGScreenRegisterMoveCallback( callback: CGScreenUpdateMoveCallback; userInfo: UnivPtr ): CGError; external name '_CGScreenRegisterMoveCallback';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_3,__MAC_10_8,
    __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{ Remove a previously registered screen update callback function. }

procedure CGScreenUnregisterMoveCallback( callback: CGScreenUpdateMoveCallback; userInfo: UnivPtr ); external name '_CGScreenUnregisterMoveCallback';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_3,__MAC_10_8,
    __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{ Wait for screen update operations.

   The parameter `requestedOperations' specifies the desired types of screen
   update operations. There are several possible choices:

   -- Specify `kCGScreenUpdateOperationRefresh' if you want all move
      operations to be returned as refresh operations.

   -- Specify `(kCGScreenUpdateOperationRefresh|kCGScreenUpdateOperationMove)'
      if you want to distinguish between move and refresh operations.

   -- Add `kCGScreenUpdateOperationReducedDirtyRectangleCount' to the screen
      operations if you want to minimize the number of rectangles returned
      to represent changed areas of the display.

   You should deallocate the returned screen update rects by calling
   `CGReleaseScreenRefreshRects'.

   In some applications it may be preferable to wait for screen update data
   synchronously. You should call this function in a thread other than the
   main event-processing thread.

   As an alternative, Quartz also supports asynchronous notification --- see
   `CGRegisterScreenRefreshCallback' and `CGScreenRegisterMoveCallback'. If
   refresh or move callback functions are registered, this function should
   not be used. }

function CGWaitForScreenUpdateRects( requestedOperations: CGScreenUpdateOperation; var currentOperation: CGScreenUpdateOperation; var pRectArray: {variable-size-array} CGRectPtr; var pCount: size_t; var pDelta: CGScreenUpdateMoveDelta ): CGError; external name '_CGWaitForScreenUpdateRects';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_3,__MAC_10_8, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{ Deallocate the list of rectangles received from
   `CGWaitForScreenRefreshRects' or `CGWaitForScreenUpdateRects'. }

procedure CGReleaseScreenRefreshRects( pRectArray: {variable-size-array} CGRectPtr); external name '_CGReleaseScreenRefreshRects';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0,__MAC_10_8, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew


{ Return true if the mouse cursor is visible, false otherwise. }

function CGCursorIsVisible: boolean_t; external name '_CGCursorIsVisible';
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_3,__MAC_10_9, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew

{ Return true if the mouse cursor is drawn in frame buffer memory, false
   otherwise. (The cursor could exist in an overlay plane or a similar
   mechanism that puts pixels on-screen without altering frame buffer
   content.) If the cursor is drawn in the frame buffer, it is read back
   along with window data.

   The return value is based on the union of the state of the cursor on all
   displays. If the cursor is drawn in the frame buffer on any display, this
   function returns true. }

function CGCursorIsDrawnInFramebuffer: boolean_t; external name '_CGCursorIsDrawnInFramebuffer';
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_3,__MAC_10_9, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew

{ Move the mouse cursor to the desired position in global display
   coordinates without generating events. }

function CGWarpMouseCursorPosition( newCursorPosition: CGPoint ): CGError; external name '_CGWarpMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)


{ Return true if the mouse cursor is visible, false otherwise. }

function CGCursorIsVisible: boolean_t; external name '_CGCursorIsVisible';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Return true if the mouse cursor is drawn in frame buffer memory, false
   otherwise. (The cursor could exist in an overlay plane or a similar
   mechanism that puts pixels on-screen without altering frame buffer
   content.) If the cursor is drawn in the frame buffer, it is read back
   along with window data.

   The return value is based on the union of the state of the cursor on all
   displays. If the cursor is drawn in the frame buffer on any display, this
   function returns true. }

function CGCursorIsDrawnInFramebuffer: boolean_t; external name '_CGCursorIsDrawnInFramebuffer';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Move the mouse cursor to the desired position in global display
   coordinates without generating events. }

function CGWarpMouseCursorPosition( newCursorPosition: CGPoint ): CGError; external name '_CGWarpMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

>>>>>>> graemeg/cpstrnew
{ After posting a left mouse down with remote mouse drag suppressing
   hardware mouse move events, after some time with no remote mouse drag
   events a warning is logged to aid in diagnosing "my hardware mouse is
   dead" problems.

   Mouse-down conditions of arbitrary length may be produced deliberately,
   as when scrolling through a lengthly document. }

{$endc}

const
	kCGMouseDownEventMaskingDeadSwitchTimeout = 60.0;

{$ifc TARGET_OS_MAC}

{ Connect or disconnect the mouse and cursor while an application is in the
   foreground.

   When you call this function to disconnect the cursor and mouse, all
   events received by your application have a constant absolute location but
   contain mouse delta (change in X and Y) data. You may hide the cursor or
   change it into something appropriate for your application. You can
   reposition the cursor by using the function `CGDisplayMoveCursorToPoint'
   or `CGWarpMouseCursorPosition'. }

function CGAssociateMouseAndMouseCursorPosition( connected: boolean_t ): CGError; external name '_CGAssociateMouseAndMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

<<<<<<< HEAD
<<<<<<< HEAD
{ Return a CFMachPort that corresponds to the Mac OS X Window Server's
   server port.
=======
{ Return a Core Foundation mach port (CFMachPort) that corresponds to the
   Mac OS X window server.
>>>>>>> graemeg/cpstrnew
=======
{ Return a Core Foundation mach port (CFMachPort) that corresponds to the
   Mac OS X window server.
>>>>>>> graemeg/cpstrnew

   Use this function to detect if the window server process exits or is not
   running. If this function returns NULL, the window server is not running.
   This code example shows how to register a callback function to detect
   when the window server exits:

     static void handleWindowServerDeath(CFMachPortRef port, void *info) (
       printf("Window Server port death detected!\n");
       CFRelease(port);
       exit(1);
     )
<<<<<<< HEAD
<<<<<<< HEAD
     static void watchForServerDeath() (
       CFMachPortRef port = CGWindowServerCreateServerPort();
=======
=======
>>>>>>> graemeg/cpstrnew

     static void watchForServerDeath() (
       CFMachPortRef port;
       port = CGWindowServerCFMachPort();
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
       CFMachPortSetInvalidationCallBack(port, handleWindowServerDeath);
     )

   Note that when the window server exits, there may be a few seconds during
   which no window server is running. This function will return NULL until a
   new window server is running.

<<<<<<< HEAD
<<<<<<< HEAD
   Your program must run a CFRunLoop for the port death callback to occur. A
   program which does not use a CFRunLoop may periodically call
   `CFMachPortIsValid' to check whether the port is valid. }

function CGWindowServerCreateServerPort: CFMachPortRef; external name '_CGWindowServerCreateServerPort';
(* CG_AVAILABLE_STARTING(__MAC_10_8, __IPHONE_NA) *)
=======
=======
>>>>>>> graemeg/cpstrnew
   Your program will need to run a CFRunLoop for the port death callback to
   function. A program which does not use a CFRunLoop may periodically call
   `CFMachPortIsValid' to check whether the port is valid. }

function CGWindowServerCFMachPort: CFMachPortRef; external name '_CGWindowServerCFMachPort';
(* CG_AVAILABLE_STARTING(__MAC_10_1, __IPHONE_NA) *)
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)


{ Return true if the mouse cursor is visible, false otherwise. }

function CGCursorIsVisible: boolean_t; external name '_CGCursorIsVisible';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Return true if the mouse cursor is drawn in frame buffer memory, false
   otherwise. (The cursor could exist in an overlay plane or a similar
   mechanism that puts pixels on-screen without altering frame buffer
   content.) If the cursor is drawn in the frame buffer, it is read back
   along with window data.

   The return value is based on the union of the state of the cursor on all
   displays. If the cursor is drawn in the frame buffer on any display, this
   function returns true. }

function CGCursorIsDrawnInFramebuffer: boolean_t; external name '_CGCursorIsDrawnInFramebuffer';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Move the mouse cursor to the desired position in global display
   coordinates without generating events. }

function CGWarpMouseCursorPosition( newCursorPosition: CGPoint ): CGError; external name '_CGWarpMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

{ After posting a left mouse down with remote mouse drag suppressing
   hardware mouse move events, after some time with no remote mouse drag
   events a warning is logged to aid in diagnosing "my hardware mouse is
   dead" problems.

   Mouse-down conditions of arbitrary length may be produced deliberately,
   as when scrolling through a lengthly document. }

{$endc}

const
	kCGMouseDownEventMaskingDeadSwitchTimeout = 60.0;

{$ifc TARGET_OS_MAC}

{ Connect or disconnect the mouse and cursor while an application is in the
   foreground.

   When you call this function to disconnect the cursor and mouse, all
   events received by your application have a constant absolute location but
   contain mouse delta (change in X and Y) data. You may hide the cursor or
   change it into something appropriate for your application. You can
   reposition the cursor by using the function `CGDisplayMoveCursorToPoint'
   or `CGWarpMouseCursorPosition'. }

function CGAssociateMouseAndMouseCursorPosition( connected: boolean_t ): CGError; external name '_CGAssociateMouseAndMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

{ Return a Core Foundation mach port (CFMachPort) that corresponds to the
   Mac OS X window server.

   Use this function to detect if the window server process exits or is not
   running. If this function returns NULL, the window server is not running.
   This code example shows how to register a callback function to detect
   when the window server exits:

     static void handleWindowServerDeath(CFMachPortRef port, void *info) (
       printf("Window Server port death detected!\n");
       CFRelease(port);
       exit(1);
     )

     static void watchForServerDeath() (
       CFMachPortRef port;
       port = CGWindowServerCFMachPort();
       CFMachPortSetInvalidationCallBack(port, handleWindowServerDeath);
     )

   Note that when the window server exits, there may be a few seconds during
   which no window server is running. This function will return NULL until a
   new window server is running.

   Your program will need to run a CFRunLoop for the port death callback to
   function. A program which does not use a CFRunLoop may periodically call
   `CFMachPortIsValid' to check whether the port is valid. }

function CGWindowServerCFMachPort: CFMachPortRef; external name '_CGWindowServerCFMachPort';
(* CG_AVAILABLE_STARTING(__MAC_10_1, __IPHONE_NA) *)

{
 * By default, the flags that indicate modifier key state (Command, Alt, Shift, etc.)
 * from the system's keyboard and from other event sources are ORed together as an event is
 * posted into the system, and current key and mouse button state is considered in generating new events.
 * This function allows your application to enable or disable the
 * merging of event state.  When combining is turned off, the event state propagated in the events
 * posted by your app reflect state built up only by your app.  The state within your app's generated
 * event will not be combined with the system's current state, so the system-wide state reflecting key
 * and mouse button state will remain unchanged
 *
 * When called with doCombineState equal to FALSE, this function initializes local (per application)
 * state tracking information to a state of all keys, modifiers, and mouse buttons up.
 *
 * When called with doCombineState equal to TRUE, the current global state of keys, modifiers,
 * and mouse buttons are used in generating events.
 }

{ This function is obsolete. Use Quartz events and Quartz event sources
   instead. }

function CGEnableEventStateCombining( combineState: boolean_t ): CGError; external name '_CGEnableEventStateCombining';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{
 * Remote operation may want to inhibit local events (events from
 * the machine's keyboard and mouse).  This may be done either as a
 * explicit request (tracked per app) or as a short term side effect of
 * posting an event.
 *
 * CGInhibitLocalEvents() is typically used for long term remote operation
 * of a system, as in automated system testing or telecommuting applications.
 * Local device state changes are discarded.
 *
 * Local event inhibition is turned off if the app that requested it terminates.
 }

{ This function obsolete. Use
   `CGEventSourceSetLocalEventsFilterDuringSuppressionState' instead. }

function CGInhibitLocalEvents( inhibit: boolean_t ): CGError; external name '_CGInhibitLocalEvents';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{ This function is obsolete. Use `CGEventCreateMouseEvent' instead.

   Synthesize a low-level mouse-button event on the local machine.

   The parameter `mouseCursorPosition' specifies the new coordinates of the
   mouse in global display space.

   Pass true for `updateMouseCursorPosition' if the on-screen cursor should
   be moved to the location specified in the `mouseCursorPosition'
   parameter; otherwise, pass false.
   
   The parameter `buttonCount' specifies the number of mouse buttons, up to
   a maximum of 32.

   Pass true for `mouseButtonDown' to specify that the primary or left mouse
   button is down; otherwise, pass false. The remaining parameters are
   Boolean values that specify whether the remaining mouse buttons are down
   (true) or up (false). The second value, if any, should specify the state
   of the secondary mouse button (right). A third value should specify the
   state of the center button, and the remaining buttons should be in USB
   device order.

   Based on the values entered, the appropriate mouse-down, mouse-up,
   mouse-move, or mouse-drag events are generated, by comparing the new
   state with the current state. }

function CGPostMouseEvent( mouseCursorPosition: CGPoint; updateMouseCursorPosition: boolean_t; buttonCount: CGButtonCount; mouseButtonDown: boolean_t; ... ): CGError; external name '_CGPostMouseEvent';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{ This function is obsolete. Use `CGEventCreateScrollWheelEvent' instead.

   Synthesize scroll wheel events.

   The parameter `wheelCount' specifies the number of scrolling devices, up
   to a maximum of 3.

   The parameter `wheel1' specifies a value that reflects the movement of
   the primary scrolling device on the mouse. The second and third values,
   if any, reflect the movements of the other scrolling devices on the
   mouse.

   Scrolling movement is represented by small signed integer values,
   typically in a range from -10 to +10. Large values may have unexpected
   results, depending on the application that processes the event. }

function CGPostScrollWheelEvent( wheelCount: CGWheelCount; wheel1: SInt32; ... ): CGError; external name '_CGPostScrollWheelEvent';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{
 * By default, the flags that indicate modifier key state (Command, Alt, Shift, etc.)
 * from the system's keyboard and from other event sources are ORed together as an event is
 * posted into the system, and current key and mouse button state is considered in generating new events.
 * This function allows your application to enable or disable the
 * merging of event state.  When combining is turned off, the event state propagated in the events
 * posted by your app reflect state built up only by your app.  The state within your app's generated
 * event will not be combined with the system's current state, so the system-wide state reflecting key
 * and mouse button state will remain unchanged
 *
 * When called with doCombineState equal to FALSE, this function initializes local (per application)
 * state tracking information to a state of all keys, modifiers, and mouse buttons up.
 *
 * When called with doCombineState equal to TRUE, the current global state of keys, modifiers,
 * and mouse buttons are used in generating events.
 }

<<<<<<< HEAD
{ This function is obsolete. Use Quartz events and Quartz event sources
   instead. }

function CGEnableEventStateCombining( combineState: boolean_t ): CGError; external name '_CGEnableEventStateCombining';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
=======
=======
>>>>>>> origin/fixes_2_2
{
 * Move operation callback function pointer;
 * Declare your callback function in this form.  When an area of the display is
 * moved, your callback function will be invoked with a count
 * of the number of rectangles in the moved area, and a list of the moved.
 * The rectangles are in global coordinates, and describe the area prior to the move
 * operation.
 *
 * dX and dY describe the direction of movement.
 * Positive values of dX indicate movement to the right.
 * Negative values of dX indicate movement to the left.
 * Positive values of dY indicate movement downward.
 * Negative values of dY indicate movement upward.
 *
 * Your function should not modify, deallocate or free memory pointed to by rectArray.
 *
 * This callback may be triggered by window movement or scrolling operations.
 *
 * Bear in mind that a single rectangle may occupy multiple displays,
 * either by overlapping the displays, or by residing on coincident displays
 * when mirroring is active.  Use the CGGetDisplaysWithRect() function  to determine
 * the displays a rectangle occupies.
 *
 * If no move callback function pointer is registered, then move operations are remapped to
 * refresh operations, and the CGScreenRefreshCallback function, if any, is called.
 }
type
	CGScreenUpdateMoveCallback = procedure( delta: CGScreenUpdateMoveDelta; count: size_t; {const} rectArray: {variable-size-array} CGRectPtr; userParameter: UnivPtr );

{
 * Register a callback function to be invoked when an area of the display
 * is moved.  The function is invoked on the same thread
 * of execution that is processing events within your application.
 * userParameter is passed back with each invocation of the callback function.
 }
function CGScreenRegisterMoveCallback( func: CGScreenUpdateMoveCallback; userParameter: UnivPtr ): CGError; external name '_CGScreenRegisterMoveCallback'; (* AVAILABLE_MAC_OS_X_VERSION_10_3_AND_LATER *)

{
 * Remove a previously registered callback function.
 }
procedure CGScreenUnregisterMoveCallback( func: CGScreenUpdateMoveCallback; userParameter: UnivPtr ); external name '_CGScreenUnregisterMoveCallback'; (* AVAILABLE_MAC_OS_X_VERSION_10_3_AND_LATER *)

{
 * In some applications it may be preferable to have a seperate thread wait for screen update operations.
 * This function should be called on a thread seperate from the event processing thread.
 * If screen refresh callback functions are registered, this function should not be used.
 * The mechanisms are mutually exclusive.
 *
 * Deallocate screen update rects using CGReleaseScreenRefreshRects().
 *
 * requestedOperations may be:
 * 	kCGScreenUpdateOperationRefresh
 *		All move operations are converted to refresh operations
 *		currentOperation will always be returned as kCGScreenUpdateOperationRefresh
 *	(kCGScreenUpdateOperationRefresh | kCGScreenUpdateOperationMove)
 *		Wait for move or refresh operations.
 *		currentOperation will be either kCGScreenUpdateOperationRefresh or kCGScreenUpdateOperationMove
 *
 * pDelta is updated with valid content if the currentOperation is kCGScreenUpdateOperationMove
 *
 * Returns an error code if parameters are invalid or an error occurs in retrieving
 * the screen rect data from the server.
 }
function CGWaitForScreenUpdateRects( requestedOperations: CGScreenUpdateOperation; var currentOperation: CGScreenUpdateOperation; var pRectArray: {variable-size-array} CGRectPtr; var pCount: size_t; var pDelta: CGScreenUpdateMoveDelta ): CGError; external name '_CGWaitForScreenUpdateRects'; (* AVAILABLE_MAC_OS_X_VERSION_10_3_AND_LATER *)
{ End New API }
{
 * Deallocate the list of rects recieved from CGWaitForScreenRefreshRects()
 }
procedure CGReleaseScreenRefreshRects( pRectArray: {variable-size-array} CGRectPtr); external name '_CGReleaseScreenRefreshRects';

{
 * Programs reading the frame buffer content may want to hide the cursor, if it is visible and
 * drawn in framebuffer memory. A cursor may also be generated in an overlay plane of some form. 
 *
 * These APIs provide basic cursor visibility and drawing information.
 * The cursor may be hidden or shown using the CGDisplayHideCursor() and CGDisplayShowCursor() API.
 }
function CGCursorIsVisible: boolean_t; external name '_CGCursorIsVisible'; (* AVAILABLE_MAC_OS_X_VERSION_10_3_AND_LATER *)
function CGCursorIsDrawnInFramebuffer: boolean_t; external name '_CGCursorIsDrawnInFramebuffer'; (* AVAILABLE_MAC_OS_X_VERSION_10_3_AND_LATER *)

{
 * Posting events: These functions post events into the system.  Use for remote
 * operation and virtualization.
 *
 * Note that remote operation requires a valid connection to the server, which
 * must be owned by either the root/Administrator user or the logged in console
 * user.  This means that your application must be running as root/Administrator
 * user or the logged in console user.
 }

{
 * Synthesize mouse events.
 * mouseCursorPosition should be the global coordinates the mouse is at for the event.
 * updateMouseCursor should be TRUE if the on-screen cursor
 * should be moved to mouseCursorPosition.
 *
 * Based on the values entered, the appropriate mouse-down, mouse-up, mouse-move,
 * or mouse-drag events are generated, by comparing the new state with the current state.
 *
 * The current implemementation of the event system supports a maximum of thirty-two buttons.
 * The buttonCount parameter should be followed by 'buttonCount' boolean_t values
 * indicating button state.  The first value should reflect the state of the primary
 * button on the mouse. The second value, if any, should reflect the state of the secondary
 * mouse button (right), if any. A third value woule be the center button, and the remaining
 * buttons would be in USB device order.
 }
type
	CGButtonCount = UInt32;
function CGPostMouseEvent( mouseCursorPosition: CGPoint; updateMouseCursorPosition: boolean_t; buttonCount: CGButtonCount; mouseButtonDown: boolean_t; ... ): CGError; external name '_CGPostMouseEvent';

{
 * Synthesize scroll wheel events.
 *
 * The current implemementation of the event system supports a maximum of three wheels.
 *
 * The wheelCount parameter should be followed by 'wheelCount' 32 bit integer values
 * indicating wheel movements.  The first value should reflect the state of the primary
 * wheel on the mouse. The second value, if any, should reflect the state of a secondary
 * mouse wheel, if any.
 *
 * Wheel movement is represented by small signed integer values,
 * typically in a range from -10 to +10.  Large values may have unexpected results,
 * depending on the  application that processes the event.
 }
type
	CGWheelCount = UInt32;
function CGPostScrollWheelEvent( wheelCount: CGWheelCount; wheel1: SInt32; ... ): CGError; external name '_CGPostScrollWheelEvent';

{
 * Synthesize keyboard events.  Based on the values entered,
 * the appropriate key down, key up, and flags changed events are generated.
 * If keyChar is NUL (0), an appropriate value will be guessed at, based on the
 * default keymapping.
 *
 * All keystrokes needed to generate a character must be entered, including
 * SHIFT, CONTROL, OPTION, and COMMAND keys.  For example, to produce a 'Z',
 * the SHIFT key must be down, the 'z' key must go down, and then the SHIFT
 * and 'z' key must be released:
 *	CGPostKeyboardEvent( (CGCharCode)0, (CGKeyCode)56, true ); // shift down
 *	CGPostKeyboardEvent( (CGCharCode)'Z', (CGKeyCode)6, true ); // 'z' down
 *	CGPostKeyboardEvent( (CGCharCode)'Z', (CGKeyCode)6, false ); // 'z' up
 *	CGPostKeyboardEvent( (CGCharCode)0, (CGKeyCode)56, false ); // 'shift up
 }
type
	CGCharCode = UInt16;	{ Character represented by event, if any }
type
	CGKeyCode = UInt16;		{ Virtual keycode for event }

function CGPostKeyboardEvent( keyChar: CGCharCode; virtualKey: CGKeyCode; keyDown: boolean_t ): CGError; external name '_CGPostKeyboardEvent';

{
 * Warp the mouse cursor to the desired position in global
 * coordinates without generating events
 }
function CGWarpMouseCursorPosition( newCursorPosition: CGPoint ): CGError; external name '_CGWarpMouseCursorPosition';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

{
 * Remote operation may want to inhibit local events (events from
 * the machine's keyboard and mouse).  This may be done either as a
 * explicit request (tracked per app) or as a short term side effect of
 * posting an event.
 *
 * CGInhibitLocalEvents() is typically used for long term remote operation
 * of a system, as in automated system testing or telecommuting applications.
 * Local device state changes are discarded.
 *
 * Local event inhibition is turned off if the app that requested it terminates.
 }
<<<<<<< HEAD
<<<<<<< HEAD

{ This function obsolete. Use
   `CGEventSourceSetLocalEventsFilterDuringSuppressionState' instead. }

function CGInhibitLocalEvents( inhibit: boolean_t ): CGError; external name '_CGInhibitLocalEvents';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{ This function is obsolete. Use `CGEventCreateMouseEvent' instead.

   Synthesize a low-level mouse-button event on the local machine.

   The parameter `mouseCursorPosition' specifies the new coordinates of the
   mouse in global display space.

   Pass true for `updateMouseCursorPosition' if the on-screen cursor should
   be moved to the location specified in the `mouseCursorPosition'
   parameter; otherwise, pass false.
   
   The parameter `buttonCount' specifies the number of mouse buttons, up to
   a maximum of 32.

   Pass true for `mouseButtonDown' to specify that the primary or left mouse
   button is down; otherwise, pass false. The remaining parameters are
   Boolean values that specify whether the remaining mouse buttons are down
   (true) or up (false). The second value, if any, should specify the state
   of the secondary mouse button (right). A third value should specify the
   state of the center button, and the remaining buttons should be in USB
   device order.

   Based on the values entered, the appropriate mouse-down, mouse-up,
   mouse-move, or mouse-drag events are generated, by comparing the new
   state with the current state. }

function CGPostMouseEvent( mouseCursorPosition: CGPoint; updateMouseCursorPosition: boolean_t; buttonCount: CGButtonCount; mouseButtonDown: boolean_t; ... ): CGError; external name '_CGPostMouseEvent';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{ This function is obsolete. Use `CGEventCreateScrollWheelEvent' instead.

   Synthesize scroll wheel events.

   The parameter `wheelCount' specifies the number of scrolling devices, up
   to a maximum of 3.

   The parameter `wheel1' specifies a value that reflects the movement of
   the primary scrolling device on the mouse. The second and third values,
   if any, reflect the movements of the other scrolling devices on the
   mouse.

   Scrolling movement is represented by small signed integer values,
   typically in a range from -10 to +10. Large values may have unexpected
   results, depending on the application that processes the event. }

function CGPostScrollWheelEvent( wheelCount: CGWheelCount; wheel1: SInt32; ... ): CGError; external name '_CGPostScrollWheelEvent';
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======

{ Register a callback function to be invoked when an area of the display is
   moved. The callback is invoked on the same thread of execution that is
   processing events within your application. }

function CGScreenRegisterMoveCallback( callback: CGScreenUpdateMoveCallback; userInfo: UnivPtr ): CGError; external name '_CGScreenRegisterMoveCallback';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Remove a previously registered screen update callback function. }

procedure CGScreenUnregisterMoveCallback( callback: CGScreenUpdateMoveCallback; userInfo: UnivPtr ); external name '_CGScreenUnregisterMoveCallback';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Wait for screen update operations.

   The parameter `requestedOperations' specifies the desired types of screen
   update operations. There are several possible choices:

   -- Specify `kCGScreenUpdateOperationRefresh' if you want all move
      operations to be returned as refresh operations.

   -- Specify `(kCGScreenUpdateOperationRefresh|kCGScreenUpdateOperationMove)'
      if you want to distinguish between move and refresh operations.

   -- Add `kCGScreenUpdateOperationReducedDirtyRectangleCount' to the screen
      operations if you want to minimize the number of rectangles returned
      to represent changed areas of the display.

   You should deallocate the returned screen update rects by calling
   `CGReleaseScreenRefreshRects'.

   In some applications it may be preferable to wait for screen update data
   synchronously. You should call this function in a thread other than the
   main event-processing thread.

   As an alternative, Quartz also supports asynchronous notification --- see
   `CGRegisterScreenRefreshCallback' and `CGScreenRegisterMoveCallback'. If
   refresh or move callback functions are registered, this function should
   not be used. }

function CGWaitForScreenUpdateRects( requestedOperations: CGScreenUpdateOperation; var currentOperation: CGScreenUpdateOperation; var pRectArray: {variable-size-array} CGRectPtr; var pCount: size_t; var pDelta: CGScreenUpdateMoveDelta ): CGError; external name '_CGWaitForScreenUpdateRects';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Deallocate the list of rectangles received from
   `CGWaitForScreenRefreshRects' or `CGWaitForScreenUpdateRects'. }

procedure CGReleaseScreenRefreshRects( pRectArray: {variable-size-array} CGRectPtr); external name '_CGReleaseScreenRefreshRects';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)


{ Return true if the mouse cursor is visible, false otherwise. }

function CGCursorIsVisible: boolean_t; external name '_CGCursorIsVisible';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Return true if the mouse cursor is drawn in frame buffer memory, false
   otherwise. (The cursor could exist in an overlay plane or a similar
   mechanism that puts pixels on-screen without altering frame buffer
   content.) If the cursor is drawn in the frame buffer, it is read back
   along with window data.

   The return value is based on the union of the state of the cursor on all
   displays. If the cursor is drawn in the frame buffer on any display, this
   function returns true. }

function CGCursorIsDrawnInFramebuffer: boolean_t; external name '_CGCursorIsDrawnInFramebuffer';
(* CG_AVAILABLE_STARTING(__MAC_10_3, __IPHONE_NA) *)

{ Move the mouse cursor to the desired position in global display
   coordinates without generating events. }

function CGWarpMouseCursorPosition( newCursorPosition: CGPoint ): CGError; external name '_CGWarpMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

{ After posting a left mouse down with remote mouse drag suppressing
   hardware mouse move events, after some time with no remote mouse drag
   events a warning is logged to aid in diagnosing "my hardware mouse is
   dead" problems.

   Mouse-down conditions of arbitrary length may be produced deliberately,
   as when scrolling through a lengthly document. }

{$endc}

const
	kCGMouseDownEventMaskingDeadSwitchTimeout = 60.0;

{$ifc TARGET_OS_MAC}

{ Connect or disconnect the mouse and cursor while an application is in the
   foreground.

   When you call this function to disconnect the cursor and mouse, all
   events received by your application have a constant absolute location but
   contain mouse delta (change in X and Y) data. You may hide the cursor or
   change it into something appropriate for your application. You can
   reposition the cursor by using the function `CGDisplayMoveCursorToPoint'
   or `CGWarpMouseCursorPosition'. }

function CGAssociateMouseAndMouseCursorPosition( connected: boolean_t ): CGError; external name '_CGAssociateMouseAndMouseCursorPosition';
(* CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_NA) *)

{ Return a Core Foundation mach port (CFMachPort) that corresponds to the
   Mac OS X window server.

   Use this function to detect if the window server process exits or is not
   running. If this function returns NULL, the window server is not running.
   This code example shows how to register a callback function to detect
   when the window server exits:

     static void handleWindowServerDeath(CFMachPortRef port, void *info) (
       printf("Window Server port death detected!\n");
       CFRelease(port);
       exit(1);
     )

     static void watchForServerDeath() (
       CFMachPortRef port;
       port = CGWindowServerCFMachPort();
       CFMachPortSetInvalidationCallBack(port, handleWindowServerDeath);
     )

   Note that when the window server exits, there may be a few seconds during
   which no window server is running. This function will return NULL until a
   new window server is running.

   Your program will need to run a CFRunLoop for the port death callback to
   function. A program which does not use a CFRunLoop may periodically call
   `CFMachPortIsValid' to check whether the port is valid. }

function CGWindowServerCFMachPort: CFMachPortRef; external name '_CGWindowServerCFMachPort';
(* CG_AVAILABLE_STARTING(__MAC_10_1, __IPHONE_NA) *)
=======
=======
>>>>>>> origin/fixes_2_2
function CGInhibitLocalEvents( doInhibit: boolean_t ): CGError; external name '_CGInhibitLocalEvents';

{
 * Set the period of time in seconds that local hardware events (keyboard and mouse)
 * are suppressed after posting an event.  Defaults to 0.25 second.
 }
function CGSetLocalEventsSuppressionInterval( seconds: CFTimeInterval ): CGError; external name '_CGSetLocalEventsSuppressionInterval';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

{
 * By default, the flags that indicate modifier key state (Command, Alt, Shift, etc.)
 * from the system's keyboard and from other event sources are ORed together as an event is
 * posted into the system, and current key and mouse button state is considered in generating new events.
 * This function allows your application to enable or disable the
 * merging of event state.  When combining is turned off, the event state propagated in the events
 * posted by your app reflect state built up only by your app.  The state within your app's generated
 * event will not be combined with the system's current state, so the system-wide state reflecting key
 * and mouse button state will remain unchanged
 *
 * When called with doCombineState equal to FALSE, this function initializes local (per application)
 * state tracking information to a state of all keys, modifiers, and mouse buttons up.
 *
 * When called with doCombineState equal to TRUE, the current global state of keys, modifiers,
 * and mouse buttons are used in generating events.
 }
<<<<<<< HEAD
<<<<<<< HEAD

{ This function is obsolete. Use Quartz events and Quartz event sources
   instead. }

function CGEnableEventStateCombining( combineState: boolean_t ): CGError; external name '_CGEnableEventStateCombining';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{
 * Remote operation may want to inhibit local events (events from
 * the machine's keyboard and mouse).  This may be done either as a
 * explicit request (tracked per app) or as a short term side effect of
 * posting an event.
 *
 * CGInhibitLocalEvents() is typically used for long term remote operation
 * of a system, as in automated system testing or telecommuting applications.
 * Local device state changes are discarded.
 *
 * Local event inhibition is turned off if the app that requested it terminates.
 }

{ This function obsolete. Use
   `CGEventSourceSetLocalEventsFilterDuringSuppressionState' instead. }

function CGInhibitLocalEvents( inhibit: boolean_t ): CGError; external name '_CGInhibitLocalEvents';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{ This function is obsolete. Use `CGEventCreateMouseEvent' instead.

   Synthesize a low-level mouse-button event on the local machine.

   The parameter `mouseCursorPosition' specifies the new coordinates of the
   mouse in global display space.

   Pass true for `updateMouseCursorPosition' if the on-screen cursor should
   be moved to the location specified in the `mouseCursorPosition'
   parameter; otherwise, pass false.
   
   The parameter `buttonCount' specifies the number of mouse buttons, up to
   a maximum of 32.

   Pass true for `mouseButtonDown' to specify that the primary or left mouse
   button is down; otherwise, pass false. The remaining parameters are
   Boolean values that specify whether the remaining mouse buttons are down
   (true) or up (false). The second value, if any, should specify the state
   of the secondary mouse button (right). A third value should specify the
   state of the center button, and the remaining buttons should be in USB
   device order.

   Based on the values entered, the appropriate mouse-down, mouse-up,
   mouse-move, or mouse-drag events are generated, by comparing the new
   state with the current state. }

function CGPostMouseEvent( mouseCursorPosition: CGPoint; updateMouseCursorPosition: boolean_t; buttonCount: CGButtonCount; mouseButtonDown: boolean_t; ... ): CGError; external name '_CGPostMouseEvent';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

{ This function is obsolete. Use `CGEventCreateScrollWheelEvent' instead.

   Synthesize scroll wheel events.

   The parameter `wheelCount' specifies the number of scrolling devices, up
   to a maximum of 3.

   The parameter `wheel1' specifies a value that reflects the movement of
   the primary scrolling device on the mouse. The second and third values,
   if any, reflect the movements of the other scrolling devices on the
   mouse.

   Scrolling movement is represented by small signed integer values,
   typically in a range from -10 to +10. Large values may have unexpected
   results, depending on the application that processes the event. }

function CGPostScrollWheelEvent( wheelCount: CGWheelCount; wheel1: SInt32; ... ): CGError; external name '_CGPostScrollWheelEvent';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew

{
 * Synthesize keyboard events.  Based on the values entered,
 * the appropriate key down, key up, and flags changed events are generated.
 * If keyChar is NUL (0), an appropriate value will be guessed at, based on the
 * default keymapping.
 *
 * All keystrokes needed to generate a character must be entered, including
 * SHIFT, CONTROL, OPTION, and COMMAND keys.  For example, to produce a 'Z',
 * the SHIFT key must be down, the 'z' key must go down, and then the SHIFT
 * and 'z' key must be released:
 *	CGPostKeyboardEvent( (CGCharCode)0, (CGKeyCode)56, true ); // shift down
 *	CGPostKeyboardEvent( (CGCharCode)'Z', (CGKeyCode)6, true ); // 'z' down
 *	CGPostKeyboardEvent( (CGCharCode)'Z', (CGKeyCode)6, false ); // 'z' up
 *	CGPostKeyboardEvent( (CGCharCode)0, (CGKeyCode)56, false ); // 'shift up
 }

{ This function is obsolete. Use `CGEventCreateKeyboardEvent' instead. }

function CGPostKeyboardEvent( keyChar: CGCharCode; virtualKey: CGKeyCode; keyDown: boolean_t ): CGError; external name '_CGPostKeyboardEvent';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew

=======
{ This function is obsolete. Use `CGEventCreateKeyboardEvent' instead. }

function CGPostKeyboardEvent( keyChar: CGCharCode; virtualKey: CGKeyCode; keyDown: boolean_t ): CGError; external name '_CGPostKeyboardEvent';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

>>>>>>> origin/cpstrnew
{$endc}
=======
function CGEnableEventStateCombining( doCombineState: boolean_t ): CGError; external name '_CGEnableEventStateCombining';
>>>>>>> graemeg/fixes_2_2
=======
function CGEnableEventStateCombining( doCombineState: boolean_t ): CGError; external name '_CGEnableEventStateCombining';
>>>>>>> origin/fixes_2_2

{
 * By default the system suppresses local hardware events from the keyboard and mouse during
 * a short interval after a synthetic event is posted (see CGSetLocalEventsSuppressionInterval())
 * and while a synthetic mouse drag (mouse movement with the left/only mouse button down).
 *
 * Some classes of applications may want to enable events from some of the local hardware.
 * For example, an app may want to post only mouse events, and so may wish to permit local
 * keyboard hardware events to pass through. Set the filter state to permit keyboard events
 * prior to posting the mouse event after which you want to get keyboard events.
 *
 * This interface lets an app specify a state (event suppression interval, or mouse drag), and
 * a mask of event categories to be passed through. The new filter state takes effect
 * with the next event your app posts.
 }
<<<<<<< HEAD
<<<<<<< HEAD

{ A type specifying masks for classes of low-level events that can be
   filtered during event suppression states. }

=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
const
	kCGEventFilterMaskPermitLocalMouseEvents = $00000001;  { Mouse, scroll wheel }
	kCGEventFilterMaskPermitLocalKeyboardEvents = $00000002;  { Alphanumeric keys and Command, Option, Control, Shift, AlphaLock }
	kCGEventFilterMaskPermitSystemDefinedEvents = $00000004;  { Power key, bezel buttons, sticky keys }
type
	CGEventFilterMask = UInt32;

const
<<<<<<< HEAD
<<<<<<< HEAD
	kCGEventFilterMaskPermitAllEvents = $00000007;

{ A type specifying the event suppression states that can occur after
   posting an event. }

const
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
	kCGEventSuppressionStateSuppressionInterval = 0;
	kCGEventSuppressionStateRemoteMouseDrag = 1;
	kCGNumberOfEventSuppressionStates = 2;
type
	CGEventSuppressionState = UInt32;

<<<<<<< HEAD
<<<<<<< HEAD
{$ifc TARGET_OS_MAC}

{ This function is obsolete. Use
   `CGEventSourceSetLocalEventsFilterDuringSuppressionState' instead. }

function CGSetLocalEventsFilterDuringSuppressionState( filter: CGEventFilterMask; state: CGEventSuppressionState ): CGError; external name '_CGSetLocalEventsFilterDuringSuppressionState';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6, __IPHONE_NA, __IPHONE_NA) *)
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> graemeg/cpstrnew
=======
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)
>>>>>>> origin/cpstrnew

{
 * Set the period of time in seconds that local hardware events (keyboard and mouse)
 * are suppressed after posting an event.  Defaults to 0.25 second.
 }

{ This function is obsolete. Use
   `CGEventSourceSetLocalEventsSuppressionInterval' instead. }

function CGSetLocalEventsSuppressionInterval( seconds: CFTimeInterval ): CGError; external name '_CGSetLocalEventsSuppressionInterval';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_6,
    __IPHONE_NA, __IPHONE_NA) *)

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{ This function is obsolete. Use `CGWindowServerCreateServerPort'
   instead. }
function CGWindowServerCFMachPort: CFMachPortRef; external name '_CGWindowServerCFMachPort';
(* CG_AVAILABLE_BUT_DEPRECATED(__MAC_10_1, __MAC_10_8, __IPHONE_NA, __IPHONE_NA) *)

{$endc}


=======
{$endc}

>>>>>>> graemeg/cpstrnew
=======
{$endc}

>>>>>>> graemeg/cpstrnew
=======
{$endc}

>>>>>>> graemeg/cpstrnew
=======
{$endc}

>>>>>>> origin/cpstrnew
{ Obsolete. Present for backwards compatibility with old header typos. }

{
#define kCGEventSupressionStateSupressionInterval			\
  kCGEventSuppressionStateSuppressionInterval
#define kCGEventSupressionStateRemoteMouseDrag				\
  kCGEventSuppressionStateRemoteMouseDrag
#define kCGNumberOfEventSupressionStates				\
  kCGNumberOfEventSuppressionStates
#define CGEventSupressionState						\
  CGEventSuppressionState
#define CGSetLocalEventsFilterDuringSupressionState(filter, state)	\
  CGSetLocalEventsFilterDuringSuppressionState(filter, state)
}

{ A type representing the count of items in an array of Quartz rectangles. }

type
	CGRectCount = UInt32;
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
=======
>>>>>>> origin/fixes_2_2
const
	kCGEventFilterMaskPermitAllEvents = $00000007;

function CGSetLocalEventsFilterDuringSuppressionState( filter: CGEventFilterMask; state: CGEventSuppressionState ): CGError; external name '_CGSetLocalEventsFilterDuringSuppressionState';

{
 * After posting a left mouse down, with remote mouse drag suppressing hardware mouse
 * move events, after some time with no remote mouse drag events, a warning is logged
 * to aid in diagnosing 'my hardware mouse is dead' problems.
 * No mechanism is provided to defeat this timeout.
 *
 * Mouse-down conditions of arbitrary length may be produced deliberately, as when scrolling
 * through a lengthly document.
 }
const
	kCGMouseDownEventMaskingDeadSwitchTimeout = 60.0;


{
 * Helper function to connect or disconnect the mouse and mouse cursor while the calling app
 * is in the foreground.
 *
 * While disconnected, mouse move and drag events will reflect the current position of
 * the mouse cursor position, which will not change with mouse movement. Use the
 * <CoreGraphics/CGDirectDisplay.h> function:
 *
 *	void CGGetLastMouseDelta( CGMouseDelta * deltaX, CGMouseDelta * deltaY );
 *
 * This will report mouse movement associated with the last mouse move or drag event.
 *
 * To update the display cursor position, use the function defined in this module:
 *
 *	CGError CGWarpMouseCursorPosition( CGPoint newCursorPosition );
 *
 * Note: The Force Quit key combination (CMD-OPT-ESC by default) will reconnect the mouse and cursor.
 }
function CGAssociateMouseAndMouseCursorPosition( connected: boolean_t ): CGError; external name '_CGAssociateMouseAndMouseCursorPosition';

{
 * Some classes of applications need to detect when the window server process dies, or
 * is not running.  The easiest way to do this is to use a CFMachPortRef.
 *
 * If the CoreGraphics window server is not running, this function returns NULL.
 * If the server is running, a CFMachPortRef is returned.
 *
 * A program can register a callback function to use a CFMachPortRef to determine
 * when the CoreGraphics window server exits:
 *
 * static void handleWindowServerDeath( CFMachPortRef port, void *info )
 * (
 *     printf( "Window Server port death detected!\n" );
 *     CFRelease( port );
 *     exit( 1 );
 * )
 * 
 * static void watchForServerDeath()
 * (
 *     CFMachPortRef 		port;
 *
 *     port = CGWindowServerCFMachPort();
 *     CFMachPortSetInvalidationCallBack( port, handleWindowServerDeath );
 * )
 *
 * Note that when the window server exits, there may be a few seconds during which
 * no window server is running, until the operating system starts a new
 * window server/loginwindow pair of processes.  This function will return NULL
 * until a new window server is running.
 *
 * Multiple calls to this function may return multiple CFMachPortRefs, each referring
 * to the same Mach port.  Multiple callbacks registered on multiple CFMachPortRefs
 * obtained in this way may fire in a nondetermanistic manner.
 *
 * Your program will need to run a CFRunLoop for the port death
 * callback to function.  A program which does not use a CFRunLoop may use
 * CFMachPortIsValid(CFMachPortRef port) periodically to check if the port is valid.
 }
function CGWindowServerCFMachPort: CFMachPortRef; external name '_CGWindowServerCFMachPort';


{
 * OBSOLETE!
 *
 * Present for backwards compatibility with old header typos.
 }
{
#define    kCGEventSupressionStateSupressionInterval kCGEventSuppressionStateSuppressionInterval
#define    kCGEventSupressionStateRemoteMouseDrag kCGEventSuppressionStateRemoteMouseDrag
#define    kCGNumberOfEventSupressionStates kCGNumberOfEventSuppressionStates
#define CGEventSupressionState CGEventSuppressionState
#define CGSetLocalEventsFilterDuringSupressionState(filter, state) \
        CGSetLocalEventsFilterDuringSuppressionState(filter, state)
}

end.
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
