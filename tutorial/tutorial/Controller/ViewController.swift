import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var youtubeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        youtubeButton.layer.cornerRadius = 10.0
    }
    
}

