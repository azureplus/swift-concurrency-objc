
@available(tvOS 9.0, *)
class GKGraph : NSObject, NSCopying, NSSecureCoding {
  var nodes: [GKGraphNode]? { get }
  init(_ nodes: [GKGraphNode])
  func connectToLowestCostNode(node: GKGraphNode, bidirectional: Bool)
  func remove(_ nodes: [GKGraphNode])
  func add(_ nodes: [GKGraphNode])
  func findPath(from startNode: GKGraphNode, to endNode: GKGraphNode) -> [GKGraphNode]
}
