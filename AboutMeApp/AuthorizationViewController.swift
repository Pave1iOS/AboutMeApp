//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 25.11.2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logInButtonAction() {
        
        if userNameTF.text != "1" || passwordTF.text != "1" {
            let alert = UIAlertController(
                title: "login or password is incorrect",
                message: "please click on “Forgot User Name” and “Forgot Password” to get username and password",
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default)
            
            present(alert, animated: true)
            alert.addAction(okAction)
        } else {
            print("good job")
        }
        
        
    }
    
    @IBAction func forgotUserNameAction() {
        let alert = UIAlertController(
            title: "Username",
            message: "1",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAction)
    }
    
    @IBAction func forgotPasswordAction() {
        let alert = UIAlertController(
            title: "Password",
            message: "1",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAction)
    }
    
    


}

