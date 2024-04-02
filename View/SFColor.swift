import SpriteKit

/// カラーのビュークラス
final class SFColor {
    /// ビューモデルクラス（プロトコル経由）
    private var viewModel: SFColorViewModelProtocol!
    
    /// 初期化
    init() {
        self.setupBindings()
    }
    
    /// 初期化（定義のみ、未使用）
    /// - Parameter coder: -
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// ViewクラスにViewModelとModelを関連付ける
    private func setupBindings()
    {
        let model = SFColorModel() as SFColorModelProtocol
        self.viewModel = SFColorViewModel(model) as SFColorViewModelProtocol
    }
    
    /// 指定されたカラー名に対応するUIColorを取得するメソッド
    /// - Parameter colorName: 取得したいカラーの名前
    /// - Returns: カラーに対応するUIColor
    func getColor(_ colorName: SFColorDefine.ColorName) -> UIColor {
        return self.viewModel.getColor(colorName)
    }
}
