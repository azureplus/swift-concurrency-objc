
@available(watchOS 7.0, *)
protocol CMHeadphoneMotionManagerDelegate : NSObjectProtocol {
  optional func headphoneMotionManagerDidConnect(_ manager: CMHeadphoneMotionManager)
  optional func headphoneMotionManagerDidDisconnect(_ manager: CMHeadphoneMotionManager)
}
