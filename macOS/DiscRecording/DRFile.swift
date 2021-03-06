
class DRFile : DRFSObject {
  init!(path: String!)
}
extension DRFile {
  class func virtualFile(withName name: String!, data: Data!) -> DRFile!
  class func virtualFile(withName name: String!, dataProducer producer: Any!) -> DRFile!
  init!(name: String!, data: Data!)
  init!(name: String!, dataProducer producer: Any!)
}
extension DRFile {
  class func hardLinkPointing(to original: DRFile!, inFilesystem filesystem: String!) -> DRFile!
  class func symLinkPointing(to original: DRFSObject!, inFilesystem filesystem: String!) -> DRFile!
  class func finderAliasPointing(to original: DRFSObject!, inFilesystem filesystem: String!) -> DRFile!
  init!(linkType: String!, pointingTo original: DRFSObject!, inFilesystem filesystem: String!)
}
@available(macOS 10.2, *)
let DRLinkTypeHardLink: String
@available(macOS 10.2, *)
let DRLinkTypeSymbolicLink: String
@available(macOS 10.2, *)
let DRLinkTypeFinderAlias: String
typealias DRFileFork = UInt32
var DRFileForkData: Int { get }
var DRFileForkResource: Int { get }
protocol DRFileDataProduction {
  func calculateSize(of file: DRFile!, fork: DRFileFork, estimating estimate: Bool) -> UInt64
  func prepareFile(forBurn file: DRFile!) -> Bool
  func produce(_ file: DRFile!, fork: DRFileFork, intoBuffer buffer: UnsafeMutablePointer<CChar>!, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32) -> UInt32
  func prepareFile(forVerification file: DRFile!) -> Bool
  func cleanupFile(afterBurn file: DRFile!)
}
