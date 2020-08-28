
extension GCControllerElement {
  enum SystemGestureState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case enabled
    case alwaysReceive
    case disabled
  }
}
@available(tvOS 7.0, *)
class GCControllerElement : NSObject {
  weak var collection: @sil_weak GCControllerElement? { get }
  var isAnalog: Bool { get }
  var isBoundToSystemGesture: Bool { get }
  var preferredSystemGestureState: GCControllerElement.SystemGestureState
  var sfSymbolsName: String?
  var localizedName: String?
  @available(tvOS 14.0, *)
  var aliases: Set<String> { get }
}
