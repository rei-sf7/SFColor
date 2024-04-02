import SpriteKit

/// カラーのモデルクラスのプロトコル
protocol SFColorModelProtocol {
    func getColor(_ colorName: SFColorDefine.ColorName) -> UIColor
}

final class SFColorModel: SFColorModelProtocol {
    /// 指定されたカラー名に対応するUIColorを取得するメソッド
    /// - Parameter colorName: 取得したいカラーの名前
    /// - Returns: カラーに対応するUIColor
    func getColor(_ colorName: SFColorDefine.ColorName) -> UIColor {
        guard let color = UIColor(named: colorName.rawValue) else {
            return UIColor(named: SFColorDefine.ColorName.dark.rawValue)!
        }
        return color
    }
}
