//
//  ViewController.swift
//  Qatar2022
//
//  Created by Eunchan Kim on 2022/11/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return groups.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        let keys = groups.keys.sorted()
        //        let key = keys[section]
                
                func getKey(section:Int) -> String {
                    let keys = groups.keys.sorted()
                    return keys[section]
                }
                
                let key = getKey(section: section)
                if let group = groups[key] {
                    return group.count
                } else {
                    return 0
                }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let keys = groups.keys.sorted()
        let key = keys[indexPath.section]
        guard let group = groups[key] else {fatalError()}
        let dic = group[indexPath.row]
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        }
        guard let cell = cell else {fatalError()}
        var content = cell.defaultContentConfiguration()
        content.text = dic["country"]
        content.textProperties.font = .systemFont(ofSize: 25, weight: .heavy)
        if let flag = dic["flag"]{
            content.image = UIImage(named: flag)
        } else {
            content.image = UIImage(systemName: "egg")
        }
        
        content.imageProperties.maximumSize.width = 100
        content.imageProperties.maximumSize.height = 100
        content.secondaryText = "Group \(key)"
        content.secondaryTextProperties.color = .red
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        let keys = groups.keys.sorted()
        let key = keys[section]
        label.text = "Group \(key)"
        
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.backgroundColor = .gray
        return label
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
}
