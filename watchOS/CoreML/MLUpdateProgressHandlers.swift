
@available(watchOS 6.0, *)
class MLUpdateProgressHandlers : NSObject {
  init(forEvents interestedEvents: MLUpdateProgressEvent, progressHandler: ((MLUpdateContext) -> Void)?, completionHandler: @escaping (MLUpdateContext) -> Void)
}
