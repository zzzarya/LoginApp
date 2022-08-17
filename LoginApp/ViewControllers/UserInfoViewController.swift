//
//  FirstViewController.swift
//  LoginApp
//
//  Created by Антон Заричный on 16.08.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var nameNavigationItem: UINavigationItem!
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var studyPlaceLabel: UILabel!
    @IBOutlet var workPlaceLabel: UILabel!
    @IBOutlet var aboutMeLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        nameNavigationItem.title = person.information.engFullName
        
        fullNameLabel.text = person.information.fullName
        ageLabel.text = person.information.age
        studyPlaceLabel.text = person.information.studyPlace
        workPlaceLabel.text = person.information.workPlace
        aboutMeLabel.text = person.information.aboutMe
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.person = person
    }
    
    private func setupView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemGreen.cgColor,
                                UIColor.systemYellow.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
