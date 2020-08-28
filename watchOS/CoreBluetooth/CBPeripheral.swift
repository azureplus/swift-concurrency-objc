
@available(watchOS 2.0, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disconnected
  case connecting
  case connected
  @available(watchOS 2.0, *)
  case disconnecting
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case withResponse
  case withoutResponse
}
@available(watchOS 2.0, *)
class CBPeripheral : CBPeer {
  weak var delegate: @sil_weak CBPeripheralDelegate?
  var name: String? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  var rssi: NSNumber? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  @available(watchOS 4.0, *)
  var canSendWriteWithoutResponse: Bool { get }
  @available(watchOS 6.0, *)
  var ancsAuthorized: Bool { get }
  func readRSSI()
  func discoverServices(_ serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(_ includedServiceUUIDs: [CBUUID]?, for service: CBService)
  func discoverCharacteristics(_ characteristicUUIDs: [CBUUID]?, for service: CBService)
  func readValue(for characteristic: CBCharacteristic)
  @available(watchOS 2.0, *)
  func maximumWriteValueLength(for type: CBCharacteristicWriteType) -> Int
  func writeValue(_ data: Data, for characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(_ enabled: Bool, for characteristic: CBCharacteristic)
  func discoverDescriptors(for characteristic: CBCharacteristic)
  func readValue(for descriptor: CBDescriptor)
  func writeValue(_ data: Data, for descriptor: CBDescriptor)
  @available(watchOS 4.0, *)
  func openL2CAPChannel(_ PSM: CBL2CAPPSM)
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func peripheralDidUpdateName(_ peripheral: CBPeripheral)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  optional func peripheralDidUpdateRSSI(_ peripheral: CBPeripheral, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheralIsReady(toSendWriteWithoutResponse peripheral: CBPeripheral)
  @available(watchOS 4.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didOpen channel: CBL2CAPChannel?, error: Error?)
}
