
@available(tvOS 2.0, *)
class UILabel : UIView, NSCoding, UIContentSizeCategoryAdjusting {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var highlightedTextColor: UIColor?
  var isHighlighted: Bool
  var isEnabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  @available(tvOS 6.0, *)
  var minimumScaleFactor: CGFloat
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy
  func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawText(in rect: CGRect)
  @available(tvOS 6.0, *)
  var preferredMaxLayoutWidth: CGFloat
  @available(tvOS 12.0, *)
  var enablesMarqueeWhenAncestorFocused: Bool
}
