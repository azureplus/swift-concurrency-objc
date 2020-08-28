
@available(watchOS 6.0, *)
class INTimeIntervalResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTimeInterval: TimeInterval) -> Self
  class func confirmationRequired(with timeIntervalToConfirm: TimeInterval) -> Self
}
