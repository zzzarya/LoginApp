//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Антон Заричный on 12.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeText
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    @IBAction func logOutPressed() {
        
    }
    
}
