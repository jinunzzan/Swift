//
//  ViewController.swift
//  DatePicker
//
//  Created by Eunchan Kim on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var dataLabels0: UILabel!
    
    @IBOutlet weak var dataLabels1: UILabel!
    
    @IBOutlet weak var dataLabels2: UILabel!
    
    @IBOutlet weak var dataLabels3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        img1.layer.cornerRadius = 30
        img1.layer.borderWidth = 2
        img1.layer.borderColor = UIColor.lightGray.cgColor
        
        img2.layer.cornerRadius = 30
        img2.layer.borderWidth = 2
        img2.layer.borderColor = UIColor.lightGray.cgColor
        
        img3.layer.cornerRadius = 30
        img3.layer.borderWidth = 2
        img3.layer.borderColor = UIColor.lightGray.cgColor
        
        img4.layer.cornerRadius = 30
        img4.layer.borderWidth = 2
        img4.layer.borderColor = UIColor.lightGray.cgColor
        
        //datalabel 초기값
       
        dataLabels0.text = ""
        dataLabels1.text = ""
        dataLabels2.text = ""
        dataLabels3.text = ""
        
    }
    
    
    @IBAction func datePick(_ sender: UIDatePicker) {
        
        
        
        //100일 후
        dataLabels0.textColor = .white
        dataLabels0.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        dataLabels0.text! = sender.date.addingTimeInterval(TimeInterval(60 * 60 * 24 * 100 )).formatted(date: .complete, time: .omitted)
        
        //200일 후
        dataLabels1.textColor = .white
        dataLabels1.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        dataLabels1.text! = sender.date.addingTimeInterval(TimeInterval(60 * 60 * 24 * 200 )).formatted(date: .complete, time: .omitted)
        
        //300일 후
        dataLabels2.textColor = .white
        dataLabels2.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        dataLabels2.text! = sender.date.addingTimeInterval(TimeInterval(60 * 60 * 24 * 300 )).formatted(date: .complete, time: .omitted)
        
        //400일 후
        dataLabels3.textColor = .white
        dataLabels3.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        dataLabels3.text! = sender.date.addingTimeInterval(TimeInterval(60 * 60 * 24 * 400 )).formatted(date: .complete, time: .omitted)
        
    }
    
    
    
    
}
