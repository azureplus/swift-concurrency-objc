
@available(tvOS 10.0, *)
class CKFetchDatabaseChangesOperation : CKDatabaseOperation {
  convenience init(previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var fetchAllChanges: Bool
  var recordZoneWithIDChangedBlock: ((CKRecordZone.ID) -> Void)?
  var recordZoneWithIDWasDeletedBlock: ((CKRecordZone.ID) -> Void)?
  @available(tvOS 11.0, *)
  var recordZoneWithIDWasPurgedBlock: ((CKRecordZone.ID) -> Void)?
  var changeTokenUpdatedBlock: ((CKServerChangeToken) -> Void)?
  var fetchDatabaseChangesCompletionBlock: ((CKServerChangeToken?, Bool, Error?) -> Void)?
}
