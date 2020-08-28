
@available(iOS 6, *)
class ASIdentifierManager : NSObject {
  class func shared() -> ASIdentifierManager
  var advertisingIdentifier: UUID { get }
  @available(iOS, introduced: 6, deprecated: 14, message: "This has been replaced by functionality in AppTrackingTransparency's ATTrackingManager class.")
  var isAdvertisingTrackingEnabled: Bool { get }
}
