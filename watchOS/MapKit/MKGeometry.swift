
struct MKCoordinateSpan {
  var latitudeDelta: CLLocationDegrees
  var longitudeDelta: CLLocationDegrees
  init()
  init(latitudeDelta: CLLocationDegrees, longitudeDelta: CLLocationDegrees)
}

extension MKCoordinateSpan : _ObjectiveCBridgeable {
}
struct MKCoordinateRegion {
  var center: CLLocationCoordinate2D
  var span: MKCoordinateSpan
  init()
  init(center: CLLocationCoordinate2D, span: MKCoordinateSpan)
}
extension MKCoordinateRegion {
  /*not inherited*/ init(center centerCoordinate: CLLocationCoordinate2D, latitudinalMeters: CLLocationDistance, longitudinalMeters: CLLocationDistance)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(_ rect: MKMapRect)
}
struct MKMapPoint {
  var x: Double
  var y: Double
  init()
  init(x: Double, y: Double)
}
struct MKMapSize {
  var width: Double
  var height: Double
  init()
  init(width: Double, height: Double)
}
struct MKMapRect {
  var origin: MKMapPoint
  var size: MKMapSize
  init()
  init(origin: MKMapPoint, size: MKMapSize)
}
typealias MKZoomScale = CGFloat
extension MKMapSize {
  @available(watchOS 2.0, *)
  static let world: MKMapSize
}
extension MKMapRect {
  @available(watchOS 2.0, *)
  static let world: MKMapRect
  @available(watchOS 2.0, *)
  static let null: MKMapRect
  /*not inherited*/ init(x: Double, y: Double, width: Double, height: Double)
  var minX: Double { get }
  var minY: Double { get }
  var midX: Double { get }
  var midY: Double { get }
  var maxX: Double { get }
  var maxY: Double { get }
  var width: Double { get }
  var height: Double { get }
  var isNull: Bool { get }
  var isEmpty: Bool { get }
  @available(watchOS 2.0, *)
  func union(_ rect2: MKMapRect) -> MKMapRect
  @available(watchOS 2.0, *)
  func intersection(_ rect2: MKMapRect) -> MKMapRect
  @available(watchOS 2.0, *)
  func insetBy(dx: Double, dy: Double) -> MKMapRect
  @available(watchOS 2.0, *)
  func offsetBy(dx: Double, dy: Double) -> MKMapRect
  @available(watchOS 2.0, *)
  func contains(_ point: MKMapPoint) -> Bool
  @available(watchOS 2.0, *)
  func contains(_ rect2: MKMapRect) -> Bool
  @available(watchOS 2.0, *)
  func intersects(_ rect2: MKMapRect) -> Bool
  @available(watchOS 2.0, *)
  var spans180thMeridian: Bool { get }
  @available(watchOS 2.0, *)
  var remainder: MKMapRect { get }
}
extension MKMapPoint {
  @available(watchOS 2.0, *)
  /*not inherited*/ init(_ coordinate: CLLocationCoordinate2D)
  @available(watchOS 2.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(watchOS 2.0, *)
  func distance(to b: MKMapPoint) -> CLLocationDistance
}
@available(watchOS 2.0, *)
func MKMetersPerMapPointAtLatitude(_ latitude: CLLocationDegrees) -> CLLocationDistance
@available(watchOS 2.0, *)
func MKMapPointsPerMeterAtLatitude(_ latitude: CLLocationDegrees) -> Double
func MKMapPointEqualToPoint(_ point1: MKMapPoint, _ point2: MKMapPoint) -> Bool
func MKMapSizeEqualToSize(_ size1: MKMapSize, _ size2: MKMapSize) -> Bool
func MKMapRectEqualToRect(_ rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
func MKStringFromMapPoint(_ point: MKMapPoint) -> String
func MKStringFromMapSize(_ size: MKMapSize) -> String
func MKStringFromMapRect(_ rect: MKMapRect) -> String
@available(watchOS 2.0, *)
func MKMapRectDivide(_ rect: MKMapRect, _ slice: UnsafeMutablePointer<MKMapRect>, _ remainder: UnsafeMutablePointer<MKMapRect>, _ amount: Double, _ edge: CGRectEdge)
extension NSValue {
  /*not inherited*/ init(mkCoordinate coordinate: CLLocationCoordinate2D)
  /*not inherited*/ init(mkCoordinateSpan span: MKCoordinateSpan)
  var mkCoordinateValue: CLLocationCoordinate2D { get }
  var mkCoordinateSpanValue: MKCoordinateSpan { get }
}
