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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  AUComponent,
  AVLTree,
  AXActionConstants,
  AXAttributeConstants,
  AXConstants,
<<<<<<< HEAD
<<<<<<< HEAD
=======
  AVLTree,
  AXActionConstants,
  AXAttributeConstants,
>>>>>>> graemeg/fixes_2_2
=======
  AVLTree,
  AXActionConstants,
  AXAttributeConstants,
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  AXErrors,
  AXNotificationConstants,
  AXRoleConstants,
  AXTextAttributedString,
  AXUIElement,
  AXValue,
  AXValueConstants,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  Accessibility,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  Accessibility,
>>>>>>> origin/fixes_2.4
=======
  Accessibility,
>>>>>>> origin/cpstrnew
  Aliases,
  Appearance,
  AppleDiskPartitions,
  AppleEvents,
  AppleHelp,
  AppleScript,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/fixes_2_2
=======
  AudioCodecs,
  AudioComponents,
>>>>>>> origin/fixes_2.4
=======
  AudioCodecs,
  AudioComponents,
>>>>>>> origin/cpstrnew
  AudioHardware,
  AudioOutputUnit,
  AudioUnitCarbonViews,
  AudioUnitParameters,
  AudioUnitProperties,
  AuthSession,
  Authorization,
  AuthorizationDB,
  AuthorizationPlugin,
  AuthorizationTags,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  BackupCore,
>>>>>>> origin/fixes_2.4
=======
  BackupCore,
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
  CFFTPStream,
>>>>>>> origin/fixes_2_2
=======
  CFError,
  CFFTPStream,
  CFHTTPAuthentication,
>>>>>>> origin/fixes_2.4
=======
  CFError,
  CFFTPStream,
  CFHTTPAuthentication,
>>>>>>> origin/cpstrnew
  CFHTTPMessage,
  CFHTTPStream,
  CFHost,
  CFLocale,
  CFMachPort,
  CFMessagePort,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  CFNetDiagnostics,
  CFNetServices,
  CFNetworkErrorss,
=======
  CFNetServices,
>>>>>>> graemeg/fixes_2_2
=======
  CFNetServices,
>>>>>>> origin/fixes_2_2
=======
  CFNetDiagnostics,
  CFNetServices,
  CFNetworkErrorss,
>>>>>>> origin/fixes_2.4
=======
  CFNetDiagnostics,
  CFNetServices,
  CFNetworkErrorss,
>>>>>>> origin/cpstrnew
  CFNotificationCenter,
  CFNumber,
  CFNumberFormatter,
  CFPlugIn,
  CFPlugInCOM,
  CFPreferences,
  CFPropertyList,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  CFProxySupport,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  CFProxySupport,
>>>>>>> origin/fixes_2.4
=======
  CFProxySupport,
>>>>>>> origin/cpstrnew
  CFRunLoop,
  CFSet,
  CFSocket,
  CFSocketStream,
  CFStream,
  CFString,
  CFStringEncodingExt,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  CFStringTokenizer,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  CFStringTokenizer,
>>>>>>> origin/cpstrnew
  CFTimeZone,
  CFTree,
  CFURL,
  CFURLAccess,
<<<<<<< HEAD
<<<<<<< HEAD
  CFURLEnumerator,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/fixes_2.4
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
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
=======
  CGGradient,
>>>>>>> origin/cpstrnew
  CGImage,
  CGImageDestination,
  CGImageProperties,
  CGImageSource,
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
  CGLCurrent,
  CGLDevice,
  CGLProfiler,
  CGLProfilerFunctionEnums,
  CGLRenderers,
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
  CGWindow,
  CGWindowLevels,
  CMCalibrator,
  CSIdentity,
  CSIdentityAuthority,
<<<<<<< HEAD
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
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
=======
  CGWindow,
>>>>>>> origin/fixes_2.4
  CGWindowLevels,
  CMCalibrator,
