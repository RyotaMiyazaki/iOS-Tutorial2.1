//
//  UdemyViewController.swift
//  tutorial
//
//  Created by Aphananthe on 2022/05/06.
//

import UIKit

class UdemyViewController: UIViewController {
    
    private let learningCourseModels = LearningCourseModel.createModel()
    private let customTableViewCell = "CustomTableViewCell"

    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: customTableViewCell, bundle: nil), forCellReuseIdentifier: customTableViewCell)
    }

}

extension UdemyViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        learningCourseModels.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customTableViewCell, for: indexPath)
        if let cell = cell as? CustomTableViewCell {
            cell.setUpCell(model: learningCourseModels[indexPath.row])
        }
        return cell
    }
    
}
