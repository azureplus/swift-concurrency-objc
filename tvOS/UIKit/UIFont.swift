
@available(tvOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(tvOS 7.0, *)
  class func preferredFont(forTextStyle style: UIFont.TextStyle) -> UIFont
  @available(tvOS 10.0, *)
  class func preferredFont(forTextStyle style: UIFont.TextStyle, compatibleWith traitCollection: UITraitCollection?) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class var familyNames: [String] { get }
  class func fontNames(forFamilyName familyName: String) -> [String]
  class func systemFont(ofSize fontSize: CGFloat) -> UIFont
  class func boldSystemFont(ofSize fontSize: CGFloat) -> UIFont
  class func italicSystemFont(ofSize fontSize: CGFloat) -> UIFont
  @available(tvOS 8.2, *)
  class func systemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(tvOS 9.0, *)
  class func monospacedDigitSystemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(tvOS 13.0, *)
  class func monospacedSystemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(tvOS 4.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(_ fontSize: CGFloat) -> UIFont
  @available(tvOS 7.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(tvOS 7.0, *)
  var fontDescriptor: UIFontDescriptor { get }
}
