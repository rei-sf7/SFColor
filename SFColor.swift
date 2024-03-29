import SpriteKit

/// カラーのビュークラス
final class SFColor {
    /// カラーの名前を定義した列挙型
    enum ColorName: String {
        /// 重い青
        case blueWithHintsOfBlue = "BlueWithHintsOfBlue"
        /// シャルトリューズイエロー
        case chartreuseYellow = "ChartreuseYellow"
        /// ダーク
        case dark = "Dark"
        /// ファイアレッド
        case fireRed = "FireRed"
        /// ゴールド
        case gold = "Gold"
        /// 蘭茶
        case lilyMagnolia = "LilyMagnolia"
        /// 茜色
        case madderRed = "MadderRed"
        /// 抹茶
        case matcha = "Matcha"
        /// 白
        case murkyBlue = "MurkyBlue"
        /// おとなしい青紫
        case mutedBluishPurple = "MutedBluish-Purple"
        /// ローズ
        case rose = "Rose"
        /// ルビーレッド
        case rubyRed = "RubyRed"
        /// スカーレット
        case scarlet = "Scarlet"
        /// 白
        case white2 = "White2"
        case test = "test"
    }
    
    /// 指定されたカラー名に対応するUIColorを取得するメソッド
    /// - Parameter colorName: 取得したいカラーの名前
    /// - Returns: カラーに対応するUIColor
    func getColor(_ colorName: SFColor.ColorName) -> UIColor {
        guard let color = UIColor(named: colorName.rawValue) else {
            return UIColor(named: SFColor.ColorName.dark.rawValue)!
        }
        return color
    }
}
