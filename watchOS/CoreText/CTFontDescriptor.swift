
class CTFontDescriptor : _CFObject {
}
@available(watchOS 2.0, *)
func CTFontDescriptorGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
let kCTFontURLAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontNameAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontDisplayNameAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontFamilyNameAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontStyleNameAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontTraitsAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontVariationAttribute: CFString
@available(watchOS 4.0, *)
let kCTFontVariationAxesAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontSizeAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontMatrixAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontCascadeListAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontCharacterSetAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontLanguagesAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontBaselineAdjustAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontMacintoshEncodingsAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontFeaturesAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontFeatureSettingsAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontFixedAdvanceAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontOrientationAttribute: CFString
enum CTFontOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case horizontal
  case vertical
}
@available(watchOS 2.0, *)
let kCTFontFormatAttribute: CFString
enum CTFontFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case unrecognized
  case openTypePostScript
  case openTypeTrueType
  case trueType
  case postScript
  case bitmap
}
@available(watchOS 2.0, *)
let kCTFontRegistrationScopeAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontPriorityAttribute: CFString
var kCTFontPrioritySystem: Int { get }
var kCTFontPriorityNetwork: Int { get }
var kCTFontPriorityComputer: Int { get }
var kCTFontPriorityUser: Int { get }
var kCTFontPriorityDynamic: Int { get }
var kCTFontPriorityProcess: Int { get }
typealias CTFontPriority = UInt32
@available(watchOS 2.0, *)
let kCTFontEnabledAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontDownloadableAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontDownloadedAttribute: CFString
@available(watchOS 2.0, *)
let kCTFontOpticalSizeAttribute: CFString
@available(watchOS 2.0, *)
func CTFontDescriptorCreateWithNameAndSize(_ name: CFString, _ size: CGFloat) -> CTFontDescriptor
@available(watchOS 2.0, *)
func CTFontDescriptorCreateWithAttributes(_ attributes: CFDictionary) -> CTFontDescriptor
@available(watchOS 2.0, *)
func CTFontDescriptorCreateCopyWithAttributes(_ original: CTFontDescriptor, _ attributes: CFDictionary) -> CTFontDescriptor
@available(watchOS 2.0, *)
func CTFontDescriptorCreateCopyWithFamily(_ original: CTFontDescriptor, _ family: CFString) -> CTFontDescriptor?
@available(watchOS 2.0, *)
func CTFontDescriptorCreateCopyWithSymbolicTraits(_ original: CTFontDescriptor, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFontDescriptor?
@available(watchOS 2.0, *)
func CTFontDescriptorCreateCopyWithVariation(_ original: CTFontDescriptor, _ variationIdentifier: CFNumber, _ variationValue: CGFloat) -> CTFontDescriptor
@available(watchOS 2.0, *)
func CTFontDescriptorCreateCopyWithFeature(_ original: CTFontDescriptor, _ featureTypeIdentifier: CFNumber, _ featureSelectorIdentifier: CFNumber) -> CTFontDescriptor
@available(watchOS 2.0, *)
func CTFontDescriptorCreateMatchingFontDescriptors(_ descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CFArray?
@available(watchOS 2.0, *)
func CTFontDescriptorCreateMatchingFontDescriptor(_ descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CTFontDescriptor?
enum CTFontDescriptorMatchingState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case didBegin
  case didFinish
  case willBeginQuerying
  case stalled
  case willBeginDownloading
  case downloading
  case didFinishDownloading
  case didMatch
  case didFailWithError
}
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingSourceDescriptor: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingDescriptors: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingResult: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingPercentage: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingCurrentAssetSize: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingTotalDownloadedSize: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingTotalAssetSize: CFString
@available(watchOS 2.0, *)
let kCTFontDescriptorMatchingError: CFString
typealias CTFontDescriptorProgressHandler = (CTFontDescriptorMatchingState, CFDictionary) -> Bool
@available(watchOS 2.0, *)
func CTFontDescriptorMatchFontDescriptorsWithProgressHandler(_ descriptors: CFArray, _ mandatoryAttributes: CFSet?, _ progressBlock: @escaping CTFontDescriptorProgressHandler) -> Bool
@available(watchOS 2.0, *)
func CTFontDescriptorCopyAttributes(_ descriptor: CTFontDescriptor) -> CFDictionary
@available(watchOS 2.0, *)
func CTFontDescriptorCopyAttribute(_ descriptor: CTFontDescriptor, _ attribute: CFString) -> CFTypeRef?
@available(watchOS 2.0, *)
func CTFontDescriptorCopyLocalizedAttribute(_ descriptor: CTFontDescriptor, _ attribute: CFString, _ language: UnsafeMutablePointer<Unmanaged<CFString>?>?) -> CFTypeRef?
