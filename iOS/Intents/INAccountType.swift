
@available(iOS 10.3, *)
enum INAccountType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case checking
  case credit
  case debit
  case investment
  case mortgage
  case prepaid
  case saving
}
