
class SKTextureAtlas : NSObject, NSSecureCoding {
  convenience init(named name: String)
  @available(iOS 8.0, *)
  convenience init(dictionary properties: [String : Any])
  func textureNamed(_ name: String) -> SKTexture
  class func preloadTextureAtlases(_ textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: @escaping () -> Void)
  class func preloadTextureAtlases(_ textureAtlases: [SKTextureAtlas]) async
  @available(iOS 9.0, *)
  class func preloadTextureAtlasesNamed(_ atlasNames: [String], withCompletionHandler completionHandler: @escaping (Error?, [SKTextureAtlas]) -> Void)
  @available(iOS 9.0, *)
  class func preloadTextureAtlasesNamed(_ atlasNames: [String]) async throws -> [SKTextureAtlas]
  func preload(completionHandler: @escaping () -> Void)
  func preload() async
  var textureNames: [String] { get }
}

extension SKTextureAtlas : _CustomPlaygroundQuickLookable {
}
