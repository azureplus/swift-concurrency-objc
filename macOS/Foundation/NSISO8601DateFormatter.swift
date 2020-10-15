
extension ISO8601DateFormatter {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(macOS 10.12, *)
    static var withYear: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withMonth: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withWeekOfYear: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withDay: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withTime: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withTimeZone: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withSpaceBetweenDateAndTime: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withDashSeparatorInDate: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withColonSeparatorInTime: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withColonSeparatorInTimeZone: ISO8601DateFormatter.Options { get }
    @available(macOS 10.13, *)
    static var withFractionalSeconds: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withFullDate: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withFullTime: ISO8601DateFormatter.Options { get }
    @available(macOS 10.12, *)
    static var withInternetDateTime: ISO8601DateFormatter.Options { get }
  }
}
@available(macOS 10.12, *)
class ISO8601DateFormatter : Formatter, NSSecureCoding {
  var timeZone: TimeZone!
  var formatOptions: ISO8601DateFormatter.Options
  func string(from date: Date) -> String
  func date(from string: String) -> Date?
  class func string(from date: Date, timeZone: TimeZone, formatOptions: ISO8601DateFormatter.Options = []) -> String
}