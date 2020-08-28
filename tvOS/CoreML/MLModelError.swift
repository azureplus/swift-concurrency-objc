
@available(tvOS 11.0, *)
let MLModelErrorDomain: String
@available(tvOS 11.0, *)
struct MLModelError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var generic: MLModelError.Code { get }
  static var featureType: MLModelError.Code { get }
  static var io: MLModelError.Code { get }
  @available(tvOS 11.2, *)
  static var customLayer: MLModelError.Code { get }
  @available(tvOS 12.0, *)
  static var customModel: MLModelError.Code { get }
  @available(tvOS 14.0, *)
  static var update: MLModelError.Code { get }
  @available(tvOS 13.0, *)
  static var parameters: MLModelError.Code { get }
  @available(tvOS 14.0, *)
  static var modelDecryptionKeyFetch: MLModelError.Code { get }
  @available(tvOS 14.0, *)
  static var modelDecryption: MLModelError.Code { get }
  @available(tvOS 14.0, *)
  static var modelCollection: MLModelError.Code { get }
}
