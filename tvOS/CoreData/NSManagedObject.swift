
struct NSSnapshotEventType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var undoInsertion: NSSnapshotEventType { get }
  static var undoDeletion: NSSnapshotEventType { get }
  static var undoUpdate: NSSnapshotEventType { get }
  static var rollback: NSSnapshotEventType { get }
  static var refresh: NSSnapshotEventType { get }
  static var mergePolicy: NSSnapshotEventType { get }
}
@available(tvOS 3.0, *)
class NSManagedObject : NSObject {
  @available(tvOS 3.0, *)
  class var contextShouldIgnoreUnmodeledPropertyChanges: Bool { get }
  @available(tvOS 10.0, *)
  class func entity() -> NSEntityDescription
  @available(tvOS 10.0, *)
  class func fetchRequest() -> NSFetchRequest<NSFetchRequestResult>
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  @available(tvOS 10.0, *)
  convenience init(context moc: NSManagedObjectContext)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  @available(tvOS 5.0, *)
  var hasChanges: Bool { get }
  @available(tvOS 7.0, *)
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  @available(tvOS 3.0, *)
  func hasFault(forRelationshipNamed key: String) -> Bool
  @available(tvOS 8.3, *)
  func objectIDs(forRelationshipNamed key: String) -> [NSManagedObjectID]
  @available(tvOS 3.0, *)
  var faultingState: Int { get }
  func willAccessValue(forKey key: String?)
  func didAccessValue(forKey key: String?)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(tvOS 3.0, *)
  func awake(fromSnapshotEvents flags: NSSnapshotEventType)
  @available(tvOS 3.0, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(tvOS 3.0, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func primitiveValue(forKey key: String) -> Any?
  func setPrimitiveValue(_ value: Any?, forKey key: String)
  func committedValues(forKeys keys: [String]?) -> [String : Any]
  func changedValues() -> [String : Any]
  @available(tvOS 5.0, *)
  func changedValuesForCurrentEvent() -> [String : Any]
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NSManagedObject : ObservableObject {
}
