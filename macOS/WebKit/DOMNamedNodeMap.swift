
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMNamedNodeMap : DOMObject {
  var length: UInt32 { get }
  func getNamedItem(_ name: String!) -> DOMNode!
  func setNamedItem(_ node: DOMNode!) -> DOMNode!
  func removeNamedItem(_ name: String!) -> DOMNode!
  func item(_ index: UInt32) -> DOMNode!
  @available(macOS 10.5, *)
  func getNamedItemNS(_ namespaceURI: String!, localName: String!) -> DOMNode!
  func setNamedItemNS(_ node: DOMNode!) -> DOMNode!
  @available(macOS 10.5, *)
  func removeNamedItemNS(_ namespaceURI: String!, localName: String!) -> DOMNode!
}
extension DOMNamedNodeMap {
}
