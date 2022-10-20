//
//  CollectionViewCell.swift
//  webViewEx
//
//  Created by Eunchan Kim on 2022/10/18.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        label2.text = "test"
        
        self.backgroundColor = .blue
    }

}
