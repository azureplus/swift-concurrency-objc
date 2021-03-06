
@available(iOS 11.0, *)
enum INRequestPaymentPayerUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case credentialsUnverified
  case noAccount
  @available(iOS 11.1, *)
  case noValidHandle
}
@available(iOS 11.0, *)
class INRequestPaymentPayerResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INRequestPaymentPayerUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
