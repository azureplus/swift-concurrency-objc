
@available(tvOS 9.0, *)
class GKGoal : NSObject, NSCopying {
  convenience init(toSeekAgent agent: GKAgent)
  convenience init(toFleeAgent agent: GKAgent)
  convenience init(toAvoid obstacles: [GKObstacle], maxPredictionTime: TimeInterval)
  convenience init(toAvoid agents: [GKAgent], maxPredictionTime: TimeInterval)
  convenience init(toSeparateFrom agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toAlignWith agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toCohereWith agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toReachTargetSpeed targetSpeed: Float)
  convenience init(toWander speed: Float)
  convenience init(toInterceptAgent target: GKAgent, maxPredictionTime: TimeInterval)
  convenience init(toFollow path: GKPath, maxPredictionTime: TimeInterval, forward: Bool)
  convenience init(toStayOn path: GKPath, maxPredictionTime: TimeInterval)
}
