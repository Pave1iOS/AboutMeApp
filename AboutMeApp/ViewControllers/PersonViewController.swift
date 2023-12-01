//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 01.12.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
    
    var name: String!
    var lastName: String!
    var company: String!
    var department: String!
    var post: String!
    var hobby: String!
    
    var imageProfile: UIImage = .profilePhoto
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        lastNameLabel.text = lastName
        companyLabel.text = company
        departmentLabel.text = department
        postLabel.text = post
        hobbyLabel.text = hobby
        
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        
        photoImageView.image = imageProfile
    }
    
    
    
    
}
