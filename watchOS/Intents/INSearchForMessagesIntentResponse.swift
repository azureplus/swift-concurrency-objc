
@available(watchOS 3.2, *)
enum INSearchForMessagesIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureMessageServiceNotAvailable
  case failureMessageTooManyResults
}
@available(watchOS 3.2, *)
class INSearchForMessagesIntentResponse : INIntentResponse {
  init(code: INSearchForMessagesIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForMessagesIntentResponseCode { get }
  var messages: [INMessage]?
}
