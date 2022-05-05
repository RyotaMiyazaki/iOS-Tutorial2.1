import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet private weak var circleView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        circleView.backgroundColor = .white
        circleView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
