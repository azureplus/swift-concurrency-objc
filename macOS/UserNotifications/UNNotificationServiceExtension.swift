
@available(macOS 10.14, *)
class UNNotificationServiceExtension : NSObject {
  func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void)
  func serviceExtensionTimeWillExpire()
}
