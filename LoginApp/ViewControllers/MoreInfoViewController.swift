//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Антон Заричный on 17.08.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var gitHubLabel: UILabel!
    @IBOutlet var telegramLabel: UILabel!
    @IBOutlet var instagramLabel: UILabel! 
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        emailLabel.text = person.socialMedia.email
        gitHubLabel.text = person.socialMedia.gitHub
        telegramLabel.text = person.socialMedia.telegram
        instagramLabel.text = person.socialMedia.instagram
        
    }
    
    private func setupView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemGreen.cgColor,
                                UIColor.systemYellow.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
