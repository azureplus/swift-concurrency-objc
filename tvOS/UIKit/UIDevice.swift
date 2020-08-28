
enum UIDeviceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case portrait
  case portraitUpsideDown
  case landscapeLeft
  case landscapeRight
  case faceUp
  case faceDown
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  @available(tvOS 3.2, *)
  case phone
  @available(tvOS 3.2, *)
  case pad
  @available(tvOS 9.0, *)
  case tv
  @available(tvOS 9.0, *)
  case carPlay
  @available(tvOS 14.0, *)
  case mac
}
extension UIDeviceOrientation {
  var isPortrait: Bool { get }
  var isLandscape: Bool { get }
  var isFlat: Bool { get }
  var isValidInterfaceOrientation: Bool { get }
}
@available(tvOS 2.0, *)
class UIDevice : NSObject {
  class var current: UIDevice { get }
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var orientation: UIDeviceOrientation { get }
  @available(tvOS 6.0, *)
  var identifierForVendor: UUID? { get }
  var isGeneratingDeviceOrientationNotifications: Bool { get }
  func beginGeneratingDeviceOrientationNotifications()
  func endGeneratingDeviceOrientationNotifications()
  @available(tvOS 3.0, *)
  var isBatteryMonitoringEnabled: Bool
  @available(tvOS 3.0, *)
  var batteryState: UIDevice.BatteryState { get }
  @available(tvOS 3.0, *)
  var batteryLevel: Float { get }
  @available(tvOS 3.0, *)
  var isProximityMonitoringEnabled: Bool
  @available(tvOS 3.0, *)
  var proximityState: Bool { get }
  @available(tvOS 4.0, *)
  var isMultitaskingSupported: Bool { get }
  @available(tvOS 3.2, *)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(tvOS 4.2, *)
  func playInputClick()
}
protocol UIInputViewAudioFeedback : NSObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
@available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -[UIDevice userInterfaceIdiom] directly.")
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
extension UIDevice {
  class let orientationDidChangeNotification: NSNotification.Name
  @available(tvOS 3.0, *)
  class let batteryStateDidChangeNotification: NSNotification.Name
  @available(tvOS 3.0, *)
  class let batteryLevelDidChangeNotification: NSNotification.Name
  @available(tvOS 3.0, *)
  class let proximityStateDidChangeNotification: NSNotification.Name
  enum BatteryState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case unplugged
    case charging
    case full
  }
}
