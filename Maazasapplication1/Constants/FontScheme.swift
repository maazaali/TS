import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kGoogleSansBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGoogleSansBold, size: size)
    }

    static func kGoogleSansRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGoogleSansRegular, size: size)
    }

    static func kGoogleSansMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGoogleSansMedium, size: size)
    }

    static func kSFProDisplaySemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplaySemibold, size: size)
    }

    static func kSFProDisplayBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayBold, size: size)
    }

    static func kSFProDisplayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayRegular, size: size)
    }

    static func kSFProDisplayMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayMedium, size: size)
    }

    static func kSFProTextBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextBold, size: size)
    }

    static func kSFProTextSemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextSemibold, size: size)
    }

    static func kSFProTextMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextMedium, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kGoogleSansBold":
            result = self.kGoogleSansBold(size: size)
        case "kGoogleSansRegular":
            result = self.kGoogleSansRegular(size: size)
        case "kGoogleSansMedium":
            result = self.kGoogleSansMedium(size: size)
        case "kSFProDisplaySemibold":
            result = self.kSFProDisplaySemibold(size: size)
        case "kSFProDisplayBold":
            result = self.kSFProDisplayBold(size: size)
        case "kSFProDisplayRegular":
            result = self.kSFProDisplayRegular(size: size)
        case "kSFProDisplayMedium":
            result = self.kSFProDisplayMedium(size: size)
        case "kSFProTextBold":
            result = self.kSFProTextBold(size: size)
        case "kSFProTextSemibold":
            result = self.kSFProTextSemibold(size: size)
        case "kSFProTextMedium":
            result = self.kSFProTextMedium(size: size)
        default:
            result = self.kGoogleSansBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kGoogleSansBold: String = "GoogleSans-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kGoogleSansRegular: String = "GoogleSans-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kGoogleSansMedium: String = "GoogleSans-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplaySemibold: String = "SFProDisplay-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayBold: String = "SFProDisplay-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayRegular: String = "SFProDisplay-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayMedium: String = "SFProDisplay-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextBold: String = "SFProText-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextSemibold: String = "SFProText-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextMedium: String = "SFProText-Medium"
    }
}
