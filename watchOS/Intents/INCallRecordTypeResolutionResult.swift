
@available(watchOS 4.0, *)
class INCallRecordTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCallRecordType: INCallRecordType) -> Self
  class func confirmationRequired(with callRecordTypeToConfirm: INCallRecordType) -> Self
}
