
extension NLModel {
  enum ModelType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case classifier
    case sequence
  }
}
@available(macOS 10.14, *)
class NLModel : NSObject {
  @available(macOS 10.14, *)
  convenience init(contentsOf url: URL) throws
  @available(macOS 10.14, *)
  @NSCopying var configuration: NLModelConfiguration { get }
  @available(macOS 10.14, *)
  func predictedLabel(for string: String) -> String?
  @available(macOS 10.14, *)
  func predictedLabels(forTokens tokens: [String]) -> [String]
  @available(macOS 11.0, *)
  func __predictedLabelHypotheses(for string: String, maximumCount: Int) -> [String : NSNumber]
  @available(macOS 11.0, *)
  func __predictedLabelHypotheses(forTokens tokens: [String], maximumCount: Int) -> [[String : NSNumber]]
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension NLModel {
  @nonobjc func predictedLabelHypotheses(for string: String, maximumCount maxCount: Int) -> [String : Double]
  @nonobjc func predictedLabelHypotheses(forTokens tokens: [String], maximumCount maxCount: Int) -> [[String : Double]]
}
@available(macOS 10.14, *)
class NLModelConfiguration : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.14, *)
  var type: NLModel.ModelType { get }
  @available(macOS 10.14, *)
  var language: NLLanguage? { get }
  @available(macOS 10.14, *)
  var revision: Int { get }
  @available(macOS 10.14, *)
  class func supportedRevisions(for type: NLModel.ModelType) -> IndexSet
  @available(macOS 10.14, *)
  class func currentRevision(for type: NLModel.ModelType) -> Int
}
