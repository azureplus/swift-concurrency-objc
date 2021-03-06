
class CFHost : _CFObject {
}
@available(tvOS 2.0, *)
let kCFStreamErrorDomainNetDB: Int32
@available(tvOS 2.0, *)
let kCFStreamErrorDomainSystemConfiguration: Int32
enum CFHostInfoType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case addresses
  case names
  case reachability
}
struct CFHostClientContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFHostClientCallBack = @convention(c) (CFHost, CFHostInfoType, UnsafePointer<CFStreamError>?, UnsafeMutableRawPointer?) -> Void
@available(tvOS 2.0, *)
func CFHostGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CFHostCreateWithName(_ allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
@available(tvOS 2.0, *)
func CFHostCreateWithAddress(_ allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
@available(tvOS 2.0, *)
func CFHostCreateCopy(_ alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
@available(tvOS 2.0, *)
func CFHostStartInfoResolution(_ theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(tvOS 2.0, *)
func CFHostGetAddressing(_ theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>?) -> Unmanaged<CFArray>?
@available(tvOS 2.0, *)
func CFHostGetNames(_ theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>?) -> Unmanaged<CFArray>?
@available(tvOS 2.0, *)
func CFHostGetReachability(_ theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>?) -> Unmanaged<CFData>?
@available(tvOS 2.0, *)
func CFHostCancelInfoResolution(_ theHost: CFHost, _ info: CFHostInfoType)
@available(tvOS 2.0, *)
func CFHostSetClient(_ theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>?) -> Bool
@available(tvOS 2.0, *)
func CFHostScheduleWithRunLoop(_ theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(tvOS 2.0, *)
func CFHostUnscheduleFromRunLoop(_ theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
