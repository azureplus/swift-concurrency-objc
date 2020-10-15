
var EAConnectionIDNone: Int { get }
@available(iOS 3.0, *)
class EAAccessory : NSObject {
  @available(iOS 3.0, *)
  var isConnected: Bool { get }
  @available(iOS 3.0, *)
  var connectionID: Int { get }
  @available(iOS 3.0, *)
  var manufacturer: String { get }
  @available(iOS 3.0, *)
  var name: String { get }
  @available(iOS 3.0, *)
  var modelNumber: String { get }
  @available(iOS 3.0, *)
  var serialNumber: String { get }
  @available(iOS 3.0, *)
  var firmwareRevision: String { get }
  @available(iOS 3.0, *)
  var hardwareRevision: String { get }
  @available(iOS, introduced: 9.3, deprecated: 13.0, message: "Not supported")
  var dockType: String { get }
  @available(iOS 3.0, *)
  var protocolStrings: [String] { get }
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged EAAccessoryDelegate?
}
protocol EAAccessoryDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  @asyncHandler optional func accessoryDidDisconnect(_ accessory: EAAccessory)
}
