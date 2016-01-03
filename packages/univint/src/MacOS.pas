{$mode macpas}
{$packenum 1}
{$macro on}
{$inline on}
{$CALLING MWPASCAL}

unit MacOS;
interface

uses 
  ABActions,
  ABAddressBook,
  ABGlobals,
  ABPeoplePicker,
  ABTypedefs,
  AEDataModel,
  AEHelpers,
  AEInteraction,
  AEMach,
  AEObjects,
  AEPackObject,
  AERegistry,
  AEUserTermTypes,
  AIFF,
  ASDebugging,
  ASRegistry,
  ATSFont,
  ATSLayoutTypes,
  ATSTypes,
  ATSUnicodeDirectAccess,
  ATSUnicodeDrawing,
  ATSUnicodeFlattening,
  ATSUnicodeFonts,
  ATSUnicodeGlyphs,
  ATSUnicodeObjects,
  ATSUnicodeTypes,
<<<<<<< HEAD
  AUComponent,
  AVLTree,
  AXActionConstants,
  AXAttributeConstants,
  AXConstants,
=======
  AVLTree,
  AXActionConstants,
  AXAttributeConstants,
>>>>>>> graemeg/fixes_2_2
  AXErrors,
  AXNotificationConstants,
  AXRoleConstants,
  AXTextAttributedString,
  AXUIElement,
  AXValue,
  AXValueConstants,
<<<<<<< HEAD
  Accessibility,
=======
>>>>>>> graemeg/fixes_2_2
  Aliases,
  Appearance,
  AppleDiskPartitions,
  AppleEvents,
  AppleHelp,
  AppleScript,
<<<<<<< HEAD
  AudioCodecs,
  AudioComponents,
  AudioHardware,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  AudioHardwareBase,
  AudioHardwareDeprecated,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  AudioOutputUnit,
  AudioUnitCarbonViews,
  AudioUnitParameters,
  AudioUnitProperties,
  AuthSession,
  Authorization,
  AuthorizationDB,
  AuthorizationPlugin,
  AuthorizationTags,
  BackupCore,
=======
  AudioHardware,
  AuthSession,
  Authorization,
  AuthorizationDB,
  AuthorizationTags,
>>>>>>> graemeg/fixes_2_2
  CFArray,
  CFAttributedString,
  CFBag,
  CFBase,
  CFBinaryHeap,
  CFBitVector,
  CFBundle,
  CFByteOrders,
  CFCalendar,
  CFCharacterSet,
  CFData,
  CFDate,
  CFDateFormatter,
  CFDictionary,
<<<<<<< HEAD
  CFError,
  CFFTPStream,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  CFFileDescriptor,
  CFFileSecurity,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  CFHTTPAuthentication,
=======
  CFFTPStream,
>>>>>>> graemeg/fixes_2_2
  CFHTTPMessage,
  CFHTTPStream,
  CFHost,
  CFLocale,
  CFMachPort,
  CFMessagePort,
<<<<<<< HEAD
  CFNetDiagnostics,
  CFNetServices,
  CFNetworkErrorss,
=======
  CFNetServices,
>>>>>>> graemeg/fixes_2_2
  CFNotificationCenter,
  CFNumber,
  CFNumberFormatter,
  CFPlugIn,
  CFPlugInCOM,
  CFPreferences,
  CFPropertyList,
<<<<<<< HEAD
  CFProxySupport,
=======
>>>>>>> graemeg/fixes_2_2
  CFRunLoop,
  CFSet,
  CFSocket,
  CFSocketStream,
  CFStream,
  CFString,
  CFStringEncodingExt,
<<<<<<< HEAD
  CFStringTokenizer,
=======
>>>>>>> graemeg/fixes_2_2
  CFTimeZone,
  CFTree,
  CFURL,
  CFURLAccess,
<<<<<<< HEAD
  CFURLEnumerator,