<<<<<<< HEAD
  CMDeviceIntegration,
  CMICCProfile,
  CMMComponent,
  CMPRComponent,
  CMScriptingPlugin,
  CMTypes,
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  CSIdentity,
  CSIdentityAuthority,
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
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  CVBase,
  CVBuffer,
  CVDisplayLink,
  CVHostTime,
  CVImageBuffer,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  CVOpenGLBuffer,
  CVOpenGLBufferPool,
  CVOpenGLTexture,
  CVOpenGLTextureCache,
<<<<<<< HEAD
<<<<<<< HEAD
  CVPixelBuffer,
  CVPixelBufferIOSurface,
  CVPixelBufferPool,
  CVPixelFormatDescription,
  CVReturns,
  CaptiveNetwork,
=======
=======
>>>>>>> origin/fixes_2.4
  CVPixelBuffer,
  CVPixelBufferPool,
  CVPixelFormatDescription,
  CVReturns,
>>>>>>> graemeg/fixes_2_2
=======
=======
>>>>>>> origin/cpstrnew
  CVPixelBuffer,
  CVPixelBufferPool,
  CVPixelFormatDescription,
  CVReturns,
>>>>>>> origin/fixes_2_2
  CarbonEvents,
  CarbonEventsCore,
  CodeFragments,
  Collections,
  ColorPicker,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  ColorSyncCMM,
  ColorSyncDeprecated,
  ColorSyncDevice,
  ColorSyncProfile,
  ColorSyncTransform,
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
  Components,
  ConditionalMacros,
  ControlDefinitions,
  Controls,
  CoreAudioTypes,
  CoreFoundation,
  CoreGraphics,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
=======
  CoreText,
  DADisk,
  DASession,
>>>>>>> origin/fixes_2.4
  DHCPClientPreferences,
  DateTimeUtils,
  Debugging,
  Dialogs,
  Dictionary,
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
<<<<<<< HEAD
  FindByContent,
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  Finder,
  FinderRegistry,
  FixMath,
  Folders,
  FontPanel,
  FontSync,
  Fonts,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/fixes_2_2
  GXTypes,
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  HIWindowViews,
>>>>>>> origin/fixes_2.4
=======
  HIWindowViews,
>>>>>>> origin/cpstrnew
  HTMLRendering,
  HostTime,
  IBCarbonRuntime,
  ICAApplication,
  ICACamera,
  ICADevice,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
  IOKitReturn,
  IOSurfaceAPI,
  IconStorage,
  Icons,
  IconsCore,
<<<<<<< HEAD
=======
  Icons,
>>>>>>> graemeg/fixes_2_2
=======
  Icons,
>>>>>>> origin/fixes_2_2
=======
  IconStorage,
  Icons,
  IconsCore,
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
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
=======
  KeyEvents,
>>>>>>> origin/fixes_2.4
=======
  KeyEvents,
>>>>>>> origin/cpstrnew
  LSInfo,
  LSOpen,
  LSQuarantine,
  LSSharedFileList,
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
  LanguageAnalysis,
  Lists,
  LowMem,
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
=======
  LanguageAnalysis,
  Lists,
  LowMem,
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  MacApplication,
  MacErrors,
  MacHelp,
  MacLocales,
  MacMemory,
  MacOSXPosix,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  MacOpenGL,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  MacOpenGL,
>>>>>>> origin/fixes_2.4
=======
  MacOpenGL,
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/cpstrnew
  MultiProcessingInfo,
  Multiprocessing,
  MusicDevice,
  NSL,
  NSLCore,
<<<<<<< HEAD
=======
=======
>>>>>>> origin/fixes_2_2
=======
  MultiProcessingInfo,
>>>>>>> origin/fixes_2.4
  Multiprocessing,
  MusicDevice,
  NSL,
  NSLCore,
<<<<<<< HEAD
  NameRegistry,
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
  PMApplicationDeprecated,
>>>>>>> origin/fixes_2.4
  PMCore,
  PMCoreDeprecated,
  PMDefinitions,
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
=======
  PMApplicationDeprecated,
