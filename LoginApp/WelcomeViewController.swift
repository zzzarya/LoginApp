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
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemRed.cgColor,
                                UIColor.systemBlue.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeLabel.text = welcomeText
        
    }
}
