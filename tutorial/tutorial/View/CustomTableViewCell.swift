//
//  CustomTableViewCell.swift
//  tutorial
//
//  Created by Aphananthe on 2022/05/06.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpCell(model: LearningCourseModel) {
        thumbnail.image = model.thumbnail
        title.text = model.title
        author.text = model.author
        progressBar.progress = model.progress
        progressText.text = String(model.progress * 100) + "%完了"
    }
    
}
