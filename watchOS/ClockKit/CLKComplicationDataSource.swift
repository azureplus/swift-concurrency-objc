
@available(watchOS 2.0, *)
protocol CLKComplicationDataSource : NSObjectProtocol {
  optional func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void)
  optional func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineAnimationBehavior) -> Void)
  @available(watchOS 6.0, *)
  optional func getAlwaysOnTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
  func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void)
  @available(watchOS 3.0, *)
  optional func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
  @available(watchOS 7.0, *)
  optional func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void)
  @available(watchOS 7.0, *)
  optional func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor])
  @available(watchOS, introduced: 2.0, deprecated: 4.0)
  optional func getPlaceholderTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Time Travel is no longer supported. Use CLKComplicationDataSource's getTimelineEndDateWithHandler: to specify forward timeline support.")
  optional func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Time Travel and backwards extension of timelines are no longer supported.")
  optional func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Time Travel and backwards extension of timelines are no longer supported.")
  optional func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use WKRefreshBackgroundTask instead")
  optional func getNextRequestedUpdateDate(handler: @escaping (Date?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use WKRefreshBackgroundTask instead")
  optional func requestedUpdateDidBegin()
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use WKRefreshBackgroundTask instead")
  optional func requestedUpdateBudgetExhausted()
}