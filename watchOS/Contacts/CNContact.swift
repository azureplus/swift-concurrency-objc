
@available(watchOS 2.0, *)
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case person
  case organization
}
@available(watchOS 2.0, *)
enum CNContactSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case userDefault
  case givenName
  case familyName
}
protocol CNKeyDescriptor : NSCopying, NSSecureCoding, NSObjectProtocol {
}
extension NSString : CNKeyDescriptor {
}
@available(watchOS 2.0, *)
class CNContact : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var contactType: CNContactType { get }
  var namePrefix: String { get }
  var givenName: String { get }
  var middleName: String { get }
  var familyName: String { get }
  var previousFamilyName: String { get }
  var nameSuffix: String { get }
  var nickname: String { get }
  var organizationName: String { get }
  var departmentName: String { get }
  var jobTitle: String { get }
  var phoneticGivenName: String { get }
  var phoneticMiddleName: String { get }
  var phoneticFamilyName: String { get }
  @available(watchOS 3.0, *)
  var phoneticOrganizationName: String { get }
  var note: String { get }
  var imageData: Data? { get }
  var thumbnailImageData: Data? { get }
  @available(watchOS 2.0, *)
  var imageDataAvailable: Bool { get }
  var phoneNumbers: [CNLabeledValue<CNPhoneNumber>] { get }
  var emailAddresses: [CNLabeledValue<NSString>] { get }
  var postalAddresses: [CNLabeledValue<CNPostalAddress>] { get }
  var urlAddresses: [CNLabeledValue<NSString>] { get }
  var contactRelations: [CNLabeledValue<CNContactRelation>] { get }
  var socialProfiles: [CNLabeledValue<CNSocialProfile>] { get }
  var instantMessageAddresses: [CNLabeledValue<CNInstantMessageAddress>] { get }
  var birthday: DateComponents? { get }
  var nonGregorianBirthday: DateComponents? { get }
  var dates: [CNLabeledValue<NSDateComponents>] { get }
  func isKeyAvailable(_ key: String) -> Bool
  func areKeysAvailable(_ keyDescriptors: [CNKeyDescriptor]) -> Bool
  class func localizedString(forKey key: String) -> String
  class func comparator(forNameSortOrder sortOrder: CNContactSortOrder) -> Comparator
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor
  func isUnifiedWithContact(withIdentifier contactIdentifier: String) -> Bool
}
let CNContactPropertyNotFetchedExceptionName: String
@available(watchOS 2.0, *)
let CNContactIdentifierKey: String
@available(watchOS 2.0, *)
let CNContactNamePrefixKey: String
@available(watchOS 2.0, *)
let CNContactGivenNameKey: String
@available(watchOS 2.0, *)
let CNContactMiddleNameKey: String
@available(watchOS 2.0, *)
let CNContactFamilyNameKey: String
@available(watchOS 2.0, *)
let CNContactPreviousFamilyNameKey: String
@available(watchOS 2.0, *)
let CNContactNameSuffixKey: String
@available(watchOS 2.0, *)
let CNContactNicknameKey: String
@available(watchOS 2.0, *)
let CNContactOrganizationNameKey: String
@available(watchOS 2.0, *)
let CNContactDepartmentNameKey: String
@available(watchOS 2.0, *)
let CNContactJobTitleKey: String
@available(watchOS 2.0, *)
let CNContactPhoneticGivenNameKey: String
@available(watchOS 2.0, *)
let CNContactPhoneticMiddleNameKey: String
@available(watchOS 2.0, *)
let CNContactPhoneticFamilyNameKey: String
@available(watchOS 3.0, *)
let CNContactPhoneticOrganizationNameKey: String
@available(watchOS 2.0, *)
let CNContactBirthdayKey: String
@available(watchOS 2.0, *)
let CNContactNonGregorianBirthdayKey: String
@available(watchOS 2.0, *)
let CNContactNoteKey: String
@available(watchOS 2.0, *)
let CNContactImageDataKey: String
@available(watchOS 2.0, *)
let CNContactThumbnailImageDataKey: String
@available(watchOS 2.0, *)
let CNContactImageDataAvailableKey: String
@available(watchOS 2.0, *)
let CNContactTypeKey: String
@available(watchOS 2.0, *)
let CNContactPhoneNumbersKey: String
@available(watchOS 2.0, *)
let CNContactEmailAddressesKey: String
@available(watchOS 2.0, *)
let CNContactPostalAddressesKey: String
@available(watchOS 2.0, *)
let CNContactDatesKey: String
@available(watchOS 2.0, *)
let CNContactUrlAddressesKey: String
@available(watchOS 2.0, *)
let CNContactRelationsKey: String
@available(watchOS 2.0, *)
let CNContactSocialProfilesKey: String
@available(watchOS 2.0, *)
let CNContactInstantMessageAddressesKey: String
