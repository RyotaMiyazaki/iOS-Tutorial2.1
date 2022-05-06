//
//  PrefectureTableViewCell.swift
//  tutorial
//
//  Created by Aphananthe on 2022/05/06.
//

import UIKit

class PrefectureTableViewCell: UITableViewCell {

    @IBOutlet weak var prefecture: UILabel!
    @IBOutlet weak var cases: UILabel!
    @IBOutlet weak var deaths: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        prefecture.text = nil
        cases.text = nil
        deaths.text = nil
    }
    
    func setUpCell(name: String, casesNum: Int, deathsNum: Int) {
        prefecture.text = name
        cases.text = "感染者数:\(String(casesNum))"
        deaths.text = "死亡者数:\(String(deathsNum))"
        if Double(casesNum) * 0.026 < Double(deathsNum) {
            prefecture.textColor = .purple
            cases.textColor = .purple
            deaths.textColor = .purple
        } else {
            prefecture.textColor = .black
            cases.textColor = .black
            deaths.textColor = .black
        }
    }
    
}
