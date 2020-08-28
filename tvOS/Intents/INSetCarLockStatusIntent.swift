
@available(tvOS 10.3, *)
class INSetCarLockStatusIntent : INIntent {
  init(__locked locked: NSNumber?, carName: INSpeakableString?)
  @NSCopying var __locked: NSNumber? { get }
  @NSCopying var carName: INSpeakableString? { get }
}
@available(tvOS 10.3, *)
protocol INSetCarLockStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INSetCarLockStatusIntent, completion: @escaping (INSetCarLockStatusIntentResponse) -> Void)
  optional func confirm(intent: INSetCarLockStatusIntent, completion: @escaping (INSetCarLockStatusIntentResponse) -> Void)
  optional func resolveLocked(for intent: INSetCarLockStatusIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveCarName(for intent: INSetCarLockStatusIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
