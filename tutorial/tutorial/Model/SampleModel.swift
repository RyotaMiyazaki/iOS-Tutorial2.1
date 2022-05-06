import Foundation
import UIKit

struct SampleModel {
    
    let image: UIImage?
    let text: String
    let backgroundColor: UIColor
    
    static func createModels() -> [SampleModel] {
        return [
            SampleModel(image: UIImage(systemName: "flame"), text: "急上昇", backgroundColor: UIColor(red: 0/255, green: 139/255, blue: 139/255, alpha: 1)),
            SampleModel(image: UIImage(systemName: "music.note"), text: "音楽", backgroundColor: UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha: 1)),
            SampleModel(image: UIImage(systemName: "gamecontroller"), text: "ゲーム", backgroundColor: UIColor(red: 50/255, green: 205/255, blue: 50/255, alpha: 1)),
            SampleModel(image: UIImage(systemName: "newspaper"), text: "ニュース", backgroundColor: UIColor(red: 178/255, green: 34/255, blue: 34/255, alpha: 1)),
            SampleModel(image: UIImage(systemName: "lightbulb"), text: "学び", backgroundColor: UIColor(red: 138/255, green: 43/255, blue: 26/255, alpha: 1)),
            SampleModel(image: UIImage(systemName: "antenna.radiowaves.left.and.right"), text: "ライブ", backgroundColor: UIColor(red: 250/255, green: 128/255, blue: 114/255, alpha: 1)),
            SampleModel(image: UIImage(systemName: "crown"), text: "スポーツ", backgroundColor: UIColor(red: 95/255, green: 158/255, blue: 160/255, alpha: 1)),
        ]
    }
}
