
@available(iOS 8.0, *)
class CKSubscription : NSObject, NSSecureCoding, NSCopying {
  var __subscriptionID: String { get }
  var subscriptionType: CKSubscription.SubscriptionType { get }
  @NSCopying var notificationInfo: CKSubscription.NotificationInfo?
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKSubscription {
  @available(swift 4.2)
  var subscriptionID: CKSubscription.ID { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension CKSubscription {
  @available(swift 4.2)
  typealias ID = String
}
extension CKQuerySubscription {
  @available(iOS 10.0, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var firesOnRecordCreation: CKQuerySubscription.Options { get }
    static var firesOnRecordUpdate: CKQuerySubscription.Options { get }
    static var firesOnRecordDeletion: CKQuerySubscription.Options { get }
    static var firesOnce: CKQuerySubscription.Options { get }
  }
}
@available(iOS 10.0, *)
class CKQuerySubscription : CKSubscription, NSSecureCoding, NSCopying {
  init(__recordType recordType: String, predicate: NSPredicate, subscriptionID: String, options querySubscriptionOptions: CKQuerySubscription.Options = [])
  var __recordType: String { get }
  @NSCopying var predicate: NSPredicate { get }
  @NSCopying var zoneID: CKRecordZone.ID?
  var querySubscriptionOptions: CKQuerySubscription.Options { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKQuerySubscription {
  @available(swift 4.2)
  var recordType: CKRecord.RecordType? { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKQuerySubscription {
  @available(swift 4.2)
  convenience init(recordType: CKRecord.RecordType, predicate: NSPredicate, subscriptionID: CKSubscription.ID = UUID().uuidString, options querySubscriptionOptions: CKQuerySubscription.Options = [])
}
@available(iOS 10.0, *)
class CKRecordZoneSubscription : CKSubscription, NSSecureCoding, NSCopying {
  convenience init(zoneID: CKRecordZone.ID)
  init(__zoneID zoneID: CKRecordZone.ID, subscriptionID: String)
  @NSCopying var zoneID: CKRecordZone.ID { get }
  var __recordType: String?
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKRecordZoneSubscription {
  @available(swift 4.2)
  convenience init(zoneID: CKRecordZone.ID, subscriptionID: CKSubscription.ID)
  @available(swift 4.2)
  var recordType: CKRecord.RecordType?
}
@available(iOS 10.0, *)
class CKDatabaseSubscription : CKSubscription, NSSecureCoding, NSCopying {
  init(__subscriptionID subscriptionID: String)
  var __recordType: String?
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKDatabaseSubscription {
  @available(swift 4.2)
  convenience init(subscriptionID: CKSubscription.ID)
  @available(swift 4.2)
  var recordType: CKRecord.RecordType?
}
extension CKSubscription {
  @available(iOS 8.0, *)
  class NotificationInfo : NSObject, NSSecureCoding, NSCopying {
    var alertBody: String?
    var alertLocalizationKey: String?
    var __alertLocalizationArgs: [String]?
    @available(iOS 11.0, *)
    var title: String?
    @available(iOS 11.0, *)
    var titleLocalizationKey: String?
    @available(iOS 11.0, *)
    var __titleLocalizationArgs: [String]?
    @available(iOS 11.0, *)
    var subtitle: String?
    @available(iOS 11.0, *)
    var subtitleLocalizationKey: String?
    @available(iOS 11.0, *)
    var __subtitleLocalizationArgs: [String]?
    var alertActionLocalizationKey: String?
    var alertLaunchImage: String?
    var soundName: String?
    var __desiredKeys: [String]?
    var shouldBadge: Bool
    var shouldSendContentAvailable: Bool
    @available(iOS 11.0, *)
    var shouldSendMutableContent: Bool
    @available(iOS 9.0, *)
    var category: String?
    @available(iOS 11.0, *)
    var collapseIDKey: String?
  }
  @available(iOS 8.0, *)
  enum SubscriptionType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case query
    case recordZone
    @available(iOS 10.0, *)
    case database
  }
}
