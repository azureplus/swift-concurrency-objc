
class CGContext : _CFObject {
}

extension CGContext {
  func setLineDash(phase: CGFloat, lengths: [CGFloat])
  func move(to point: CGPoint)
  func addLine(to point: CGPoint)
  func addCurve(to end: CGPoint, control1: CGPoint, control2: CGPoint)
  func addQuadCurve(to end: CGPoint, control: CGPoint)
  func addRects(_ rects: [CGRect])
  func addLines(between points: [CGPoint])
  func addArc(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func addArc(tangent1End: CGPoint, tangent2End: CGPoint, radius: CGFloat)
  func fillPath(using rule: CGPathFillRule = .winding)
  func clip(using rule: CGPathFillRule = .winding)
  func fill(_ rects: [CGRect])
  func strokeLineSegments(between points: [CGPoint])
  func clip(to rects: [CGRect])
  func draw(_ image: CGImage, in rect: CGRect, byTiling: Bool = false)
  var textPosition: CGPoint
  func showGlyphs(_ glyphs: [CGGlyph], at positions: [CGPoint])
}

extension CGContext {
  func draw(_ layer: CGLayer, in rect: CGRect)
  func draw(_ layer: CGLayer, at point: CGPoint)
}
enum CGPathDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case eoFill
  case stroke
  case fillStroke
  case eoFillStroke
}
enum CGTextDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case stroke
  case fillStroke
  case invisible
  case fillClip
  case strokeClip
  case fillStrokeClip
  case clip
}
enum CGInterpolationQuality : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case `default`
  case none
  case low
  case medium
  case high
}
enum CGBlendMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case normal
  case multiply
  case screen
  case overlay
  case darken
  case lighten
  case colorDodge
  case colorBurn
  case softLight
  case hardLight
  case difference
  case exclusion
  case hue
  case saturation
  case color
  case luminosity
  case clear
  case copy
  case sourceIn
  case sourceOut
  case sourceAtop
  case destinationOver
  case destinationIn
  case destinationOut
  case destinationAtop
  case xor
  case plusDarker
  case plusLighter
}
extension CGContext {
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.0, *)
  func saveGState()
  @available(macOS 10.0, *)
  func restoreGState()
  @available(macOS 10.0, *)
  func scaleBy(x sx: CGFloat, y sy: CGFloat)
  @available(macOS 10.0, *)
  func translateBy(x tx: CGFloat, y ty: CGFloat)
  @available(macOS 10.0, *)
  func rotate(by angle: CGFloat)
  @available(macOS 10.0, *)
  func concatenate(_ transform: CGAffineTransform)
  @available(macOS 10.0, *)
  var ctm: CGAffineTransform { get }
  @available(macOS 10.0, *)
  func setLineWidth(_ width: CGFloat)
  @available(macOS 10.0, *)
  func setLineCap(_ cap: CGLineCap)
  @available(macOS 10.0, *)
  func setLineJoin(_ join: CGLineJoin)
  @available(macOS 10.0, *)
  func setMiterLimit(_ limit: CGFloat)
  @available(macOS 10.0, *)
  func __setLineDash(phase: CGFloat, lengths: UnsafePointer<CGFloat>?, count: Int)
  @available(macOS 10.0, *)
  func setFlatness(_ flatness: CGFloat)
  @available(macOS 10.0, *)
  func setAlpha(_ alpha: CGFloat)
  @available(macOS 10.4, *)
  func setBlendMode(_ mode: CGBlendMode)
  @available(macOS 10.0, *)
  func beginPath()
  @available(macOS 10.0, *)
  func __moveTo(x: CGFloat, y: CGFloat)
  @available(macOS 10.0, *)
  func __addLineTo(x: CGFloat, y: CGFloat)
  @available(macOS 10.0, *)
  func __addCurveTo(cp1x: CGFloat, cp1y: CGFloat, cp2x: CGFloat, cp2y: CGFloat, endingAtX x: CGFloat, y: CGFloat)
  @available(macOS 10.0, *)
  func __addQuadCurveTo(cpx: CGFloat, cpy: CGFloat, endingAtX x: CGFloat, y: CGFloat)
  @available(macOS 10.0, *)
  func closePath()
  @available(macOS 10.0, *)
  func addRect(_ rect: CGRect)
  @available(macOS 10.0, *)
  func __addRects(_ rects: UnsafePointer<CGRect>?, count: Int)
  @available(macOS 10.0, *)
  func __addLines(between points: UnsafePointer<CGPoint>?, count: Int)
  @available(macOS 10.4, *)
  func addEllipse(in rect: CGRect)
  @available(macOS 10.0, *)
  func __addArc(centerX x: CGFloat, y: CGFloat, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Int32)
  @available(macOS 10.0, *)
  func __addArc(x1: CGFloat, y1: CGFloat, x2: CGFloat, y2: CGFloat, radius: CGFloat)
  @available(macOS 10.2, *)
  func addPath(_ path: CGPath)
  @available(macOS 10.4, *)
  func replacePathWithStrokedPath()
  @available(macOS 10.0, *)
  var isPathEmpty: Bool { get }
  @available(macOS 10.0, *)
  var currentPointOfPath: CGPoint { get }
  @available(macOS 10.0, *)
  var boundingBoxOfPath: CGRect { get }
  @available(macOS 10.2, *)
  var path: CGPath? { get }
  @available(macOS 10.4, *)
  func pathContains(_ point: CGPoint, mode: CGPathDrawingMode) -> Bool
  @available(macOS 10.0, *)
  func drawPath(using mode: CGPathDrawingMode)
  @available(macOS 10.0, *)
  func __fillPath()
  @available(macOS 10.0, *)
  func __eoFillPath()
  @available(macOS 10.0, *)
  func strokePath()
  @available(macOS 10.0, *)
  func fill(_ rect: CGRect)
  @available(macOS 10.0, *)
  func __fill(_ rects: UnsafePointer<CGRect>?, count: Int)
  @available(macOS 10.0, *)
  func stroke(_ rect: CGRect)
  @available(macOS 10.0, *)
  func stroke(_ rect: CGRect, width: CGFloat)
  @available(macOS 10.0, *)
  func clear(_ rect: CGRect)
  @available(macOS 10.4, *)
  func fillEllipse(in rect: CGRect)
  @available(macOS 10.4, *)
  func strokeEllipse(in rect: CGRect)
  @available(macOS 10.4, *)
  func __strokeLineSegments(between points: UnsafePointer<CGPoint>?, count: Int)
  @available(macOS 10.0, *)
  func __clip()
  @available(macOS 10.0, *)
  func __eoClip()
  func resetClip()
  @available(macOS 10.4, *)
  func clip(to rect: CGRect, mask: CGImage)
  @available(macOS 10.3, *)
  var boundingBoxOfClipPath: CGRect { get }
  @available(macOS 10.0, *)
  func clip(to rect: CGRect)
  @available(macOS 10.0, *)
  func __clip(to rects: UnsafePointer<CGRect>, count: Int)
  @available(macOS 10.3, *)
  func setFillColor(_ color: CGColor)
  @available(macOS 10.3, *)
  func setStrokeColor(_ color: CGColor)
  @available(macOS 10.0, *)
  func setFillColorSpace(_ space: CGColorSpace)
  @available(macOS 10.0, *)
  func setStrokeColorSpace(_ space: CGColorSpace)
  @available(macOS 10.0, *)
  func setFillColor(_ components: UnsafePointer<CGFloat>)
  @available(macOS 10.0, *)
  func setStrokeColor(_ components: UnsafePointer<CGFloat>)
  @available(macOS 10.0, *)
  func setFillPattern(_ pattern: CGPattern, colorComponents components: UnsafePointer<CGFloat>)
  @available(macOS 10.0, *)
  func setStrokePattern(_ pattern: CGPattern, colorComponents components: UnsafePointer<CGFloat>)
  @available(macOS 10.0, *)
  func setPatternPhase(_ phase: CGSize)
  @available(macOS 10.0, *)
  func setFillColor(gray: CGFloat, alpha: CGFloat)
  @available(macOS 10.0, *)
  func setStrokeColor(gray: CGFloat, alpha: CGFloat)
  @available(macOS 10.0, *)
  func setFillColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(macOS 10.0, *)
  func setStrokeColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(macOS 10.0, *)
  func setFillColor(cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(macOS 10.0, *)
  func setStrokeColor(cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(macOS 10.0, *)
  func setRenderingIntent(_ intent: CGColorRenderingIntent)
  @available(macOS 10.0, *)
  func __draw(in rect: CGRect, image: CGImage)
  @available(macOS 10.5, *)
  func __draw(in rect: CGRect, byTiling image: CGImage)
  @available(macOS 10.0, *)
  var interpolationQuality: CGInterpolationQuality
  @available(macOS 10.3, *)
  func setShadow(offset: CGSize, blur: CGFloat, color: CGColor?)
  @available(macOS 10.3, *)
  func setShadow(offset: CGSize, blur: CGFloat)
  @available(macOS 10.5, *)
  func drawLinearGradient(_ gradient: CGGradient, start startPoint: CGPoint, end endPoint: CGPoint, options: CGGradientDrawingOptions)
  @available(macOS 10.5, *)
  func drawRadialGradient(_ gradient: CGGradient, startCenter: CGPoint, startRadius: CGFloat, endCenter: CGPoint, endRadius: CGFloat, options: CGGradientDrawingOptions)
  @available(macOS 10.2, *)
  func drawShading(_ shading: CGShading)
  @available(macOS 10.0, *)
  func setCharacterSpacing(_ spacing: CGFloat)
  @available(macOS 10.0, *)
  func __setTextPosition(x: CGFloat, y: CGFloat)
  @available(macOS 10.0, *)
  var __textPosition: CGPoint { get }
  @available(macOS 10.0, *)
  var textMatrix: CGAffineTransform
  @available(macOS 10.0, *)
  func setTextDrawingMode(_ mode: CGTextDrawingMode)
  @available(macOS 10.0, *)
  func setFont(_ font: CGFont)
  @available(macOS 10.0, *)
  func setFontSize(_ size: CGFloat)
  @available(macOS 10.5, *)
  func __showGlyphs(_ glyphs: UnsafePointer<CGGlyph>, atPositions Lpositions: UnsafePointer<CGPoint>, count: Int)
  @available(macOS 10.3, *)
  func drawPDFPage(_ page: CGPDFPage)
  @available(macOS 10.0, *)
  func beginPage(mediaBox: UnsafePointer<CGRect>?)
  @available(macOS 10.0, *)
  func endPage()
  @available(macOS 10.0, *)
  func flush()
  @available(macOS 10.0, *)
  func synchronize()
  @available(macOS 10.0, *)
  func setShouldAntialias(_ shouldAntialias: Bool)
  @available(macOS 10.4, *)
  func setAllowsAntialiasing(_ allowsAntialiasing: Bool)
  @available(macOS 10.2, *)
  func setShouldSmoothFonts(_ shouldSmoothFonts: Bool)
  @available(macOS 10.2, *)
  func setAllowsFontSmoothing(_ allowsFontSmoothing: Bool)
  @available(macOS 10.5, *)
  func setShouldSubpixelPositionFonts(_ shouldSubpixelPositionFonts: Bool)
  @available(macOS 10.5, *)
  func setAllowsFontSubpixelPositioning(_ allowsFontSubpixelPositioning: Bool)
  @available(macOS 10.5, *)
  func setShouldSubpixelQuantizeFonts(_ shouldSubpixelQuantizeFonts: Bool)
  @available(macOS 10.5, *)
  func setAllowsFontSubpixelQuantization(_ allowsFontSubpixelQuantization: Bool)
  @available(macOS 10.3, *)
  func beginTransparencyLayer(auxiliaryInfo: CFDictionary?)
  @available(macOS 10.5, *)
  func beginTransparencyLayer(in rect: CGRect, auxiliaryInfo auxInfo: CFDictionary?)
  @available(macOS 10.3, *)
  func endTransparencyLayer()
  @available(macOS 10.4, *)
  var userSpaceToDeviceSpaceTransform: CGAffineTransform { get }
  @available(macOS 10.4, *)
  func convertToDeviceSpace(_ point: CGPoint) -> CGPoint
  @available(macOS 10.4, *)
  func convertToUserSpace(_ point: CGPoint) -> CGPoint
  @available(macOS 10.4, *)
  func convertToDeviceSpace(_ size: CGSize) -> CGSize
  @available(macOS 10.4, *)
  func convertToUserSpace(_ size: CGSize) -> CGSize
  @available(macOS 10.4, *)
  func convertToDeviceSpace(_ rect: CGRect) -> CGRect
  @available(macOS 10.4, *)
  func convertToUserSpace(_ rect: CGRect) -> CGRect
}
