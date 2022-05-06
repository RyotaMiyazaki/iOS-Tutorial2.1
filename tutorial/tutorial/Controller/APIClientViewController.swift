//
//  APIClientViewController.swift
//  tutorial
//
//  Created by Aphananthe on 2022/05/06.
//

import UIKit

class APIClientViewController: UIViewController {

    @IBOutlet private weak var date: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    
    private let prefectureTableViewCell = "PrefectureTableViewCell"
    private var prefecturesList: [(name:String, cases: Int, deaths: Int)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 60
        tableView.register(UINib(nibName: prefectureTableViewCell, bundle: nil), forCellReuseIdentifier: prefectureTableViewCell)
        fetchCovidInfo()
    }
    
    private func fetchCovidInfo(){
        fetchDate()
        guard let req_url = URL(string: "https://covid19-japan-web-api.now.sh/api/v1/prefectures") else { return }
        let req = URLRequest(url: req_url)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: req) { (data, response, error) in
            session.finishTasksAndInvalidate()
            do {
                self.prefecturesList.removeAll()
                let decoder = JSONDecoder()
                let json = try decoder.decode([CovidCaseModel].self, from: data!)
                _ = json.map { self.prefecturesList.append(($0.name, $0.cases, $0.deaths)) }
                self.tableView.reloadData()
            } catch {
                print("エラーが出ました:\(error)")
            }
        }
        task.resume()
    }
    
    private func fetchDate() {
        let dt = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "MdHHmm", options: 0, locale: Locale(identifier: "ja_JP"))
        date.text = "\(dateFormatter.string(from: dt))時点"
    }
    
    @IBAction func reloadCell(_ sender: Any) {
        fetchCovidInfo()
    }
    
}

extension APIClientViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefecturesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: prefectureTableViewCell, for: indexPath)
        if let cell = cell as? PrefectureTableViewCell {
            cell.setUpCell(name: prefecturesList[indexPath.row].name, casesNum: prefecturesList[indexPath.row].cases, deathsNum: prefecturesList[indexPath.row].deaths)
        }
        return cell
    }
    
}
