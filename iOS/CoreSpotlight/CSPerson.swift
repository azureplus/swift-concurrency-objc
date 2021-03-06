
@available(iOS 9.0, *)
class CSPerson : NSObject, NSSecureCoding, NSCopying {
  init(displayName: String?, handles: [String], handleIdentifier: String)
  var displayName: String? { get }
  var handles: [String] { get }
  var handleIdentifier: String { get }
  var contactIdentifier: String?
}
