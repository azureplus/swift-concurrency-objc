
var MTLCounterErrorValue: UInt64 { get }
@available(tvOS 14.0, *)
struct MTLCommonCounter : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MTLCommonCounter {
  @available(tvOS 14.0, *)
  static let timestamp: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let tessellationInputPatches: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let vertexInvocations: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let postTessellationVertexInvocations: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let clipperInvocations: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let clipperPrimitivesOut: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let fragmentInvocations: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let fragmentsPassed: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let computeKernelInvocations: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let totalCycles: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let vertexCycles: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let tessellationCycles: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let postTessellationVertexCycles: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let fragmentCycles: MTLCommonCounter
  @available(tvOS 14.0, *)
  static let renderTargetWriteCycles: MTLCommonCounter
}
@available(tvOS 14.0, *)
struct MTLCommonCounterSet : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MTLCommonCounterSet {
  @available(tvOS 14.0, *)
  static let timestamp: MTLCommonCounterSet
  @available(tvOS 14.0, *)
  static let stageUtilization: MTLCommonCounterSet
  @available(tvOS 14.0, *)
  static let statistic: MTLCommonCounterSet
}
@available(tvOS 14.0, *)
struct MTLCounterResultTimestamp {
  var timestamp: UInt64
  init()
  init(timestamp: UInt64)
}
@available(tvOS 14.0, *)
struct MTLCounterResultStageUtilization {
  var totalCycles: UInt64
  var vertexCycles: UInt64
  var tessellationCycles: UInt64
  var postTessellationVertexCycles: UInt64
  var fragmentCycles: UInt64
  var renderTargetCycles: UInt64
  init()
  init(totalCycles: UInt64, vertexCycles: UInt64, tessellationCycles: UInt64, postTessellationVertexCycles: UInt64, fragmentCycles: UInt64, renderTargetCycles: UInt64)
}
@available(tvOS 14.0, *)
struct MTLCounterResultStatistic {
  var tessellationInputPatches: UInt64
  var vertexInvocations: UInt64
  var postTessellationVertexInvocations: UInt64
  var clipperInvocations: UInt64
  var clipperPrimitivesOut: UInt64
  var fragmentInvocations: UInt64
  var fragmentsPassed: UInt64
  var computeKernelInvocations: UInt64
  init()
  init(tessellationInputPatches: UInt64, vertexInvocations: UInt64, postTessellationVertexInvocations: UInt64, clipperInvocations: UInt64, clipperPrimitivesOut: UInt64, fragmentInvocations: UInt64, fragmentsPassed: UInt64, computeKernelInvocations: UInt64)
}
@available(tvOS 14.0, *)
protocol MTLCounter : NSObjectProtocol {
  @available(tvOS 14.0, *)
  var name: String { get }
}
@available(tvOS 14.0, *)
protocol MTLCounterSet : NSObjectProtocol {
  @available(tvOS 14.0, *)
  var name: String { get }
  @available(tvOS 14.0, *)
  var counters: [MTLCounter] { get }
}
@available(tvOS 14.0, *)
class MTLCounterSampleBufferDescriptor : NSObject, NSCopying {
  @available(tvOS 14.0, *)
  var counterSet: MTLCounterSet?
  @available(tvOS 14.0, *)
  var label: String
  @available(tvOS 14.0, *)
  var storageMode: MTLStorageMode
  @available(tvOS 14.0, *)
  var sampleCount: Int
}
@available(tvOS 14.0, *)
protocol MTLCounterSampleBuffer : NSObjectProtocol {
  @available(tvOS 14.0, *)
  var device: MTLDevice { get }
  @available(tvOS 14.0, *)
  var label: String { get }
  @available(tvOS 14.0, *)
  var sampleCount: Int { get }
  @available(tvOS 14.0, *)
  func __resolveCounterRange(_ range: NSRange) -> Data?
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension MTLCounterSampleBuffer {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func resolveCounterRange(_ range: Range<Int>) throws -> Data?
}
@available(tvOS 14.0, *)
let MTLCounterErrorDomain: String
@available(tvOS 14.0, *)
struct MTLCounterSampleBufferError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var outOfMemory: MTLCounterSampleBufferError.Code { get }
  static var invalid: MTLCounterSampleBufferError.Code { get }
  static var `internal`: MTLCounterSampleBufferError.Code { get }
}