=======
>>>>>>> graemeg/fixes_2_2
  CFUUID,
  CFUserNotification,
  CFXMLNode,
  CFXMLParser,
  CGAffineTransforms,
  CGBase,
  CGBitmapContext,
  CGColor,
  CGColorSpace,
  CGContext,
  CGDataConsumer,
  CGDataProvider,
  CGDirectDisplay,
  CGDirectPalette,
  CGDisplayConfiguration,
  CGDisplayFades,
  CGErrors,
  CGEvent,
  CGEventSource,
  CGEventTypes,
  CGFont,
  CGFunction,
  CGGLContext,
  CGGeometry,
<<<<<<< HEAD
  CGGradient,
  CGImage,
  CGImageDestination,
  CGImageMetadata,
  CGImageProperties,
  CGImageSource,
  CGLCurrent,
  CGLDevice,
  CGLProfiler,
  CGLProfilerFunctionEnums,
  CGLRenderers,
=======
  CGImage,
  CGImageDestination,
  CGImageProperties,
  CGImageSource,
>>>>>>> graemeg/fixes_2_2
  CGLTypes,
  CGLayer,
  CGPDFArray,
  CGPDFContentStream,
  CGPDFContext,
  CGPDFDictionary,
  CGPDFDocument,
  CGPDFObject,
  CGPDFOperatorTable,
  CGPDFPage,
  CGPDFScanner,
  CGPDFStream,
  CGPDFString,
  CGPSConverter,
  CGPath,
  CGPattern,
  CGRemoteOperation,
  CGSession,
  CGShading,
<<<<<<< HEAD
  CGWindow,
  CGWindowLevels,
  CMCalibrator,
  CSIdentity,
  CSIdentityAuthority,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  CSIdentityBase,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  CSIdentityQuery,
  CTFont,
  CTFontCollection,
  CTFontDescriptor,
  CTFontManager,
  CTFontManagerErrors,
  CTFontTraits,
  CTFrame,
  CTFramesetter,
  CTGlyphInfo,
  CTLine,
  CTParagraphStyle,
  CTRun,
  CTStringAttributes,
  CTTextTab,
  CTTypesetter,
=======
  CGWindowLevels,
  CMApplication,
  CMCalibrator,
  CMDeviceIntegration,
  CMICCProfile,
  CMMComponent,
  CMPRComponent,
  CMScriptingPlugin,
  CMTypes,
>>>>>>> graemeg/fixes_2_2
  CVBase,
  CVBuffer,
  CVDisplayLink,
  CVHostTime,
  CVImageBuffer,
<<<<<<< HEAD
  CVOpenGLBuffer,
  CVOpenGLBufferPool,
  CVOpenGLTexture,
  CVOpenGLTextureCache,
  CVPixelBuffer,
  CVPixelBufferIOSurface,
  CVPixelBufferPool,
  CVPixelFormatDescription,
  CVReturns,
  CaptiveNetwork,
=======
  CVPixelBuffer,
  CVPixelBufferPool,
  CVPixelFormatDescription,
  CVReturns,
>>>>>>> graemeg/fixes_2_2
  CarbonEvents,
  CarbonEventsCore,
  CodeFragments,
  Collections,
  ColorPicker,
<<<<<<< HEAD
  ColorSyncCMM,
  ColorSyncDeprecated,
  ColorSyncDevice,
  ColorSyncProfile,
  ColorSyncTransform,
=======
>>>>>>> graemeg/fixes_2_2
  Components,
  ConditionalMacros,
  ControlDefinitions,
  Controls,
  CoreAudioTypes,
  CoreFoundation,
  CoreGraphics,
<<<<<<< HEAD
  CoreText,
  DADisk,
  DASession,
  DHCPClientPreferences,
  DateTimeUtils,
  Debugging,
  Dialogs,
  Dictionary,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  DictionaryServices,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  DigitalHubRegistry,
  Displays,
  Drag,
  DrawSprocket,
  DriverServices,
  DriverSynchronization,
  Endian,
  Events,
  FSEvents,
  FileTypesAndCreators,
  Files,
