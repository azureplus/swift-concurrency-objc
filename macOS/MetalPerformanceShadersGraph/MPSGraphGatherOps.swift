
@available(macOS 11.0, *)
extension MPSGraph {
  func gather(withUpdatesTensor updatesTensor: MPSGraphTensor, indicesTensor: MPSGraphTensor, axis: Int, batchDimensions: Int, name: String?) -> MPSGraphTensor
}
