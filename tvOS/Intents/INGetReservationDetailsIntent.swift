
@available(tvOS 13.0, *)
class INGetReservationDetailsIntent : INIntent {
  init(reservationContainerReference: INSpeakableString?, reservationItemReferences: [INSpeakableString]?)
  @NSCopying var reservationContainerReference: INSpeakableString? { get }
  var reservationItemReferences: [INSpeakableString]? { get }
}