=======
  DHCPClientPreferences,
  DateTimeUtils,
  Debugging,
  Devices,
  Dialogs,
  Dictionary,
  Displays,
  Drag,
  DrawSprocket,
  DriverFamilyMatching,
  DriverGestalt,
  DriverSynchronization,
  Endian,
  Events,
  FileTypesAndCreators,
  Files,
  FindByContent,
>>>>>>> graemeg/fixes_2_2
  Finder,
  FinderRegistry,
  FixMath,
  Folders,
  FontPanel,
  FontSync,
  Fonts,
<<<<<<< HEAD
  GestaltEqu,
  HFSVolumes,
  HIAccessibility,
  HIArchive,
  HIButtonViews,
  HIClockView,
  HIComboBox,
  HIContainerViews,
  HIDataBrowser,
  HIDisclosureViews,
  HIGeometry,
  HIImageViews,
  HILittleArrows,
  HIMenuView,
  HIMovieView,
  HIObject,
  HIPopupButton,
  HIProgressViews,
  HIRelevanceBar,
  HIScrollView,
  HISearchField,
  HISegmentedView,
  HISeparator,
  HIShape,
  HISlider,
  HITabbedView,
  HITextLengthFilter,
  HITextUtils,
  HITextViews,
  HITheme,
  HIToolbar,
  HIToolbox,
  HIToolboxDebugging,
  HIView,
  HIWindowViews,
=======
  GXTypes,
  GestaltEqu,
  HFSVolumes,
  HIArchive,
  HIGeometry,
  HIMovieView,
  HIObject,
  HIObjectCore,
  HIShape,
  HITextUtils,
  HITheme,
  HIToolbar,
  HIToolbox,
  HIView,
>>>>>>> graemeg/fixes_2_2
  HTMLRendering,
  HostTime,
  IBCarbonRuntime,
  ICAApplication,
  ICACamera,
  ICADevice,
<<<<<<< HEAD
  IOKitReturn,
  IOSurfaceAPI,
  IconStorage,
  Icons,
  IconsCore,
=======
  Icons,
>>>>>>> graemeg/fixes_2_2
  ImageCodec,
  ImageCompression,
  InternetConfig,
  IntlResources,
  Keyboards,
  KeychainCore,
  KeychainHI,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
  KeyEvents,
>>>>>>> graemeg/cpstrnew
=======
  KeyEvents,
>>>>>>> graemeg/cpstrnew
=======
  KeyEvents,
>>>>>>> graemeg/cpstrnew
=======
  KeyEvents,
>>>>>>> origin/cpstrnew
  LSInfo,
  LSOpen,
  LSQuarantine,
  LSSharedFileList,
  LanguageAnalysis,
  Lists,
  LowMem,
  MDExternalDatastore,
  MDImporter,
  MDItem,
  MDLineage,
  MDQuery,
  MDSchema,
  MIDIDriver,
  MIDIServices,
  MIDISetup,
  MIDIThruConnection,
=======
  LanguageAnalysis,
  LaunchServices,
  Lists,
  LowMem,
>>>>>>> graemeg/fixes_2_2
  MacApplication,
  MacErrors,
  MacHelp,
  MacLocales,
  MacMemory,
  MacOSXPosix,
<<<<<<< HEAD
  MacOpenGL,
=======
>>>>>>> graemeg/fixes_2_2
  MacTextEditor,
  MacTypes,
  MacWindows,
  MachineExceptions,
  Math64,
  MediaHandlers,
  Menus,
  MixedMode,
  Movies,
  MoviesFormat,
<<<<<<< HEAD
  MultiProcessingInfo,
  Multiprocessing,
  MusicDevice,
  NSL,
  NSLCore,
=======
  Multiprocessing,
  NSL,
  NSLCore,
  NameRegistry,
>>>>>>> graemeg/fixes_2_2
  Navigation,
  Notification,
  NumberFormatting,
  OSA,
  OSAComp,
  OSAGeneric,
  OSUtils,
  ObjCRuntime,
  OpenTransport,
  OpenTransportProtocol,
  OpenTransportProviders,
  PEFBinaryFormat,
  PLStringFuncs,
  PMApplication,
