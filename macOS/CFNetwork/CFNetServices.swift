
class CFNetService : _CFObject {
}
class CFNetServiceMonitor : _CFObject {
}
class CFNetServiceBrowser : _CFObject {
}
@available(macOS 10.2, *)
let kCFStreamErrorDomainMach: Int32
@available(macOS 10.2, *)
let kCFStreamErrorDomainNetServices: Int32
enum CFNetServicesError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case collision
  case notFound
  case inProgress
  case badArgument
  case cancel
  case invalid
  case timeout
  @available(macOS 11.0, *)
  case missingRequiredConfiguration
}
enum CFNetServiceMonitorType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TXT
}
struct CFNetServiceRegisterFlags : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var noAutoRename: CFNetServiceRegisterFlags { get }
}
struct CFNetServiceBrowserFlags : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var moreComing: CFNetServiceBrowserFlags { get }
  static var isDomain: CFNetServiceBrowserFlags { get }
  static var isDefault: CFNetServiceBrowserFlags { get }
  static var remove: CFNetServiceBrowserFlags { get }
}
struct CFNetServiceClientContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFNetServiceClientCallBack = @convention(c) (CFNetService, UnsafeMutablePointer<CFStreamError>?, UnsafeMutableRawPointer?) -> Void
typealias CFNetServiceMonitorClientCallBack = @convention(c) (CFNetServiceMonitor, CFNetService?, CFNetServiceMonitorType, CFData?, UnsafeMutablePointer<CFStreamError>?, UnsafeMutableRawPointer?) -> Void
typealias CFNetServiceBrowserClientCallBack = @convention(c) (CFNetServiceBrowser, CFOptionFlags, CFTypeRef?, UnsafeMutablePointer<CFStreamError>?, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.2, *)
func CFNetServiceGetTypeID() -> CFTypeID
@available(macOS 10.4, *)
func CFNetServiceMonitorGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
func CFNetServiceBrowserGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
func CFNetServiceCreate(_ alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
@available(macOS 10.3, *)
func CFNetServiceCreateCopy(_ alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
@available(macOS 10.2, *)
func CFNetServiceGetDomain(_ theService: CFNetService) -> Unmanaged<CFString>
@available(macOS 10.2, *)
func CFNetServiceGetType(_ theService: CFNetService) -> Unmanaged<CFString>
@available(macOS 10.2, *)
func CFNetServiceGetName(_ theService: CFNetService) -> Unmanaged<CFString>
@available(macOS 10.4, *)
func CFNetServiceRegisterWithOptions(_ theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.4, *)
func CFNetServiceResolveWithTimeout(_ theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.2, *)
func CFNetServiceCancel(_ theService: CFNetService)
@available(macOS 10.4, *)
func CFNetServiceGetTargetHost(_ theService: CFNetService) -> Unmanaged<CFString>?
@available(macOS 10.5, *)
func CFNetServiceGetPortNumber(_ theService: CFNetService) -> Int32
@available(macOS 10.2, *)
func CFNetServiceGetAddressing(_ theService: CFNetService) -> Unmanaged<CFArray>?
@available(macOS 10.4, *)
func CFNetServiceGetTXTData(_ theService: CFNetService) -> Unmanaged<CFData>?
@available(macOS 10.4, *)
func CFNetServiceSetTXTData(_ theService: CFNetService, _ txtRecord: CFData) -> Bool
@available(macOS 10.4, *)
func CFNetServiceCreateDictionaryWithTXTData(_ alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
@available(macOS 10.4, *)
func CFNetServiceCreateTXTDataWithDictionary(_ alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
@available(macOS 10.2, *)
func CFNetServiceSetClient(_ theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>?) -> Bool
@available(macOS 10.2, *)
func CFNetServiceScheduleWithRunLoop(_ theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.2, *)
func CFNetServiceUnscheduleFromRunLoop(_ theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.4, *)
func CFNetServiceMonitorCreate(_ alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
@available(macOS 10.4, *)
func CFNetServiceMonitorInvalidate(_ monitor: CFNetServiceMonitor)
@available(macOS 10.4, *)
func CFNetServiceMonitorStart(_ monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.4, *)
func CFNetServiceMonitorStop(_ monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>?)
@available(macOS 10.4, *)
func CFNetServiceMonitorScheduleWithRunLoop(_ monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.4, *)
func CFNetServiceMonitorUnscheduleFromRunLoop(_ monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.2, *)
func CFNetServiceBrowserCreate(_ alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
@available(macOS 10.2, *)
func CFNetServiceBrowserInvalidate(_ browser: CFNetServiceBrowser)
@available(macOS 10.2, *)
func CFNetServiceBrowserSearchForDomains(_ browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.2, *)
func CFNetServiceBrowserSearchForServices(_ browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.2, *)
func CFNetServiceBrowserStopSearch(_ browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>?)
@available(macOS 10.2, *)
func CFNetServiceBrowserScheduleWithRunLoop(_ browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.2, *)
func CFNetServiceBrowserUnscheduleFromRunLoop(_ browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
