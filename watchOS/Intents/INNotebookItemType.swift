
@available(watchOS 4.0, *)
enum INNotebookItemType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case note
  case taskList
  case task
}
