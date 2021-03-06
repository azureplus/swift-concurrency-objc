
@available(iOS 12.0, *)
enum INPlayMediaIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case inProgress
  case success
  case handleInApp
  case failure
  case failureRequiringAppLaunch
  case failureUnknownMediaType
  case failureNoUnplayedContent
  case failureRestrictedContent
}
@available(iOS 12.0, *)
class INPlayMediaIntentResponse : INIntentResponse {
  init(code: INPlayMediaIntentResponseCode, userActivity: NSUserActivity?)
  var code: INPlayMediaIntentResponseCode { get }
  var nowPlayingInfo: [String : Any]?
}
