
var kMusicEventType_NULL: UInt32 { get }
var kMusicEventType_ExtendedNote: UInt32 { get }
var kMusicEventType_ExtendedTempo: UInt32 { get }
var kMusicEventType_User: UInt32 { get }
var kMusicEventType_Meta: UInt32 { get }
var kMusicEventType_MIDINoteMessage: UInt32 { get }
var kMusicEventType_MIDIChannelMessage: UInt32 { get }
var kMusicEventType_MIDIRawData: UInt32 { get }
var kMusicEventType_Parameter: UInt32 { get }
var kMusicEventType_AUPreset: UInt32 { get }
typealias MusicEventType = UInt32
struct MusicSequenceLoadFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var smf_PreserveTracks: MusicSequenceLoadFlags { get }
  static var smf_ChannelsToTracks: MusicSequenceLoadFlags { get }
}
enum MusicSequenceType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case beats
  case seconds
  case samples
}
enum MusicSequenceFileTypeID : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case anyType
  case midiType
  case iMelodyType
}
struct MusicSequenceFileFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var eraseFile: MusicSequenceFileFlags { get }
}
typealias MusicTimeStamp = Float64
var kMusicTimeStamp_EndOfTrack: Double { get }
struct MIDINoteMessage {
  var channel: UInt8
  var note: UInt8
  var velocity: UInt8
  var releaseVelocity: UInt8
  var duration: Float32
  init()
  init(channel: UInt8, note: UInt8, velocity: UInt8, releaseVelocity: UInt8, duration: Float32)
}
struct MIDIChannelMessage {
  var status: UInt8
  var data1: UInt8
  var data2: UInt8
  var reserved: UInt8
  init()
  init(status: UInt8, data1: UInt8, data2: UInt8, reserved: UInt8)
}
struct MIDIRawData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}
struct MIDIMetaEvent {
  var metaEventType: UInt8
  var unused1: UInt8
  var unused2: UInt8
  var unused3: UInt8
  var dataLength: UInt32
  var data: (UInt8)
  init()
  init(metaEventType: UInt8, unused1: UInt8, unused2: UInt8, unused3: UInt8, dataLength: UInt32, data: (UInt8))
}
struct MusicEventUserData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}
struct ExtendedNoteOnEvent {
  var instrumentID: MusicDeviceInstrumentID
  var groupID: MusicDeviceGroupID
  var duration: Float32
  var extendedParams: MusicDeviceNoteParams
  init()
  init(instrumentID: MusicDeviceInstrumentID, groupID: MusicDeviceGroupID, duration: Float32, extendedParams: MusicDeviceNoteParams)
}
struct ParameterEvent {
  var parameterID: AudioUnitParameterID
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var value: AudioUnitParameterValue
  init()
  init(parameterID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement, value: AudioUnitParameterValue)
}
struct ExtendedTempoEvent {
  var bpm: Float64
  init()
  init(bpm: Float64)
}
struct AUPresetEvent {
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var preset: Unmanaged<CFPropertyList>
  init(scope: AudioUnitScope, element: AudioUnitElement, preset: Unmanaged<CFPropertyList>)
}
struct CABarBeatTime {
  var bar: Int32
  var beat: UInt16
  var subbeat: UInt16
  var subbeatDivisor: UInt16
  var reserved: UInt16
  init()
  init(bar: Int32, beat: UInt16, subbeat: UInt16, subbeatDivisor: UInt16, reserved: UInt16)
}
typealias MusicPlayer = OpaquePointer
typealias MusicSequence = OpaquePointer
typealias MusicTrack = OpaquePointer
typealias MusicEventIterator = OpaquePointer
typealias MusicSequenceUserCallback = @convention(c) (UnsafeMutableRawPointer?, MusicSequence, MusicTrack, MusicTimeStamp, UnsafePointer<MusicEventUserData>, MusicTimeStamp, MusicTimeStamp) -> Void
var kAudioToolboxErr_InvalidSequenceType: OSStatus { get }
var kAudioToolboxErr_TrackIndexError: OSStatus { get }
var kAudioToolboxErr_TrackNotFound: OSStatus { get }
var kAudioToolboxErr_EndOfTrack: OSStatus { get }
var kAudioToolboxErr_StartOfTrack: OSStatus { get }
var kAudioToolboxErr_IllegalTrackDestination: OSStatus { get }
var kAudioToolboxErr_NoSequence: OSStatus { get }
var kAudioToolboxErr_InvalidEventType: OSStatus { get }
var kAudioToolboxErr_InvalidPlayerState: OSStatus { get }
var kAudioToolboxErr_CannotDoInCurrentContext: OSStatus { get }
var kAudioToolboxError_NoTrackDestination: OSStatus { get }
var kSequenceTrackProperty_LoopInfo: UInt32 { get }
var kSequenceTrackProperty_OffsetTime: UInt32 { get }
var kSequenceTrackProperty_MuteStatus: UInt32 { get }
var kSequenceTrackProperty_SoloStatus: UInt32 { get }
var kSequenceTrackProperty_AutomatedParameters: UInt32 { get }
var kSequenceTrackProperty_TrackLength: UInt32 { get }
var kSequenceTrackProperty_TimeResolution: UInt32 { get }
struct MusicTrackLoopInfo {
  var loopDuration: MusicTimeStamp
  var numberOfLoops: Int32
  init()
  init(loopDuration: MusicTimeStamp, numberOfLoops: Int32)
}
@available(macOS 10.0, *)
func NewMusicPlayer(_ outPlayer: UnsafeMutablePointer<MusicPlayer?>) -> OSStatus
@available(macOS 10.0, *)
func DisposeMusicPlayer(_ inPlayer: MusicPlayer) -> OSStatus
@available(macOS 10.0, *)
func MusicPlayerSetSequence(_ inPlayer: MusicPlayer, _ inSequence: MusicSequence?) -> OSStatus
@available(macOS 10.3, *)
func MusicPlayerGetSequence(_ inPlayer: MusicPlayer, _ outSequence: UnsafeMutablePointer<MusicSequence?>) -> OSStatus
@available(macOS 10.0, *)
func MusicPlayerSetTime(_ inPlayer: MusicPlayer, _ inTime: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicPlayerGetTime(_ inPlayer: MusicPlayer, _ outTime: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(macOS 10.2, *)
func MusicPlayerGetHostTimeForBeats(_ inPlayer: MusicPlayer, _ inBeats: MusicTimeStamp, _ outHostTime: UnsafeMutablePointer<UInt64>) -> OSStatus
@available(macOS 10.2, *)
func MusicPlayerGetBeatsForHostTime(_ inPlayer: MusicPlayer, _ inHostTime: UInt64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(macOS 10.0, *)
func MusicPlayerPreroll(_ inPlayer: MusicPlayer) -> OSStatus
@available(macOS 10.0, *)
func MusicPlayerStart(_ inPlayer: MusicPlayer) -> OSStatus
@available(macOS 10.0, *)
func MusicPlayerStop(_ inPlayer: MusicPlayer) -> OSStatus
@available(macOS 10.2, *)
func MusicPlayerIsPlaying(_ inPlayer: MusicPlayer, _ outIsPlaying: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.3, *)
func MusicPlayerSetPlayRateScalar(_ inPlayer: MusicPlayer, _ inScaleRate: Float64) -> OSStatus
@available(macOS 10.3, *)
func MusicPlayerGetPlayRateScalar(_ inPlayer: MusicPlayer, _ outScaleRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(macOS 10.0, *)
func NewMusicSequence(_ outSequence: UnsafeMutablePointer<MusicSequence?>) -> OSStatus
@available(macOS 10.0, *)
func DisposeMusicSequence(_ inSequence: MusicSequence) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceNewTrack(_ inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack?>) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceDisposeTrack(_ inSequence: MusicSequence, _ inTrack: MusicTrack) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceGetTrackCount(_ inSequence: MusicSequence, _ outNumberOfTracks: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceGetIndTrack(_ inSequence: MusicSequence, _ inTrackIndex: UInt32, _ outTrack: UnsafeMutablePointer<MusicTrack?>) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceGetTrackIndex(_ inSequence: MusicSequence, _ inTrack: MusicTrack, _ outTrackIndex: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.1, *)
func MusicSequenceGetTempoTrack(_ inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack?>) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceSetAUGraph(_ inSequence: MusicSequence, _ inGraph: AUGraph?) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceGetAUGraph(_ inSequence: MusicSequence, _ outGraph: UnsafeMutablePointer<AUGraph?>) -> OSStatus
@available(macOS 10.1, *)
func MusicSequenceSetMIDIEndpoint(_ inSequence: MusicSequence, _ inEndpoint: MIDIEndpointRef) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceSetSequenceType(_ inSequence: MusicSequence, _ inType: MusicSequenceType) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceGetSequenceType(_ inSequence: MusicSequence, _ outType: UnsafeMutablePointer<MusicSequenceType>) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceFileLoad(_ inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceFileLoadData(_ inSequence: MusicSequence, _ inData: CFData, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus
func MusicSequenceSetSMPTEResolution(_ fps: Int8, _ ticks: UInt8) -> Int16
func MusicSequenceGetSMPTEResolution(_ inRes: Int16, _ fps: UnsafeMutablePointer<Int8>, _ ticks: UnsafeMutablePointer<UInt8>)
@available(macOS 10.5, *)
func MusicSequenceFileCreate(_ inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceFileCreateData(_ inSequence: MusicSequence, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(macOS 10.0, *)
func MusicSequenceReverse(_ inSequence: MusicSequence) -> OSStatus
@available(macOS 10.2, *)
func MusicSequenceGetSecondsForBeats(_ inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ outSeconds: UnsafeMutablePointer<Float64>) -> OSStatus
@available(macOS 10.2, *)
func MusicSequenceGetBeatsForSeconds(_ inSequence: MusicSequence, _ inSeconds: Float64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(macOS 10.3, *)
func MusicSequenceSetUserCallback(_ inSequence: MusicSequence, _ inCallback: MusicSequenceUserCallback?, _ inClientData: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceBeatsToBarBeatTime(_ inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ inSubbeatDivisor: UInt32, _ outBarBeatTime: UnsafeMutablePointer<CABarBeatTime>) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceBarBeatTimeToBeats(_ inSequence: MusicSequence, _ inBarBeatTime: UnsafePointer<CABarBeatTime>, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(macOS 10.5, *)
func MusicSequenceGetInfoDictionary(_ inSequence: MusicSequence) -> CFDictionary
@available(macOS 10.0, *)
func MusicTrackGetSequence(_ inTrack: MusicTrack, _ outSequence: UnsafeMutablePointer<MusicSequence?>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackSetDestNode(_ inTrack: MusicTrack, _ inNode: AUNode) -> OSStatus
@available(macOS 10.1, *)
func MusicTrackSetDestMIDIEndpoint(_ inTrack: MusicTrack, _ inEndpoint: MIDIEndpointRef) -> OSStatus
@available(macOS 10.1, *)
func MusicTrackGetDestNode(_ inTrack: MusicTrack, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(macOS 10.1, *)
func MusicTrackGetDestMIDIEndpoint(_ inTrack: MusicTrack, _ outEndpoint: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackSetProperty(_ inTrack: MusicTrack, _ inPropertyID: UInt32, _ inData: UnsafeMutableRawPointer, _ inLength: UInt32) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackGetProperty(_ inTrack: MusicTrack, _ inPropertyID: UInt32, _ outData: UnsafeMutableRawPointer, _ ioLength: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackMoveEvents(_ inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp, _ inMoveTime: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackClear(_ inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackCut(_ inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackCopyInsert(_ inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackMerge(_ inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewMIDINoteEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDINoteMessage>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewMIDIChannelEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDIChannelMessage>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewMIDIRawDataEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inRawData: UnsafePointer<MIDIRawData>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewExtendedNoteEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ExtendedNoteOnEvent>) -> OSStatus
@available(macOS 10.2, *)
func MusicTrackNewParameterEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ParameterEvent>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewExtendedTempoEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inBPM: Float64) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewMetaEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMetaEvent: UnsafePointer<MIDIMetaEvent>) -> OSStatus
@available(macOS 10.0, *)
func MusicTrackNewUserEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inUserData: UnsafePointer<MusicEventUserData>) -> OSStatus
@available(macOS 10.3, *)
func MusicTrackNewAUPresetEvent(_ inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inPresetEvent: UnsafePointer<AUPresetEvent>) -> OSStatus
@available(macOS 10.0, *)
func NewMusicEventIterator(_ inTrack: MusicTrack, _ outIterator: UnsafeMutablePointer<MusicEventIterator?>) -> OSStatus
@available(macOS 10.0, *)
func DisposeMusicEventIterator(_ inIterator: MusicEventIterator) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorSeek(_ inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorNextEvent(_ inIterator: MusicEventIterator) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorPreviousEvent(_ inIterator: MusicEventIterator) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorGetEventInfo(_ inIterator: MusicEventIterator, _ outTimeStamp: UnsafeMutablePointer<MusicTimeStamp>, _ outEventType: UnsafeMutablePointer<MusicEventType>, _ outEventData: UnsafeMutablePointer<UnsafeRawPointer?>, _ outEventDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.2, *)
func MusicEventIteratorSetEventInfo(_ inIterator: MusicEventIterator, _ inEventType: MusicEventType, _ inEventData: UnsafeRawPointer) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorSetEventTime(_ inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorDeleteEvent(_ inIterator: MusicEventIterator) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorHasPreviousEvent(_ inIterator: MusicEventIterator, _ outHasPrevEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.0, *)
func MusicEventIteratorHasNextEvent(_ inIterator: MusicEventIterator, _ outHasNextEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.2, *)
func MusicEventIteratorHasCurrentEvent(_ inIterator: MusicEventIterator, _ outHasCurEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
var kMusicEventType_ExtendedControl: Int { get }
struct ExtendedControlEvent {
  var groupID: MusicDeviceGroupID
  var controlID: AudioUnitParameterID
  var value: AudioUnitParameterValue
  init()
  init(groupID: MusicDeviceGroupID, controlID: AudioUnitParameterID, value: AudioUnitParameterValue)
}
