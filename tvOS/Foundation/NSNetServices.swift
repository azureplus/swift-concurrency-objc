
extension NetService {
  @available(tvOS 9.0, *)
  class let errorCode: String
  @available(tvOS 9.0, *)
  class let errorDomain: String
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknownError
    case collisionError
    case notFoundError
    case activityInProgress
    case badArgumentError
    case cancelledError
    case invalidError
    case timeoutError
    @available(tvOS 14.0, *)
    case missingRequiredConfigurationError
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var noAutoRename: NetService.Options { get }
    @available(tvOS 9.0, *)
    static var listenForConnections: NetService.Options { get }
  }
}
@available(tvOS 9.0, *)
class NetService : NSObject {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func schedule(in aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  func remove(from aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceDelegate?
  @available(tvOS 9.0, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [Data]? { get }
  @available(tvOS 9.0, *)
  var port: Int { get }
  func publish()
  @available(tvOS 9.0, *)
  func publish(options: NetService.Options = [])
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Not supported")
  func resolve()
  func stop()
  class func dictionary(fromTXTRecord txtData: Data) -> [String : Data]
  class func data(fromTXTRecord txtDictionary: [String : Data]) -> Data
  func resolve(withTimeout timeout: TimeInterval)
  func getInputStream(_ inputStream: UnsafeMutablePointer<InputStream?>?, outputStream: UnsafeMutablePointer<OutputStream?>?) -> Bool
  func setTXTRecord(_ recordData: Data?) -> Bool
  func txtRecordData() -> Data?
  func startMonitoring()
  func stopMonitoring()
}
@available(tvOS 9.0, *)
class NetServiceBrowser : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceBrowserDelegate?
  @available(tvOS 9.0, *)
  var includesPeerToPeer: Bool
  func schedule(in aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  func remove(from aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServices(ofType type: String, inDomain domainString: String)
  func stop()
}
@available(tvOS 9.0, *)
protocol NetServiceDelegate : NSObjectProtocol {
  optional func netServiceWillPublish(_ sender: NetService)
  @asyncHandler optional func netServiceDidPublish(_ sender: NetService)
  @asyncHandler optional func netService(_ sender: NetService, didNotPublish errorDict: [String : NSNumber])
  optional func netServiceWillResolve(_ sender: NetService)
  @asyncHandler optional func netServiceDidResolveAddress(_ sender: NetService)
  @asyncHandler optional func netService(_ sender: NetService, didNotResolve errorDict: [String : NSNumber])
  @asyncHandler optional func netServiceDidStop(_ sender: NetService)
  @asyncHandler optional func netService(_ sender: NetService, didUpdateTXTRecord data: Data)
  @available(tvOS 9.0, *)
  @asyncHandler optional func netService(_ sender: NetService, didAcceptConnectionWith inputStream: InputStream, outputStream: OutputStream)
}
@available(tvOS 9.0, *)
protocol NetServiceBrowserDelegate : NSObjectProtocol {
  optional func netServiceBrowserWillSearch(_ browser: NetServiceBrowser)
  @asyncHandler optional func netServiceBrowserDidStopSearch(_ browser: NetServiceBrowser)
  @asyncHandler optional func netServiceBrowser(_ browser: NetServiceBrowser, didNotSearch errorDict: [String : NSNumber])
  @asyncHandler optional func netServiceBrowser(_ browser: NetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  @asyncHandler optional func netServiceBrowser(_ browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool)
  @asyncHandler optional func netServiceBrowser(_ browser: NetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  @asyncHandler optional func netServiceBrowser(_ browser: NetServiceBrowser, didRemove service: NetService, moreComing: Bool)
}
