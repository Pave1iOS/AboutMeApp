//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 25.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        
        welcomeVC?.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
        super.touchesBegan(touches, with: event)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == "1", passwordTF.text == "1" else {
            
            let alert = UIAlertController(
                title: "login or password is incorrect",
                message: "please click on “Forgot User Name” and “Forgot Password” to get username and password",
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTF.text = ""
            }
            
            present(alert, animated: true)
            alert.addAction(okAction)
            
            return false
        }
        return true
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
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
