
@available(watchOS 3.0, *)
class CKDiscoverAllUserIdentitiesOperation : CKOperation {
  var userIdentityDiscoveredBlock: ((CKUserIdentity) -> Void)?
  var discoverAllUserIdentitiesCompletionBlock: ((Error?) -> Void)?
}
