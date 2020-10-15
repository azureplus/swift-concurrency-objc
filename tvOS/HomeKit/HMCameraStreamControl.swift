
@available(tvOS 10.0, *)
class HMCameraStreamControl : HMCameraControl {
  weak var delegate: @sil_weak HMCameraStreamControlDelegate?
  var streamState: HMCameraStreamState { get }
  var cameraStream: HMCameraStream? { get }
  func startStream()
  func stopStream()
}
@available(tvOS 10.0, *)
protocol HMCameraStreamControlDelegate : NSObjectProtocol {
  @asyncHandler optional func cameraStreamControlDidStartStream(_ cameraStreamControl: HMCameraStreamControl)
  @asyncHandler optional func cameraStreamControl(_ cameraStreamControl: HMCameraStreamControl, didStopStreamWithError error: Error?)
}
