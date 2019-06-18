//
//  MenuTableViewCell.swift
//  CanviaApp
//
//  Created by Eduardo Hoyos Loli on 6/17/19.
//  Copyright © 2019 Eduardo Hoyos Loli. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        menuImage.layer.cornerRadius = 40
        
        
    }

}
