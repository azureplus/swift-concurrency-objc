
@available(watchOS 4.0, *)
class INAddTasksIntent : INIntent {
  @available(watchOS 6.0, *)
  init(targetTaskList: INTaskList?, taskTitles: [INSpeakableString]?, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?, priority: INTaskPriority)
  @NSCopying var targetTaskList: INTaskList? { get }
  var taskTitles: [INSpeakableString]? { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
  @available(watchOS 6.0, *)
  var priority: INTaskPriority { get }
}
@available(watchOS 4.0, *)
protocol INAddTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INAddTasksIntent, completion: @escaping (INAddTasksIntentResponse) -> Void)
  optional func confirm(intent: INAddTasksIntent, completion: @escaping (INAddTasksIntentResponse) -> Void)
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTargetTaskListForAddTasks:withCompletion: is deprecated. Use resolveTargetTaskListForAddTasks:completion: instead")
  optional func resolveTargetTaskList(for intent: INAddTasksIntent, with completion: @escaping (INTaskListResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTargetTaskList(for intent: INAddTasksIntent, with completion: @escaping (INAddTasksTargetTaskListResolutionResult) -> Void)
  optional func resolveTaskTitles(for intent: INAddTasksIntent, with completion: @escaping ([INSpeakableStringResolutionResult]) -> Void)
  optional func resolveSpatialEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INSpatialEventTriggerResolutionResult) -> Void)
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTemporalEventTriggerForAddTasks:withCompletion: is deprecated. Use resolveTemporalEventTriggerForAddTasks:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INTemporalEventTriggerResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INAddTasksTemporalEventTriggerResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolvePriority(for intent: INAddTasksIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
}
