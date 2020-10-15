
enum EAWiFiUnconfiguredAccessoryBrowserState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case wiFiUnavailable
  case stopped
  case searching
  case configuring
}
enum EAWiFiUnconfiguredAccessoryConfigurationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case userCancelledConfiguration
  case failed
}
@available(iOS 8.0, *)
class EAWiFiUnconfiguredAccessoryBrowser : NSObject {
  weak var delegate: @sil_weak EAWiFiUnconfiguredAccessoryBrowserDelegate?
  var unconfiguredAccessories: Set<EAWiFiUnconfiguredAccessory> { get }
  @available(iOS 8.0, *)
  init(delegate: EAWiFiUnconfiguredAccessoryBrowserDelegate?, queue: DispatchQueue?)
  @available(iOS 8.0, *)
  func startSearchingForUnconfiguredAccessories(matching predicate: NSPredicate?)
  @available(iOS 8.0, *)
  func stopSearchingForUnconfiguredAccessories()
}
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  @asyncHandler func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didUpdate state: EAWiFiUnconfiguredAccessoryBrowserState)
  @available(iOS 8.0, *)
  @asyncHandler func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didFindUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  @available(iOS 8.0, *)
  @asyncHandler func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didRemoveUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  @available(iOS 8.0, *)
  @asyncHandler func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didFinishConfiguringAccessory accessory: EAWiFiUnconfiguredAccessory, with status: EAWiFiUnconfiguredAccessoryConfigurationStatus)
}
