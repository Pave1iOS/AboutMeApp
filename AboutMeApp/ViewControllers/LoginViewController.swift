//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 25.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    //MARK: Override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        
        welcomeVC?.userName = user.userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.userName, passwordTF.text == user.password else {
            
            showAlert(
                withTitle: "login or password is incorrect",
                andMessage: 
                        """
                        please click on “Forgot User Name”
                        and “Forgot Password” 
                        to get username and password
                        """,
                clearPassword: true
            )
            return false
        }
        return true
    }
    
    //MARK: IBAction
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "Username", andMessage: user.userName, clearPassword: false)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Password", andMessage: user.password, clearPassword: false)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: Private func
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        clearPassword: Bool
    ) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
            if clearPassword {
                self.passwordTF.text = ""
            }
        }
        alert.addAction(okAction)
    }
}
