
@available(tvOS 13.0, *)
struct HMHomeManagerAuthorizationStatus : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var determined: HMHomeManagerAuthorizationStatus { get }
  static var restricted: HMHomeManagerAuthorizationStatus { get }
  static var authorized: HMHomeManagerAuthorizationStatus { get }
}
@available(tvOS 10.0, *)
class HMHomeManager : NSObject {
  weak var delegate: @sil_weak HMHomeManagerDelegate?
  @available(tvOS 13.0, *)
  var authorizationStatus: HMHomeManagerAuthorizationStatus { get }
  var primaryHome: HMHome? { get }
  var homes: [HMHome] { get }
}
@available(tvOS 10.0, *)
protocol HMHomeManagerDelegate : NSObjectProtocol {
  @available(tvOS 13.0, *)
  @asyncHandler optional func homeManager(_ manager: HMHomeManager, didUpdate status: HMHomeManagerAuthorizationStatus)
  @asyncHandler optional func homeManagerDidUpdateHomes(_ manager: HMHomeManager)
  @asyncHandler optional func homeManagerDidUpdatePrimaryHome(_ manager: HMHomeManager)
  @asyncHandler optional func homeManager(_ manager: HMHomeManager, didAdd home: HMHome)
  @asyncHandler optional func homeManager(_ manager: HMHomeManager, didRemove home: HMHome)
}