<<<<<<< HEAD
  PMApplicationDeprecated,
  PMCore,
  PMCoreDeprecated,
  PMDefinitions,
  PMDefinitionsDeprecated,
  PMErrors,
  PMPrintAETypes,
  PMPrintSettingsKeys,
  PMPrintingDialogExtensions,
=======
  PMCore,
  PMDefinitions,
>>>>>>> graemeg/fixes_2_2
  Palettes,
  Pasteboard,
  PictUtils,
  Power,
<<<<<<< HEAD
  Processes,
  QDCMCommon,
  QDOffscreen,
  QDPictToCGContext,
  QLBase,
  QLGenerator,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  QLThumbnail,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  QLThumbnailImage,
=======
  Printing,
  Processes,
  QDOffscreen,
  QDPictToCGContext,
>>>>>>> graemeg/fixes_2_2
  QTML,
  QTSMovie,
  QTStreamingComponents,
  QuickTimeComponents,
<<<<<<< HEAD
  QuickTimeErrors,
=======
>>>>>>> graemeg/fixes_2_2
  QuickTimeMusic,
  QuickTimeStreaming,
  QuickTimeVR,
  QuickTimeVRFormat,
  Quickdraw,
  QuickdrawText,
<<<<<<< HEAD
  QuickdrawTypes,
=======
>>>>>>> graemeg/fixes_2_2
  Resources,
  SCDynamicStore,
  SCDynamicStoreCopyDHCPInfos,
  SCDynamicStoreCopySpecific,
  SCDynamicStoreKey,
  SCNetwork,
<<<<<<< HEAD
  SCNetworkConfiguration,
=======
>>>>>>> graemeg/fixes_2_2
  SCNetworkConnection,
  SCNetworkReachability,
  SCPreferences,
  SCPreferencesPath,
  SCPreferencesSetSpecific,
  SCSI,
  SCSchemaDefinitions,
  SFNTLayoutTypes,
  SFNTTypes,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  SKAnalysis,
  SKDocument,
  SKIndex,
  SKSearch,
  SKSummary,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  ScalerStreamTypes,
  Scrap,
  Script,
  SecBase,
  SecTrust,
=======
  Scrap,
  Script,
>>>>>>> graemeg/fixes_2_2
  Sound,
  SpeechRecognition,
  SpeechSynthesis,
  StringCompare,
  SystemConfiguration,
  SystemSound,
  TSMTE,
  TextCommon,
  TextEdit,
  TextEncodingConverter,
  TextEncodingPlugin,
<<<<<<< HEAD
  TextInputSources,
=======
>>>>>>> graemeg/fixes_2_2
  TextServices,
  TextUtils,
  Threads,
  Timer,
  ToolUtils,
  Translation,
  TranslationExtensions,
  TranslationServices,
  TypeSelect,
  URLAccess,
<<<<<<< HEAD
=======
  USB,
>>>>>>> graemeg/fixes_2_2
  UTCUtils,
  UTCoreTypes,
  UTType,
  UnicodeConverter,
  UnicodeUtilities,
  UniversalAccess,
  Video,
<<<<<<< HEAD
  WSMethodInvocation,
  WSProtocolHandler,
  WSTypes,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  acl,
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> graemeg/cpstrnew
=======
>>>>>>> origin/cpstrnew
  cblas,
  certextensions,
  cssmapple,
  cssmconfig,
  cssmerr,
  cssmkrapi,
  cssmtype,
  fenv,
  fp,
  gliContexts,
  gliDispatch,
  gluContext,
  kern_return,
  macgl,
  macglext,
  macglu,
  mach_error,
  vBLAS,
  vDSP,
  x509defs,
=======
  WorldScript,
  fenv,
  fp,
  vBLAS,
  vDSP,
>>>>>>> graemeg/fixes_2_2
  xattr,
  GPCStrings;

end.
