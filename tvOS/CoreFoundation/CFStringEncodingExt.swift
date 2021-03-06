
enum CFStringEncodings : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case macJapanese
  case macChineseTrad
  case macKorean
  case macArabic
  case macHebrew
  case macGreek
  case macCyrillic
  case macDevanagari
  case macGurmukhi
  case macGujarati
  case macOriya
  case macBengali
  case macTamil
  case macTelugu
  case macKannada
  case macMalayalam
  case macSinhalese
  case macBurmese
  case macKhmer
  case macThai
  case macLaotian
  case macGeorgian
  case macArmenian
  case macChineseSimp
  case macTibetan
  case macMongolian
  case macEthiopic
  case macCentralEurRoman
  case macVietnamese
  case macExtArabic
  case macSymbol
  case macDingbats
  case macTurkish
  case macCroatian
  case macIcelandic
  case macRomanian
  case macCeltic
  case macGaelic
  case macFarsi
  case macUkrainian
  case macInuit
  case macVT100
  case macHFS
  case isoLatin2
  case isoLatin3
  case isoLatin4
  case isoLatinCyrillic
  case isoLatinArabic
  case isoLatinGreek
  case isoLatinHebrew
  case isoLatin5
  case isoLatin6
  case isoLatinThai
  case isoLatin7
  case isoLatin8
  case isoLatin9
  case isoLatin10
  case dosLatinUS
  case dosGreek
  case dosBalticRim
  case dosLatin1
  case dosGreek1
  case dosLatin2
  case dosCyrillic
  case dosTurkish
  case dosPortuguese
  case dosIcelandic
  case dosHebrew
  case dosCanadianFrench
  case dosArabic
  case dosNordic
  case dosRussian
  case dosGreek2
  case dosThai
  case dosJapanese
  case dosChineseSimplif
  case dosKorean
  case dosChineseTrad
  case windowsLatin2
  case windowsCyrillic
  case windowsGreek
  case windowsLatin5
  case windowsHebrew
  case windowsArabic
  case windowsBalticRim
  case windowsVietnamese
  case windowsKoreanJohab
  case ANSEL
  case JIS_X0201_76
  case JIS_X0208_83
  case JIS_X0208_90
  case JIS_X0212_90
  case JIS_C6226_78
  @available(tvOS 9.0, *)
  case shiftJIS_X0213
  case shiftJIS_X0213_MenKuTen
  case GB_2312_80
  case GBK_95
  case GB_18030_2000
  case KSC_5601_87
  case ksc_5601_92_Johab
  case CNS_11643_92_P1
  case CNS_11643_92_P2
  case CNS_11643_92_P3
  case ISO_2022_JP
  case ISO_2022_JP_2
  case ISO_2022_JP_1
  case ISO_2022_JP_3
  case ISO_2022_CN
  case ISO_2022_CN_EXT
  case ISO_2022_KR
  case EUC_JP
  case EUC_CN
  case EUC_TW
  case EUC_KR
  case shiftJIS
  case KOI8_R
  case big5
  case macRomanLatin1
  case HZ_GB_2312
  case big5_HKSCS_1999
  case VISCII
  case KOI8_U
  case big5_E
  case nextStepJapanese
  case EBCDIC_US
  case EBCDIC_CP037
  @available(tvOS 9.0, *)
  case UTF7
  @available(tvOS 9.0, *)
  case UTF7_IMAP
  static var shiftJIS_X0213_00: CFStringEncodings { get }
}
