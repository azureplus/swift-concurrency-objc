
@available(iOS 2.0, *)
class MPVolumeView : UIView, NSCoding {
  @available(iOS 4.2, *)
  var showsVolumeSlider: Bool
  @available(iOS, introduced: 4.2, deprecated: 13.0, message: "Use AVRoutePickerView instead.")
  var showsRouteButton: Bool
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use AVRouteDetector.multipleRoutesDetected instead.")
  var areWirelessRoutesAvailable: Bool { get }
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use AVPlayer.externalPlaybackActive instead.")
  var isWirelessRouteActive: Bool { get }
  @available(iOS 6.0, *)
  func setMinimumVolumeSliderImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  func setMaximumVolumeSliderImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  func setVolumeThumbImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  func minimumVolumeSliderImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func maximumVolumeSliderImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func volumeThumbImage(for state: UIControl.State) -> UIImage?
  @available(iOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(iOS 6.0, *)
  func volumeSliderRect(forBounds bounds: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func volumeThumbRect(forBounds bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "Use AVRoutePickerView.routePickerButtonStyle instead.")
  func setRouteButtonImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "See AVRoutePickerView for possible replacements.")
  func routeButtonImage(for state: UIControl.State) -> UIImage?
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "See AVRoutePickerView for possible replacements.")
  func routeButtonRect(forBounds bounds: CGRect) -> CGRect
}
extension NSNotification.Name {
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use AVRouteDetectorMultipleRoutesDetectedDidChangeNotification instead.")
  static let MPVolumeViewWirelessRoutesAvailableDidChange: NSNotification.Name
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use AVPlayer.externalPlaybackActive KVO instead.")
  static let MPVolumeViewWirelessRouteActiveDidChange: NSNotification.Name
}
