
struct CMRotationMatrix {
  var m11: Double
  var m12: Double
  var m13: Double
  var m21: Double
  var m22: Double
  var m23: Double
  var m31: Double
  var m32: Double
  var m33: Double
  init()
  init(m11: Double, m12: Double, m13: Double, m21: Double, m22: Double, m23: Double, m31: Double, m32: Double, m33: Double)
}
struct CMQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}
struct CMAttitudeReferenceFrame : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var xArbitraryZVertical: CMAttitudeReferenceFrame { get }
  static var xArbitraryCorrectedZVertical: CMAttitudeReferenceFrame { get }
  static var xMagneticNorthZVertical: CMAttitudeReferenceFrame { get }
  static var xTrueNorthZVertical: CMAttitudeReferenceFrame { get }
}
@available(watchOS 2.0, *)
class CMAttitude : NSObject, NSCopying, NSSecureCoding {
  var roll: Double { get }
  var pitch: Double { get }
  var yaw: Double { get }
  var rotationMatrix: CMRotationMatrix { get }
  var quaternion: CMQuaternion { get }
  func multiply(byInverseOf attitude: CMAttitude)
}
