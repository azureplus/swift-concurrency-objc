
@available(watchOS, introduced: 3.0, deprecated: 3.0, renamed: "CKFetchRecordZoneChangesOperation")
class CKFetchRecordChangesOperation : CKDatabaseOperation {
  convenience init(recordZoneID: CKRecordZone.ID, previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var recordZoneID: CKRecordZone.ID?
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var desiredKeys: [String]?
  var recordChangedBlock: ((CKRecord) -> Void)?
  var recordWithIDWasDeletedBlock: ((CKRecord.ID) -> Void)?
  var moreComing: Bool { get }
  var fetchRecordChangesCompletionBlock: ((CKServerChangeToken?, Data?, Error?) -> Void)?
}
