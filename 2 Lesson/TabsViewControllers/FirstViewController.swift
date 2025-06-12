//
//  FirstViewController.swift
//  2 Lesson
//
//  Created by Evgeny Mastepan on 12.06.2025.
//

import UIKit

class FirstViewController: UIViewController {
    
    private lazy var safeArea: UIEdgeInsets = {
        view.safeAreaInsets
    }()
    let indention: CGFloat = 30
    let topIndention: CGFloat = 57
    
    private lazy var personPic = PersonImageView(
        image: UIImage(named: "person"),
        cornerRadius: 30
    )
    
    private lazy var personNameLabel = PersonLabel(
        text: "Estrella Steal",
        font: .systemFont(ofSize: 20, weight: .black)
    )
    private lazy var personAgeLabel = PersonLabel(
        text: "22 years"
    )
    private lazy var aboutLabel = PersonLabel(
        text: "About",
        font: .systemFont(ofSize: 14, weight: .black)
    )
    private lazy var descrLabel = PersonLabel(
        text: "Elite collegiate volleyball player with demonstrated teamwork and strategic thinking abilities. Maintains 20+ hours of weekly training while excelling academically. Passionate about sports psychology and athlete development.",
    )
    private lazy var personButton = PersonButton(
        title: "Write",
        titleColor: .black,
        backgroundColor: .white,
    )
    private lazy var registrationLabel = PersonLabel(
        text: "Registration",
        font: .systemFont(ofSize: 20, weight: .medium),
        textAligment: .center
    )
    private lazy var emailTextField = PersonTextField(
        placeholder: "Email",
        backgroundColor: .firstPageTextFieldBg
    )
    private lazy var passwordTextField = PersonTextField(
        placeholder: "Password",
        backgroundColor: .firstPageTextFieldBg,
        isSecureTextEntry: true
    )
    private lazy var registrationButton = PersonButton(
        title: "Registration",
        titleColor: .white,
        backgroundColor: .firstPageRegBtnBG,
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .firstScreenBackground
        self.view.addSubviews(personPic, personNameLabel, personAgeLabel, aboutLabel, descrLabel, personButton, registrationLabel, emailTextField, passwordTextField, registrationButton)
        arrangeSubViews()
       
    }
    
    private func arrangeSubViews() {
        self.personPic.frame.origin.x = safeArea.left + indention
        self.personPic.frame.origin.y = safeArea.top + topIndention
        self.personPic.frame.size.width = 100
        self.personPic.frame.size.height = 100
        
        self.personNameLabel.frame.origin.x = personPic.frame.maxX + 11
        self.personNameLabel.frame.origin.y = personPic.frame.midY - 24
        self.personNameLabel.frame.size.width = view.frame.maxX - personNameLabel.frame.minX - indention
        self.personNameLabel.frame.size.height = 24
        
        self.personAgeLabel.frame.origin.x = personPic.frame.maxX + 11
        self.personAgeLabel.frame.origin.y = personNameLabel.frame.maxY
        self.personAgeLabel.frame.size.width = view.frame.maxX - personNameLabel.frame.minX - indention
        self.personAgeLabel.frame.size.height = 17
        
        self.aboutLabel.frame.origin.x = safeArea.left + indention
        self.aboutLabel.frame.origin.y = personPic.frame.maxY + 34
        self.aboutLabel.frame.size.width = view.frame.maxX - 2 * indention
        self.aboutLabel.frame.size.height = 17
        
        self.descrLabel.frame.origin.x = safeArea.left + indention
        self.descrLabel.frame.origin.y = aboutLabel.frame.maxY + 12
        self.descrLabel.frame.size.width = view.frame.maxX - 2 * indention
        self.descrLabel.frame.size.height = 51
        
        self.personButton.frame.origin.x = safeArea.left + indention
        self.personButton.frame.origin.y = descrLabel.frame.maxY + 41
        self.personButton.frame.size.width = view.frame.maxX - 2 * indention
        self.personButton.frame.size.height = 58
        
        self.registrationLabel.frame.origin.x = safeArea.left + indention
        self.registrationLabel.frame.origin.y = personButton.frame.maxY + 55
        self.registrationLabel.frame.size.width = view.frame.maxX - 2 * indention
        self.registrationLabel.frame.size.height = 24
        
        self.emailTextField.frame.origin.x = safeArea.left + indention
        self.emailTextField.frame.origin.y = registrationLabel.frame.maxY + 41
        self.emailTextField.frame.size.width = view.frame.maxX - 2 * indention
        self.emailTextField.frame.size.height = 49
        
        self.passwordTextField.frame.origin.x = safeArea.left + indention
        self.passwordTextField.frame.origin.y = emailTextField.frame.maxY + 12
        self.passwordTextField.frame.size.width = view.frame.maxX - 2 * indention
        self.passwordTextField.frame.size.height = 49
        
        self.registrationButton.frame.origin.x = safeArea.left + indention
        self.registrationButton.frame.origin.y = passwordTextField.frame.maxY + 176
        self.registrationButton.frame.size.width = view.frame.maxX - 2 * indention
        self.registrationButton.frame.size.height = 58
    }
   

}
