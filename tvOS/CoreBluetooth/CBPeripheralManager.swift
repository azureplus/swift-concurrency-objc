
@available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use CBManagerAuthorization instead")
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(tvOS, introduced: 6.0, deprecated: 10.0, message: "Use CBManagerState instead")
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(tvOS 6.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}
@available(tvOS 6.0, *)
class CBPeripheralManager : CBManager {
  weak var delegate: @sil_weak CBPeripheralManagerDelegate?
  var isAdvertising: Bool { get }
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use CBManagerAuthorization instead")
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  func startAdvertising(_ advertisementData: [String : Any]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(_ latency: CBPeripheralManagerConnectionLatency, for central: CBCentral)
  func add(_ service: CBMutableService)
  func remove(_ service: CBMutableService)
  func removeAllServices()
  func respond(to request: CBATTRequest, withResult result: CBATTError.Code)
  func updateValue(_ value: Data, for characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  @available(tvOS 11.0, *)
  func publishL2CAPChannel(withEncryption encryptionRequired: Bool)
  @available(tvOS 11.0, *)
  func unpublishL2CAPChannel(_ PSM: CBL2CAPPSM)
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  @asyncHandler func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String : Any])
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest])
  @available(tvOS 6.0, *)
  optional func peripheralManagerIsReady(toUpdateSubscribers peripheral: CBPeripheralManager)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, didPublishL2CAPChannel PSM: CBL2CAPPSM, error: Error?)
  @available(tvOS 6.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, didUnpublishL2CAPChannel PSM: CBL2CAPPSM, error: Error?)
  @available(tvOS 11.0, *)
  @asyncHandler optional func peripheralManager(_ peripheral: CBPeripheralManager, didOpen channel: CBL2CAPChannel?, error: Error?)
}
