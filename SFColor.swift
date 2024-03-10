import SpriteKit

/// カラーのビュークラス
final class SFColor {
    enum ColorName: String {
        case blueWithHintsOfBlue = "BlueWithHintsOfBlue"
        case chartreuseYellow = "ChartreuseYellow"
        case dark = "Dark"
        case fireRed = "FireRed"
        case gold = "Gold"
        case lilyMagnolia = "LilyMagnolia"
        case madderRed = "MadderRed"
        case matcha = "Matcha"
        case murkyBlue = "MurkyBlue"
        case mutedBluishPurple = "MutedBluish-Purple"
        case rose = "Rose"
        case rubyRed = "RubyRed"
        case scarlet = "Scarlet"
        case white = "White"
    }
    func getColor(_ color: SFColor.ColorName) -> UIColor {
        return UIColor(named: color.rawValue)!
    }
}
