
@available(watchOS 3.1, *)
class PKLabeledValue : NSObject {
  init(label: String, value: String)
  var label: String { get }
  var value: String { get }
}
