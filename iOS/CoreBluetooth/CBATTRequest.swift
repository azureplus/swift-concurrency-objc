
@available(iOS 6.0, *)
class CBATTRequest : NSObject {
  var central: CBCentral { get }
  var characteristic: CBCharacteristic { get }
  var offset: Int { get }
  var value: Data?
}
