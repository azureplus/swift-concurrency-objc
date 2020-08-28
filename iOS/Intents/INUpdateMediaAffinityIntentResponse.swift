
@available(iOS 13.0, *)
enum INUpdateMediaAffinityIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(iOS 13.0, *)
class INUpdateMediaAffinityIntentResponse : INIntentResponse {
  init(code: INUpdateMediaAffinityIntentResponseCode, userActivity: NSUserActivity?)
  var code: INUpdateMediaAffinityIntentResponseCode { get }
}
