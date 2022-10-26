//
//  ViewController.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import UIKit
import Kingfisher


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibName = UINib(nibName: "TableViewCellA", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCellA")
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}


extension ViewController: UITableViewDataSource {
    
   func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellA", for: indexPath) as! TableViewCellA
        
        let movie = movies[indexPath.row]
        
        let image = cell.viewWithTag(3) as? UIImageView
        
        image?.image = UIImage(named: movie.img)
        image?.layer.cornerRadius = 10
        
        let lblTag = cell.viewWithTag(1) as? UILabel
        lblTag?.text = movie.textTag
        
        let lblEng = cell.viewWithTag(2) as? UILabel
        lblEng?.text = movie.englishTitle
        
        let lblKo = cell.viewWithTag(4) as? UILabel
        lblKo?.text = movie.koreanTitle
        
        let lblDate = cell.viewWithTag(5) as? UILabel
        lblDate?.text = movie.date1
        
        cell.link.addTarget(self, action: #selector(showWeb), for: .touchUpInside)
        cell.link.tag = indexPath.row
//        cell.complitiolnHandler = {
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let vc = sb.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
//
//            vc.url = movie.link
//
//            self.navigationController?.pushViewController(vc, animated: true)
//
//        }
        return cell
    }
    
    @objc func showWeb(_ sender: UIButton){
        print("indexPath", sender.tag)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        vc.url = movies[sender.tag].link
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell tapped")
        /* present 방식
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//        present(vc, animated: true, completion: nil)
         */
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        vc.movie = movies[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
        // push
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else {return}
        
        let vc = segue.destination as? DetailViewController
        vc?.movie = movies[selectedIndexPath.row]
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?{
            let headerView = UIView()
        
        headerView.backgroundColor = .white
        headerView.layer.cornerRadius = 10
        
            let filmButton = UIButton(frame: CGRect(x: 30, y: 0, width: 60, height: 60))
        filmButton.setImage(UIImage(systemName: "film"), for: .normal)
        filmButton.setPreferredSymbolConfiguration(.init(pointSize: 30, weight: .regular, scale: .default), forImageIn: .normal)
        filmButton.tintColor = .systemGreen

        let tvButton = UIButton(frame: CGRect(x: 160, y: 0, width: 60, height: 60))
        headerView.addSubview(tvButton)
    tvButton.setImage(UIImage(systemName: "display"), for: .normal)
    tvButton.setPreferredSymbolConfiguration(.init(pointSize: 30, weight: .regular, scale: .default), forImageIn: .normal)
        tvButton.tintColor = .systemYellow
        
        
        let bookButton = UIButton(frame: CGRect(x: 290, y: 0, width: 60, height: 60))
        bookButton.setPreferredSymbolConfiguration(.init(pointSize: 30, weight: .regular, scale: .default), forImageIn: .normal)
        bookButton.setImage(UIImage(systemName: "book.closed"), for: .normal)
        bookButton.tintColor = .systemBlue
        
        bookButton.addTarget(self, action: #selector(showBooks), for: .touchUpInside)
       
       
        headerView.addSubview(filmButton)
        headerView.addSubview(tvButton)
        headerView.addSubview(bookButton)
            return headerView
        
    }
    @objc func showBooks(_ sender: UIButton){
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "BooksViewController") as! BooksViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

