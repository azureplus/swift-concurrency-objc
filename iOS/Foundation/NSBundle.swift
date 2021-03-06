
class Bundle : NSObject {
  class var main: Bundle { get }
  init?(path: String)
  @available(iOS 4.0, *)
  convenience init?(url: URL)
  /*not inherited*/ init(for aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class var allBundles: [Bundle] { get }
  class var allFrameworks: [Bundle] { get }
  func load() -> Bool
  var isLoaded: Bool { get }
  func unload() -> Bool
  @available(iOS 2.0, *)
  func preflight() throws
  @available(iOS 2.0, *)
  func loadAndReturnError() throws
  @available(iOS 4.0, *)
  var bundleURL: URL { get }
  @available(iOS 4.0, *)
  var resourceURL: URL? { get }
  @available(iOS 4.0, *)
  var executableURL: URL? { get }
  @available(iOS 4.0, *)
  func url(forAuxiliaryExecutable executableName: String) -> URL?
  @available(iOS 4.0, *)
  var privateFrameworksURL: URL? { get }
  @available(iOS 4.0, *)
  var sharedFrameworksURL: URL? { get }
  @available(iOS 4.0, *)
  var sharedSupportURL: URL? { get }
  @available(iOS 4.0, *)
  var builtInPlugInsURL: URL? { get }
  @available(iOS 7.0, *)
  var appStoreReceiptURL: URL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func path(forAuxiliaryExecutable executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(iOS 4.0, *)
  class func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, in bundleURL: URL) -> URL?
  @available(iOS 4.0, *)
  class func urls(forResourcesWithExtension ext: String?, subdirectory subpath: String?, in bundleURL: URL) -> [URL]?
  @available(iOS 4.0, *)
  func url(forResource name: String?, withExtension ext: String?) -> URL?
  @available(iOS 4.0, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?) -> URL?
  @available(iOS 4.0, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> URL?
  @available(iOS 4.0, *)
  func urls(forResourcesWithExtension ext: String?, subdirectory subpath: String?) -> [URL]?
  @available(iOS 4.0, *)
  func urls(forResourcesWithExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [URL]?
  class func path(forResource name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func paths(forResourcesOfType ext: String?, inDirectory bundlePath: String) -> [String]
  func path(forResource name: String?, ofType ext: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func paths(forResourcesOfType ext: String?, inDirectory subpath: String?) -> [String]
  func paths(forResourcesOfType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedString(forKey key: String, value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : Any]? { get }
  var localizedInfoDictionary: [String : Any]? { get }
  func object(forInfoDictionaryKey key: String) -> Any?
  func classNamed(_ className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizations(from localizationsArray: [String]) -> [String]
  class func preferredLocalizations(from localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(iOS 2.0, *)
  var executableArchitectures: [NSNumber]? { get }
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
@available(iOS 14.0, *)
var NSBundleExecutableArchitectureARM64: Int { get }
extension NSString {
  @available(iOS 9.0, *)
  func variantFittingPresentationWidth(_ width: Int) -> String
}
extension Bundle {
  class let didLoadNotification: NSNotification.Name
}
let NSLoadedClasses: String
@available(iOS 9.0, *)
class NSBundleResourceRequest : NSObject, ProgressReporting {
  convenience init(tags: Set<String>)
  init(tags: Set<String>, bundle: Bundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: Bundle { get }
  func beginAccessingResources(completionHandler: @escaping (Error?) -> Void)
  func conditionallyBeginAccessingResources(completionHandler: @escaping (Bool) -> Void)
  func endAccessingResources()
}
extension Bundle {
  @available(iOS 9.0, *)
  func setPreservationPriority(_ priority: Double, forTags tags: Set<String>)
  @available(iOS 9.0, *)
  func preservationPriority(forTag tag: String) -> Double
}
extension NSNotification.Name {
  @available(iOS 9.0, *)
  static let NSBundleResourceRequestLowDiskSpace: NSNotification.Name
}
@available(iOS 9.0, *)
let NSBundleResourceRequestLoadingPriorityUrgent: Double
