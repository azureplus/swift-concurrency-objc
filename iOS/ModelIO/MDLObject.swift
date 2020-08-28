
@available(iOS 9.0, *)
class MDLObject : NSObject, MDLNamed {
  var components: [MDLComponent] { get }
  func setComponent(_ component: MDLComponent, for protocol: Protocol)
  func componentConforming(to protocol: Protocol) -> MDLComponent?
  subscript(key: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var instance: MDLObject?
  var path: String { get }
  func atPath(_ path: String) -> MDLObject
  @available(iOS 11.0, *)
  func enumerateChildObjects(of objectClass: AnyClass, root: MDLObject, using block: @escaping (MDLObject, UnsafeMutablePointer<ObjCBool>) -> Void, stopPointer: UnsafeMutablePointer<ObjCBool>)
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  var hidden: Bool
  func addChild(_ child: MDLObject)
  func boundingBox(atTime time: TimeInterval) -> MDLAxisAlignedBoundingBox
}
@available(iOS 9.0, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
}
