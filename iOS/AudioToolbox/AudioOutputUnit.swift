
@available(iOS 2.0, *)
func AudioOutputUnitStart(_ ci: AudioUnit) -> OSStatus
@available(iOS 2.0, *)
func AudioOutputUnitStop(_ ci: AudioUnit) -> OSStatus
var kAudioOutputUnitRange: Int { get }
var kAudioOutputUnitStartSelect: Int { get }
var kAudioOutputUnitStopSelect: Int { get }
typealias AudioOutputUnitStartProc = @convention(c) (UnsafeMutableRawPointer) -> OSStatus
typealias AudioOutputUnitStopProc = @convention(c) (UnsafeMutableRawPointer) -> OSStatus
