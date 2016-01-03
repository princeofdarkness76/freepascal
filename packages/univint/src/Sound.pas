{
<<<<<<< HEAD
<<<<<<< HEAD
     File:       CarbonSound/Sound.h
 
     Contains:   Sound Manager Interfaces.
 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     Version:    CarbonSound-115~164
=======
     Version:    CarbonSound-109.2~4
>>>>>>> graemeg/cpstrnew
=======
     Version:    CarbonSound-109.2~4
>>>>>>> graemeg/cpstrnew
=======
     Version:    CarbonSound-109.2~4
>>>>>>> graemeg/cpstrnew
=======
     Version:    CarbonSound-109.2~4
>>>>>>> origin/cpstrnew
 
     Copyright:  © 1986-2008 by Apple Computer, Inc., all rights reserved
=======
=======
>>>>>>> origin/fixes_2_2
     File:       Sound.p
 
     Contains:   Sound Manager Interfaces.
 
     Version:    Technology: Sound Manager 3.6
                 Release:    Universal Interfaces 3.4.2
 
     Copyright:  © 1986-2002 by Apple Computer, Inc., all rights reserved
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
 
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
{  Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
{  Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2012 }
=======
{   Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{   Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{   Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
>>>>>>> graemeg/cpstrnew
=======
{   Pascal Translation Updated:  Jonas Maebe, <jonas@freepascal.org>, October 2009 }
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

unit Sound;
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
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
>>>>>>> graemeg/cpstrnew
=======
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
<<<<<<< HEAD
	{$setc TARGET_CPU_ARM64 := FALSE}
	{$setc TARGET_OS_MAC := TRUE}
	{$setc TARGET_OS_IPHONE := FALSE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
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
=======
=======
>>>>>>> origin/cpstrnew
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
	{ will require compiler define when/if other Apple devices with ARM cpus ship }
	{$setc TARGET_OS_MAC := FALSE}
	{$setc TARGET_OS_IPHONE := TRUE}
	{$setc TARGET_IPHONE_SIMULATOR := FALSE}
<<<<<<< HEAD
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
=======
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
uses MacTypes,Components,MixedMode,Dialogs;
<<<<<<< HEAD
<<<<<<< HEAD
{$endc} {not MACOSALLINCLUDE}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> graemeg/cpstrnew

{$ifc TARGET_OS_MAC}
=======

>>>>>>> graemeg/cpstrnew

=======


>>>>>>> origin/cpstrnew
{$ifc TARGET_OS_MAC}

{$ALIGN MAC68K}

{$ifc not TARGET_CPU_64}
=======
=======
>>>>>>> origin/fixes_2_2


{$ALIGN MAC68K}

<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
                        * * *  N O T E  * * *

    This file has been updated to include Sound Manager 3.3 interfaces.

    Some of the Sound Manager 3.0 interfaces were not put into the InterfaceLib
    that originally shipped with the PowerMacs. These missing functions and the
    new 3.3 interfaces have been released in the SoundLib library for PowerPC
    developers to link with. The runtime library for these functions are
    installed by the Sound Manager. The following functions are found in SoundLib.

        GetCompressionInfo(), GetSoundPreference(), SetSoundPreference(),
        UnsignedFixedMulDiv(), SndGetInfo(), SndSetInfo(), GetSoundOutputInfo(),
        SetSoundOutputInfo(), GetCompressionName(), SoundConverterOpen(),
        SoundConverterClose(), SoundConverterGetBufferSizes(), SoundConverterBeginConversion(),
        SoundConverterConvertBuffer(), SoundConverterEndConversion(),
        AudioGetBass(), AudioGetInfo(), AudioGetMute(), AudioGetOutputDevice(),
        AudioGetTreble(), AudioGetVolume(), AudioMuteOnEvent(), AudioSetBass(),
        AudioSetMute(), AudioSetToDefaults(), AudioSetTreble(), AudioSetVolume(),
        OpenMixerSoundComponent(), CloseMixerSoundComponent(), SoundComponentAddSource(),
        SoundComponentGetInfo(), SoundComponentGetSource(), SoundComponentGetSourceData(),
        SoundComponentInitOutputDevice(), SoundComponentPauseSource(),
        SoundComponentPlaySourceBuffer(), SoundComponentRemoveSource(),
        SoundComponentSetInfo(), SoundComponentSetOutput(), SoundComponentSetSource(),
        SoundComponentStartSource(), SoundComponentStopSource(),
        ParseAIFFHeader(), ParseSndHeader(), SoundConverterGetInfo(), SoundConverterSetInfo()
}
{
    Interfaces for Sound Driver, !!! OBSOLETE and NOT SUPPORTED !!!

    These items are no longer defined, but appear here so that someone
    searching the interfaces might find them. If you are using one of these
    items, you must change your code to support the Sound Manager.

        swMode, ftMode, ffMode
        FreeWave, FFSynthRec, Tone, SWSynthRec, Wave, FTSoundRec
        SndCompletionProcPtr
        StartSound, StopSound, SoundDone
        SetSoundVol, GetSoundVol
}
{
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   constants
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}
<<<<<<< HEAD
<<<<<<< HEAD
const
	twelfthRootTwo = 1.05946309435;

const
	soundListRsrc = FourCharCode('snd '); {Resource type used by Sound Manager}
	kSoundCodecInfoResourceType = FourCharCode('snfo'); {Resource type holding codec information (optional public component resource)}

const
	kSimpleBeepID = 1;     {reserved resource ID for Simple Beep}

const
	rate48khz = $BB800000; {48000.00000 in fixed-point}
	rate44khz = $AC440000; {44100.00000 in fixed-point}
	rate32khz = $7D000000; {32000.00000 in fixed-point}
	rate22050hz = $56220000; {22050.00000 in fixed-point}
	rate22khz = $56EE8BA3; {22254.54545 in fixed-point}
	rate16khz = $3E800000; {16000.00000 in fixed-point}
	rate11khz = $2B7745D1; {11127.27273 in fixed-point}
	rate11025hz = $2B110000; {11025.00000 in fixed-point}
	rate8khz = $1F400000; { 8000.00000 in fixed-point}

{synthesizer numbers for SndNewChannel}
const
	sampledSynth = 5;     {sampled sound synthesizer}

{$ifc CALL_NOT_IN_CARBON}
const
	squareWaveSynth = 1;    {square wave synthesizer}
	waveTableSynth = 3;    {wave table synthesizer}
                                        {old Sound Manager MACE synthesizer numbers}
	MACE3snthID = 11;
	MACE6snthID = 13;

{$endc} {CALL_NOT_IN_CARBON}

const
	kMiddleC = 60;    {MIDI note value for middle C}

const
	kNoVolume = 0;    {setting for no sound volume}
	kFullVolume = $0100; {1.0, setting for full hardware output volume}

const
	stdQLength = 128;

const
	dataOffsetFlag = $8000;

const
	kUseOptionalOutputDevice = -1;    {only for Sound Manager 3.0 or later}

const
	notCompressed = 0;    {compression ID's}
	fixedCompression = -1;   {compression ID for fixed-sized compression}
	variableCompression = -2;    {compression ID for variable-sized compression}

const
	twoToOne = 1;
	eightToThree = 2;
	threeToOne = 3;
	sixToOne = 4;
	sixToOnePacketSize = 8;
	threeToOnePacketSize = 16;

const
	stateBlockSize = 64;
	leftOverBlockSize = 32;

const
	firstSoundFormat = $0001; {general sound format}
	secondSoundFormat = $0002; {special sampled sound format (HyperCard)}

{$ifc CALL_NOT_IN_CARBON}
const
	dbBufferReady = $00000001; {double buffer is filled}
	dbLastBuffer = $00000004; {last double buffer to play}

{$endc} {CALL_NOT_IN_CARBON}

const
	sysBeepDisable = $0000; {SysBeep() enable flags}
	sysBeepEnable = 1 shl 0;
	sysBeepSynchronous = 1 shl 1; {if bit set, make alert sounds synchronous}

const
	unitTypeNoSelection = $FFFF; {unitTypes for AudioSelection.unitType}
	unitTypeSeconds = $0000;

const
	stdSH = $00; {Standard sound header encode value}
	extSH = $FF; {Extended sound header encode value}
	cmpSH = $FE;  {Compressed sound header encode value}

{command numbers for SndDoCommand and SndDoImmediate}
const
	nullCmd = 0;
	quietCmd = 3;
	flushCmd = 4;
	reInitCmd = 5;
	waitCmd = 10;
	pauseCmd = 11;
	resumeCmd = 12;
	callBackCmd = 13;
	syncCmd = 14;
	availableCmd = 24;
	versionCmd = 25;
	volumeCmd = 46;   {sound manager 3.0 or later only}
	getVolumeCmd = 47;   {sound manager 3.0 or later only}
	clockComponentCmd = 50;   {sound manager 3.2.1 or later only}
	getClockComponentCmd = 51;   {sound manager 3.2.1 or later only}
	scheduledSoundCmd = 52;   {sound manager 3.3 or later only}
	linkSoundComponentsCmd = 53;   {sound manager 3.3 or later only}
	soundCmd = 80;
	bufferCmd = 81;
	rateMultiplierCmd = 86;
	getRateMultiplierCmd = 87;

{$ifc CALL_NOT_IN_CARBON}
{command numbers for SndDoCommand and SndDoImmediate that are not available for use in Carbon }
const
	initCmd = 1;
	freeCmd = 2;
	totalLoadCmd = 26;
	loadCmd = 27;
	freqDurationCmd = 40;
	restCmd = 41;
	freqCmd = 42;
	ampCmd = 43;
	timbreCmd = 44;
	getAmpCmd = 45;
	waveTableCmd = 60;
	phaseCmd = 61;
	rateCmd = 82;
	continueCmd = 83;
	doubleBufferCmd = 84;
	getRateCmd = 85;
	sizeCmd = 90;   {obsolete command}
	convertCmd = 91;    {obsolete MACE command}

{$endc} {CALL_NOT_IN_CARBON}

{$ifc OLDROUTINENAMES}
{channel initialization parameters}
const
	waveInitChannelMask = $07;
	waveInitChannel0 = $04; {wave table only, Sound Manager 2.0 and earlier}
	waveInitChannel1 = $05; {wave table only, Sound Manager 2.0 and earlier}
	waveInitChannel2 = $06; {wave table only, Sound Manager 2.0 and earlier}
	waveInitChannel3 = $07; {wave table only, Sound Manager 2.0 and earlier}
	initChan0 = waveInitChannel0; {obsolete spelling}
	initChan1 = waveInitChannel1; {obsolete spelling}
	initChan2 = waveInitChannel2; {obsolete spelling}
	initChan3 = waveInitChannel3; {obsolete spelling}

const
	outsideCmpSH = 0;    {obsolete MACE constant}
	insideCmpSH = 1;    {obsolete MACE constant}
	aceSuccess = 0;    {obsolete MACE constant}
	aceMemFull = 1;    {obsolete MACE constant}
	aceNilBlock = 2;    {obsolete MACE constant}
	aceBadComp = 3;    {obsolete MACE constant}
	aceBadEncode = 4;    {obsolete MACE constant}
	aceBadDest = 5;    {obsolete MACE constant}
	aceBadCmd = 6;     {obsolete MACE constant}

{$endc} {OLDROUTINENAMES}

const
	initChanLeft = $0002; {left stereo channel}
	initChanRight = $0003; {right stereo channel}
	initNoInterp = $0004; {no linear interpolation}
	initNoDrop = $0008; {no drop-sample conversion}
	initMono = $0080; {monophonic channel}
	initStereo = $00C0; {stereo channel}
	initMACE3 = $0300; {MACE 3:1}
	initMACE6 = $0400; {MACE 6:1}
	initPanMask = $0003; {mask for right/left pan values}
	initSRateMask = $0030; {mask for sample rate values}
	initStereoMask = $00C0; {mask for mono/stereo values}
	initCompMask = $FF00; {mask for compression IDs}

{Get&Set Sound Information Selectors}
const
	siActiveChannels = FourCharCode('chac'); {active channels}
	siActiveLevels = FourCharCode('lmac'); {active meter levels}
	siAGCOnOff = FourCharCode('agc '); {automatic gain control state}
	siAsync = FourCharCode('asyn'); {asynchronous capability}
	siAVDisplayBehavior = FourCharCode('avdb');
	siChannelAvailable = FourCharCode('chav'); {number of channels available}
	siCompressionAvailable = FourCharCode('cmav'); {compression types available}
	siCompressionFactor = FourCharCode('cmfa'); {current compression factor}
	siCompressionHeader = FourCharCode('cmhd'); {return compression header}
	siCompressionNames = FourCharCode('cnam'); {compression type names available}
	siCompressionParams = FourCharCode('evaw'); {compression parameters}
	siCompressionSampleRate = FourCharCode('cprt'); { SetInfo only: compressor's sample rate}
	siCompressionChannels = FourCharCode('cpct'); { SetInfo only: compressor's number of channels}
	siCompressionOutputSampleRate = FourCharCode('cort'); { GetInfo only: only implemented by compressors that have differing in and out rates }
	siCompressionInputRateList = FourCharCode('crtl'); { GetInfo only: only implemented by compressors that only take certain input rates }
	siCompressionType = FourCharCode('comp'); {current compression type}
	siCompressionConfiguration = FourCharCode('ccfg'); {compression extensions}
	siContinuous = FourCharCode('cont'); {continous recording}
	siDecompressionParams = FourCharCode('wave'); {decompression parameters}
	siDecompressionConfiguration = FourCharCode('dcfg'); {decompression extensions}
	siDeviceBufferInfo = FourCharCode('dbin'); {size of interrupt buffer}
	siDeviceConnected = FourCharCode('dcon'); {input device connection status}
	siDeviceIcon = FourCharCode('icon'); {input device icon}
	siDeviceName = FourCharCode('name'); {input device name}
	siEQSpectrumBands = FourCharCode('eqsb'); { number of spectrum bands}
	siEQSpectrumLevels = FourCharCode('eqlv'); { gets spectum meter levels}
	siEQSpectrumOnOff = FourCharCode('eqlo'); { turn on/off spectum meter levels}
	siEQSpectrumResolution = FourCharCode('eqrs'); { set the resolution of the FFT, 0 = low res (<=16 bands), 1 = high res (16-64 bands)}
	siEQToneControlGain = FourCharCode('eqtg'); { set the bass and treble gain}
	siEQToneControlOnOff = FourCharCode('eqtc'); { turn on equalizer attenuation}
	siHardwareBalance = FourCharCode('hbal');
	siHardwareBalanceSteps = FourCharCode('hbls');
	siHardwareBass = FourCharCode('hbas');
	siHardwareBassSteps = FourCharCode('hbst');
	siHardwareBusy = FourCharCode('hwbs'); {sound hardware is in use}
	siHardwareFormat = FourCharCode('hwfm'); {get hardware format}
	siHardwareMute = FourCharCode('hmut'); {mute state of all hardware}
	siHardwareMuteNoPrefs = FourCharCode('hmnp'); {mute state of all hardware, but don't store in prefs }
	siHardwareTreble = FourCharCode('htrb');
	siHardwareTrebleSteps = FourCharCode('hwts');
	siHardwareVolume = FourCharCode('hvol'); {volume level of all hardware}
	siHardwareVolumeSteps = FourCharCode('hstp'); {number of volume steps for hardware}
	siHeadphoneMute = FourCharCode('pmut'); {mute state of headphones}
	siHeadphoneVolume = FourCharCode('pvol'); {volume level of headphones}
	siHeadphoneVolumeSteps = FourCharCode('hdst'); {number of volume steps for headphones}
	siInputAvailable = FourCharCode('inav'); {input sources available}
	siInputGain = FourCharCode('gain'); {input gain}
	siInputSource = FourCharCode('sour'); {input source selector}
	siInputSourceNames = FourCharCode('snam'); {input source names}
	siLevelMeterOnOff = FourCharCode('lmet'); {level meter state}
	siModemGain = FourCharCode('mgai'); {modem input gain}
	siMonitorAvailable = FourCharCode('mnav');
	siMonitorSource = FourCharCode('mons');
	siNumberChannels = FourCharCode('chan'); {current number of channels}
	siOptionsDialog = FourCharCode('optd'); {display options dialog}
	siOSTypeInputSource = FourCharCode('inpt'); {input source by OSType}
	siOSTypeInputAvailable = FourCharCode('inav'); {list of available input source OSTypes}
	siOutputDeviceName = FourCharCode('onam'); {output device name}
	siPlayThruOnOff = FourCharCode('plth'); {playthrough state}
	siPostMixerSoundComponent = FourCharCode('psmx'); {install post-mixer effect}
	siPreMixerSoundComponent = FourCharCode('prmx'); {install pre-mixer effect}
	siQuality = FourCharCode('qual'); {quality setting}
	siRateMultiplier = FourCharCode('rmul'); {throttle rate setting}
	siRecordingQuality = FourCharCode('qual'); {recording quality}
	siSampleRate = FourCharCode('srat'); {current sample rate}
	siSampleRateAvailable = FourCharCode('srav'); {sample rates available}
	siSampleSize = FourCharCode('ssiz'); {current sample size}
	siSampleSizeAvailable = FourCharCode('ssav'); {sample sizes available}
	siSetupCDAudio = FourCharCode('sucd'); {setup sound hardware for CD audio}
	siSetupModemAudio = FourCharCode('sumd'); {setup sound hardware for modem audio}
	siSlopeAndIntercept = FourCharCode('flap'); {floating point variables for conversion}
	siSoundClock = FourCharCode('sclk');
	siUseThisSoundClock = FourCharCode('sclc'); {sdev uses this to tell the mixer to use his sound clock}
	siSpeakerMute = FourCharCode('smut'); {mute state of all built-in speaker}
	siSpeakerVolume = FourCharCode('svol'); {volume level of built-in speaker}
	siSSpCPULoadLimit = FourCharCode('3dll');
	siSSpLocalization = FourCharCode('3dif');
	siSSpSpeakerSetup = FourCharCode('3dst');
	siStereoInputGain = FourCharCode('sgai'); {stereo input gain}
	siSubwooferMute = FourCharCode('bmut'); {mute state of sub-woofer}
	siTerminalType = FourCharCode('ttyp'); { usb terminal type }
	siTwosComplementOnOff = FourCharCode('twos'); {two's complement state}
	siVendorProduct = FourCharCode('vpro'); { vendor and product ID }
	siVolume = FourCharCode('volu'); {volume level of source}
	siVoxRecordInfo = FourCharCode('voxr'); {VOX record parameters}
	siVoxStopInfo = FourCharCode('voxs'); {VOX stop parameters}
	siWideStereo = FourCharCode('wide'); {wide stereo setting}
	siSupportedExtendedFlags = FourCharCode('exfl'); {which flags are supported in Extended sound data structures}
	siRateConverterRollOffSlope = FourCharCode('rcdb'); {the roll-off slope for the rate converter's filter, in whole dB as a long this value is a long whose range is from 20 (worst quality/fastest performance) to 90 (best quality/slowest performance)}
	siOutputLatency = FourCharCode('olte'); {latency of sound output component}
	siHALAudioDeviceID = FourCharCode('hlid'); {audio device id}
	siHALAudioDeviceUniqueID = FourCharCode('huid'); {audio device unique id}
	siClientAcceptsVBR = FourCharCode('cvbr'); {client handles VBR}
	siSourceIsExhausted = FourCharCode('srcx'); {the ultimate source of data has run out (keep asking, but when you get nothing, that's it)}
	siMediaContextID = FourCharCode('uuid'); {media context id -- UUID }
	siCompressionMaxPacketSize = FourCharCode('cmxp'); {maximum compressed packet size for current configuration -- unsigned long }
	siAudioCodecPropertyValue = FourCharCode('spva'); {audio codec property value -- SoundAudioCodecPropertyRequestParams* }
	siAudioCodecPropertyInfo = FourCharCode('spin'); {audio codec property info -- SoundAudioCodecPropertyRequestParams* }

const
	siCloseDriver = FourCharCode('clos'); {reserved for internal use only}
	siInitializeDriver = FourCharCode('init'); {reserved for internal use only}
	siPauseRecording = FourCharCode('paus'); {reserved for internal use only}
	siUserInterruptProc = FourCharCode('user'); {reserved for internal use only}

{ input source Types}
const
	kInvalidSource = -1; {this source may be returned from GetInfo if no other source is the monitored source}
	kNoSource = FourCharCode('none'); {no source selection}
	kCDSource = FourCharCode('cd  '); {internal CD player input}
	kExtMicSource = FourCharCode('emic'); {external mic input}
	kSoundInSource = FourCharCode('sinj'); {sound input jack}
	kRCAInSource = FourCharCode('irca'); {RCA jack input}
	kTVFMTunerSource = FourCharCode('tvfm');
	kDAVInSource = FourCharCode('idav'); {DAV analog input}
	kIntMicSource = FourCharCode('imic'); {internal mic input}
	kMediaBaySource = FourCharCode('mbay'); {media bay input}
	kModemSource = FourCharCode('modm'); {modem input (internal modem on desktops, PCI input on PowerBooks)}
	kPCCardSource = FourCharCode('pcm '); {PC Card pwm input}
	kZoomVideoSource = FourCharCode('zvpc'); {zoom video input}
	kDVDSource = FourCharCode('dvda'); { DVD audio input}
	kMicrophoneArray = FourCharCode('mica'); { microphone array}

{Sound Component Types and Subtypes}
const
	kNoSoundComponentType = FourCharCode('****');
	kSoundComponentType = FourCharCode('sift'); {component type}
	kSoundComponentPPCType = FourCharCode('nift'); {component type for PowerPC code}
	kRate8SubType = FourCharCode('ratb'); {8-bit rate converter}
	kRate16SubType = FourCharCode('ratw'); {16-bit rate converter}
	kConverterSubType = FourCharCode('conv'); {sample format converter}
	kSndSourceSubType = FourCharCode('sour'); {generic source component}
	kMixerType = FourCharCode('mixr');
	kMixer8SubType = FourCharCode('mixb'); {8-bit mixer}
	kMixer16SubType = FourCharCode('mixw'); {16-bit mixer}
	kSoundInputDeviceType = FourCharCode('sinp'); {sound input component}
	kWaveInSubType = FourCharCode('wavi'); {Windows waveIn}
	kWaveInSnifferSubType = FourCharCode('wisn'); {Windows waveIn sniffer}
	kSoundOutputDeviceType = FourCharCode('sdev'); {sound output component}
	kClassicSubType = FourCharCode('clas'); {classic hardware, i.e. Mac Plus}
	kASCSubType = FourCharCode('asc '); {Apple Sound Chip device}
	kDSPSubType = FourCharCode('dsp '); {DSP device}
	kAwacsSubType = FourCharCode('awac'); {Another of Will's Audio Chips device}
	kGCAwacsSubType = FourCharCode('awgc'); {Awacs audio with Grand Central DMA}
	kSingerSubType = FourCharCode('sing'); {Singer (via Whitney) based sound}
	kSinger2SubType = FourCharCode('sng2'); {Singer 2 (via Whitney) for Acme}
	kWhitSubType = FourCharCode('whit'); {Whit sound component for PrimeTime 3}
	kSoundBlasterSubType = FourCharCode('sbls'); {Sound Blaster for CHRP}
	kWaveOutSubType = FourCharCode('wavo'); {Windows waveOut}
	kWaveOutSnifferSubType = FourCharCode('wosn'); {Windows waveOut sniffer}
	kDirectSoundSubType = FourCharCode('dsnd'); {Windows DirectSound}
	kDirectSoundSnifferSubType = FourCharCode('dssn'); {Windows DirectSound sniffer}
	kUNIXsdevSubType = FourCharCode('un1x'); {UNIX base sdev}
	kUSBSubType = FourCharCode('usb '); {USB device}
	kBlueBoxSubType = FourCharCode('bsnd'); {Blue Box sound component}
	kHALCustomComponentSubType = FourCharCode('halx'); {Registered by the HAL output component ('hal!') for each HAL output device}
	kSoundCompressor = FourCharCode('scom');
	kSoundDecompressor = FourCharCode('sdec');
	kAudioComponentType = FourCharCode('adio'); {Audio components and sub-types}
	kAwacsPhoneSubType = FourCharCode('hphn');
	kAudioVisionSpeakerSubType = FourCharCode('telc');
	kAudioVisionHeadphoneSubType = FourCharCode('telh');
	kPhilipsFaderSubType = FourCharCode('tvav');
	kSGSToneSubType = FourCharCode('sgs0');
	kSoundEffectsType = FourCharCode('snfx'); {sound effects type}
	kEqualizerSubType = FourCharCode('eqal'); {frequency equalizer}
	kSSpLocalizationSubType = FourCharCode('snd3');

{Format Types}
const
	kSoundNotCompressed = FourCharCode('NONE'); {sound is not compressed}
	k8BitOffsetBinaryFormat = FourCharCode('raw '); {8-bit offset binary}
	k16BitBigEndianFormat = FourCharCode('twos'); {16-bit big endian}
	k16BitLittleEndianFormat = FourCharCode('sowt'); {16-bit little endian}
	kFloat32Format = FourCharCode('fl32'); {32-bit floating point}
	kFloat64Format = FourCharCode('fl64'); {64-bit floating point}
	k24BitFormat = FourCharCode('in24'); {24-bit integer}
	k32BitFormat = FourCharCode('in32'); {32-bit integer}
	k32BitLittleEndianFormat = FourCharCode('23ni'); {32-bit little endian integer }
	kMACE3Compression = FourCharCode('MAC3'); {MACE 3:1}
	kMACE6Compression = FourCharCode('MAC6'); {MACE 6:1}
	kCDXA4Compression = FourCharCode('cdx4'); {CD/XA 4:1}
	kCDXA2Compression = FourCharCode('cdx2'); {CD/XA 2:1}
	kIMACompression = FourCharCode('ima4'); {IMA 4:1}
	kULawCompression = FourCharCode('ulaw'); {µLaw 2:1}
	kALawCompression = FourCharCode('alaw'); {aLaw 2:1}
	kMicrosoftADPCMFormat = $6D730002; {Microsoft ADPCM - ACM code 2}
	kDVIIntelIMAFormat = $6D730011; {DVI/Intel IMA ADPCM - ACM code 17}
	kMicrosoftGSMCompression = $6D730031; {Microsoft GSM 6.10 - ACM code 49}
	kDVAudioFormat = FourCharCode('dvca'); {DV Audio}
	kQDesignCompression = FourCharCode('QDMC'); {QDesign music}
	kQDesign2Compression = FourCharCode('QDM2'); {QDesign2 music}
	kQUALCOMMCompression = FourCharCode('Qclp'); {QUALCOMM PureVoice}
	kOffsetBinary = k8BitOffsetBinaryFormat; {for compatibility}
	kTwosComplement = k16BitBigEndianFormat; {for compatibility}
	kLittleEndianFormat = k16BitLittleEndianFormat; {for compatibility}
	kMPEGLayer3Format = $6D730055; {MPEG Layer 3, CBR only (pre QT4.1)}
	kFullMPEGLay3Format = FourCharCode('.mp3'); {MPEG Layer 3, CBR & VBR (QT4.1 and later)}
	kVariableDurationDVAudioFormat = FourCharCode('vdva'); {Variable Duration DV Audio}
	kMPEG4AudioFormat = FourCharCode('mp4a');

{$ifc TARGET_RT_LITTLE_ENDIAN}
const
	k16BitNativeEndianFormat = k16BitLittleEndianFormat;
	k16BitNonNativeEndianFormat = k16BitBigEndianFormat;

{$elsec}
const
	k16BitNativeEndianFormat = k16BitBigEndianFormat;
	k16BitNonNativeEndianFormat = k16BitLittleEndianFormat;

{$endc} {TARGET_RT_LITTLE_ENDIAN}

{Features Flags}
const
	k8BitRawIn = 1 shl 0; {data description}
	k8BitTwosIn = 1 shl 1;
	k16BitIn = 1 shl 2;
	kStereoIn = 1 shl 3;
	k8BitRawOut = 1 shl 8;
	k8BitTwosOut = 1 shl 9;
	k16BitOut = 1 shl 10;
	kStereoOut = 1 shl 11;
	kReverse = 1 shl 16; {  function description}
	kRateConvert = 1 shl 17;
	kCreateSoundSource = 1 shl 18;
	kVMAwareness = 1 shl 21; { component will hold its memory}
	kHighQuality = 1 shl 22; {  performance description}
	kNonRealTime = 1 shl 23;

{'snfo' Resource Feature Flags}
const
	kSoundCodecInfoFixedCompression = 1 shl 0; { has fixed compression format}
	kSoundCodecInfoVariableCompression = 1 shl 1; { has variable compression format}
	kSoundCodecInfoHasRestrictedInputRates = 1 shl 2; { compressor has restricted set of input sample rates}
	kSoundCodecInfoCanChangeOutputRate = 1 shl 3; { compressor may output a different sample rate than it receives}
	kSoundCodecInfoRequiresExternalFraming = 1 shl 4; { format requires external framing information during decode/encode}
	kSoundCodecInfoVariableDuration = 1 shl 5; { audio packets can vary in duration}

{SoundComponentPlaySourceBuffer action flags}
const
	kSourcePaused = 1 shl 0;
	kPassThrough = 1 shl 16;
	kNoSoundComponentChain = 1 shl 17;

{SoundParamBlock flags, usefull for OpenMixerSoundComponent}
const
	kNoMixing = 1 shl 0; {don't mix source}
	kNoSampleRateConversion = 1 shl 1; {don't convert sample rate (i.e. 11 kHz -> 22 kHz)}
	kNoSampleSizeConversion = 1 shl 2; {don't convert sample size (i.e. 16 -> 8)}
	kNoSampleFormatConversion = 1 shl 3; {don't convert sample format (i.e. 'twos' -> 'raw ')}
	kNoChannelConversion = 1 shl 4; {don't convert stereo/mono}
	kNoDecompression = 1 shl 5; {don't decompress (i.e. 'MAC3' -> 'raw ')}
	kNoVolumeConversion = 1 shl 6; {don't apply volume}
	kNoRealtimeProcessing = 1 shl 7; {won't run at interrupt time}
	kScheduledSource = 1 shl 8; {source is scheduled}
	kNonInterleavedBuffer = 1 shl 9; {buffer is not interleaved samples}
	kNonPagingMixer = 1 shl 10; {if VM is on, use the non-paging mixer}
	kSoundConverterMixer = 1 shl 11; {the mixer is to be used by the SoundConverter}
	kPagingMixer = 1 shl 12; {the mixer is to be used as a paging mixer when VM is on}
	kVMAwareMixer = 1 shl 13; {passed to the output device when the SM is going to deal with VM safety}
	kExtendedSoundData = 1 shl 14; {SoundComponentData record is actually an ExtendedSoundComponentData}

{SoundParamBlock quality settings}
const
	kBestQuality = 1 shl 0; {use interpolation in rate conversion}
<<<<<<< HEAD

{useful bit masks}
const
	kInputMask = $000000FF; {masks off input bits}
	kOutputMask = $0000FF00; {masks off output bits}
	kOutputShift = 8;    {amount output bits are shifted}
	kActionMask = $00FF0000; {masks off action bits}
	kSoundComponentBits = $00FFFFFF;

{audio atom types}
const
	kAudioFormatAtomType = FourCharCode('frma');
	kAudioEndianAtomType = FourCharCode('enda');
	kAudioVBRAtomType = FourCharCode('vbra');
	kAudioTerminatorAtomType = 0;

{siAVDisplayBehavior types}
const
	kAVDisplayHeadphoneRemove = 0;    { monitor does not have a headphone attached}
	kAVDisplayHeadphoneInsert = 1;    { monitor has a headphone attached}
	kAVDisplayPlainTalkRemove = 2;    { monitor either sending no input through CPU input port or unable to tell if input is coming in}
	kAVDisplayPlainTalkInsert = 3;     { monitor sending PlainTalk level microphone source input through sound input port}
<<<<<<< HEAD

{Audio Component constants}
const
{Values for whichChannel parameter}
	audioAllChannels = 0;    {All channels (usually interpreted as both left and right)}
	audioLeftChannel = 1;    {Left channel}
	audioRightChannel = 2;    {Right channel}
                                        {Values for mute parameter}
	audioUnmuted = 0;    {Device is unmuted}
	audioMuted = 1;    {Device is muted}
                                        {Capabilities flags definitions}
	audioDoesMono = 1 shl 0; {Device supports mono output}
	audioDoesStereo = 1 shl 1; {Device supports stereo output}
	audioDoesIndependentChannels = 1 shl 2; {Device supports independent software control of each channel}

{Sound Input Qualities}
const
	siCDQuality = FourCharCode('cd  '); {44.1kHz, stereo, 16 bit}
	siBestQuality = FourCharCode('best'); {22kHz, mono, 8 bit}
	siBetterQuality = FourCharCode('betr'); {22kHz, mono, MACE 3:1}
	siGoodQuality = FourCharCode('good'); {22kHz, mono, MACE 6:1}
	siNoneQuality = FourCharCode('none'); {settings don't match any quality for a get call}

const
	siDeviceIsConnected = 1;    {input device is connected and ready for input}
	siDeviceNotConnected = 0;    {input device is not connected}
	siDontKnowIfConnected = -1;   {can't tell if input device is connected}
	siReadPermission = 0;    {permission passed to SPBOpenDevice}
	siWritePermission = 1;     {permission passed to SPBOpenDevice}

{flags that SoundConverterFillBuffer will return}
const
	kSoundConverterDidntFillBuffer = 1 shl 0; {set if the converter couldn't completely satisfy a SoundConverterFillBuffer request}
	kSoundConverterHasLeftOverData = 1 shl 1; {set if the converter had left over data after completely satisfying a SoundConverterFillBuffer call}

{ flags for extendedFlags fields of ExtendedSoundComponentData, ExtendedSoundParamBlock, and ExtendedScheduledSoundHeader}
const
	kExtendedSoundSampleCountNotValid = 1 shl 0; { set if sampleCount of SoundComponentData isn't meaningful; use buffer size instead}
	kExtendedSoundBufferSizeValid = 1 shl 1; { set if bufferSize field is valid}
	kExtendedSoundFrameSizesValid = 1 shl 2; { set if frameSizesArray is valid (will be nil if all sizes are common and kExtendedSoundCommonFrameSizeValid is set}
	kExtendedSoundCommonFrameSizeValid = 1 shl 3; { set if all audio frames have the same size and the commonFrameSize field is valid}
	kExtendedSoundExtensionsValid = 1 shl 4; { set if pointer to extensions array is valid}
	kExtendedSoundBufferFlagsValid = 1 shl 5; { set if buffer flags field is valid}

{ flags passed in bufferFlags/bufferFlagsMask extended fields if kExtendedSoundBufferFlagsValid extended flag is set}
const
	kExtendedSoundBufferIsDiscontinuous = 1 shl 0; { buffer is discontinuous with previous buffer}
	kExtendedSoundBufferIsFirstBuffer = 1 shl 1; { buffer is first buffer}

=======

=======

{useful bit masks}
const
	kInputMask = $000000FF; {masks off input bits}
	kOutputMask = $0000FF00; {masks off output bits}
	kOutputShift = 8;    {amount output bits are shifted}
	kActionMask = $00FF0000; {masks off action bits}
	kSoundComponentBits = $00FFFFFF;

{audio atom types}
const
	kAudioFormatAtomType = FourCharCode('frma');
	kAudioEndianAtomType = FourCharCode('enda');
	kAudioVBRAtomType = FourCharCode('vbra');
	kAudioTerminatorAtomType = 0;

{siAVDisplayBehavior types}
const
	kAVDisplayHeadphoneRemove = 0;    { monitor does not have a headphone attached}
	kAVDisplayHeadphoneInsert = 1;    { monitor has a headphone attached}
	kAVDisplayPlainTalkRemove = 2;    { monitor either sending no input through CPU input port or unable to tell if input is coming in}
	kAVDisplayPlainTalkInsert = 3;     { monitor sending PlainTalk level microphone source input through sound input port}

>>>>>>> origin/cpstrnew
{Audio Component constants}
const
{Values for whichChannel parameter}
	audioAllChannels = 0;    {All channels (usually interpreted as both left and right)}
	audioLeftChannel = 1;    {Left channel}
	audioRightChannel = 2;    {Right channel}
                                        {Values for mute parameter}
	audioUnmuted = 0;    {Device is unmuted}
	audioMuted = 1;    {Device is muted}
                                        {Capabilities flags definitions}
	audioDoesMono = 1 shl 0; {Device supports mono output}
	audioDoesStereo = 1 shl 1; {Device supports stereo output}
	audioDoesIndependentChannels = 1 shl 2; {Device supports independent software control of each channel}

{Sound Input Qualities}
const
	siCDQuality = FourCharCode('cd  '); {44.1kHz, stereo, 16 bit}
	siBestQuality = FourCharCode('best'); {22kHz, mono, 8 bit}
	siBetterQuality = FourCharCode('betr'); {22kHz, mono, MACE 3:1}
	siGoodQuality = FourCharCode('good'); {22kHz, mono, MACE 6:1}
	siNoneQuality = FourCharCode('none'); {settings don't match any quality for a get call}

const
	siDeviceIsConnected = 1;    {input device is connected and ready for input}
	siDeviceNotConnected = 0;    {input device is not connected}
	siDontKnowIfConnected = -1;   {can't tell if input device is connected}
	siReadPermission = 0;    {permission passed to SPBOpenDevice}
	siWritePermission = 1;     {permission passed to SPBOpenDevice}

{flags that SoundConverterFillBuffer will return}
const
	kSoundConverterDidntFillBuffer = 1 shl 0; {set if the converter couldn't completely satisfy a SoundConverterFillBuffer request}
	kSoundConverterHasLeftOverData = 1 shl 1; {set if the converter had left over data after completely satisfying a SoundConverterFillBuffer call}

{ flags for extendedFlags fields of ExtendedSoundComponentData, ExtendedSoundParamBlock, and ExtendedScheduledSoundHeader}
const
	kExtendedSoundSampleCountNotValid = 1 shl 0; { set if sampleCount of SoundComponentData isn't meaningful; use buffer size instead}
	kExtendedSoundBufferSizeValid = 1 shl 1; { set if bufferSize field is valid}
	kExtendedSoundFrameSizesValid = 1 shl 2; { set if frameSizesArray is valid (will be nil if all sizes are common and kExtendedSoundCommonFrameSizeValid is set}
	kExtendedSoundCommonFrameSizeValid = 1 shl 3; { set if all audio frames have the same size and the commonFrameSize field is valid}
	kExtendedSoundExtensionsValid = 1 shl 4; { set if pointer to extensions array is valid}
	kExtendedSoundBufferFlagsValid = 1 shl 5; { set if buffer flags field is valid}

{ flags passed in bufferFlags/bufferFlagsMask extended fields if kExtendedSoundBufferFlagsValid extended flag is set}
const
	kExtendedSoundBufferIsDiscontinuous = 1 shl 0; { buffer is discontinuous with previous buffer}
	kExtendedSoundBufferIsFirstBuffer = 1 shl 1; { buffer is first buffer}

<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   typedefs
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}

type
	SndCommandPtr = ^SndCommand;
	SndCommand = record
		cmd: UInt16;
		param1: SInt16;
		param2: SIGNEDLONG;
	end;
type
	SndChannelPtr = ^SndChannel;
	SndCallBackProcPtr = procedure( chan: SndChannelPtr; var cmd: SndCommand );
	SndCallBackUPP = SndCallBackProcPtr;
	SndChannel = record
		nextChan: SndChannelPtr;
		firstMod: Ptr;               { reserved for the Sound Manager }
		callBack: SndCallBackUPP;
		userInfo: SIGNEDLONG;
		wait: SIGNEDLONG;                   { The following is for internal Sound Manager use only.}
		cmdInProgress: SndCommand;
		flags: SInt16;
		qLength: SInt16;
		qHead: SInt16;
		qTail: SInt16;
		queue: array [0..127] of SndCommand;
	end;

{
 *  NewSndCallBackUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewSndCallBackUPP( userRoutine: SndCallBackProcPtr ): SndCallBackUPP; external name '_NewSndCallBackUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
const twelfthRootTwo = 1.05946309435;


const
	soundListRsrc				= FourCharCode('snd ');						{ Resource type used by Sound Manager }

	kSimpleBeepID				= 1;							{ reserved resource ID for Simple Beep }

	rate48khz					= $BB800000;					{ 48000.00000 in fixed-point }
	rate44khz					= $AC440000;					{ 44100.00000 in fixed-point }
	rate32khz					= $7D000000;					{ 32000.00000 in fixed-point }
	rate22050hz					= $56220000;					{ 22050.00000 in fixed-point }
	rate22khz					= $56EE8BA3;					{ 22254.54545 in fixed-point }
	rate16khz					= $3E800000;					{ 16000.00000 in fixed-point }
	rate11khz					= $2B7745D1;					{ 11127.27273 in fixed-point }
	rate11025hz					= $2B110000;					{ 11025.00000 in fixed-point }
	rate8khz					= $1F400000;					{  8000.00000 in fixed-point }

	{	synthesizer numbers for SndNewChannel	}
	sampledSynth				= 5;							{ sampled sound synthesizer }

{$ifc CALL_NOT_IN_CARBON}
	squareWaveSynth				= 1;							{ square wave synthesizer }
	waveTableSynth				= 3;							{ wave table synthesizer }
																{ old Sound Manager MACE synthesizer numbers }
	MACE3snthID					= 11;
	MACE6snthID					= 13;

{$endc}  {CALL_NOT_IN_CARBON}

	kMiddleC					= 60;							{ MIDI note value for middle C }

	kNoVolume					= 0;							{ setting for no sound volume }
	kFullVolume					= $0100;						{ 1.0, setting for full hardware output volume }

	stdQLength					= 128;

	dataOffsetFlag				= $8000;

	kUseOptionalOutputDevice	= -1;							{ only for Sound Manager 3.0 or later }

	notCompressed				= 0;							{ compression ID's }
	fixedCompression			= -1;							{ compression ID for fixed-sized compression }
	variableCompression			= -2;							{ compression ID for variable-sized compression }

	twoToOne					= 1;
	eightToThree				= 2;
	threeToOne					= 3;
	sixToOne					= 4;
	sixToOnePacketSize			= 8;
	threeToOnePacketSize		= 16;

	stateBlockSize				= 64;
	leftOverBlockSize			= 32;

	firstSoundFormat			= $0001;						{ general sound format }
	secondSoundFormat			= $0002;						{ special sampled sound format (HyperCard) }

{$ifc CALL_NOT_IN_CARBON}
	dbBufferReady				= $00000001;					{ double buffer is filled }
	dbLastBuffer				= $00000004;					{ last double buffer to play }

{$endc}  {CALL_NOT_IN_CARBON}

	sysBeepDisable				= $0000;						{ SysBeep() enable flags }
	sysBeepEnable				= $01;
	sysBeepSynchronous			= $02;							{ if bit set, make alert sounds synchronous }

	unitTypeNoSelection			= $FFFF;						{ unitTypes for AudioSelection.unitType }
	unitTypeSeconds				= $0000;

	stdSH						= $00;							{ Standard sound header encode value }
	extSH						= $FF;							{ Extended sound header encode value }
	cmpSH						= $FE;							{ Compressed sound header encode value }

	{	command numbers for SndDoCommand and SndDoImmediate	}
	nullCmd						= 0;
	quietCmd					= 3;
	flushCmd					= 4;
	reInitCmd					= 5;
	waitCmd						= 10;
	pauseCmd					= 11;
	resumeCmd					= 12;
	callBackCmd					= 13;
	syncCmd						= 14;
	availableCmd				= 24;
	versionCmd					= 25;
	volumeCmd					= 46;							{ sound manager 3.0 or later only }
	getVolumeCmd				= 47;							{ sound manager 3.0 or later only }
	clockComponentCmd			= 50;							{ sound manager 3.2.1 or later only }
	getClockComponentCmd		= 51;							{ sound manager 3.2.1 or later only }
	scheduledSoundCmd			= 52;							{ sound manager 3.3 or later only }
	linkSoundComponentsCmd		= 53;							{ sound manager 3.3 or later only }
	soundCmd					= 80;
	bufferCmd					= 81;
	rateMultiplierCmd			= 86;
	getRateMultiplierCmd		= 87;

{$ifc CALL_NOT_IN_CARBON}
	{	command numbers for SndDoCommand and SndDoImmediate that are not available for use in Carbon 	}
	initCmd						= 1;
	freeCmd						= 2;
	totalLoadCmd				= 26;
	loadCmd						= 27;
	freqDurationCmd				= 40;
	restCmd						= 41;
	freqCmd						= 42;
	ampCmd						= 43;
	timbreCmd					= 44;
	getAmpCmd					= 45;
	waveTableCmd				= 60;
	phaseCmd					= 61;
	rateCmd						= 82;
	continueCmd					= 83;
	doubleBufferCmd				= 84;
	getRateCmd					= 85;
	sizeCmd						= 90;							{ obsolete command }
	convertCmd					= 91;							{ obsolete MACE command }

{$endc}  {CALL_NOT_IN_CARBON}

{$ifc OLDROUTINENAMES}
	{	channel initialization parameters	}
	waveInitChannelMask			= $07;
	waveInitChannel0			= $04;							{ wave table only, Sound Manager 2.0 and earlier }
	waveInitChannel1			= $05;							{ wave table only, Sound Manager 2.0 and earlier }
	waveInitChannel2			= $06;							{ wave table only, Sound Manager 2.0 and earlier }
	waveInitChannel3			= $07;							{ wave table only, Sound Manager 2.0 and earlier }
	initChan0					= $04;							{ obsolete spelling }
	initChan1					= $05;							{ obsolete spelling }
	initChan2					= $06;							{ obsolete spelling }
	initChan3					= $07;							{ obsolete spelling }

	outsideCmpSH				= 0;							{ obsolete MACE constant }
	insideCmpSH					= 1;							{ obsolete MACE constant }
	aceSuccess					= 0;							{ obsolete MACE constant }
	aceMemFull					= 1;							{ obsolete MACE constant }
	aceNilBlock					= 2;							{ obsolete MACE constant }
	aceBadComp					= 3;							{ obsolete MACE constant }
	aceBadEncode				= 4;							{ obsolete MACE constant }
	aceBadDest					= 5;							{ obsolete MACE constant }
	aceBadCmd					= 6;							{ obsolete MACE constant }

{$endc}  {OLDROUTINENAMES}

	initChanLeft				= $0002;						{ left stereo channel }
	initChanRight				= $0003;						{ right stereo channel }
	initNoInterp				= $0004;						{ no linear interpolation }
	initNoDrop					= $0008;						{ no drop-sample conversion }
	initMono					= $0080;						{ monophonic channel }
	initStereo					= $00C0;						{ stereo channel }
	initMACE3					= $0300;						{ MACE 3:1 }
	initMACE6					= $0400;						{ MACE 6:1 }
	initPanMask					= $0003;						{ mask for right/left pan values }
	initSRateMask				= $0030;						{ mask for sample rate values }
	initStereoMask				= $00C0;						{ mask for mono/stereo values }
	initCompMask				= $FF00;						{ mask for compression IDs }

	{	Get&Set Sound Information Selectors	}
	siActiveChannels			= FourCharCode('chac');						{ active channels }
	siActiveLevels				= FourCharCode('lmac');						{ active meter levels }
	siAGCOnOff					= FourCharCode('agc ');						{ automatic gain control state }
	siAsync						= FourCharCode('asyn');						{ asynchronous capability }
	siAVDisplayBehavior			= FourCharCode('avdb');
	siChannelAvailable			= FourCharCode('chav');						{ number of channels available }
	siCompressionAvailable		= FourCharCode('cmav');						{ compression types available }
	siCompressionChannels		= FourCharCode('cpct');						{ compressor's number of channels }
	siCompressionFactor			= FourCharCode('cmfa');						{ current compression factor }
	siCompressionHeader			= FourCharCode('cmhd');						{ return compression header }
	siCompressionNames			= FourCharCode('cnam');						{ compression type names available }
	siCompressionParams			= FourCharCode('evaw');						{ compression parameters }
	siCompressionSampleRate		= FourCharCode('cprt');						{ compressor's sample rate }
	siCompressionType			= FourCharCode('comp');						{ current compression type }
	siContinuous				= FourCharCode('cont');						{ continous recording }
	siDecompressionParams		= FourCharCode('wave');						{ decompression parameters }
	siDeviceBufferInfo			= FourCharCode('dbin');						{ size of interrupt buffer }
	siDeviceConnected			= FourCharCode('dcon');						{ input device connection status }
	siDeviceIcon				= FourCharCode('icon');						{ input device icon }
	siDeviceName				= FourCharCode('name');						{ input device name }
	siEQSpectrumBands			= FourCharCode('eqsb');						{  number of spectrum bands }
	siEQSpectrumLevels			= FourCharCode('eqlv');						{  gets spectum meter levels }
	siEQSpectrumOnOff			= FourCharCode('eqlo');						{  turn on/off spectum meter levels }
	siEQSpectrumResolution		= FourCharCode('eqrs');						{  set the resolution of the FFT, 0 = low res (<=16 bands), 1 = high res (16-64 bands) }
	siEQToneControlGain			= FourCharCode('eqtg');						{  set the bass and treble gain }
	siEQToneControlOnOff		= FourCharCode('eqtc');						{  turn on equalizer attenuation }
	siHardwareBalance			= FourCharCode('hbal');
	siHardwareBalanceSteps		= FourCharCode('hbls');
	siHardwareBass				= FourCharCode('hbas');
	siHardwareBassSteps			= FourCharCode('hbst');
	siHardwareBusy				= FourCharCode('hwbs');						{ sound hardware is in use }
	siHardwareFormat			= FourCharCode('hwfm');						{ get hardware format }
	siHardwareMute				= FourCharCode('hmut');						{ mute state of all hardware }
	siHardwareMuteNoPrefs		= FourCharCode('hmnp');						{ mute state of all hardware, but don't store in prefs  }
	siHardwareTreble			= FourCharCode('htrb');
	siHardwareTrebleSteps		= FourCharCode('hwts');
	siHardwareVolume			= FourCharCode('hvol');						{ volume level of all hardware }
	siHardwareVolumeSteps		= FourCharCode('hstp');						{ number of volume steps for hardware }
	siHeadphoneMute				= FourCharCode('pmut');						{ mute state of headphones }
	siHeadphoneVolume			= FourCharCode('pvol');						{ volume level of headphones }
	siHeadphoneVolumeSteps		= FourCharCode('hdst');						{ number of volume steps for headphones }
	siInputAvailable			= FourCharCode('inav');						{ input sources available }
	siInputGain					= FourCharCode('gain');						{ input gain }
	siInputSource				= FourCharCode('sour');						{ input source selector }
	siInputSourceNames			= FourCharCode('snam');						{ input source names }
	siLevelMeterOnOff			= FourCharCode('lmet');						{ level meter state }
	siModemGain					= FourCharCode('mgai');						{ modem input gain }
	siMonitorAvailable			= FourCharCode('mnav');
	siMonitorSource				= FourCharCode('mons');
	siNumberChannels			= FourCharCode('chan');						{ current number of channels }
	siOptionsDialog				= FourCharCode('optd');						{ display options dialog }
	siOSTypeInputSource			= FourCharCode('inpt');						{ input source by OSType }
	siOSTypeInputAvailable		= FourCharCode('inav');						{ list of available input source OSTypes }
	siOutputDeviceName			= FourCharCode('onam');						{ output device name }
	siPlayThruOnOff				= FourCharCode('plth');						{ playthrough state }
	siPostMixerSoundComponent	= FourCharCode('psmx');						{ install post-mixer effect }
	siPreMixerSoundComponent	= FourCharCode('prmx');						{ install pre-mixer effect }
	siQuality					= FourCharCode('qual');						{ quality setting }
	siRateMultiplier			= FourCharCode('rmul');						{ throttle rate setting }
	siRecordingQuality			= FourCharCode('qual');						{ recording quality }
	siSampleRate				= FourCharCode('srat');						{ current sample rate }
	siSampleRateAvailable		= FourCharCode('srav');						{ sample rates available }
	siSampleSize				= FourCharCode('ssiz');						{ current sample size }
	siSampleSizeAvailable		= FourCharCode('ssav');						{ sample sizes available }
	siSetupCDAudio				= FourCharCode('sucd');						{ setup sound hardware for CD audio }
	siSetupModemAudio			= FourCharCode('sumd');						{ setup sound hardware for modem audio }
	siSlopeAndIntercept			= FourCharCode('flap');						{ floating point variables for conversion }
	siSoundClock				= FourCharCode('sclk');
	siUseThisSoundClock			= FourCharCode('sclc');						{ sdev uses this to tell the mixer to use his sound clock }
	siSpeakerMute				= FourCharCode('smut');						{ mute state of all built-in speaker }
	siSpeakerVolume				= FourCharCode('svol');						{ volume level of built-in speaker }
	siSSpCPULoadLimit			= FourCharCode('3dll');
	siSSpLocalization			= FourCharCode('3dif');
	siSSpSpeakerSetup			= FourCharCode('3dst');
	siStereoInputGain			= FourCharCode('sgai');						{ stereo input gain }
	siSubwooferMute				= FourCharCode('bmut');						{ mute state of sub-woofer }
	siTerminalType				= FourCharCode('ttyp');						{  usb terminal type  }
	siTwosComplementOnOff		= FourCharCode('twos');						{ two's complement state }
	siVendorProduct				= FourCharCode('vpro');						{  vendor and product ID  }
	siVolume					= FourCharCode('volu');						{ volume level of source }
	siVoxRecordInfo				= FourCharCode('voxr');						{ VOX record parameters }
	siVoxStopInfo				= FourCharCode('voxs');						{ VOX stop parameters }
	siWideStereo				= FourCharCode('wide');						{ wide stereo setting }
	siSupportedExtendedFlags	= FourCharCode('exfl');						{ which flags are supported in Extended sound data structures }
	siRateConverterRollOffSlope	= FourCharCode('rcdb');						{ the roll-off slope for the rate converter's filter, in whole dB as a long this value is a long whose range is from 20 (worst quality/fastest performance) to 90 (best quality/slowest performance) }
	siOutputLatency				= FourCharCode('olte');						{ latency of sound output component }

	siCloseDriver				= FourCharCode('clos');						{ reserved for internal use only }
	siInitializeDriver			= FourCharCode('init');						{ reserved for internal use only }
	siPauseRecording			= FourCharCode('paus');						{ reserved for internal use only }
	siUserInterruptProc			= FourCharCode('user');						{ reserved for internal use only }

	{  input source Types }
	kInvalidSource				= $FFFFFFFF;					{ this source may be returned from GetInfo if no other source is the monitored source }
	kNoSource					= FourCharCode('none');						{ no source selection }
	kCDSource					= FourCharCode('cd  ');						{ internal CD player input }
	kExtMicSource				= FourCharCode('emic');						{ external mic input }
	kSoundInSource				= FourCharCode('sinj');						{ sound input jack }
	kRCAInSource				= FourCharCode('irca');						{ RCA jack input }
	kTVFMTunerSource			= FourCharCode('tvfm');
	kDAVInSource				= FourCharCode('idav');						{ DAV analog input }
	kIntMicSource				= FourCharCode('imic');						{ internal mic input }
	kMediaBaySource				= FourCharCode('mbay');						{ media bay input }
	kModemSource				= FourCharCode('modm');						{ modem input (internal modem on desktops, PCI input on PowerBooks) }
	kPCCardSource				= FourCharCode('pcm ');						{ PC Card pwm input }
	kZoomVideoSource			= FourCharCode('zvpc');						{ zoom video input }
	kDVDSource					= FourCharCode('dvda');						{  DVD audio input }
	kMicrophoneArray			= FourCharCode('mica');						{  microphone array }

	{ Sound Component Types and Subtypes }
	kNoSoundComponentType		= FourCharCode('****');
	kSoundComponentType			= FourCharCode('sift');						{ component type }
	kSoundComponentPPCType		= FourCharCode('nift');						{ component type for PowerPC code }
	kRate8SubType				= FourCharCode('ratb');						{ 8-bit rate converter }
	kRate16SubType				= FourCharCode('ratw');						{ 16-bit rate converter }
	kConverterSubType			= FourCharCode('conv');						{ sample format converter }
	kSndSourceSubType			= FourCharCode('sour');						{ generic source component }
	kMixerType					= FourCharCode('mixr');
	kMixer8SubType				= FourCharCode('mixb');						{ 8-bit mixer }
	kMixer16SubType				= FourCharCode('mixw');						{ 16-bit mixer }
	kSoundInputDeviceType		= FourCharCode('sinp');						{ sound input component }
	kWaveInSubType				= FourCharCode('wavi');						{ Windows waveIn }
	kWaveInSnifferSubType		= FourCharCode('wisn');						{ Windows waveIn sniffer }
	kSoundOutputDeviceType		= FourCharCode('sdev');						{ sound output component }
	kClassicSubType				= FourCharCode('clas');						{ classic hardware, i.e. Mac Plus }
	kASCSubType					= FourCharCode('asc ');						{ Apple Sound Chip device }
	kDSPSubType					= FourCharCode('dsp ');						{ DSP device }
	kAwacsSubType				= FourCharCode('awac');						{ Another of Will's Audio Chips device }
	kGCAwacsSubType				= FourCharCode('awgc');						{ Awacs audio with Grand Central DMA }
	kSingerSubType				= FourCharCode('sing');						{ Singer (via Whitney) based sound }
	kSinger2SubType				= FourCharCode('sng2');						{ Singer 2 (via Whitney) for Acme }
	kWhitSubType				= FourCharCode('whit');						{ Whit sound component for PrimeTime 3 }
	kSoundBlasterSubType		= FourCharCode('sbls');						{ Sound Blaster for CHRP }
	kWaveOutSubType				= FourCharCode('wavo');						{ Windows waveOut }
	kWaveOutSnifferSubType		= FourCharCode('wosn');						{ Windows waveOut sniffer }
	kDirectSoundSubType			= FourCharCode('dsnd');						{ Windows DirectSound }
	kDirectSoundSnifferSubType	= FourCharCode('dssn');						{ Windows DirectSound sniffer }
	kUNIXsdevSubType			= FourCharCode('un1x');						{ UNIX base sdev }
	kUSBSubType					= FourCharCode('usb ');						{ USB device }
	kBlueBoxSubType				= FourCharCode('bsnd');						{ Blue Box sound component }
	kSoundCompressor			= FourCharCode('scom');
	kSoundDecompressor			= FourCharCode('sdec');
	kAudioComponentType			= FourCharCode('adio');						{ Audio components and sub-types }
	kAwacsPhoneSubType			= FourCharCode('hphn');
	kAudioVisionSpeakerSubType	= FourCharCode('telc');
	kAudioVisionHeadphoneSubType = FourCharCode('telh');
	kPhilipsFaderSubType		= FourCharCode('tvav');
	kSGSToneSubType				= FourCharCode('sgs0');
	kSoundEffectsType			= FourCharCode('snfx');						{ sound effects type }
	kEqualizerSubType			= FourCharCode('eqal');						{ frequency equalizer }
	kSSpLocalizationSubType		= FourCharCode('snd3');

	{ Format Types }
	kSoundNotCompressed			= FourCharCode('NONE');						{ sound is not compressed }
	k8BitOffsetBinaryFormat		= FourCharCode('raw ');						{ 8-bit offset binary }
	k16BitBigEndianFormat		= FourCharCode('twos');						{ 16-bit big endian }
	k16BitLittleEndianFormat	= FourCharCode('sowt');						{ 16-bit little endian }
	kFloat32Format				= FourCharCode('fl32');						{ 32-bit floating point }
	kFloat64Format				= FourCharCode('fl64');						{ 64-bit floating point }
	k24BitFormat				= FourCharCode('in24');						{ 24-bit SInt16 }
	k32BitFormat				= FourCharCode('in32');						{ 32-bit SInt16 }
	k32BitLittleEndianFormat	= FourCharCode('23ni');						{ 32-bit little endian SInt16  }
	kMACE3Compression			= FourCharCode('MAC3');						{ MACE 3:1 }
	kMACE6Compression			= FourCharCode('MAC6');						{ MACE 6:1 }
	kCDXA4Compression			= FourCharCode('cdx4');						{ CD/XA 4:1 }
	kCDXA2Compression			= FourCharCode('cdx2');						{ CD/XA 2:1 }
	kIMACompression				= FourCharCode('ima4');						{ IMA 4:1 }
	kULawCompression			= FourCharCode('ulaw');						{ µLaw 2:1 }
	kALawCompression			= FourCharCode('alaw');						{ aLaw 2:1 }
	kMicrosoftADPCMFormat		= $6D730002;					{ Microsoft ADPCM - ACM code 2 }
	kDVIIntelIMAFormat			= $6D730011;					{ DVI/Intel IMA ADPCM - ACM code 17 }
	kDVAudioFormat				= FourCharCode('dvca');						{ DV Audio }
	kQDesignCompression			= FourCharCode('QDMC');						{ QDesign music }
	kQDesign2Compression		= FourCharCode('QDM2');						{ QDesign2 music }
	kQUALCOMMCompression		= FourCharCode('Qclp');						{ QUALCOMM PureVoice }
	kOffsetBinary				= FourCharCode('raw ');						{ for compatibility }
	kTwosComplement				= FourCharCode('twos');						{ for compatibility }
	kLittleEndianFormat			= FourCharCode('sowt');						{ for compatibility }
	kMPEGLayer3Format			= $6D730055;					{ MPEG Layer 3, CBR only (pre QT4.1) }
	kFullMPEGLay3Format			= FourCharCode('.mp3');						{ MPEG Layer 3, CBR & VBR (QT4.1 and later) }

{$ifc TARGET_RT_LITTLE_ENDIAN}
	k16BitNativeEndianFormat	= k16BitLittleEndianFormat;
	k16BitNonNativeEndianFormat	= k16BitBigEndianFormat;

{$elsec}
	k16BitNativeEndianFormat	= k16BitBigEndianFormat;
	k16BitNonNativeEndianFormat	= k16BitLittleEndianFormat;

{$endc}  {TARGET_RT_LITTLE_ENDIAN}

	{ Features Flags }
	k8BitRawIn					= $01;							{ data description }
	k8BitTwosIn					= $02;
	k16BitIn					= $04;
	kStereoIn					= $08;
	k8BitRawOut					= $0100;
	k8BitTwosOut				= $0200;
	k16BitOut					= $0400;
	kStereoOut					= $0800;
	kReverse					= $00010000;					{   function description }
	kRateConvert				= $00020000;
	kCreateSoundSource			= $00040000;
	kVMAwareness				= $00200000;					{  component will hold its memory }
	kHighQuality				= $00400000;					{   performance description }
	kNonRealTime				= $00800000;

	{ SoundComponentPlaySourceBuffer action flags }
	kSourcePaused				= $01;
	kPassThrough				= $00010000;
	kNoSoundComponentChain		= $00020000;

	{ SoundParamBlock flags, usefull for OpenMixerSoundComponent }
	kNoMixing					= $01;							{ don't mix source }
	kNoSampleRateConversion		= $02;							{ don't convert sample rate (i.e. 11 kHz -> 22 kHz) }
	kNoSampleSizeConversion		= $04;							{ don't convert sample size (i.e. 16 -> 8) }
	kNoSampleFormatConversion	= $08;							{ don't convert sample format (i.e. 'twos' -> 'raw ') }
	kNoChannelConversion		= $10;							{ don't convert stereo/mono }
	kNoDecompression			= $20;							{ don't decompress (i.e. 'MAC3' -> 'raw ') }
	kNoVolumeConversion			= $40;							{ don't apply volume }
	kNoRealtimeProcessing		= $80;							{ won't run at interrupt time }
	kScheduledSource			= $0100;						{ source is scheduled }
	kNonInterleavedBuffer		= $0200;						{ buffer is not interleaved samples }
	kNonPagingMixer				= $0400;						{ if VM is on, use the non-paging mixer }
	kSoundConverterMixer		= $0800;						{ the mixer is to be used by the SoundConverter }
	kPagingMixer				= $1000;						{ the mixer is to be used as a paging mixer when VM is on }
	kVMAwareMixer				= $2000;						{ passed to the output device when the SM is going to deal with VM safety }
	kExtendedSoundData			= $4000;						{ SoundComponentData record is actually an ExtendedSoundComponentData }

	{ SoundParamBlock quality settings }
	kBestQuality				= $01;							{ use interpolation in rate conversion }

	{ useful bit masks }
	kInputMask					= $000000FF;					{ masks off input bits }
	kOutputMask					= $0000FF00;					{ masks off output bits }
	kOutputShift				= 8;							{ amount output bits are shifted }
	kActionMask					= $00FF0000;					{ masks off action bits }
	kSoundComponentBits			= $00FFFFFF;

	{ audio atom types }
	kAudioFormatAtomType		= FourCharCode('frma');
	kAudioEndianAtomType		= FourCharCode('enda');
	kAudioVBRAtomType			= FourCharCode('vbra');
	kAudioTerminatorAtomType	= 0;

	{ siAVDisplayBehavior types }
	kAVDisplayHeadphoneRemove	= 0;							{  monitor does not have a headphone attached }
	kAVDisplayHeadphoneInsert	= 1;							{  monitor has a headphone attached }
	kAVDisplayPlainTalkRemove	= 2;							{  monitor either sending no input through CPU input port or unable to tell if input is coming in }
	kAVDisplayPlainTalkInsert	= 3;							{  monitor sending PlainTalk level microphone source input through sound input port }

	{ Audio Component constants }
																{ Values for whichChannel parameter }
	audioAllChannels			= 0;							{ All channels (usually interpreted as both left and right) }
	audioLeftChannel			= 1;							{ Left channel }
	audioRightChannel			= 2;							{ Right channel }
																{ Values for mute parameter }
	audioUnmuted				= 0;							{ Device is unmuted }
	audioMuted					= 1;							{ Device is muted }
																{ Capabilities flags definitions }
	audioDoesMono				= $00000001;					{ Device supports mono output }
	audioDoesStereo				= $00000002;					{ Device supports stereo output }
	audioDoesIndependentChannels = $00000004;					{ Device supports independent software control of each channel }

	{	Sound Input Qualities	}
	siCDQuality					= FourCharCode('cd  ');						{ 44.1kHz, stereo, 16 bit }
	siBestQuality				= FourCharCode('best');						{ 22kHz, mono, 8 bit }
	siBetterQuality				= FourCharCode('betr');						{ 22kHz, mono, MACE 3:1 }
	siGoodQuality				= FourCharCode('good');						{ 22kHz, mono, MACE 6:1 }
	siNoneQuality				= FourCharCode('none');						{ settings don't match any quality for a get call }

	siDeviceIsConnected			= 1;							{ input device is connected and ready for input }
	siDeviceNotConnected		= 0;							{ input device is not connected }
	siDontKnowIfConnected		= -1;							{ can't tell if input device is connected }
	siReadPermission			= 0;							{ permission passed to SPBOpenDevice }
	siWritePermission			= 1;							{ permission passed to SPBOpenDevice }

	{ flags that SoundConverterFillBuffer will return }
	kSoundConverterDidntFillBuffer = $01;						{ set if the converter couldn't completely satisfy a SoundConverterFillBuffer request }
	kSoundConverterHasLeftOverData = $02;						{ set if the converter had left over data after completely satisfying a SoundConverterFillBuffer call }

	{  flags for extendedFlags fields of ExtendedSoundComponentData, ExtendedSoundParamBlock, and ExtendedScheduledSoundHeader }
	kExtendedSoundSampleCountNotValid = $00000001;				{  set if sampleCount of SoundComponentData isn't meaningful; use buffer size instead }
	kExtendedSoundBufferSizeValid = $00000002;					{  set if bufferSize field is valid }

	{
	  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	   typedefs
	  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	}


type
	SndCommandPtr = ^SndCommand;
	SndCommand = packed record
		cmd:					UInt16;
		param1:					SInt16;
		param2:					SInt32;
	end;

	SndChannelPtr = ^SndChannel;
{$ifc TYPED_FUNCTION_POINTERS}
	SndCallBackProcPtr = procedure(chan: SndChannelPtr; var cmd: SndCommand);
{$elsec}
	SndCallBackProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	SndCallBackUPP = ^SInt32; { an opaque UPP }
{$elsec}
	SndCallBackUPP = UniversalProcPtr;
{$endc}	
	SndChannel = packed record
		nextChan:				SndChannelPtr;
		firstMod:				Ptr;									{  reserved for the Sound Manager  }
		callBack:				SndCallBackUPP;
		userInfo:				SInt32;
		wait:					SInt32;								{  The following is for internal Sound Manager use only. }
		cmdInProgress:			SndCommand;
		flags:					SInt16;
		qLength:				SInt16;
		qHead:					SInt16;
		qTail:					SInt16;
		queue:					array [0..127] of SndCommand;
	end;


const
	uppSndCallBackProcInfo = $000003C0;
	{
	 *  NewSndCallBackUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   available as macro/inline
	 *    CarbonLib:        in CarbonLib 1.0 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function NewSndCallBackUPP(userRoutine: SndCallBackProcPtr): SndCallBackUPP; external name '_NewSndCallBackUPP'; { old name was NewSndCallBackProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  DisposeSndCallBackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeSndCallBackUPP( userUPP: SndCallBackUPP ); external name '_DisposeSndCallBackUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeSndCallBackUPP(userUPP: SndCallBackUPP); external name '_DisposeSndCallBackUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeSndCallBackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure InvokeSndCallBackUPP( chan: SndChannelPtr; var cmd: SndCommand; userUPP: SndCallBackUPP ); external name '_InvokeSndCallBackUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

{MACE structures}
type
	StateBlock = record
		stateVar: array [0..63] of SInt16;
	end;
	StateBlockPtr = ^StateBlock;
type
	LeftOverBlock = record
		count: UNSIGNEDLONG;
		sampleArea: array [0..31] of SInt8;
	end;
	LeftOverBlockPtr = ^LeftOverBlock;
type
	ModRef = record
		modNumber: UInt16;
		modInit: SIGNEDLONG;
	end;
type
	SndListResourcePtr = ^SndListResource;
	SndListResource = record
		format: SInt16;
		numModifiers: SInt16;
		modifierPart: array [0..0] of ModRef;
		numCommands: SInt16;
		commandPart: array [0..0] of SndCommand;
		dataPart: UInt8;
	end;
type
	SndListPtr = SndListResourcePtr;
	SndListHandle = ^SndListPtr;
	SndListHndl = SndListHandle;
{HyperCard sound resource format}
type
	Snd2ListResourcePtr = ^Snd2ListResource;
	Snd2ListResource = record
		format: SInt16;
		refCount: SInt16;
		numCommands: SInt16;
		commandPart: array [0..0] of SndCommand;
		dataPart: UInt8;
	end;
type
	Snd2ListPtr = Snd2ListResourcePtr;
	Snd2ListHandle = ^Snd2ListPtr;
	Snd2ListHndl = Snd2ListHandle;
	SoundHeader = record
		samplePtr: Ptr;              {if NIL then samples are in sampleArea}
		length: UNSIGNEDLONG;                 {length of sound in bytes}
		sampleRate: UnsignedFixed;             {sample rate for this sound}
		loopStart: UNSIGNEDLONG;              {start of looping portion}
		loopEnd: UNSIGNEDLONG;                {end of looping portion}
		encode: UInt8;                 {header encoding}
		baseFrequency: UInt8;          {baseFrequency value}
		sampleArea: array [0..0] of UInt8;          {space for when samples follow directly}
		pad: UInt8;
	end;
	SoundHeaderPtr = ^SoundHeader;
type
	CmpSoundHeader = record
		samplePtr: Ptr;              {if nil then samples are in sample area}
		numChannels: UNSIGNEDLONG;            {number of channels i.e. mono = 1}
		sampleRate: UnsignedFixed;             {sample rate in Apples Fixed point representation}
		loopStart: UNSIGNEDLONG;              {loopStart of sound before compression}
		loopEnd: UNSIGNEDLONG;                {loopEnd of sound before compression}
		encode: UInt8;                 {data structure used , stdSH, extSH, or cmpSH}
		baseFrequency: UInt8;          {same meaning as regular SoundHeader}
		numFrames: UNSIGNEDLONG;              {length in frames ( packetFrames or sampleFrames )}
		AIFFSampleRate: extended80;         {IEEE sample rate}
		markerChunk: Ptr;            {sync track}
		format: OSType;                 {data format type, was futureUse1}
		futureUse2: UNSIGNEDLONG;             {reserved by Apple}
		stateVars: StateBlockPtr;              {pointer to State Block}
		leftOverSamples: LeftOverBlockPtr;        {used to save truncated samples between compression calls}
		compressionID: SInt16;          {0 means no compression, non zero means compressionID}
		packetSize: UInt16;             {number of bits in compressed sample packet}
		snthID: UInt16;                 {resource ID of Sound Manager snth that contains NRT C/E}
		sampleSize: UInt16;             {number of bits in non-compressed sample}
		sampleArea: array [0..0] of UInt8;          {space for when samples follow directly}
		pad: UInt8;
	end;
	CmpSoundHeaderPtr = ^CmpSoundHeader;
type
	ExtSoundHeader = record
		samplePtr: Ptr;              {if nil then samples are in sample area}
		numChannels: UNSIGNEDLONG;            {number of channels,  ie mono = 1}
		sampleRate: UnsignedFixed;             {sample rate in Apples Fixed point representation}
		loopStart: UNSIGNEDLONG;              {same meaning as regular SoundHeader}
		loopEnd: UNSIGNEDLONG;                {same meaning as regular SoundHeader}
		encode: UInt8;                 {data structure used , stdSH, extSH, or cmpSH}
		baseFrequency: UInt8;          {same meaning as regular SoundHeader}
		numFrames: UNSIGNEDLONG;              {length in total number of frames}
		AIFFSampleRate: extended80;         {IEEE sample rate}
		markerChunk: Ptr;            {sync track}
		instrumentChunks: Ptr;       {AIFF instrument chunks}
		AESRecording: Ptr;
		sampleSize: UInt16;             {number of bits in sample}
		futureUse1: UInt16;             {reserved by Apple}
		futureUse2: UNSIGNEDLONG;             {reserved by Apple}
		futureUse3: UNSIGNEDLONG;             {reserved by Apple}
		futureUse4: UNSIGNEDLONG;             {reserved by Apple}
		sampleArea: array [0..0] of UInt8;          {space for when samples follow directly}
		pad:					UInt8;
	end;
	ExtSoundHeaderPtr = ^ExtSoundHeader;
type
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokeSndCallBackUPP(chan: SndChannelPtr; var cmd: SndCommand; userRoutine: SndCallBackUPP); external name '_InvokeSndCallBackUPP'; { old name was CallSndCallBackProc }
{MACE structures}

type
	StateBlockPtr = ^StateBlock;
	StateBlock = record
		stateVar:				array [0..63] of SInt16;
	end;

	LeftOverBlockPtr = ^LeftOverBlock;
	LeftOverBlock = record
		count:					UInt32;
		sampleArea:				array [0..31] of SInt8;
	end;

	ModRefPtr = ^ModRef;
	ModRef = record
		modNumber:				UInt16;
		modInit:				SInt32;
	end;

	SndListResourcePtr = ^SndListResource;
	SndListResource = record
		format:					SInt16;
		numModifiers:			SInt16;
		modifierPart:			array [0..0] of ModRef;
		numCommands:			SInt16;
		commandPart:			array [0..0] of SndCommand;
		dataPart:				SInt8;
	end;

	SndListPtr							= ^SndListResource;
	SndListHandle						= ^SndListPtr;
	SndListHndl							= SndListHandle;
	{	HyperCard sound resource format	}
	Snd2ListResourcePtr = ^Snd2ListResource;
	Snd2ListResource = record
		format:					SInt16;
		refCount:				SInt16;
		numCommands:			SInt16;
		commandPart:			array [0..0] of SndCommand;
		dataPart:				SInt8;
	end;

	Snd2ListPtr							= ^Snd2ListResource;
	Snd2ListHandle						= ^Snd2ListPtr;
	Snd2ListHndl						= Snd2ListHandle;
	SoundHeaderPtr = ^SoundHeader;
	SoundHeader = packed record
		samplePtr:				Ptr;									{ if NIL then samples are in sampleArea }
		length:					UInt32;									{ length of sound in bytes }
		sampleRate:				UnsignedFixed;							{ sample rate for this sound }
		loopStart:				UInt32;									{ start of looping portion }
		loopEnd:				UInt32;									{ end of looping portion }
		encode:					UInt8;									{ header encoding }
		baseFrequency:			UInt8;									{ baseFrequency value }
		sampleArea:				packed array [0..0] of UInt8;			{ space for when samples follow directly }
		pad:					UInt8;
	end;

	CmpSoundHeaderPtr = ^CmpSoundHeader;
	CmpSoundHeader = packed record
		samplePtr:				Ptr;									{ if nil then samples are in sample area }
		numChannels:			UInt32;									{ number of channels i.e. mono = 1 }
		sampleRate:				UnsignedFixed;							{ sample rate in Apples Fixed point representation }
		loopStart:				UInt32;									{ loopStart of sound before compression }
		loopEnd:				UInt32;									{ loopEnd of sound before compression }
		encode:					UInt8;									{ data structure used , stdSH, extSH, or cmpSH }
		baseFrequency:			UInt8;									{ same meaning as regular SoundHeader }
		numFrames:				UInt32;									{ length in frames ( packetFrames or sampleFrames ) }
		AIFFSampleRate:			extended80;								{ IEEE sample rate }
		markerChunk:			Ptr;									{ sync track }
		format:					OSType;									{ data format type, was futureUse1 }
		futureUse2:				UInt32;									{ reserved by Apple }
		stateVars:				StateBlockPtr;							{ pointer to State Block }
		leftOverSamples:		LeftOverBlockPtr;						{ used to save truncated samples between compression calls }
		compressionID:			SInt16;								{ 0 means no compression, non zero means compressionID }
		packetSize:				UInt16;									{ number of bits in compressed sample packet }
		snthID:					UInt16;									{ resource ID of Sound Manager snth that contains NRT C/E }
		sampleSize:				UInt16;									{ number of bits in non-compressed sample }
		sampleArea:				packed array [0..0] of UInt8;			{ space for when samples follow directly }
		pad:					UInt8;
	end;

	ExtSoundHeaderPtr = ^ExtSoundHeader;
	ExtSoundHeader = packed record
		samplePtr:				Ptr;									{ if nil then samples are in sample area }
		numChannels:			UInt32;									{ number of channels,  ie mono = 1 }
		sampleRate:				UnsignedFixed;							{ sample rate in Apples Fixed point representation }
		loopStart:				UInt32;									{ same meaning as regular SoundHeader }
		loopEnd:				UInt32;									{ same meaning as regular SoundHeader }
		encode:					UInt8;									{ data structure used , stdSH, extSH, or cmpSH }
		baseFrequency:			UInt8;									{ same meaning as regular SoundHeader }
		numFrames:				UInt32;									{ length in total number of frames }
		AIFFSampleRate:			extended80;								{ IEEE sample rate }
		markerChunk:			Ptr;									{ sync track }
		instrumentChunks:		Ptr;									{ AIFF instrument chunks }
		AESRecording:			Ptr;
		sampleSize:				UInt16;									{ number of bits in sample }
		futureUse1:				UInt16;									{ reserved by Apple }
		futureUse2:				UInt32;									{ reserved by Apple }
		futureUse3:				UInt32;									{ reserved by Apple }
		futureUse4:				UInt32;									{ reserved by Apple }
		sampleArea:				packed array [0..0] of UInt8;			{ space for when samples follow directly }
		pad:					UInt8;
	end;

<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
	SoundHeaderUnionPtr = ^SoundHeaderUnion;
	SoundHeaderUnion = record
		case SInt16 of
		0: (
			stdHeader:			SoundHeader;
			);
		1: (
			cmpHeader:			CmpSoundHeader;
			);
		2: (
			extHeader:			ExtSoundHeader;
			);
	end;

<<<<<<< HEAD
<<<<<<< HEAD
	ConversionBlock = record
		destination: SInt16;
		unused: SInt16;
		inputPtr: CmpSoundHeaderPtr;
		outputPtr: CmpSoundHeaderPtr;
	end;
	ConversionBlockPtr = ^ConversionBlock;
{ ScheduledSoundHeader flags}
const
	kScheduledSoundDoScheduled = 1 shl 0;
	kScheduledSoundDoCallBack = 1 shl 1;
	kScheduledSoundExtendedHdr = 1 shl 2;

type
	ScheduledSoundHeader = record
		u: SoundHeaderUnion;
		flags: SIGNEDLONG;
		reserved: SInt16;
		callBackParam1: SInt16;
		callBackParam2: SIGNEDLONG;
		startTime: TimeRecord;
	end;
	ScheduledSoundHeaderPtr = ^ScheduledSoundHeader;
type
	ExtendedScheduledSoundHeader = record
		u: SoundHeaderUnion;
		flags: SIGNEDLONG;
		reserved: SInt16;
		callBackParam1: SInt16;
		callBackParam2: SIGNEDLONG;
		startTime: TimeRecord;
		recordSize: SIGNEDLONG;
		extendedFlags: SIGNEDLONG;
		bufferSize: SIGNEDLONG;
		frameCount: SIGNEDLONG;             { number of audio frames}
		frameSizesArray: SIGNEDLONGPtr;        { pointer to array of longs with frame sizes in bytes}
		commonFrameSize: SIGNEDLONG;        { size of each frame if common}
		extensionsPtr: UnivPtr;          {pointer to set of classic atoms (size,type,data,...)}
		extensionsSize: SIGNEDLONG;         {size of extensions data (extensionsPtr)}
		bufferFlags: UNSIGNEDLONG;            {set or cleared flags}
		bufferFlagsMask: UNSIGNEDLONG;        {which flags are valid}
	end;
	ExtendedScheduledSoundHeaderPtr = ^ExtendedScheduledSoundHeader;
type
	SMStatus = record
		smMaxCPULoad: SInt16;
		smNumChannels: SInt16;
		smCurCPULoad: SInt16;
	end;
	SMStatusPtr = ^SMStatus;
type
	SCStatus = record
		scStartTime: UnsignedFixed;
		scEndTime: UnsignedFixed;
		scCurrentTime: UnsignedFixed;
		scChannelBusy: Boolean;
		scChannelDisposed: Boolean;
		scChannelPaused: Boolean;
		scUnused: Boolean;
		scChannelAttributes: UNSIGNEDLONG;
		scCPULoad: SIGNEDLONG;
	end;
	SCStatusPtr = ^SCStatus;
type
	AudioSelection = record
		unitType: SIGNEDLONG;
		selStart: UnsignedFixed;
		selEnd: UnsignedFixed;
	end;
	AudioSelectionPtr = ^AudioSelection;
{$ifc CALL_NOT_IN_CARBON}
type
	SndDoubleBuffer = record
		dbNumFrames: SIGNEDLONG;
		dbFlags: SIGNEDLONG;
		dbUserInfo: array [0..1] of SInt32;
		dbSoundData: array [0..0] of SInt8;
	end;
	SndDoubleBufferPtr = ^SndDoubleBuffer;


type
	SndDoubleBackProcPtr = procedure( channel: SndChannelPtr; doubleBufferPtr: SndDoubleBufferPtr );
	SndDoubleBackUPP = SndDoubleBackProcPtr;
{
 *  NewSndDoubleBackUPP()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   available as macro/inline
 }

=======
	ConversionBlockPtr = ^ConversionBlock;
	ConversionBlock = record
		destination:			SInt16;
		unused:					SInt16;
		inputPtr:				CmpSoundHeaderPtr;
		outputPtr:				CmpSoundHeaderPtr;
	end;

	{  ScheduledSoundHeader flags }

const
	kScheduledSoundDoScheduled	= $01;
	kScheduledSoundDoCallBack	= $02;
	kScheduledSoundExtendedHdr	= $04;

=======
	ConversionBlockPtr = ^ConversionBlock;
	ConversionBlock = record
		destination:			SInt16;
		unused:					SInt16;
		inputPtr:				CmpSoundHeaderPtr;
		outputPtr:				CmpSoundHeaderPtr;
	end;

	{  ScheduledSoundHeader flags }

const
	kScheduledSoundDoScheduled	= $01;
	kScheduledSoundDoCallBack	= $02;
	kScheduledSoundExtendedHdr	= $04;

>>>>>>> origin/fixes_2_2

type
	ScheduledSoundHeaderPtr = ^ScheduledSoundHeader;
	ScheduledSoundHeader = record
		u:						SoundHeaderUnion;
		flags:					SInt32;
		reserved:				SInt16;
		callBackParam1:			SInt16;
		callBackParam2:			SInt32;
		startTime:				TimeRecord;
	end;

	ExtendedScheduledSoundHeaderPtr = ^ExtendedScheduledSoundHeader;
	ExtendedScheduledSoundHeader = record
		u:						SoundHeaderUnion;
		flags:					SInt32;
		reserved:				SInt16;
		callBackParam1:			SInt16;
		callBackParam2:			SInt32;
		startTime:				TimeRecord;
		recordSize:				SInt32;
		extendedFlags:			SInt32;
		bufferSize:				SInt32;
	end;

	SMStatusPtr = ^SMStatus;
	SMStatus = packed record
		smMaxCPULoad:			SInt16;
		smNumChannels:			SInt16;
		smCurCPULoad:			SInt16;
	end;

	SCStatusPtr = ^SCStatus;
	SCStatus = record
		scStartTime:			UnsignedFixed;
		scEndTime:				UnsignedFixed;
		scCurrentTime:			UnsignedFixed;
		scChannelBusy:			boolean;
		scChannelDisposed:		boolean;
		scChannelPaused:		boolean;
		scUnused:				boolean;
		scChannelAttributes:	UInt32;
		scCPULoad:				SInt32;
	end;

	AudioSelectionPtr = ^AudioSelection;
	AudioSelection = packed record
		unitType:				SInt32;
		selStart:				UnsignedFixed;
		selEnd:					UnsignedFixed;
	end;

{$ifc CALL_NOT_IN_CARBON}
	SndDoubleBufferPtr = ^SndDoubleBuffer;
	SndDoubleBuffer = packed record
		dbNumFrames:			SInt32;
		dbFlags:				SInt32;
		dbUserInfo:				array [0..1] of SInt32;
		dbSoundData:			array [0..0] of SInt8;
	end;

{$ifc TYPED_FUNCTION_POINTERS}
	SndDoubleBackProcPtr = procedure(channel: SndChannelPtr; doubleBufferPtr: SndDoubleBufferPtr);
{$elsec}
	SndDoubleBackProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	SndDoubleBackUPP = ^SInt32; { an opaque UPP }
{$elsec}
	SndDoubleBackUPP = UniversalProcPtr;
{$endc}	

const
	uppSndDoubleBackProcInfo = $000003C0;
{$ifc CALL_NOT_IN_CARBON}
	{
	 *  NewSndDoubleBackUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   available as macro/inline
	 *    CarbonLib:        not available
	 *    Mac OS X:         not available
	 	}
function NewSndDoubleBackUPP(userRoutine: SndDoubleBackProcPtr): SndDoubleBackUPP; external name '_NewSndDoubleBackUPP'; { old name was NewSndDoubleBackProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  DisposeSndDoubleBackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   available as macro/inline
 }

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure DisposeSndDoubleBackUPP(userUPP: SndDoubleBackUPP); external name '_DisposeSndDoubleBackUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeSndDoubleBackUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   available as macro/inline
 }

type
	SndDoubleBufferHeader = record
		dbhNumChannels: SInt16;
		dbhSampleSize: SInt16;
		dbhCompressionID: SInt16;
		dbhPacketSize: SInt16;
		dbhSampleRate: UnsignedFixed;
		dbhBufferPtr: array [0..1] of SndDoubleBufferPtr;
		dbhDoubleBack: SndDoubleBackUPP;
	end;
	SndDoubleBufferHeaderPtr = ^SndDoubleBufferHeader;
type
	SndDoubleBufferHeader2 = record
		dbhNumChannels: SInt16;
		dbhSampleSize: SInt16;
		dbhCompressionID: SInt16;
		dbhPacketSize: SInt16;
		dbhSampleRate: UnsignedFixed;
		dbhBufferPtr:			array [0..1] of SndDoubleBufferPtr;
		dbhDoubleBack: SndDoubleBackUPP;
		dbhFormat: OSType;
	end;
	SndDoubleBufferHeader2Ptr = ^SndDoubleBufferHeader2;
{$endc} {CALL_NOT_IN_CARBON}

type
	SoundInfoList = record
		count: SInt16;
		infoHandle: Handle;
	end;
	SoundInfoListPtr = ^SoundInfoList;
type
	SoundComponentData = record
		flags: SIGNEDLONG;
		format: OSType;
		numChannels: SInt16;
		sampleSize: SInt16;
		sampleRate: UnsignedFixed;
		sampleCount: SIGNEDLONG;
		buffer: BytePtr;
		reserved: SIGNEDLONG;
	end;
	SoundComponentDataPtr = ^SoundComponentData;
type
	ExtendedSoundComponentData = record
		desc: SoundComponentData;                   {description of sound buffer}
		recordSize: SIGNEDLONG;             {size of this record in bytes}
		extendedFlags: SIGNEDLONG;          {flags for extended record}
		bufferSize: SIGNEDLONG;             {size of buffer in bytes}
		frameCount: SIGNEDLONG;             {number of audio frames}
		frameSizesArray: SIGNEDLONGPtr;        {pointer to array of longs with frame sizes in bytes}
		commonFrameSize: SIGNEDLONG;        {size of each frame if common}
		extensionsPtr: UnivPtr;          {pointer to set of classic atoms (size,type,data,...)}
		extensionsSize: SIGNEDLONG;         {size of extensions data (extensionsPtr)}
		bufferFlags: UNSIGNEDLONG;            {set or cleared flags}
		bufferFlagsMask: UNSIGNEDLONG;        {which flags are valid}
	end;
	ExtendedSoundComponentDataPtr = ^ExtendedSoundComponentData;
type
	SoundParamBlockPtr = ^SoundParamBlock;
	SoundParamProcPtr = function( var pb: SoundParamBlockPtr ): Boolean;
	SoundParamUPP = SoundParamProcPtr;
	SoundParamBlock = record
		recordSize: SIGNEDLONG;             {size of this record in bytes}
		desc: SoundComponentData;                   {description of sound buffer}
		rateMultiplier: UnsignedFixed;         {rate multiplier to apply to sound}
		leftVolume: SInt16;             {volumes to apply to sound}
		rightVolume: SInt16;
		quality: SIGNEDLONG;                {quality to apply to sound}
		filter: ComponentInstance;                 {filter to apply to sound}
		moreRtn: SoundParamUPP;                {routine to call to get more data}
		completionRtn: SoundParamUPP;          {routine to call when buffer is complete}
		refCon: SIGNEDLONG;                 {user refcon}
		result: SInt16;                 {result}
	end;

type
	ExtendedSoundParamBlock = record
		pb: SoundParamBlock;                     {classic SoundParamBlock except recordSize == sizeof(ExtendedSoundParamBlock)}
		reserved: SInt16;
		extendedFlags: SIGNEDLONG;          {flags}
		bufferSize: SIGNEDLONG;             {size of buffer in bytes}
		frameCount: SIGNEDLONG;             {number of audio frames}
		frameSizesArray: SIGNEDLONGPtr;        {pointer to array of longs with frame sizes in bytes}
		commonFrameSize: SIGNEDLONG;        {size of each frame if common}
		extensionsPtr: UnivPtr;          {pointer to set of classic atoms (size,type,data,...)}
		extensionsSize: SIGNEDLONG;         {size of extensions data (extensionsPtr)}
		bufferFlags: UNSIGNEDLONG;            {set or cleared flags}
		bufferFlagsMask: UNSIGNEDLONG;        {which flags are valid}
	end;
	ExtendedSoundParamBlockPtr = ^ExtendedSoundParamBlock;
type
	CompressionInfo = record
		recordSize: SIGNEDLONG;
		format: OSType;
		compressionID: SInt16;
		samplesPerPacket: UInt16;
		bytesPerPacket: UInt16;
		bytesPerFrame: UInt16;
		bytesPerSample: UInt16;
		futureUse1: UInt16;
	end;
	CompressionInfoPtr = ^CompressionInfo;
type
	CompressionInfoHandle = ^CompressionInfoPtr;
{variables for floating point conversion}
type
	SoundSlopeAndInterceptRecordPtr = ^SoundSlopeAndInterceptRecord;
	SoundSlopeAndInterceptRecord = record
		slope: Float64;
		intercept: Float64;
		minClip: Float64;
		maxClip: Float64;
	end;
type
	SoundSlopeAndInterceptPtr = SoundSlopeAndInterceptRecordPtr;
{private thing to use as a reference to a Sound Converter}
type
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	SoundConverter = ^OpaqueSoundConverter; { an opaque type }
	OpaqueSoundConverter = record end;
=======
	SoundConverter = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	SoundConverter = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	SoundConverter = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	SoundConverter = ^SInt32; { an opaque type }
>>>>>>> origin/cpstrnew
	SoundConverterPtr = ^SoundConverter;  { when a var xx:SoundConverter parameter can be nil, it is changed to xx: SoundConverterPtr }
{callback routine to provide data to the Sound Converter}
type
	SoundConverterFillBufferDataProcPtr = function( var data: SoundComponentDataPtr; refCon: UnivPtr ): Boolean;
	SoundConverterFillBufferDataUPP = SoundConverterFillBufferDataProcPtr;
{private thing to use as a reference to a Sound Source}
type
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	SoundSource = ^OpaqueSoundSource; { an opaque type }
	OpaqueSoundSource = record end;
=======
	SoundSource = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	SoundSource = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	SoundSource = ^SInt32; { an opaque type }
>>>>>>> graemeg/cpstrnew
=======
	SoundSource = ^SInt32; { an opaque type }
>>>>>>> origin/cpstrnew
	SoundSourcePtr = ^SoundSource;


type
	SoundComponentLink = record
		description: ComponentDescription;          {Describes the sound component}
		mixerID: SoundSource;                {Reserved by Apple}
		linkID: SoundSourcePtr;                 {Reserved by Apple}
	end;
	SoundComponentLinkPtr = ^SoundComponentLink;
type
	AudioInfo = record
		capabilitiesFlags: SIGNEDLONG;      {Describes device capabilities}
		reserved: SIGNEDLONG;               {Reserved by Apple}
		numVolumeSteps: UInt16;         {Number of significant increments between min and max volume}
	end;
	AudioInfoPtr = ^AudioInfo;
type
	AudioFormatAtom = record
		size: SIGNEDLONG;                   { = sizeof(AudioFormatAtom)}
		atomType: OSType;               { = kAudioFormatAtomType}
		format: OSType;
	end;
	AudioFormatAtomPtr = ^AudioFormatAtom;
type
	AudioEndianAtom = record
		size: SIGNEDLONG;                   { = sizeof(AudioEndianAtom)}
		atomType: OSType;               { = kAudioEndianAtomType}
		littleEndian: SInt16;
	end;
	AudioEndianAtomPtr = ^AudioEndianAtom;
type
	AudioTerminatorAtom = record
		size: SIGNEDLONG;                   { = sizeof(AudioTerminatorAtom)}
		atomType: OSType;               { = kAudioTerminatorAtomType}
	end;
	AudioTerminatorAtomPtr = ^AudioTerminatorAtom;
type
	LevelMeterInfo = record
		numChannels: SInt16;            { mono or stereo source}
		leftMeter: UInt8;              { 0-255 range}
		rightMeter: UInt8;             { 0-255 range}
<<<<<<< HEAD
<<<<<<< HEAD
	end;
	LevelMeterInfoPtr = ^LevelMeterInfo;
type
	EQSpectrumBandsRecord = record
		count: SInt16;
		frequency: UnsignedFixedPtr;              { pointer to array of frequencies}
<<<<<<< HEAD
<<<<<<< HEAD
	end;
	EQSpectrumBandsRecordPtr = ^EQSpectrumBandsRecord;
const
	kSoundAudioCodecPropertyWritableFlag = 1 shl 0;

type
	SoundAudioCodecPropertyRequestParams = record
		propertyClass: UInt32;
		propertyID: UInt32;
		propertyDataSize: UInt32;       { out -- GetPropertyInfo, in/out -- GetProperty, in -- SetProperty}
		propertyData: UnivPtr;           { in -- GetPropertyInfo, GetProperty, SetProperty}
		propertyRequestFlags: UInt32;   { out -- GetPropertyInfo}
		propertyDataType: UInt32;       { out -- GetPropertyInfo, often 0}
		propertyRequestResult: ComponentResult;  { out -- GetPropertyInfo, GetProperty, SetProperty}
=======
>>>>>>> graemeg/cpstrnew
	end;
	EQSpectrumBandsRecordPtr = ^EQSpectrumBandsRecord;
const
	kSoundAudioCodecPropertyWritableFlag = 1 shl 0;

type
	SoundAudioCodecPropertyRequestParams = record
		propertyClass: UInt32;
		propertyID: UInt32;
		propertyDataSize: UInt32;       { out -- GetPropertyInfo, in/out -- GetProperty, in -- SetProperty}
		propertyData: UnivPtr;           { in -- GetPropertyInfo, GetProperty, SetProperty}
		propertyRequestFlags: UInt32;   { out -- GetPropertyInfo}
		propertyDataType: UInt32;       { out -- GetPropertyInfo, often 0}
		propertyRequestResult: ComponentResult;  { out -- GetPropertyInfo, GetProperty, SetProperty}
=======
>>>>>>> graemeg/cpstrnew
=======
	end;
=======
	end;
>>>>>>> origin/cpstrnew
	LevelMeterInfoPtr = ^LevelMeterInfo;
type
	EQSpectrumBandsRecord = record
		count: SInt16;
		frequency: UnsignedFixedPtr;              { pointer to array of frequencies}
<<<<<<< HEAD
>>>>>>> graemeg/cpstrnew
	end;
	EQSpectrumBandsRecordPtr = ^EQSpectrumBandsRecord;
const
	kSoundAudioCodecPropertyWritableFlag = 1 shl 0;
<<<<<<< HEAD

type
	SoundAudioCodecPropertyRequestParams = record
		propertyClass: UInt32;
		propertyID: UInt32;
		propertyDataSize: UInt32;       { out -- GetPropertyInfo, in/out -- GetProperty, in -- SetProperty}
		propertyData: UnivPtr;           { in -- GetPropertyInfo, GetProperty, SetProperty}
		propertyRequestFlags: UInt32;   { out -- GetPropertyInfo}
		propertyDataType: UInt32;       { out -- GetPropertyInfo, often 0}
		propertyRequestResult: ComponentResult;  { out -- GetPropertyInfo, GetProperty, SetProperty}
=======
>>>>>>> origin/cpstrnew
	end;
	EQSpectrumBandsRecordPtr = ^EQSpectrumBandsRecord;
const
	kSoundAudioCodecPropertyWritableFlag = 1 shl 0;

type
	SoundAudioCodecPropertyRequestParams = record
		propertyClass: UInt32;
		propertyID: UInt32;
		propertyDataSize: UInt32;       { out -- GetPropertyInfo, in/out -- GetProperty, in -- SetProperty}
		propertyData: UnivPtr;           { in -- GetPropertyInfo, GetProperty, SetProperty}
		propertyRequestFlags: UInt32;   { out -- GetPropertyInfo}
		propertyDataType: UInt32;       { out -- GetPropertyInfo, often 0}
		propertyRequestResult: ComponentResult;  { out -- GetPropertyInfo, GetProperty, SetProperty}
	end;


<<<<<<< HEAD

<<<<<<< HEAD

<<<<<<< HEAD

=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======

type
	SoundAudioCodecPropertyRequestParams = record
		propertyClass: UInt32;
		propertyID: UInt32;
		propertyDataSize: UInt32;       { out -- GetPropertyInfo, in/out -- GetProperty, in -- SetProperty}
		propertyData: UnivPtr;           { in -- GetPropertyInfo, GetProperty, SetProperty}
		propertyRequestFlags: UInt32;   { out -- GetPropertyInfo}
		propertyDataType: UInt32;       { out -- GetPropertyInfo, often 0}
		propertyRequestResult: ComponentResult;  { out -- GetPropertyInfo, GetProperty, SetProperty}
	end;


>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
{ Sound Input Structures}
type
	SPBPtr = ^SPB;


{user procedures called by sound input routines}
	SIInterruptProcPtr = procedure( inParamPtr: SPBPtr; dataBuffer: Ptr; peakAmplitude: SInt16; sampleSize: SIGNEDLONG );
	SICompletionProcPtr = procedure( inParamPtr: SPBPtr );
	SIInterruptUPP = SIInterruptProcPtr;
	SICompletionUPP = SICompletionProcPtr;


{Sound Input Parameter Block}
	SPB = record
		inRefNum: SIGNEDLONG;               {reference number of sound input device}
		count: UNSIGNEDLONG;                  {number of bytes to record}
		milliseconds: UNSIGNEDLONG;           {number of milliseconds to record}
		bufferLength: UNSIGNEDLONG;           {length of buffer in bytes}
		bufferPtr: Ptr;              {buffer to store sound data in}
		completionRoutine: SICompletionUPP;      {completion routine}
		interruptRoutine: SIInterruptUPP;       {interrupt routine}
		userLong: SIGNEDLONG;               {user-defined field}
		error: OSErr;                  {error}
		unused1: SIGNEDLONG;                {reserved - must be zero}
	end;

{
 *  NewSoundParamUPP()
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewSoundParamUPP( userRoutine: SoundParamProcPtr ): SoundParamUPP; external name '_NewSoundParamUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure InvokeSndDoubleBackUPP(channel: SndChannelPtr; doubleBufferPtr: SndDoubleBufferPtr; userRoutine: SndDoubleBackUPP); external name '_InvokeSndDoubleBackUPP'; { old name was CallSndDoubleBackProc }
{$endc}  {CALL_NOT_IN_CARBON}

type
	SndDoubleBufferHeaderPtr = ^SndDoubleBufferHeader;
	SndDoubleBufferHeader = packed record
		dbhNumChannels:			SInt16;
		dbhSampleSize:			SInt16;
		dbhCompressionID:		SInt16;
		dbhPacketSize:			SInt16;
		dbhSampleRate:			UnsignedFixed;
		dbhBufferPtr:			array [0..1] of SndDoubleBufferPtr;
		dbhDoubleBack:			SndDoubleBackUPP;
	end;

	SndDoubleBufferHeader2Ptr = ^SndDoubleBufferHeader2;
	SndDoubleBufferHeader2 = packed record
		dbhNumChannels:			SInt16;
		dbhSampleSize:			SInt16;
		dbhCompressionID:		SInt16;
		dbhPacketSize:			SInt16;
		dbhSampleRate:			UnsignedFixed;
		dbhBufferPtr:			array [0..1] of SndDoubleBufferPtr;
		dbhDoubleBack:			SndDoubleBackUPP;
		dbhFormat:				OSType;
	end;

{$endc}  {CALL_NOT_IN_CARBON}

	SoundInfoListPtr = ^SoundInfoList;
	SoundInfoList = packed record
		count:					SInt16;
		infoHandle:				Handle;
	end;

	SoundComponentDataPtr = ^SoundComponentData;
	SoundComponentData = record
		flags:					SInt32;
		format:					OSType;
		numChannels:			SInt16;
		sampleSize:				SInt16;
		sampleRate:				UnsignedFixed;
		sampleCount:			SInt32;
		buffer:					Ptr;
		reserved:				SInt32;
	end;

	ExtendedSoundComponentDataPtr = ^ExtendedSoundComponentData;
	ExtendedSoundComponentData = record
		desc:					SoundComponentData;						{ description of sound buffer }
		recordSize:				SInt32;								{ size of this record in bytes }
		extendedFlags:			SInt32;								{ flags for extended record }
		bufferSize:				SInt32;								{ size of buffer in bytes }
	end;

	SoundParamBlockPtr = ^SoundParamBlock;
{$ifc TYPED_FUNCTION_POINTERS}
	SoundParamProcPtr = function(var pb: SoundParamBlockPtr): boolean;
{$elsec}
	SoundParamProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	SoundParamUPP = ^SInt32; { an opaque UPP }
{$elsec}
	SoundParamUPP = UniversalProcPtr;
{$endc}	
	SoundParamBlock = record
		recordSize:				SInt32;								{ size of this record in bytes }
		desc:					SoundComponentData;						{ description of sound buffer }
		rateMultiplier:			UnsignedFixed;							{ rate multiplier to apply to sound }
		leftVolume:				SInt16;								{ volumes to apply to sound }
		rightVolume:			SInt16;
		quality:				SInt32;								{ quality to apply to sound }
		filter:					ComponentInstance;						{ filter to apply to sound }
		moreRtn:				SoundParamUPP;							{ routine to call to get more data }
		completionRtn:			SoundParamUPP;							{ routine to call when buffer is complete }
		refCon:					SInt32;								{ user refcon }
		result:					SInt16;								{ result }
	end;

	ExtendedSoundParamBlockPtr = ^ExtendedSoundParamBlock;
	ExtendedSoundParamBlock = record
		pb:						SoundParamBlock;						{ classic SoundParamBlock except recordSize == sizeof(ExtendedSoundParamBlock) }
		reserved:				SInt16;
		extendedFlags:			SInt32;								{ flags }
		bufferSize:				SInt32;								{ size of buffer in bytes }
	end;

	CompressionInfoPtr = ^CompressionInfo;
	CompressionInfo = record
		recordSize:				SInt32;
		format:					OSType;
		compressionID:			SInt16;
		samplesPerPacket:		UInt16;
		bytesPerPacket:			UInt16;
		bytesPerFrame:			UInt16;
		bytesPerSample:			UInt16;
		futureUse1:				UInt16;
	end;

	CompressionInfoHandle				= ^CompressionInfoPtr;
	{ variables for floating point conversion }
	SoundSlopeAndInterceptRecordPtr = ^SoundSlopeAndInterceptRecord;
	SoundSlopeAndInterceptRecord = record
		slope:					Float64;
		intercept:				Float64;
		minClip:				Float64;
		maxClip:				Float64;
	end;

	SoundSlopeAndInterceptPtr			= ^SoundSlopeAndInterceptRecord;
	{ private thing to use as a reference to a Sound Converter }
	SoundConverter    = ^SInt32; { an opaque 32-bit type }
	SoundConverterPtr = ^SoundConverter;  { when a var xx:SoundConverter parameter can be nil, it is changed to xx: SoundConverterPtr }
	{ callback routine to provide data to the Sound Converter }
{$ifc TYPED_FUNCTION_POINTERS}
	SoundConverterFillBufferDataProcPtr = function(var data: SoundComponentDataPtr; refCon: UnivPtr): boolean;
{$elsec}
	SoundConverterFillBufferDataProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	SoundConverterFillBufferDataUPP = ^SInt32; { an opaque UPP }
{$elsec}
	SoundConverterFillBufferDataUPP = UniversalProcPtr;
{$endc}	
	{ private thing to use as a reference to a Sound Source }
	SoundSource    = ^SInt32; { an opaque 32-bit type }
	SoundSourcePtr = ^SoundSource;  { when a var xx:SoundSource parameter can be nil, it is changed to xx: SoundSourcePtr }
	SoundComponentLinkPtr = ^SoundComponentLink;
	SoundComponentLink = record
		description:			ComponentDescription;					{ Describes the sound component }
		mixerID:				SoundSource;							{ Reserved by Apple }
		linkID:					SoundSourcePtr;							{ Reserved by Apple }
	end;

	AudioInfoPtr = ^AudioInfo;
	AudioInfo = record
		capabilitiesFlags:		SInt32;								{ Describes device capabilities }
		reserved:				SInt32;								{ Reserved by Apple }
		numVolumeSteps:			UInt16;									{ Number of significant increments between min and max volume }
	end;

	AudioFormatAtomPtr = ^AudioFormatAtom;
	AudioFormatAtom = record
		size:					SInt32;								{  = sizeof(AudioFormatAtom) }
		atomType:				OSType;									{  = kAudioFormatAtomType }
		format:					OSType;
	end;

	AudioEndianAtomPtr = ^AudioEndianAtom;
	AudioEndianAtom = record
		size:					SInt32;								{  = sizeof(AudioEndianAtom) }
		atomType:				OSType;									{  = kAudioEndianAtomType }
		littleEndian:			SInt16;
	end;

	AudioTerminatorAtomPtr = ^AudioTerminatorAtom;
	AudioTerminatorAtom = record
		size:					SInt32;								{  = sizeof(AudioTerminatorAtom) }
		atomType:				OSType;									{  = kAudioTerminatorAtomType }
	end;

	LevelMeterInfoPtr = ^LevelMeterInfo;
	LevelMeterInfo = record
		numChannels:			SInt16;								{  mono or stereo source }
		leftMeter:				SInt8;									{  0-255 range }
		rightMeter:				SInt8;									{  0-255 range }
	end;

	EQSpectrumBandsRecordPtr = ^EQSpectrumBandsRecord;
	EQSpectrumBandsRecord = record
		count:					SInt16;
		frequency:				UnsignedFixedPtr;						{  pointer to array of frequencies }
	end;

	{  Sound Input Structures }
	SPBPtr = ^SPB;
	{	user procedures called by sound input routines	}
{$ifc TYPED_FUNCTION_POINTERS}
	SIInterruptProcPtr = procedure(inParamPtr: SPBPtr; dataBuffer: Ptr; peakAmplitude: SInt16; sampleSize: SInt32);
{$elsec}
	SIInterruptProcPtr = Register68kProcPtr;
{$endc}

{$ifc TYPED_FUNCTION_POINTERS}
	SICompletionProcPtr = procedure(inParamPtr: SPBPtr);
{$elsec}
	SICompletionProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	SIInterruptUPP = ^SInt32; { an opaque UPP }
{$elsec}
	SIInterruptUPP = UniversalProcPtr;
{$endc}	
{$ifc OPAQUE_UPP_TYPES}
	SICompletionUPP = ^SInt32; { an opaque UPP }
{$elsec}
	SICompletionUPP = UniversalProcPtr;
{$endc}	
	{	Sound Input Parameter Block	}
	SPB = record
		inRefNum:				SInt32;								{ reference number of sound input device }
		count:					UInt32;									{ number of bytes to record }
		milliseconds:			UInt32;									{ number of milliseconds to record }
		bufferLength:			UInt32;									{ length of buffer in bytes }
		bufferPtr:				Ptr;									{ buffer to store sound data in }
		completionRoutine:		SICompletionUPP;						{ completion routine }
		interruptRoutine:		SIInterruptUPP;							{ interrupt routine }
		userLong:				SInt32;								{ user-defined field }
		error:					OSErr;									{ error }
		unused1:				SInt32;								{ reserved - must be zero }
	end;


const
	uppSoundParamProcInfo = $000000D0;
	uppSoundConverterFillBufferDataProcInfo = $000003D0;
	uppSIInterruptProcInfo = $1C579802;
	uppSICompletionProcInfo = $000000C0;
	{
	 *  NewSoundParamUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   available as macro/inline
	 *    CarbonLib:        in CarbonLib 1.0 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function NewSoundParamUPP(userRoutine: SoundParamProcPtr): SoundParamUPP; external name '_NewSoundParamUPP'; { old name was NewSoundParamProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  NewSoundConverterFillBufferDataUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewSoundConverterFillBufferDataUPP( userRoutine: SoundConverterFillBufferDataProcPtr ): SoundConverterFillBufferDataUPP; external name '_NewSoundConverterFillBufferDataUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewSoundConverterFillBufferDataUPP(userRoutine: SoundConverterFillBufferDataProcPtr): SoundConverterFillBufferDataUPP; external name '_NewSoundConverterFillBufferDataUPP'; { old name was NewSoundConverterFillBufferDataProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  NewSIInterruptUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewSIInterruptUPP( userRoutine: SIInterruptProcPtr ): SIInterruptUPP; external name '_NewSIInterruptUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewSIInterruptUPP(userRoutine: SIInterruptProcPtr): SIInterruptUPP; external name '_NewSIInterruptUPP'; { old name was NewSIInterruptProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  NewSICompletionUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function NewSICompletionUPP( userRoutine: SICompletionProcPtr ): SICompletionUPP; external name '_NewSICompletionUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function NewSICompletionUPP(userRoutine: SICompletionProcPtr): SICompletionUPP; external name '_NewSICompletionUPP'; { old name was NewSICompletionProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  DisposeSoundParamUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeSoundParamUPP( userUPP: SoundParamUPP ); external name '_DisposeSoundParamUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeSoundParamUPP(userUPP: SoundParamUPP); external name '_DisposeSoundParamUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  DisposeSoundConverterFillBufferDataUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeSoundConverterFillBufferDataUPP( userUPP: SoundConverterFillBufferDataUPP ); external name '_DisposeSoundConverterFillBufferDataUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeSoundConverterFillBufferDataUPP(userUPP: SoundConverterFillBufferDataUPP); external name '_DisposeSoundConverterFillBufferDataUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  DisposeSIInterruptUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeSIInterruptUPP( userUPP: SIInterruptUPP ); external name '_DisposeSIInterruptUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeSIInterruptUPP(userUPP: SIInterruptUPP); external name '_DisposeSIInterruptUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  DisposeSICompletionUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure DisposeSICompletionUPP( userUPP: SICompletionUPP ); external name '_DisposeSICompletionUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure DisposeSICompletionUPP(userUPP: SICompletionUPP); external name '_DisposeSICompletionUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeSoundParamUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function InvokeSoundParamUPP( var pb: SoundParamBlockPtr; userUPP: SoundParamUPP ): Boolean; external name '_InvokeSoundParamUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function InvokeSoundParamUPP(var pb: SoundParamBlockPtr; userRoutine: SoundParamUPP): boolean; external name '_InvokeSoundParamUPP'; { old name was CallSoundParamProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeSoundConverterFillBufferDataUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
function InvokeSoundConverterFillBufferDataUPP( var data: SoundComponentDataPtr; refCon: UnivPtr; userUPP: SoundConverterFillBufferDataUPP ): Boolean; external name '_InvokeSoundConverterFillBufferDataUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function InvokeSoundConverterFillBufferDataUPP(var data: SoundComponentDataPtr; refCon: UnivPtr; userRoutine: SoundConverterFillBufferDataUPP): boolean; external name '_InvokeSoundConverterFillBufferDataUPP'; { old name was CallSoundConverterFillBufferDataProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeSIInterruptUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure InvokeSIInterruptUPP( inParamPtr: SPBPtr; dataBuffer: Ptr; peakAmplitude: SInt16; sampleSize: SIGNEDLONG; userUPP: SIInterruptUPP ); external name '_InvokeSIInterruptUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokeSIInterruptUPP(inParamPtr: SPBPtr; dataBuffer: Ptr; peakAmplitude: SInt16; sampleSize: SInt32; userRoutine: SIInterruptUPP); external name '_InvokeSIInterruptUPP'; { old name was CallSIInterruptProc }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeSICompletionUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         in version 10.0 and later in Carbon.framework
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   available as macro/inline
 }
procedure InvokeSICompletionUPP( inParamPtr: SPBPtr; userUPP: SICompletionUPP ); external name '_InvokeSICompletionUPP';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)

type
	FilePlayCompletionProcPtr = procedure( chan: SndChannelPtr );
	FilePlayCompletionUPP = FilePlayCompletionProcPtr;
{
 *  NewFilePlayCompletionUPP()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   available as macro/inline
 }

{
 *  DisposeFilePlayCompletionUPP()
 *  
 *  Availability:
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   available as macro/inline
 }

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure InvokeSICompletionUPP(inParamPtr: SPBPtr; userRoutine: SICompletionUPP); external name '_InvokeSICompletionUPP'; { old name was CallSICompletionProc }
type
{$ifc TYPED_FUNCTION_POINTERS}
	FilePlayCompletionProcPtr = procedure(chan: SndChannelPtr);
{$elsec}
	FilePlayCompletionProcPtr = ProcPtr;
{$endc}

{$ifc OPAQUE_UPP_TYPES}
	FilePlayCompletionUPP = ^SInt32; { an opaque UPP }
{$elsec}
	FilePlayCompletionUPP = UniversalProcPtr;
{$endc}	

const
	uppFilePlayCompletionProcInfo = $000000C0;
{$ifc CALL_NOT_IN_CARBON}
	{
	 *  NewFilePlayCompletionUPP()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   available as macro/inline
	 *    CarbonLib:        not available
	 *    Mac OS X:         not available
	 	}
function NewFilePlayCompletionUPP(userRoutine: FilePlayCompletionProcPtr): FilePlayCompletionUPP; external name '_NewFilePlayCompletionUPP'; { old name was NewFilePlayCompletionProc }
{
 *  DisposeFilePlayCompletionUPP()
 *  
 *  Availability:
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure DisposeFilePlayCompletionUPP(userUPP: FilePlayCompletionUPP); external name '_DisposeFilePlayCompletionUPP';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  InvokeFilePlayCompletionUPP()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   available as macro/inline
 }
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   available as macro/inline
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure InvokeFilePlayCompletionUPP(chan: SndChannelPtr; userRoutine: FilePlayCompletionUPP); external name '_InvokeFilePlayCompletionUPP'; { old name was CallFilePlayCompletionProc }
{$endc}  {CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

{
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   prototypes
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}
<<<<<<< HEAD
<<<<<<< HEAD


{ Sound Manager routines }
{$ifc not TARGET_CPU_64}
{
 *  SysBeep()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    Use AudioServicesPlayAlertSound(). Found in
 *    AudioToolbox/AudioServices.h
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
procedure SysBeep( duration: SInt16 ); external name '_SysBeep';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndDoCommand()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndDoCommand( chan: SndChannelPtr; const (*var*) cmd: SndCommand; noWait: Boolean ): OSErr; external name '_SndDoCommand';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndDoImmediate()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndDoImmediate( chan: SndChannelPtr; const (*var*) cmd: SndCommand ): OSErr; external name '_SndDoImmediate';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndNewChannel()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndNewChannel( var chan: SndChannelPtr; synth: SInt16; init: SIGNEDLONG; userRoutine: SndCallBackUPP ): OSErr; external name '_SndNewChannel';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndDisposeChannel()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndDisposeChannel( chan: SndChannelPtr; quietNow: Boolean ): OSErr; external name '_SndDisposeChannel';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndPlay()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndPlay( chan: SndChannelPtr; sndHandle: SndListHandle; async: Boolean ): OSErr; external name '_SndPlay';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

{$ifc OLDROUTINENAMES}
=======
{ Sound Manager routines }
{
 *  SysBeep()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure SysBeep(duration: SInt16); external name '_SysBeep';
{
 *  SndDoCommand()
=======
{ Sound Manager routines }
{
 *  SysBeep()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure SysBeep(duration: SInt16); external name '_SysBeep';
{
 *  SndDoCommand()
>>>>>>> origin/fixes_2_2
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndDoCommand(chan: SndChannelPtr; const (*var*) cmd: SndCommand; noWait: boolean): OSErr; external name '_SndDoCommand';
{
 *  SndDoImmediate()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndDoImmediate(chan: SndChannelPtr; const (*var*) cmd: SndCommand): OSErr; external name '_SndDoImmediate';
{
 *  SndNewChannel()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndNewChannel(var chan: SndChannelPtr; synth: SInt16; init: SInt32; userRoutine: SndCallBackUPP): OSErr; external name '_SndNewChannel';
{
 *  SndDisposeChannel()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndDisposeChannel(chan: SndChannelPtr; quietNow: boolean): OSErr; external name '_SndDisposeChannel';
{
 *  SndPlay()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndPlay(chan: SndChannelPtr; sndHandle: SndListHandle; async: boolean): OSErr; external name '_SndPlay';
{$ifc OLDROUTINENAMES}
{$ifc CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndAddModifier()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


{$endc} {OLDROUTINENAMES}

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndAddModifier(chan: SndChannelPtr; modifier: Ptr; id: SInt16; init: SInt32): OSErr; external name '_SndAddModifier';
{$endc}  {CALL_NOT_IN_CARBON}
{$endc}  {OLDROUTINENAMES}

{$ifc CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndControl()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


{ Sound Manager 2.0 and later, uses _SoundDispatch }
{$ifc not TARGET_CPU_64}
{
 *  SndSoundManagerVersion()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndSoundManagerVersion: NumVersion; external name '_SndSoundManagerVersion';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndControl(id: SInt16; var cmd: SndCommand): OSErr; external name '_SndControl';
{ Sound Manager 2.0 and later, uses _SoundDispatch }
{$endc}  {CALL_NOT_IN_CARBON}

{
 *  SndSoundManagerVersion()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndSoundManagerVersion: NumVersion; external name '_SndSoundManagerVersion';
{$ifc CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndStartFilePlay()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndStartFilePlay(chan: SndChannelPtr; fRefNum: SInt16; resNum: SInt16; bufferSize: SInt32; theBuffer: UnivPtr; theSelection: AudioSelectionPtr; theCompletion: FilePlayCompletionUPP; async: boolean): OSErr; external name '_SndStartFilePlay';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndPauseFilePlay()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndPauseFilePlay(chan: SndChannelPtr): OSErr; external name '_SndPauseFilePlay';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndStopFilePlay()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


{$ifc not TARGET_CPU_64}
{
 *  SndChannelStatus()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndChannelStatus( chan: SndChannelPtr; theLength: SInt16; theStatus: SCStatusPtr ): OSErr; external name '_SndChannelStatus';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndManagerStatus()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndManagerStatus( theLength: SInt16; theStatus: SMStatusPtr ): OSErr; external name '_SndManagerStatus';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndGetSysBeepState()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    SysBeep related APIs have been replaced by AudioServices. Found
 *    in AudioToolbox/AudioServices.h
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
procedure SndGetSysBeepState( var sysBeepState: SInt16 ); external name '_SndGetSysBeepState';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndSetSysBeepState()   *** DEPRECATED ***
 *  
 *  Deprecated:
 *    SysBeep related APIs have been replaced by AudioServices. Found
 *    in AudioToolbox/AudioServices.h
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndSetSysBeepState( sysBeepState: SInt16 ): OSErr; external name '_SndSetSysBeepState';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndStopFilePlay(chan: SndChannelPtr; quietNow: boolean): OSErr; external name '_SndStopFilePlay';
{$endc}  {CALL_NOT_IN_CARBON}

{
 *  SndChannelStatus()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndChannelStatus(chan: SndChannelPtr; theLength: SInt16; theStatus: SCStatusPtr): OSErr; external name '_SndChannelStatus';
{
 *  SndManagerStatus()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndManagerStatus(theLength: SInt16; theStatus: SMStatusPtr): OSErr; external name '_SndManagerStatus';
{
 *  SndGetSysBeepState()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
procedure SndGetSysBeepState(var sysBeepState: SInt16); external name '_SndGetSysBeepState';
{
 *  SndSetSysBeepState()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndSetSysBeepState(sysBeepState: SInt16): OSErr; external name '_SndSetSysBeepState';
{$ifc CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndPlayDoubleBuffer()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndPlayDoubleBuffer(chan: SndChannelPtr; theParams: SndDoubleBufferHeaderPtr): OSErr; external name '_SndPlayDoubleBuffer';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{ MACE compression routines, uses _SoundDispatch }
{
 *  MACEVersion()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function MACEVersion: NumVersion; external name '_MACEVersion';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  Comp3to1()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure Comp3to1(inBuffer: UnivPtr; outBuffer: UnivPtr; cnt: UInt32; inState: StateBlockPtr; outState: StateBlockPtr; numChannels: UInt32; whichChannel: UInt32); external name '_Comp3to1';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  Exp1to3()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure Exp1to3(inBuffer: UnivPtr; outBuffer: UnivPtr; cnt: UInt32; inState: StateBlockPtr; outState: StateBlockPtr; numChannels: UInt32; whichChannel: UInt32); external name '_Exp1to3';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  Comp6to1()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure Comp6to1(inBuffer: UnivPtr; outBuffer: UnivPtr; cnt: UInt32; inState: StateBlockPtr; outState: StateBlockPtr; numChannels: UInt32; whichChannel: UInt32); external name '_Comp6to1';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  Exp1to6()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


{ Sound Manager 3.0 and later calls, uses _SoundDispatch }
{$ifc not TARGET_CPU_64}
{
 *  GetSysBeepVolume()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function GetSysBeepVolume( var level: SIGNEDLONG ): OSErr; external name '_GetSysBeepVolume';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SetSysBeepVolume()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SetSysBeepVolume( level: SIGNEDLONG ): OSErr; external name '_SetSysBeepVolume';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  GetDefaultOutputVolume()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function GetDefaultOutputVolume( var level: SIGNEDLONG ): OSErr; external name '_GetDefaultOutputVolume';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SetDefaultOutputVolume()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SetDefaultOutputVolume( level: SIGNEDLONG ): OSErr; external name '_SetDefaultOutputVolume';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  GetSoundHeaderOffset()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function GetSoundHeaderOffset( sndHandle: SndListHandle; var offset: SIGNEDLONG ): OSErr; external name '_GetSoundHeaderOffset';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
procedure Exp1to6(inBuffer: UnivPtr; outBuffer: UnivPtr; cnt: UInt32; inState: StateBlockPtr; outState: StateBlockPtr; numChannels: UInt32; whichChannel: UInt32); external name '_Exp1to6';
{ Sound Manager 3.0 and later calls, uses _SoundDispatch }
{$endc}  {CALL_NOT_IN_CARBON}

{
 *  GetSysBeepVolume()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetSysBeepVolume(var level: SInt32): OSErr; external name '_GetSysBeepVolume';
{
 *  SetSysBeepVolume()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetSysBeepVolume(level: SInt32): OSErr; external name '_SetSysBeepVolume';
{
 *  GetDefaultOutputVolume()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetDefaultOutputVolume(var level: SInt32): OSErr; external name '_GetDefaultOutputVolume';
{
 *  SetDefaultOutputVolume()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetDefaultOutputVolume(level: SInt32): OSErr; external name '_SetDefaultOutputVolume';
{
 *  GetSoundHeaderOffset()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetSoundHeaderOffset(sndHandle: SndListHandle; var offset: SInt32): OSErr; external name '_GetSoundHeaderOffset';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  UnsignedFixedMulDiv()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
(*
function UnsignedFixedMulDiv( value: UnsignedFixed; multiplier: UnsignedFixed; divisor: UnsignedFixed ): UnsignedFixed; external name '_UnsignedFixedMulDiv';

Duplicated in FixMath.h, also strange that it's included here without availability info.
*)

{$ifc not TARGET_CPU_64}
{
 *  GetCompressionInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function GetCompressionInfo( compressionID: SInt16; format: OSType; numChannels: SInt16; sampleSize: SInt16; cp: CompressionInfoPtr ): OSErr; external name '_GetCompressionInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SetSoundPreference()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SetSoundPreference( theType: OSType; var name: Str255; settings: Handle ): OSErr; external name '_SetSoundPreference';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  GetSoundPreference()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function GetSoundPreference( theType: OSType; var name: Str255; settings: Handle ): OSErr; external name '_GetSoundPreference';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  OpenMixerSoundComponent()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function OpenMixerSoundComponent( outputDescription: SoundComponentDataPtr; outputFlags: SIGNEDLONG; var mixerComponent: ComponentInstance ): OSErr; external name '_OpenMixerSoundComponent';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  CloseMixerSoundComponent()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function CloseMixerSoundComponent( ci: ComponentInstance ): OSErr; external name '_CloseMixerSoundComponent';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ Sound Manager 3.1 and later calls, uses _SoundDispatch }
{
 *  SndGetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 }
function SndGetInfo( chan: SndChannelPtr; selector: OSType; infoPtr: UnivPtr ): OSErr; external name '_SndGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndSetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 }
function SndSetInfo( chan: SndChannelPtr; selector: OSType; infoPtr: {const} UnivPtr ): OSErr; external name '_SndSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  GetSoundOutputInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 }
function GetSoundOutputInfo( outputDevice: Component; selector: OSType; infoPtr: UnivPtr ): OSErr; external name '_GetSoundOutputInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SetSoundOutputInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 }
function SetSoundOutputInfo( outputDevice: Component; selector: OSType; infoPtr: {const} UnivPtr ): OSErr; external name '_SetSoundOutputInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ Sound Manager 3.2 and later calls, uses _SoundDispatch }
{
 *  GetCompressionName()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function GetCompressionName( compressionType: OSType; var compressionName: Str255 ): OSErr; external name '_GetCompressionName';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterOpen()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function SoundConverterOpen( const (*var*) inputFormat: SoundComponentData; const (*var*) outputFormat: SoundComponentData; var sc: SoundConverter ): OSErr; external name '_SoundConverterOpen';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterClose()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function SoundConverterClose( sc: SoundConverter ): OSErr; external name '_SoundConverterClose';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterGetBufferSizes()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function SoundConverterGetBufferSizes( sc: SoundConverter; inputBytesTarget: UNSIGNEDLONG; var inputFrames: UNSIGNEDLONG; var inputBytes: UNSIGNEDLONG; var outputBytes: UNSIGNEDLONG ): OSErr; external name '_SoundConverterGetBufferSizes';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterBeginConversion()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function SoundConverterBeginConversion( sc: SoundConverter ): OSErr; external name '_SoundConverterBeginConversion';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterConvertBuffer()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function SoundConverterConvertBuffer( sc: SoundConverter; inputPtr: {const} UnivPtr; inputFrames: UNSIGNEDLONG; outputPtr: UnivPtr; var outputFrames: UNSIGNEDLONG; var outputBytes: UNSIGNEDLONG ): OSErr; external name '_SoundConverterConvertBuffer';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterEndConversion()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 }
function SoundConverterEndConversion( sc: SoundConverter; outputPtr: UnivPtr; var outputFrames: UNSIGNEDLONG; var outputBytes: UNSIGNEDLONG ): OSErr; external name '_SoundConverterEndConversion';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ Sound Manager 3.3 and later calls, uses _SoundDispatch }
{
 *  SoundConverterGetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.3 and later
 }
function SoundConverterGetInfo( sc: SoundConverter; selector: OSType; infoPtr: UnivPtr ): OSErr; external name '_SoundConverterGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundConverterSetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.3 and later
 }
function SoundConverterSetInfo( sc: SoundConverter; selector: OSType; infoPtr: UnivPtr ): OSErr; external name '_SoundConverterSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ Sound Manager 3.6 and later calls, uses _SoundDispatch }
{
 *  SoundConverterFillBuffer()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in SoundLib 3.6 and later
 }
function SoundConverterFillBuffer( sc: SoundConverter; fillBufferDataUPP: SoundConverterFillBufferDataUPP; fillBufferDataRefCon: UnivPtr; outputBuffer: UnivPtr; outputBufferByteSize: UNSIGNEDLONG; var bytesWritten: UNSIGNEDLONG; var framesWritten: UNSIGNEDLONG; var outputFlags: UNSIGNEDLONG ): OSErr; external name '_SoundConverterFillBuffer';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundManagerGetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in SoundLib 3.6 and later
 }
function SoundManagerGetInfo( selector: OSType; infoPtr: UnivPtr ): OSErr; external name '_SoundManagerGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundManagerSetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Non-Carbon CFM:   in SoundLib 3.6 and later
 }
function SoundManagerSetInfo( selector: OSType; infoPtr: {const} UnivPtr ): OSErr; external name '_SoundManagerSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


=======
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         not available
 }
function UnsignedFixedMulDiv(value: UnsignedFixed; multiplier: UnsignedFixed; divisor: UnsignedFixed): UnsignedFixed; external name '_UnsignedFixedMulDiv';
{
 *  GetCompressionInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetCompressionInfo(compressionID: SInt16; format: OSType; numChannels: SInt16; sampleSize: SInt16; cp: CompressionInfoPtr): OSErr; external name '_GetCompressionInfo';
{
 *  SetSoundPreference()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetSoundPreference(theType: OSType; var name: Str255; settings: Handle): OSErr; external name '_SetSoundPreference';
{
 *  GetSoundPreference()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetSoundPreference(theType: OSType; var name: Str255; settings: Handle): OSErr; external name '_GetSoundPreference';
{
 *  OpenMixerSoundComponent()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function OpenMixerSoundComponent(outputDescription: SoundComponentDataPtr; outputFlags: SInt32; var mixerComponent: ComponentInstance): OSErr; external name '_OpenMixerSoundComponent';
{
 *  CloseMixerSoundComponent()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function CloseMixerSoundComponent(ci: ComponentInstance): OSErr; external name '_CloseMixerSoundComponent';
{ Sound Manager 3.1 and later calls, uses _SoundDispatch }
{
 *  SndGetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndGetInfo(chan: SndChannelPtr; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SndGetInfo';
=======
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         not available
 }
function UnsignedFixedMulDiv(value: UnsignedFixed; multiplier: UnsignedFixed; divisor: UnsignedFixed): UnsignedFixed; external name '_UnsignedFixedMulDiv';
{
 *  GetCompressionInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetCompressionInfo(compressionID: SInt16; format: OSType; numChannels: SInt16; sampleSize: SInt16; cp: CompressionInfoPtr): OSErr; external name '_GetCompressionInfo';
{
 *  SetSoundPreference()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetSoundPreference(theType: OSType; var name: Str255; settings: Handle): OSErr; external name '_SetSoundPreference';
{
 *  GetSoundPreference()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetSoundPreference(theType: OSType; var name: Str255; settings: Handle): OSErr; external name '_GetSoundPreference';
{
 *  OpenMixerSoundComponent()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function OpenMixerSoundComponent(outputDescription: SoundComponentDataPtr; outputFlags: SInt32; var mixerComponent: ComponentInstance): OSErr; external name '_OpenMixerSoundComponent';
{
 *  CloseMixerSoundComponent()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function CloseMixerSoundComponent(ci: ComponentInstance): OSErr; external name '_CloseMixerSoundComponent';
{ Sound Manager 3.1 and later calls, uses _SoundDispatch }
{
 *  SndGetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndGetInfo(chan: SndChannelPtr; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SndGetInfo';
>>>>>>> origin/fixes_2_2
{
 *  SndSetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndSetInfo(chan: SndChannelPtr; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SndSetInfo';
{
 *  GetSoundOutputInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetSoundOutputInfo(outputDevice: Component; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_GetSoundOutputInfo';
{
 *  SetSoundOutputInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetSoundOutputInfo(outputDevice: Component; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SetSoundOutputInfo';
{ Sound Manager 3.2 and later calls, uses _SoundDispatch }
{
 *  GetCompressionName()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function GetCompressionName(compressionType: OSType; var compressionName: Str255): OSErr; external name '_GetCompressionName';
{
 *  SoundConverterOpen()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterOpen(const (*var*) inputFormat: SoundComponentData; const (*var*) outputFormat: SoundComponentData; var sc: SoundConverter): OSErr; external name '_SoundConverterOpen';
{
 *  SoundConverterClose()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterClose(sc: SoundConverter): OSErr; external name '_SoundConverterClose';
{
 *  SoundConverterGetBufferSizes()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterGetBufferSizes(sc: SoundConverter; inputBytesTarget: UInt32; var inputFrames: UInt32; var inputBytes: UInt32; var outputBytes: UInt32): OSErr; external name '_SoundConverterGetBufferSizes';
{
 *  SoundConverterBeginConversion()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterBeginConversion(sc: SoundConverter): OSErr; external name '_SoundConverterBeginConversion';
{
 *  SoundConverterConvertBuffer()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterConvertBuffer(sc: SoundConverter; inputPtr: UnivPtr; inputFrames: UInt32; outputPtr: UnivPtr; var outputFrames: UInt32; var outputBytes: UInt32): OSErr; external name '_SoundConverterConvertBuffer';
{
 *  SoundConverterEndConversion()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.2 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterEndConversion(sc: SoundConverter; outputPtr: UnivPtr; var outputFrames: UInt32; var outputBytes: UInt32): OSErr; external name '_SoundConverterEndConversion';
{ Sound Manager 3.3 and later calls, uses _SoundDispatch }
{
 *  SoundConverterGetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.3 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterGetInfo(sc: SoundConverter; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SoundConverterGetInfo';
{
 *  SoundConverterSetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.3 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterSetInfo(sc: SoundConverter; selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SoundConverterSetInfo';
{ Sound Manager 3.6 and later calls, uses _SoundDispatch }
{
 *  SoundConverterFillBuffer()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.6 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundConverterFillBuffer(sc: SoundConverter; fillBufferDataUPP: SoundConverterFillBufferDataUPP; fillBufferDataRefCon: UnivPtr; outputBuffer: UnivPtr; outputBufferByteSize: UInt32; var bytesWritten: UInt32; var framesWritten: UInt32; var outputFlags: UInt32): OSErr; external name '_SoundConverterFillBuffer';
{
 *  SoundManagerGetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.6 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundManagerGetInfo(selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SoundManagerGetInfo';
{
 *  SoundManagerSetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.6 and later
 *    CarbonLib:        in CarbonLib 1.1 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundManagerSetInfo(selector: OSType; infoPtr: UnivPtr): OSErr; external name '_SoundManagerSetInfo';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
  Sound Component Functions
   basic sound component functions
}

{
<<<<<<< HEAD
<<<<<<< HEAD
 *  SoundComponentInitOutputDevice()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentInitOutputDevice( ti: ComponentInstance; actions: SIGNEDLONG ): ComponentResult; external name '_SoundComponentInitOutputDevice';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentSetSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentSetSource( ti: ComponentInstance; sourceID: SoundSource; source: ComponentInstance ): ComponentResult; external name '_SoundComponentSetSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentGetSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentGetSource( ti: ComponentInstance; sourceID: SoundSource; var source: ComponentInstance ): ComponentResult; external name '_SoundComponentGetSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentGetSourceData()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentGetSourceData( ti: ComponentInstance; var sourceData: SoundComponentDataPtr ): ComponentResult; external name '_SoundComponentGetSourceData';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentSetOutput()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentSetOutput( ti: ComponentInstance; requested: SoundComponentDataPtr; var actual: SoundComponentDataPtr ): ComponentResult; external name '_SoundComponentSetOutput';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ junction methods for the mixer, must be called at non-interrupt level}
{
 *  SoundComponentAddSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentAddSource( ti: ComponentInstance; var sourceID: SoundSource ): ComponentResult; external name '_SoundComponentAddSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentRemoveSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentRemoveSource( ti: ComponentInstance; sourceID: SoundSource ): ComponentResult; external name '_SoundComponentRemoveSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ info methods}
{
 *  SoundComponentGetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentGetInfo( ti: ComponentInstance; sourceID: SoundSource; selector: OSType; infoPtr: UnivPtr ): ComponentResult; external name '_SoundComponentGetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentSetInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentSetInfo( ti: ComponentInstance; sourceID: SoundSource; selector: OSType; infoPtr: UnivPtr ): ComponentResult; external name '_SoundComponentSetInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ control methods}
{
 *  SoundComponentStartSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentStartSource( ti: ComponentInstance; count: SInt16; var sources: SoundSource ): ComponentResult; external name '_SoundComponentStartSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentStopSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentStopSource( ti: ComponentInstance; count: SInt16; var sources: SoundSource ): ComponentResult; external name '_SoundComponentStopSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentPauseSource()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentPauseSource( ti: ComponentInstance; count: SInt16; var sources: SoundSource ): ComponentResult; external name '_SoundComponentPauseSource';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SoundComponentPlaySourceBuffer()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function SoundComponentPlaySourceBuffer( ti: ComponentInstance; sourceID: SoundSource; pb: SoundParamBlockPtr; actions: SIGNEDLONG ): ComponentResult; external name '_SoundComponentPlaySourceBuffer';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}


{ selectors for component calls }
const
	kSoundComponentInitOutputDeviceSelect = $0001;
	kSoundComponentSetSourceSelect = $0002;
	kSoundComponentGetSourceSelect = $0003;
	kSoundComponentGetSourceDataSelect = $0004;
	kSoundComponentSetOutputSelect = $0005;
	kSoundComponentAddSourceSelect = $0101;
	kSoundComponentRemoveSourceSelect = $0102;
	kSoundComponentGetInfoSelect = $0103;
	kSoundComponentSetInfoSelect = $0104;
	kSoundComponentStartSourceSelect = $0105;
	kSoundComponentStopSourceSelect = $0106;
	kSoundComponentPauseSourceSelect = $0107;
	kSoundComponentPlaySourceBufferSelect = $0108;
{Audio Components}
=======
=======
>>>>>>> origin/fixes_2_2
 *  SoundComponentInitOutputDevice()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentInitOutputDevice(ti: ComponentInstance; actions: SInt32): ComponentResult; external name '_SoundComponentInitOutputDevice';
{
 *  SoundComponentSetSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentSetSource(ti: ComponentInstance; sourceID: SoundSource; source: ComponentInstance): ComponentResult; external name '_SoundComponentSetSource';
{
 *  SoundComponentGetSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentGetSource(ti: ComponentInstance; sourceID: SoundSource; var source: ComponentInstance): ComponentResult; external name '_SoundComponentGetSource';
{
 *  SoundComponentGetSourceData()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentGetSourceData(ti: ComponentInstance; var sourceData: SoundComponentDataPtr): ComponentResult; external name '_SoundComponentGetSourceData';
{
 *  SoundComponentSetOutput()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentSetOutput(ti: ComponentInstance; requested: SoundComponentDataPtr; var actual: SoundComponentDataPtr): ComponentResult; external name '_SoundComponentSetOutput';
{  junction methods for the mixer, must be called at non-interrupt level }
{
 *  SoundComponentAddSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentAddSource(ti: ComponentInstance; var sourceID: SoundSource): ComponentResult; external name '_SoundComponentAddSource';
{
 *  SoundComponentRemoveSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentRemoveSource(ti: ComponentInstance; sourceID: SoundSource): ComponentResult; external name '_SoundComponentRemoveSource';
{  info methods }
{
 *  SoundComponentGetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentGetInfo(ti: ComponentInstance; sourceID: SoundSource; selector: OSType; infoPtr: UnivPtr): ComponentResult; external name '_SoundComponentGetInfo';
{
 *  SoundComponentSetInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentSetInfo(ti: ComponentInstance; sourceID: SoundSource; selector: OSType; infoPtr: UnivPtr): ComponentResult; external name '_SoundComponentSetInfo';
{  control methods }
{
 *  SoundComponentStartSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentStartSource(ti: ComponentInstance; count: SInt16; var sources: SoundSource): ComponentResult; external name '_SoundComponentStartSource';
{
 *  SoundComponentStopSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentStopSource(ti: ComponentInstance; count: SInt16; var sources: SoundSource): ComponentResult; external name '_SoundComponentStopSource';
{
 *  SoundComponentPauseSource()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentPauseSource(ti: ComponentInstance; count: SInt16; var sources: SoundSource): ComponentResult; external name '_SoundComponentPauseSource';
{
 *  SoundComponentPlaySourceBuffer()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SoundComponentPlaySourceBuffer(ti: ComponentInstance; sourceID: SoundSource; pb: SoundParamBlockPtr; actions: SInt32): ComponentResult; external name '_SoundComponentPlaySourceBuffer';
{ Audio Components }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{Volume is described as a value between 0 and 1, with 0 indicating minimum
  volume and 1 indicating maximum volume; if the device doesn't support
  software control of volume, then a value of unimpErr is returned, indicating
  that these functions are not supported by the device
}
<<<<<<< HEAD
<<<<<<< HEAD
=======
{$ifc CALL_NOT_IN_CARBON}
>>>>>>> graemeg/fixes_2_2
=======
{$ifc CALL_NOT_IN_CARBON}
>>>>>>> origin/fixes_2_2
{
 *  AudioGetVolume()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioGetVolume(ac: ComponentInstance; whichChannel: SInt16; var volume: ShortFixed): ComponentResult; external name '_AudioGetVolume';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioSetVolume()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioSetVolume(ac: ComponentInstance; whichChannel: SInt16; volume: ShortFixed): ComponentResult; external name '_AudioSetVolume';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{If the device doesn't support software control of mute, then a value of unimpErr is
returned, indicating that these functions are not supported by the device.}
{
 *  AudioGetMute()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioGetMute(ac: ComponentInstance; whichChannel: SInt16; var mute: SInt16): ComponentResult; external name '_AudioGetMute';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioSetMute()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioSetMute(ac: ComponentInstance; whichChannel: SInt16; mute: SInt16): ComponentResult; external name '_AudioSetMute';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{AudioSetToDefaults causes the associated device to reset its volume and mute values
(and perhaps other characteristics, e.g. attenuation) to "factory default" settings}
{
 *  AudioSetToDefaults()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


{This routine is required; it must be implemented by all audio components}
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioSetToDefaults(ac: ComponentInstance): ComponentResult; external name '_AudioSetToDefaults';
{ This routine is required; it must be implemented by all audio components }
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2

{
 *  AudioGetInfo()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioGetInfo(ac: ComponentInstance; info: AudioInfoPtr): ComponentResult; external name '_AudioGetInfo';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioGetBass()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioGetBass(ac: ComponentInstance; whichChannel: SInt16; var bass: SInt16): ComponentResult; external name '_AudioGetBass';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioSetBass()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioSetBass(ac: ComponentInstance; whichChannel: SInt16; bass: SInt16): ComponentResult; external name '_AudioSetBass';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioGetTreble()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioGetTreble(ac: ComponentInstance; whichChannel: SInt16; var Treble: SInt16): ComponentResult; external name '_AudioGetTreble';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioSetTreble()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioSetTreble(ac: ComponentInstance; whichChannel: SInt16; Treble: SInt16): ComponentResult; external name '_AudioSetTreble';
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  AudioGetOutputDevice()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }


{This is routine is private to the AudioVision component.  It enables the watching of the mute key.}
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
<<<<<<< HEAD
function AudioGetOutputDevice(ac: ComponentInstance; var outputDevice: Component): ComponentResult; external name '_AudioGetOutputDevice';
{ This is routine is private to the AudioVision component.  It enables the watching of the mute key. }
>>>>>>> graemeg/fixes_2_2
{
 *  AudioMuteOnEvent()
 *  
 *  Availability:
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
=======
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioMuteOnEvent(ac: ComponentInstance; muteOnEvent: SInt16): ComponentResult; external name '_AudioMuteOnEvent';
{$endc}  {CALL_NOT_IN_CARBON}
>>>>>>> graemeg/fixes_2_2


const
	kDelegatedSoundComponentSelectors = $0100;

<<<<<<< HEAD

{ Sound Input Manager routines, uses _SoundDispatch }
{$ifc not TARGET_CPU_64}
{
 *  SPBVersion()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBVersion: NumVersion; external name '_SPBVersion';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndRecord()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SndRecord( filterProc: ModalFilterUPP; corner: Point; quality: OSType; var sndHandle: SndListHandle ): OSErr; external name '_SndRecord';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

=======
=======
function AudioGetOutputDevice(ac: ComponentInstance; var outputDevice: Component): ComponentResult; external name '_AudioGetOutputDevice';
{ This is routine is private to the AudioVision component.  It enables the watching of the mute key. }
{
 *  AudioMuteOnEvent()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function AudioMuteOnEvent(ac: ComponentInstance; muteOnEvent: SInt16): ComponentResult; external name '_AudioMuteOnEvent';
{$endc}  {CALL_NOT_IN_CARBON}


const
	kDelegatedSoundComponentSelectors = $0100;

>>>>>>> origin/fixes_2_2
	{	 Sound Input Manager routines, uses _SoundDispatch 	}
	{
	 *  SPBVersion()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
	 *    CarbonLib:        in CarbonLib 1.0 and later
	 *    Mac OS X:         in version 10.0 and later
	 	}
function SPBVersion: NumVersion; external name '_SPBVersion';
{
 *  SndRecord()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SndRecord(filterProc: ModalFilterUPP; corner: Point; quality: OSType; var sndHandle: SndListHandle): OSErr; external name '_SndRecord';
{$ifc CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SndRecordToFile()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


{$ifc not TARGET_CPU_64}
{
 *  SPBSignInDevice()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBSignInDevice( deviceRefNum: SInt16; const (*var*) deviceName: Str255 ): OSErr; external name '_SPBSignInDevice';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBSignOutDevice()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBSignOutDevice( deviceRefNum: SInt16 ): OSErr; external name '_SPBSignOutDevice';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBGetIndexedDevice()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBGetIndexedDevice( count: SInt16; var deviceName: Str255; var deviceIconHandle: Handle ): OSErr; external name '_SPBGetIndexedDevice';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBOpenDevice()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBOpenDevice( const (*var*) deviceName: Str255; permission: SInt16; var inRefNum: SIGNEDLONG ): OSErr; external name '_SPBOpenDevice';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBCloseDevice()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBCloseDevice( inRefNum: SIGNEDLONG ): OSErr; external name '_SPBCloseDevice';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBRecord()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBRecord( inParamPtr: SPBPtr; asynchFlag: Boolean ): OSErr; external name '_SPBRecord';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SndRecordToFile(filterProc: ModalFilterUPP; corner: Point; quality: OSType; fRefNum: SInt16): OSErr; external name '_SndRecordToFile';
{$endc}  {CALL_NOT_IN_CARBON}

{
 *  SPBSignInDevice()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBSignInDevice(deviceRefNum: SInt16; const (*var*) deviceName: Str255): OSErr; external name '_SPBSignInDevice';
{
 *  SPBSignOutDevice()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBSignOutDevice(deviceRefNum: SInt16): OSErr; external name '_SPBSignOutDevice';
{
 *  SPBGetIndexedDevice()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBGetIndexedDevice(count: SInt16; var deviceName: Str255; var deviceIconHandle: Handle): OSErr; external name '_SPBGetIndexedDevice';
{
 *  SPBOpenDevice()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBOpenDevice(const (*var*) deviceName: Str255; permission: SInt16; var inRefNum: SInt32): OSErr; external name '_SPBOpenDevice';
{
 *  SPBCloseDevice()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBCloseDevice(inRefNum: SInt32): OSErr; external name '_SPBCloseDevice';
{
 *  SPBRecord()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBRecord(inParamPtr: SPBPtr; asynchFlag: boolean): OSErr; external name '_SPBRecord';
{$ifc CALL_NOT_IN_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{
 *  SPBRecordToFile()
 *  
 *  Availability:
<<<<<<< HEAD
<<<<<<< HEAD
 *    Mac OS X:         not available
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }


{$ifc not TARGET_CPU_64}
{
 *  SPBPauseRecording()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBPauseRecording( inRefNum: SIGNEDLONG ): OSErr; external name '_SPBPauseRecording';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBResumeRecording()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBResumeRecording( inRefNum: SIGNEDLONG ): OSErr; external name '_SPBResumeRecording';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBStopRecording()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBStopRecording( inRefNum: SIGNEDLONG ): OSErr; external name '_SPBStopRecording';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBGetRecordingStatus()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBGetRecordingStatus( inRefNum: SIGNEDLONG; var recordingStatus: SInt16; var meterLevel: SInt16; var totalSamplesToRecord: UNSIGNEDLONG; var numberOfSamplesRecorded: UNSIGNEDLONG; var totalMsecsToRecord: UNSIGNEDLONG; var numberOfMsecsRecorded: UNSIGNEDLONG ): OSErr; external name '_SPBGetRecordingStatus';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBGetDeviceInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBGetDeviceInfo( inRefNum: SIGNEDLONG; infoType: OSType; infoData: UnivPtr ): OSErr; external name '_SPBGetDeviceInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBSetDeviceInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBSetDeviceInfo( inRefNum: SIGNEDLONG; infoType: OSType; infoData: UnivPtr ): OSErr; external name '_SPBSetDeviceInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBMillisecondsToBytes()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBMillisecondsToBytes( inRefNum: SIGNEDLONG; var milliseconds: SIGNEDLONG ): OSErr; external name '_SPBMillisecondsToBytes';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SPBBytesToMilliseconds()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SPBBytesToMilliseconds( inRefNum: SIGNEDLONG; var byteCount: SIGNEDLONG ): OSErr; external name '_SPBBytesToMilliseconds';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SetupSndHeader()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SetupSndHeader( sndHandle: SndListHandle; numChannels: SInt16; sampleRate: UnsignedFixed; sampleSize: SInt16; compressionType: OSType; baseNote: SInt16; numBytes: UNSIGNEDLONG; var headerLen: SInt16 ): OSErr; external name '_SetupSndHeader';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SetupAIFFHeader()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 }
function SetupAIFFHeader( fRefNum: SInt16; numChannels: SInt16; sampleRate: UnsignedFixed; sampleSize: SInt16; compressionType: OSType; numBytes: UNSIGNEDLONG; numFrames: UNSIGNEDLONG ): OSErr; external name '_SetupAIFFHeader';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{ Sound Input Manager 1.1 and later calls, uses _SoundDispatch }
{
 *  ParseAIFFHeader()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function ParseAIFFHeader( fRefNum: SInt16; var sndInfo: SoundComponentData; var numFrames: UNSIGNEDLONG; var dataOffset: UNSIGNEDLONG ): OSErr; external name '_ParseAIFFHeader';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  ParseSndHeader()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 }
function ParseSndHeader( sndHandle: SndListHandle; var sndInfo: SoundComponentData; var numFrames: UNSIGNEDLONG; var dataOffset: UNSIGNEDLONG ): OSErr; external name '_ParseSndHeader';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}

{$ifc TARGET_API_MAC_CARBON}
=======
=======
>>>>>>> origin/fixes_2_2
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 }
function SPBRecordToFile(fRefNum: SInt16; inParamPtr: SPBPtr; asynchFlag: boolean): OSErr; external name '_SPBRecordToFile';
{$endc}  {CALL_NOT_IN_CARBON}

{
 *  SPBPauseRecording()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBPauseRecording(inRefNum: SInt32): OSErr; external name '_SPBPauseRecording';
{
 *  SPBResumeRecording()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBResumeRecording(inRefNum: SInt32): OSErr; external name '_SPBResumeRecording';
{
 *  SPBStopRecording()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBStopRecording(inRefNum: SInt32): OSErr; external name '_SPBStopRecording';
{
 *  SPBGetRecordingStatus()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBGetRecordingStatus(inRefNum: SInt32; var recordingStatus: SInt16; var meterLevel: SInt16; var totalSamplesToRecord: UInt32; var numberOfSamplesRecorded: UInt32; var totalMsecsToRecord: UInt32; var numberOfMsecsRecorded: UInt32): OSErr; external name '_SPBGetRecordingStatus';
{
 *  SPBGetDeviceInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBGetDeviceInfo(inRefNum: SInt32; infoType: OSType; infoData: UnivPtr): OSErr; external name '_SPBGetDeviceInfo';
{
 *  SPBSetDeviceInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBSetDeviceInfo(inRefNum: SInt32; infoType: OSType; infoData: UnivPtr): OSErr; external name '_SPBSetDeviceInfo';
{
 *  SPBMillisecondsToBytes()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBMillisecondsToBytes(inRefNum: SInt32; var milliseconds: SInt32): OSErr; external name '_SPBMillisecondsToBytes';
{
 *  SPBBytesToMilliseconds()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SPBBytesToMilliseconds(inRefNum: SInt32; var byteCount: SInt32): OSErr; external name '_SPBBytesToMilliseconds';
{
 *  SetupSndHeader()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetupSndHeader(sndHandle: SndListHandle; numChannels: SInt16; sampleRate: UnsignedFixed; sampleSize: SInt16; compressionType: OSType; baseNote: SInt16; numBytes: UInt32; var headerLen: SInt16): OSErr; external name '_SetupSndHeader';
{
 *  SetupAIFFHeader()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in InterfaceLib 7.1 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function SetupAIFFHeader(fRefNum: SInt16; numChannels: SInt16; sampleRate: UnsignedFixed; sampleSize: SInt16; compressionType: OSType; numBytes: UInt32; numFrames: UInt32): OSErr; external name '_SetupAIFFHeader';
{ Sound Input Manager 1.1 and later calls, uses _SoundDispatch }
{
 *  ParseAIFFHeader()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function ParseAIFFHeader(fRefNum: SInt16; var sndInfo: SoundComponentData; var numFrames: UInt32; var dataOffset: UInt32): OSErr; external name '_ParseAIFFHeader';
{
 *  ParseSndHeader()
 *  
 *  Availability:
 *    Non-Carbon CFM:   in SoundLib 3.0 and later
 *    CarbonLib:        in CarbonLib 1.0 and later
 *    Mac OS X:         in version 10.0 and later
 }
function ParseSndHeader(sndHandle: SndListHandle; var sndInfo: SoundComponentData; var numFrames: UInt32; var dataOffset: UInt32): OSErr; external name '_ParseSndHeader';
{$ifc NOT TARGET_OS_MAC OR TARGET_API_MAC_CARBON}
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
{  Only to be used if you are writing a sound input component; this }
{  is the param block for a read request from the SoundMgr to the   }
{  sound input component.  Not to be confused with the SPB struct   }
{  above, which is the param block for a read request from an app   }
{  to the SoundMgr.                                                 }
<<<<<<< HEAD
<<<<<<< HEAD
type
	SndInputCmpParamPtr = ^SndInputCmpParam;
	SICCompletionProcPtr = procedure( SICParmPtr: SndInputCmpParamPtr );
	SndInputCmpParam = record
		ioCompletion: SICCompletionProcPtr;         { completion routine [pointer]}
		ioInterrupt: SIInterruptProcPtr;            { interrupt routine [pointer]}
		ioResult: OSErr;               { I/O result code [word]}
		pad: SInt16;
		ioReqCount: UNSIGNEDLONG;
		ioActCount: UNSIGNEDLONG;
		ioBuffer: Ptr;
		ioMisc: Ptr;
	end;

{$ifc not TARGET_CPU_64}
{
 *  SndInputReadAsync()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputReadAsync( self: ComponentInstance; SICParmPtr: SndInputCmpParamPtr ): ComponentResult; external name '_SndInputReadAsync';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputReadSync()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputReadSync( self: ComponentInstance; SICParmPtr: SndInputCmpParamPtr ): ComponentResult; external name '_SndInputReadSync';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputPauseRecording()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputPauseRecording( self: ComponentInstance ): ComponentResult; external name '_SndInputPauseRecording';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputResumeRecording()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputResumeRecording( self: ComponentInstance ): ComponentResult; external name '_SndInputResumeRecording';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputStopRecording()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputStopRecording( self: ComponentInstance ): ComponentResult; external name '_SndInputStopRecording';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputGetStatus()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputGetStatus( self: ComponentInstance; var recordingStatus: SInt16; var totalSamplesToRecord: UNSIGNEDLONG; var numberOfSamplesRecorded: UNSIGNEDLONG ): ComponentResult; external name '_SndInputGetStatus';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputGetDeviceInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputGetDeviceInfo( self: ComponentInstance; infoType: OSType; infoData: UnivPtr ): ComponentResult; external name '_SndInputGetDeviceInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputSetDeviceInfo()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputSetDeviceInfo( self: ComponentInstance; infoType: OSType; infoData: UnivPtr ): ComponentResult; external name '_SndInputSetDeviceInfo';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{
 *  SndInputInitHardware()   *** DEPRECATED ***
 *  
 *  Availability:
 *    Mac OS X:         in version 10.0 and later in Carbon.framework [32-bit only] but deprecated in 10.5
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 }
function SndInputInitHardware( self: ComponentInstance ): ComponentResult; external name '_SndInputInitHardware';
(* AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER_BUT_DEPRECATED_IN_MAC_OS_X_VERSION_10_5 *)


{$endc} {not TARGET_CPU_64}


{ selectors for component calls }
const
	kSndInputReadAsyncSelect = $0001;
	kSndInputReadSyncSelect = $0002;
	kSndInputPauseRecordingSelect = $0003;
	kSndInputResumeRecordingSelect = $0004;
	kSndInputStopRecordingSelect = $0005;
	kSndInputGetStatusSelect = $0006;
	kSndInputGetDeviceInfoSelect = $0007;
	kSndInputSetDeviceInfoSelect = $0008;
	kSndInputInitHardwareSelect = $0009;
{$endc} {TARGET_API_MAC_CARBON}

{$endc} {not TARGET_CPU_64}

{$endc} {TARGET_OS_MAC}
{$ifc not defined MACOSALLINCLUDE or not MACOSALLINCLUDE}

end.
{$endc} {not MACOSALLINCLUDE}
=======
=======
>>>>>>> origin/fixes_2_2

type
	SndInputCmpParamPtr = ^SndInputCmpParam;
{$ifc TYPED_FUNCTION_POINTERS}
	SICCompletionProcPtr = procedure(SICParmPtr: SndInputCmpParamPtr);
{$elsec}
	SICCompletionProcPtr = ProcPtr;
{$endc}

	SndInputCmpParam = record
		ioCompletion:			SICCompletionProcPtr;					{  completion routine [pointer] }
		ioInterrupt:			SIInterruptProcPtr;						{  interrupt routine [pointer] }
		ioResult:				OSErr;									{  I/O result code [word] }
		pad:					SInt16;
		ioReqCount:				UInt32;
		ioActCount:				UInt32;
		ioBuffer:				Ptr;
		ioMisc:					Ptr;
	end;

	{
	 *  SndInputReadAsync()
	 *  
	 *  Availability:
	 *    Non-Carbon CFM:   not available
	 *    CarbonLib:        not available
	 *    Mac OS X:         in version 10.0 and later
	 	}
function SndInputReadAsync(self: ComponentInstance; SICParmPtr: SndInputCmpParamPtr): ComponentResult; external name '_SndInputReadAsync';
{
 *  SndInputReadSync()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputReadSync(self: ComponentInstance; SICParmPtr: SndInputCmpParamPtr): ComponentResult; external name '_SndInputReadSync';
{
 *  SndInputPauseRecording()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputPauseRecording(self: ComponentInstance): ComponentResult; external name '_SndInputPauseRecording';
{
 *  SndInputResumeRecording()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputResumeRecording(self: ComponentInstance): ComponentResult; external name '_SndInputResumeRecording';
{
 *  SndInputStopRecording()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputStopRecording(self: ComponentInstance): ComponentResult; external name '_SndInputStopRecording';
{
 *  SndInputGetStatus()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputGetStatus(self: ComponentInstance; var recordingStatus: SInt16; var totalSamplesToRecord: UInt32; var numberOfSamplesRecorded: UInt32): ComponentResult; external name '_SndInputGetStatus';
{
 *  SndInputGetDeviceInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputGetDeviceInfo(self: ComponentInstance; infoType: OSType; infoData: UnivPtr): ComponentResult; external name '_SndInputGetDeviceInfo';
{
 *  SndInputSetDeviceInfo()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputSetDeviceInfo(self: ComponentInstance; infoType: OSType; infoData: UnivPtr): ComponentResult; external name '_SndInputSetDeviceInfo';
{
 *  SndInputInitHardware()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         in version 10.0 and later
 }
function SndInputInitHardware(self: ComponentInstance): ComponentResult; external name '_SndInputInitHardware';
{$endc}


{$ALIGN MAC68K}


end.
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
