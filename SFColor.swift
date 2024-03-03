import SpriteKit

/// カラーのビュークラス
final class SFColor {
    enum ColorName: String {
        case blueWithHintsOfBlue = "BlueWithHintsOfBlue"
        case dark = "Dark"
        case murkyBlue = "MurkyBlue"
        case mMutedBluishPurple = "MutedBluish-Purple"
        case white = "White"
    }
    func getColor(_ color: SFColor.ColorName) -> UIColor {
        return UIColor(named: color.rawValue)!
    }
}
