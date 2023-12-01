//
//  BiographyViewController.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 01.12.2023.
//

import UIKit

final class BiographyViewController: UIViewController {
    
    @IBOutlet var biographyLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        biographyLabel.text = biography
        
    }
}
