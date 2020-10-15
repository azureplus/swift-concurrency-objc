
var kAUGroupParameterID_Volume: AudioUnitParameterID { get }
var kAUGroupParameterID_Sustain: AudioUnitParameterID { get }
var kAUGroupParameterID_Sostenuto: AudioUnitParameterID { get }
var kAUGroupParameterID_AllNotesOff: AudioUnitParameterID { get }
var kAUGroupParameterID_ModWheel: AudioUnitParameterID { get }
var kAUGroupParameterID_PitchBend: AudioUnitParameterID { get }
var kAUGroupParameterID_AllSoundOff: AudioUnitParameterID { get }
var kAUGroupParameterID_ResetAllControllers: AudioUnitParameterID { get }
var kAUGroupParameterID_Pan: AudioUnitParameterID { get }
var kAUGroupParameterID_Foot: AudioUnitParameterID { get }
var kAUGroupParameterID_ChannelPressure: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure: AudioUnitParameterID { get }
var kAUGroupParameterID_Expression: AudioUnitParameterID { get }
var kAUGroupParameterID_DataEntry: AudioUnitParameterID { get }
var kAUGroupParameterID_Volume_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_ModWheel_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Pan_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Foot_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Expression_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_DataEntry_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure_FirstKey: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure_LastKey: AudioUnitParameterID { get }
var kSpatialMixerParam_Azimuth: AudioUnitParameterID { get }
var kSpatialMixerParam_Elevation: AudioUnitParameterID { get }
var kSpatialMixerParam_Distance: AudioUnitParameterID { get }
var kSpatialMixerParam_Gain: AudioUnitParameterID { get }
var kSpatialMixerParam_PlaybackRate: AudioUnitParameterID { get }
var kSpatialMixerParam_Enable: AudioUnitParameterID { get }
var kSpatialMixerParam_MinGain: AudioUnitParameterID { get }
var kSpatialMixerParam_MaxGain: AudioUnitParameterID { get }
var kSpatialMixerParam_ReverbBlend: AudioUnitParameterID { get }
var kSpatialMixerParam_GlobalReverbGain: AudioUnitParameterID { get }
var kSpatialMixerParam_OcclusionAttenuation: AudioUnitParameterID { get }
var kSpatialMixerParam_ObstructionAttenuation: AudioUnitParameterID { get }
var kSpatialMixerParam_HeadYaw: AudioUnitParameterID { get }
var kSpatialMixerParam_HeadPitch: AudioUnitParameterID { get }
var kSpatialMixerParam_HeadRoll: AudioUnitParameterID { get }
var kReverbParam_FilterFrequency: AudioUnitParameterID { get }
var kReverbParam_FilterBandwidth: AudioUnitParameterID { get }
var kReverbParam_FilterGain: AudioUnitParameterID { get }
var kReverbParam_FilterType: AudioUnitParameterID { get }
var kReverbParam_FilterEnable: AudioUnitParameterID { get }
var k3DMixerParam_Azimuth: AudioUnitParameterID { get }
var k3DMixerParam_Elevation: AudioUnitParameterID { get }
var k3DMixerParam_Distance: AudioUnitParameterID { get }
var k3DMixerParam_Gain: AudioUnitParameterID { get }
var k3DMixerParam_PlaybackRate: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_BusEnable: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_MinGainInDecibels: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_MaxGainInDecibels: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_DryWetReverbBlend: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_GlobalReverbGainInDecibels: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_OcclusionAttenuationInDecibels: AudioUnitParameterID { get }
@available(tvOS 9.0, *)
var k3DMixerParam_ObstructionAttenuationInDecibels: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_BusEnable")
var k3DMixerParam_Enable: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_MinGainInDecibels")
var k3DMixerParam_MinGain: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_MaxGainInDecibels")
var k3DMixerParam_MaxGain: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_DryWetReverbBlend")
var k3DMixerParam_ReverbBlend: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_GlobalReverbGainInDecibels")
var k3DMixerParam_GlobalReverbGain: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_OcclusionAttenuationInDecibels")
var k3DMixerParam_OcclusionAttenuation: AudioUnitParameterID { get }
@available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "k3DMixerParam_ObstructionAttenuationInDecibels")
var k3DMixerParam_ObstructionAttenuation: AudioUnitParameterID { get }
var k3DMixerParam_PreAveragePower: AudioUnitParameterID { get }
var k3DMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var k3DMixerParam_PostAveragePower: AudioUnitParameterID { get }
var k3DMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Volume: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Enable: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Pan: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_Volume: AudioUnitParameterID { get }
var kMatrixMixerParam_Enable: AudioUnitParameterID { get }
var kMatrixMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kMatrixMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kMatrixMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_PreAveragePowerLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PrePeakHoldLevelLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PostAveragePowerLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PostPeakHoldLevelLinear: AudioUnitParameterID { get }
var kHALOutputParam_Volume: AudioUnitParameterID { get }
var kTimePitchParam_Rate: AudioUnitParameterID { get }
var kNewTimePitchParam_Rate: AudioUnitParameterID { get }
var kNewTimePitchParam_Pitch: AudioUnitParameterID { get }
var kNewTimePitchParam_Overlap: AudioUnitParameterID { get }
var kNewTimePitchParam_EnablePeakLocking: AudioUnitParameterID { get }
var kAUSamplerParam_Gain: AudioUnitParameterID { get }
var kAUSamplerParam_CoarseTuning: AudioUnitParameterID { get }
var kAUSamplerParam_FineTuning: AudioUnitParameterID { get }
var kAUSamplerParam_Pan: AudioUnitParameterID { get }
var kBandpassParam_CenterFrequency: AudioUnitParameterID { get }
var kBandpassParam_Bandwidth: AudioUnitParameterID { get }
var kHipassParam_CutoffFrequency: AudioUnitParameterID { get }
var kHipassParam_Resonance: AudioUnitParameterID { get }
var kLowPassParam_CutoffFrequency: AudioUnitParameterID { get }
var kLowPassParam_Resonance: AudioUnitParameterID { get }
var kHighShelfParam_CutOffFrequency: AudioUnitParameterID { get }
var kHighShelfParam_Gain: AudioUnitParameterID { get }
var kAULowShelfParam_CutoffFrequency: AudioUnitParameterID { get }
var kAULowShelfParam_Gain: AudioUnitParameterID { get }
var kParametricEQParam_CenterFreq: AudioUnitParameterID { get }
var kParametricEQParam_Q: AudioUnitParameterID { get }
var kParametricEQParam_Gain: AudioUnitParameterID { get }
var kLimiterParam_AttackTime: AudioUnitParameterID { get }
var kLimiterParam_DecayTime: AudioUnitParameterID { get }
var kLimiterParam_PreGain: AudioUnitParameterID { get }
var kDynamicsProcessorParam_Threshold: AudioUnitParameterID { get }
var kDynamicsProcessorParam_HeadRoom: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ExpansionRatio: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ExpansionThreshold: AudioUnitParameterID { get }
var kDynamicsProcessorParam_AttackTime: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ReleaseTime: AudioUnitParameterID { get }
var kDynamicsProcessorParam_MasterGain: AudioUnitParameterID { get }
var kDynamicsProcessorParam_CompressionAmount: AudioUnitParameterID { get }
var kDynamicsProcessorParam_InputAmplitude: AudioUnitParameterID { get }
var kDynamicsProcessorParam_OutputAmplitude: AudioUnitParameterID { get }
var kVarispeedParam_PlaybackRate: AudioUnitParameterID { get }
var kVarispeedParam_PlaybackCents: AudioUnitParameterID { get }
var kDistortionParam_Delay: AudioUnitParameterID { get }
var kDistortionParam_Decay: AudioUnitParameterID { get }
var kDistortionParam_DelayMix: AudioUnitParameterID { get }
var kDistortionParam_Decimation: AudioUnitParameterID { get }
var kDistortionParam_Rounding: AudioUnitParameterID { get }
var kDistortionParam_DecimationMix: AudioUnitParameterID { get }
var kDistortionParam_LinearTerm: AudioUnitParameterID { get }
var kDistortionParam_SquaredTerm: AudioUnitParameterID { get }
var kDistortionParam_CubicTerm: AudioUnitParameterID { get }
var kDistortionParam_PolynomialMix: AudioUnitParameterID { get }
var kDistortionParam_RingModFreq1: AudioUnitParameterID { get }
var kDistortionParam_RingModFreq2: AudioUnitParameterID { get }
var kDistortionParam_RingModBalance: AudioUnitParameterID { get }
var kDistortionParam_RingModMix: AudioUnitParameterID { get }
var kDistortionParam_SoftClipGain: AudioUnitParameterID { get }
var kDistortionParam_FinalMix: AudioUnitParameterID { get }
var kDelayParam_WetDryMix: AudioUnitParameterID { get }
var kDelayParam_DelayTime: AudioUnitParameterID { get }
var kDelayParam_Feedback: AudioUnitParameterID { get }
var kDelayParam_LopassCutoff: AudioUnitParameterID { get }
var kSampleDelayParam_DelayFrames: AudioUnitParameterID { get }
var kAUNBandEQParam_GlobalGain: AudioUnitParameterID { get }
var kAUNBandEQParam_BypassBand: AudioUnitParameterID { get }
var kAUNBandEQParam_FilterType: AudioUnitParameterID { get }
var kAUNBandEQParam_Frequency: AudioUnitParameterID { get }
var kAUNBandEQParam_Gain: AudioUnitParameterID { get }
var kAUNBandEQParam_Bandwidth: AudioUnitParameterID { get }
var kAUNBandEQFilterType_Parametric: Int { get }
var kAUNBandEQFilterType_2ndOrderButterworthLowPass: Int { get }
var kAUNBandEQFilterType_2ndOrderButterworthHighPass: Int { get }
var kAUNBandEQFilterType_ResonantLowPass: Int { get }
var kAUNBandEQFilterType_ResonantHighPass: Int { get }
var kAUNBandEQFilterType_BandPass: Int { get }
var kAUNBandEQFilterType_BandStop: Int { get }
var kAUNBandEQFilterType_LowShelf: Int { get }
var kAUNBandEQFilterType_HighShelf: Int { get }
var kAUNBandEQFilterType_ResonantLowShelf: Int { get }
var kAUNBandEQFilterType_ResonantHighShelf: Int { get }
var kNumAUNBandEQFilterTypes: Int { get }
var kRoundTripAACParam_Format: AudioUnitParameterID { get }
var kRoundTripAACParam_EncodingStrategy: AudioUnitParameterID { get }
var kRoundTripAACParam_RateOrQuality: AudioUnitParameterID { get }
var kRandomParam_BoundA: AudioUnitParameterID { get }
var kRandomParam_BoundB: AudioUnitParameterID { get }
var kRandomParam_Curve: AudioUnitParameterID { get }
var kReverb2Param_DryWetMix: AudioUnitParameterID { get }
var kReverb2Param_Gain: AudioUnitParameterID { get }
var kReverb2Param_MinDelayTime: AudioUnitParameterID { get }
var kReverb2Param_MaxDelayTime: AudioUnitParameterID { get }
var kReverb2Param_DecayTimeAt0Hz: AudioUnitParameterID { get }
var kReverb2Param_DecayTimeAtNyquist: AudioUnitParameterID { get }
var kReverb2Param_RandomizeReflections: AudioUnitParameterID { get }