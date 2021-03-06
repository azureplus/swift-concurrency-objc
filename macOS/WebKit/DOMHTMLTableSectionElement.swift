
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLTableSectionElement : DOMHTMLElement {
  var align: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  var rows: DOMHTMLCollection! { get }
  func insertRow(_ index: Int32) -> DOMHTMLElement!
  func deleteRow(_ index: Int32)
}
