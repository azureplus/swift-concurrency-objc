
@available(macOS 10.7, *)
class AVComposition : AVAsset, NSMutableCopying {
  @available(macOS 10.11, *)
  var urlAssetInitializationOptions: [String : Any] { get }
}
extension AVComposition {
}
@available(macOS 10.7, *)
class AVMutableComposition : AVComposition {
  @available(macOS 10.11, *)
  convenience init(urlAssetInitializationOptions URLAssetInitializationOptions: [String : Any]? = nil)
}
extension AVMutableComposition {
  func insertTimeRange(_ timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrack(withMediaType mediaType: AVMediaType, preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack?
  func removeTrack(_ track: AVCompositionTrack)
  func mutableTrack(compatibleWith track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
}
