
@available(iOS 2.0, *)
class UISlider : UIControl, NSCoding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var isContinuous: Bool
  @available(iOS 5.0, *)
  var minimumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var maximumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var thumbTintColor: UIColor?
  func setValue(_ value: Float, animated: Bool)
  func setThumbImage(_ image: UIImage?, for state: UIControl.State)
  func setMinimumTrackImage(_ image: UIImage?, for state: UIControl.State)
  func setMaximumTrackImage(_ image: UIImage?, for state: UIControl.State)
  func thumbImage(for state: UIControl.State) -> UIImage?
  func minimumTrackImage(for state: UIControl.State) -> UIImage?
  func maximumTrackImage(for state: UIControl.State) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRect(forBounds bounds: CGRect) -> CGRect
  func maximumValueImageRect(forBounds bounds: CGRect) -> CGRect
  func trackRect(forBounds bounds: CGRect) -> CGRect
  func thumbRect(forBounds bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect
}
