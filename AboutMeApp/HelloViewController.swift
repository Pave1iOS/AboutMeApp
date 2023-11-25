//
//  HelloViewController.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 25.11.2023.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         userNameLabel.text = userName
    }
    

}
