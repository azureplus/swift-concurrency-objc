
@available(iOS 10.0, *)
class UIGraphicsRendererFormat : NSObject, NSCopying {
  @available(iOS 10.0, *)
  class func `default`() -> Self
  @available(iOS 11.0, *)
  class func preferred() -> Self
  var bounds: CGRect { get }
}
@available(iOS 10.0, *)
class UIGraphicsRendererContext : NSObject {
  var cgContext: CGContext { get }
  var format: UIGraphicsRendererFormat { get }
  func fill(_ rect: CGRect)
  func fill(_ rect: CGRect, blendMode: CGBlendMode)
  func stroke(_ rect: CGRect)
  func stroke(_ rect: CGRect, blendMode: CGBlendMode)
  func clip(to rect: CGRect)
}
@available(iOS 10.0, *)
class UIGraphicsRenderer : NSObject {
  convenience init(bounds: CGRect)
  init(bounds: CGRect, format: UIGraphicsRendererFormat)
  var format: UIGraphicsRendererFormat { get }
  var allowsImageOutput: Bool { get }
}
