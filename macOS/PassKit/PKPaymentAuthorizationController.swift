
protocol PKPaymentAuthorizationControllerDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  func paymentAuthorizationControllerDidFinish(_ controller: PKPaymentAuthorizationController)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment, completion: @escaping (PKPaymentAuthorizationStatus) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationControllerWillAuthorizePayment(_ controller: PKPaymentAuthorizationController)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didRequestMerchantSessionUpdate handler: @escaping (PKPaymentRequestMerchantSessionUpdate) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingMethod shippingMethod: PKShippingMethod, handler completion: @escaping (PKPaymentRequestShippingMethodUpdate) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingContact contact: PKContact, handler completion: @escaping (PKPaymentRequestShippingContactUpdate) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, handler completion: @escaping (PKPaymentRequestPaymentMethodUpdate) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingMethod shippingMethod: PKShippingMethod, completion: @escaping (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingContact contact: PKContact, completion: @escaping (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(macOS 11.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, completion: @escaping ([PKPaymentSummaryItem]) -> Void)
  @available(macOS 11.0, *)
  func presentationWindow(for controller: PKPaymentAuthorizationController) -> NSWindow?
}
@available(macOS 11.0, *)
class PKPaymentAuthorizationController : NSObject {
  class func canMakePayments() -> Bool
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork]) -> Bool
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork], capabilities capabilties: PKMerchantCapability) -> Bool
  weak var delegate: @sil_weak PKPaymentAuthorizationControllerDelegate?
  init(paymentRequest request: PKPaymentRequest)
  func present(completion: ((Bool) -> Void)? = nil)
  func dismiss(completion: (() -> Void)? = nil)
}
