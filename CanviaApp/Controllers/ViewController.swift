//
//  ViewController.swift
//  CanviaApp
//
//  Created by Eduardo Hoyos Loli on 6/17/19.
//  Copyright © 2019 Eduardo Hoyos Loli. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var menuTableView: UITableView!
    
    var menus = [Menu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        Menu.getMenus { (menus) in
            if let menus = menus {
                self.menus = menus
                self.menuTableView.reloadData()
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! MenuTableViewCell
        cell.menuNameLabel.text = self.menus[indexPath.row].name
        if let price = self.menus[indexPath.row].price {
            cell.priceLabel.text = "$ \(price)"
        }
        if let url = self.menus[indexPath.row].image {
            cell.menuImage.kf.setImage(with: URL(string: url))
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let controller = stb.instantiateViewController(withIdentifier: "detailVC") as! DetailViewController
        controller.menu = self.menus[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }

}

