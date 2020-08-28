
@available(tvOS 9.0, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
}
@available(tvOS 9.0, *)
class AVMutableAudioMix : AVAudioMix {
}
@available(tvOS 9.0, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(tvOS 9.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm? { get }
  @available(tvOS 9.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRamp(for time: CMTime, startVolume: UnsafeMutablePointer<Float>?, endVolume: UnsafeMutablePointer<Float>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
}
@available(tvOS 9.0, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  func setVolumeRamp(fromStartVolume startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(_ volume: Float, at time: CMTime)
}
