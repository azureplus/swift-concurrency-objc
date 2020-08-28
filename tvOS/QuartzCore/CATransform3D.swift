
struct CATransform3D {
  var m11: CGFloat
  var m12: CGFloat
  var m13: CGFloat
  var m14: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var m23: CGFloat
  var m24: CGFloat
  var m31: CGFloat
  var m32: CGFloat
  var m33: CGFloat
  var m34: CGFloat
  var m41: CGFloat
  var m42: CGFloat
  var m43: CGFloat
  var m44: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m13: CGFloat, m14: CGFloat, m21: CGFloat, m22: CGFloat, m23: CGFloat, m24: CGFloat, m31: CGFloat, m32: CGFloat, m33: CGFloat, m34: CGFloat, m41: CGFloat, m42: CGFloat, m43: CGFloat, m44: CGFloat)
}

extension CATransform3D : _ObjectiveCBridgeable {
}
@available(tvOS 9.0, *)
let CATransform3DIdentity: CATransform3D
@available(tvOS 9.0, *)
func CATransform3DIsIdentity(_ t: CATransform3D) -> Bool
@available(tvOS 9.0, *)
func CATransform3DEqualToTransform(_ a: CATransform3D, _ b: CATransform3D) -> Bool
@available(tvOS 9.0, *)
func CATransform3DMakeTranslation(_ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DMakeScale(_ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DMakeRotation(_ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DTranslate(_ t: CATransform3D, _ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DScale(_ t: CATransform3D, _ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DRotate(_ t: CATransform3D, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DConcat(_ a: CATransform3D, _ b: CATransform3D) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DInvert(_ t: CATransform3D) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DMakeAffineTransform(_ m: CGAffineTransform) -> CATransform3D
@available(tvOS 9.0, *)
func CATransform3DIsAffine(_ t: CATransform3D) -> Bool
@available(tvOS 9.0, *)
func CATransform3DGetAffineTransform(_ t: CATransform3D) -> CGAffineTransform
extension NSValue {
  /*not inherited*/ init(caTransform3D t: CATransform3D)
  var caTransform3DValue: CATransform3D { get }
}
