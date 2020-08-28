
class DRFileRef : _CFObject {
}
class DRFolderRef : _CFObject {
}
typealias DRFSObjectRef = DRType
typealias DRFilesystemMask = UInt32
var kDRFilesystemMaskISO9660: UInt32 { get }
var kDRFilesystemMaskJoliet: UInt32 { get }
var kDRFilesystemMaskUDF: UInt32 { get }
var kDRFilesystemMaskHFSPlus: UInt32 { get }
var kDRFilesystemMaskDefault: UInt32 { get }
@available(macOS 10.2, *)
func DRFSObjectIsVirtual(_ object: DRFSObjectRef!) -> Bool
@available(macOS 10.2, *)
@available(macOS, deprecated: 10.14, message: "Please use DRFSObjectCopyRealURL( const DRFSObjectRef object) instead")
func DRFSObjectGetRealFSRef(_ object: DRFSObjectRef!, _ fsRef: UnsafeMutablePointer<FSRef>!)
@available(macOS 10.2, *)
func DRFSObjectCopyRealURL(_ object: DRFSObjectRef!) -> Unmanaged<CFURL>!
@available(macOS 10.2, *)
func DRFSObjectGetParent(_ object: DRFSObjectRef!) -> Unmanaged<DRFolderRef>!
@available(macOS 10.2, *)
func DRFSObjectCopyBaseName(_ object: DRFSObjectRef!) -> Unmanaged<CFString>!
@available(macOS 10.2, *)
func DRFSObjectCopySpecificName(_ object: DRFSObjectRef!, _ fsKey: CFString!) -> Unmanaged<CFString>!
@available(macOS 10.2, *)
func DRFSObjectCopySpecificNames(_ object: DRFSObjectRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
func DRFSObjectCopyMangledName(_ object: DRFSObjectRef!, _ fsKey: CFString!) -> Unmanaged<CFString>!
@available(macOS 10.2, *)
func DRFSObjectCopyMangledNames(_ object: DRFSObjectRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
func DRFSObjectCopyFilesystemProperty(_ object: DRFSObjectRef!, _ fsKey: CFString!, _ propertyKey: CFString!, _ coalesce: Bool) -> Unmanaged<CFTypeRef>!
@available(macOS 10.2, *)
func DRFSObjectCopyFilesystemProperties(_ object: DRFSObjectRef!, _ fsKey: CFString!, _ coalesce: Bool) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
func DRFSObjectGetFilesystemMask(_ object: DRFSObjectRef!, _ explicitMask: UnsafeMutablePointer<DRFilesystemMask>!, _ effectiveMask: UnsafeMutablePointer<DRFilesystemMask>!) -> DRFilesystemMask
@available(macOS 10.2, *)
func DRFSObjectSetBaseName(_ object: DRFSObjectRef!, _ baseName: CFString!)
@available(macOS 10.2, *)
func DRFSObjectSetSpecificName(_ object: DRFSObjectRef!, _ fsKey: CFString!, _ specificName: CFString!)
@available(macOS 10.2, *)
func DRFSObjectSetSpecificNames(_ object: DRFSObjectRef!, _ specificNames: CFDictionary!)
@available(macOS 10.2, *)
func DRFSObjectSetFilesystemProperty(_ object: DRFSObjectRef!, _ fsKey: CFString!, _ propertyKey: CFString!, _ value: CFTypeRef!)
@available(macOS 10.2, *)
func DRFSObjectSetFilesystemProperties(_ object: DRFSObjectRef!, _ fsKey: CFString!, _ properties: CFDictionary!)
@available(macOS 10.2, *)
func DRFSObjectSetFilesystemMask(_ object: DRFSObjectRef!, _ newMask: DRFilesystemMask)
