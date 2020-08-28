
@available(watchOS 2.0, *)
@frozen enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inside
  case outside
}
@available(watchOS 2.0, *)
enum CLProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case immediate
  case near
  case far
}
@available(watchOS 2.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Please see CLCircularRegion")
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Please see CLCircularRegion")
  var center: CLLocationCoordinate2D { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Please see CLCircularRegion")
  var radius: CLLocationDistance { get }
  @available(watchOS 2.0, *)
  var identifier: String { get }
  @available(watchOS 2.0, *)
  var notifyOnEntry: Bool
  @available(watchOS 2.0, *)
  var notifyOnExit: Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Please see CLCircularRegion")
  func contains(_ coordinate: CLLocationCoordinate2D) -> Bool
}
