
struct CAAnimationCalculationMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAAnimationRotationMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CATransitionType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CATransitionSubtype : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 2.0, *)
class CAAnimation : NSObject, NSSecureCoding, NSCopying, CAMediaTiming, CAAction {
  class func defaultValue(forKey key: String) -> Any?
  func shouldArchiveValue(forKey key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: CAAnimationDelegate?
  var isRemovedOnCompletion: Bool
}
protocol CAAnimationDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func animationDidStart(_ anim: CAAnimation)
  @available(iOS 2.0, *)
  optional func animationDidStop(_ anim: CAAnimation, finished flag: Bool)
}
@available(iOS 2.0, *)
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
}
@available(iOS 2.0, *)
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: Any?
  var toValue: Any?
  var byValue: Any?
}
@available(iOS 2.0, *)
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [Any]?
  var path: CGPath?
  var keyTimes: [NSNumber]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: CAAnimationCalculationMode
  var tensionValues: [NSNumber]?
  var continuityValues: [NSNumber]?
  var biasValues: [NSNumber]?
  var rotationMode: CAAnimationRotationMode?
}
extension CAAnimationCalculationMode {
  @available(iOS 2.0, *)
  static let linear: CAAnimationCalculationMode
  @available(iOS 2.0, *)
  static let discrete: CAAnimationCalculationMode
  @available(iOS 2.0, *)
  static let paced: CAAnimationCalculationMode
  @available(iOS 4.0, *)
  static let cubic: CAAnimationCalculationMode
  @available(iOS 4.0, *)
  static let cubicPaced: CAAnimationCalculationMode
}
extension CAAnimationRotationMode {
  @available(iOS 2.0, *)
  static let rotateAuto: CAAnimationRotationMode
  @available(iOS 2.0, *)
  static let rotateAutoReverse: CAAnimationRotationMode
}
@available(iOS 9.0, *)
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
}
@available(iOS 2.0, *)
class CATransition : CAAnimation {
  var type: CATransitionType
  var subtype: CATransitionSubtype?
  var startProgress: Float
  var endProgress: Float
}
extension CATransitionType {
  @available(iOS 2.0, *)
  static let fade: CATransitionType
  @available(iOS 2.0, *)
  static let moveIn: CATransitionType
  @available(iOS 2.0, *)
  static let push: CATransitionType
  @available(iOS 2.0, *)
  static let reveal: CATransitionType
}
extension CATransitionSubtype {
  @available(iOS 2.0, *)
  static let fromRight: CATransitionSubtype
  @available(iOS 2.0, *)
  static let fromLeft: CATransitionSubtype
  @available(iOS 2.0, *)
  static let fromTop: CATransitionSubtype
  @available(iOS 2.0, *)
  static let fromBottom: CATransitionSubtype
}
@available(iOS 2.0, *)
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
}
