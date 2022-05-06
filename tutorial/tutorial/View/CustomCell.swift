import UIKit

class CustomCell: UICollectionViewCell {

    @IBOutlet private weak var cellIcon: UIImageView!
    @IBOutlet private weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(model: SampleModel) {
        cellIcon.image = model.image
        cellIcon.tintColor = .white
        cellLabel.text = model.text
        self.backgroundColor = model.backgroundColor
        self.layer.cornerRadius = 10
    }

}
