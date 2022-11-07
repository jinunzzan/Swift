//
//  NationTableViewController.swift
//  TableViewControllerEx
//
//  Created by Eunchan Kim on 2022/11/08.
//

import UIKit

class NationTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return nations.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let keys = nations.keys.sorted()
        let key = keys[section]
        if let group = nations[key] {
            return group.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nationcell", for: indexPath)
        
        let keys = nations.keys.sorted()
        let key = keys[indexPath.section]
        
        guard let group = nations[key] else {
            fatalError()
        }
        let nation = group[indexPath.row]
        
        let imageFlag = cell.viewWithTag(1) as? UIImageView
        imageFlag?.image = UIImage(named: nation.flag)
        let lblName = cell.viewWithTag(2) as? UILabel
        lblName?.text = nation.name
        let lblGroup = cell.viewWithTag(3) as? UILabel
        lblGroup?.text = "Group \(nation.group)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let keys = nations.keys.sorted()
        let key = keys[section]
        
        let label = UILabel()
        label.text = "Group \(key)"
        label.backgroundColor = .lightGray
        label.textAlignment = .center
        
        return label
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
        
    }
    
}

