
@available(tvOS 10.0, *)
class CBManager : NSObject {
  var state: CBManagerState { get }
  @available(tvOS, introduced: 13.0, deprecated: 13.1)
  var authorization: CBManagerAuthorization { get }
  @available(tvOS 13.0, *)
  class var authorization: CBManagerAuthorization { get }
}
@available(tvOS 10.0, *)
enum CBManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(tvOS 13.0, *)
enum CBManagerAuthorization : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case allowedAlways
}
