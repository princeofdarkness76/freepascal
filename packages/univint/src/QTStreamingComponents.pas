{
<<<<<<< HEAD
     File:       QuickTime/QTStreamingComponents.h
 
     Contains:   QuickTime Interfaces.
 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     Version:    QuickTime 7.7.1
 
     Copyright:  © 1990-2012 by Apple Inc., all rights reserved
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1990-2008 by Apple Inc., all rights reserved
>>>>>>> graemeg/cpstrnew
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1990-2008 by Apple Inc., all rights reserved
>>>>>>> graemeg/cpstrnew
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1990-2008 by Apple Inc., all rights reserved
>>>>>>> graemeg/cpstrnew
=======
     Version:    QuickTime 7.6.3
 
     Copyright:  © 1990-2008 by Apple Inc., all rights reserved
>>>>>>> origin/cpstrnew
=======
     File:       QTStreamingComponents.p
 
     Contains:   QuickTime Interfaces.
 
     Version:    Technology: QuickTime 6.0
                 Release:    Universal Interfaces 3.4.2
 
     Copyright:  © 1990-2002 by Apple Computer, Inc., all rights reserved
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

unit QTStreamingComponents;
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
{$elsec}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
{$endc}
<<<<<<< HEAD
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
=======
>>>>>>> origin/cpstrnew
{$elifc defined __x86_64__ and __x86_64__}
	{$setc TARGET_CPU_PPC := FALSE}
	{$setc TARGET_CPU_PPC64 := FALSE}
	{$setc TARGET_CPU_X86 := FALSE}
	{$setc TARGET_CPU_X86_64 := TRUE}
	{$setc TARGET_CPU_ARM := FALSE}
<<<<<<< HEAD
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
uses MacTypes,Components,Dialogs,Movies,QuickTimeStreaming;
{$endc} {not MACOSALLINCLUDE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew

{$ifc TARGET_OS_MAC}
=======
>>>>>>> origin/cpstrnew

{$ifc TARGET_OS_MAC}

{$ifc TARGET_OS_MAC}

{$ifc TARGET_OS_MAC}

{$ALIGN MAC68K}


{ QuickTime is not available to 64-bit clients }

{$ifc not TARGET_CPU_64}

{============================================================================
        Stream Sourcer
============================================================================}
const
	kQTSSourcerType = FourCharCode('srcr');

type
	QTSSourcer = ComponentInstance;
const
	kQTSSGChannelSourcerType = FourCharCode('sgch');
	kQTSMovieTrackSourcerType = FourCharCode('trak');
	kQTSPushDataSourcerType = FourCharCode('push');

{ flags for sourcer data }
const
=======
uses MacTypes,Dialogs,Components,Movies,QuickTimeStreaming;


{$ALIGN MAC68K}

{============================================================================
        Stream Sourcer
============================================================================}

const
	kQTSSourcerType				= FourCharCode('srcr');


type
	QTSSourcer							= ComponentInstance;

const
	kQTSSGChannelSourcerType	= FourCharCode('sgch');
	kQTSMovieTrackSourcerType	= FourCharCode('trak');
	kQTSPushDataSourcerType		= FourCharCode('push');

	{	 flags for sourcer data 	}
>>>>>>> graemeg/fixes_2_2
	kQTSSourcerDataFlag_SyncSample = $00000001;
	kQTSPushDataSourcerFlag_SampleTimeIsValid = $80000000;


<<<<<<< HEAD
const
	kQTSSourcerInitParamsVersion1 = 1;

type
	QTSSourcerInitParamsPtr = ^QTSSourcerInitParams;
	QTSSourcerInitParams = record
		version: SInt32;
		flags: SInt32;
		dataType: OSType;
		data: UnivPtr;
		dataLength: UInt32;
	end;
{
 *  QTSNewSourcer()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSNewSourcer( params: UnivPtr; const (*var*) inInitParams: QTSSourcerInitParams; inFlags: SInt32; var outSourcer: ComponentInstance ): OSErr; external name '_QTSNewSourcer';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ info selectors for sourcers - get and set }
const
	kQTSInfo_Track = FourCharCode('trak'); { QTSTrackParams* }
	kQTSInfo_Loop = FourCharCode('loop'); { QTSLoopParams* }
	kQTSInfo_SourcerTiming = FourCharCode('stim'); { QTSSourcerTimingParams* }
	kQTSInfo_TargetFrameRate = FourCharCode('tfps'); { Fixed * in frames per second }
	kQTSInfo_PushData = FourCharCode('push'); { QTSPushDataParams* }
	kQTSInfo_SourcerCallbackProc = FourCharCode('scbp'); { QTSSourcerCallbackProcParams* }
	kQTSInfo_TargetDataRate = FourCharCode('tdrt'); { UInt32 * in bytes per second }
	kQTSInfo_AudioAutoGainOnOff = FourCharCode('agc '); { Boolean*  - error if unavailable}
	kQTSInfo_AudioGain = FourCharCode('gain'); { Fixed* kFixed1 is unity gain }
	kQTSInfo_CroppedInputRect = FourCharCode('crpr'); { Rect* - defined relative to kQTSInfo_FullInputRect below }
	kQTSInfo_SpatialSettings = FourCharCode('sptl'); { pointer to SCSpatialSettings struct}
	kQTSInfo_TemporalSettings = FourCharCode('tprl'); { pointer to SCTemporalSettings struct}
	kQTSInfo_DataRateSettings = FourCharCode('drat'); { pointer to SCDataRateSettings struct}
	kQTSInfo_CodecFlags = FourCharCode('cflg'); { pointer to CodecFlags}
	kQTSInfo_CodecSettings = FourCharCode('cdec'); { pointer to Handle}
	kQTSInfo_ForceKeyValue = FourCharCode('ksim'); { pointer to long}
	kQTSInfo_SoundSampleRate = FourCharCode('ssrt'); { pointer to UnsignedFixed}
	kQTSInfo_SoundSampleSize = FourCharCode('ssss'); { pointer to short}
	kQTSInfo_SoundChannelCount = FourCharCode('sscc'); { pointer to short}
	kQTSInfo_SoundCompression = FourCharCode('ssct'); { pointer to OSType}
	kQTSInfo_CompressionList = FourCharCode('ctyl'); { pointer to OSType Handle}
	kQTSInfo_VideoHue = FourCharCode('hue '); { UInt16* }
	kQTSInfo_VideoSaturation = FourCharCode('satr'); { UInt16* }
	kQTSInfo_VideoContrast = FourCharCode('trst'); { UInt16* }
	kQTSInfo_VideoBrightness = FourCharCode('brit'); { UInt16* }
	kQTSInfo_VideoSharpness = FourCharCode('shrp'); { UInt16* }
	kQTSInfo_TimeScale = FourCharCode('scal'); { UInt32* }
	kQTSInfo_SGChannelDeviceName = FourCharCode('innm'); { Handle* }
	kQTSInfo_SGChannelDeviceList = FourCharCode('srdl'); { SGDeviceList* }
	kQTSInfo_SGChannelDeviceInput = FourCharCode('sdii'); { short* }
	kQTSInfo_SGChannelSettings = FourCharCode('sesg'); { QTSSGChannelSettingsParams }
	kQTSInfo_PreviewWhileRecordingMode = FourCharCode('srpr'); { Boolean* }
	kQTSInfo_CompressionParams = FourCharCode('sccp'); { QTAtomContainer* }

{ info selectors for sourcers - get only}
const
	kQTSInfo_SGChannel = FourCharCode('sgch'); { SGChannel* }
	kQTSInfo_SGChannelInputName = FourCharCode('srnm'); { Handle* }
	kQTSInfo_FullInputRect = FourCharCode('fulr'); { Rect* }

{ loop flags }
const
	kQTSLoopFlag_Loop = $00000001;

const
	kQTSLoopParamsVersion1 = 1;
=======
	kQTSSourcerInitParamsVersion1 = 1;


type
	QTSSourcerInitParamsPtr = ^QTSSourcerInitParams;
	QTSSourcerInitParams = record
		version:				SInt32;
		flags:					SInt32;
		dataType:				OSType;
		data:					Ptr;
		dataLength:				UInt32;
	end;

	{
	 *  QTSNewSourcer()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
	 *    CarbonLib:        in CarbonLib 1.3 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function QTSNewSourcer(params: UnivPtr; const (*var*) inInitParams: QTSSourcerInitParams; inFlags: SInt32; var outSourcer: ComponentInstance): OSErr; external name '_QTSNewSourcer';

{ info selectors for sourcers - get and set }

const
	kQTSInfo_Track				= FourCharCode('trak');						{  QTSTrackParams*  }
	kQTSInfo_Loop				= FourCharCode('loop');						{  QTSLoopParams*  }
	kQTSInfo_SourcerTiming		= FourCharCode('stim');						{  QTSSourcerTimingParams*  }
	kQTSInfo_TargetFrameRate	= FourCharCode('tfps');						{  Fixed * in frames per second  }
	kQTSInfo_PushData			= FourCharCode('push');						{  QTSPushDataParams*  }
	kQTSInfo_SourcerCallbackProc = FourCharCode('scbp');						{  QTSSourcerCallbackProcParams*  }
	kQTSInfo_TargetDataRate		= FourCharCode('tdrt');						{  UInt32 * in bytes per second  }
	kQTSInfo_AudioAutoGainOnOff	= FourCharCode('agc ');						{  Boolean*  - error if unavailable }
	kQTSInfo_AudioGain			= FourCharCode('gain');						{  Fixed* kFixed1 is unity gain  }
	kQTSInfo_CroppedInputRect	= FourCharCode('crpr');						{  Rect* - defined relative to kQTSInfo_FullInputRect below  }
	kQTSInfo_SpatialSettings	= FourCharCode('sptl');						{  pointer to SCSpatialSettings struct }
	kQTSInfo_TemporalSettings	= FourCharCode('tprl');						{  pointer to SCTemporalSettings struct }
	kQTSInfo_DataRateSettings	= FourCharCode('drat');						{  pointer to SCDataRateSettings struct }
	kQTSInfo_CodecFlags			= FourCharCode('cflg');						{  pointer to CodecFlags }
	kQTSInfo_CodecSettings		= FourCharCode('cdec');						{  pointer to Handle }
	kQTSInfo_ForceKeyValue		= FourCharCode('ksim');						{  pointer to long }
	kQTSInfo_SoundSampleRate	= FourCharCode('ssrt');						{  pointer to UnsignedFixed }
	kQTSInfo_SoundSampleSize	= FourCharCode('ssss');						{  pointer to short }
	kQTSInfo_SoundChannelCount	= FourCharCode('sscc');						{  pointer to short }
	kQTSInfo_SoundCompression	= FourCharCode('ssct');						{  pointer to OSType }
	kQTSInfo_CompressionList	= FourCharCode('ctyl');						{  pointer to OSType Handle }
	kQTSInfo_VideoHue			= FourCharCode('hue ');						{  UInt16*  }
	kQTSInfo_VideoSaturation	= FourCharCode('satr');						{  UInt16*  }
	kQTSInfo_VideoContrast		= FourCharCode('trst');						{  UInt16*  }
	kQTSInfo_VideoBrightness	= FourCharCode('brit');						{  UInt16*  }
	kQTSInfo_VideoSharpness		= FourCharCode('shrp');						{  UInt16*  }
	kQTSInfo_TimeScale			= FourCharCode('scal');						{  UInt32*  }
	kQTSInfo_SGChannelDeviceName = FourCharCode('innm');						{  Handle*  }
	kQTSInfo_SGChannelDeviceList = FourCharCode('srdl');						{  SGDeviceList*  }
	kQTSInfo_SGChannelDeviceInput = FourCharCode('sdii');						{  short*  }
	kQTSInfo_SGChannelSettings	= FourCharCode('sesg');						{  QTSSGChannelSettingsParams  }
	kQTSInfo_PreviewWhileRecordingMode = FourCharCode('srpr');				{  Boolean*  }
	kQTSInfo_CompressionParams	= FourCharCode('sccp');						{  QTAtomContainer*  }

	{	 info selectors for sourcers - get only	}
	kQTSInfo_SGChannel			= FourCharCode('sgch');						{  SGChannel*  }
	kQTSInfo_SGChannelInputName	= FourCharCode('srnm');						{  Handle*  }
	kQTSInfo_FullInputRect		= FourCharCode('fulr');						{  Rect*  }

	{	 loop flags 	}
	kQTSLoopFlag_Loop			= $00000001;

	kQTSLoopParamsVersion1		= 1;

>>>>>>> graemeg/fixes_2_2

type
	QTSLoopParamsPtr = ^QTSLoopParams;
	QTSLoopParams = record
<<<<<<< HEAD
		version: SInt32;
		flags: SInt32;
		loopFlags: SInt32;
		flagsMask: SInt32;
		numLoops: SInt32;
	end;
const
	kQTSTrackParamsVersion1 = 1;
=======
		version:				SInt32;
		flags:					SInt32;
		loopFlags:				SInt32;
		flagsMask:				SInt32;
		numLoops:				SInt32;
	end;


const
	kQTSTrackParamsVersion1		= 1;

>>>>>>> graemeg/fixes_2_2

type
	QTSTrackParamsPtr = ^QTSTrackParams;
	QTSTrackParams = record
<<<<<<< HEAD
		version: SInt32;
		flags: SInt32;
		track: Track_fix;
		trackStartOffset: TimeValue64;       { to start other than at the beginning otherwise set to 0}
		duration: TimeValue64;               { to limit the duration otherwise set to 0}
		loopParams: QTSLoopParamsPtr;             { set to NULL if not using; default is no looping }
	end;
const
	kQTSSourcerTimingParamsVersion1 = 1;

type
	QTSSourcerTimingParamsPtr = ^QTSSourcerTimingParams;
	QTSSourcerTimingParams = record
		version: SInt32;
		flags: SInt32;
		timeScale_: TimeScale;
		presentationStartTime: TimeValue64;
		presentationEndTime: TimeValue64;
		presentationCurrentTime: TimeValue64;
		localStartTime: TimeValue64;
		localEndTime: TimeValue64;
		localCurrentTime: TimeValue64;
	end;
const
	kQTSPushDataParamsVersion1 = 1;

const
	kQTSPushDataFlag_SampleTimeIsValid = $00000001;
	kQTSPushDataFlag_DurationIsValid = $00000002;

type
	QTSPushDataParamsPtr = ^QTSPushDataParams;
	QTSPushDataParams = record
		version: SInt32;
		flags: SInt32;
		sampleDescription: SampleDescriptionHandle; { caller owns the handle }
		sampleDescSeed: UInt32;
		sampleTime: TimeValue64;             { also set flag if you set this }
		duration: TimeValue64;               { also set flag if you set this }
		dataLength: UInt32;
		dataPtr: UnivPtr;                { this does not have to be a real macintosh Ptr }
	end;
=======
		version:				SInt32;
		flags:					SInt32;
		track:					Track_fix;
		trackStartOffset:		TimeValue64;							{  to start other than at the beginning otherwise set to 0 }
		duration:				TimeValue64;							{  to limit the duration otherwise set to 0 }
		loopParams:				QTSLoopParamsPtr;						{  set to NULL if not using; default is no looping  }
	end;


const
	kQTSSourcerTimingParamsVersion1 = 1;


type
	QTSSourcerTimingParamsPtr = ^QTSSourcerTimingParams;
	QTSSourcerTimingParams = record
		version:				SInt32;
		flags:					SInt32;
		timeScale:				TimeScale_fix;
		presentationStartTime:	TimeValue64;
		presentationEndTime:	TimeValue64;
		presentationCurrentTime: TimeValue64;
		localStartTime:			TimeValue64;
		localEndTime:			TimeValue64;
		localCurrentTime:		TimeValue64;
	end;


const
	kQTSPushDataParamsVersion1	= 1;

	kQTSPushDataFlag_SampleTimeIsValid = $00000001;
	kQTSPushDataFlag_DurationIsValid = $00000002;


type
	QTSPushDataParamsPtr = ^QTSPushDataParams;
	QTSPushDataParams = record
		version:				SInt32;
		flags:					SInt32;
		sampleDescription:		SampleDescriptionHandle;				{  caller owns the handle  }
		sampleDescSeed:			UInt32;
		sampleTime:				TimeValue64;							{  also set flag if you set this  }
		duration:				TimeValue64;							{  also set flag if you set this  }
		dataLength:				UInt32;
		dataPtr:				Ptr;									{  this does not have to be a real macintosh Ptr  }
	end;


>>>>>>> graemeg/fixes_2_2
const
	kQTSSourcerCallbackProcParamsVersion1 = 1;


type
	QTSSourcerCallbackProcParamsPtr = ^QTSSourcerCallbackProcParams;
	QTSSourcerCallbackProcParams = record
<<<<<<< HEAD
		version: SInt32;
		flags: SInt32;
		proc: QTSNotificationUPP;
		refCon: UnivPtr;
	end;
{ track sourcer callback selectors}
const
	kQTSSourcerCallback_Done = FourCharCode('done'); { QTSSourcerDoneParams* }
<<<<<<< HEAD


=======


>>>>>>> origin/cpstrnew
{ push data sourcer callback selectors}
const
	kQTSPushDataSourcerCallback_HasCharacteristic = $050D; { QTSPushDataHasCharacteristicParams* }
	kQTSPushDataSourcerCallback_SetInfo = $0507; { QTSPushDataInfoParams* }
	kQTSPushDataSourcerCallback_GetInfo = $0508; { QTSPushDataInfoParams* }
=======
		version:				SInt32;
		flags:					SInt32;
		proc:					QTSNotificationUPP;
		refCon:					Ptr;
	end;

	{  track sourcer callback selectors }

const
	kQTSSourcerCallback_Done	= FourCharCode('done');						{  QTSSourcerDoneParams*  }


	{  push data sourcer callback selectors }
	kQTSPushDataSourcerCallback_HasCharacteristic = $050D;		{  QTSPushDataHasCharacteristicParams*  }
	kQTSPushDataSourcerCallback_SetInfo = $0507;				{  QTSPushDataInfoParams*  }
	kQTSPushDataSourcerCallback_GetInfo = $0508;				{  QTSPushDataInfoParams*  }

>>>>>>> graemeg/fixes_2_2

type
	QTSPushDataHasCharacteristicParamsPtr = ^QTSPushDataHasCharacteristicParams;
	QTSPushDataHasCharacteristicParams = record
<<<<<<< HEAD
		version: SInt32;
		flags: SInt32;
		characteristic: OSType;
		returnedHasIt: Boolean;
		reserved1: SInt8;
		reserved2: SInt8;
		reserved3: SInt8;
	end;
type
	QTSPushDataInfoParamsPtr = ^QTSPushDataInfoParams;
	QTSPushDataInfoParams = record
		version: SInt32;
		flags: SInt32;
		selector: OSType;
		ioParams: UnivPtr;
	end;
const
	kQTSSourcerDoneParamsVersion1 = 1;

type
	QTSSourcerDoneParamsPtr = ^QTSSourcerDoneParams;
	QTSSourcerDoneParams = record
		version: SInt32;
		flags: SInt32;
		sourcer: ComponentInstance;
	end;
type
	QTSSGChannelSettingsParamsPtr = ^QTSSGChannelSettingsParams;
	QTSSGChannelSettingsParams = record
		settings: UserData;
		flags: SInt32;
	end;

{-----------------------------------------
    Stream Sourcer Selectors
-----------------------------------------}
const
	kQTSSourcerInitializeSelect = $0500;
	kQTSSourcerSetEnableSelect = $0503;
	kQTSSourcerGetEnableSelect = $0504;
	kQTSSourcerSetInfoSelect = $0507;
	kQTSSourcerGetInfoSelect = $0508;
	kQTSSourcerSetTimeScaleSelect = $050E;
	kQTSSourcerGetTimeScaleSelect = $050F;
	kQTSSourcerIdleSelect = $0516;

{-----------------------------------------
    Stream Sourcer Prototypes
-----------------------------------------}
{
 *  QTSSourcerInitialize()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.1 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.6 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0.1 and later
 }
function QTSSourcerInitialize( inSourcer: QTSSourcer; const (*var*) inInitParams: QTSSourcerInitParams ): ComponentResult; external name '_QTSSourcerInitialize';
(* AVAILABLE_MAC_OS_X_VERSION_10_1_AND_LATER *)


=======
		version:				SInt32;
		flags:					SInt32;
		characteristic:			OSType;
		returnedHasIt:			boolean;
		reserved1:				SInt8;
		reserved2:				SInt8;
		reserved3:				SInt8;
	end;

	QTSPushDataInfoParamsPtr = ^QTSPushDataInfoParams;
	QTSPushDataInfoParams = record
		version:				SInt32;
		flags:					SInt32;
		selector:				OSType;
		ioParams:				Ptr;
	end;


const
	kQTSSourcerDoneParamsVersion1 = 1;


type
	QTSSourcerDoneParamsPtr = ^QTSSourcerDoneParams;
	QTSSourcerDoneParams = record
		version:				SInt32;
		flags:					SInt32;
		sourcer:				ComponentInstance;
	end;

	QTSSGChannelSettingsParamsPtr = ^QTSSGChannelSettingsParams;
	QTSSGChannelSettingsParams = record
		settings:				UserData;
		flags:					SInt32;
	end;


	{	-----------------------------------------
	    Stream Sourcer Selectors
	-----------------------------------------	}

const
	kQTSSourcerInitializeSelect	= $0500;
	kQTSSourcerSetEnableSelect	= $0503;
	kQTSSourcerGetEnableSelect	= $0504;
	kQTSSourcerSetInfoSelect	= $0507;
	kQTSSourcerGetInfoSelect	= $0508;
	kQTSSourcerSetTimeScaleSelect = $050E;
	kQTSSourcerGetTimeScaleSelect = $050F;
	kQTSSourcerIdleSelect		= $0516;

	{	-----------------------------------------
	    Stream Sourcer Prototypes
	-----------------------------------------	}
	{
	 *  QTSSourcerInitialize()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 5.0.1 and later
	 *    CarbonLib:        in CarbonLib 1.6 and later
	 *    Mac OS X:         in version 10.1 and later
	 	}
function QTSSourcerInitialize(inSourcer: QTSSourcer; const (*var*) inInitParams: QTSSourcerInitParams): ComponentResult; external name '_QTSSourcerInitialize';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerIdle()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerIdle( inSourcer: QTSSourcer; (*const*) var inTime: TimeValue64; inFlags: SInt32; var outFlags: SInt32 ): ComponentResult; external name '_QTSSourcerIdle';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerIdle(inSourcer: QTSSourcer; (*const*) var inTime: TimeValue64; inFlags: SInt32; var outFlags: SInt32): ComponentResult; external name '_QTSSourcerIdle';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerSetEnable()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerSetEnable( inSourcer: QTSSourcer; inEnableMode: Boolean; inFlags: SInt32 ): ComponentResult; external name '_QTSSourcerSetEnable';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerSetEnable(inSourcer: QTSSourcer; inEnableMode: boolean; inFlags: SInt32): ComponentResult; external name '_QTSSourcerSetEnable';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerGetEnable()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerGetEnable( inSourcer: QTSSourcer; var outEnableMode: Boolean; inFlags: SInt32 ): ComponentResult; external name '_QTSSourcerGetEnable';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerGetEnable(inSourcer: QTSSourcer; var outEnableMode: boolean; inFlags: SInt32): ComponentResult; external name '_QTSSourcerGetEnable';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerSetTimeScale()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerSetTimeScale( inSourcer: QTSSourcer; inTimeScale: TimeScale ): ComponentResult; external name '_QTSSourcerSetTimeScale';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerSetTimeScale(inSourcer: QTSSourcer; inTimeScale: TimeScale): ComponentResult; external name '_QTSSourcerSetTimeScale';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerGetTimeScale()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerGetTimeScale( inSourcer: QTSSourcer; var outTimeScale: TimeScale ): ComponentResult; external name '_QTSSourcerGetTimeScale';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerGetTimeScale(inSourcer: QTSSourcer; var outTimeScale: TimeScale): ComponentResult; external name '_QTSSourcerGetTimeScale';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerSetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerSetInfo( inSourcer: QTSSourcer; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_QTSSourcerSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerSetInfo(inSourcer: QTSSourcer; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_QTSSourcerSetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  QTSSourcerGetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 }
function QTSSourcerGetInfo( inSourcer: QTSSourcer; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_QTSSourcerGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> graemeg/cpstrnew

const
	kQTSInfo_InputDeviceName = FourCharCode('innm'); { Handle* }
	kQTSInfo_InputSourceName = FourCharCode('srnm'); { Handle* }
=======
>>>>>>> origin/cpstrnew

<<<<<<< HEAD

<<<<<<< HEAD
{============================================================================
        Stream Handler
============================================================================}

=======
=======
>>>>>>> origin/cpstrnew
const
	kQTSInfo_InputDeviceName = FourCharCode('innm'); { Handle* }
	kQTSInfo_InputSourceName = FourCharCode('srnm'); { Handle* }


{============================================================================
        Stream Handler
============================================================================}

<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{
    Server edits are only valid for the current chunk
}
type
	SHServerEditParametersPtr = ^SHServerEditParameters;
	SHServerEditParameters = record
		version: UInt32;
		editRate: Fixed;
		dataStartTime_mediaAxis: TimeValue64;
		dataEndTime_mediaAxis: TimeValue64;
	end;
const
	kSHNoChunkDispatchFlags = 0;
	kSHChunkFlagSyncSample = 1 shl 2;
	kSHChunkFlagDataLoss = 1 shl 4;
	kSHChunkFlagExtended = 1 shl 5;
=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function QTSSourcerGetInfo(inSourcer: QTSSourcer; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_QTSSourcerGetInfo';
const
	kQTSInfo_InputDeviceName	= FourCharCode('innm');						{  Handle*  }
	kQTSInfo_InputSourceName	= FourCharCode('srnm');						{  Handle*  }


	{	============================================================================
	        Stream Handler
	============================================================================	}

	{	
	    Server edits are only valid for the current chunk
		}

type
	SHServerEditParametersPtr = ^SHServerEditParameters;
	SHServerEditParameters = record
		version:				UInt32;
		editRate:				Fixed;
		dataStartTime_mediaAxis: TimeValue64;
		dataEndTime_mediaAxis:	TimeValue64;
	end;


const
	kSHNoChunkDispatchFlags		= 0;
	kSHChunkFlagSyncSample		= $04;
	kSHChunkFlagDataLoss		= $10;
	kSHChunkFlagExtended		= $20;

>>>>>>> graemeg/fixes_2_2

type
	SHChunkRecordPtr = ^SHChunkRecord;
	SHChunkRecord = record
<<<<<<< HEAD
		version: UInt32;
		reserved1: SIGNEDLONG;
		flags: SInt32;
		dataSize: UInt32;
		dataPtr: UInt8Ptr;
		reserved2: SIGNEDLONG;
		reserved3: SIGNEDLONG;
		presentationTime: TimeValue64;

		reserved4: SIGNEDLONG;
		reserved5: SIGNEDLONG;
		serverEditParameters: {const} SHServerEditParametersPtr;
		reserved6: SIGNEDLONG;
		reserved7: SIGNEDLONG;
	end;
const
	kSHNumExtendedDataLongs = 10;

const
	kSHExtendedChunkFlag_HasSampleCount = 1 shl 0;
	kSHExtendedChunkFlag_HasFrameLengths = 1 shl 1;
=======
		version:				UInt32;
		reserved1:				SInt32;
		flags:					SInt32;
		dataSize:				UInt32;
		dataPtr:				Ptr;
		reserved2:				SInt32;
		reserved3:				SInt32;
		presentationTime:		TimeValue64;
		reserved4:				SInt32;
		reserved5:				SInt32;
		serverEditParameters:	SHServerEditParametersPtr;
		reserved6:				SInt32;
		reserved7:				SInt32;
	end;


const
	kSHNumExtendedDataLongs		= 10;

	kSHExtendedChunkFlag_HasSampleCount = $01;
	kSHExtendedChunkFlag_HasFrameLengths = $02;

>>>>>>> graemeg/fixes_2_2

type
	SHExtendedChunkRecordPtr = ^SHExtendedChunkRecord;
	SHExtendedChunkRecord = record
<<<<<<< HEAD
		chunk: SHChunkRecord;
		extendedFlags: SInt32;
		extendedData: array [0..9] of SInt32;
	end;


{============================================================================
        RTP Components
============================================================================}

type
	RTPSSRC = UInt32;
const
	kRTPInvalidSSRC = 0;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew

{ RTP standard content encodings for audio }
const
	kRTPPayload_PCMU = 0;    { 8kHz PCM mu-law mono }
	kRTPPayload_1016 = 1;    { 8kHz CELP (Fed Std 1016) mono }
	kRTPPayload_G721 = 2;    { 8kHz G.721 ADPCM mono }
	kRTPPayload_GSM = 3;    { 8kHz GSM mono }
	kRTPPayload_G723 = 4;    { 8kHz G.723 ADPCM mono }
	kRTPPayload_DVI_8 = 5;    { 8kHz Intel DVI ADPCM mono }
	kRTPPayload_DVI_16 = 6;    { 16kHz Intel DVI ADPCM mono }
	kRTPPayload_LPC = 7;    { 8kHz LPC }
	kRTPPayload_PCMA = 8;    { 8kHz PCM a-law mono }
	kRTPPayload_L16_44_2 = 10;   { 44.1kHz 16-bit linear stereo }
	kRTPPayload_L16_44_1 = 11;   { 44.1kHz 16-bit linear mono }
	kRTPPayload_PureVoice = 12;   { 8kHz PureVoice mono (QCELP) }
	kRTPPayload_MPEGAUDIO = 14;   { MPEG I and II audio }
	kRTPPayload_DVI_11 = 16;   { 11kHz Intel DVI ADPCM mono }
	kRTPPayload_DVI_22 = 17;    { 22kHz Intel DVI ADPCM mono }

{ RTP standard content encodings for video }
const
	kRTPPayload_CELLB = 25;   { Sun CellB }
	kRTPPayload_JPEG = 26;   { JPEG }
	kRTPPayload_CUSEEME = 27;   { Cornell CU-SeeMe }
	kRTPPayload_NV = 28;   { Xerox PARC nv }
	kRTPPayload_PICWIN = 29;   { BBN Picture Window }
	kRTPPayload_CPV = 30;   { Bolter CPV }
	kRTPPayload_H261 = 31;   { CCITT H.261 }
	kRTPPayload_MPEGVIDEO = 32;   { MPEG I and II video }
	kRTPPayload_H263 = 34;    { CCITT H.263 }

{ Other RTP standard content encodings }
const
	kRTPPayload_MPEG2T = 33;    { MPEG 2 Transport }

{ Dynamic encodings }
const
	kRTPPayload_FirstDynamic = 96;
	kRTPPayload_LastDynamic = 127;
	kRTPPayload_Unknown = $FF;


{
-----------------------------------------
    RTP Info selectors
-----------------------------------------
}
{ ----- these are get and set ----- }
const
	kRTPInfo_SSRC = FourCharCode('ssrc'); { UInt32* }
	kRTPInfo_NextSeqNum = FourCharCode('rnsn'); { UInt16* }

{-----------------------------------------
    RTP Statistics
-----------------------------------------}
const
<<<<<<< HEAD
<<<<<<< HEAD
=======

{ RTP standard content encodings for audio }
const
	kRTPPayload_PCMU = 0;    { 8kHz PCM mu-law mono }
	kRTPPayload_1016 = 1;    { 8kHz CELP (Fed Std 1016) mono }
	kRTPPayload_G721 = 2;    { 8kHz G.721 ADPCM mono }
	kRTPPayload_GSM = 3;    { 8kHz GSM mono }
	kRTPPayload_G723 = 4;    { 8kHz G.723 ADPCM mono }
	kRTPPayload_DVI_8 = 5;    { 8kHz Intel DVI ADPCM mono }
	kRTPPayload_DVI_16 = 6;    { 16kHz Intel DVI ADPCM mono }
	kRTPPayload_LPC = 7;    { 8kHz LPC }
	kRTPPayload_PCMA = 8;    { 8kHz PCM a-law mono }
	kRTPPayload_L16_44_2 = 10;   { 44.1kHz 16-bit linear stereo }
	kRTPPayload_L16_44_1 = 11;   { 44.1kHz 16-bit linear mono }
	kRTPPayload_PureVoice = 12;   { 8kHz PureVoice mono (QCELP) }
	kRTPPayload_MPEGAUDIO = 14;   { MPEG I and II audio }
	kRTPPayload_DVI_11 = 16;   { 11kHz Intel DVI ADPCM mono }
	kRTPPayload_DVI_22 = 17;    { 22kHz Intel DVI ADPCM mono }

{ RTP standard content encodings for video }
const
	kRTPPayload_CELLB = 25;   { Sun CellB }
	kRTPPayload_JPEG = 26;   { JPEG }
	kRTPPayload_CUSEEME = 27;   { Cornell CU-SeeMe }
	kRTPPayload_NV = 28;   { Xerox PARC nv }
	kRTPPayload_PICWIN = 29;   { BBN Picture Window }
	kRTPPayload_CPV = 30;   { Bolter CPV }
	kRTPPayload_H261 = 31;   { CCITT H.261 }
	kRTPPayload_MPEGVIDEO = 32;   { MPEG I and II video }
	kRTPPayload_H263 = 34;    { CCITT H.263 }

{ Other RTP standard content encodings }
const
	kRTPPayload_MPEG2T = 33;    { MPEG 2 Transport }

{ Dynamic encodings }
const
	kRTPPayload_FirstDynamic = 96;
	kRTPPayload_LastDynamic = 127;
	kRTPPayload_Unknown = $FF;


{
-----------------------------------------
    RTP Info selectors
-----------------------------------------
}
{ ----- these are get and set ----- }
const
	kRTPInfo_SSRC = FourCharCode('ssrc'); { UInt32* }
	kRTPInfo_NextSeqNum = FourCharCode('rnsn'); { UInt16* }

{-----------------------------------------
    RTP Statistics
-----------------------------------------}
const
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
	kRTPTotalReceivedPktsStat = FourCharCode('trcp');
	kRTPTotalLostPktsStat = FourCharCode('tlsp');
	kRTPTotalProcessedPktsStat = FourCharCode('tprp');
	kRTPTotalDroppedPktsStat = FourCharCode('tdrp');
=======
		chunk:					SHChunkRecord;
		extendedFlags:			SInt32;
		extendedData:			array [0..9] of SInt32;
	end;


	{	============================================================================
	        RTP Components
	============================================================================	}
	RTPSSRC								= UInt32;

const
	kRTPInvalidSSRC				= 0;


	{	 RTP standard content encodings for audio 	}
	kRTPPayload_PCMU			= 0;							{  8kHz PCM mu-law mono  }
	kRTPPayload_1016			= 1;							{  8kHz CELP (Fed Std 1016) mono  }
	kRTPPayload_G721			= 2;							{  8kHz G.721 ADPCM mono  }
	kRTPPayload_GSM				= 3;							{  8kHz GSM mono  }
	kRTPPayload_G723			= 4;							{  8kHz G.723 ADPCM mono  }
	kRTPPayload_DVI_8			= 5;							{  8kHz Intel DVI ADPCM mono  }
	kRTPPayload_DVI_16			= 6;							{  16kHz Intel DVI ADPCM mono  }
	kRTPPayload_LPC				= 7;							{  8kHz LPC  }
	kRTPPayload_PCMA			= 8;							{  8kHz PCM a-law mono  }
	kRTPPayload_L16_44_2		= 10;							{  44.1kHz 16-bit linear stereo  }
	kRTPPayload_L16_44_1		= 11;							{  44.1kHz 16-bit linear mono  }
	kRTPPayload_PureVoice		= 12;							{  8kHz PureVoice mono (QCELP)  }
	kRTPPayload_MPEGAUDIO		= 14;							{  MPEG I and II audio  }
	kRTPPayload_DVI_11			= 16;							{  11kHz Intel DVI ADPCM mono  }
	kRTPPayload_DVI_22			= 17;							{  22kHz Intel DVI ADPCM mono  }

	{	 RTP standard content encodings for video 	}
	kRTPPayload_CELLB			= 25;							{  Sun CellB  }
	kRTPPayload_JPEG			= 26;							{  JPEG  }
	kRTPPayload_CUSEEME			= 27;							{  Cornell CU-SeeMe  }
	kRTPPayload_NV				= 28;							{  Xerox PARC nv  }
	kRTPPayload_PICWIN			= 29;							{  BBN Picture Window  }
	kRTPPayload_CPV				= 30;							{  Bolter CPV  }
	kRTPPayload_H261			= 31;							{  CCITT H.261  }
	kRTPPayload_MPEGVIDEO		= 32;							{  MPEG I and II video  }
	kRTPPayload_H263			= 34;							{  CCITT H.263  }

	{	 Other RTP standard content encodings 	}
	kRTPPayload_MPEG2T			= 33;							{  MPEG 2 Transport  }

	{	 Dynamic encodings 	}
	kRTPPayload_FirstDynamic	= 96;
	kRTPPayload_LastDynamic		= 127;
	kRTPPayload_Unknown			= $FF;


	{	
	-----------------------------------------
	    RTP Info selectors
	-----------------------------------------
		}
	{	 ----- these are get and set ----- 	}
	kRTPInfo_SSRC				= FourCharCode('ssrc');						{  UInt32*  }
	kRTPInfo_NextSeqNum			= FourCharCode('rnsn');						{  UInt16*  }

	{	-----------------------------------------
	    RTP Statistics
	-----------------------------------------	}
	kRTPTotalReceivedPktsStat	= FourCharCode('trcp');
	kRTPTotalLostPktsStat		= FourCharCode('tlsp');
	kRTPTotalProcessedPktsStat	= FourCharCode('tprp');
	kRTPTotalDroppedPktsStat	= FourCharCode('tdrp');
>>>>>>> graemeg/fixes_2_2
	kRTPBadHeaderDroppedPktsStat = FourCharCode('bhdp');
	kRTPOurHeaderDroppedPktsStat = FourCharCode('ohdp');
	kRTPNotReceivingSenderDroppedPktsStat = FourCharCode('nsdp');
	kRTPNotProcessingDroppedPktsStat = FourCharCode('npdp');
<<<<<<< HEAD
	kRTPBadSeqDroppedPktsStat = FourCharCode('bsdp');
	kRTPArriveTooLatePktsStat = FourCharCode('artl');
	kRTPWaitForSeqDroppedPktsStat = FourCharCode('wsdp');
	kRTPBadStateDroppedPktsStat = FourCharCode('stdp');
	kRTPBadPayloadDroppedPktsStat = FourCharCode('bpdp');
	kRTPNoTimeScaleDroppedPktsStat = FourCharCode('ntdp');
	kRTPDupSeqNumDroppedPktsStat = FourCharCode('dsdp');
	kRTPLostPktsPercentStat = FourCharCode('lspp');
	kRTPDroppedPktsPercentStat = FourCharCode('dppp');
	kRTPTotalUnprocessedPktsPercentStat = FourCharCode('tupp');
	kRTPRTCPDataRateStat = FourCharCode('rrcd');
	kRTPPayloadIDStat = FourCharCode('rpid');
	kRTPPayloadNameStat = FourCharCode('rpnm');
	kRTPNumPktsInQueueStat = FourCharCode('rnpq');
	kRTPTotalPktsInQueueStat = FourCharCode('rtpq');
	kRTPTotalOutOfOrderPktsStat = FourCharCode('rtoo');
	kRTPRetransmissionStat = FourCharCode('rrtx');
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD


=======


>>>>>>> graemeg/cpstrnew
=======
=======

>>>>>>> graemeg/cpstrnew

{-----------------------------------------
    Payload Info
-----------------------------------------}
const
	kRTPPayloadSpeedTag = FourCharCode('sped'); { 0-255, 255 is fastest}
	kRTPPayloadLossRecoveryTag = FourCharCode('loss'); { 0-255, 0 can't handle any loss, 128 can handle 50% packet loss}
	kRTPPayloadConformanceTag = FourCharCode('conf'); { more than one of these can be present}

>>>>>>> graemeg/cpstrnew
=======


>>>>>>> origin/cpstrnew
{-----------------------------------------
    Payload Info
-----------------------------------------}
const
	kRTPPayloadSpeedTag = FourCharCode('sped'); { 0-255, 255 is fastest}
	kRTPPayloadLossRecoveryTag = FourCharCode('loss'); { 0-255, 0 can't handle any loss, 128 can handle 50% packet loss}
	kRTPPayloadConformanceTag = FourCharCode('conf'); { more than one of these can be present}
=======
	kRTPBadSeqDroppedPktsStat	= FourCharCode('bsdp');
	kRTPArriveTooLatePktsStat	= FourCharCode('artl');
	kRTPWaitForSeqDroppedPktsStat = FourCharCode('wsdp');
	kRTPBadStateDroppedPktsStat	= FourCharCode('stdp');
	kRTPBadPayloadDroppedPktsStat = FourCharCode('bpdp');
	kRTPNoTimeScaleDroppedPktsStat = FourCharCode('ntdp');
	kRTPDupSeqNumDroppedPktsStat = FourCharCode('dsdp');
	kRTPLostPktsPercentStat		= FourCharCode('lspp');
	kRTPDroppedPktsPercentStat	= FourCharCode('dppp');
	kRTPTotalUnprocessedPktsPercentStat = FourCharCode('tupp');
	kRTPRTCPDataRateStat		= FourCharCode('rrcd');
	kRTPPayloadIDStat			= FourCharCode('rpid');
	kRTPPayloadNameStat			= FourCharCode('rpnm');
	kRTPNumPktsInQueueStat		= FourCharCode('rnpq');
	kRTPTotalPktsInQueueStat	= FourCharCode('rtpq');
	kRTPTotalOutOfOrderPktsStat	= FourCharCode('rtoo');
	kRTPRetransmissionStat		= FourCharCode('rrtx');


	{	-----------------------------------------
	    Payload Info
	-----------------------------------------	}
	kRTPPayloadSpeedTag			= FourCharCode('sped');						{  0-255, 255 is fastest }
	kRTPPayloadLossRecoveryTag	= FourCharCode('loss');						{  0-255, 0 can't handle any loss, 128 can handle 50% packet loss }
	kRTPPayloadConformanceTag	= FourCharCode('conf');						{  more than one of these can be present }

>>>>>>> graemeg/fixes_2_2

type
	RTPPayloadCharacteristicPtr = ^RTPPayloadCharacteristic;
	RTPPayloadCharacteristic = record
<<<<<<< HEAD
		tag: OSType;
		value: SIGNEDLONG;
	end;
{
    pass RTPPayloadSortRequest to QTSFindMediaPacketizer or QTSFindMediaPacketizerForTrack.
    define the characteristics to sort by. tag is key to sort on. value is positive for ascending
    sort (low value first), negative for descending sort (high value first).
}
type
	RTPPayloadSortRequest = record
		characteristicCount: SIGNEDLONG;
		characteristic: array [0..0] of RTPPayloadCharacteristic; { tag is key to sort on, value is + for ascending, - for descending}
	end;
	RTPPayloadSortRequestPtr = ^RTPPayloadSortRequest;
{ flags for RTPPayloadInfo }
const
	kRTPPayloadTypeStaticFlag = $00000001;
	kRTPPayloadTypeDynamicFlag = $00000002;

type
	RTPPayloadInfo = record
		payloadFlags: SIGNEDLONG;
		payloadID: UInt8;
		reserved1: SInt8;
		reserved2: SInt8;
		reserved3: SInt8;
    payloadName: array [0..1] of SInt8;
	end;
	RTPPayloadInfoPtr = ^RTPPayloadInfo;
type
	RTPPayloadInfoHandle = ^RTPPayloadInfoPtr;
{============================================================================
        RTP Reassembler
============================================================================}
type
	RTPReassembler = ComponentInstance;
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
const
	kRTPReassemblerType = FourCharCode('rtpr');

const
<<<<<<< HEAD
=======
const
	kRTPReassemblerType = FourCharCode('rtpr');

const
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
	kRTPBaseReassemblerType = FourCharCode('gnrc');
	kRTP261ReassemblerType = FourCharCode('h261');
	kRTP263ReassemblerType = FourCharCode('h263');
	kRTP263PlusReassemblerType = FourCharCode('263+');
	kRTPAudioReassemblerType = FourCharCode('soun');
	kRTPQTReassemblerType = FourCharCode('qtim');
	kRTPPureVoiceReassemblerType = FourCharCode('Qclp');
	kRTPJPEGReassemblerType = FourCharCode('jpeg');
	kRTPQDesign2ReassemblerType = FourCharCode('QDM2');
	kRTPSorensonReassemblerType = FourCharCode('SVQ1');
	kRTPMP3ReassemblerType = FourCharCode('mp3 ');
	kRTPMPEG4AudioReassemblerType = FourCharCode('mp4a');
	kRTPMPEG4VideoReassemblerType = FourCharCode('mp4v');

type
	RTPRssmInitParamsPtr = ^RTPRssmInitParams;
	RTPRssmInitParams = record
		ssrc: RTPSSRC;
		payloadType: UInt8;
		reserved1: UInt8;
		reserved2: UInt8;
		reserved3: UInt8;
		timeBase_: TimeBase;
		timeScale_: TimeScale;
	end;
type
	RTPDescParamsPtr = ^RTPDescParams;
	RTPDescParams = record
		container: QTAtomContainer;
		presentationParentAtom: QTAtom;
		streamParentAtom: QTAtom;
	end;
type
	RTPRssmMoreInitParamsPtr = ^RTPRssmMoreInitParams;
	RTPRssmMoreInitParams = record
		initParams: RTPRssmInitParams;
		version: SInt32;
		desc: RTPDescParams;
	end;
=======
		tag:					OSType;
		value:					SInt32;
	end;

	{	
	    pass RTPPayloadSortRequest to QTSFindMediaPacketizer or QTSFindMediaPacketizerForTrack.
	    define the characteristics to sort by. tag is key to sort on. value is positive for ascending
	    sort (low value first), negative for descending sort (high value first).
		}
	RTPPayloadSortRequestPtr = ^RTPPayloadSortRequest;
	RTPPayloadSortRequest = record
		characteristicCount:	SInt32;
		characteristic:			array [0..0] of RTPPayloadCharacteristic; {  tag is key to sort on, value is + for ascending, - for descending }
	end;

	{	 flags for RTPPayloadInfo 	}

const
	kRTPPayloadTypeStaticFlag	= $00000001;
	kRTPPayloadTypeDynamicFlag	= $00000002;


type
	RTPPayloadInfoPtr = ^RTPPayloadInfo;
	RTPPayloadInfo = record
		payloadFlags:			SInt32;
		payloadID:				SInt8;
		reserved1:				SInt8;
		reserved2:				SInt8;
		reserved3:				SInt8;
		payloadName:			SInt8;
	end;

	RTPPayloadInfoHandle				= ^RTPPayloadInfoPtr;
	{	============================================================================
	        RTP Reassembler
	============================================================================	}
	RTPReassembler						= ComponentInstance;

const
	kRTPReassemblerType			= FourCharCode('rtpr');

	kRTPBaseReassemblerType		= FourCharCode('gnrc');
	kRTP261ReassemblerType		= FourCharCode('h261');
	kRTP263ReassemblerType		= FourCharCode('h263');
	kRTP263PlusReassemblerType	= FourCharCode('263+');
	kRTPAudioReassemblerType	= FourCharCode('soun');
	kRTPQTReassemblerType		= FourCharCode('qtim');
	kRTPPureVoiceReassemblerType = FourCharCode('Qclp');
	kRTPJPEGReassemblerType		= FourCharCode('jpeg');
	kRTPQDesign2ReassemblerType	= FourCharCode('QDM2');
	kRTPSorensonReassemblerType	= FourCharCode('SVQ1');
	kRTPMP3ReassemblerType		= FourCharCode('mp3 ');
	kRTPMPEG4AudioReassemblerType = FourCharCode('mp4a');
	kRTPMPEG4VideoReassemblerType = FourCharCode('mp4v');


type
	RTPRssmInitParamsPtr = ^RTPRssmInitParams;
	RTPRssmInitParams = record
		ssrc:					RTPSSRC;
		payloadType:			SInt8;
		reserved1:				SInt8;
		reserved2:				SInt8;
		reserved3:				SInt8;
		timeBase:				TimeBase_fix;
		timeScale:				TimeScale_fix;
	end;

	RTPDescParamsPtr = ^RTPDescParams;
	RTPDescParams = record
		container:				QTAtomContainer;
		presentationParentAtom:	QTAtom;
		streamParentAtom:		QTAtom;
	end;

	RTPRssmMoreInitParamsPtr = ^RTPRssmMoreInitParams;
	RTPRssmMoreInitParams = record
		initParams:				RTPRssmInitParams;
		version:				SInt32;
		desc:					RTPDescParams;
	end;


>>>>>>> graemeg/fixes_2_2
const
	kRTPRssmMoreInitParamsVersion1 = 1;


<<<<<<< HEAD
{ get/set info selectors}
const
	kRTPRssmInfo_MoreInitParams = FourCharCode('rrmi');
=======
	{  get/set info selectors }
	kRTPRssmInfo_MoreInitParams	= FourCharCode('rrmi');
>>>>>>> graemeg/fixes_2_2


type
	RTPRssmPacketPtr = ^RTPRssmPacket;
	RTPRssmPacket = record
<<<<<<< HEAD
		next: RTPRssmPacketPtr;
		prev: RTPRssmPacketPtr;
		streamBuffer: QTSStreamBufferPtr;
		paramsFilledIn: Boolean;
		reserved: UInt8;
		sequenceNum: UInt16;
		transportHeaderLength: UInt32;  { filled in by base}
		payloadHeaderLength: UInt32;    { derived adjusts this }
		dataLength: UInt32;
		serverEditParams: SHServerEditParameters;
		timeStamp: TimeValue64;              { lower 32 bits is original rtp timestamp}
		chunkFlags: SInt32;             { these are or'd together}
		flags: SInt32;
	end;
{ flags for RTPRssmPacket struct}
=======
		next:					RTPRssmPacketPtr;
		prev:					RTPRssmPacketPtr;
		streamBuffer:			QTSStreamBufferPtr;
		paramsFilledIn:			boolean;
		reserved:				SInt8;
		sequenceNum:			UInt16;
		transportHeaderLength:	UInt32;									{  filled in by base }
		payloadHeaderLength:	UInt32;									{  derived adjusts this  }
		dataLength:				UInt32;
		serverEditParams:		SHServerEditParameters;
		timeStamp:				TimeValue64;							{  lower 32 bits is original rtp timestamp }
		chunkFlags:				SInt32;									{  these are or'd together }
		flags:					SInt32;
	end;

	{  flags for RTPRssmPacket struct }

>>>>>>> graemeg/fixes_2_2
const
	kRTPRssmPacketHasMarkerBitSet = $00000001;
	kRTPRssmPacketHasServerEditFlag = $00010000;

<<<<<<< HEAD
{ flags for RTPRssmSendStreamBufferRange}
const
	kRTPRssmCanRefStreamBuffer = $00000001;

{ flags for RTPRssmSendPacketList}
const
	kRTPRssmLostSomePackets = $00000001;

{ flags for RTPRssmSetFlags}
const
=======
	{  flags for RTPRssmSendStreamBufferRange }
	kRTPRssmCanRefStreamBuffer	= $00000001;

	{  flags for RTPRssmSendPacketList }
	kRTPRssmLostSomePackets		= $00000001;

	{  flags for RTPRssmSetFlags }
>>>>>>> graemeg/fixes_2_2
	kRTPRssmEveryPacketAChunkFlag = $00000001;
	kRTPRssmQueueAndUseMarkerBitFlag = $00000002;
	kRTPRssmTrackLostPacketsFlag = $00010000;
	kRTPRssmNoReorderingRequiredFlag = $00020000;


type
	RTPSendStreamBufferRangeParamsPtr = ^RTPSendStreamBufferRangeParams;
	RTPSendStreamBufferRangeParams = record
<<<<<<< HEAD
		streamBuffer: QTSStreamBufferPtr;
		presentationTime: TimeValue64;
		chunkStartPosition: UInt32;
		numDataBytes: UInt32;
		chunkFlags: SInt32;
		flags: SInt32;
		serverEditParams: {const} SHServerEditParametersPtr; { NULL if no edit}
	end;
{ characteristics}
=======
		streamBuffer:			QTSStreamBufferPtr;
		presentationTime:		TimeValue64;
		chunkStartPosition:		UInt32;
		numDataBytes:			UInt32;
		chunkFlags:				SInt32;
		flags:					SInt32;
		serverEditParams:		SHServerEditParametersPtr;				{  NULL if no edit }
	end;

	{  characteristics }

>>>>>>> graemeg/fixes_2_2
const
	kRTPCharacteristic_RequiresOrderedPackets = FourCharCode('rrop');
	kRTPCharacteristic_TimeStampsNotMonoIncreasing = FourCharCode('tsmi');


<<<<<<< HEAD
const
	kRTPReassemblerInfoResType = FourCharCode('rsmi');

type
	RTPReassemblerInfo = record
		characteristicCount: SIGNEDLONG;
		characteristic: array [0..0] of RTPPayloadCharacteristic;

                                              { after the last characteristic, the payload name (defined by the MediaPacketizerPayloadInfo}
                                              { structure) is present. }
	end;
	RTPReassemblerInfoPtr = ^RTPReassemblerInfo;
type
	RTPReassemblerInfoHandle = ^RTPReassemblerInfoPtr;
	{	 RTPReassemblerInfoElement structs are padded to 32 bits 	}
=======
	kRTPReassemblerInfoResType	= FourCharCode('rsmi');


type
	RTPReassemblerInfoPtr = ^RTPReassemblerInfo;
	RTPReassemblerInfo = record
		characteristicCount:	SInt32;
		characteristic:			array [0..0] of RTPPayloadCharacteristic;
																		{  after the last characteristic, the payload name (defined by the MediaPacketizerPayloadInfo }
																		{  structure) is present.  }
	end;

	RTPReassemblerInfoHandle			= ^RTPReassemblerInfoPtr;
	{	 RTPReassemblerInfoElement structs are padded to 32 bits 	}

>>>>>>> graemeg/fixes_2_2
const
	kRTPReassemblerInfoPadUpToBytes = 4;


<<<<<<< HEAD
{
 *  QTSFindReassemblerForPayloadID()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindReassemblerForPayloadID( inPayloadID: UInt8; var inSortInfo: RTPPayloadSortRequest; var outReassemblerList: QTAtomContainer ): OSErr; external name '_QTSFindReassemblerForPayloadID';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
	{
	 *  QTSFindReassemblerForPayloadID()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
	 *    CarbonLib:        in CarbonLib 1.1 and later
	 *    Mac OS X:         in version 10.0 and later
	 *    Windows:          in QTSClient.lib 4.0 and later
	 	}
function QTSFindReassemblerForPayloadID(inPayloadID: ByteParameter; var inSortInfo: RTPPayloadSortRequest; var outReassemblerList: QTAtomContainer): OSErr; external name '_QTSFindReassemblerForPayloadID';
>>>>>>> graemeg/fixes_2_2

{
 *  QTSFindReassemblerForPayloadName()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindReassemblerForPayloadName( inPayloadName: ConstCStringPtr; var inSortInfo: RTPPayloadSortRequest; var outReassemblerList: QTAtomContainer ): OSErr; external name '_QTSFindReassemblerForPayloadName';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindReassemblerForPayloadName(inPayloadName: ConstCStringPtr; var inSortInfo: RTPPayloadSortRequest; var outReassemblerList: QTAtomContainer): OSErr; external name '_QTSFindReassemblerForPayloadName';
>>>>>>> graemeg/fixes_2_2

{-----------------------------------------
    RTP Reassembler Selectors
-----------------------------------------}
<<<<<<< HEAD
=======

>>>>>>> graemeg/fixes_2_2
const
	kRTPRssmSetCapabilitiesSelect = $0100;
	kRTPRssmGetCapabilitiesSelect = $0101;
	kRTPRssmSetPayloadHeaderLengthSelect = $0102;
	kRTPRssmGetPayloadHeaderLengthSelect = $0103;
<<<<<<< HEAD
	kRTPRssmSetTimeScaleSelect = $0104;
	kRTPRssmGetTimeScaleSelect = $0105;
=======
	kRTPRssmSetTimeScaleSelect	= $0104;
	kRTPRssmGetTimeScaleSelect	= $0105;
>>>>>>> graemeg/fixes_2_2
	kRTPRssmNewStreamHandlerSelect = $0106;
	kRTPRssmSetStreamHandlerSelect = $0107;
	kRTPRssmGetStreamHandlerSelect = $0108;
	kRTPRssmSendStreamHandlerChangedSelect = $0109;
	kRTPRssmSetSampleDescriptionSelect = $010A;
	kRTPRssmGetChunkAndIncrRefCountSelect = $010D;
	kRTPRssmSendChunkAndDecrRefCountSelect = $010E;
<<<<<<< HEAD
	kRTPRssmSendLostChunkSelect = $010F;
	kRTPRssmSendStreamBufferRangeSelect = $0110;
	kRTPRssmClearCachedPackets = $0111;
=======
	kRTPRssmSendLostChunkSelect	= $010F;
	kRTPRssmSendStreamBufferRangeSelect = $0110;
	kRTPRssmClearCachedPackets	= $0111;
>>>>>>> graemeg/fixes_2_2
	kRTPRssmFillPacketListParamsSelect = $0113;
	kRTPRssmReleasePacketListSelect = $0114;
	kRTPRssmIncrChunkRefCountSelect = $0115;
	kRTPRssmDecrChunkRefCountSelect = $0116;
	kRTPRssmGetExtChunkAndIncrRefCountSelect = $0117;
<<<<<<< HEAD
	kRTPRssmInitializeSelect = $0500;
=======
	kRTPRssmInitializeSelect	= $0500;
>>>>>>> graemeg/fixes_2_2
	kRTPRssmHandleNewPacketSelect = $0501;
	kRTPRssmComputeChunkSizeSelect = $0502;
	kRTPRssmAdjustPacketParamsSelect = $0503;
	kRTPRssmCopyDataToChunkSelect = $0504;
	kRTPRssmSendPacketListSelect = $0505;
	kRTPRssmGetTimeScaleFromPacketSelect = $0506;
<<<<<<< HEAD
	kRTPRssmSetInfoSelect = $0509;
	kRTPRssmGetInfoSelect = $050A;
	kRTPRssmHasCharacteristicSelect = $050B;
	kRTPRssmResetSelect = $050C;

{-----------------------------------------
    RTP Reassembler functions - base to derived
-----------------------------------------}

{
 *  RTPRssmInitialize()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmInitialize( rtpr: RTPReassembler; var inInitParams: RTPRssmInitParams ): ComponentResult; external name '_RTPRssmInitialize';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
	kRTPRssmSetInfoSelect		= $0509;
	kRTPRssmGetInfoSelect		= $050A;
	kRTPRssmHasCharacteristicSelect = $050B;
	kRTPRssmResetSelect			= $050C;

	{	-----------------------------------------
	    RTP Reassembler functions - base to derived
	-----------------------------------------	}

	{
	 *  RTPRssmInitialize()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
	 *    CarbonLib:        in CarbonLib 1.1 and later
	 *    Mac OS X:         in version 10.0 and later
	 *    Windows:          in QTSClient.lib 4.0 and later
	 	}
function RTPRssmInitialize(rtpr: RTPReassembler; var inInitParams: RTPRssmInitParams): ComponentResult; external name '_RTPRssmInitialize';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmHandleNewPacket()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmHandleNewPacket( rtpr: RTPReassembler; var inStreamBuffer: QTSStreamBuffer; inNumWraparounds: SInt32 ): ComponentResult; external name '_RTPRssmHandleNewPacket';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmHandleNewPacket(rtpr: RTPReassembler; var inStreamBuffer: QTSStreamBuffer; inNumWraparounds: SInt32): ComponentResult; external name '_RTPRssmHandleNewPacket';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmComputeChunkSize()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmComputeChunkSize( rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; inFlags: SInt32; var outChunkDataSize: UInt32 ): ComponentResult; external name '_RTPRssmComputeChunkSize';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmComputeChunkSize(rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; inFlags: SInt32; var outChunkDataSize: UInt32): ComponentResult; external name '_RTPRssmComputeChunkSize';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmAdjustPacketParams()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmAdjustPacketParams( rtpr: RTPReassembler; var inPacket: RTPRssmPacket; inFlags: SInt32 ): ComponentResult; external name '_RTPRssmAdjustPacketParams';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmAdjustPacketParams(rtpr: RTPReassembler; var inPacket: RTPRssmPacket; inFlags: SInt32): ComponentResult; external name '_RTPRssmAdjustPacketParams';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmCopyDataToChunk()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmCopyDataToChunk( rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; inMaxChunkDataSize: UInt32; var inChunk: SHChunkRecord; inFlags: SInt32 ): ComponentResult; external name '_RTPRssmCopyDataToChunk';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmCopyDataToChunk(rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; inMaxChunkDataSize: UInt32; var inChunk: SHChunkRecord; inFlags: SInt32): ComponentResult; external name '_RTPRssmCopyDataToChunk';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSendPacketList()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendPacketList( rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; (*const*) var inLastChunkPresentationTime: TimeValue64; inFlags: SInt32 ): ComponentResult; external name '_RTPRssmSendPacketList';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendPacketList(rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; (*const*) var inLastChunkPresentationTime: TimeValue64; inFlags: SInt32): ComponentResult; external name '_RTPRssmSendPacketList';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetTimeScaleFromPacket()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetTimeScaleFromPacket( rtpr: RTPReassembler; var inStreamBuffer: QTSStreamBuffer; var outTimeScale: TimeScale ): ComponentResult; external name '_RTPRssmGetTimeScaleFromPacket';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetTimeScaleFromPacket(rtpr: RTPReassembler; var inStreamBuffer: QTSStreamBuffer; var outTimeScale: TimeScale): ComponentResult; external name '_RTPRssmGetTimeScaleFromPacket';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetInfo( rtpr: RTPReassembler; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_RTPRssmSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetInfo(rtpr: RTPReassembler; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_RTPRssmSetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetInfo( rtpr: RTPReassembler; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_RTPRssmGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetInfo(rtpr: RTPReassembler; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_RTPRssmGetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmHasCharacteristic()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmHasCharacteristic( rtpr: RTPReassembler; inCharacteristic: OSType; var outHasIt: Boolean ): ComponentResult; external name '_RTPRssmHasCharacteristic';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmHasCharacteristic(rtpr: RTPReassembler; inCharacteristic: OSType; var outHasIt: boolean): ComponentResult; external name '_RTPRssmHasCharacteristic';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmReset()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmReset( rtpr: RTPReassembler; inFlags: SInt32 ): ComponentResult; external name '_RTPRssmReset';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{-----------------------------------------
    RTP Reassembler functions - derived to base
-----------------------------------------}
{ ----- setup}
=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmReset(rtpr: RTPReassembler; inFlags: SInt32): ComponentResult; external name '_RTPRssmReset';
{-----------------------------------------
    RTP Reassembler functions - derived to base
-----------------------------------------}
{  ----- setup }
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSetCapabilities()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetCapabilities( rtpr: RTPReassembler; inFlags: SInt32; inFlagsMask: SInt32 ): ComponentResult; external name '_RTPRssmSetCapabilities';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetCapabilities(rtpr: RTPReassembler; inFlags: SInt32; inFlagsMask: SInt32): ComponentResult; external name '_RTPRssmSetCapabilities';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetCapabilities()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetCapabilities( rtpr: RTPReassembler; var outFlags: SInt32 ): ComponentResult; external name '_RTPRssmGetCapabilities';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetCapabilities(rtpr: RTPReassembler; var outFlags: SInt32): ComponentResult; external name '_RTPRssmGetCapabilities';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSetPayloadHeaderLength()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetPayloadHeaderLength( rtpr: RTPReassembler; inPayloadHeaderLength: UInt32 ): ComponentResult; external name '_RTPRssmSetPayloadHeaderLength';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetPayloadHeaderLength(rtpr: RTPReassembler; inPayloadHeaderLength: UInt32): ComponentResult; external name '_RTPRssmSetPayloadHeaderLength';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetPayloadHeaderLength()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetPayloadHeaderLength( rtpr: RTPReassembler; var outPayloadHeaderLength: UInt32 ): ComponentResult; external name '_RTPRssmGetPayloadHeaderLength';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetPayloadHeaderLength(rtpr: RTPReassembler; var outPayloadHeaderLength: UInt32): ComponentResult; external name '_RTPRssmGetPayloadHeaderLength';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSetTimeScale()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetTimeScale( rtpr: RTPReassembler; inSHTimeScale: TimeScale ): ComponentResult; external name '_RTPRssmSetTimeScale';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetTimeScale(rtpr: RTPReassembler; inSHTimeScale: TimeScale): ComponentResult; external name '_RTPRssmSetTimeScale';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetTimeScale()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetTimeScale( rtpr: RTPReassembler; var outSHTimeScale: TimeScale ): ComponentResult; external name '_RTPRssmGetTimeScale';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetTimeScale(rtpr: RTPReassembler; var outSHTimeScale: TimeScale): ComponentResult; external name '_RTPRssmGetTimeScale';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmNewStreamHandler()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmNewStreamHandler( rtpr: RTPReassembler; inSHType: OSType; inSampleDescription: SampleDescriptionHandle; inSHTimeScale: TimeScale; var outHandler: ComponentInstance ): ComponentResult; external name '_RTPRssmNewStreamHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmNewStreamHandler(rtpr: RTPReassembler; inSHType: OSType; inSampleDescription: SampleDescriptionHandle; inSHTimeScale: TimeScale; var outHandler: ComponentInstance): ComponentResult; external name '_RTPRssmNewStreamHandler';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSetStreamHandler()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetStreamHandler( rtpr: RTPReassembler; inStreamHandler: ComponentInstance ): ComponentResult; external name '_RTPRssmSetStreamHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetStreamHandler(rtpr: RTPReassembler; inStreamHandler: ComponentInstance): ComponentResult; external name '_RTPRssmSetStreamHandler';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetStreamHandler()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetStreamHandler( rtpr: RTPReassembler; var outStreamHandler: ComponentInstance ): ComponentResult; external name '_RTPRssmGetStreamHandler';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetStreamHandler(rtpr: RTPReassembler; var outStreamHandler: ComponentInstance): ComponentResult; external name '_RTPRssmGetStreamHandler';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSendStreamHandlerChanged()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendStreamHandlerChanged( rtpr: RTPReassembler ): ComponentResult; external name '_RTPRssmSendStreamHandlerChanged';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendStreamHandlerChanged(rtpr: RTPReassembler): ComponentResult; external name '_RTPRssmSendStreamHandlerChanged';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSetSampleDescription()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetSampleDescription( rtpr: RTPReassembler; inSampleDescription: SampleDescriptionHandle ): ComponentResult; external name '_RTPRssmSetSampleDescription';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ ----- manually sending chunks}
=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSetSampleDescription(rtpr: RTPReassembler; inSampleDescription: SampleDescriptionHandle): ComponentResult; external name '_RTPRssmSetSampleDescription';
{  ----- manually sending chunks }
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetChunkAndIncrRefCount()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetChunkAndIncrRefCount( rtpr: RTPReassembler; inChunkDataSize: UInt32; (*const*) var inChunkPresentationTime: TimeValue64; var outChunk: UnivPtr ): ComponentResult; external name '_RTPRssmGetChunkAndIncrRefCount';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmGetChunkAndIncrRefCount(rtpr: RTPReassembler; inChunkDataSize: UInt32; (*const*) var inChunkPresentationTime: TimeValue64; var outChunk: UnivPtr): ComponentResult; external name '_RTPRssmGetChunkAndIncrRefCount';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmGetExtChunkAndIncrRefCount()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.2 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.6 and later
 *    Non-Carbon CFM:   in QTStreamLib 6.0 and later
 *    Windows:          in qtmlClient.lib 6.0 and later
 }
function RTPRssmGetExtChunkAndIncrRefCount( rtpr: RTPReassembler; inChunkDataSize: UInt32; (*const*) var inChunkPresentationTime: TimeValue64; inFlags: SInt32; var outChunk: UnivPtr ): ComponentResult; external name '_RTPRssmGetExtChunkAndIncrRefCount';
(* AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 6.0 and later
 *    CarbonLib:        in CarbonLib 1.6 and later
 *    Mac OS X:         in version 10.2 and later
 *    Windows:          in qtmlClient.lib 6.0 and later
 }
function RTPRssmGetExtChunkAndIncrRefCount(rtpr: RTPReassembler; inChunkDataSize: UInt32; (*const*) var inChunkPresentationTime: TimeValue64; inFlags: SInt32; var outChunk: UnivPtr): ComponentResult; external name '_RTPRssmGetExtChunkAndIncrRefCount';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSendChunkAndDecrRefCount()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendChunkAndDecrRefCount( rtpr: RTPReassembler; var inChunk: SHChunkRecord; const (*var*) inServerEdit: SHServerEditParameters ): ComponentResult; external name '_RTPRssmSendChunkAndDecrRefCount';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendChunkAndDecrRefCount(rtpr: RTPReassembler; var inChunk: SHChunkRecord; const (*var*) inServerEdit: SHServerEditParameters): ComponentResult; external name '_RTPRssmSendChunkAndDecrRefCount';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSendLostChunk()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendLostChunk( rtpr: RTPReassembler; (*const*) var inChunkPresentationTime: TimeValue64 ): ComponentResult; external name '_RTPRssmSendLostChunk';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendLostChunk(rtpr: RTPReassembler; (*const*) var inChunkPresentationTime: TimeValue64): ComponentResult; external name '_RTPRssmSendLostChunk';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmSendStreamBufferRange()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendStreamBufferRange( rtpr: RTPReassembler; var inParams: RTPSendStreamBufferRangeParams ): ComponentResult; external name '_RTPRssmSendStreamBufferRange';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmSendStreamBufferRange(rtpr: RTPReassembler; var inParams: RTPSendStreamBufferRangeParams): ComponentResult; external name '_RTPRssmSendStreamBufferRange';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmClearCachedPackets()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmClearCachedPackets( rtpr: RTPReassembler; inFlags: SInt32 ): ComponentResult; external name '_RTPRssmClearCachedPackets';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmClearCachedPackets(rtpr: RTPReassembler; inFlags: SInt32): ComponentResult; external name '_RTPRssmClearCachedPackets';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmFillPacketListParams()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmFillPacketListParams( rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; inNumWraparounds: SInt32; inFlags: SInt32 ): ComponentResult; external name '_RTPRssmFillPacketListParams';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmFillPacketListParams(rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket; inNumWraparounds: SInt32; inFlags: SInt32): ComponentResult; external name '_RTPRssmFillPacketListParams';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmReleasePacketList()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmReleasePacketList( rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket ): ComponentResult; external name '_RTPRssmReleasePacketList';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmReleasePacketList(rtpr: RTPReassembler; var inPacketListHead: RTPRssmPacket): ComponentResult; external name '_RTPRssmReleasePacketList';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmIncrChunkRefCount()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmIncrChunkRefCount( rtpr: RTPReassembler; var inChunk: SHChunkRecord ): ComponentResult; external name '_RTPRssmIncrChunkRefCount';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmIncrChunkRefCount(rtpr: RTPReassembler; var inChunk: SHChunkRecord): ComponentResult; external name '_RTPRssmIncrChunkRefCount';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPRssmDecrChunkRefCount()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmDecrChunkRefCount( rtpr: RTPReassembler; var inChunk: SHChunkRecord ): ComponentResult; external name '_RTPRssmDecrChunkRefCount';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{============================================================================
        RTP Media Packetizer
============================================================================}
const
	kRTPMediaPacketizerType = FourCharCode('rtpm');

type
	RTPMediaPacketizer = ComponentInstance;
const
	kRTPBaseMediaPacketizerType = FourCharCode('gnrc');
	kRTP261MediaPacketizerType = FourCharCode('h261');
	kRTP263PlusMediaPacketizerType = FourCharCode('263+');
	kRTPAudioMediaPacketizerType = FourCharCode('soun');
	kRTPQTMediaPacketizerType = FourCharCode('qtim');
	kRTPPureVoiceMediaPacketizerType = FourCharCode('Qclp');
	kRTPJPEGMediaPacketizerType = FourCharCode('jpeg');
	kRTPQDesign2MediaPacketizerType = FourCharCode('QDM2');
	kRTPSorensonMediaPacketizerType = FourCharCode('SVQ1');
	kRTPMP3MediaPacketizerType = FourCharCode('mp3 ');
	kRTPMPEG4AudioMediaPacketizerType = FourCharCode('mp4a');
	kRTPMPEG4VideoMediaPacketizerType = FourCharCode('mp4v');
	kRTPAMRMediaPacketizerType = FourCharCode('amr ');

type
	RTPMPSampleRef = UInt32;
	RTPMPDataReleaseProcPtr = procedure( var inData: UInt8; inRefCon: UnivPtr );
	RTPMPDataReleaseUPP = RTPMPDataReleaseProcPtr;
const
	kMediaPacketizerCanPackEditRate = 1 shl 0;
	kMediaPacketizerCanPackLayer = 1 shl 1;
	kMediaPacketizerCanPackVolume = 1 shl 2;
	kMediaPacketizerCanPackBalance = 1 shl 3;
	kMediaPacketizerCanPackGraphicsMode = 1 shl 4;
	kMediaPacketizerCanPackEmptyEdit = 1 shl 5;


type
	MediaPacketizerRequirements = record
		mediaType: OSType;              { media type supported (0 for all)}
		dataFormat: OSType;             { data format (e.g., compression) supported (0 for all)}
		capabilityFlags: UInt32;        { ability to handle non-standard track characteristics}
		canPackMatrixType: UInt8;      { can pack any matrix type up to this (identityMatrixType for identity only)}
		reserved1: UInt8;
		reserved2: UInt8;
		reserved3: UInt8;
	end;
	MediaPacketizerRequirementsPtr = ^MediaPacketizerRequirements;
type
	MediaPacketizerInfo = record
		mediaType: OSType;              { media type supported (0 for all)}
		dataFormat: OSType;             { data format (e.g., compression) supported (0 for all)}
		vendor: OSType;                 { manufacturer of this packetizer (e.g., 'appl' for Apple)}
		capabilityFlags: UInt32;        { ability to handle non-standard track characteristics}
		canPackMatrixType: UInt8;      { can pack any matrix type up to this (identityMatrixType for identity only)}
		reserved1: UInt8;
		reserved2: UInt8;
		reserved3: UInt8;
		characteristicCount: SIGNEDLONG;
		characteristic: array [0..0] of RTPPayloadCharacteristic;

                                              { after the last characteristic, the payload name (defined by the RTPPayloadInfo}
                                              { structure) is present. }
	end;
	MediaPacketizerInfoPtr = ^MediaPacketizerInfo;
type
	MediaPacketizerInfoHandle = ^MediaPacketizerInfoPtr;
{ MediaPacketizerInfo structs are padded to 32 bits }
const
	kMediaPacketizerInfoPadUpToBytes = 4;

const
	kRTPMediaPacketizerInfoRezType = FourCharCode('pcki');


{
 *  QTSFindMediaPacketizer()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizer( inPacketizerinfo: MediaPacketizerRequirementsPtr; inSampleDescription: SampleDescriptionHandle; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer ): OSErr; external name '_QTSFindMediaPacketizer';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPRssmDecrChunkRefCount(rtpr: RTPReassembler; var inChunk: SHChunkRecord): ComponentResult; external name '_RTPRssmDecrChunkRefCount';
{============================================================================
        RTP Media Packetizer
============================================================================}

const
	kRTPMediaPacketizerType		= FourCharCode('rtpm');


type
	RTPMediaPacketizer					= ComponentInstance;

const
	kRTPBaseMediaPacketizerType	= FourCharCode('gnrc');
	kRTP261MediaPacketizerType	= FourCharCode('h261');
	kRTP263PlusMediaPacketizerType = FourCharCode('263+');
	kRTPAudioMediaPacketizerType = FourCharCode('soun');
	kRTPQTMediaPacketizerType	= FourCharCode('qtim');
	kRTPPureVoiceMediaPacketizerType = FourCharCode('Qclp');
	kRTPJPEGMediaPacketizerType	= FourCharCode('jpeg');
	kRTPQDesign2MediaPacketizerType = FourCharCode('QDM2');
	kRTPSorensonMediaPacketizerType = FourCharCode('SVQ1');
	kRTPMP3MediaPacketizerType	= FourCharCode('mp3 ');
	kRTPMPEG4AudioMediaPacketizerType = FourCharCode('mp4a');
	kRTPMPEG4VideoMediaPacketizerType = FourCharCode('mp4v');


type
	RTPMPSampleRef						= UInt32;
{$ifc TYPED_FUNCTION_POINTERS}
	RTPMPDataReleaseProcPtr = procedure(var inData: UInt8; inRefCon: UnivPtr);
{$elsec}
	RTPMPDataReleaseProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	RTPMPDataReleaseUPP = ^SInt32; { an opaque UPP }
{$elsec}
	RTPMPDataReleaseUPP = UniversalProcPtr;
{$endc}	

const
	kMediaPacketizerCanPackEditRate = $01;
	kMediaPacketizerCanPackLayer = $02;
	kMediaPacketizerCanPackVolume = $04;
	kMediaPacketizerCanPackBalance = $08;
	kMediaPacketizerCanPackGraphicsMode = $10;
	kMediaPacketizerCanPackEmptyEdit = $20;


type
	MediaPacketizerRequirementsPtr = ^MediaPacketizerRequirements;
	MediaPacketizerRequirements = record
		mediaType:				OSType;									{  media type supported (0 for all) }
		dataFormat:				OSType;									{  data format (e.g., compression) supported (0 for all) }
		capabilityFlags:		UInt32;									{  ability to handle non-standard track characteristics }
		canPackMatrixType:		SInt8;									{  can pack any matrix type up to this (identityMatrixType for identity only) }
		reserved1:				SInt8;
		reserved2:				SInt8;
		reserved3:				SInt8;
	end;

	MediaPacketizerInfoPtr = ^MediaPacketizerInfo;
	MediaPacketizerInfo = record
		mediaType:				OSType;									{  media type supported (0 for all) }
		dataFormat:				OSType;									{  data format (e.g., compression) supported (0 for all) }
		vendor:					OSType;									{  manufacturer of this packetizer (e.g., 'appl' for Apple) }
		capabilityFlags:		UInt32;									{  ability to handle non-standard track characteristics }
		canPackMatrixType:		SInt8;									{  can pack any matrix type up to this (identityMatrixType for identity only) }
		reserved1:				SInt8;
		reserved2:				SInt8;
		reserved3:				SInt8;
		characteristicCount:	SInt32;
		characteristic:			array [0..0] of RTPPayloadCharacteristic;
																		{  after the last characteristic, the payload name (defined by the RTPPayloadInfo }
																		{  structure) is present.  }
	end;

	MediaPacketizerInfoHandle			= ^MediaPacketizerInfoPtr;
	{	 MediaPacketizerInfo structs are padded to 32 bits 	}

const
	kMediaPacketizerInfoPadUpToBytes = 4;

	{
	 *  QTSFindMediaPacketizer()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
	 *    CarbonLib:        in CarbonLib 1.1 and later
	 *    Mac OS X:         in version 10.0 and later
	 *    Windows:          in QTSClient.lib 4.0 and later
	 	}
function QTSFindMediaPacketizer(inPacketizerinfo: MediaPacketizerRequirementsPtr; inSampleDescription: SampleDescriptionHandle; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer): OSErr; external name '_QTSFindMediaPacketizer';
>>>>>>> graemeg/fixes_2_2

{
 *  QTSFindMediaPacketizerForTrack()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizerForTrack( inTrack: Track; inSampleDescriptionIndex: SIGNEDLONG; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer ): OSErr; external name '_QTSFindMediaPacketizerForTrack';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizerForTrack(inTrack: Track; inSampleDescriptionIndex: SInt32; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer): OSErr; external name '_QTSFindMediaPacketizerForTrack';
>>>>>>> graemeg/fixes_2_2

{
 *  QTSFindMediaPacketizerForPayloadID()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizerForPayloadID( payloadID: SIGNEDLONG; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer ): OSErr; external name '_QTSFindMediaPacketizerForPayloadID';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizerForPayloadID(payloadID: SInt32; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer): OSErr; external name '_QTSFindMediaPacketizerForPayloadID';
>>>>>>> graemeg/fixes_2_2

{
 *  QTSFindMediaPacketizerForPayloadName()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizerForPayloadName( payloadName: ConstCStringPtr; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer ): OSErr; external name '_QTSFindMediaPacketizerForPayloadName';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ flags for RTPMPInitialize}
const
	kRTPMPRealtimeModeFlag = $00000001;

{ flags for RTPMPSampleDataParams}
const
	kRTPMPSyncSampleFlag = $00000001;
	kRTPMPRespectDurationFlag = $00000002;
=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function QTSFindMediaPacketizerForPayloadName(payloadName: ConstCStringPtr; inSortInfo: RTPPayloadSortRequestPtr; var outPacketizerList: QTAtomContainer): OSErr; external name '_QTSFindMediaPacketizerForPayloadName';

{  flags for RTPMPInitialize }

const
	kRTPMPRealtimeModeFlag		= $00000001;

	{  flags for RTPMPSampleDataParams }
	kRTPMPSyncSampleFlag		= $00000001;
	kRTPMPRespectDurationFlag	= $00000002;

>>>>>>> graemeg/fixes_2_2

type
	RTPMPSampleDataParamsPtr = ^RTPMPSampleDataParams;
	RTPMPSampleDataParams = record
<<<<<<< HEAD
		version: UInt32;
		timeStamp: UInt32;
		duration: UInt32;               { 0 = unknown duration}
		playOffset: UInt32;
		playRate: Fixed;
		flags: SInt32;
		sampleDescSeed: UInt32;
		sampleDescription: Handle;
		sampleRef: RTPMPSampleRef;
		dataLength: UInt32;
		data: {const} UInt8Ptr;
		releaseProc: RTPMPDataReleaseUPP;
		refCon: UnivPtr;
	end;
{ out flags for idle, RTPMPSetSampleData, and RTPMPFlush}
const
	kRTPMPStillProcessingData = $00000001; { not done with data you've got}
=======
		version:				UInt32;
		timeStamp:				UInt32;
		duration:				UInt32;									{  0 = unknown duration }
		playOffset:				UInt32;
		playRate:				Fixed;
		flags:					SInt32;
		sampleDescSeed:			UInt32;
		sampleDescription:		Handle;
		sampleRef:				RTPMPSampleRef;
		dataLength:				UInt32;
		data:					Ptr;
		releaseProc:			RTPMPDataReleaseUPP;
		refCon:					Ptr;
	end;

	{  out flags for idle, RTPMPSetSampleData, and RTPMPFlush }

const
	kRTPMPStillProcessingData	= $00000001;					{  not done with data you've got }

>>>>>>> graemeg/fixes_2_2

type
	RTPMPPayloadTypeParamsPtr = ^RTPMPPayloadTypeParams;
	RTPMPPayloadTypeParams = record
<<<<<<< HEAD
		flags: UInt32;
		payloadNumber: UInt32;
		nameLength: SInt16;             { in: size of payloadName buffer (counting null terminator) -- this will be reset to needed length and paramErr returned if too small }
		payloadName: CStringPtr;            { caller must provide buffer }
	end;
{-----------------------------------------
    RTP Media Packetizer Info selectors
-----------------------------------------}
{ info selectors - get only }
const
	kRTPMPPayloadTypeInfo = FourCharCode('rtpp'); { RTPMPPayloadTypeParams* }
	kRTPMPRTPTimeScaleInfo = FourCharCode('rtpt'); { TimeScale* }
	kRTPMPRequiredSampleDescriptionInfo = FourCharCode('sdsc'); { SampleDescriptionHandle* }
	kRTPMPMinPayloadSize = FourCharCode('mins'); { UInt32* in bytes, does not include rtp header; default is 0 }
	kRTPMPMinPacketDuration = FourCharCode('mind'); { UInt3* in milliseconds; default is no min required }
	kRTPMPSuggestedRepeatPktCountInfo = FourCharCode('srpc'); { UInt32* }
	kRTPMPSuggestedRepeatPktSpacingInfo = FourCharCode('srps'); { UInt32* in milliseconds }
	kRTPMPMaxPartialSampleSizeInfo = FourCharCode('mpss'); { UInt32* in bytes }
	kRTPMPPreferredBufferDelayInfo = FourCharCode('prbd'); { UInt32* in milliseconds }
	kRTPMPPayloadNameInfo = FourCharCode('name'); { StringPtr }
	kRTPInfo_FormatString = FourCharCode('fmtp'); { char **, caller allocates ptr, callee disposes }

{-----------------------------------------
    RTP Media Packetizer Characteristics
-----------------------------------------}
{ also supports relevant ones in Movies.h and QTSToolbox.h }
const
=======
		flags:					UInt32;
		payloadNumber:			UInt32;
		nameLength:				SInt16;								{  in: size of payloadName buffer (counting null terminator) -- this will be reset to needed length and paramErr returned if too small  }
		payloadName:			CStringPtr;								{  caller must provide buffer  }
	end;

	{	-----------------------------------------
	    RTP Media Packetizer Info selectors
	-----------------------------------------	}
	{	 info selectors - get only 	}

const
	kRTPMPPayloadTypeInfo		= FourCharCode('rtpp');						{  RTPMPPayloadTypeParams*  }
	kRTPMPRTPTimeScaleInfo		= FourCharCode('rtpt');						{  TimeScale*  }
	kRTPMPRequiredSampleDescriptionInfo = FourCharCode('sdsc');				{  SampleDescriptionHandle*  }
	kRTPMPMinPayloadSize		= FourCharCode('mins');						{  UInt32* in bytes, does not include rtp header; default is 0  }
	kRTPMPMinPacketDuration		= FourCharCode('mind');						{  UInt3* in milliseconds; default is no min required  }
	kRTPMPSuggestedRepeatPktCountInfo = FourCharCode('srpc');					{  UInt32*  }
	kRTPMPSuggestedRepeatPktSpacingInfo = FourCharCode('srps');				{  UInt32* in milliseconds  }
	kRTPMPMaxPartialSampleSizeInfo = FourCharCode('mpss');					{  UInt32* in bytes  }
	kRTPMPPreferredBufferDelayInfo = FourCharCode('prbd');					{  UInt32* in milliseconds  }
	kRTPMPPayloadNameInfo		= FourCharCode('name');						{  StringPtr  }
	kRTPInfo_FormatString		= FourCharCode('fmtp');						{  char **, caller allocates ptr, callee disposes  }

	{	-----------------------------------------
	    RTP Media Packetizer Characteristics
	-----------------------------------------	}
	{	 also supports relevant ones in Movies.h and QTSToolbox.h 	}
>>>>>>> graemeg/fixes_2_2
	kRTPMPNoSampleDataRequiredCharacteristic = FourCharCode('nsdr');
	kRTPMPHasUserSettingsDialogCharacteristic = FourCharCode('sdlg');
	kRTPMPPrefersReliableTransportCharacteristic = FourCharCode('rely');
	kRTPMPRequiresOutOfBandDimensionsCharacteristic = FourCharCode('robd');
	kRTPMPReadsPartialSamplesCharacteristic = FourCharCode('rpsp');

<<<<<<< HEAD
{-----------------------------------------
    RTP Media Packetizer selectors
-----------------------------------------}
const
	kRTPMPInitializeSelect = $0500;
	kRTPMPPreflightMediaSelect = $0501;
	kRTPMPIdleSelect = $0502;
	kRTPMPSetSampleDataSelect = $0503;
	kRTPMPFlushSelect = $0504;
	kRTPMPResetSelect = $0505;
	kRTPMPSetInfoSelect = $0506;
	kRTPMPGetInfoSelect = $0507;
	kRTPMPSetTimeScaleSelect = $0508;
	kRTPMPGetTimeScaleSelect = $0509;
	kRTPMPSetTimeBaseSelect = $050A;
	kRTPMPGetTimeBaseSelect = $050B;
	kRTPMPHasCharacteristicSelect = $050C;
	kRTPMPSetPacketBuilderSelect = $050E;
	kRTPMPGetPacketBuilderSelect = $050F;
	kRTPMPSetMediaTypeSelect = $0510;
	kRTPMPGetMediaTypeSelect = $0511;
	kRTPMPSetMaxPacketSizeSelect = $0512;
	kRTPMPGetMaxPacketSizeSelect = $0513;
	kRTPMPSetMaxPacketDurationSelect = $0514;
	kRTPMPGetMaxPacketDurationSelect = $0515; { for export component and apps who want to}
                                        { access dialogs for Media-specific settings}
                                        { (such as Pure Voice interleave factor)}
	kRTPMPDoUserDialogSelect = $0516;
	kRTPMPSetSettingsFromAtomContainerAtAtomSelect = $0517;
	kRTPMPGetSettingsIntoAtomContainerAtAtomSelect = $0518;
	kRTPMPGetSettingsAsTextSelect = $0519;
	kRTPMPGetSettingsSelect = $051C;
	kRTPMPSetSettingsSelect = $051D;

{-----------------------------------------
    RTP Media Packetizer functions
-----------------------------------------}

{
 *  RTPMPInitialize()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPInitialize( rtpm: RTPMediaPacketizer; inFlags: SInt32 ): ComponentResult; external name '_RTPMPInitialize';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
	{	-----------------------------------------
	    RTP Media Packetizer selectors
	-----------------------------------------	}
	kRTPMPInitializeSelect		= $0500;
	kRTPMPPreflightMediaSelect	= $0501;
	kRTPMPIdleSelect			= $0502;
	kRTPMPSetSampleDataSelect	= $0503;
	kRTPMPFlushSelect			= $0504;
	kRTPMPResetSelect			= $0505;
	kRTPMPSetInfoSelect			= $0506;
	kRTPMPGetInfoSelect			= $0507;
	kRTPMPSetTimeScaleSelect	= $0508;
	kRTPMPGetTimeScaleSelect	= $0509;
	kRTPMPSetTimeBaseSelect		= $050A;
	kRTPMPGetTimeBaseSelect		= $050B;
	kRTPMPHasCharacteristicSelect = $050C;
	kRTPMPSetPacketBuilderSelect = $050E;
	kRTPMPGetPacketBuilderSelect = $050F;
	kRTPMPSetMediaTypeSelect	= $0510;
	kRTPMPGetMediaTypeSelect	= $0511;
	kRTPMPSetMaxPacketSizeSelect = $0512;
	kRTPMPGetMaxPacketSizeSelect = $0513;
	kRTPMPSetMaxPacketDurationSelect = $0514;
	kRTPMPGetMaxPacketDurationSelect = $0515;					{  for export component and apps who want to }
																{  access dialogs for Media-specific settings }
																{  (such as Pure Voice interleave factor) }
	kRTPMPDoUserDialogSelect	= $0516;
	kRTPMPSetSettingsFromAtomContainerAtAtomSelect = $0517;
	kRTPMPGetSettingsIntoAtomContainerAtAtomSelect = $0518;
	kRTPMPGetSettingsAsTextSelect = $0519;
	kRTPMPGetSettingsSelect		= $051A;
	kRTPMPSetSettingsSelect		= $051B;

	{	-----------------------------------------
	    RTP Media Packetizer functions
	-----------------------------------------	}

	{
	 *  RTPMPInitialize()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
	 *    CarbonLib:        in CarbonLib 1.1 and later
	 *    Mac OS X:         in version 10.0 and later
	 *    Windows:          in QTSClient.lib 4.0 and later
	 	}
function RTPMPInitialize(rtpm: RTPMediaPacketizer; inFlags: SInt32): ComponentResult; external name '_RTPMPInitialize';
>>>>>>> graemeg/fixes_2_2
{ return noErr if you can handle this media }
{
 *  RTPMPPreflightMedia()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPPreflightMedia( rtpm: RTPMediaPacketizer; inMediaType: OSType; inSampleDescription: SampleDescriptionHandle ): ComponentResult; external name '_RTPMPPreflightMedia';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPPreflightMedia(rtpm: RTPMediaPacketizer; inMediaType: OSType; inSampleDescription: SampleDescriptionHandle): ComponentResult; external name '_RTPMPPreflightMedia';
>>>>>>> graemeg/fixes_2_2
{
   do work here if you need to - give up time periodically
   if you're doing time consuming operations
}
{
 *  RTPMPIdle()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPIdle( rtpm: RTPMediaPacketizer; inFlags: SInt32; var outFlags: SInt32 ): ComponentResult; external name '_RTPMPIdle';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPIdle(rtpm: RTPMediaPacketizer; inFlags: SInt32; var outFlags: SInt32): ComponentResult; external name '_RTPMPIdle';
>>>>>>> graemeg/fixes_2_2
{
   caller owns the RTPMPSampleDataParams struct
   media Packetizer must copy any fields of the struct it wants to keep
   media Packetizer must call release proc when done with the data
   you can do the processing work here if it does not take up too
   much cpu time - otherwise do it in idle
}
{
 *  RTPMPSetSampleData()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetSampleData( rtpm: RTPMediaPacketizer; const (*var*) inSampleData: RTPMPSampleDataParams; var outFlags: SInt32 ): ComponentResult; external name '_RTPMPSetSampleData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetSampleData(rtpm: RTPMediaPacketizer; const (*var*) inSampleData: RTPMPSampleDataParams; var outFlags: SInt32): ComponentResult; external name '_RTPMPSetSampleData';
>>>>>>> graemeg/fixes_2_2
{
   send everything you have buffered - you will get idles while
   you set the kRTPMPStillProcessingData flag here and in idle
}
{
 *  RTPMPFlush()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPFlush( rtpm: RTPMediaPacketizer; inFlags: SInt32; var outFlags: SInt32 ): ComponentResult; external name '_RTPMPFlush';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPFlush(rtpm: RTPMediaPacketizer; inFlags: SInt32; var outFlags: SInt32): ComponentResult; external name '_RTPMPFlush';
>>>>>>> graemeg/fixes_2_2
{
   dispose of anything buffered and get rid of state
   do not send the buffered data (because presumably
   there is no connection for you to send on)
   state should be the same as if you were just initialized
}
{
 *  RTPMPReset()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPReset( rtpm: RTPMediaPacketizer; inFlags: SInt32 ): ComponentResult; external name '_RTPMPReset';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPReset(rtpm: RTPMediaPacketizer; inFlags: SInt32): ComponentResult; external name '_RTPMPReset';
>>>>>>> graemeg/fixes_2_2
{-----------------------------------------
    RTP Media Packetizer get / set functions
-----------------------------------------}
{
 *  RTPMPSetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetInfo( rtpm: RTPMediaPacketizer; inSelector: OSType; ioParams: {const} UnivPtr ): ComponentResult; external name '_RTPMPSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetInfo(rtpm: RTPMediaPacketizer; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_RTPMPSetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetInfo( rtpm: RTPMediaPacketizer; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_RTPMPGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetInfo(rtpm: RTPMediaPacketizer; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_RTPMPGetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetTimeScale()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetTimeScale( rtpm: RTPMediaPacketizer; inTimeScale: TimeScale ): ComponentResult; external name '_RTPMPSetTimeScale';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetTimeScale(rtpm: RTPMediaPacketizer; inTimeScale: TimeScale): ComponentResult; external name '_RTPMPSetTimeScale';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetTimeScale()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetTimeScale( rtpm: RTPMediaPacketizer; var outTimeScale: TimeScale ): ComponentResult; external name '_RTPMPGetTimeScale';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetTimeScale(rtpm: RTPMediaPacketizer; var outTimeScale: TimeScale): ComponentResult; external name '_RTPMPGetTimeScale';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetTimeBase()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetTimeBase( rtpm: RTPMediaPacketizer; inTimeBase: TimeBase ): ComponentResult; external name '_RTPMPSetTimeBase';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetTimeBase(rtpm: RTPMediaPacketizer; inTimeBase: TimeBase): ComponentResult; external name '_RTPMPSetTimeBase';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetTimeBase()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetTimeBase( rtpm: RTPMediaPacketizer; var outTimeBase: TimeBase ): ComponentResult; external name '_RTPMPGetTimeBase';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetTimeBase(rtpm: RTPMediaPacketizer; var outTimeBase: TimeBase): ComponentResult; external name '_RTPMPGetTimeBase';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPHasCharacteristic()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPHasCharacteristic( rtpm: RTPMediaPacketizer; inSelector: OSType; var outHasIt: Boolean ): ComponentResult; external name '_RTPMPHasCharacteristic';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPHasCharacteristic(rtpm: RTPMediaPacketizer; inSelector: OSType; var outHasIt: boolean): ComponentResult; external name '_RTPMPHasCharacteristic';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetPacketBuilder()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetPacketBuilder( rtpm: RTPMediaPacketizer; inPacketBuilder: ComponentInstance ): ComponentResult; external name '_RTPMPSetPacketBuilder';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetPacketBuilder(rtpm: RTPMediaPacketizer; inPacketBuilder: ComponentInstance): ComponentResult; external name '_RTPMPSetPacketBuilder';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetPacketBuilder()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetPacketBuilder( rtpm: RTPMediaPacketizer; var outPacketBuilder: ComponentInstance ): ComponentResult; external name '_RTPMPGetPacketBuilder';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetPacketBuilder(rtpm: RTPMediaPacketizer; var outPacketBuilder: ComponentInstance): ComponentResult; external name '_RTPMPGetPacketBuilder';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetMediaType()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetMediaType( rtpm: RTPMediaPacketizer; inMediaType: OSType ): ComponentResult; external name '_RTPMPSetMediaType';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetMediaType(rtpm: RTPMediaPacketizer; inMediaType: OSType): ComponentResult; external name '_RTPMPSetMediaType';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetMediaType()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetMediaType( rtpm: RTPMediaPacketizer; var outMediaType: OSType ): ComponentResult; external name '_RTPMPGetMediaType';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ size is in bytes}
=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetMediaType(rtpm: RTPMediaPacketizer; var outMediaType: OSType): ComponentResult; external name '_RTPMPGetMediaType';
{  size is in bytes }
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetMaxPacketSize()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetMaxPacketSize( rtpm: RTPMediaPacketizer; inMaxPacketSize: UInt32 ): ComponentResult; external name '_RTPMPSetMaxPacketSize';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetMaxPacketSize(rtpm: RTPMediaPacketizer; inMaxPacketSize: UInt32): ComponentResult; external name '_RTPMPSetMaxPacketSize';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetMaxPacketSize()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetMaxPacketSize( rtpm: RTPMediaPacketizer; var outMaxPacketSize: UInt32 ): ComponentResult; external name '_RTPMPGetMaxPacketSize';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ duration is in milliseconds}
=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetMaxPacketSize(rtpm: RTPMediaPacketizer; var outMaxPacketSize: UInt32): ComponentResult; external name '_RTPMPGetMaxPacketSize';
{  duration is in milliseconds }
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetMaxPacketDuration()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetMaxPacketDuration( rtpm: RTPMediaPacketizer; inMaxPacketDuration: UInt32 ): ComponentResult; external name '_RTPMPSetMaxPacketDuration';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetMaxPacketDuration(rtpm: RTPMediaPacketizer; inMaxPacketDuration: UInt32): ComponentResult; external name '_RTPMPSetMaxPacketDuration';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetMaxPacketDuration()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetMaxPacketDuration( rtpm: RTPMediaPacketizer; var outMaxPacketDuration: UInt32 ): ComponentResult; external name '_RTPMPGetMaxPacketDuration';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetMaxPacketDuration(rtpm: RTPMediaPacketizer; var outMaxPacketDuration: UInt32): ComponentResult; external name '_RTPMPGetMaxPacketDuration';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPDoUserDialog()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPDoUserDialog( rtpm: RTPMediaPacketizer; inFilterUPP: ModalFilterUPP; var canceled: Boolean ): ComponentResult; external name '_RTPMPDoUserDialog';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPDoUserDialog(rtpm: RTPMediaPacketizer; inFilterUPP: ModalFilterUPP; var canceled: boolean): ComponentResult; external name '_RTPMPDoUserDialog';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetSettingsFromAtomContainerAtAtom()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetSettingsFromAtomContainerAtAtom( rtpm: RTPMediaPacketizer; inContainer: QTAtomContainer; inParentAtom: QTAtom ): ComponentResult; external name '_RTPMPSetSettingsFromAtomContainerAtAtom';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPSetSettingsFromAtomContainerAtAtom(rtpm: RTPMediaPacketizer; inContainer: QTAtomContainer; inParentAtom: QTAtom): ComponentResult; external name '_RTPMPSetSettingsFromAtomContainerAtAtom';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetSettingsIntoAtomContainerAtAtom()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetSettingsIntoAtomContainerAtAtom( rtpm: RTPMediaPacketizer; inOutContainer: QTAtomContainer; inParentAtom: QTAtom ): ComponentResult; external name '_RTPMPGetSettingsIntoAtomContainerAtAtom';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetSettingsIntoAtomContainerAtAtom(rtpm: RTPMediaPacketizer; inOutContainer: QTAtomContainer; inParentAtom: QTAtom): ComponentResult; external name '_RTPMPGetSettingsIntoAtomContainerAtAtom';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetSettingsAsText()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetSettingsAsText( rtpm: RTPMediaPacketizer; var text: Handle ): ComponentResult; external name '_RTPMPGetSettingsAsText';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPMPGetSettingsAsText(rtpm: RTPMediaPacketizer; var text: Handle): ComponentResult; external name '_RTPMPGetSettingsAsText';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPGetSettings()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPMPGetSettings( rtpm: RTPMediaPacketizer; var outSettings: QTAtomContainer; inFlags: SInt32 ): ComponentResult; external name '_RTPMPGetSettings';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPMPGetSettings(rtpm: RTPMediaPacketizer; var outSettings: QTAtomContainer; inFlags: SInt32): ComponentResult; external name '_RTPMPGetSettings';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPMPSetSettings()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPMPSetSettings( rtpm: RTPMediaPacketizer; inSettings: QTAtomSpecPtr; inFlags: SInt32 ): ComponentResult; external name '_RTPMPSetSettings';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{============================================================================
        RTP Packet Builder
============================================================================}
const
	kRTPPacketBuilderType = FourCharCode('rtpb');


type
	RTPPacketBuilder = ComponentInstance;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	RTPPacketGroupRef = ^OpaqueRTPPacketGroupRef; { an opaque type }
	OpaqueRTPPacketGroupRef = record end;
	RTPPacketRef = ^OpaqueRTPPacketRef; { an opaque type }
	OpaqueRTPPacketRef = record end;
	RTPPacketRepeatedDataRef = ^OpaqueRTPPacketRepeatedDataRef; { an opaque type }
	OpaqueRTPPacketRepeatedDataRef = record end;
=======
	RTPPacketGroupRef = ^SInt32; { an opaque type }
	RTPPacketRef = ^SInt32; { an opaque type }
	RTPPacketRepeatedDataRef = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	RTPPacketGroupRef = ^SInt32; { an opaque type }
	RTPPacketRef = ^SInt32; { an opaque type }
	RTPPacketRepeatedDataRef = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	RTPPacketGroupRef = ^SInt32; { an opaque type }
	RTPPacketRef = ^SInt32; { an opaque type }
	RTPPacketRepeatedDataRef = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	RTPPacketGroupRef = ^SInt32; { an opaque type }
	RTPPacketRef = ^SInt32; { an opaque type }
	RTPPacketRepeatedDataRef = ^SInt32; { an opaque type }
>>>>>>> origin/cpstrnew
{ flags for RTPPBBegin/EndPacket, RTPPBBegin/EndPacketGroup}
const
	kRTPPBSetMarkerFlag = $00000001;
	kRTPPBRepeatPacketFlag = $00000002;
	kRTPPBSyncSampleFlag = $00010000;
	kRTPPBBFrameFlag = $00020000;
	kRTPPBDontSendFlag = $10000000; { when set in EndPacketGroup, will not add group}

const
	kRTPPBUnknownPacketMediaDataLength = 0;

{ flags for RTPPBGetSampleData}
const
	kRTPPBEndOfDataFlag = $00000001;


type
	RTPPBCallbackProcPtr = procedure( inSelector: OSType; ioParams: UnivPtr; inRefCon: UnivPtr );
	RTPPBCallbackUPP = RTPPBCallbackProcPtr;
{-----------------------------------------
    RTP Packet Builder selectors
-----------------------------------------}
const
	kRTPPBBeginPacketGroupSelect = $0500;
	kRTPPBEndPacketGroupSelect = $0501;
	kRTPPBBeginPacketSelect = $0502;
	kRTPPBEndPacketSelect = $0503;
=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPMPSetSettings(rtpm: RTPMediaPacketizer; inSettings: QTAtomSpecPtr; inFlags: SInt32): ComponentResult; external name '_RTPMPSetSettings';
{============================================================================
        RTP Packet Builder
============================================================================}

const
	kRTPPacketBuilderType		= FourCharCode('rtpb');


type
	RTPPacketBuilder					= ComponentInstance;
	RTPPacketGroupRef    = ^SInt32; { an opaque 32-bit type }
	RTPPacketGroupRefPtr = ^RTPPacketGroupRef;  { when a var xx:RTPPacketGroupRef parameter can be nil, it is changed to xx: RTPPacketGroupRefPtr }
	RTPPacketRef    = ^SInt32; { an opaque 32-bit type }
	RTPPacketRefPtr = ^RTPPacketRef;  { when a var xx:RTPPacketRef parameter can be nil, it is changed to xx: RTPPacketRefPtr }
	RTPPacketRepeatedDataRef    = ^SInt32; { an opaque 32-bit type }
	RTPPacketRepeatedDataRefPtr = ^RTPPacketRepeatedDataRef;  { when a var xx:RTPPacketRepeatedDataRef parameter can be nil, it is changed to xx: RTPPacketRepeatedDataRefPtr }
	{  flags for RTPPBBegin/EndPacket, RTPPBBegin/EndPacketGroup }

const
	kRTPPBSetMarkerFlag			= $00000001;
	kRTPPBRepeatPacketFlag		= $00000002;
	kRTPPBSyncSampleFlag		= $00010000;
	kRTPPBBFrameFlag			= $00020000;
	kRTPPBDontSendFlag			= $10000000;					{  when set in EndPacketGroup, will not add group }

	kRTPPBUnknownPacketMediaDataLength = 0;

	{  flags for RTPPBGetSampleData }
	kRTPPBEndOfDataFlag			= $00000001;


type
{$ifc TYPED_FUNCTION_POINTERS}
	RTPPBCallbackProcPtr = procedure(inSelector: OSType; ioParams: UnivPtr; inRefCon: UnivPtr);
{$elsec}
	RTPPBCallbackProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	RTPPBCallbackUPP = ^SInt32; { an opaque UPP }
{$elsec}
	RTPPBCallbackUPP = UniversalProcPtr;
{$endc}	
	{	-----------------------------------------
	    RTP Packet Builder selectors
	-----------------------------------------	}

const
	kRTPPBBeginPacketGroupSelect = $0500;
	kRTPPBEndPacketGroupSelect	= $0501;
	kRTPPBBeginPacketSelect		= $0502;
	kRTPPBEndPacketSelect		= $0503;
>>>>>>> graemeg/fixes_2_2
	kRTPPBAddPacketLiteralDataSelect = $0504;
	kRTPPBAddPacketSampleDataSelect = $0505;
	kRTPPBAddPacketRepeatedDataSelect = $0506;
	kRTPPBReleaseRepeatedDataSelect = $0507;
	kRTPPBSetPacketSequenceNumberSelect = $0508;
	kRTPPBGetPacketSequenceNumberSelect = $0509;
<<<<<<< HEAD
	kRTPPBSetCallbackSelect = $050A;
	kRTPPBGetCallbackSelect = $050B;
	kRTPPBSetInfoSelect = $050C;
	kRTPPBGetInfoSelect = $050D;
	kRTPPBSetPacketTimeStampOffsetSelect = $050E;
	kRTPPBGetPacketTimeStampOffsetSelect = $050F;
	kRTPPBAddPacketSampleData64Select = $0510;
	kRTPPBGetSampleDataSelect = $0511;
	kRTPPBAddRepeatPacketSelect = $0512;

{-----------------------------------------
    RTP Packet Builder functions
-----------------------------------------}
{
 *  RTPPBBeginPacketGroup()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBBeginPacketGroup( rtpb: RTPPacketBuilder; inFlags: SInt32; inTimeStamp: UInt32; var outPacketGroup: RTPPacketGroupRef ): ComponentResult; external name '_RTPPBBeginPacketGroup';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
	kRTPPBSetCallbackSelect		= $050A;
	kRTPPBGetCallbackSelect		= $050B;
	kRTPPBSetInfoSelect			= $050C;
	kRTPPBGetInfoSelect			= $050D;
	kRTPPBSetPacketTimeStampOffsetSelect = $050E;
	kRTPPBGetPacketTimeStampOffsetSelect = $050F;
	kRTPPBAddPacketSampleData64Select = $0510;
	kRTPPBGetSampleDataSelect	= $0511;
	kRTPPBAddRepeatPacketSelect	= $0512;

	{	-----------------------------------------
	    RTP Packet Builder functions
	-----------------------------------------	}
	{
	 *  RTPPBBeginPacketGroup()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
	 *    CarbonLib:        in CarbonLib 1.1 and later
	 *    Mac OS X:         in version 10.0 and later
	 *    Windows:          in QTSClient.lib 4.0 and later
	 	}
function RTPPBBeginPacketGroup(rtpb: RTPPacketBuilder; inFlags: SInt32; inTimeStamp: UInt32; var outPacketGroup: RTPPacketGroupRef): ComponentResult; external name '_RTPPBBeginPacketGroup';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBEndPacketGroup()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBEndPacketGroup( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef ): ComponentResult; external name '_RTPPBEndPacketGroup';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBEndPacketGroup(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef): ComponentResult; external name '_RTPPBEndPacketGroup';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBBeginPacket()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBBeginPacket( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacketMediaDataLength: UInt32; var outPacket: RTPPacketRef ): ComponentResult; external name '_RTPPBBeginPacket';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBBeginPacket(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacketMediaDataLength: UInt32; var outPacket: RTPPacketRef): ComponentResult; external name '_RTPPBBeginPacket';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBEndPacket()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBEndPacket( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inTransmissionTimeOffset: UInt32; inDuration: UInt32 ): ComponentResult; external name '_RTPPBEndPacket';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBEndPacket(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inTransmissionTimeOffset: UInt32; inDuration: UInt32): ComponentResult; external name '_RTPPBEndPacket';
>>>>>>> graemeg/fixes_2_2
{
   non-NULL RTPPacketRepeatedDataRef means this data will be repeated later
   pb must return a repeated data ref
}
{
 *  RTPPBAddPacketLiteralData()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBAddPacketLiteralData( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var inData: UInt8; inDataLength: UInt32; var outDataRef: RTPPacketRepeatedDataRef ): ComponentResult; external name '_RTPPBAddPacketLiteralData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBAddPacketLiteralData(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var inData: UInt8; inDataLength: UInt32; var outDataRef: RTPPacketRepeatedDataRef): ComponentResult; external name '_RTPPBAddPacketLiteralData';
>>>>>>> graemeg/fixes_2_2
{
   non-NULL RTPPacketRepeatedDataRef means this data will be repeated later
   pb must return a repeated data ref
}
{
 *  RTPPBAddPacketSampleData()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBAddPacketSampleData( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var inSampleDataParams: RTPMPSampleDataParams; inSampleOffset: UInt32; inSampleDataLength: UInt32; var outDataRef: RTPPacketRepeatedDataRef ): ComponentResult; external name '_RTPPBAddPacketSampleData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBAddPacketSampleData(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var inSampleDataParams: RTPMPSampleDataParams; inSampleOffset: UInt32; inSampleDataLength: UInt32; var outDataRef: RTPPacketRepeatedDataRef): ComponentResult; external name '_RTPPBAddPacketSampleData';
>>>>>>> graemeg/fixes_2_2
{
   non-NULL RTPPacketRepeatedDataRef means this data will be repeated later
   pb must return a repeated data ref
}
{
 *  RTPPBAddPacketSampleData64()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBAddPacketSampleData64( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var inSampleDataParams: RTPMPSampleDataParams; (*const*) var inSampleOffset: UInt64; inSampleDataLength: UInt32; var outDataRef: RTPPacketRepeatedDataRef ): ComponentResult; external name '_RTPPBAddPacketSampleData64';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBAddPacketSampleData64(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var inSampleDataParams: RTPMPSampleDataParams; (*const*) var inSampleOffset: UInt64; inSampleDataLength: UInt32; var outDataRef: RTPPacketRepeatedDataRef): ComponentResult; external name '_RTPPBAddPacketSampleData64';
>>>>>>> graemeg/fixes_2_2
{
   call to add the repeated data using the ref you got from
   RTPPBAddPacketLiteralData or RTPPBAddPacketSampleData
}
{
 *  RTPPBAddPacketRepeatedData()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBAddPacketRepeatedData( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inDataRef: RTPPacketRepeatedDataRef ): ComponentResult; external name '_RTPPBAddPacketRepeatedData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ call when done with repeated data}
=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBAddPacketRepeatedData(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inDataRef: RTPPacketRepeatedDataRef): ComponentResult; external name '_RTPPBAddPacketRepeatedData';
{  call when done with repeated data }
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBReleaseRepeatedData()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBReleaseRepeatedData( rtpb: RTPPacketBuilder; inDataRef: RTPPacketRepeatedDataRef ): ComponentResult; external name '_RTPPBReleaseRepeatedData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBReleaseRepeatedData(rtpb: RTPPacketBuilder; inDataRef: RTPPacketRepeatedDataRef): ComponentResult; external name '_RTPPBReleaseRepeatedData';
>>>>>>> graemeg/fixes_2_2
{
   seq number is just relative seq number
   don't call if you don't care when seq # is used
}
{
 *  RTPPBSetPacketSequenceNumber()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBSetPacketSequenceNumber( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inSequenceNumber: UInt32 ): ComponentResult; external name '_RTPPBSetPacketSequenceNumber';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBSetPacketSequenceNumber(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inSequenceNumber: UInt32): ComponentResult; external name '_RTPPBSetPacketSequenceNumber';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBGetPacketSequenceNumber()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBGetPacketSequenceNumber( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var outSequenceNumber: UInt32 ): ComponentResult; external name '_RTPPBGetPacketSequenceNumber';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBGetPacketSequenceNumber(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var outSequenceNumber: UInt32): ComponentResult; external name '_RTPPBGetPacketSequenceNumber';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBSetPacketTimeStampOffset()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBSetPacketTimeStampOffset( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inTimeStampOffset: SInt32 ): ComponentResult; external name '_RTPPBSetPacketTimeStampOffset';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBSetPacketTimeStampOffset(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inTimeStampOffset: SInt32): ComponentResult; external name '_RTPPBSetPacketTimeStampOffset';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBGetPacketTimeStampOffset()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBGetPacketTimeStampOffset( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var outTimeStampOffset: SInt32 ): ComponentResult; external name '_RTPPBGetPacketTimeStampOffset';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBGetPacketTimeStampOffset(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; var outTimeStampOffset: SInt32): ComponentResult; external name '_RTPPBGetPacketTimeStampOffset';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBAddRepeatPacket()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBAddRepeatPacket( rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inTransmissionOffset: TimeValue; inSequenceNumber: UInt32 ): ComponentResult; external name '_RTPPBAddRepeatPacket';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBAddRepeatPacket(rtpb: RTPPacketBuilder; inFlags: SInt32; inPacketGroup: RTPPacketGroupRef; inPacket: RTPPacketRef; inTransmissionOffset: TimeValue; inSequenceNumber: UInt32): ComponentResult; external name '_RTPPBAddRepeatPacket';
>>>>>>> graemeg/fixes_2_2
{
   used for communicating with the caller of the media packetizers if needed
   NOT used for communicating with the media packetizers themselves
}
{
 *  RTPPBSetCallback()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBSetCallback( rtpb: RTPPacketBuilder; inCallback: RTPPBCallbackUPP; inRefCon: UnivPtr ): ComponentResult; external name '_RTPPBSetCallback';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBSetCallback(rtpb: RTPPacketBuilder; inCallback: RTPPBCallbackUPP; inRefCon: UnivPtr): ComponentResult; external name '_RTPPBSetCallback';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBGetCallback()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBGetCallback( rtpb: RTPPacketBuilder; var outCallback: RTPPBCallbackUPP; var outRefCon: UnivPtr ): ComponentResult; external name '_RTPPBGetCallback';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBGetCallback(rtpb: RTPPacketBuilder; var outCallback: RTPPBCallbackUPP; var outRefCon: UnivPtr): ComponentResult; external name '_RTPPBGetCallback';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBSetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBSetInfo( rtpb: RTPPacketBuilder; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_RTPPBSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBSetInfo(rtpb: RTPPacketBuilder; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_RTPPBSetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBGetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBGetInfo( rtpb: RTPPacketBuilder; inSelector: OSType; ioParams: UnivPtr ): ComponentResult; external name '_RTPPBGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


=======
 *    Non-Carbon CFM:   in QTStreamLib 4.0 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 4.0 and later
 }
function RTPPBGetInfo(rtpb: RTPPacketBuilder; inSelector: OSType; ioParams: UnivPtr): ComponentResult; external name '_RTPPBGetInfo';
>>>>>>> graemeg/fixes_2_2
{
 *  RTPPBGetSampleData()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBGetSampleData( rtpb: RTPPacketBuilder; var inParams: RTPMPSampleDataParams; (*const*) var inStartOffset: UInt64; var outDataBuffer: UInt8; inBytesToRead: UInt32; var outBytesRead: UInt32; var outFlags: SInt32 ): ComponentResult; external name '_RTPPBGetSampleData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{ UPP call backs }
{
 *  NewRTPMPDataReleaseUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewRTPMPDataReleaseUPP( userRoutine: RTPMPDataReleaseProcPtr ): RTPMPDataReleaseUPP; external name '_NewRTPMPDataReleaseUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   in QTStreamLib 5.0 and later
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 *    Windows:          in QTSClient.lib 5.0 and later
 }
function RTPPBGetSampleData(rtpb: RTPPacketBuilder; var inParams: RTPMPSampleDataParams; (*const*) var inStartOffset: UInt64; var outDataBuffer: UInt8; inBytesToRead: UInt32; var outBytesRead: UInt32; var outFlags: SInt32): ComponentResult; external name '_RTPPBGetSampleData';
{ UPP call backs }

const
	uppRTPMPDataReleaseProcInfo = $000003C0;
	uppRTPPBCallbackProcInfo = $00000FC0;
	{
	 *  NewRTPMPDataReleaseUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   available as macro/inline
	 *    CarbonLib:        in CarbonLib 1.3 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function NewRTPMPDataReleaseUPP(userRoutine: RTPMPDataReleaseProcPtr): RTPMPDataReleaseUPP; external name '_NewRTPMPDataReleaseUPP'; { old name was NewRTPMPDataReleaseProc }
>>>>>>> graemeg/fixes_2_2
{
 *  NewRTPPBCallbackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewRTPPBCallbackUPP( userRoutine: RTPPBCallbackProcPtr ): RTPPBCallbackUPP; external name '_NewRTPPBCallbackUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewRTPPBCallbackUPP(userRoutine: RTPPBCallbackProcPtr): RTPPBCallbackUPP; external name '_NewRTPPBCallbackUPP'; { old name was NewRTPPBCallbackProc }
>>>>>>> graemeg/fixes_2_2
{
 *  DisposeRTPMPDataReleaseUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeRTPMPDataReleaseUPP( userUPP: RTPMPDataReleaseUPP ); external name '_DisposeRTPMPDataReleaseUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeRTPMPDataReleaseUPP(userUPP: RTPMPDataReleaseUPP); external name '_DisposeRTPMPDataReleaseUPP';
>>>>>>> graemeg/fixes_2_2
{
 *  DisposeRTPPBCallbackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeRTPPBCallbackUPP( userUPP: RTPPBCallbackUPP ); external name '_DisposeRTPPBCallbackUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeRTPPBCallbackUPP(userUPP: RTPPBCallbackUPP); external name '_DisposeRTPPBCallbackUPP';
>>>>>>> graemeg/fixes_2_2
{
 *  InvokeRTPMPDataReleaseUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure InvokeRTPMPDataReleaseUPP( var inData: UInt8; inRefCon: UnivPtr; userUPP: RTPMPDataReleaseUPP ); external name '_InvokeRTPMPDataReleaseUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)

=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokeRTPMPDataReleaseUPP(var inData: UInt8; inRefCon: UnivPtr; userRoutine: RTPMPDataReleaseUPP); external name '_InvokeRTPMPDataReleaseUPP'; { old name was CallRTPMPDataReleaseProc }
>>>>>>> graemeg/fixes_2_2
{
 *  InvokeRTPPBCallbackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in QuickTime.framework
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure InvokeRTPPBCallbackUPP( inSelector: OSType; ioParams: UnivPtr; inRefCon: UnivPtr; userUPP: RTPPBCallbackUPP ); external name '_InvokeRTPPBCallbackUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER *)


{$endc} {not TARGET_CPU_64}

{$endc} {TARGET_OS_MAC}
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.3 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokeRTPPBCallbackUPP(inSelector: OSType; ioParams: UnivPtr; inRefCon: UnivPtr; userRoutine: RTPPBCallbackUPP); external name '_InvokeRTPPBCallbackUPP'; { old name was CallRTPPBCallbackProc }
{$ALIGN MAC68K}


end.
>>>>>>> graemeg/fixes_2_2
