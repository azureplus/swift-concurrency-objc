
@available(iOS 10.0, *)
class UNNotificationContent : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var attachments: [UNNotificationAttachment] { get }
  @NSCopying var badge: NSNumber? { get }
  var body: String { get }
  var categoryIdentifier: String { get }
  var launchImageName: String { get }
  @NSCopying var sound: UNNotificationSound? { get }
  var subtitle: String { get }
  var threadIdentifier: String { get }
  var title: String { get }
  var userInfo: [AnyHashable : Any] { get }
  @available(iOS 12.0, *)
  var summaryArgument: String { get }
  @available(iOS 12.0, *)
  var summaryArgumentCount: Int { get }
  @available(iOS 13.0, *)
  var targetContentIdentifier: String? { get }
}
@available(iOS 10.0, *)
class UNMutableNotificationContent : UNNotificationContent {
}
