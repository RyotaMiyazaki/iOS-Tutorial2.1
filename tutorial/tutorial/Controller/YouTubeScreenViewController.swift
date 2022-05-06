import UIKit

class YouTubeScreenViewController: UIViewController {

    private let sampleModels = SampleModel.createModels()
    private var shareButton: UIBarButtonItem!
    private var bellButton: UIBarButtonItem!
    private var searchButton: UIBarButtonItem!
    private var iconButton: UIBarButtonItem!
    private var youtubeIcon: UIBarButtonItem!
    private var youtubeTitle: UIBarButtonItem!
    
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // workaround to change SafeArea's backgroundColor
        if #available(iOS 11.0, *) {
            let topFrame: CGRect = CGRect(
                x: view.safeAreaInsets.left,
                y: view.safeAreaInsets.top,
                width: UIScreen.main.bounds.size.width,
                height: 48)
                let safeAreaOverlay: UIView = UIView()
                safeAreaOverlay.frame = topFrame
                safeAreaOverlay.backgroundColor = .darkGray
                view.addSubview(safeAreaOverlay)
            
        }
        
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.backgroundColor = .darkGray
        
        shareButton = UIBarButtonItem(image: UIImage(systemName: "tv"), style: .plain, target: nil, action: nil)
        bellButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: nil, action: nil)
        searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: nil, action: nil)
        iconButton = UIBarButtonItem(image: UIImage(systemName: "t.circle.fill"), style: .plain, target: nil, action: nil)
        self.navigationItem.rightBarButtonItems = [iconButton, searchButton, bellButton, shareButton]
        
        youtubeIcon = UIBarButtonItem(image: UIImage(systemName: "play.rectangle.fill"), style: .plain, target: nil, action: nil)
        youtubeIcon.tintColor = .red
        youtubeTitle = UIBarButtonItem(title: "YouTube", style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItems = [youtubeIcon, youtubeTitle]
        
        
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        
        let customCellLayout = UICollectionViewFlowLayout()
        customCellLayout.itemSize = CGSize(width: 180, height: 50)
        customCellLayout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 5)
        collectionView.collectionViewLayout = customCellLayout
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 250
        tableView.register(UINib(nibName: "VideoTableViewCell", bundle: nil), forCellReuseIdentifier:"VideoTableViewCell")
        
    }
    
}

extension YouTubeScreenViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
        if let cell = cell as? CustomCell {
            cell.setupCell(model: sampleModels[indexPath.row])
        }
        return cell
    }
    
}

extension YouTubeScreenViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoTableViewCell", for: indexPath) as! VideoTableViewCell
        return cell
    }
    
}
