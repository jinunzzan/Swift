//
//  ViewController.swift
//  Qatar2022_CustomCell
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
        
        tableView.rowHeight = 100
        
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return nations.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let keys = nations.keys.sorted()
        let key = keys[section]
        
        if let group = nations[key]{
            return group.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nationcell", for: indexPath)
        let keys = nations.keys.sorted()
        let key = keys[indexPath.section]
        
        guard let group = nations[key] else {fatalError()}
        let nation = group[indexPath.row]
        
        let imageflag = cell.viewWithTag(1) as? UIImageView
        imageflag?.image = UIImage(named: nation.flag)
        
        let lblName = cell.viewWithTag(2) as? UILabel
        lblName?.text = nation.name
        
        let lblGroup = cell.viewWithTag(3) as? UILabel
        lblGroup?.text = "Group \(nation.group)"
        
        return cell
        
    }
    
    
}

