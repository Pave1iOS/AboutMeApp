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
    
    //MARK: Override func
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
        showAlert(withTitle: "Username", andMessage: "1", clearPassword: false)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Password", andMessage: "1", clearPassword: false)
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
            
            clearPassword ? (self.passwordTF.text = "") : (self.passwordTF.text = self.passwordTF.text)
        }
        alert.addAction(okAction)
    }
}
