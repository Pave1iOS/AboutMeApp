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
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach{ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                
                welcomeVC.userName = userNameTF.text
                welcomeVC.personName = user.person.name + " " + user.person.lastName
                
            } else if let navigationVC = viewController as? UINavigationController {
                let personVC = navigationVC.topViewController as? PersonViewController
                
                personVC?.title = "\(user.person.name) \(user.person.lastName)"
                
                personVC?.name = user.person.name
                personVC?.lastName = user.person.lastName
                personVC?.age = user.person.age
                personVC?.company = user.person.company
                personVC?.department = user.person.department
                personVC?.post = user.person.post
                personVC?.hobby = user.person.hobbies
                personVC?.biography = user.person.biography
            }
        }
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
                        """) {
                            self.passwordTF.text = ""
                        }
            return false
        }
        return true
    }
    
    //MARK: IBAction
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "Username", andMessage: user.userName)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Password", andMessage: user.password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: Private func
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        heandler: (() -> Void)? = nil
    ) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            heandler?()
        }
        alert.addAction(okAction)
    }
}