>>>>>>> origin/cpstrnew
  PMCore,
  PMCoreDeprecated,
  PMDefinitions,
<<<<<<< HEAD
>>>>>>> origin/fixes_2_2
=======
=======
>>>>>>> origin/cpstrnew
  PMDefinitionsDeprecated,
  PMErrors,
  PMPrintAETypes,
  PMPrintSettingsKeys,
  PMPrintingDialogExtensions,
<<<<<<< HEAD
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  Palettes,
  Pasteboard,
  PictUtils,
  Power,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/fixes_2_2
  Printing,
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  Processes,
  QDCMCommon,
  QDOffscreen,
  QDPictToCGContext,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  QLBase,
  QLGenerator,
  QLThumbnailImage,
>>>>>>> origin/fixes_2.4
=======
  QLBase,
  QLGenerator,
  QLThumbnailImage,
>>>>>>> origin/cpstrnew
  QTML,
  QTSMovie,
  QTStreamingComponents,
  QuickTimeComponents,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  QuickTimeErrors,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  QuickTimeErrors,
>>>>>>> origin/fixes_2.4
=======
  QuickTimeErrors,
>>>>>>> origin/cpstrnew
  QuickTimeMusic,
  QuickTimeStreaming,
  QuickTimeVR,
  QuickTimeVRFormat,
  Quickdraw,
  QuickdrawText,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  QuickdrawTypes,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  QuickdrawTypes,
>>>>>>> origin/fixes_2.4
=======
  QuickdrawTypes,
>>>>>>> origin/cpstrnew
  Resources,
  SCDynamicStore,
  SCDynamicStoreCopyDHCPInfos,
  SCDynamicStoreCopySpecific,
  SCDynamicStoreKey,
  SCNetwork,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  SCNetworkConfiguration,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  SCNetworkConfiguration,
>>>>>>> origin/fixes_2.4
=======
  SCNetworkConfiguration,
>>>>>>> origin/cpstrnew
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
=======
>>>>>>> origin/fixes_2.4
  ScalerStreamTypes,
  Scrap,
  Script,
  SecBase,
<<<<<<< HEAD
  SecTrust,
=======
  Scrap,
  Script,
>>>>>>> graemeg/fixes_2_2
=======
  Scrap,
  Script,
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
  ScalerStreamTypes,
  Scrap,
  Script,
  SecBase,
  SecTrust,
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  TextInputSources,
=======
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  TextInputSources,
>>>>>>> origin/fixes_2.4
=======
  TextInputSources,
>>>>>>> origin/cpstrnew
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
  USB,
>>>>>>> graemeg/fixes_2_2
=======
  USB,
>>>>>>> origin/fixes_2_2
=======
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  UTCUtils,
  UTCoreTypes,
  UTType,
  UnicodeConverter,
  UnicodeUtilities,
  UniversalAccess,
  Video,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
  WSMethodInvocation,
  WSProtocolHandler,
  WSTypes,
>>>>>>> origin/cpstrnew
  cblas,
  certextensions,
  cssmapple,
  cssmconfig,
  cssmerr,
  cssmkrapi,
  cssmtype,
<<<<<<< HEAD
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
=======
>>>>>>> origin/fixes_2_2
  WorldScript,
=======
  WSMethodInvocation,
  WSProtocolHandler,
  WSTypes,
  cblas,
>>>>>>> origin/fixes_2.4
=======
>>>>>>> origin/cpstrnew
  fenv,
  fp,
  gliContexts,
  gliDispatch,
  gluContext,
<<<<<<< HEAD
  macgl,
  macglext,
  macglu,
  vBLAS,
  vDSP,
<<<<<<< HEAD
>>>>>>> graemeg/fixes_2_2
=======
>>>>>>> origin/fixes_2_2
=======
  kern_return,
  macgl,
  macglext,
  macglu,
  mach_error,
  vBLAS,
  vDSP,
  x509defs,
>>>>>>> origin/cpstrnew
  xattr,
  GPCStrings;

end.
