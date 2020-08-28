
extension INStartCallIntent {
  @available(tvOS, introduced: 13.0, deprecated: 14.0)
  convenience init(audioRoute: INCallAudioRoute, destinationType: INCallDestinationType, contacts: [INPerson]?, recordTypeForRedialing: INCallRecordType, callCapability: INCallCapability)
  @available(tvOS, introduced: 13.0, deprecated: 14.0)
  var recordTypeForRedialing: INCallRecordType { get }
}
