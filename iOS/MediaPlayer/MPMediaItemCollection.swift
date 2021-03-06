
@available(iOS 3.0, *)
class MPMediaItemCollection : MPMediaEntity {
  init(items: [MPMediaItem])
  var items: [MPMediaItem] { get }
  var representativeItem: MPMediaItem? { get }
  var count: Int { get }
  var mediaTypes: MPMediaType { get }
}
