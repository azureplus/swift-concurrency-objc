
@available(iOS 3.0, *)
let kUTExportedTypeDeclarationsKey: CFString
@available(iOS 3.0, *)
let kUTImportedTypeDeclarationsKey: CFString
@available(iOS 3.0, *)
let kUTTypeIdentifierKey: CFString
@available(iOS 3.0, *)
let kUTTypeTagSpecificationKey: CFString
@available(iOS 3.0, *)
let kUTTypeConformsToKey: CFString
@available(iOS 3.0, *)
let kUTTypeDescriptionKey: CFString
@available(iOS 3.0, *)
let kUTTypeIconFileKey: CFString
@available(iOS 3.0, *)
let kUTTypeReferenceURLKey: CFString
@available(iOS 3.0, *)
let kUTTypeVersionKey: CFString
@available(iOS, introduced: 3.0, deprecated: 100000)
let kUTTagClassFilenameExtension: CFString
@available(iOS, introduced: 3.0, deprecated: 100000)
let kUTTagClassMIMEType: CFString
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use the UTType class instead.")
func UTTypeCreatePreferredIdentifierForTag(_ inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFString>?
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use the UTType class instead.")
func UTTypeCreateAllIdentifiersForTag(_ inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFArray>?
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use the UTType class instead.")
func UTTypeCopyPreferredTagWithClass(_ inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFString>?
@available(iOS, introduced: 8.0, deprecated: 100000, message: "Use the UTType class instead.")
func UTTypeCopyAllTagsWithClass(_ inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFArray>?
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use -[UTType isEqual:] instead.")
func UTTypeEqual(_ inUTI1: CFString, _ inUTI2: CFString) -> Bool
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use -[UTType conformsToType:] instead.")
func UTTypeConformsTo(_ inUTI: CFString, _ inConformsToUTI: CFString) -> Bool
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UTType.localizedDescription instead.")
func UTTypeCopyDescription(_ inUTI: CFString) -> Unmanaged<CFString>?
@available(iOS, introduced: 8.0, deprecated: 100000, message: "Use UTType.declared instead.")
func UTTypeIsDeclared(_ inUTI: CFString) -> Bool
@available(iOS, introduced: 8.0, deprecated: 100000, message: "Use UTType.dynamic instead.")
func UTTypeIsDynamic(_ inUTI: CFString) -> Bool
@available(iOS, introduced: 3.0, deprecated: 100000, message: "Use the UTType class instead.")
func UTTypeCopyDeclaration(_ inUTI: CFString) -> Unmanaged<CFDictionary>?
@available(iOS, introduced: 3.0, deprecated: 14.0)
func UTTypeCopyDeclaringBundleURL(_ inUTI: CFString) -> Unmanaged<CFURL>?
