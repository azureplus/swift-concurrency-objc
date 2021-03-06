
extension CKNotification {
  @available(macOS 10.10, *)
  class ID : NSObject, NSCopying, NSSecureCoding {
  }
  @available(macOS 10.10, *)
  enum NotificationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case query
    case recordZone
    case readNotification
    @available(macOS 10.12, *)
    case database
  }
}
@available(macOS 10.10, *)
class CKNotification : NSObject {
  convenience init?(fromRemoteNotificationDictionary notificationDictionary: [AnyHashable : Any])
  var notificationType: CKNotification.NotificationType { get }
  @NSCopying var notificationID: CKNotification.ID? { get }
  var containerIdentifier: String? { get }
  @available(macOS 10.15, *)
  @NSCopying var subscriptionOwnerUserRecordID: CKRecord.ID? { get }
  var isPruned: Bool { get }
  var alertBody: String? { get }
  var alertLocalizationKey: String? { get }
  var alertLocalizationArgs: [String]? { get }
  @available(macOS 10.13, *)
  var title: String? { get }
  @available(macOS 10.13, *)
  var titleLocalizationKey: String? { get }
  @available(macOS 10.13, *)
  var titleLocalizationArgs: [String]? { get }
  @available(macOS 10.13, *)
  var subtitle: String? { get }
  @available(macOS 10.13, *)
  var subtitleLocalizationKey: String? { get }
  @available(macOS 10.13, *)
  var subtitleLocalizationArgs: [String]? { get }
  var alertActionLocalizationKey: String? { get }
  var alertLaunchImage: String? { get }
  @NSCopying var badge: NSNumber? { get }
  var soundName: String? { get }
  @available(macOS 10.11, *)
  var __subscriptionID: String? { get }
  @available(macOS 10.11, *)
  var category: String? { get }
}

@available(macOS 10.11, iOS 9.0, watchOS 3.0, *)
@nonobjc extension CKNotification {
  @available(swift 4.2)
  var subscriptionID: CKSubscription.ID? { get }
}
extension CKQueryNotification {
  @available(macOS 10.10, *)
  enum Reason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case recordCreated
    case recordUpdated
    case recordDeleted
  }
}
@available(macOS 10.10, *)
class CKQueryNotification : CKNotification {
  var queryNotificationReason: CKQueryNotification.Reason { get }
  var recordFields: [String : Any]? { get }
  @NSCopying var recordID: CKRecord.ID? { get }
  @available(macOS 10.12, *)
  var databaseScope: CKDatabase.Scope { get }
}
@available(macOS 10.10, *)
class CKRecordZoneNotification : CKNotification {
  @NSCopying var recordZoneID: CKRecordZone.ID? { get }
  @available(macOS 10.12, *)
  var databaseScope: CKDatabase.Scope { get }
}
@available(macOS 10.12, *)
class CKDatabaseNotification : CKNotification {
  var databaseScope: CKDatabase.Scope { get }
}
