
@available(watchOS 4.0, *)
class INTemporalEventTrigger : NSObject, NSCopying, NSSecureCoding {
  init(dateComponentsRange: INDateComponentsRange)
  @NSCopying var dateComponentsRange: INDateComponentsRange { get }
}
