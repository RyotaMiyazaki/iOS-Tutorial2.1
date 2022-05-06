//
//  LearningCourseModel.swift
//  tutorial
//
//  Created by Aphananthe on 2022/05/06.
//

import Foundation
import UIKit

struct LearningCourseModel {
    
    let thumbnail: UIImage?
    let title: String
    let author: String
    let progress: Float
    
    static func createModel() -> [LearningCourseModel] {
        return [
            LearningCourseModel(
                thumbnail: UIImage(named: "python"),
                title: "python + Django3 Djangoを基礎から応用まで、アプリケーション開発マスターpython付き",
                author: "NAOKI MATSUMOTO",
                progress: 0.01),
            LearningCourseModel(
                thumbnail: UIImage(named: "docker"),
                title: "ゼロからはじめる Dockerによるアプリケーション実行環境構築",
                author: "Kazuya Kojima",
                progress: 0.71),
            LearningCourseModel(
                thumbnail: UIImage(named: "vally"),
                title: "現役シリコンバレーエンジニアが教えるPython3 入門 + + 応用 + アメリカのシリコンバレー流コードスタイル",
                author: "酒井 潤(Jun Sakai)",
                progress: 0.43),
            LearningCourseModel(
                thumbnail: UIImage(named: "aws"),
                title: "【2022年版】これだけでOK! AWS認定クラウドプラクティショナー試験突破講座(豊富な試験問題290問付き)",
                author: "Shingo Shibata/AWS certified solutions architect, AWS certified cloud practitioner, AZ-900, Edutech Global/AWS certified solutions architect, AWS certified cloud practitioner, AZ-900",
                progress: 0.79),
            LearningCourseModel(
                thumbnail: UIImage(named: "spreadsheet"),
                title: "無料で使える表計算Googleスプレッドシート3ステップ速習講座",
                author: "小林靖彦 Yasuhiko Kobayashi, 仁美 浅見",
                progress: 0.55),
            LearningCourseModel(
                thumbnail: UIImage(named: "ios"),
                title: "【iOS13対応】未経験者がiPhoneアプリ開発者になるための全て iOS Boot Camp",
                author: "BoxCom,inc Yuta Fujii",
                progress: 0.33)
        ]
    }
}
