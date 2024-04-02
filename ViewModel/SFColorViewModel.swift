import SpriteKit

/// カラーのビューモデルクラスのプロトコル
protocol SFColorViewModelProtocol {
    func getColor(_ colorName: SFColorDefine.ColorName) -> UIColor
}

final class SFColorViewModel: SFColorViewModelProtocol {
    /// モデルクラス（プロトコル経由）
    private let model: SFColorModelProtocol
    /// 初期化
    init(_ model: SFColorModelProtocol) {
        self.model = model
    }
    
    /// 指定されたカラー名に対応するUIColorを取得するメソッド
    /// - Parameter colorName: 取得したいカラーの名前
    /// - Returns: カラーに対応するUIColor
    func getColor(_ colorName: SFColorDefine.ColorName) -> UIColor {
        return self.model.getColor(colorName)
    }
}
