
extension NSCalendar {
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Unit : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var era: NSCalendar.Unit { get }
    static var year: NSCalendar.Unit { get }
    static var month: NSCalendar.Unit { get }
    static var day: NSCalendar.Unit { get }
    static var hour: NSCalendar.Unit { get }
    static var minute: NSCalendar.Unit { get }
    static var second: NSCalendar.Unit { get }
    static var weekday: NSCalendar.Unit { get }
    static var weekdayOrdinal: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var quarter: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var weekOfMonth: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var weekOfYear: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var yearForWeekOfYear: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var nanosecond: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var calendar: NSCalendar.Unit { get }
    @available(watchOS 2.0, *)
    static var timeZone: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.era")
    static var NSEraCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.year")
    static var NSYearCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.month")
    static var NSMonthCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.day")
    static var NSDayCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.hour")
    static var NSHourCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.minute")
    static var NSMinuteCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.second")
    static var NSSecondCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
    static var NSWeekCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.weekday")
    static var NSWeekdayCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.weekdayOrdinal")
    static var NSWeekdayOrdinalCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.quarter")
    static var NSQuarterCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.weekOfMonth")
    static var NSWeekOfMonthCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.weekOfYear")
    static var NSWeekOfYearCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.yearForWeekOfYear")
    static var NSYearForWeekOfYearCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.calendar")
    static var NSCalendarCalendarUnit: NSCalendar.Unit { get }
    @available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Unit.timeZone")
    static var NSTimeZoneCalendarUnit: NSCalendar.Unit { get }
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var wrapComponents: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var matchStrictly: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var searchBackwards: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var matchPreviousTimePreservingSmallerUnits: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var matchNextTimePreservingSmallerUnits: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var matchNextTime: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var matchFirst: NSCalendar.Options { get }
    @available(watchOS 2.0, *)
    static var matchLast: NSCalendar.Options { get }
  }
}
extension NSCalendar.Identifier {
  @available(watchOS 2.0, *)
  static let gregorian: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let buddhist: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let chinese: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let coptic: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let ethiopicAmeteMihret: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let ethiopicAmeteAlem: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let hebrew: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let ISO8601: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let indian: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let islamic: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let islamicCivil: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let japanese: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let persian: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let republicOfChina: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let islamicTabular: NSCalendar.Identifier
  @available(watchOS 2.0, *)
  static let islamicUmmAlQura: NSCalendar.Identifier
}
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Options.wrapComponents")
var NSWrapCalendarComponents: Int { get }
class NSCalendar : NSObject, NSCopying, NSSecureCoding {
  class var current: Calendar { get }
  @available(watchOS 2.0, *)
  class var autoupdatingCurrent: Calendar { get }
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: NSCalendar.Identifier)
  init?(calendarIdentifier ident: NSCalendar.Identifier)
  var calendarIdentifier: NSCalendar.Identifier { get }
  var locale: Locale?
  var timeZone: TimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(watchOS 2.0, *)
  var eraSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var longEraSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var monthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var standaloneMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var weekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var quarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortQuarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var amSymbol: String { get }
  @available(watchOS 2.0, *)
  var pmSymbol: String { get }
  func minimumRange(of unit: NSCalendar.Unit) -> NSRange
  func maximumRange(of unit: NSCalendar.Unit) -> NSRange
  func range(of smaller: NSCalendar.Unit, in larger: NSCalendar.Unit, for date: Date) -> NSRange
  func ordinality(of smaller: NSCalendar.Unit, in larger: NSCalendar.Unit, for date: Date) -> Int
  @available(watchOS 2.0, *)
  func range(of unit: NSCalendar.Unit, start datep: AutoreleasingUnsafeMutablePointer<NSDate?>?, interval tip: UnsafeMutablePointer<TimeInterval>?, for date: Date) -> Bool
  func date(from comps: DateComponents) -> Date?
  func components(_ unitFlags: NSCalendar.Unit, from date: Date) -> DateComponents
  func date(byAdding comps: DateComponents, to date: Date, options opts: NSCalendar.Options = []) -> Date?
  func components(_ unitFlags: NSCalendar.Unit, from startingDate: Date, to resultDate: Date, options opts: NSCalendar.Options = []) -> DateComponents
  @available(watchOS 2.0, *)
  func getEra(_ eraValuePointer: UnsafeMutablePointer<Int>?, year yearValuePointer: UnsafeMutablePointer<Int>?, month monthValuePointer: UnsafeMutablePointer<Int>?, day dayValuePointer: UnsafeMutablePointer<Int>?, from date: Date)
  @available(watchOS 2.0, *)
  func getEra(_ eraValuePointer: UnsafeMutablePointer<Int>?, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>?, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>?, weekday weekdayValuePointer: UnsafeMutablePointer<Int>?, from date: Date)
  @available(watchOS 2.0, *)
  func getHour(_ hourValuePointer: UnsafeMutablePointer<Int>?, minute minuteValuePointer: UnsafeMutablePointer<Int>?, second secondValuePointer: UnsafeMutablePointer<Int>?, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>?, from date: Date)
  @available(watchOS 2.0, *)
  func component(_ unit: NSCalendar.Unit, from date: Date) -> Int
  @available(watchOS 2.0, *)
  func date(era eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(watchOS 2.0, *)
  func date(era eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(watchOS 2.0, *)
  func startOfDay(for date: Date) -> Date
  @available(watchOS 2.0, *)
  func components(in timezone: TimeZone, from date: Date) -> DateComponents
  @available(watchOS 2.0, *)
  func compare(_ date1: Date, to date2: Date, toUnitGranularity unit: NSCalendar.Unit) -> ComparisonResult
  @available(watchOS 2.0, *)
  func isDate(_ date1: Date, equalTo date2: Date, toUnitGranularity unit: NSCalendar.Unit) -> Bool
  @available(watchOS 2.0, *)
  func isDate(_ date1: Date, inSameDayAs date2: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateInToday(_ date: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateInYesterday(_ date: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateInTomorrow(_ date: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateInWeekend(_ date: Date) -> Bool
  @available(watchOS 2.0, *)
  func range(ofWeekendStart datep: AutoreleasingUnsafeMutablePointer<NSDate?>?, interval tip: UnsafeMutablePointer<TimeInterval>?, containing date: Date) -> Bool
  @available(watchOS 2.0, *)
  func nextWeekendStart(_ datep: AutoreleasingUnsafeMutablePointer<NSDate?>?, interval tip: UnsafeMutablePointer<TimeInterval>?, options: NSCalendar.Options = [], after date: Date) -> Bool
  @available(watchOS 2.0, *)
  func components(_ unitFlags: NSCalendar.Unit, from startingDateComp: DateComponents, to resultDateComp: DateComponents, options: NSCalendar.Options = []) -> DateComponents
  @available(watchOS 2.0, *)
  func date(byAdding unit: NSCalendar.Unit, value: Int, to date: Date, options: NSCalendar.Options = []) -> Date?
  @available(watchOS 2.0, *)
  func enumerateDates(startingAfter start: Date, matching comps: DateComponents, options opts: NSCalendar.Options = [], using block: (Date?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func nextDate(after date: Date, matching comps: DateComponents, options: NSCalendar.Options = []) -> Date?
  @available(watchOS 2.0, *)
  func nextDate(after date: Date, matching unit: NSCalendar.Unit, value: Int, options: NSCalendar.Options = []) -> Date?
  @available(watchOS 2.0, *)
  func nextDate(after date: Date, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: NSCalendar.Options = []) -> Date?
  @available(watchOS 2.0, *)
  func date(bySettingUnit unit: NSCalendar.Unit, value v: Int, of date: Date, options opts: NSCalendar.Options = []) -> Date?
  @available(watchOS 2.0, *)
  func date(bySettingHour h: Int, minute m: Int, second s: Int, of date: Date, options opts: NSCalendar.Options = []) -> Date?
  @available(watchOS 2.0, *)
  func date(_ date: Date, matchesComponents components: DateComponents) -> Bool
}

extension NSCalendar : _HasCustomAnyHashableRepresentation {
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let NSCalendarDayChanged: NSNotification.Name
}
var NSDateComponentUndefined: Int { get }
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSDateComponentUndefined")
var NSUndefinedDateComponent: Int { get }
class NSDateComponents : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS 2.0, *)
  var calendar: Calendar?
  @available(watchOS 2.0, *)
  var timeZone: TimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(watchOS 2.0, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(watchOS 2.0, *)
  var quarter: Int
  @available(watchOS 2.0, *)
  var weekOfMonth: Int
  @available(watchOS 2.0, *)
  var weekOfYear: Int
  @available(watchOS 2.0, *)
  var yearForWeekOfYear: Int
  @available(watchOS 2.0, *)
  var isLeapMonth: Bool
  @available(watchOS 2.0, *)
  var date: Date? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -weekOfMonth or -weekOfYear, depending on which you mean")
  func week() -> Int
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -setWeekOfMonth: or -setWeekOfYear:, depending on which you mean")
  func setWeek(_ v: Int)
  @available(watchOS 2.0, *)
  func setValue(_ value: Int, forComponent unit: NSCalendar.Unit)
  @available(watchOS 2.0, *)
  func value(forComponent unit: NSCalendar.Unit) -> Int
  @available(watchOS 2.0, *)
  var isValidDate: Bool { get }
  @available(watchOS 2.0, *)
  func isValidDate(in calendar: Calendar) -> Bool
}

extension NSDateComponents : _HasCustomAnyHashableRepresentation {
}
