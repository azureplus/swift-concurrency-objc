
class NSResponder : NSObject, NSCoding {
  unowned(unsafe) var nextResponder: @sil_unmanaged NSResponder?
  func tryToPerform(_ action: Selector, with object: Any?) -> Bool
  func performKeyEquivalent(with event: NSEvent) -> Bool
  func validRequestor(forSendType sendType: NSPasteboard.PasteboardType?, returnType: NSPasteboard.PasteboardType?) -> Any?
  func mouseDown(with event: NSEvent)
  func rightMouseDown(with event: NSEvent)
  func otherMouseDown(with event: NSEvent)
  func mouseUp(with event: NSEvent)
  func rightMouseUp(with event: NSEvent)
  func otherMouseUp(with event: NSEvent)
  func mouseMoved(with event: NSEvent)
  func mouseDragged(with event: NSEvent)
  func scrollWheel(with event: NSEvent)
  func rightMouseDragged(with event: NSEvent)
  func otherMouseDragged(with event: NSEvent)
  func mouseEntered(with event: NSEvent)
  func mouseExited(with event: NSEvent)
  func keyDown(with event: NSEvent)
  func keyUp(with event: NSEvent)
  func flagsChanged(with event: NSEvent)
  func tabletPoint(with event: NSEvent)
  func tabletProximity(with event: NSEvent)
  @available(macOS 10.5, *)
  func cursorUpdate(with event: NSEvent)
  @available(macOS 10.5, *)
  func magnify(with event: NSEvent)
  @available(macOS 10.5, *)
  func rotate(with event: NSEvent)
  @available(macOS 10.5, *)
  func swipe(with event: NSEvent)
  @available(macOS 10.5, *)
  func beginGesture(with event: NSEvent)
  @available(macOS 10.5, *)
  func endGesture(with event: NSEvent)
  @available(macOS 10.8, *)
  func smartMagnify(with event: NSEvent)
  @available(macOS 10.15, *)
  func changeMode(with event: NSEvent)
  @available(macOS 10.6, *)
  func touchesBegan(with event: NSEvent)
  @available(macOS 10.6, *)
  func touchesMoved(with event: NSEvent)
  @available(macOS 10.6, *)
  func touchesEnded(with event: NSEvent)
  @available(macOS 10.6, *)
  func touchesCancelled(with event: NSEvent)
  @available(macOS 10.8, *)
  func quickLook(with event: NSEvent)
  @available(macOS 10.10.3, *)
  func pressureChange(with event: NSEvent)
  func noResponder(for eventSelector: Selector)
  var acceptsFirstResponder: Bool { get }
  func becomeFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func interpretKeyEvents(_ eventArray: [NSEvent])
  func flushBufferedKeyEvents()
  var menu: NSMenu?
  func showContextHelp(_ sender: Any?)
  func helpRequested(_ eventPtr: NSEvent)
  func shouldBeTreatedAsInkEvent(_ event: NSEvent) -> Bool
  @available(macOS 10.7, *)
  func wantsScrollEventsForSwipeTracking(on axis: NSEvent.GestureAxis) -> Bool
  @available(macOS 10.7, *)
  func wantsForwardedScrollEvents(for axis: NSEvent.GestureAxis) -> Bool
  @available(macOS 10.7, *)
  func supplementalTarget(forAction action: Selector, sender: Any?) -> Any?
}
protocol NSStandardKeyBindingResponding : NSObjectProtocol {
  optional func insertText(_ insertString: Any)
  optional func doCommand(by selector: Selector)
  optional func moveForward(_ sender: Any?)
  optional func moveRight(_ sender: Any?)
  optional func moveBackward(_ sender: Any?)
  optional func moveLeft(_ sender: Any?)
  optional func moveUp(_ sender: Any?)
  optional func moveDown(_ sender: Any?)
  optional func moveWordForward(_ sender: Any?)
  optional func moveWordBackward(_ sender: Any?)
  optional func moveToBeginningOfLine(_ sender: Any?)
  optional func moveToEndOfLine(_ sender: Any?)
  optional func moveToBeginningOfParagraph(_ sender: Any?)
  optional func moveToEndOfParagraph(_ sender: Any?)
  optional func moveToEndOfDocument(_ sender: Any?)
  optional func moveToBeginningOfDocument(_ sender: Any?)
  optional func pageDown(_ sender: Any?)
  optional func pageUp(_ sender: Any?)
  optional func centerSelectionInVisibleArea(_ sender: Any?)
  optional func moveBackwardAndModifySelection(_ sender: Any?)
  optional func moveForwardAndModifySelection(_ sender: Any?)
  optional func moveWordForwardAndModifySelection(_ sender: Any?)
  optional func moveWordBackwardAndModifySelection(_ sender: Any?)
  optional func moveUpAndModifySelection(_ sender: Any?)
  optional func moveDownAndModifySelection(_ sender: Any?)
  optional func moveToBeginningOfLineAndModifySelection(_ sender: Any?)
  optional func moveToEndOfLineAndModifySelection(_ sender: Any?)
  optional func moveToBeginningOfParagraphAndModifySelection(_ sender: Any?)
  optional func moveToEndOfParagraphAndModifySelection(_ sender: Any?)
  optional func moveToEndOfDocumentAndModifySelection(_ sender: Any?)
  optional func moveToBeginningOfDocumentAndModifySelection(_ sender: Any?)
  optional func pageDownAndModifySelection(_ sender: Any?)
  optional func pageUpAndModifySelection(_ sender: Any?)
  optional func moveParagraphForwardAndModifySelection(_ sender: Any?)
  optional func moveParagraphBackwardAndModifySelection(_ sender: Any?)
  optional func moveWordRight(_ sender: Any?)
  optional func moveWordLeft(_ sender: Any?)
  optional func moveRightAndModifySelection(_ sender: Any?)
  optional func moveLeftAndModifySelection(_ sender: Any?)
  optional func moveWordRightAndModifySelection(_ sender: Any?)
  optional func moveWordLeftAndModifySelection(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func moveToLeftEndOfLine(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func moveToRightEndOfLine(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func moveToLeftEndOfLineAndModifySelection(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func moveToRightEndOfLineAndModifySelection(_ sender: Any?)
  optional func scrollPageUp(_ sender: Any?)
  optional func scrollPageDown(_ sender: Any?)
  optional func scrollLineUp(_ sender: Any?)
  optional func scrollLineDown(_ sender: Any?)
  optional func scrollToBeginningOfDocument(_ sender: Any?)
  optional func scrollToEndOfDocument(_ sender: Any?)
  optional func transpose(_ sender: Any?)
  optional func transposeWords(_ sender: Any?)
  optional func selectAll(_ sender: Any?)
  optional func selectParagraph(_ sender: Any?)
  optional func selectLine(_ sender: Any?)
  optional func selectWord(_ sender: Any?)
  optional func indent(_ sender: Any?)
  optional func insertTab(_ sender: Any?)
  optional func insertBacktab(_ sender: Any?)
  optional func insertNewline(_ sender: Any?)
  optional func insertParagraphSeparator(_ sender: Any?)
  optional func insertNewlineIgnoringFieldEditor(_ sender: Any?)
  optional func insertTabIgnoringFieldEditor(_ sender: Any?)
  optional func insertLineBreak(_ sender: Any?)
  optional func insertContainerBreak(_ sender: Any?)
  @available(macOS 10.5, *)
  optional func insertSingleQuoteIgnoringSubstitution(_ sender: Any?)
  @available(macOS 10.5, *)
  optional func insertDoubleQuoteIgnoringSubstitution(_ sender: Any?)
  optional func changeCaseOfLetter(_ sender: Any?)
  optional func uppercaseWord(_ sender: Any?)
  optional func lowercaseWord(_ sender: Any?)
  optional func capitalizeWord(_ sender: Any?)
  optional func deleteForward(_ sender: Any?)
  optional func deleteBackward(_ sender: Any?)
  optional func deleteBackwardByDecomposingPreviousCharacter(_ sender: Any?)
  optional func deleteWordForward(_ sender: Any?)
  optional func deleteWordBackward(_ sender: Any?)
  optional func deleteToBeginningOfLine(_ sender: Any?)
  optional func deleteToEndOfLine(_ sender: Any?)
  optional func deleteToBeginningOfParagraph(_ sender: Any?)
  optional func deleteToEndOfParagraph(_ sender: Any?)
  optional func yank(_ sender: Any?)
  optional func complete(_ sender: Any?)
  optional func setMark(_ sender: Any?)
  optional func deleteToMark(_ sender: Any?)
  optional func selectToMark(_ sender: Any?)
  optional func swapWithMark(_ sender: Any?)
  optional func cancelOperation(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func makeBaseWritingDirectionNatural(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func makeBaseWritingDirectionLeftToRight(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func makeBaseWritingDirectionRightToLeft(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func makeTextWritingDirectionNatural(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func makeTextWritingDirectionLeftToRight(_ sender: Any?)
  @available(macOS 10.6, *)
  optional func makeTextWritingDirectionRightToLeft(_ sender: Any?)
  @available(macOS 10.8, *)
  optional func quickLookPreviewItems(_ sender: Any?)
}
extension NSResponder : NSStandardKeyBindingResponding {
}
extension NSResponder {
  var undoManager: UndoManager? { get }
}
extension NSResponder {
  @available(macOS 10.7, *)
  func validateProposedFirstResponder(_ responder: NSResponder, for event: NSEvent?) -> Bool
}
extension NSResponder {
  func presentError(_ error: Error, modalFor window: NSWindow, delegate: Any?, didPresent didPresentSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func presentError(_ error: Error) -> Bool
  func willPresentError(_ error: Error) -> Error
}
extension NSResponder {
  @available(macOS 10.7, *)
  func performTextFinderAction(_ sender: Any?)
}
extension NSResponder {
  @available(macOS 10.12, *)
  @IBAction func newWindowForTab(_ sender: Any?)
}
extension NSResponder {
}
