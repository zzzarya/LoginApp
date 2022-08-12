//
//  ViewController.swift
//  LoginApp
//
//  Created by Антон Заричный on 12.08.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Tony"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        userNameTF.text == userName && passwordTF.text == password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    @IBAction func logInPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(with: "Oops!", and: "Your name is Tony")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!", and: "Your password is 123")
    }
}
    
extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""}
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

