
@available(iOS 11.0, *)
class PKPaymentAuthorizationResult : NSObject {
  init(status: PKPaymentAuthorizationStatus, errors: [Error]?)
  var status: PKPaymentAuthorizationStatus
  var errors: [Error]!
}
@available(iOS 11.0, *)
class PKPaymentRequestUpdate : NSObject {
  init(paymentSummaryItems: [PKPaymentSummaryItem])
  var status: PKPaymentAuthorizationStatus
  var paymentSummaryItems: [PKPaymentSummaryItem]
}
@available(iOS 11.0, *)
class PKPaymentRequestShippingContactUpdate : PKPaymentRequestUpdate {
  init(errors: [Error]?, paymentSummaryItems: [PKPaymentSummaryItem], shippingMethods: [PKShippingMethod])
  var shippingMethods: [PKShippingMethod]
  var errors: [Error]!
}
@available(iOS 11.0, *)
class PKPaymentRequestShippingMethodUpdate : PKPaymentRequestUpdate {
}
@available(iOS 11.0, *)
class PKPaymentRequestPaymentMethodUpdate : PKPaymentRequestUpdate {
  init(errors: [Error]?, paymentSummaryItems: [PKPaymentSummaryItem])
  var errors: [Error]!
}
@available(iOS 14.0, *)
class PKPaymentRequestMerchantSessionUpdate : NSObject {
  init(status: PKPaymentAuthorizationStatus, merchantSession session: PKPaymentMerchantSession?)
  var status: PKPaymentAuthorizationStatus
  var session: PKPaymentMerchantSession?
}
