//
//  DetailViewController.swift
//  CanviaApp
//
//  Created by Eduardo Hoyos Loli on 6/17/19.
//  Copyright © 2019 Eduardo Hoyos Loli. All rights reserved.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {
    
    var menu : Menu?
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalle"
        if let menu = menu {
            menuName.text = menu.name
            if let url = menu.image {
                menuImage.kf.setImage(with: URL(string: url))
            }
            //HACKINGTOSH MAC
            
        }
    }
}
