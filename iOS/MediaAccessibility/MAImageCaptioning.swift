
@available(iOS 13.0, *)
func MAImageCaptioningCopyCaption(_ url: CFURL, _ error: UnsafeMutablePointer<CFError?>?) -> CFString?
@available(iOS 13.0, *)
func MAImageCaptioningSetCaption(_ url: CFURL, _ string: CFString?, _ error: UnsafeMutablePointer<CFError?>?) -> Bool
@available(iOS 13.0, *)
func MAImageCaptioningCopyMetadataTagPath() -> CFString
